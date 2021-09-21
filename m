Received: from smtp-pc10.blackberry.com (smtp-pc10.blackberry.com [74.82.81.42])
 by mx.groups.io with SMTP id smtpd.web08.8180.1632233904298085232
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 07:18:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=O6JOf5p2;
 spf=pass (domain: blackberry.com, ip: 74.82.81.42, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs400cnc.rim.net [127.0.0.1])
	by mhs400cnc.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18LEEsXa099880
	for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 10:18:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : content-type : mime-version; s=corp19;
 bh=sSXrieS3BR62S2t7rxSode9pP1g923j+nzOwGn9hbZk=;
 b=O6JOf5p2b4minpRby3hGhuMsDmutCLfHS6+H/QztafAUgWuki9WMf1qbnT9sH55di/Wn
 c5qcFMCbk/W/C3uS1lpWrc1toA9aMIrDmAEXQSOC5J2TFLllRYhgnl2gSidOW5N8A3gu
 70p4eCmeYMxqQVCBkkBrjS4YfMHrMDx+tgF0NZsXdcxS0riIavslL/4s5eYsIu7u/XtS
 3Z6n9I2c+U6UqnmIevzcOFQdiJQVwdWY8zZDS885YCiWLSKZ44SEXfbPbCWy76baCTcg
 UsVYJhpnWMB7Wet/T89eTVYvgM6DcIO/zwTz4wwCvwExSShXzbZPdiyUaJ+xYuCstyTg +g== 
Received: from xch210ykf.rim.net (xch210ykf.rim.net [10.12.114.210])
	by mhs400cnc.rim.net with ESMTP id 3b72qm9c4e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 10:18:22 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH210YKF.rim.net
 (10.12.114.210) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Tue, 21 Sep
 2021 10:18:22 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Tue, 21 Sep 2021 10:18:22 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: googletest shared library
Thread-Topic: googletest shared library
Thread-Index: AQHXrvNmR2vvZSsL30OJxestQkC5Ww==
Date: Tue, 21 Sep 2021 14:18:22 +0000
Message-ID: <3925c5329d6f46f78c5921fe7965662b@blackberry.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.76]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-21_04:2021-09-20,2021-09-21 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_3925c5329d6f46f78c5921fe7965662bblackberrycom_"

--_000_3925c5329d6f46f78c5921fe7965662bblackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,

I would like to include libgtest.so into my Yocto image. I added googletest=
 to IMAGE_INSTALL and added the following line to sources/meta-openembedded=
/meta-oe/recipes-test/googletest/googletest_git.bb:

EXTRA_OECMAKE =3D "-DBUILD_SHARED_LIBS=3DON "


The shared libraries were built successfully. However, there are errors in =
do_package_qc as following:


ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package googletes=
t-dev contains non-symlink .so '/usr/lib/libgmock.so'
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest_mai=
n.so'
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgmock_mai=
n.so'
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest.so'=
 [dev-elf]
ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.


Any idea to fix this?


Thanks,

Lijun

----------------------------------------------------------------------
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.

--_000_3925c5329d6f46f78c5921fe7965662bblackberrycom_
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
<p></p>
<div itemprop=3D"text" id=3D"bodyDisplay" class=3D"lia-message-body lia-com=
ponent-message-view-widget-body lia-component-body-signature-highlight-esca=
lation lia-component-message-view-widget-body-signature-highlight-escalatio=
n">
<div class=3D"lia-message-body-content">
<p>Hi,</p>
<p>I would like to include libgtest.so into my Yocto image. I added googlet=
est to IMAGE_INSTALL and added the following line to sources/meta-openembed=
ded/meta-oe/recipes-test/googletest/googletest_git.bb:</p>
<p>EXTRA_OECMAKE =3D &quot;-DBUILD_SHARED_LIBS=3DON &quot;</p>
<p><br>
</p>
<p>The shared libraries were built successfully. However, there are errors =
in do_package_qc as following:</p>
<p><br>
</p>
<p>ERROR: googletest-1.10.0-r0 do_package_qa: QA Issue: -dev package google=
test-dev contains non-symlink .so '/usr/lib/libgmock.so'<br>
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest_mai=
n.so'<br>
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgmock_mai=
n.so'<br>
-dev package googletest-dev contains non-symlink .so '/usr/lib/libgtest.so'=
 [dev-elf]<br>
ERROR: googletest-1.10.0-r0 do_package_qa: QA run found fatal errors. Pleas=
e consider fixing them.</p>
<p><br>
</p>
<p>Any idea to fix this?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Lijun</p>
</div>
</div>
<br>
<p></p>
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

--_000_3925c5329d6f46f78c5921fe7965662bblackberrycom_--
