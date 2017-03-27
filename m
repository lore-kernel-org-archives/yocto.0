Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F008DE00AE0; Mon, 27 Mar 2017 06:29:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.174.32.96 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1195 seconds by postgrey-1.32 at yocto-www;
	Mon, 27 Mar 2017 06:29:14 PDT
Received: from mailout01.ims-firmen.de (mailout01.ims-firmen.de
	[213.174.32.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47A9EE00A38
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 06:29:14 -0700 (PDT)
Received: from mailin03.ims-firmen.de ([192.168.1.143])
	by mailout01.ims-firmen.de with esmtp (envelope-from <yv@iseg-hv.de>)
	id 1csUOb-0001UI-hc
	for yocto@yoctoproject.org; Mon, 27 Mar 2017 15:09:17 +0200
Received: from [87.138.179.153] (helo=post.iseg.site)
	by mailin03.ims-firmen.de with esmtpsa
	(UNKNOWN:ADH-AES256-GCM-SHA384:256) (envelope-from <yv@iseg-hv.de>)
	id 1csUOb-0003Cj-7t
	for yocto@yoctoproject.org; Mon, 27 Mar 2017 15:09:17 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id ED89A50DE74
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 15:09:16 +0200 (CEST)
To: yocto@yoctoproject.org
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <579ec200-a223-5f6b-83d6-a6e7f26b66e1@iseg-hv.de>
Date: Mon, 27 Mar 2017 15:07:57 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
Subject: Could not inherit qt5 in to custom linux image.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Mar 2017 13:29:17 -0000
Content-Type: multipart/alternative;
	boundary="------------6AB406ED1A70D4C82D36D010"

--------------6AB406ED1A70D4C82D36D010
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I am building a linux image using yocto project. I have an apalis imx6 
module in which i already deployed an image with toradex console image 
(image from toradex). Now i have an own custom image meta-ball in which 
i have copied the recipes-qt from console-trdx-image. And i am trying to 
build my image in the same way like toradex image but could not build.

one examle how my own recipe contains.

SUMMARY = "ball include to get access to the devices"
HOMEPAGE = "http://www.google.com <http://www.google.com/>"
License = "CLOSED"

inherit = qmake5
inherit = systemd
SYSTEMD_SERVICE_${PN} = "vrl.service vrl.socket"

SRC_URI = " \git://.............
"
S = "${WORKDIR}/git"

DEPENDS += " "
PROVIDES += " "

QMAKE_PROFILES = "${S}/vrl.pro
"
EXTRA_QMAKEVARS_PRE = "
CONFIG+=SYSTEMD_SOCKET_ACTIVATION
"
do_install () {
install -d ${D}${libdir}
#use here cp instead of install because of symlinks
cp -pr ${S}libvrl* ${D}${libdir}
..........................................................................................
.......................................................................................

previously this vrl.inc file contains inherit qt4e in place of qmake5
now for updating to qt5 i have an error : install cannot stat 
'/home/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/vrl/1.0.-r0/git/vrl' 
: no such file or directory.


Regards,

yv


--------------6AB406ED1A70D4C82D36D010
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);"><span
        class="Apple-converted-space">Hi, <br>
      </span></p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);"><span
        class="Apple-converted-space"></span>I am building a linux image
      using yocto project. I have an apalis imx6 module in which i
      already deployed an image with toradex console image (image from
      toradex). Now i have an own custom image meta-ball in which i have
      copied the recipes-qt from console-trdx-image. And i am trying to
      build my image in the same way like toradex image but could not
      build.</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">one examle how my own
      recipe contains.</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">SUMMARY = "ball include to
      get access to the devices"<br style="box-sizing: border-box;">
      HOMEPAGE = "<a href="http://www.google.com/" rel="nofollow"
        style="box-sizing: border-box; background-color: transparent;
        color: rgb(51, 122, 183); text-decoration: none;
        -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">http://www.google.com</a>"<br
        style="box-sizing: border-box;">
      License = "CLOSED"</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">inherit = qmake5<br
        style="box-sizing: border-box;">
      inherit = systemd<br style="box-sizing: border-box;">
      SYSTEMD_SERVICE_${PN} = "vrl.service vrl.socket"</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">SRC_URI = "
      \git://.............<br style="box-sizing: border-box;">
      "<br style="box-sizing: border-box;">
      S = "${WORKDIR}/git"</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">DEPENDS += " "<br
        style="box-sizing: border-box;">
      PROVIDES += " "</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">QMAKE_PROFILES =
      "${S}/vrl.pro<span class="Apple-converted-space"> </span><br
        style="box-sizing: border-box;">
      "<br style="box-sizing: border-box;">
      EXTRA_QMAKEVARS_PRE = "<span class="Apple-converted-space"> </span><br
        style="box-sizing: border-box;">
      CONFIG+=SYSTEMD_SOCKET_ACTIVATION<span
        class="Apple-converted-space"> </span><br style="box-sizing:
        border-box;">
      "<br style="box-sizing: border-box;">
      do_install () {<br style="box-sizing: border-box;">
      install -d ${D}${libdir}<br style="box-sizing: border-box;">
      #use here cp instead of install because of symlinks<br
        style="box-sizing: border-box;">
      cp -pr ${S}libvrl* ${D}${libdir}<br style="box-sizing:
        border-box;">
..........................................................................................<br
        style="box-sizing: border-box;">
.......................................................................................</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">previously this vrl.inc
      file contains inherit qt4e in place of qmake5<br
        style="box-sizing: border-box;">
      now for updating to qt5 i have an error : install cannot stat
'/home/src/oe-core/build/tmp-glibc/work/armv7at2hf-neon-angstrom-linux-gnueabi/vrl/1.0.-r0/git/vrl'
      : no such file or directory.</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);"><br>
    </p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">Regards,</p>
    <p style="box-sizing: border-box; margin: 0px 0px 10px; color:
      rgb(51, 51, 51); font-family: &quot;Titillium Web&quot;;
      font-size: 14px; font-style: normal; font-variant-ligatures:
      normal; font-variant-caps: normal; font-weight: normal;
      letter-spacing: normal; orphans: 2; text-align: left; text-indent:
      0px; text-transform: none; white-space: normal; widows: 2;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(255, 255, 255);">yv<br>
    </p>
  </body>
</html>

--------------6AB406ED1A70D4C82D36D010--
