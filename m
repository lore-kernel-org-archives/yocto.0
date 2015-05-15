Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77F44E009DF; Fri, 15 May 2015 02:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC649E00956
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 02:33:01 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Fri, 15 May 2015 15:03:10 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Fri, 15 May 2015 15:02:56 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Fri, 15 May 2015 15:02:56 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Issue with yocto ADT
Thread-Index: AQHQjvGS80lL5pX7tEePuV/Y1Ag/NQ==
Date: Fri, 15 May 2015 09:32:55 +0000
Message-ID: <1431682376634.76952@inedasystems.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.55]
MIME-Version: 1.0
Subject: Issue with yocto ADT
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
X-List-Received-Date: Fri, 15 May 2015 09:33:04 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143168237663476952inedasystemscom_"

--_000_143168237663476952inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,


I have problem with the ADT while i am building the autotool example hellow=
ord project which is given in the "yocto ADT autotool project".


Could you please help me in resolving this issue.


I followed the following steps for installing the adt in my development PC:


I built the toolchain using the following command:

$cd ~/poky
$source ./oe-init-build-env
$bitbake meta-ide-support


Extract the root file system by using the following commands:

$cd ~
$source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linux
$runqemu-extract-sdk \
        ~/poky/build/tmp/deploy/images/arqlyn/ core-image-minimal-dhruwa_io=
e-20150511102759.rootfs.tar.bz2\
        $HOME/arqlyn

I followed the command given in the yocto project dev-manual for installing=
 eclipse and adding yocto plugin to eclipse.

I Gave the following data to the eclipse for configuring the cross-compiler=
 options:

1. I select the "Build System Derived Toolchain"
2.point the toolchain path to "home/testuser/poky/build"
3.gave sysroot path to /home/testuser/arqlyn

After entered this information I got the my machine-name in the "select the=
 target architecture" filed.

After this I create a autotool support project and tried to build but it gi=
ves the error.

Regards,

Raghavendra.


--_000_143168237663476952inedasystemscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(166, 166, 1=
66) solid;font-family:'Segoe UI','Segoe WP','Segoe UI WPC',Tahoma,Arial,san=
s-serif;font-size:10pt;color:rgb(51, 51, 51);} .ms-cui-menusection-title {d=
isplay:none;} .ms-cui-ctl {vertical-align:text-top;text-decoration:none;col=
or:rgb(51, 51, 51);} .ms-cui-ctl-on {background-color:rgb(205, 230, 247);op=
acity: 0.8;} .ms-cui-img-cont-float {display:inline-block;margin-top:2px} .=
ms-cui-smenu-inner {padding-top:0px;} .ms-owa-paste-option-icon {margin: 0p=
x 6px 0px 6px;vertical-align:middle!important;padding-bottom: 2px;display:i=
nline-block;} .ms-rtePasteFlyout-option:hover {background-color:rgb(205, 23=
0, 247) !important;opacity:1 !important;} .ms-rtePasteFlyout-option {paddin=
g:8px 4px 8px 4px;outline:none;} .ms-cui-menusection {float:left; width:85p=
x;height:24px;overflow:hidden}.wf {speak:none; font-weight:normal; font-var=
iant:normal; text-transform:none; -webkit-font-smoothing:antialiased; verti=
cal-align:middle; display:inline-block;}.wf-family-owa {font-family:'o365Ic=
ons'}@font-face {  font-family:'o365IconsIE8';  src:url('prem/15.0.995.29/r=
esources/styles/office365icons.ie8.eot?#iefix') format('embedded-opentype')=
,         url('prem/15.0.995.29/resources/styles/office365icons.ie8.woff') =
format('woff'),         url('prem/15.0.995.29/resources/styles/office365ico=
ns.ie8.ttf') format('truetype');  font-weight:normal;  font-style:normal;}@=
font-face {  font-family:'o365IconsMouse';  src:url('prem/15.0.995.29/resou=
rces/styles/office365icons.mouse.eot?#iefix') format('embedded-opentype'), =
        url('prem/15.0.995.29/resources/styles/office365icons.mouse.woff') =
format('woff'),         url('prem/15.0.995.29/resources/styles/office365ico=
ns.mouse.ttf') format('truetype');  font-weight:normal;  font-style:normal;=
}.wf-family-owa {font-family:'o365IconsMouse'}.ie8 .wf-family-owa {font-fam=
ily:'o365IconsIE8'}.ie8 .wf-owa-play-large:before {content:'\e254';}.notIE8=
 .wf-owa-play-large:before {content:'\e054';}.ie8 .wf-owa-play-large {color=
:#FFFFFF/*$WFWhiteColor*/;}.notIE8 .wf-owa-play-large {border-color:#FFFFFF=
/*$WFWhiteColor*/; width:1.4em; height:1.4em; border-width:.1em; border-sty=
le:solid; border-radius:.8em; text-align:center; box-sizing:border-box; -mo=
z-box-sizing:border-box; padding:0.1em; color:#FFFFFF/*$WFWhiteColor*/;}.ie=
8 .wf-size-play-large {width:40px; height:40px; font-size:30px}.notIE8 .wf-=
size-play-large {width:40px; height:40px; font-size:30px}.notIE8 .wf-owa-tr=
iangle-down-small:before {content:'\e052';}.ie8 .wf-owa-triangle-down-small=
:before { content:'\e052';}.ie8 .wf-owa-triangle-down-small {color:#666666/=
*$WFGreyColor*/;}.wf-size-x20 {font-size: 20px!important;}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p><span style=3D"font-size: 14pt;">Hi All,</span></p>
<p><br style=3D"font-size: 14pt;">
</p>
<p><span style=3D"font-size: 14pt;">I have problem with the ADT while i am =
building the autotool example helloword project which is given in the &quot=
;yocto ADT autotool project&quot;.</span></p>
<p><br style=3D"font-size: 14pt;">
</p>
<p><span style=3D"font-size: 14pt; color: rgb(255, 0, 0);"><span style=3D"c=
olor: rgb(255, 0, 0);">Could you please help me in resolving this issue.</s=
pan></span></p>
<p><br style=3D"color: rgb(208, 92, 18);">
</p>
<p><span style=3D"color: rgb(208, 92, 18);"></span><span style=3D"color: rg=
b(208, 92, 18); font-size: 14pt;">I followed the following steps for instal=
ling the adt in my development PC:</span><br>
<span style=3D"font-size: 14pt;"></span></p>
<p><br style=3D"font-size: 14pt;">
</p>
<p><span style=3D"font-size: 14pt;">I built the toolchain using the followi=
ng command:<br>
<br>
$cd ~/poky<br>
$source ./oe-init-build-env<br>
$bitbake meta-ide-support<br>
<br>
<br>
Extract the root file system by using the following commands:<br>
<br>
$cd ~<br>
$source ~/poky/build/tmp/environment-setup-mips32r2el-poky-linux<br>
$runqemu-extract-sdk \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ~/poky/build/tmp/deploy/images/a=
rqlyn/ core-image-minimal-dhruwa_ioe-20150511102759.rootfs.tar.bz2\<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $HOME/arqlyn<br>
<br>
I followed the command given in the yocto project dev-manual for installing=
 eclipse and adding yocto plugin to eclipse.<br>
<br>
I Gave the following data to the eclipse for configuring the cross-compiler=
 options:<br>
<br>
1. I select the &quot;Build System Derived Toolchain&quot;<br>
2.point the toolchain path to &quot;home/testuser/poky/build&quot;<br>
3.gave sysroot path to /home/testuser/arqlyn<br>
<br>
After entered this information I got the my machine-name in the &quot;selec=
t the target architecture&quot; filed.<br>
<br>
After this I create a autotool support project and tried to build but it gi=
ves the error.<br>
<br>
Regards,<br>
<br>
Raghavendra.<br style=3D"">
</span></p>
<p><br>
</p>
</body>
</html>

--_000_143168237663476952inedasystemscom_--
