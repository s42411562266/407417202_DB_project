const Member = require('../models/memberModel_02');
const jwt = require('jsonwebtoken');
const db = require('../utils/database');

exports.memberReg= async(req,res)=> {
  try{
    await Member.register(req,res,onTime()).then(([rows])=>{
      res.json({
        status: "註冊成功。"
        //result: result 
      });
    })
  } catch(err){
    console.log(err);
    res.send("reg failed!");
  }
};

exports.indexMain=async(req,res)=>{
  res.clearCookie('page', {httpOnly: true});
  let data={};
  const token=req.cookies.token;
  try{
    await Member.getMainArt().then(([rows])=>{
      data=rows;
    });
  }catch(err){
    console.log(err);
  }
  if(verifyToken(token)===false){
    res.render('main', {title: 'index',data: data,status: '登入'});
  }
  else{
    res.render('main', {title: 'index',data: data,status: '登出'});
  }
};

exports.addComment=async(req,res)=>{
  const token=verifyToken(req.cookies.token);
  const page=req.cookies.page;
  if(token!==false){
    const data={
      MId: token,
      AId: page,
      content: req.body.commentText
    }
    try{
      await Member.addComment(data);
    }catch(err){
      res.send('新增留言失敗，請重試!');
    }
    res.redirect('/article/?id='+page);
  }
  else{
    res.redirect('/showLogin');
  }
};

exports.articleAPI=async(req,res)=>{
  const [rows]=await db.query('select * from article');
  res.json(rows);
};

exports.showArticle=async(req,res)=>{
  let ID=req.query.id;
  let comment={};
  const token=req.cookies.token;
  res.cookie('page', ID, { maxAge: Math.floor(Date.now() / 1000) + (60 * 30), httpOnly: true});
  try{
    await Member.showArt(ID).then(([rows])=>{
      comment=rows;
    });
    const [article]=await db.query('select * from article as A where A.aID=?',[ID]);
    if(verifyToken(token)===false){
      res.render('article-logout',{title: 'article',comment,article,status: '登入'});
    }
    else{
      res.render('article',{title: 'article',comment,article,status: '登出',Mid: verifyToken(token)});
    }
  }catch(err){
    console.log(err);
  }
};

exports.delComment=async(req,res)=>{
  const page=req.cookies.page;
  try{
    await Member.delComment(req.params.id).then(([rows])=>{
      res.redirect('/article/?id='+page);
    });
  }catch(err){
    console.log(err);
  }
};

exports.showREG=async(req,res)=>{
  res.render('register-page',{message: ''});
};

exports.showregS=async(req,res)=>{
  res.render('regS');
}

exports.showlogin=async(req,res)=>{
  const token=req.cookies.token;
  if(verifyToken(token)===false)
    res.render('login-page');
  else{
    res.clearCookie('token', {httpOnly: true});
    res.redirect('/');
  }
}

exports.login=async(req,res)=>{
  let data={},URL="/";
  const page=req.cookies.page;
  if(page){
    URL='/article/?id='+page;
  }
  try{
    await Member.login(req,res).then(([rows])=>{
      data=rows;
    });
    if(checkNULL(data)===true){
      res.render('login-failed');
    }
    else{
      const token = jwt.sign({
        algorithm: 'HS256',
        exp: Math.floor(Date.now() / 1000) + (60 * 30), // token一個30分鐘後過期。
        data: data[0].mID
      }, "data.env.DATA");
      res.cookie('token', token, { maxAge: Math.floor(Date.now() / 1000) + (60 * 30), httpOnly: true});
      res.redirect(URL);
    }
  }catch(err){
    console.log(err);
    res.send('發生錯誤!錯誤訊息: ',err);
  }
}

exports.doEditComment=async(req,res)=>{
  const page=req.cookies.page;
  try{
    await db.query('update comment set content=? where cID=?',[
    req.body.content,
    req.body.cid
  ]);
  }catch(err){
    console.log(err);
  }
  res.redirect('/article/?id='+page);
}

exports.showEdit=async(req,res)=>{
  const cid=req.params.id;
  try{
    const [rows]=await db.query('select * from comment where cID=?',cid);
    res.render('edit',{comment: rows});
  }catch(err){
    console.log(err);
  }
}

const onTime = () => {
  const date = new Date();
  const mm = date.getMonth() + 1;
  const dd = date.getDate();
  const hh = date.getHours();
  const mi = date.getMinutes();
  const ss = date.getSeconds();

  return [date.getFullYear(), "-" +
      (mm > 9 ? '' : '0') + mm, "-" +
      (dd > 9 ? '' : '0') + dd, " " +
      (hh > 9 ? '' : '0') + hh, ":" +
      (mi > 9 ? '' : '0') + mi, ":" +
      (ss > 9 ? '' : '0') + ss
  ].join('');
}

function checkNULL(data){
  //not null
  for(var key in data){
    return false;
  }
  //null
  return true;
}

function verifyToken(token){
  const time=Math.floor(Date.now()/1000);
  let a;
  if(token){
    jwt.verify(token,"data.env.DATA",function(err,decode){
      if(err){
        a=false;
      }
      else if(decode.exp<=time){
        a=false;
      }
      else{
        a=decode.data;
      }
    });
    return a;
  }
  else{
    return false;
  }
}