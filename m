Return-Path: <tmatsuzawa@xevo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21838E00935; Fri, 17 Feb 2017 02:46:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0053.outbound.protection.outlook.com [104.47.36.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC586E00724
	for <yocto@yoctoproject.org>; Fri, 17 Feb 2017 02:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=uievolution.onmicrosoft.com; s=selector1-xevo-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=DmL1BEiSRgHlkbwSzi412mvuQE2bWhvcdpTSzuJHem0=;
	b=BiKy1TAzjihzydhj4xp0WkQG0SmzI+FgF8spVenDvEEVBXIInpt5SGxNxTallTL7LiLCI20svShwrXEVb75xiGcHkk/jbn3LRhC+RQcY8vIAElsb2sT9itOBdKylYZ3zNHl+krUa/aGstYunpyKd1ihEHgWBtylF652JdcxszvE=
Received: from DM5PR0101MB2953.prod.exchangelabs.com (10.174.181.143) by
	DM5PR0101MB2955.prod.exchangelabs.com (10.174.181.145) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.16; Fri, 17 Feb 2017 10:45:58 +0000
Received: from DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) by
	DM5PR0101MB2953.prod.exchangelabs.com ([10.174.181.143]) with mapi id
	15.01.0888.034; Fri, 17 Feb 2017 10:45:58 +0000
From: Takashi Matsuzawa <tmatsuzawa@xevo.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Placing xxxx.pc in nativesdk?
Thread-Index: AQHSiQervPY2RLmUiEeKFae1+wnx4w==
Date: Fri, 17 Feb 2017 10:45:58 +0000
Message-ID: <DM5PR0101MB2953FFB5C9FD866E75454535B65D0@DM5PR0101MB2953.prod.exchangelabs.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=tmatsuzawa@xevo.com; 
x-originating-ip: [25.171.161.132]
x-ms-office365-filtering-correlation-id: f6fc3781-0328-4ee9-b7d8-08d457222894
x-microsoft-antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DM5PR0101MB2955; 
x-microsoft-exchange-diagnostics: 1; DM5PR0101MB2955;
	7:H24ynqT1sCNDBzTT5vGS1k6N+yhnDEo9zNiJQGCdfCvCjvvNu2gRe2xd+qfSHV5EaS8k594NvctFvaIaj3bXH3FhCLVu9Qcxftv0Mkz9HtQHNLi2QI0kJXTN1qq5MQaa99qe68mOCpBgSlzTl4IIxxpU5BR/gA8sEx+jyFbkIHWfEhESb6ExB/9MmNCcXGA4tVlYbCn6nBGI8ocb6DPUgLfFAJ5QmBDdFS/AZYqIvGAdBupkEOkshJy2u+Jng1WygdXC5u3fMiZrG6sY0QZMRYPyD2gV8+dRKi3yfGf6l7FE0t2sNQ8E46I1EIS8rEO11z11lbrYQ9YFwuUb0MoLWQ==
x-microsoft-antispam-prvs: <DM5PR0101MB2955629C2A1D634A79F0FA6FB65D0@DM5PR0101MB2955.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(2401047)(8121501046)(5005006)(10201501046)(3002001)(6041248)(20161123558025)(20161123555025)(20161123560025)(20161123564025)(20161123562025)(6072148);
	SRVR:DM5PR0101MB2955; BCL:0; PCL:0; RULEID:;
	SRVR:DM5PR0101MB2955; 
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(39450400003)(189002)(199003)(33656002)(5660300001)(50986999)(450100001)(122556002)(81156014)(54896002)(2351001)(54356999)(68736007)(66066001)(53936002)(19627405001)(106356001)(6916009)(6606003)(105586002)(9686003)(7696004)(6506006)(77096006)(106116001)(101416001)(8936002)(3280700002)(25786008)(99286003)(8676002)(86362001)(55016002)(189998001)(81166006)(5640700003)(74316002)(1730700003)(3660700001)(3846002)(92566002)(2501003)(110136004)(2900100001)(97736004)(38730400002)(102836003)(6116002)(2906002)(6436002)(53336002)(3480700004)(7736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0101MB2955;
	H:DM5PR0101MB2953.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: xevo.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: xevo.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2017 10:45:58.4810 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e0a7ca1f-2458-4cd6-a7c7-d733c07495ab
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0101MB2955
Subject: Placing xxxx.pc in nativesdk?
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
X-List-Received-Date: Fri, 17 Feb 2017 10:46:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM5PR0101MB2953FFB5C9FD866E75454535B65D0DM5PR0101MB2953_"

--_000_DM5PR0101MB2953FFB5C9FD866E75454535B65D0DM5PR0101MB2953_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello, Yocto.

Maybe a basic question but I am being puzzled.


i) Recipe A builds module, and the module expects that xkbcommon.pc is avai=
lable (checked in autotool by calling pkg-config)

ii) module A build fails, since it cannot find xkbcommon.pc, according to t=
he config.log.


(in TEMPDIR/work)
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/image/usr/lib/pk=
gconfig/xkbcommon.pc
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/sysroot-destdir/=
usr/lib/pkgconfig/xkbcommon.pc
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/build/xkbcommon.=
pc
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/packages-split/l=
ibxkbcommon-dev/usr/lib/pkgconfig/xkbcommon.pc
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/package/usr/lib/=
pkgconfig/xkbcommon.pc

I can find it above, but I do not seem to find it in x86_64-nativesdk-xxxxx=
 tree, so it may be the cause of the problem.
The recipe A has DEPENDS that include "libxkbcommon"

My question is, in general, what is lacking here that prevent xkbcommon.pc =
to be found from other recipe / configure?

xxxx.pc is in the target image /isr/lib/pkgconfig successfully, so I believ=
e I need something to make it available in cross SDK?



--_000_DM5PR0101MB2953FFB5C9FD866E75454535B65D0DM5PR0101MB2953_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hello, Yocto.</p>
<p>Maybe a basic question but I am being puzzled.</p>
<p><br>
</p>
<p>i) Recipe A&nbsp;builds module, and the module expects that xkbcommon.pc=
 is available (checked in autotool by calling pkg-config)</p>
<p>ii) module A&nbsp;build fails, since&nbsp;it cannot find&nbsp;xkbcommon.=
pc, according to the config.log.</p>
<p><br>
</p>
<p></p>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
(in TEMPDIR/work)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/image/usr/lib/pk=
gconfig/xkbcommon.pc</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/sysroot-destdir/=
usr/lib/pkgconfig/xkbcommon.pc</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-size: 12pt;">./cortexa9hf-neon-poky-linux-gnueabi/libxk=
bcommon/0.5.0-r0/build/xkbcommon.pc</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/packages-split/l=
ibxkbcommon-dev/usr/lib/pkgconfig/xkbcommon.pc</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
./cortexa9hf-neon-poky-linux-gnueabi/libxkbcommon/0.5.0-r0/package/usr/lib/=
pkgconfig/xkbcommon.pc</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-size: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-size: 12pt;">I can find it above, but I do not seem to =
find it in x86_64-nativesdk-xxxxx tree, so it may be the cause of the probl=
em.</span><br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-size: 12pt;">The recipe A has DEPENDS that include &quo=
t;libxkbcommon&quot;</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-size: 12pt;"><br>
</span></div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;App=
le Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Seg=
oe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16p=
x;">
<span style=3D"font-size: 12pt;">My question is, in general, what is lackin=
g here&nbsp;that prevent xkbcommon.pc to be found from other recipe / confi=
gure?</span></div>
<p></p>
<p>xxxx.pc is in the target image /isr/lib/pkgconfig successfully, so I bel=
ieve I need something to make it available in cross SDK?</p>
<p><br>
</p>
<p></p>
<div><br>
</div>
<p></p>
</div>
</body>
</html>

--_000_DM5PR0101MB2953FFB5C9FD866E75454535B65D0DM5PR0101MB2953_--
