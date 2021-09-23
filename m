Received: from smtp-pc11.blackberry.com (smtp-pc11.blackberry.com [74.82.81.43])
 by mx.groups.io with SMTP id smtpd.web08.206.1632416008215597833
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Sep 2021 09:53:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=W8kMTipW;
 spf=pass (domain: blackberry.com, ip: 74.82.81.43, mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs401cnc.rim.net [127.0.0.1])
	by mhs401cnc.rim.net (8.16.0.43/8.16.0.43) with SMTP id 18NGrQLQ140502
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 12:53:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com; h=from : to :
 subject : date : message-id : content-type : mime-version; s=corp19;
 bh=THySMTLkz6/TC1+U++vRszg+DutTOiWK/t3Z7dOPOvY=;
 b=W8kMTipW0ywTw14m/jOlk1yQst5EZwaBnN7fKZ8GRNjSw+yCEO06Lw/jbW2QvHI3RAtN
 84F6K6kVx0GpuRIqxjtaZ1rWNSwqbKah7sq108ZATZx+2HPr9ch02CKou4Qp5YiSAjiX
 Al4yWglF2fm9r9BEBRl9cRZniswUmuD7rAV6QHZqcse/W+jbeWh4r0bOEuQWCA/cIW0A
 X4dz19tPgBN3H0XjAdTpIn7uZJP6VWwK53NheadnMZKpPgVFgWSxv6grdkkGzuJ3kiLc
 HSA3YthdPQAFsF/2i+fM3y12Bus1rHlMpKYIN7NB5OQZZ7zNJwIy4Tg22+pCRfbKJ0Of xw== 
Received: from xch212cnc.rim.net (xch212cnc.rim.net [10.3.27.117])
	by mhs401cnc.rim.net with ESMTP id 3b7q63v7qa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 23 Sep 2021 12:53:26 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH212CNC.rim.net
 (10.3.27.117) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Thu, 23 Sep
 2021 12:53:26 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Thu, 23 Sep 2021 12:53:26 -0400
From: "Lijun Chen" <lijchen@blackberry.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: gcov support for target in Yocto
Thread-Topic: gcov support for target in Yocto
Thread-Index: AQHXsJti8y0JtgWz/kqHFVxhBUEuMw==
Date: Thu, 23 Sep 2021 16:53:26 +0000
Message-ID: <cd74ff1907374ec2bd340f18d691123d@blackberry.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.207]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-09-23_05:2021-09-23,2021-09-23 signatures=0
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_cd74ff1907374ec2bd340f18d691123dblackberrycom_"

--_000_cd74ff1907374ec2bd340f18d691123dblackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,


Anybody knows how to enable gcov support for the target in Yocto?


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

--_000_cd74ff1907374ec2bd340f18d691123dblackberrycom_
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
<p>Anybody knows how to enable gcov support for the target in Yocto?</p>
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

--_000_cd74ff1907374ec2bd340f18d691123dblackberrycom_--
