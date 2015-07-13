Return-Path: <matteo.pampolini@selex-es.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECB11E008CE; Mon, 13 Jul 2015 07:30:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,FSL_MY_NAME_IS,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [151.89.31.197 listed in list.dnswl.org]
	*  2.9 FSL_MY_NAME_IS BODY: My name is ...
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 377 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Jul 2015 07:30:02 PDT
Received: from sesgepumx004.selex-es.com (sesgepumx004.selex-es.com
	[151.89.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4EC80E0086E
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 07:30:02 -0700 (PDT)
Received: from sesgepumx004.selex-es.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id A3A0341084
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 16:23:40 +0200 (CEST)
Received: from sesgepwmx002.ses.priv (unknown [151.89.46.20])
	by sesgepumx004.selex-es.com (Postfix) with ESMTPS id 9806741079
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 16:23:40 +0200 (CEST)
Received: from sxgepvslc001.exch4-sophos.priv (151.89.31.208) by
	SESGEPWMX002.ses.priv (151.89.46.20) with Microsoft SMTP Server id
	14.3.248.2; Mon, 13 Jul 2015 16:23:40 +0200
Received: from sxgepvslc001.exch4-sophos.priv (localhost [127.0.0.1])	by
	localhost (Postfix) with SMTP id 48C5F427DB	for
	<yocto@yoctoproject.org>; Mon, 13 Jul 2015 16:23:40 +0200 (CEST)
Received: from sxgepvslc010.servizi.elsag.it (sxgepvslc010 [10.70.199.10])	by
	sxgepvslc001.exch4-sophos.priv (Postfix) with ESMTP id 0508B427D0	for
	<yocto@yoctoproject.org>; Mon, 13 Jul 2015 16:23:40 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (unknown [10.70.196.29])	by
	sxgepvslc010.servizi.elsag.it (Postfix) with ESMTP id F3AD360713	for
	<yocto@yoctoproject.org>; Mon, 13 Jul 2015 16:23:39 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (10.70.196.29) by SXGEPVSWC069.cs4.priv
	(10.70.196.29) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Mon, 13 Jul 2015 16:23:29 +0200
Received: from SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64]) by
	SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64%12]) with mapi id
	15.00.0995.028; Mon, 13 Jul 2015 16:23:29 +0200
From: Pampolini Matteo <matteo.pampolini@selex-es.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Which is the best strategy to customize Qt configuration?
Thread-Index: AQHQvXaRbv/oZSkFIESXjA0SnTQsbg==
Date: Mon, 13 Jul 2015 14:23:28 +0000
Message-ID: <1436797408174.67011@selex-es.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.194.133]
MIME-Version: 1.0
X-PMX-Version: 6.0.3.2322014, Antispam-Engine: 2.7.2.2107409,
	Antispam-Data: 2015.7.13.141217
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
	HTML_70_90 0.1, HTML_NO_HTTP 0.1, BODYTEXTH_SIZE_10000_LESS 0,
	BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_5000_5999 0,
	BODY_SIZE_7000_LESS 0, HI_MY_NAME_IS 0, NO_URI_HTTPS 0,
	WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0,
	__ANY_URI 0, __CP_MEDIA_BODY 0, __CT 0, __CTYPE_HAS_BOUNDARY 0,
	__CTYPE_MULTIPART 0, __CTYPE_MULTIPART_ALT 0, __FRAUD_INTRO 0,
	__FW_1LN_BOT_MSGID 0, __HAS_FROM 0, __HAS_HTML 0, __HAS_MSGID 0,
	__HAS_XOIP 0, __MIME_HTML 0, __MIME_VERSION 0, __SANE_MSGID 0,
	__TAG_EXISTS_HTML 0, __TO_MALFORMED_2 0, __TO_NO_NAME 0,
	__URI_NO_MAILTO 0, __URI_NO_PATH 0, __URI_NO_WWW 0'
X-Seen-By: sesgepumx004.servizi.elsag.it
MXOUTGOING: yes
Subject: Which is the best strategy to customize Qt configuration?
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
X-List-Received-Date: Mon, 13 Jul 2015 14:30:06 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_143679740817467011selexescom_"

--_000_143679740817467011selexescom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello everybody,


my name is Matteo and I'm writing from Italy.


I'm involved in a project that requires a very customized Linux installatio=
n and I think Yocto is the best choice for this purpose.


I was able to build and run some images from Poky 1.8 reference and now I'm=
 trying to create my own one, with a custom configuration of Qt for X11.


In particular I would like to remove Phonon support to avoid GStreamer/GLib=
 dependencies: the quickest (and bad) solution was to modify meta/recipes-q=
t/qt4/qt4.inc file and it works, of course.


But in order to follow Yocto guidelines and learn the right approach, I wou=
ld like to create a new layer and, with proper use of .bbappend files, crea=
te my own Qt custom configuration.


Now I'm in trouble a little bit because I do not exactly now which Qt-relat=
ed files should be included in my layer and how they should relate with the=
 provided ones, may you please help me?


Many thanks in advance for your kind support,


Matteo

--_000_143679740817467011selexescom_
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
*$WFGreyColor*/;}.wf-size-x20 {font-size: 20px!important;}--></style>
</head>
<body dir=3D"ltr" style=3D"font-size:12pt;color:#000000;background-color:#F=
FFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hello everybody,</p>
<p><br>
</p>
<p>my name is Matteo and I'm writing from Italy.</p>
<p><br>
</p>
<p>I'm involved in a project that requires a very customized Linux installa=
tion and I think Yocto is the best choice for this purpose.</p>
<p><br>
</p>
<p>I was able to build and run some images from Poky 1.8 reference and now =
I'm trying to create my own one, with a custom configuration of Qt for X11.
</p>
<p><br>
</p>
<p>In particular I would like to remove Phonon support to avoid GStreamer/G=
Lib dependencies: the quickest (and bad) solution was to modify meta/recipe=
s-qt/qt4/qt4.inc file and it works, of course.</p>
<p><br>
</p>
<p>But in order to follow Yocto guidelines and learn the right approach, I =
would like to create a new layer and, with proper use of .bbappend files, c=
reate&nbsp;my own Qt&nbsp;custom configuration.
<br>
</p>
<p><br>
</p>
<p>Now I'm in trouble a little bit because I do not exactly now which Qt-re=
lated files should be included in my layer and how they should relate&nbsp;=
with the&nbsp;provided ones,&nbsp;may you please help me?</p>
<p><br>
</p>
<p>Many thanks in advance for your kind support,</p>
<p><br>
</p>
<p>Matteo<br>
</p>
</body>
</html>

--_000_143679740817467011selexescom_--
