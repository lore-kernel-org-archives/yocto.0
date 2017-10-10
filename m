Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC987E00D6E; Tue, 10 Oct 2017 11:50:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.150.234 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.150.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C160E00D0E
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 11:50:51 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx28.ess.sfj.cudaops.com (version=TLSv1.2 cipher=AES256-SHA256
	bits=256 verify=NO); Tue, 10 Oct 2017 18:50:48 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 10 Oct 2017 11:50:45 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 10 Oct 2017 11:50:45 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] errors in recipe after move from devtool
Thread-Index: AQHTQeR3bS5Hw1lI/kCbrgtXNT82jKLdRhRGgACT2ID//5It1g==
Date: Tue, 10 Oct 2017 18:50:45 +0000
Message-ID: <85ad132a2f884b56ad55f81e78d6ed2c@sakuraus.com>
References: <c69919c2a00f4b6f8b9f00b46d848839@sakuraus.com>
	<994eabee7682438ea53aba932c7759c6@sakuraus.com>,
	<CAJTo0LYK-f5C4LcRp0dtOoDdMoF_zBhoqZnptYTTpq1GjVfjQA@mail.gmail.com>
In-Reply-To: <CAJTo0LYK-f5C4LcRp0dtOoDdMoF_zBhoqZnptYTTpq1GjVfjQA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507661447-637138-17897-250633-1
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185864
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: errors in recipe after move from devtool
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
X-List-Received-Date: Tue, 10 Oct 2017 18:50:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_85ad132a2f884b56ad55f81e78d6ed2csakurauscom_"

--_000_85ad132a2f884b56ad55f81e78d6ed2csakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

I changed the FILES_${PN}-dev to pick up the .so file and that error went a=
way.


Thanks for the cluebat, the learning curve is a bit steep and I'm still cli=
mbing.


I'm still getting the:

ERROR: zint-2.6.1-r0 do_package_qa: QA Issue: zint: /work/cortexa7hf-neon-v=
fpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/libzint.s=
o.2.6.1 contains probably-redundant RPATH /usr/lib

So If anyone can help me understand what's going on here I'd be appreciativ=
e.


Regards,

Greg

________________________________
From: Burton, Ross <ross.burton@intel.com>
Sent: Tuesday, October 10, 2017 11:18:33 AM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] errors in recipe after move from devtool

On 10 October 2017 at 17:34, Greg Wilson-Lindberg <GWilson@sakuraus.com<mai=
lto:GWilson@sakuraus.com>> wrote:

So to continue, what is the problem with symlinked libraries in a non-dev p=
ackage, don't most libraries have syslink's to them?

Typically:

libfoo.so -> libfoo.so.1
libfoo.so.1 -> libfoo.so.1.2
libfoo.so.1.2 is a real file

In this case libfoo.so is *only* used at link time and should be in PN-dev.=
  The other links and the real library are for runtime and should be in PN.

This warning is saying that you have libzint.so in zint instead of zint-dev=
.  This implies that you've been changing FILES_${PN} and it's too broad no=
w.

Ross

--_000_85ad132a2f884b56ad55f81e78d6ed2csakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body>
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi Ross,</p>
<p>I changed the&nbsp;<span style=3D"color: rgb(33, 33, 33); font-size: 15p=
x;">FILES_${PN}-dev to pick up the .so file and that error went away.</span=
></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;">Thanks for the =
cluebat, the learning curve is a bit steep and I'm still climbing.</span></=
p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;">I'm still getti=
ng the:</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;"><span style=3D"=
font-family:monospace"><span style=3D"font-weight: bold; color: rgb(255, 84=
, 84);">ERROR</span>:
<span style=3D"color: rgb(178, 24, 24);"><span style=3D"color: rgb(208, 92,=
 18);">zint-2.6.1-r0 do_package_qa: QA Issue: zint: /work/cortexa7hf-neon-v=
fpv4-poky-linux-gnueabi/zint/2.6.1-r0/packages-split/zint/usr/lib/libzint.s=
o.2.6.1 contains probably-redundant</span><span style=3D"color: rgb(208, 92=
, 18);">
 RP</span></span><span style=3D"color: rgb(208, 92, 18);">ATH /usr/lib</spa=
n><br>
<br>
</span>So If anyone can help me understand what's going on here I'd be appr=
eciative.</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;"><br>
</span></p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;">Regards,</span>=
</p>
<p><span style=3D"color: rgb(33, 33, 33); font-size: 15px;">Greg</span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Burton, Ross &lt;ross=
.burton@intel.com&gt;<br>
<b>Sent:</b> Tuesday, October 10, 2017 11:18:33 AM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] errors in recipe after move from devtool</font>
<div>&nbsp;</div>
</div>
<div>
<div dir=3D"ltr">On 10 October 2017 at 17:34, Greg Wilson-Lindberg <span di=
r=3D"ltr">
&lt;<a href=3D"mailto:GWilson@sakuraus.com" target=3D"_blank">GWilson@sakur=
aus.com</a>&gt;</span> wrote:<br>
<div class=3D"gmail_extra">
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"m_2240563657108159643divtagdefaultwrapper" style=3D"font-size:12=
pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p><span style=3D"font-size:12pt">So to continue, what is the problem with =
symlinked libraries in a non-dev package, don't most libraries have syslink=
's to them?</span></p>
</div>
</div>
</blockquote>
<div><br>
</div>
<div>Typically:</div>
<div><br>
</div>
<div>libfoo.so -&gt; libfoo.so.1</div>
<div>libfoo.so.1 -&gt; libfoo.so.1.2</div>
<div>libfoo.so.1.2 is a real file</div>
<div><br>
</div>
<div>In this case libfoo.so is *only* used at link time and should be in PN=
-dev.&nbsp; The other links and the real library are for runtime and should=
 be in PN.</div>
<div><br>
</div>
<div>This warning is saying that you have libzint.so in zint instead of zin=
t-dev.&nbsp; This implies that you've been changing FILES_${PN} and it's to=
o broad now.</div>
<div><br>
</div>
<div>Ross &nbsp;</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_85ad132a2f884b56ad55f81e78d6ed2csakurauscom_--
