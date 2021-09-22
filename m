Received: from smtp-pc10.blackberry.com (smtp-pc10.blackberry.com [74.82.81.42])
 by mx.groups.io with SMTP id smtpd.web12.120.1632332720666832722
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Sep 2021 10:45:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=Vm15VGhl;
 spf=pass (domain: blackberry.com, ip: 74.82.81.42, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs400cnc.rim.net [127.0.0.1])
	by mhs400cnc.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18MHggIl071283;
	Wed, 22 Sep 2021 13:45:17 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=KhMiDVNyyEhDUwbdxEu6b+lj2oiluMs2yN+rark6NpE=;
 b=Vm15VGhlCPmgq5BtKN1PCSKD9mV0JFcuiwAYa58gQJTRdJd94pIJ9941N1WhgNQq+klN
 ytV/LT2cXEhT5iIeH6YFgzCN1AX/gC6mfUYZ4U/8hgCRM3ZOs27NvU1ADywM1szHOPRU
 pIUgnHJWGOBHutZkBiXAoObxfvbbbsokTVbfvHsiLQQ829/tGsAPywo93vpCfikIXLVa
 5MVLQmB2/+Kk3fAV+HEmVsu0PDkOt0Q/4YQkM7payqDb9nJIKieKZF+5Su+2aipL5N2P
 xY3mfXCrX4dB+F1inq0XtBF0JfrtoRhXR1DYkPbzUnfFUDIUbm26tHNM9sv+4KM9wGzs LQ== 
Received: from xch212cnc.rim.net (xch212cnc.rim.net [10.3.27.117])
	by mhs400cnc.rim.net with ESMTP id 3b7q5wswcg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 22 Sep 2021 13:45:17 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH212CNC.rim.net
 (10.3.27.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Wed, 22 Sep
 2021 13:45:16 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Wed, 22 Sep 2021 13:45:16 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: Khem Raj <raj.khem@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] googletest shared library
Thread-Topic: [yocto] googletest shared library
Thread-Index: AQHXrvNmR2vvZSsL30OJxestQkC5W6uuznCAgAARxluAASeUKIAAaj2A///jB80=
Date: Wed, 22 Sep 2021 17:45:16 +0000
Message-ID: <34204df22ebb41b58292258f595ad404@blackberry.com>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org>
 <15166f538f2144adabe2299deb3b2a3c@blackberry.com>,<4440837f-5f69-28c4-7d8b-57653935790c@gmail.com>
In-Reply-To: <4440837f-5f69-28c4-7d8b-57653935790c@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.76]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-22_06:2021-09-22,2021-09-22 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_34204df22ebb41b58292258f595ad404blackberrycom_"

--_000_34204df22ebb41b58292258f595ad404blackberrycom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Tried adding googletest to TOOLCHAIN_TARGET_TASK. The gtest .h files are st=
ill not showing up.

Thanks,

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Wednesday, September 22, 2021 11:28:05 AM
To: Lijun Chen; yocto@lists.yoctoproject.org
Subject: Re: [yocto] googletest shared library

The .h files will be in dev pkg in this case googletest-dev
what happens if you add googletest to TOOLCHAIN_TARGET_TASK

On 9/22/21 6:18 AM, Lijun Chen wrote:
> Hi,
>
>
> Now I included googletest to the IMAGE_INSTALL in my image file, and
> built both board image and SDK image. I can see libgtest.so is available
> in both images. However, gtest/gtest.h is a not present in SDK. How do I
> add the header files to the SDK image? Looks the following lines affect
> that?
>
> SOLIBS =3D ".so"
> FILES_SOLIBSDEV =3D ""
>
> Thanks,
> Lijun
>
> ------------------------------------------------------------------------
> *From:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of Lijun Chen <lijchen@blackberry.com>
> *Sent:* Tuesday, September 21, 2021 3:50 PM
> *To:* Konrad Weihmann; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
>
> Thanks Konrad. That worked.
>
> ------------------------------------------------------------------------
> *From:* Konrad Weihmann <kweihmann@outlook.com>
> *Sent:* Tuesday, September 21, 2021 10:26:19 AM
> *To:* Lijun Chen; yocto@lists.yoctoproject.org
> *Subject:* Re: [yocto] googletest shared library
>
> On 21.09.21 16:18, Lijun Chen wrote:
>> Hi,
>>
>> I would like to include libgtest.so into my Yocto image. I added
>> googletest to IMAGE_INSTALL and added the following line to
>> sources/meta-openembedded/meta-oe/recipes-test/googletest/googletest_git=
.bb:
>>
>> EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON "
>>
>>
>> The shared libraries were built successfully. However, there are errors
>> in do_package_qc as following:
>>
>>
>> ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package
>> googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'
>> -dev package googletest-dev contains non-symlink .so
>> '/usr/lib/libgtest_main.so'
>> -dev package googletest-dev contains non-symlink .so
>> '/usr/lib/libgmock_main.so'
>> -dev package googletest-dev contains non-symlink .so
>> '/usr/lib/libgtest.so' [dev-elf]
>> ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors.
>> Please consider fixing them.
>
> https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/pok=
y/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07H=
nb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$
> <https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/po=
ky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07=
Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$>
>
> (and the next lines) might give you a hint what to do in this case.
> Although one could also consider that's something that needs to be fixed
> in the installation script of googletest, as versioned libraries are the
> expected default
>
>>
>>
>> Any idea to fix this?
>>
>>
>> Thanks,
>>
>> Lijun
>>
>>
>> ------------------------------------------------------------------------
>> This transmission (including any attachments) may contain confidential
>> information, privileged material (including material protected by the
>> solicitor-client or other applicable privileges), or constitute
>> non-public information. Any use of this information by anyone other than
>> the intended recipient is prohibited. If you have received this
>> transmission in error, please immediately reply to the sender and delete
>> this information from your system. Use, dissemination, distribution, or
>> reproduction of this transmission by unintended recipients is not
>> authorized and may be unlawful.
>>
>>
>>
>>
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

--_000_34204df22ebb41b58292258f595ad404blackberrycom_
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
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Tried adding googletest to <font size=3D"2"><span style=3D"font-size:10p=
t">TOOLCHAIN_TARGET_TASK</span></font>. The gtest .h files are still not sh=
owing up.</p>
<p>Thanks,<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 11:28:05 AM<br>
<b>To:</b> Lijun Chen; yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">The .h files will be in dev pkg in this case googl=
etest-dev<br>
what happens if you add googletest to TOOLCHAIN_TARGET_TASK<br>
<br>
On 9/22/21 6:18 AM, Lijun Chen wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; Now I included googletest to the IMAGE_INSTALL in my image file, and <=
br>
&gt; built both board image and SDK image. I can see libgtest.so is availab=
le <br>
&gt; in both images. However, gtest/gtest.h is a not present in SDK. How do=
 I <br>
&gt; add the header files to the SDK image? Looks the following lines affec=
t <br>
&gt; that?<br>
&gt; <br>
&gt; SOLIBS =3D &quot;.so&quot;<br>
&gt; FILES_SOLIBSDEV =3D &quot;&quot;<br>
&gt; <br>
&gt; Thanks,<br>
&gt; Lijun<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&=
gt; on <br>
&gt; behalf of Lijun Chen &lt;lijchen@blackberry.com&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 3:50 PM<br>
&gt; *To:* Konrad Weihmann; yocto@lists.yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; Thanks Konrad. That worked.<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Konrad Weihmann &lt;kweihmann@outlook.com&gt;<br>
&gt; *Sent:* Tuesday, September 21, 2021 10:26:19 AM<br>
&gt; *To:* Lijun Chen; yocto@lists.yoctoproject.org<br>
&gt; *Subject:* Re: [yocto] googletest shared library<br>
&gt; <br>
&gt; On 21.09.21 16:18, Lijun Chen wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt; <br>
&gt;&gt; I would like to include libgtest.so into my Yocto image. I added <=
br>
&gt;&gt; googletest to IMAGE_INSTALL and added the following line to <br>
&gt;&gt; sources/meta-openembedded/meta-oe/recipes-test/googletest/googlete=
st_git.bb:<br>
&gt;&gt; <br>
&gt;&gt; EXTRA_OECMAKE =3D &quot;-DBUILD_SHARED_LIBS=3DON &quot;<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; The shared libraries were built successfully. However, there are e=
rrors <br>
&gt;&gt; in do_package_qc as following:<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package =
<br>
&gt;&gt; googletest-dev contains non-symlink .so '/usr/lib/libgmock.so'<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; '/usr/lib/libgtest_main.so'<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; '/usr/lib/libgmock_main.so'<br>
&gt;&gt; -dev package googletest-dev contains non-symlink .so <br>
&gt;&gt; '/usr/lib/libgtest.so' [dev-elf]<br>
&gt;&gt; ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal erro=
rs. <br>
&gt;&gt; Please consider fixing them.<br>
&gt; <br>
&gt; <a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__=
;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4=
iMsNNleww$">
https://urldefense.com/v3/__http://git.yoctoproject.org/cgit/cgit.cgi/poky/=
tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__;Iw!!COg3wY07Hnb=
7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4iMsNNleww$</a>
<br>
&gt; &lt;<a href=3D"https://urldefense.com/v3/__http://git.yoctoproject.org=
/cgit/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n=
34__;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0N=
ANM4iMsNNleww$">https://urldefense.com/v3/__http://git.yoctoproject.org/cgi=
t/cgit.cgi/poky/tree/meta/recipes-graphics/spir/spirv-tools_2021.2.bb*n34__=
;Iw!!COg3wY07Hnb7!4NI6d6tXUoxCQFleF-343dfbdFGnkZnqrYRVg3nYTCBoGJTY9-K0NANM4=
iMsNNleww$</a>&gt;
<br>
&gt; <br>
&gt; (and the next lines) might give you a hint what to do in this case.<br=
>
&gt; Although one could also consider that's something that needs to be fix=
ed<br>
&gt; in the installation script of googletest, as versioned libraries are t=
he<br>
&gt; expected default<br>
&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Any idea to fix this?<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; Thanks,<br>
&gt;&gt; <br>
&gt;&gt; Lijun<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; ------------------------------------------------------------------=
------<br>
&gt;&gt; This transmission (including any attachments) may contain confiden=
tial <br>
&gt;&gt; information, privileged material (including material protected by =
the <br>
&gt;&gt; solicitor-client or other applicable privileges), or constitute <b=
r>
&gt;&gt; non-public information. Any use of this information by anyone othe=
r than <br>
&gt;&gt; the intended recipient is prohibited. If you have received this <b=
r>
&gt;&gt; transmission in error, please immediately reply to the sender and =
delete <br>
&gt;&gt; this information from your system. Use, dissemination, distributio=
n, or <br>
&gt;&gt; reproduction of this transmission by unintended recipients is not =
<br>
&gt;&gt; authorized and may be unlawful.<br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
&gt;&gt; <br>
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

--_000_34204df22ebb41b58292258f595ad404blackberrycom_--
