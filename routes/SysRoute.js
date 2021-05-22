var express = require('express');
var router = express.Router();
const SysController = require('../controllers/SysController_02');
const Member = require('../models/memberModel_02');

var multer=require('multer');
var upload=multer({dest: './assets/img/TEMP'});
var cloudinary = require('cloudinary').v2;
cloudinary.config({ 
  cloud_name: 'dqtvmz1nq', 
  api_key: '344464859594662', 
  api_secret: 'IT3To4HF9KlcwWm-HnQbnXqvHZE' 
});

//REG
router.get('/regSuccess',SysController.showregS);
router.post('/register',upload.single('photo'),async function(req,res,next){
  var message="";
    const result=await cloudinary.uploader.upload(req.file.path);
    try{
        await Member.register(req,res,onTime(),result.url).then(([rows])=>{
            res.redirect('/regSuccess');
        });
      } catch(err){
        if(err.errno==1062){
          message="帳號已存在!";
          res.render('register-page',{message});
        }
        else{
          res.send("註冊失敗，請稍後再試!");
        }
      }
      
});
router.get('/reg',SysController.showREG);

//comment
router.post('/addComment',SysController.addComment);
router.post('/editComment',SysController.doEditComment);
router.get('/delComment/:id',SysController.delComment);
router.get('/SeditComment/:id',SysController.showEdit);

//main
router.get('/',SysController.indexMain);
router.get('/article',SysController.showArticle);

//login
router.get('/showLogin',SysController.showlogin);
router.post('/doLogin',SysController.login);
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

//API
router.get('/ArticleAPI/',SysController.articleAPI);

module.exports = router;