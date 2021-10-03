Return-Path: <lijchen@blackberry.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962FEC433F5
	for <webhook@archiver.kernel.org>; Sun,  3 Oct 2021 01:55:36 +0000 (UTC)
Received: from smtp-pg11.blackberry.com (smtp-pg11.blackberry.com
 [68.171.242.227])
 by mx.groups.io with SMTP id smtpd.web11.18102.1633226132315949050
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 18:55:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=ETVnRvqt;
 spf=pass (domain: blackberry.com, ip: 68.171.242.227,
 mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs401ykf.rim.net [127.0.0.1])
	by mhs401ykf.rim.net (8.16.0.43/8.16.0.43) with SMTP id 1931skar003350
	for <yocto@lists.yoctoproject.org>; Sat, 2 Oct 2021 21:55:31 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com;
 h=from : to :
 subject : date : message-id : content-type : mime-version; s=corp19;
 bh=G03lQlIPZ06S2U5PlRexlXjggyXg08UNCVAmfOVXjPc=;
 b=ETVnRvqtV5KnLh/yxpQayypq3gXOjHTu6FMCk15yICg/Zv2ExdHfEOEUcpJR+rfAwgi6
 +Le8hMy7jVloF2qmpRVklTGZrAM9P54o/+D9Pl8omEc80EL3M6h4Dttf9/83unIgXA+x
 FvetN1K8usjK8m8F2wQBxtszxjRe4/B0yFYMYh5PS40YjEcjWhyb5R/i1coUHKLFeBHp
 t0eOCUY/87+0EKQlmugM1imLP83OCtNH653t0j0DYfe00YPvb17gHxsf02KVWmeBLBpf
 mgTa3vq/s6U8QdzqgOSm2RrREeD9pVl5hN5/TAkrvJg/OWmWkvRw7NxQlZ5aSJaaIyor RA==
Received: from xch211cnc.rim.net (xch211cnc.rim.net [10.3.27.116])
	by mhs401ykf.rim.net with ESMTP id 3bejp7rjuu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Sat, 02 Oct 2021 21:55:30 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH211CNC.rim.net
 (10.3.27.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Sat, 2 Oct
 2021 21:55:30 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Sat, 2 Oct 2021 21:55:30 -0400
From: Lijun Chen <lijchen@blackberry.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Shared lib symlinks in target image 
Thread-Topic: Shared lib symlinks in target image 
Thread-Index: AQHXt/hkH3Oz20dKZEmAKPu+QWv1aw==
Date: Sun, 3 Oct 2021 01:55:30 +0000
Message-ID: <c7c1faf5ec0f43178b03bcd5bdacb744@blackberry.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.209]
Content-Type: multipart/alternative;
	boundary="_000_c7c1faf5ec0f43178b03bcd5bdacb744blackberrycom_"
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-10-02_07:2021-10-01,2021-10-02 signatures=0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Oct 2021 01:55:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54934

--_000_c7c1faf5ec0f43178b03bcd5bdacb744blackberrycom_
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

Hi,


When I build a yocto image, I added some packages into IMAGE_INSTALL, such =
as boost, thrift, etc. I notice in the target OS image, the shared libs don=
't the symlinks. But in the SDK image, the symlinks are there. For example,

lrwxrwxrwx 1 root root       22 Oct  2 16:41 libboost_filesystem-mt.so -> l=
ibboost_filesystem.so
lrwxrwxrwx 1 root root       29 Oct  2 16:41 libboost_filesystem.so -> libb=
oost_filesystem.so.1.75.0

Is there a way to add the symlinks to the target image as well?


With the symlinks, I assume we can run an old application even the dependen=
t lib is a newer version?


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

--_000_c7c1faf5ec0f43178b03bcd5bdacb744blackberrycom_
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
<p>When I build a yocto image, I added some packages into <span>IMAGE_INSTA=
LL</span>, such as boost, thrift, etc. I notice in the target OS image, the=
 shared libs don't the symlinks. But in the SDK image, the symlinks are the=
re.&nbsp;For example,
</p>
<p></p>
<div>lrwxrwxrwx 1 root root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 22 Oct&nbsp=
; 2 16:41 libboost_filesystem-mt.so -&gt; libboost_filesystem.so<br>
lrwxrwxrwx 1 root root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 29 Oct&nbsp; 2 1=
6:41 libboost_filesystem.so -&gt; libboost_filesystem.so.1.75.0<br>
<br>
</div>
Is there a way to add the symlinks to the target image as well?
<p></p>
<p><br>
</p>
<p>With the symlinks, I assume we can run an old application even the depen=
dent lib is a newer version?</p>
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

--_000_c7c1faf5ec0f43178b03bcd5bdacb744blackberrycom_--

