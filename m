Return-Path: <GWilson@sakuraus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9488E00CF6; Tue,  3 Oct 2017 09:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.235.154.220 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 949 seconds by postgrey-1.32 at yocto-www;
	Tue, 03 Oct 2017 09:29:11 PDT
Received: from 14pmail.ess.barracuda.com (14pmail.ess.barracuda.com
	[64.235.154.220])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AE0EE00CEC
	for <yocto@yoctoproject.org>; Tue,  3 Oct 2017 09:29:11 -0700 (PDT)
Received: from SFAMAIL.SAKURAUS.LOCAL (mail.sakuraus.com [12.26.104.5]) by
	mx1402.ess.rzc.cudaops.com (version=TLSv1.2
	cipher=AES256-SHA256 bits=256 verify=NO);
	Tue, 03 Oct 2017 16:28:48 +0000
Received: from SFAMAIL.SAKURAUS.LOCAL (10.16.3.8) by SFAMAIL.SAKURAUS.LOCAL
	(10.16.3.8) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.32;
	Tue, 3 Oct 2017 09:13:17 -0700
Received: from SFAMAIL.SAKURAUS.LOCAL ([::1]) by SFAMAIL.SAKURAUS.LOCAL
	([::1]) with mapi id 15.01.0669.032; Tue, 3 Oct 2017 09:13:17 -0700
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] package error for custom devtool recipe
Thread-Index: AQHTO953v2swXIiDdUy4BvJzp/pkaKLRytiAgACBgmo=
Date: Tue, 3 Oct 2017 16:13:17 +0000
Message-ID: <d0a50649f448465d94e6c4371bc46b75@sakuraus.com>
References: <7411926e7a7048e99289a55fdf1af075@sakuraus.com>,
	<1786227.q9ysM0urfs@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1786227.q9ysM0urfs@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.5.239]
MIME-Version: 1.0
X-BESS-ID: 1507048093-321458-17132-342-2
X-BESS-VER: 2017.12-r1709122024
X-BESS-Apparent-Source-IP: 12.26.104.5
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.185642
	Rule breakdown below
	pts rule name              description
	---- ---------------------- --------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in 
	message 
	0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
	0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS29408 scores of
	KILL_LEVEL=7.0 tests=HTML_MESSAGE, BSF_BESS_OUTBOUND,
	BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: package error for custom devtool recipe
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
X-List-Received-Date: Tue, 03 Oct 2017 16:29:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_d0a50649f448465d94e6c4371bc46b75sakurauscom_"

--_000_d0a50649f448465d94e6c4371bc46b75sakurauscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

Thanks for the corrections. I was working from examples from the book "Embe=
dded Linux Systems with the Yocto Project" by Rudolf J. Streif and he left =
out the ${PN} in the file name. Including that makes sense now that I see y=
our suggestions. It's now working correctly.


Thanks again,

Greg

________________________________
From: Paul Eggleton <paul.eggleton@linux.intel.com>
Sent: Monday, October 2, 2017 6:26:21 PM
To: Greg Wilson-Lindberg
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] package error for custom devtool recipe

Hi Greg,

On Tuesday, 3 October 2017 1:30:25 PM NZDT Greg Wilson-Lindberg wrote:
> I get some package errors when I build this:
>
> ERROR: QA Issue: acsccid: Files/directories were installed but not shippe=
d
> in any package:
>   /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Info.plist
>   /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so
> Please set FILES such that these items are packaged. Alternatively if the=
y
> are unneeded, avoid installing them or delete them within do_install.
> acsccid: 2 installed and not shipped files. [installed-vs-shipped]
>
>
> I've added some FILES =3D lines to try to get rid of the error to no avai=
l:
>
> FILES_${PN} =3D "${libdir}/libacsccid.so"
>
> or:
>
> FILES_${PN} =3D ".libs/libacsccid.so"
>
> or just:
>
> FILES_${PN} =3D "libacsccid.so"

The reason none of these work is that none of these actually match the file
path (not to mention you are setting the value outright instead of adding t=
o
the existing value). The path you are trying to match is
"/usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so" so =
the
value you want is either exactly that path, or something like
"${libdir}/pcsc/drivers/*/Contents/Linux/*.so".  Also, instead of =3D use +=
=3D so
that you are adding to the existing value.

> and:
>
> PACKAGE_BEFORE_PN =3D "info"
> FILES_${PN}-info =3D "Info.plist"

This isn't right - in PACKAGES (via PACKAGE_BEFORE_PN) you are placing "inf=
o"
and then setting FILES_${PN}-info i.e. the package is named "${PN}-info".
Probably the thing you want is to prepend this package to PACKAGES:

PACKAGES =3D+ "${PN}-info"

Cheers,
Paul

--

Paul Eggleton
Intel Open Source Technology Centre

--_000_d0a50649f448465d94e6c4371bc46b75sakurauscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" style=3D"font-size:12pt; color:#000000; =
font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Hi Paul,</p>
<p>Thanks for the corrections. I was working from examples from the book &q=
uot;Embedded Linux Systems with the Yocto Project&quot; by Rudolf J. Streif=
 and he left out the ${PN} in the file name. Including that makes sense now=
 that I see your suggestions. It's now working
 correctly.</p>
<p><br>
</p>
<p>Thanks again,</p>
<p>Greg</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Paul Eggleton &lt;p=
aul.eggleton@linux.intel.com&gt;<br>
<b>Sent:</b> Monday, October 2, 2017 6:26:21 PM<br>
<b>To:</b> Greg Wilson-Lindberg<br>
<b>Cc:</b> yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] package error for custom devtool recipe</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">Hi Greg,<br>
<br>
On Tuesday, 3 October 2017 1:30:25 PM NZDT Greg Wilson-Lindberg wrote:<br>
&gt; I get some package errors when I build this:<br>
&gt; <br>
&gt; ERROR: QA Issue: acsccid: Files/directories were installed but not shi=
pped<br>
&gt; in any package:<br>
&gt;&nbsp;&nbsp; /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Info.pli=
st<br>
&gt;&nbsp;&nbsp; /usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/li=
bacsccid.so<br>
&gt; Please set FILES such that these items are packaged. Alternatively if =
they<br>
&gt; are unneeded, avoid installing them or delete them within do_install.<=
br>
&gt; acsccid: 2 installed and not shipped files. [installed-vs-shipped]<br>
&gt; <br>
&gt; <br>
&gt; I've added some FILES =3D lines to try to get rid of the error to no a=
vail:<br>
&gt; <br>
&gt; FILES_${PN} =3D &quot;${libdir}/libacsccid.so&quot;<br>
&gt; <br>
&gt; or:<br>
&gt; <br>
&gt; FILES_${PN} =3D &quot;.libs/libacsccid.so&quot;<br>
&gt; <br>
&gt; or just:<br>
&gt; <br>
&gt; FILES_${PN} =3D &quot;libacsccid.so&quot;<br>
<br>
The reason none of these work is that none of these actually match the file=
 <br>
path (not to mention you are setting the value outright instead of adding t=
o <br>
the existing value). The path you are trying to match is <br>
&quot;/usr/lib/pcsc/drivers/ifd-acsccid.bundle/Contents/Linux/libacsccid.so=
&quot; so the <br>
value you want is either exactly that path, or something like <br>
&quot;${libdir}/pcsc/drivers/*/Contents/Linux/*.so&quot;.&nbsp; Also, inste=
ad of =3D use &#43;=3D so <br>
that you are adding to the existing value.<br>
<br>
&gt; and:<br>
&gt; <br>
&gt; PACKAGE_BEFORE_PN =3D &quot;info&quot;<br>
&gt; FILES_${PN}-info =3D &quot;Info.plist&quot;<br>
<br>
This isn't right - in PACKAGES (via PACKAGE_BEFORE_PN) you are placing &quo=
t;info&quot; <br>
and then setting FILES_${PN}-info i.e. the package is named &quot;${PN}-inf=
o&quot;. <br>
Probably the thing you want is to prepend this package to PACKAGES:<br>
<br>
PACKAGES =3D&#43; &quot;${PN}-info&quot;<br>
<br>
Cheers,<br>
Paul <br>
<br>
-- <br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div>
</span></font>
</body>
</html>

--_000_d0a50649f448465d94e6c4371bc46b75sakurauscom_--
