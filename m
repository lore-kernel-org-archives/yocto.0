Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48ABEE009DF; Fri,  5 Jun 2015 01:33:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.invecas.com (mx1.invecas.com [112.133.222.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D2AAE0098D
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 01:33:19 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.131) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Fri, 5 Jun 2015 14:03:21 +0530
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Fri, 5 Jun 2015 14:03:14 +0530
Received: from SOC-EXCH-01.invecas.local ([::1]) by SOC-EXCH-01.invecas.local
	([fe80::44e9:6dad:80f6:cd9d%14]) with mapi id 15.00.0995.028;
	Fri, 5 Jun 2015 14:03:14 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: which image i can build for including all package files in
	generated sdk sysroot
Thread-Index: AQHQnC9xQj2cS0i/nkGqQ3oneDN93J2dmzz4
Date: Fri, 5 Jun 2015 08:33:13 +0000
Message-ID: <1433493192791.96280@inedasystems.com>
References: <1433138225087.53118@inedasystems.com>
In-Reply-To: <1433138225087.53118@inedasystems.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Subject: Re: which image i can build for including all package files in generated sdk sysroot
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
X-List-Received-Date: Fri, 05 Jun 2015 08:33:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143349319279196280inedasystemscom_"

--_000_143349319279196280inedasystemscom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi All,



I got solution for this issue.


I enabled the pkg-dbg and package-manager features in loca.conf and built t=
he image for the core-image-minimal-dev now genearted image consists of all=
 the packages which i included for that image.


I add the following line in local.conf file:


EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug "
IMAGE_FEATURES +=3D "package-management"


Regards,


Raghavendra K.

________________________________
From: Raghavendra Kakarla
Sent: Monday, June 1, 2015 11:27 AM
To: yocto@yoctoproject.org
Subject: which image i can build for including all package files in generat=
ed sdk sysroot


Hi,


I built the core-image-minimal image in poky but when i generated the sdk a=
nd install the sdk in my development machine i notice that some packages in=
cude files and libraries are not included in the sysroot given by the insta=
llation toolcahin.


But when i gone through the "tmp/sysroot" in poky i found that all include =
files and libraries are there.



So, which image i can build for the including the all packages.


Thanks and Regards,

Raghavnedra K.

--_000_143349319279196280inedasystemscom_
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
<p>Hi All,</p>
<p><br>
</p>
<p><br>
</p>
<p>I got solution for this issue.</p>
<p><br>
</p>
<p>I enabled the pkg-dbg and package-manager features in loca.conf and buil=
t the image for the core-image-minimal-dev now genearted image consists of =
all the packages which i included for that image.</p>
<p><br>
</p>
<p>I add the following line in local.conf file:</p>
<p><br>
</p>
<p>EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-debug &quot;<br>
IMAGE_FEATURES &#43;=3D &quot;package-management&quot;</p>
<p><br>
</p>
<p>Regards,</p>
<p><br>
</p>
<p>Raghavendra K.<br>
</p>
<div style=3D"font-size:12pt; color:#000000; background-color:#FFFFFF; font=
-family:Calibri,Arial,Helvetica,sans-serif" dir=3D"ltr">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Raghavendra Kakarla=
<br>
<b>Sent:</b> Monday, June 1, 2015 11:27 AM<br>
<b>To:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> which image i can build for including all package files in =
generated sdk sysroot</font>
<div>&nbsp;</div>
</div>
<div>
<p>Hi,</p>
<p><br>
</p>
<p>I built the core-image-minimal image in poky but when i generated the sd=
k and install the sdk in my development machine i notice that some packages=
 incude files and libraries are not included in the sysroot given by the in=
stallation toolcahin.</p>
<p><br>
</p>
<p>But when i gone through the &quot;tmp/sysroot&quot; in poky i found that=
 all include files and libraries are there.</p>
<p><br>
</p>
<p><br>
</p>
<p>So, which image i can build for the including the all packages.</p>
<p><br>
</p>
<p>Thanks and Regards,</p>
<p>Raghavnedra K.<br>
</p>
</div>
</div>
</body>
</html>

--_000_143349319279196280inedasystemscom_--
