Return-Path: <Florin.Sarbu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16436E00837; Wed, 30 Jul 2014 05:46:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	MISSING_HEADERS,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1ECAE007B5
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 05:46:18 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.9/8.14.5) with ESMTP id s6UCkFdg019006
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Jul 2014 05:46:15 -0700 (PDT)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.39]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.03.0174.001;
	Wed, 30 Jul 2014 05:46:15 -0700
From: "Sarbu, Florin-Ionut (Florin)" <Florin.Sarbu@windriver.com>
Thread-Topic: [meta-ivi][PATCH] Make pulseaudio run by default
Thread-Index: AQHPq+Pg6vRa9srcBU66kAdXuqDfiJu4kLee
Date: Wed, 30 Jul 2014 12:46:14 +0000
Message-ID: <50D17BD22A23EE4A887974F6B5882038B5E22D24@ALA-MBB.corp.ad.wrs.com>
References: <1406717096-26502-1-git-send-email-sujith.h@gmail.com>
In-Reply-To: <1406717096-26502-1-git-send-email-sujith.h@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Sujith_Haridasan@mentor.com" <Sujith_Haridasan@mentor.com>
Subject: Re: [meta-ivi][PATCH] Make pulseaudio run by default
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
X-List-Received-Date: Wed, 30 Jul 2014 12:46:24 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_50D17BD22A23EE4A887974F6B5882038B5E22D24ALAMBBcorpadwrs_"

--_000_50D17BD22A23EE4A887974F6B5882038B5E22D24ALAMBBcorpadwrs_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable



-----Original Message-----
From: Sujith H [sujith.h@gmail.com]
Received: Wednesday, 30 Jul 2014, 13:49
To: Behrens, Holger [Holger.Behrens@windriver.com]; Sarbu, Florin-Ionut (Fl=
orin) [Florin.Sarbu@windriver.com]
CC: yocto@yoctoproject.org [yocto@yoctoproject.org]; Sujith H [Sujith_Harid=
asan@mentor.com]
Subject: [meta-ivi][PATCH] Make pulseaudio run by default

From: Sujith H <Sujith_Haridasan@mentor.com>

This change will help pulseaudio run by default on the
target. On the bootup user can see pulseaudio service
started.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend=
 b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
index e32efa7..5401c66 100644
--- a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
+++ b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend
@@ -7,7 +7,7 @@ PR =3D "r1"
 inherit systemd

 SYSTEMD_PACKAGES =3D "${PN}-server"
-SYSTEMD_SERVICE =3D "pulseaudio.service"
+SYSTEMD_SERVICE_${PN}-server =3D "pulseaudio.service"

 PACKAGECONFIG_remove =3D "bluez4"
 PACKAGECONFIG_append =3D " bluez5"
--
1.8.4


--_000_50D17BD22A23EE4A887974F6B5882038B5E22D24ALAMBBcorpadwrs_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:11p=
t; color:black">
<span style=3D"font-family:Calibri,Arial,Helvetica,sans-serif; font-size:11=
pt; color:black"><br>
<br>
<span style=3D"color:black">-----Original Message----- <br>
<b>From:</b> Sujith H [sujith.h@gmail.com]<br>
<b>Received:</b> Wednesday, 30 Jul 2014, 13:49<br>
<b>To:</b> Behrens, Holger [Holger.Behrens@windriver.com]; Sarbu, Florin-Io=
nut (Florin) [Florin.Sarbu@windriver.com]<br>
<b>CC:</b> yocto@yoctoproject.org [yocto@yoctoproject.org]; Sujith H [Sujit=
h_Haridasan@mentor.com]<br>
<b>Subject:</b> [meta-ivi][PATCH] Make pulseaudio run by default<br>
<br>
</span></span></div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">From: Sujith H &lt;Sujith_Haridasan@mentor.com&gt;=
<br>
<br>
This change will help pulseaudio run by default on the<br>
target. On the bootup user can see pulseaudio service<br>
started.<br>
<br>
Signed-off-by: Sujith H &lt;Sujith_Haridasan@mentor.com&gt;<br>
---<br>
&nbsp;meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend | 2 &#=
43;-<br>
&nbsp;1 file changed, 1 insertion(&#43;), 1 deletion(-)<br>
<br>
diff --git a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend=
 b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend<br>
index e32efa7..5401c66 100644<br>
--- a/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bbappend<br>
&#43;&#43;&#43; b/meta-ivi/recipes-multimedia/pulseaudio/pulseaudio_5.0.bba=
ppend<br>
@@ -7,7 &#43;7,7 @@ PR =3D &quot;r1&quot;<br>
&nbsp;inherit systemd<br>
&nbsp;<br>
&nbsp;SYSTEMD_PACKAGES =3D &quot;${PN}-server&quot;<br>
-SYSTEMD_SERVICE =3D &quot;pulseaudio.service&quot;<br>
&#43;SYSTEMD_SERVICE_${PN}-server =3D &quot;pulseaudio.service&quot;<br>
&nbsp;<br>
&nbsp;PACKAGECONFIG_remove =3D &quot;bluez4&quot;<br>
&nbsp;PACKAGECONFIG_append =3D &quot; bluez5&quot;<br>
-- <br>
1.8.4<br>
<br>
</div>
</span></font>
</body>
</html>

--_000_50D17BD22A23EE4A887974F6B5882038B5E22D24ALAMBBcorpadwrs_--
