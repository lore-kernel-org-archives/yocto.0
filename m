Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B235E00A4D; Fri,  4 Nov 2016 03:10:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.55.111.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from BLU004-OMC4S7.hotmail.com (blu004-omc4s7.hotmail.com
	[65.55.111.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D624E0081E
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 03:10:43 -0700 (PDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com ([65.55.111.137])
	by BLU004-OMC4S7.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Fri, 4 Nov 2016 03:10:43 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=qEKA1SpYtoTbMqG+JaJjLwKPmBpWtCxwsX/2hwkAu44=;
	b=Swn+s2zqDIB/FZbNR7Hb5uUItwlMMwPP+723Xr3EzmgcYPs8wbK/B2WZ8rtEXzIi2Uko8z9LWX9Gsh2BNdK6IAbR+/Vez8GZrb03nmSDCgkhfw49AAq+6+CihBTlSvcy1/TTrN5oQaObbGlyzsP/W1Hb4tvhxYAj3Jy3RasPvnpsRW9Aoep9PT7O6dDFHTNU5wSCjydK8IH1YAwlb/1rxIsu5TinmewN3rsSjs4BZYRWnzLxZ6WnAdEzCx+HrCGtM60aa62T/Dmpioog2FYSZ/dVPuBs86c6RLN8SnnU0RwuGxr4EX7pJ7Cyw1/khU4/qhVzJceUPPtXpYRSya/J8Q==
Received: from AM5EUR03FT012.eop-EUR03.prod.protection.outlook.com
	(10.152.16.58) by AM5EUR03HT028.eop-EUR03.prod.protection.outlook.com
	(10.152.17.58) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.693.6;
	Fri, 4 Nov 2016 10:10:37 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.16.52) by
	AM5EUR03FT012.mail.protection.outlook.com (10.152.16.161) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.693.6 via Frontend Transport; Fri, 4 Nov 2016 10:10:37 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0693.016; Fri, 4 Nov 2016 10:10:37 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-raspberrypi][PATCH V2]
	gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
Thread-Index: AQHSNhtz2a70NfcefUOnPLh1MaTPJaDImwNC
Date: Fri, 4 Nov 2016 10:10:36 +0000
Message-ID: <HE1PR01MB188327BC8192C8A96AC6D31B92A20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <20161103205709.32535-1-raj.khem@gmail.com>
	<HE1PR01MB188355B9382AA3E56FECCD9092A30@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<1B1AB8C7-B125-4187-B7AF-4EBEA5D3D133@gmail.com>
In-Reply-To: <1B1AB8C7-B125-4187-B7AF-4EBEA5D3D133@gmail.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:; UpperCasedChecksum:;
	SizeAsReceived:7618; Count:40
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [IPyqJlwKVjajqf0reXP/YaOAu2ebqYx/]
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT028;
	7:xY3eNTl0URYP2+eBBFj7Uh3bjT+0gdEffPrdOACm+UajdYzVsORWDx7oR9LAtkwMxCFBTG0XUhgE2ZDVCWeiPJ4Vl6S/e8UblGkYtXQMjk7nce38BINNhk06Gz1dpvI1hiiGpBQxwZEOmW3KxhU0TRQQq8Y4IYE01DDjt50bbG9TUoGKva5mQhh/EYVBNuYPCBrchQz0FZCRhy9od1SnzKCRLrwnTUJDMhOheGUmb3wTdu0InXWd53pB2jlc1oO9XKCJWno5BraX7K2W69mpADKXmNKoBCO6ZXToSRD1qJm6BsZcZix8wlFS/A9Ik7m1pTTkGdELhX6v8nUqpL3txyG3sxMD3l2bU+oUf347Yew=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR03HT028;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 52a9385c-1c6c-41a6-35dc-08d4049ad296
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103112)(1601125047); SRVR:AM5EUR03HT028;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR03HT028; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR03HT028; 
x-forefront-prvs: 01165471DB
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2016 10:10:36.9726 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT028
X-OriginalArrivalTime: 04 Nov 2016 10:10:43.0248 (UTC)
	FILETIME=[B3CF2B00:01D23683]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Fri, 04 Nov 2016 10:10:46 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB188327BC8192C8A96AC6D31B92A20HE1PR01MB1883eurp_"

--_000_HE1PR01MB188327BC8192C8A96AC6D31B92A20HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Khem,


It worked successfuly.


No errors, no warnings.

Cheers,

Karim

________________________________
De : Khem Raj <raj.khem@gmail.com>
Envoy=E9 : jeudi 3 novembre 2016 22:44
=C0 : Karim ATIKI
Cc : yocto@yoctoproject.org
Objet : Re: [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%=
.bbappend: Set PACKAGECONFIG_GL for RPi

here is reworked patch
https://github.com/kraj/meta-raspberrypi/commit/468e28084a4d41e71fc0fde53b4=
3033cd19ef9d5.patch

try it again

On Nov 3, 2016, at 2:27 PM, Karim ATIKI <karim_atiki@hotmail.com<mailto:kar=
im_atiki@hotmail.com>> wrote:

Hi Khem,

I just tried to rebuild gstreamer1.0-plugins-bad from a clean checkout with=
 your patch.
At first glance, it's working.

"bitbake gstreamer1.0-plugins-bad" succeeded but with a QA Warning:

gstreamer1.0-plugins-bad-1.8.3-r0 do_configure: QA Issue: gstreamer1.0-plug=
ins-bad: invalid PACKAGECONFIG: "dispmanx [invalid-packageconfig]

Karim



________________________________
De : yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org> =
<yocto-bounces@yoctoproject.org<mailto:yocto-bounces@yoctoproject.org>> de =
la part de Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
Envoy=E9 : jeudi 3 novembre 2016 21:57
=C0 : yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
Objet : [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bba=
ppend: Set PACKAGECONFIG_GL for RPi

Enable dispmanx support if using bcm driver

Signed-off-by: Khem Raj <raj.khem@gmail.com<mailto:raj.khem@gmail.com>>
---
Changes from V1->V2:
- Remove spurious "
- Rearrange code
- Remove duplicate packageconfig for dispmanx

 .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 ++++++++++=
++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappe=
nd b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index ab0280e..7292f90 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -1,2 +1,12 @@
-EXTRA_OECONF_append_rpi =3D " CPPFLAGS=3D'-I${STAGING_DIR_TARGET}/usr/incl=
ude/interface/vcos/pthreads \
-                                   -I${STAGING_DIR_TARGET}/usr/include/int=
erface/vmcs_host/linux'"
+EXTRA_OECONF_append_rpi =3D " CPPFLAGS=3D'-I${STAGING_INCDIR}/interface/vc=
os/pthreads \
+                                   -I${STAGING_INCDIR}/interface/vmcs_host=
/linux'"
+
+# if using bcm driver enable dispmanx not when using VC4 driver
+
+PACKAGECONFIG_append_rpi =3D "${@bb.utils.contains('MACHINE_FEATURES', 'vc=
4graphics', '', ' dispmanx', d)}"
+
+PACKAGECONFIG_GL_rpi =3D "egl gles2"
+
+PACKAGECONFIG_append_rpi =3D " hls libmms faad"
+
+PACKAGECONFIG[dispmanx] =3D "--enable-dispmanx,--disable-dispmanx,userland=
"
--
2.10.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org<http://lists.yoctoproject.org/>
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.



--_000_HE1PR01MB188327BC8192C8A96AC6D31B92A20HE1PR01MB1883eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Khem,</p>
<p><br>
</p>
<p>It worked successfuly.&nbsp;</p>
<p><br>
</p>
<p>No errors, no warnings.</p>
<div><br>
</div>
Cheers,
<div><br>
</div>
<div>Karim<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Khem Raj &lt;raj.khem@=
gmail.com&gt;<br>
<b>Envoy=E9 :</b> jeudi 3 novembre 2016 22:44<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet :</b> Re: [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugin=
s-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi</font>
<div>&nbsp;</div>
</div>
<div>here is reworked patch
<div class=3D""><a href=3D"https://github.com/kraj/meta-raspberrypi/commit/=
468e28084a4d41e71fc0fde53b43033cd19ef9d5.patch" class=3D"" id=3D"LPlnk72449=
9" previewremoved=3D"true">https://github.com/kraj/meta-raspberrypi/commit/=
468e28084a4d41e71fc0fde53b43033cd19ef9d5.patch</a></div>
<div class=3D""><br class=3D"">
</div>
<div class=3D"">try it again&nbsp;</div>
<div class=3D""><br class=3D"">
<div>
<blockquote type=3D"cite" class=3D"">
<div class=3D"">On Nov 3, 2016, at 2:27 PM, Karim ATIKI &lt;<a href=3D"mail=
to:karim_atiki@hotmail.com" class=3D"">karim_atiki@hotmail.com</a>&gt; wrot=
e:</div>
<br class=3D"Apple-interchange-newline">
<div class=3D"">
<div id=3D"divtagdefaultwrapper" class=3D"" style=3D"font-style:normal; fon=
t-weight:normal; letter-spacing:normal; orphans:auto; text-align:start; tex=
t-indent:0px; text-transform:none; white-space:normal; widows:auto; word-sp=
acing:0px; font-size:12pt; font-family:Calibri,Arial,Helvetica,sans-serif">
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Hi Khem,</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">I just tried to=
 rebuild gstreamer1.0-plugins-bad from a clean checkout with your patch.</d=
iv>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">At first glance=
, it's working.</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">&quot;bitbake g=
streamer1.0-plugins-bad&quot; succeeded but with a QA Warning:</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><span class=3D"=
">gstreamer1.0-plugins-bad-1.8.3-r0 do_configure: QA Issue: gstreamer1.0-pl=
ugins-bad: invalid PACKAGECONFIG: &quot;dispmanx [invalid-packageconfig]</s=
pan><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px">Karim</div>
<div class=3D"" style=3D"margin-top:0px; margin-bottom:0px"><br class=3D"">
</div>
<br class=3D"">
<br class=3D"">
<div class=3D"" style=3D"">
<div class=3D"">
<hr tabindex=3D"-1" class=3D"" style=3D"display:inline-block; width:1041.73=
4375px">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr" class=3D""><font face=3D"Calibri, s=
ans-serif" class=3D"" style=3D"font-size:11pt"><b class=3D"">De :</b><span =
class=3D"Apple-converted-space">&nbsp;</span><a href=3D"mailto:yocto-bounce=
s@yoctoproject.org" class=3D"">yocto-bounces@yoctoproject.org</a><span clas=
s=3D"Apple-converted-space">&nbsp;</span>&lt;<a href=3D"mailto:yocto-bounce=
s@yoctoproject.org" class=3D"">yocto-bounces@yoctoproject.org</a>&gt;
 de la part de Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" class=3D"=
">raj.khem@gmail.com</a>&gt;<br class=3D"">
<b class=3D"">Envoy=E9 :</b><span class=3D"Apple-converted-space">&nbsp;</s=
pan>jeudi 3 novembre 2016 21:57<br class=3D"">
<b class=3D"">=C0 :</b><span class=3D"Apple-converted-space">&nbsp;</span><=
a href=3D"mailto:yocto@yoctoproject.org" class=3D"">yocto@yoctoproject.org<=
/a><br class=3D"">
<b class=3D"">Objet :</b><span class=3D"Apple-converted-space">&nbsp;</span=
>[yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: =
Set PACKAGECONFIG_GL for RPi</font>
<div class=3D"">&nbsp;</div>
</div>
</div>
<font size=3D"2" class=3D""><span class=3D"" style=3D"font-size:10pt">
<div class=3D"PlainText">Enable dispmanx support if using bcm driver<br cla=
ss=3D"">
<br class=3D"">
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" class=3D"=
">raj.khem@gmail.com</a>&gt;<br class=3D"">
---<br class=3D"">
Changes from V1-&gt;V2:<br class=3D"">
- Remove spurious &quot;<br class=3D"">
- Rearrange code<br class=3D"">
- Remove duplicate packageconfig for dispmanx<br class=3D"">
<br class=3D"">
&nbsp;.../gstreamer/gstreamer1.0-plugins-bad_%.bbappend&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 14 &#43;&#43;&#43;&#43;&#43;&#43;&#43;=
&#43;&#43;&#43;&#43;&#43;--<br class=3D"">
&nbsp;1 file changed, 12 insertions(&#43;), 2 deletions(-)<br class=3D"">
<br class=3D"">
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappe=
nd b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br cl=
ass=3D"">
index ab0280e..7292f90 100644<br class=3D"">
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend<br c=
lass=3D"">
&#43;&#43;&#43; b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.b=
bappend<br class=3D"">
@@ -1,2 &#43;1,12 @@<br class=3D"">
-EXTRA_OECONF_append_rpi =3D &quot; CPPFLAGS=3D'-I${STAGING_DIR_TARGET}/usr=
/include/interface/vcos/pthreads \<br class=3D"">
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -I${STAGING_DIR_TAR=
GET}/usr/include/interface/vmcs_host/linux'&quot;<br class=3D"">
&#43;EXTRA_OECONF_append_rpi =3D &quot; CPPFLAGS=3D'-I${STAGING_INCDIR}/int=
erface/vcos/pthreads \<br class=3D"">
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -I${STAGING_INC=
DIR}/interface/vmcs_host/linux'&quot;<br class=3D"">
&#43;<br class=3D"">
&#43;# if using bcm driver enable dispmanx not when using VC4 driver<br cla=
ss=3D"">
&#43;<br class=3D"">
&#43;PACKAGECONFIG_append_rpi =3D &quot;${@bb.utils.contains('MACHINE_FEATU=
RES', 'vc4graphics', '', ' dispmanx', d)}&quot;<br class=3D"">
&#43;<br class=3D"">
&#43;PACKAGECONFIG_GL_rpi =3D &quot;egl gles2&quot;<br class=3D"">
&#43;<br class=3D"">
&#43;PACKAGECONFIG_append_rpi =3D &quot; hls libmms faad&quot;<br class=3D"=
">
&#43;<br class=3D"">
&#43;PACKAGECONFIG[dispmanx] =3D &quot;--enable-dispmanx,--disable-dispmanx=
,userland&quot;<br class=3D"">
--<span class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">
2.10.2<br class=3D"">
<br class=3D"">
--<span class=3D"Apple-converted-space">&nbsp;</span><br class=3D"">
_______________________________________________<br class=3D"">
yocto mailing list<br class=3D"">
<a href=3D"mailto:yocto@yoctoproject.org" class=3D"">yocto@yoctoproject.org=
</a><br class=3D"">
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk447668=
" class=3D"" previewremoved=3D"true">https://lists.yoctoproject.org/listinf=
o/yocto</a>
<div id=3D"LPBorder_GT_14782080361260.6612538345123915" class=3D"" style=3D=
"margin-bottom:20px; overflow:auto; width:1063px; text-indent:0px">
<table id=3D"LPContainer_14782080361210.03866191713764899" cellspacing=3D"0=
" class=3D"" style=3D"width:956px; background-color:rgb(255,255,255); overf=
low:auto; padding-top:20px; padding-bottom:20px; margin-top:20px; border-to=
p-width:1px; border-top-style:dotted; border-top-color:rgb(200,200,200); bo=
rder-bottom-width:1px; border-bottom-style:dotted; border-bottom-color:rgb(=
200,200,200)">
<tbody class=3D"">
<tr valign=3D"top" class=3D"" style=3D"border-spacing:0px">
<td id=3D"TextCell_14782080361230.44613243419282544" colspan=3D"2" class=3D=
"" style=3D"vertical-align: top; padding: 0px; display: table-cell; positio=
n: relative;">
<div id=3D"LPRemovePreviewContainer_14782080361230.36011063713095415" class=
=3D""></div>
<div id=3D"LPTitle_14782080361230.833436019926242" class=3D"" style=3D"top:=
0px; color:rgb(0,120,215); font-weight:normal; font-size:21px; font-family:=
wf_segoe-ui_light,'Segoe UI Light','Segoe WP Light','Segoe UI','Segoe WP',T=
ahoma,Arial,sans-serif; line-height:21px">
<a id=3D"LPUrlAnchor_14782080361230.8981496760712158" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" class=3D"" style=3D"tex=
t-decoration:none">yocto Info Page</a></div>
<div id=3D"LPMetadata_14782080361230.4148812972269915" class=3D"" style=3D"=
margin:10px 0px 16px; color:rgb(102,102,102); font-weight:normal; font-fami=
ly:wf_segoe-ui_normal,'Segoe UI','Segoe WP',Tahoma,Arial,sans-serif; font-s=
ize:14px; line-height:14px">
<a href=3D"http://lists.yoctoproject.org/" class=3D"">lists.yoctoproject.or=
g</a></div>
<div id=3D"LPDescription_14782080361260.8517236209021737" class=3D"" style=
=3D"display:block; color:rgb(102,102,102); font-weight:normal; font-family:=
wf_segoe-ui_normal,'Segoe UI','Segoe WP',Tahoma,Arial,sans-serif; font-size=
:14px; line-height:20px; max-height:100px; overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
<br class=3D"">
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB188327BC8192C8A96AC6D31B92A20HE1PR01MB1883eurp_--
