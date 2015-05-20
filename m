Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66F5BE0095D; Wed, 20 May 2015 02:01:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7049CE0027F
	for <yocto@yoctoproject.org>; Wed, 20 May 2015 02:01:14 -0700 (PDT)
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Wed, 20 May 2015 14:31:14 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-02.invecas.local (10.0.30.9) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Wed, 20 May 2015 14:31:05 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([fe80::bc3d:32eb:402d:2fae%15]) with mapi id 15.00.0995.028;
	Wed, 20 May 2015 14:31:05 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Usage of apt-get package in yocto
Thread-Index: AQHQktqnOHeXTyFWeUSbAETCqs/IvQ==
Date: Wed, 20 May 2015 09:01:04 +0000
Message-ID: <1432112441117.48793@inedasystems.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Subject: Usage of apt-get package in yocto
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
X-List-Received-Date: Wed, 20 May 2015 09:01:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143211244111748793inedasystemscom_"

--_000_143211244111748793inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I have some requirement with apt-get in yocto genearted rootfs.


I built the yocto source code with enabling the apt package.


But after booting the image on my machine and run the "apt-get" command for=
 installing some package it gives the following error.


Could not open the file /var/lib/dpkg/status open(2: no such a file or dire=
ctory).

The package lists or status files could not be parsed or opened.


Could you please help me for resolving this issue.


Regards,

Raghavendra K.

--_000_143211244111748793inedasystemscom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(166, 166, 1=
66) solid;font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Arial,san=
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
*$WFGreyColor*/;}.wf-size-x20 {font-size: 20px!important;}=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(166,166,166) solid;=0A=
	font-family:"Segoe UI","Segoe WP","Segoe UI WPC",Tahoma,Arial,sans-serif;=
=0A=
	font-size:10pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-menusection-title=0A=
	{}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(205,230,247)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:0px 6px 0px 6px;=0A=
	vertical-align:middle!important;=0A=
	padding-bottom:2px;=0A=
	display:inline-block}=0A=
.ms-rtePasteFlyout-option=0A=
	{padding:8px 4px 8px 4px;=0A=
	outline:none}=0A=
.ms-cui-menusection=0A=
	{float:left;=0A=
	width:85px;=0A=
	height:24px;=0A=
	overflow:hidden}=0A=
.wf=0A=
	{speak:none;=0A=
	font-weight:normal;=0A=
	font-variant:normal;=0A=
	text-transform:none;=0A=
	vertical-align:middle;=0A=
	display:inline-block}=0A=
.wf-family-owa=0A=
	{font-family:'o365Icons'}=0A=
@font-face=0A=
	{font-family:'o365IconsIE8';=0A=
	font-weight:normal;=0A=
	font-style:normal}=0A=
@font-face=0A=
	{font-family:'o365IconsMouse';=0A=
	font-weight:normal;=0A=
	font-style:normal}=0A=
.wf-family-owa=0A=
	{font-family:'o365IconsMouse'}=0A=
.ie8 .wf-family-owa=0A=
	{font-family:'o365IconsIE8'}=0A=
.notIE8 .wf-owa-play-large=0A=
	{border-color:#FFFFFF;=0A=
	width:1.4em;=0A=
	height:1.4em;=0A=
	border-width:.1em;=0A=
	border-style:solid;=0A=
	text-align:center;=0A=
	padding:0.1em;=0A=
	color:#FFFFFF}=0A=
.ie8 .wf-size-play-large=0A=
	{width:40px;=0A=
	height:40px;=0A=
	font-size:30px}=0A=
.notIE8 .wf-size-play-large=0A=
	{width:40px;=0A=
	height:40px;=0A=
	font-size:30px}=0A=
.wf-size-x20=0A=
	{font-size:20px!important}=0A=
-->=0A=
--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi,</p>
<p><br>
</p>
<p>I have some requirement with apt-get in yocto genearted rootfs.</p>
<p><br>
</p>
<p>I built the yocto source code with enabling the apt package. </p>
<p><br>
</p>
<p>But after booting the image on my machine and run the &quot;apt-get&quot=
; command for&nbsp;installing&nbsp;some package it gives the following erro=
r.</p>
<p><br>
</p>
<p>Could&nbsp;not open the file /var/lib/dpkg/status&nbsp;open(2: no such a=
 file or directory).</p>
<p>The package lists or&nbsp;status&nbsp;files could not be parsed&nbsp;or =
opened.</p>
<p><br>
</p>
<p>Could you please help me for resolving this issue.<br>
</p>
<p><br>
</p>
<p>Regards,</p>
<p>Raghavendra K. <br>
</p>
</body>
</html>

--_000_143211244111748793inedasystemscom_--
