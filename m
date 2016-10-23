Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E788E00AD2; Sun, 23 Oct 2016 03:10:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [65.54.190.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC1S2.hotmail.com (bay004-omc1s2.hotmail.com
	[65.54.190.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0685AE009BB
	for <yocto@yoctoproject.org>; Sun, 23 Oct 2016 03:10:20 -0700 (PDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com ([65.54.190.61])
	by BAY004-OMC1S2.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sun, 23 Oct 2016 03:10:20 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=NurXivrJtuY6kcRJ6brR6MV/fNEs6UMKXNmgo7OwHHA=;
	b=B8X5Z794Dnlggz1k2gWVeYcXDcKrkkhQNqJJ7pDBLxjJwZP0Gylqi7mtsWmjFvnJ5WQuCH2K75fgMjlH8LFAnLpHa8PfjiEbpgveVUp6lQ1wu6V4UIkD0qXxVHhr7EBzsdye3vtHkQC3b0sb4Nhp+79pX8u5POw+tegYzv1ZmNLUQQJQBlNOizipwb6PpVtNxXmMznG6ptgvS4cwP1pqOTX4dNS7w3d40brKEgzcCtSrLCvZIOjhpLWGUEmOkKfSW4R0ifq7nnUUPBo6I+5hq4N5KNzpwt6dS6FNFZc3LBgzHremZXMsv2GH102IuUHw0AtyU7Jc9Rf0U5GL7PsTSA==
Received: from DB5EUR03FT027.eop-EUR03.prod.protection.outlook.com
	(10.152.20.53) by DB5EUR03HT195.eop-EUR03.prod.protection.outlook.com
	(10.152.21.69) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Sun, 23 Oct 2016 10:10:05 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.20.57) by
	DB5EUR03FT027.mail.protection.outlook.com (10.152.20.121) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sun, 23 Oct 2016 10:10:04 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0669.021; Sun, 23 Oct 2016 10:10:04 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Thread-Topic: [yocto] [raspberrypi3][meta-qt5] Failed to build
	meta-toolchain-qt5
Thread-Index: AQHSLF9yRZyzpaMIaUqAHJgUBbdCu6C0lPiBgAAQ2YCAAAFsLIAADBF5gAAfizSAACqyAIAA0zr9
Date: Sun, 23 Oct 2016 10:10:04 +0000
Message-ID: <HE1PR01MB1883F4BE2E34D631BE7F48D192D60@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<682A676C-7174-476C-B845-13329DC857F9@gmail.com>
	<HE1PR01MB18830215696B2C95CA18945F92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883F24DAFB37D6ED3C5956792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB18837C50555202631BDE3F9792D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>,
	<20161022222752.4d2b2039@nuc.betafive.co.uk>
In-Reply-To: <20161022222752.4d2b2039@nuc.betafive.co.uk>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [8xvw0K1/MW+CqRuqizCBONH2oWFde6qw]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT195;
	6:arbcuzTazqQUE+FbtX4ao6lPzt0x8fCi10cNFgPXrcFB4jzVzjJtbWIcq2cQjYQRF9Lyylg0dD1FbttnLkJ/iEwNWdBdzPUVlZR5trS43/lkQ3F44s8TsVK/xmngSF7GJDlIr7xKX2Y9YOPEXxUJww8ZRqQjGSnDXVqQtOWmON76ZIoDWZ6FTpsUQ69QuS3LnF5eYsFtjiAFkt7spjZ9i0FCyxzXQaFKO+zRZyyKGTvn5OAkx3cNnX4ns4u2W4cNnT9wa9fqMxDsMBwaH+LMUyN5Dz7Z0YoTR+Np3sSL9GjwBF4rdYYKjY9VKxelwaLU;
	5:wrC92VuQiCG4G5lOLCzhwL/LoXXMeuAjK7hvcPa/Jb5ajUMGNAzb6JUdjARqrQiWnpciUtS5lxEBkaB+n646BYwwOWkijwgbdfqPFKAgpWmv9YyRnaygclo800xTpIYW4i0S1nlOghuL2k2DlrLOfp1SZqvjJqsy09S0FCmtSwA=;
	24:bCtaWq8IrNcQzMWr2Wl51pNh6JLygj8yNoedRAnvfKfLPwZ8J1EqDnniJPSwKCHDMbBSX0+0SYU9aBnNgT5yL/AbgvsesJOn4lYKQynetlA=;
	7:8GEfokot1mFMFCUX1UyVF/u3reLIwXJLJ2Osm3VL/LeXqnR1jXRBTkOGwZoL7+91aLOUGsouuVAWMPfHqGc7mC85or30w2BQwCg2w8If5tibY1VUb9ZVhhrkOLLtMJ/HwkH8uZ4T7ly8qOxcj60FunByBKp3uamqpO28l5IEGTze46thEQi1aIlqXC6QoudIU3H2YPjHrez3n1qdiV/4GPU+GfbMH5k08knkqnhLzTUJaoV3ZAN5XL/dAGHad4ASSoaaWeI8wJfwJ2ArxUyx3zv/FjEn7NRiZpOHqaKjfKOsQAnPBBDYUjUD2BqvBmmzKDPD/+YNytBNUgqwW5u9TFWlYTreeR28s7+HBjjKaaA=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR03HT195;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: f2d3c844-4180-4158-25ef-08d3fb2cc1fb
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:DB5EUR03HT195;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:DB5EUR03HT195; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT195; 
x-forefront-prvs: 0104247462
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2016 10:10:04.0216 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT195
X-OriginalArrivalTime: 23 Oct 2016 10:10:20.0120 (UTC)
	FILETIME=[A9111D80:01D22D15]
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sun, 23 Oct 2016 10:10:24 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB1883F4BE2E34D631BE7F48D192D60HE1PR01MB1883eurp_"

--_000_HE1PR01MB1883F4BE2E34D631BE7F48D192D60HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

I just tried with a clean configuration.

I"ve cloned the layers as shown in the config below:

Build Configuration:
BB_VERSION        =3D "1.32.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "Debian-8.2"
TARGET_SYS        =3D "arm-poky-linux-gnueabi"
MACHINE           =3D "raspberrypi3"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "2.2"
TUNE_FEATURES     =3D "arm armv7ve vfp thumb neon vfpv4 callconvention-hard=
 cortexa7"
TARGET_FPU        =3D "hard"
meta
meta-poky
meta-yocto-bsp    =3D "master:ef627ab364d52fe19994c94c1a78fbe21620a32c"
meta-raspberrypi  =3D "master:de016ceef63028f5578191785c50529695f76a1a"
meta-oe
meta-multimedia   =3D "master:8ba31c9ba214802b1305aabbc0be0353cba0bc3e"



Created a new build and just added:

MACHINE=3D"raspberrypi3"
DISTRO_FEATURES_remove  =3D " x11 wayland".

Launched: bitbake -k gstreamer1.0-plugins-bad


It failed as usual during the do_compile() of gstreamer1.0-plugins-bad as r=
eported yesterday.

./.libs/libgstgl-1.0.so: undefined reference to `graphics_get_display_size'


How did you get it work on your side ?


Karim



________________________________
De : Paul Barker <paul@paulbarker.me.uk>
Envoy=E9 : samedi 22 octobre 2016 23:27
=C0 : Karim ATIKI
Cc : yocto
Objet : Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-toolchain=
-qt5

On Sat, 22 Oct 2016 18:59:39 +0000
Karim ATIKI <karim_atiki@hotmail.com> wrote:

> Hi ,
>
>
> I just found out something interesting.
>
> I setup a build with poky-krogoth, I didn't include any of my custom
> recipes.
>
>
> I've jsut included meta-raspberrypi in the layers.
>
> Setup a machine "raspberrypi3"
>
>
> Launched: bitbake gstreamer1.0-plugins-bad
>
>
> It worked successfully.
>
> Then, I deleted the tmp and sstate directories.
>
>
> And I added in the local.conf:
>
> DISTRO_FEATURES_remove =3D " x11 wayland".
>
>
> Launched: bitbake gstreamer1.0-plugins-bad
>
>
> >>>> It failed at the exact step (see below in the conversation)
>
>
> Is there a problem with this configuration ?
>
>
> Cheers,
>
>
> Karim
>

I can't reproduce this on master. gstreamer1.0-plugins-bad compiles
without error for raspberrypi3 without x11 or wayland in
DISTRO_FEATURES on my machine.

Are you using krogoth branches of all your layers? Could you retry this
on a clean checkout of master, using the minimal set of layers
(oe-core, meta-oe, meta-multimedia and meta-raspberrypi) and see if you
see the same problem?

Thanks,
Paul Barker

--_000_HE1PR01MB1883F4BE2E34D631BE7F48D192D60HE1PR01MB1883eurp_
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
<p></p>
<div>Hi Paul,</div>
<div><br>
</div>
<div>I just tried with a clean configuration.</div>
<div><br>
</div>
<div>I&quot;ve cloned the layers as shown in the config below:</div>
<div><br>
</div>
<div>Build Configuration:</div>
<div>BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;1.32.0&quot;</div>
<div>BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;x86_64-linux&quot;</di=
v>
<div>NATIVELSBSTRING &nbsp; =3D &quot;Debian-8.2&quot;</div>
<div>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;arm-poky-linux-gnueabi=
&quot;</div>
<div>MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D &quot;raspberrypi3&quot=
;</div>
<div>DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;poky&quot;</=
div>
<div>DISTRO_VERSION &nbsp; &nbsp;=3D &quot;2.2&quot;</div>
<div>TUNE_FEATURES &nbsp; &nbsp; =3D &quot;arm armv7ve vfp thumb neon vfpv4=
 callconvention-hard cortexa7&quot;</div>
<div>TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D &quot;hard&quot;</div>
<div>meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</div>
<div>meta-poky &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-yocto-bsp &nbsp; &nbsp;=3D &quot;master:ef627ab364d52fe19994c94c1=
a78fbe21620a32c&quot;</div>
<div>meta-raspberrypi &nbsp;=3D &quot;master:de016ceef63028f5578191785c5052=
9695f76a1a&quot;</div>
<div>meta-oe &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div>
<div>meta-multimedia &nbsp; =3D &quot;master:8ba31c9ba214802b1305aabbc0be03=
53cba0bc3e&quot;</div>
<div><br>
</div>
<br>
<p></p>
<p></p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
Created a new build and just added:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
MACHINE=3D&quot;raspberrypi3&quot;</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
DISTRO_FEATURES_remove &nbsp;=3D &quot; x11 wayland&quot;.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
Launched: bitbake -k gstreamer1.0-plugins-bad</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
It failed as usual during the do_compile() of&nbsp;<span style=3D"font-fami=
ly: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji&quot;, &=
quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &qu=
ot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">gstreamer1.0-plugin=
s-bad
 as reported yesterday.</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span>./.libs/libgstgl-1.0.so: undefined reference to `graphics_get_display=
_size'</span><br>
</div>
<div><br>
</div>
<div><br>
</div>
<div>How did you get it work on your side ?</div>
<div><br>
</div>
<div><br>
</div>
<div>Karim</div>
<br>
<p></p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> Paul Barker &lt;paul=
@paulbarker.me.uk&gt;<br>
<b>Envoy=E9 :</b> samedi 22 octobre 2016 23:27<br>
<b>=C0 :</b> Karim ATIKI<br>
<b>Cc&nbsp;:</b> yocto<br>
<b>Objet :</b> Re: [yocto] [raspberrypi3][meta-qt5] Failed to build meta-to=
olchain-qt5</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Sat, 22 Oct 2016 18:59:39 &#43;0000<br>
Karim ATIKI &lt;karim_atiki@hotmail.com&gt; wrote:<br>
<br>
&gt; Hi ,<br>
&gt; <br>
&gt; <br>
&gt; I just found out something interesting.<br>
&gt; <br>
&gt; I setup a build with poky-krogoth, I didn't include any of my custom<b=
r>
&gt; recipes.<br>
&gt; <br>
&gt; <br>
&gt; I've jsut included meta-raspberrypi in the layers.<br>
&gt; <br>
&gt; Setup a machine &quot;raspberrypi3&quot;<br>
&gt; <br>
&gt; <br>
&gt; Launched: bitbake gstreamer1.0-plugins-bad<br>
&gt; <br>
&gt; <br>
&gt; It worked successfully.<br>
&gt; <br>
&gt; Then, I deleted the tmp and sstate directories.<br>
&gt; <br>
&gt; <br>
&gt; And I added in the local.conf:<br>
&gt; <br>
&gt; DISTRO_FEATURES_remove =3D &quot; x11 wayland&quot;.<br>
&gt; <br>
&gt; <br>
&gt; Launched: bitbake gstreamer1.0-plugins-bad<br>
&gt; <br>
&gt; <br>
&gt; &gt;&gt;&gt;&gt; It failed at the exact step (see below in the convers=
ation)<br>
&gt; <br>
&gt; <br>
&gt; Is there a problem with this configuration ?<br>
&gt; <br>
&gt; <br>
&gt; Cheers,<br>
&gt; <br>
&gt; <br>
&gt; Karim<br>
&gt; <br>
<br>
I can't reproduce this on master. gstreamer1.0-plugins-bad compiles<br>
without error for raspberrypi3 without x11 or wayland in<br>
DISTRO_FEATURES on my machine.<br>
<br>
Are you using krogoth branches of all your layers? Could you retry this<br>
on a clean checkout of master, using the minimal set of layers<br>
(oe-core, meta-oe, meta-multimedia and meta-raspberrypi) and see if you<br>
see the same problem?<br>
<br>
Thanks,<br>
Paul Barker<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_HE1PR01MB1883F4BE2E34D631BE7F48D192D60HE1PR01MB1883eurp_--
