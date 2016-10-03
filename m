Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C4F74E00503; Mon,  3 Oct 2016 11:46:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.219 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC4S17.hotmail.com (col004-omc4s17.hotmail.com
	[65.55.34.219])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8F2EE00444
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 11:45:58 -0700 (PDT)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com ([65.55.34.200])
	by COL004-OMC4S17.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Mon, 3 Oct 2016 11:45:57 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=12aVm5ZqeQQ8XICmHOzuNnQqTC1GskxO+IE+11FBLZU=;
	b=Zx16v6IIhPdCAIqw/STTNIOo8y1VX6HfAePughCRudVikMe84o7zhxGpksV7vFCjkgreWI3/jzdIphWuflTHrHwQrbahMS6+Kw6duOMgbpH1gP09EcR4gdwZbIgSUh88Mmu3MT8OnJNrZ4EBPmN5EqROBrfN6V801aZjAjskrABhQrr8kU74uHNbVk5qwKyV7mmvVHb265FsBNB4cXeWD5BayrrTyD4AmXP8NRkMzSwwAAOz5PMF/KGrTe26wMoC5A79ZnKBpyofqWYGYgZ95lAF1NVmmyBCCy76BQjx070A72B4jTsFg1Q/soKkQb0WNXDu6zN6cVvEsKiqayRO4g==
Received: from VE1EUR03FT007.eop-EUR03.prod.protection.outlook.com
	(10.152.18.54) by VE1EUR03HT229.eop-EUR03.prod.protection.outlook.com
	(10.152.19.100) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Mon, 3 Oct 2016 18:45:55 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.18.56) by
	VE1EUR03FT007.mail.protection.outlook.com (10.152.18.114) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Mon, 3 Oct 2016 18:45:55 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0649.021; Mon, 3 Oct 2016 18:45:55 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-raspberrypi] taskhash mismatch
Thread-Index: AQHSHLos7pOPXwTWVkey7pHsyY0nEKCV1jSAgAEXITaAACWdWg==
Date: Mon, 3 Oct 2016 18:45:55 +0000
Message-ID: <HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <20161002143422.GA24664@openSUSE-i7.site>,
	<DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>,
	<HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
In-Reply-To: <HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.18.56)
	smtp.mailfrom=hotmail.com; gmail.com; dkim=none (message not signed)
	header.d=none; gmail.com; dmarc=fail action=none header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.18.56 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3DpNbMl2zQ3MLxtYqLOi72Mitdz8Nfb6]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT229;
	6:iC0ExkHFiSOTsgyV0SQVUoQL9YIxWJWaswkMijjzHhC+EcHO48wzezf00rPUGO3XRwevVyP5Z9CMaI4gsfYsLxBtm/QzPQvyWa4nqqIZHCqvCRYXixP9KSReVspcZ1I49FEmlliTvmR5FbWZeUAa88U5r0EN9KQPr4iAwHHjdLsnt2hn3cgBKihBkDcsVRV5i4nwoq3ap0GjBYwOkHG0pRyIY5H+8svqgZYyWnZtskr8eAf2NxbBa/Pq7+PQJNFg6EqGQnYA5AqNwl1mqUySduFa41dbWa2yKxWOKI+o+9g=;
	5:VPo5oNfsWmwBYgZuW+jajnjsaEXDX6KKYX+UwdMP4meRvQCrwz8YFOHhWSkR7BDAkgVwM+sET9M1JkRRrUZFjlt+a2yigryWYM+pjU8/ibFfCVsTUlq+fvQT5sfJ9o++Ta6lxvIwDMTjNuTSvX8R+w==;
	24:4FzNcMmYMaZY4EUFTlq9GD8RQQcr4jACkar1dMz2qUmKD/cQ4CPnUkHZzyeJ/j62dNxRuyamdCYByIHHww3R7hp38/JZUeIWOli27Tl+PTI=;
	7:uWpaAExYU3Pmtbe9OHg45nZxRX3iDT7KoD8Sod/4O6ehME7F6gTDZ/ihaVtwQj8Bm+v03rRANq9SeZ0z5lDq47itlStlgsDLchtI7zx0xSdwaNlyZGHVh5lqIL4eZEUJR4gBYz5xkKIbtPPbfCnMPmCL2+fUnuG8QUQyolZp+U4d9457nXbAQ+dDlDS/oaVmLAfoYCrGciEoSTnl2ihrHzpUc3l9m7c+OMfwstttWBuZnY1zWO+0oXO4/IAX1GsBoeLtLdjWqPM7Ad6q4dEg+24GIVYDf8rLVQrQVL42UBiErfSrIr1x2vhNDwjd6fft
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR03HT229;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 83c0dc12-b506-4643-8451-08d3ebbd8255
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR03HT229;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR03HT229; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT229; 
x-forefront-prvs: 008421A8FF
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2016 18:45:55.6810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT229
X-OriginalArrivalTime: 03 Oct 2016 18:45:57.0898 (UTC)
	FILETIME=[612866A0:01D21DA6]
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Mon, 03 Oct 2016 18:46:02 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB188308CD0299E2BC792EF3C692C20HE1PR01MB1883eurp_"

--_000_HE1PR01MB188308CD0299E2BC792EF3C692C20HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


Note: I just launched the build again with bitbake -k core-image-x11....and

 the error did not occur again.
Well, a bit weird. Don't really know why does this error raised though.

Karim

________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Karim ATIKI <karim_atiki@hotmail.com>
Envoy=E9 : lundi 3 octobre 2016 18:31
=C0 : Khem Raj; yocto
Objet : Re: [yocto] [meta-raspberrypi] taskhash mismatch



Hi Khem,

I have the same issue.
Get the latest master branches of poky, meta-raspberrypi and meta-oe.
Built a core-image-x11 and get the error:

ERROR: core-image-x11-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch d77076c1=
266433c3dcd51a78947f273f versus 0eb1129a3545034a516ca72e5804ac33 for /home/=
kai/yocto/poky-krogoth/meta/recipes-graphics/images/core-image-x11.bb.do_im=
age_rpi_sdimg
ERROR: Taskhash mismatch d77076c1266433c3dcd51a78947f273f versus 0eb1129a35=
45034a516ca72e5804ac33 for /home/kai/yocto/poky-krogoth/meta/recipes-graphi=
cs/images/core-image-x11.bb.do_image_rpi_sdimg



Karim


________________________________
De : yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de la =
part de Khem Raj <raj.khem@gmail.com>
Envoy=E9 : lundi 3 octobre 2016 01:51
=C0 : Trevor Woerner
Cc : yocto@yoctoproject.org
Objet : Re: [yocto] [meta-raspberrypi] taskhash mismatch


> On Oct 2, 2016, at 7:34 AM, Trevor Woerner <twoerner@gmail.com> wrote:
>
> Hi,
>
> For the last week or so my raspberry pi builds have been failing with:
>
> ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 29=
20e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 for =
/z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_rpi_=
sdimg
> ERROR: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus a47bfc12=
fdfa29c58fe72cf8e0a28e91 for /z/raspi2/poky/meta/recipes-core/images/core-i=
mage-minimal.bb.do_image_rpi_sdimg
>
> This is with both poky and oe+bitbake, master branches all around, and fu=
lly
> up-to-date. Before sending this email I pulled yet again and re-tested ju=
st to
> confirm.
>

is it due to use of DATE and TIME issue ? I think there was such a patch pr=
oposed to meta-rpi see
http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=3D4c0=
2c7ce07121c2f5367204445f93199d828bb10

> Poky:
>
>        Build Configuration:
>        BB_VERSION        =3D "1.31.1"
>        BUILD_SYS         =3D "x86_64-linux"
>        NATIVELSBSTRING   =3D "SUSELINUX-42.1"
>        TARGET_SYS        =3D "arm-poky-linux-gnueabi"
>        MACHINE           =3D "raspberrypi"
>        DISTRO            =3D "poky"
>        DISTRO_VERSION    =3D "2.1+snapshot-20161002"
>        TUNE_FEATURES     =3D "arm armv6  vfp arm1176jzfs callconvention-h=
ard"
>        TARGET_FPU        =3D "hard"
>        meta
>        meta-poky         =3D "master:3a73fe0efcb7aeefcca7011bba887caad03d=
4d03"
>        meta-raspberrypi  =3D "master:4817e2c087097c02755d6309304878e42cf6=
1d3c"
>
> OE + bitbake:
>
>        Build Configuration:
>        BB_VERSION        =3D "1.31.1"
>        BUILD_SYS         =3D "x86_64-linux"
>        NATIVELSBSTRING   =3D "SUSELINUX-42.1"
>        TARGET_SYS        =3D "arm-oe-linux-gnueabi"
>        MACHINE           =3D "raspberrypi"
>        DISTRO            =3D "nodistro"
>        DISTRO_VERSION    =3D "nodistro.0"
>        TUNE_FEATURES     =3D "arm armv6  vfp arm1176jzfs callconvention-h=
ard"
>        TARGET_FPU        =3D "hard"
>        meta              =3D "master:21cc2a3f63ea260dbf6b50e2fd4dd50cacdd=
9935"
>        meta-raspberrypi  =3D "master:4817e2c087097c02755d6309304878e42cf6=
1d3c"
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
yocto Info Page<https://lists.yoctoproject.org/listinfo/yocto>
lists.yoctoproject.org
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.





--_000_HE1PR01MB188308CD0299E2BC792EF3C692C20HE1PR01MB1883eurp_
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
<p>Hi all,</p>
<p><br>
</p>
<p>Note: I just launched the build again with bitbake -k core-image-x11....=
and</p>
&nbsp;the error did not occur again.
<div>Well, a bit weird. Don't really know why does this error raised though=
.</div>
<div><br>
</div>
<div>Karim<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctopro=
ject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Karim ATIKI &=
lt;karim_atiki@hotmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 3 octobre 2016 18:31<br>
<b>=C0 :</b> Khem Raj; yocto<br>
<b>Objet :</b> Re: [yocto] [meta-raspberrypi] taskhash mismatch</font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; fo=
nt-family:Calibri,Arial,Helvetica,sans-serif">
<p><br>
</p>
Hi Khem,
<div><br>
</div>
<div>I have the same issue.</div>
<div>Get the latest master&nbsp;branches of poky, meta-raspberrypi and meta=
-oe.</div>
<div>Built a core-image-x11 and get the error:</div>
<div><br>
</div>
<div>
<div>ERROR: core-image-x11-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch d77=
076c1266433c3dcd51a78947f273f versus 0eb1129a3545034a516ca72e5804ac33 for /=
home/kai/yocto/poky-krogoth/meta/recipes-graphics/images/core-image-x11.bb.=
do_image_rpi_sdimg</div>
<div>ERROR: Taskhash mismatch d77076c1266433c3dcd51a78947f273f versus 0eb11=
29a3545034a516ca72e5804ac33 for /home/kai/yocto/poky-krogoth/meta/recipes-g=
raphics/images/core-image-x11.bb.do_image_rpi_sdimg</div>
<div><br>
</div>
<br>
</div>
<div><br>
</div>
<div>Karim</div>
<div><br>
</div>
<div><br>
<div style=3D"color:rgb(0,0,0)">
<div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> yocto-bounces@yoctop=
roject.org &lt;yocto-bounces@yoctoproject.org&gt; de la part de Khem Raj &l=
t;raj.khem@gmail.com&gt;<br>
<b>Envoy=E9 :</b> lundi 3 octobre 2016 01:51<br>
<b>=C0 :</b> Trevor Woerner<br>
<b>Cc&nbsp;:</b> yocto@yoctoproject.org<br>
<b>Objet :</b> Re: [yocto] [meta-raspberrypi] taskhash mismatch</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"PlainText"><br>
&gt; On Oct 2, 2016, at 7:34 AM, Trevor Woerner &lt;twoerner@gmail.com&gt; =
wrote:<br>
&gt; <br>
&gt; Hi,<br>
&gt; <br>
&gt; For the last week or so my raspberry pi builds have been failing with:=
<br>
&gt; <br>
&gt; ERROR: core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch=
 2920e557ac3a011d5679a52590cb664d versus a47bfc12fdfa29c58fe72cf8e0a28e91 f=
or /z/raspi2/poky/meta/recipes-core/images/core-image-minimal.bb.do_image_r=
pi_sdimg<br>
&gt; ERROR: Taskhash mismatch 2920e557ac3a011d5679a52590cb664d versus a47bf=
c12fdfa29c58fe72cf8e0a28e91 for /z/raspi2/poky/meta/recipes-core/images/cor=
e-image-minimal.bb.do_image_rpi_sdimg<br>
&gt; <br>
&gt; This is with both poky and oe&#43;bitbake, master branches all around,=
 and fully<br>
&gt; up-to-date. Before sending this email I pulled yet again and re-tested=
 just to<br>
&gt; confirm.<br>
&gt; <br>
<br>
is it due to use of DATE and TIME issue ? I think there was such a patch pr=
oposed to meta-rpi see<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commi=
t/?id=3D4c02c7ce07121c2f5367204445f93199d828bb10" id=3D"LPlnk754470" previe=
wremoved=3D"true">http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberryp=
i/commit/?id=3D4c02c7ce07121c2f5367204445f93199d828bb10</a><br>
<br>
&gt; Poky:<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build Configuration:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BB_VERSION&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.31.1&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BUILD_SYS&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NATIVELSBSTRING&nbsp;&nbsp; =
=3D &quot;SUSELINUX-42.1&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TARGET_SYS&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MACHINE&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;raspberrypi&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DISTRO&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;poky&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DISTRO_VERSION&nbsp;&nbsp;&n=
bsp; =3D &quot;2.1&#43;snapshot-20161002&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TUNE_FEATURES&nbsp;&nbsp;&nb=
sp;&nbsp; =3D &quot;arm armv6&nbsp; vfp arm1176jzfs callconvention-hard&quo=
t;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TARGET_FPU&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-poky&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:3a73fe0efcb7aeefcca7011bba88=
7caad03d4d03&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-raspberrypi&nbsp; =3D &=
quot;master:4817e2c087097c02755d6309304878e42cf61d3c&quot;<br>
&gt; <br>
&gt; OE &#43; bitbake:<br>
&gt; <br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Build Configuration:<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BB_VERSION&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.31.1&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BUILD_SYS&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; NATIVELSBSTRING&nbsp;&nbsp; =
=3D &quot;SUSELINUX-42.1&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TARGET_SYS&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;arm-oe-linux-gnueabi&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; MACHINE&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;raspberrypi&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DISTRO&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;nodistro&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DISTRO_VERSION&nbsp;&nbsp;&n=
bsp; =3D &quot;nodistro.0&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TUNE_FEATURES&nbsp;&nbsp;&nb=
sp;&nbsp; =3D &quot;arm armv6&nbsp; vfp arm1176jzfs callconvention-hard&quo=
t;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; TARGET_FPU&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;master:21c=
c2a3f63ea260dbf6b50e2fd4dd50cacdd9935&quot;<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; meta-raspberrypi&nbsp; =3D &=
quot;master:4817e2c087097c02755d6309304878e42cf61d3c&quot;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"LPlnk6=
3919" previewremoved=3D"true">
https://lists.yoctoproject.org/listinfo/yocto</a>
<div id=3D"LPBorder_GT_14755338645870.5746103778239895" style=3D"margin-bot=
tom:20px; overflow:auto; width:100%; text-indent:0px">
<table id=3D"LPContainer_14755338645860.6367347854489211" cellspacing=3D"0"=
 style=3D"width:90%; background-color:rgb(255,255,255); overflow:auto; padd=
ing-top:20px; padding-bottom:20px; margin-top:20px; border-top:1px dotted r=
gb(200,200,200); border-bottom:1px dotted rgb(200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"TextCell_14755338645860.9007803706012965" colspan=3D"2" style=3D"=
vertical-align: top; padding: 0px; display: table-cell; position: relative;=
">
<div id=3D"LPRemovePreviewContainer_14755338645860.08894871793320913"></div=
>
<div id=3D"LPTitle_14755338645860.19272065070447342" style=3D"top:0px; colo=
r:rgb(0,120,215); font-weight:normal; font-size:21px; font-family:wf_segoe-=
ui_light,&quot;Segoe UI Light&quot;,&quot;Segoe WP Light&quot;,&quot;Segoe =
UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif; line-height:21px">
<a id=3D"LPUrlAnchor_14755338645870.6651448946864706" href=3D"https://lists=
.yoctoproject.org/listinfo/yocto" target=3D"_blank" style=3D"text-decoratio=
n:none">yocto Info Page</a></div>
<div id=3D"LPMetadata_14755338645870.11417053364454066" style=3D"margin:10p=
x 0px 16px; color:rgb(102,102,102); font-weight:normal; font-family:wf_sego=
e-ui_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-ser=
if; font-size:14px; line-height:14px">
lists.yoctoproject.org</div>
<div id=3D"LPDescription_14755338645870.055617882221655535" style=3D"displa=
y:block; color:rgb(102,102,102); font-weight:normal; font-family:wf_segoe-u=
i_normal,&quot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;=
 font-size:14px; line-height:20px; max-height:100px; overflow:hidden">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
<br>
<br>
<br>
</div>
</span></font></div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_HE1PR01MB188308CD0299E2BC792EF3C692C20HE1PR01MB1883eurp_--
