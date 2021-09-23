Received: from smtp-pg11.blackberry.com (smtp-pg11.blackberry.com [68.171.242.227])
 by mx.groups.io with SMTP id smtpd.web08.4550.1632403935840820256
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 06:32:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=IodlCQrP;
 spf=pass (domain: blackberry.com, ip: 68.171.242.227, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs401ykf.rim.net [127.0.0.1])
	by mhs401ykf.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18NDR6Rt116114
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 09:32:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=kWflE1ckSlfe/vfzW3fscQYaDJFbzAHu2st9HhoPuAc=;
 b=IodlCQrP8o+ZTHlpXuPtQA16SzbU+XOQYJ6vjIX0c7zk1IjHOK9wpDG+QSFtM5W9ReZb
 YQPAKQpCd/f2dXCRRdwK5Rgsec3oEte1crR0ECYrFoxKyIAkOHLAXmSyJtieuNayn4hh
 tO9sBZMOP3D2iFPHwYRLLTW54zXTRbpK1TBhH7qG1lIavNsgkjJHlV19Il4bA7UKbj9A
 QRiX6mpz1LnQLRKhlzBRFCrd3Cr5d1NHD8nx5fgxHwhCwyK0f9D9lyI12kGxVysBhz9b
 cYOZ3LSvsMdgzerW8onxdCxmRmSMMHL964hKrpnBSsTpLxW87yMAHo9RGw5OulveGrvI zQ== 
Received: from xch211cnc.rim.net (xch211cnc.rim.net [10.3.27.116])
	by mhs401ykf.rim.net with ESMTP id 3b7q681v94-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 09:32:14 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH211CNC.rim.net
 (10.3.27.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Thu, 23 Sep
 2021 09:32:14 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Thu, 23 Sep 2021 09:32:14 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] googletest shared library
Thread-Topic: [yocto] googletest shared library
Thread-Index: AQHXrvNmR2vvZSsL30OJxestQkC5W6uuznCAgAARxluAASeUKIAAaj2A///jB82AAUnfsA==
Date: Thu, 23 Sep 2021 13:32:14 +0000
Message-ID: <1b84a7a456b54acaae9d98efc5731549@blackberry.com>
References: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
 <AS8PR09MB4645D63449C60FC6463045E7A8A19@AS8PR09MB4645.eurprd09.prod.outlook.com>
 <16A6EE364B338B15.22723@lists.yoctoproject.org>
 <15166f538f2144adabe2299deb3b2a3c@blackberry.com>,<4440837f-5f69-28c4-7d8b-57653935790c@gmail.com>,<16A735F63BB00E6A.1967@lists.yoctoproject.org>
In-Reply-To: <16A735F63BB00E6A.1967@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.219]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-23_04:2021-09-23,2021-09-23 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_1b84a7a456b54acaae9d98efc5731549blackberrycom_"

--_000_1b84a7a456b54acaae9d98efc5731549blackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,


If I switch to the default setting of the googletest recipe, the header fil=
es are included in the SDK image. However, the libgtest libraries are stati=
c.

Looks FILES_SOLIBSDEV =3D "" disables googletest-dev to be included in the =
SDK.


Is there a way to change the library to dynamic and keep the header files? =
i.e. just add EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON " but skip the do=
_package_qa part to avoid the QA issue due to un-versioned library?


Thanks,

Lijun


________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Lijun Chen <lijchen@blackberry.com>
Sent: Wednesday, September 22, 2021 1:45 PM
To: Khem Raj; yocto@lists.yoctoproject.org
Subject: Re: [yocto] googletest shared library


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

--_000_1b84a7a456b54acaae9d98efc5731549blackberrycom_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size: 12pt; color: rgb(0, 0,=
 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFont&quot;, &q=
uot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &q=
uot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;" dir=3D=
"ltr">
<p>Hi,</p>
<p><br>
</p>
<p>If I switch to the default setting of the googletest recipe, the header =
files are included in the SDK image. However, the libgtest libraries are st=
atic.</p>
<p>Looks <font size=3D"2"><span style=3D"font-size:10pt">FILES_SOLIBSDEV =
=3D &quot;&quot;</span></font> disables googletest-dev to be included in th=
e SDK.</p>
<p><br>
</p>
<p><span>Is there a way to change the library to dynamic and keep the heade=
r files? i.e. just add
<font size=3D"2"><span style=3D"font-size:10pt">EXTRA_OECMAKE =3D &quot;-DB=
UILD_SHARED_LIBS=3DON &quot;</span></font> but skip the
<font size=3D"2"><span style=3D"font-size:10pt">do_package_qa</span></font>=
 part to avoid the QA issue due to un-versioned library?</span></p>
<p><span><br>
</span></p>
<p><span>Thanks,</span></p>
<p><span>Lijun</span><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Lijun Chen &lt;=
lijchen@blackberry.com&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 1:45 PM<br>
<b>To:</b> Khem Raj; yocto@lists.yoctoproject.org<br>
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
<p>Tried adding googletest to <font size=3D"2"><span style=3D"font-size:10p=
t">TOOLCHAIN_TARGET_TASK</span></font>. The gtest .h files are still not sh=
owing up.</p>
<p>Thanks,<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Wednesday, September 22, 2021 11:28:05 AM<br>
<b>To:</b> Lijun Chen; yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] googletest shared library</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
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
&gt; (and the next lines) might give you a hint what to do in this case.<br>
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

--_000_1b84a7a456b54acaae9d98efc5731549blackberrycom_--
