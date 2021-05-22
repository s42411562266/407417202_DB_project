const db = require('../utils/database');

const Member = class Member {
  constructor(mID,name,nick,level,lv,account,password,date,photo) {
    this.mID = mID;
    this.name = name;
    this.nick = nick;
    this.level = level;
    this.lv = lv;
    this.account = account;
    this.password=password;
    this.date=date;
    this.photo=photo;
  }
  
  static register(req,res,date,pic){
        // 將註冊資料寫入資料庫
        return db.execute('INSERT INTO member (name,nick,account,password,date,photo) values (?,?,?,?,?,?)', [
          req.body.name,
          req.body.nick,
          req.body.account,
          req.body.password,
          date,
          pic
        ]);
  }

  static getMainArt(){
    return db.execute('select * from article');
  }

  static getAllMember(){
    return db.execute('select * from member');
  }

  static addComment(data){
    return db.execute('INSERT INTO comment (MId,AId,content) values (?,?,?)',[
      data.MId,
      data.AId,
      data.content
    ]);
  }

  static showArt(AID){
    return db.execute('select A.title as title, A.URL as URL, M.nick as name, M.mID as mid,M.photo as photo,C.content,C.cID as cid from article as A, member as M,comment as C where C.mID=M.mID and C.AId=A.AId and A.AId=?',
    [AID]);
  }

  static delComment(Did){
    return db.execute('delete from comment where cID=?',[Did]);
  }

  static editComment(req,res){
    return db.execute('update comment set content=? where cID=?',[
      req.body.content,
      req.body.cID
    ]);
  }

  static login(req,res){
    return db.execute('select * from member where binary account=? and password=?',[
      req.body.account,
      req.body.password
    ]);
  }

  static putToken(token){
    return db.execute('update member set token=?',[token]);
  }

  static getcID(ID){
    return db.execute('select * from comment where cID=?',[ID]);
  }
};

module.exports = Member;