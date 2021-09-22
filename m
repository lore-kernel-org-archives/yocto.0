Received: from smtp-pc10.blackberry.com (smtp-pc10.blackberry.com [74.82.81.42])
 by mx.groups.io with SMTP id smtpd.web12.6804.1632316711864361482
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 06:18:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=jg5pjWmn;
 spf=pass (domain: blackberry.com, ip: 74.82.81.42, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs400cnc.rim.net [127.0.0.1])
	by mhs400cnc.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18MDGfac112630
	for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 09:18:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=cC2k8RqYEnGzh7np739lL0NmKtBtO1tTdkgFfl2uLt8=;
 b=jg5pjWmnfYdUENPJ3xIQToHCXGpp06Qk69jSQMO7o4B5B9CZn+2kGN5aciAcMu3E33np
 rwajz8o1Apr8YWtYcYMicltHpJ/HCNxsKE2pGDivcEQduZleXFfvj0d7NC1GFIug38aL
 SMrByTIfP4wk16h6XpC3+0+G4EAwpGxak/3f82d9RxUT1qhsMFmSi+LhOJU+JHNgQVhs
 tBfXED04DlXUw7/E8J4vKJQBxMNhEG2/4D3qipfPxTKUo4alJDEuNJKaDpk7T/rxcfRX
 t8+4NOvBXMi4FpbFLApZnQiTHFsnTEvxk8oLlzIvJQ7wGQV2YzcJrM9gm16HA+dBWc1a Jg== 
Received: from xch213ykf.rim.net (xch213ykf.rim.net [10.12.114.213])
	by mhs400cnc.rim.net with ESMTP id 3b7q5wscrg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 22 Sep 2021 09:18:30 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH213YKF.rim.net
 (10.12.114.213) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Wed, 22 Sep
 2021 09:18:29 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Wed, 22 Sep 2021 09:18:29 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] googletest shared library
Thread-Topic: [yocto] googletest shared library
Thread-Index: AQHXrvNmR2vvZSsL30OJxestQkC5W6uuznCAgAARxluAASeUKA==
Date: Wed, 22 Sep 2021 13:18:29 +0000
Message-ID: <15166f538f2144adabe2299deb3b2a3c@blackberry.com>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>,<AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>,<16A6EE364B338B15.22723@lists.yoctoproject.org>
In-Reply-To: <16A6EE364B338B15.22723@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.76]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-22_05:2021-09-22,2021-09-22 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_15166f538f2144adabe2299deb3b2a3cblackberrycom_"

--_000_15166f538f2144adabe2299deb3b2a3cblackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,


Now I included googletest to the IMAGE_INSTALL in my image file, and built =
both board image and SDK image. I can see libgtest.so is available in both =
images. However, gtest/gtest.h is a not present in SDK. How do I add the he=
ader files to the SDK image? Looks the following lines affect that?

SOLIBS =3D ".so"
FILES_SOLIBSDEV =3D ""

Thanks,
Lijun

________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Lijun Chen <lijchen@blackberry.com>
Sent: Tuesday, September 21, 2021 3:50 PM
To: Konrad Weihmann; yocto@lists.yoctoproject.org
Subject: Re: [yocto] googletest shared library


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
>
>
________________________________
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.

----------------------------------------------------------------------
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.

--_000_15166f538f2144adabe2299deb3b2a3cblackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="iso-8859-1"

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D=
"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>Now I included googletest to the <span>IMAGE_INSTALL</span> in my image =
file, and built both board image and SDK image. I can see libgtest.so is av=
ailable in both images. However, gtest/gtest.h is a not present in SDK. How=
 do I add the header files to the
 SDK image? Looks the following lines affect that?<br>
</p>
<div>SOLIBS =3D &quot;.so&quot;<br>
FILES_SOLIBSDEV =3D &quot;&quot;</div>
</div>
<div style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, H=
elvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,=
 &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &=
quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
<br>
</div>
<div style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, H=
elvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,=
 &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &=
quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
Thanks,</div>
<div style=3D"font-size: 12pt; color: rgb(0, 0, 0); font-family: Calibri, H=
elvetica, sans-serif, &quot;EmojiFont&quot;, &quot;Apple Color Emoji&quot;,=
 &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&quot;, &=
quot;Android Emoji&quot;, EmojiSymbols;" dir=3D"ltr">
Lijun<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Lijun Chen &lt;=
lijchen@blackberry.com&gt;<br>
<b>Sent:</b> Tuesday, September 21, 2021 3:50 PM<br>
<b>To:</b> Konrad Weihmann; yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
<div>
<meta content=3D"text/html; charset=3DUTF-8">
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; co=
lor: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;Emoji=
Font&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Noto=
ColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSy=
mbols;">
<p>Thanks Konrad. That worked.<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Konrad Weihmann &lt=
;kweihmann@outlook.com&gt;<br>
<b>Sent:</b> Tuesday, September 21, 2021 10:26:19 AM<br>
<b>To:</b> Lijun Chen; yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
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
<hr>
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
</div>
</div>
</div>
</div>

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

--_000_15166f538f2144adabe2299deb3b2a3cblackberrycom_--
