/*
* @Author: hys
* @Date:   2018-01-22 08:38:54
* @Last Modified by:   hys
* @Last Modified time: 2018-01-22 23:19:43
*/


'use strict';

$(function() {
  // 当文档加载完成才会执行
  /**
   * 根据屏幕宽度的变化决定轮播图片应该展示什么
   * @return {[type]} [description]
   */
  function resize() {
    // 获取屏幕宽度
    var windowWidth = $(window).width();
    // 判断屏幕属于大还是小
    var isSmallScreen = windowWidth < 768;
    // 根据大小为界面上的每一张轮播图设置背景
    // $('#main_ad > .carousel-inner > .item') // 获取到的是一个DOM数组（多个元素）
    $('#main_ad > .carousel-inner > .item').each(function(i, item) {
      // 因为拿到是DOM对象 需要转换
      var $item = $(item);
      // var imgSrc = $item.data(isSmallScreen ? 'image-xs' : 'image-lg');
      var imgSrc =
        isSmallScreen ? $item.data('image-xs') : $item.data('image-lg');

      // 设置背景图片
      $item.css('backgroundImage', 'url("' + imgSrc + '")');
      //
      // 因为我们需要小图时 尺寸等比例变化，所以小图时我们使用img方式
      if (isSmallScreen) {
        $item.html('<img src="' + imgSrc + '" alt="" />');
      } else {
        $item.empty();
      }
    });
  }
  $(window).on('resize', resize).trigger('resize');
});


/**
 * [count description]
 * @return {[type]} [description]
 * 商品详情
 */
function count() {   
        document.getElementById('count').innerHTML++;
      }  
      function count1() { 
      var con =document.getElementById('count').innerHTML;  
        if(con==1){
          Jquery('#count').attr('disabled',"true");
        }
          document.getElementById('count').innerHTML--;
      }