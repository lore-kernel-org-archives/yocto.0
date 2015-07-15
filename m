Return-Path: <dkimble@alticast.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14939E009BE; Wed, 15 Jul 2015 09:38:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 67 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Jul 2015 09:38:57 PDT
Received: from CAS.ALTICAST.COM (mail.alticast.com [210.223.111.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12EF8E00978
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 09:38:57 -0700 (PDT)
Received: from MDBA.ALTICAST.COM (10.20.1.13) by MDBA.ALTICAST.COM
	(10.20.1.13) with Microsoft SMTP Server (TLS) id 15.0.847.32;
	Thu, 16 Jul 2015 01:36:57 +0900
Received: from MDBA.ALTICAST.COM ([::1]) by MDBA.ALTICAST.COM
	([fe80::a120:603e:ce7f:b63a%22]) with mapi id 15.00.0847.030;
	Thu, 16 Jul 2015 01:36:39 +0900
From: Dave Kimble <dkimble@alticast.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: using gdb with externalsrc
Thread-Index: AQHQvow+Np9lhVRZQU2DpV3k5r/M/Z3ct0rS
Date: Wed, 15 Jul 2015 16:36:39 +0000
Message-ID: <18f7ce035aef414a9f831b93f7891401@MDBA.ALTICAST.COM>
References: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
In-Reply-To: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
Accept-Language: en-US, ko-KR
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [107.1.177.180]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 15 Jul 2015 10:02:34 -0700
Subject: using gdb with externalsrc
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
X-List-Received-Date: Wed, 15 Jul 2015 16:38:59 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_18f7ce035aef414a9f831b93f7891401MDBAALTICASTCOM_"

--_000_18f7ce035aef414a9f831b93f7891401MDBAALTICASTCOM_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

We've got a component of an existing Yocto project under active development=
 that we'd like to debug with gdb.?

We've added these features to get gdb and the debug symbol packages into th=
e image:

EXTRA_IMAGE_FEATURES =3D "debug-tweaks tools-debug"

IMAGE_FEATURES =3D "ssh-server-openssh dbg-pkgs"


We've added these variables to build the component under active development=
 from the local code:
INHERIT +=3D "externalsrc"
EXTERNALSRC_pn-[component] =3D "[local source code path]/[component]"

All seems well, as the build succeeds and the component in the image reflec=
ts local code changes. However, the component source code never makes it in=
to the image, so it can't be referenced in gdb.

Is there a secret to using dbg-pkgs and EXTERNALSRC together??


--_000_18f7ce035aef414a9f831b93f7891401MDBAALTICASTCOM_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<style type=3D"text/css" style=3D"display:none"><!--P{margin-top:0;margin-b=
ottom:0;} .ms-cui-menu {background-color:#ffffff;border:1px rgb(171, 171, 1=
71) solid;font-family:'Segoe UI WPC', 'Segoe UI', Tahoma, 'Microsoft Sans S=
erif', Verdana, sans-serif;font-size:11pt;color:rgb(51, 51, 51);} .ms-cui-m=
enusection-title {display:none;} .ms-cui-ctl {vertical-align:text-top;text-=
decoration:none;color:rgb(51, 51, 51);} .ms-cui-ctl-on {background-color:rg=
b(223, 237, 250);opacity: 0.8;} .ms-cui-img-cont-float {display:inline-bloc=
k;margin-top:2px} .ms-cui-smenu-inner {padding-top:0px;} .ms-owa-paste-opti=
on-icon {margin: 2px 4px 0px 4px;vertical-align:sub;padding-bottom: 2px;dis=
play:inline-block;} .ms-rtePasteFlyout-option:hover {background-color:rgb(2=
23, 237, 250) !important;opacity:1 !important;} .ms-rtePasteFlyout-option {=
padding:8px 4px 8px 4px;outline:none;} .ms-cui-menusection {float:left; wid=
th:85px;height:24px;overflow:hidden}=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-menusection-title=0A=
	{}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
-->=0A=
=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
-->=0A=
--></style>
</head>
<body>
<div style=3D"font-size:12pt;color:#000000;background-color:#FFFFFF;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif;">
<style type=3D"text/css">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-menusection-title=0A=
	{}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
-->=0A=
</style>
<div style=3D"font-size: 12pt; color: #000000; font-family: calibri, arial,=
 helvetica, sans-serif; background-color: #ffffff;">
<style type=3D"text/css">=0A=
<!--=0A=
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
p=0A=
	{margin-top:0;=0A=
	margin-bottom:0}=0A=
.ms-cui-menu=0A=
	{background-color:#ffffff;=0A=
	border:1px rgb(171,171,171) solid;=0A=
	font-family:'Segoe UI WPC','Segoe UI',Tahoma,'Microsoft Sans Serif',Verdan=
a,sans-serif;=0A=
	font-size:11pt;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl=0A=
	{vertical-align:text-top;=0A=
	text-decoration:none;=0A=
	color:rgb(51,51,51)}=0A=
.ms-cui-ctl-on=0A=
	{background-color:rgb(223,237,250)}=0A=
.ms-cui-img-cont-float=0A=
	{display:inline-block;=0A=
	margin-top:2px}=0A=
.ms-cui-smenu-inner=0A=
	{padding-top:0px}=0A=
.ms-owa-paste-option-icon=0A=
	{margin:2px 4px 0px 4px;=0A=
	vertical-align:sub;=0A=
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
-->=0A=
</style>
<div style=3D"font-size: 12pt; color: #000000; font-family: calibri, arial,=
 helvetica, sans-serif; background-color: #ffffff;">
<div style=3D"color: #282828;">
<div>
<div style=3D"font-size: 12pt; color: #000000; font-family: calibri, arial,=
 helvetica, sans-serif; background-color: #ffffff;">
We've got a component of an existing Yocto project under active development=
 that we'd like to debug with gdb.&#8203;<br>
</div>
<div style=3D"font-size: 12pt; color: #000000; font-family: calibri, arial,=
 helvetica, sans-serif; background-color: #ffffff;">
<div style=3D"font-size: 12pt; color: #000000; font-family: calibri, arial,=
 helvetica, sans-serif; background-color: #ffffff;">
<p style=3D"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; paddin=
g: 0px; border: 0px; font-size: 15px; clear: both; color: #222222; font-fam=
ily: 'helvetica neue', helvetica, arial, sans-serif; line-height: 19.5px; b=
ackground-color: #ffffff;">
</p>
<p class=3D"p1">We&#8217;ve added these features to get gdb and the debug s=
ymbol packages into the image:</p>
<p class=3D"p1">EXTRA_IMAGE_FEATURES =3D &quot;debug-tweaks tools-debug&quo=
t;</p>
<p class=3D"p1">IMAGE_FEATURES =3D &quot;ssh-server-openssh dbg-pkgs&quot;<=
br>
</p>
<p class=3D"p1"><br>
</p>
<p style=3D"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; paddin=
g: 0px; border: 0px; font-size: 15px; clear: both; color: #222222; font-fam=
ily: 'helvetica neue', helvetica, arial, sans-serif; line-height: 19.5px; b=
ackground-color: #ffffff;">
We&#8217;ve added these variables to build the component under active devel=
opment&nbsp;from the local code:<br>
INHERIT &#43;=3D &quot;externalsrc&quot;<br>
EXTERNALSRC_pn-[component] =3D &#8220;[local source code path]/[component]&=
#8221;</p>
<p style=3D"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; paddin=
g: 0px; border: 0px; font-size: 15px; clear: both; color: #222222; font-fam=
ily: 'helvetica neue', helvetica, arial, sans-serif; line-height: 19.5px; b=
ackground-color: #ffffff;">
All seems well, as the build succeeds and the component in the image reflec=
ts local code changes. However, the component source code never makes it in=
to the image, so it can&#8217;t be referenced in gdb.</p>
<p style=3D"margin-right: 0px; margin-bottom: 1em; margin-left: 0px; paddin=
g: 0px; border: 0px; font-size: 15px; clear: both; color: #222222; font-fam=
ily: 'helvetica neue', helvetica, arial, sans-serif; line-height: 19.5px; b=
ackground-color: #ffffff;">
Is there a secret to using dbg-pkgs and EXTERNALSRC together?&#8203;<br>
</p>
<p><br>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_18f7ce035aef414a9f831b93f7891401MDBAALTICASTCOM_--
