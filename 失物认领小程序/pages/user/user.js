var app = getApp();
const API_URL = 'http://localhost/swzl/shiwu/';
Page({
  data: {
    userInfo: {},
    openid: null
  },
  
  txtMore:function(){
    var that = this;
    var openid = that.data.openid;
    if(openid != null){
        wx.switchTab({
          url: '../index/index',
        })
    }else{
      console.log('尚未登录');
    }
  },

  onLoad: function () {
    var that = this;
      wx.login({
        success: function (loginCode) {
          var url = API_URL + 'GetOpenid/code/' + loginCode.code;
          console.log("url: " + url);
          wx.request({
            url: url,
            header: {
              'content-type': 'application/json'
            },
            success: function (res) {
              console.log("获取到的openid:" + res.data);
              that.setData({
                openid: res.data
              })
            }
          })
        }
      })
    app.getUserInfo(function (userInfo) {
      that.setData({
        userInfo: userInfo
      })
    })
  }
})