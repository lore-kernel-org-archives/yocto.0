Received: from smtp-pg11.blackberry.com (smtp-pg11.blackberry.com [68.171.242.227])
 by mx.groups.io with SMTP id smtpd.web08.3398.1632254427996468878
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Sep 2021 13:00:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=fiCSFle/;
 spf=pass (domain: blackberry.com, ip: 68.171.242.227, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs401ykf.rim.net [127.0.0.1])
	by mhs401ykf.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18LJv4Uh130111
	for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 16:00:27 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : content-type : mime-version; s=corp19;
 bh=zc6JKo1zPYY7TwzsPfk42t6eZkD5QCCBpMZEqwdJDsQ=;
 b=fiCSFle/XLFN+phTuNCdbzZC37apcNrWyxXmGoEWctSJOAbVilz5y4F5I4ISGtwVgmno
 LiC0Vj7f9C3JEIsVDnIyLk7lMw6Xkp5QUzJIXH3Wpw8tLT7Gpozmn6MhOHbSUEEXMmvI
 wyRmO2N2jaZtKHBiRzIlPnAbHHSkQm1pm6M40CvvCHYhV7IeQAd+hQwS7+AUq/s4p6Y9
 wb6cHgsTv0npvLwuVO12/Tuipw+6b/e/jagissIs19l2etz02jz9emSjQ/6sMluDMRME
 Y7xoWCKHSypVfeRFXpPln+ePfsJVbVnL1IBpCcfC2Ou16xOY7vgE/mbz4z3TyjS9UYuM BQ== 
Received: from xch212cnc.rim.net (xch212cnc.rim.net [10.3.27.117])
	by mhs401ykf.rim.net with ESMTP id 3b72qv8ydx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 21 Sep 2021 16:00:27 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH212CNC.rim.net
 (10.3.27.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Tue, 21 Sep
 2021 16:00:26 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Tue, 21 Sep 2021 16:00:26 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Switch to a different Python3 version
Thread-Topic: Switch to a different Python3 version
Thread-Index: AQHXryLOOhMfvecsZEGFFMNHUGTCGg==
Date: Tue, 21 Sep 2021 20:00:26 +0000
Message-ID: <91a33a503a4a4dfa8c1fa0aae18d4d1c@blackberry.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.76]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-21_06:2021-09-20,2021-09-21 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_91a33a503a4a4dfa8c1fa0aae18d4d1cblackberrycom_"

--_000_91a33a503a4a4dfa8c1fa0aae18d4d1cblackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,


Currently we are building a Yocto image based on Hardknott release, which i=
ncludes python 3.9.4. Due to a App constraint, we have to downgrade Python3=
 to 3.8. I tried copying over 3.8.5 bb file and associated poky/meta/recipe=
s-devtools/python/python3/ folder, but the building failed. What is the bes=
t way to switch/downgrade python3 version?


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

--_000_91a33a503a4a4dfa8c1fa0aae18d4d1cblackberrycom_
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
<p>Hi,</p>
<p><br>
</p>
<p>Currently we are building a Yocto image based on Hardknott release, whic=
h includes python 3.9.4. Due to a App constraint, we have to downgrade Pyth=
on3 to 3.8. I tried copying over 3.8.5 bb file and
<span>associated poky/meta/recipes-devtools/python/python3</span>/ folder, =
but the building failed. What is the best way to switch/downgrade python3 v=
ersion?</p>
<p><br>
</p>
<p>Thanks,</p>
<p>Lijun<br>
</p>
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

--_000_91a33a503a4a4dfa8c1fa0aae18d4d1cblackberrycom_--
