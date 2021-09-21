Received: from smtp-pg11.blackberry.com (smtp-pg11.blackberry.com [68.171.242.227])
 by mx.groups.io with SMTP id smtpd.web11.3140.1632253831129249631
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 12:50:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=G53YN8B/;
 spf=pass (domain: blackberry.com, ip: 68.171.242.227, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs401ykf.rim.net [127.0.0.1])
	by mhs401ykf.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18LJoT3g121575;
	Tue, 21 Sep 2021 15:50:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=PtBy1PqGtmru8hYqOP0BgOh8I+meszPbkqac8bFE3sE=;
 b=G53YN8B/tA8b81reooSNEZ6fdtT1WYHZ8x+kkRsOEfbqr997/menc0LjPCtV7LPrwWej
 bNSdbPtTVOoMyJiqpfaLgT13hpJLy3z1b894YU2oLys2QWyeb/j7qjBaVU9lczsZGlH/
 FdlEu1WV+3z435tNP1Y8yuyMpYydEK5TqZkh9hwL6SleG7e/6dsjkn11844PSONQ40Ci
 wiHxcFcVAznW3dpRvFtbHddXGRV4XY/gu+GQ4elBv5SgCv+QjbHEViRy91AgoyQIItjz
 ijs4Tav3JGHDwR2UVwaMQX905bZZ3tpHFz1lbgFeRfVctelN/V0zJe3Hf1MkX0mX4T9q OA== 
Received: from xch212cnc.rim.net (xch212cnc.rim.net [10.3.27.117])
	by mhs401ykf.rim.net with ESMTP id 3b72qv8yb0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 21 Sep 2021 15:50:29 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH212CNC.rim.net
 (10.3.27.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Tue, 21 Sep
 2021 15:50:28 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Tue, 21 Sep 2021 15:50:28 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: Konrad Weihmann <kweihmann@outlook.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] googletest shared library
Thread-Topic: [yocto] googletest shared library
Thread-Index: AQHXrvNmR2vvZSsL30OJxestQkC5W6uuznCAgAARxls=
Date: Tue, 21 Sep 2021 19:50:28 +0000
Message-ID: <a0053fd3185341dfb19bb1816c4b5477@blackberry.com>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>,<AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
In-Reply-To: <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.76]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-21_06:2021-09-20,2021-09-21 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_a0053fd3185341dfb19bb1816c4b5477blackberrycom_"

--_000_a0053fd3185341dfb19bb1816c4b5477blackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"

Thanks Konrad. That worked.

________________________________
From: Konrad Weihmann <kweihmann@outlook.com>
Sent: Tuesday, September 21, 2021 10:26:19 AM
To: Lijun Chen; yocto@lists.yoctoproject.org
Subject: Re: [yocto] googletest shared library


On 21.09.21 16:18, Lijun Chen wrote:
> Hi,
>
> I would like to include libgtest.so into my Yocto image. I added
> googletest to IMAGE_INSTALL and added the following line to
> sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git.=
bb:
>
> EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON "
>
>
> The shared libraries were built successfully. However, there are errors
> in do_package_qc as following:
>
>
> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
> -dev package googletest-dev contains non-symlink .so
> '/usr/lib/libgtest_main.so'
> -dev package googletest-dev contains non-symlink .so
> '/usr/lib/libgmock_main.so'
> -dev package googletest-dev contains non-symlink .so
> '/usr/lib/libgtest.so' [dev-elf]
> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
> Please consider fixing them.

https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/=
tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb=
7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$
(and the next lines) might give you a hint what to do in this case.
Although one could also consider that's something that needs to be fixed
in the installation script of googletest, as versioned libraries are the
expected default

>
>
> Any idea to fix this?
>
>
> Thanks,
>
> Lijun
>
>
> ------------------------------------------------------------------------
> This transmission (including any attachments) may contain confidential
> information, privileged material (including material protected by the
> solicitor-client or other applicable privileges), or constitute
> non-public information. Any use of this information by anyone other than
> the intended recipient is prohibited. If you have received this
> transmission in error, please immediately reply to the sender and delete
> this information from your system. Use, dissemination, distribution, or
> reproduction of this transmission by unintended recipients is not
> authorized and may be unlawful.
>
>
>=20
>

----------------------------------------------------------------------
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.

--_000_a0053fd3185341dfb19bb1816c4b5477blackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="windows-1252"

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
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
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Thanks Konrad. That worked.<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Konrad Weihmann &lt=
;kweihmann@outlook.com&gt;<br>
<b>Sent:</b> Tuesday, September 21, 2021 10:26:19 AM<br>
<b>To:</b> Lijun Chen; yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText"><br>
On 21.09.21 16:18, Lijun Chen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; I would like to include libgtest.so into my Yocto image. I added <br>
&gt; googletest to IMAGE_INSTALL and added the following line to <br>
&gt; sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_g=
it.bb:<br>
&gt; <br>
&gt; EXTRA_OECMAKE =3D &quot;-DBUILD_SHARED_LIBS=3DON &quot;<br>
&gt; <br>
&gt; <br>
&gt; The shared libraries were built successfully. However, there are error=
s <br>
&gt; in do_package_qc as following:<br>
&gt; <br>
&gt; <br>
&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package <br>
&gt; googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'<br>
&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt; '/usr/lib/libgtest_main.so'<br>
&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt; '/usr/lib/libgmock_main.so'<br>
&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt; '/usr/lib/libgtest.so' [dev-elf]<br>
&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. =
<br>
&gt; Please consider fixing them.<br>
<br>
<a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgi=
t.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!=
COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNN=
leww$">https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cg=
i/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3=
wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww=
$</a>&nbsp;
<br>
(and the next lines) might give you a hint what to do in this case.<br>
Although one could also consider that's something that needs to be fixed <b=
r>
in the installation script of googletest, as versioned libraries are the <b=
r>
expected default<br>
<br>
&gt; <br>
&gt; <br>
&gt; Any idea to fix this?<br>
&gt; <br>
&gt; <br>
&gt; Thanks,<br>
&gt; <br>
&gt; Lijun<br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; This transmission (including any attachments) may contain confidential=
 <br>
&gt; information, privileged material (including material protected by the =
<br>
&gt; solicitor-client or other applicable privileges), or constitute <br>
&gt; non-public information. Any use of this information by anyone other th=
an <br>
&gt; the intended recipient is prohibited. If you have received this <br>
&gt; transmission in error, please immediately reply to the sender and dele=
te <br>
&gt; this information from your system. Use, dissemination, distribution, o=
r <br>
&gt; reproduction of this transmission by unintended recipients is not <br>
&gt; authorized and may be unlawful.<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</div>
</span></font>

<HR>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<BR>
</body>
</html>

--_000_a0053fd3185341dfb19bb1816c4b5477blackberrycom_--
