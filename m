Received: from Mail4.woodward.com (Mail4.woodward.com [204.27.169.35])
 by mx.groups.io with SMTP id smtpd.web10.1023.1582010758636173675
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 23:25:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@woodward.com header.s=20190114woodward header.b=umzNIhna;
 spf=pass (domain: woodward.com, ip: 204.27.169.35, mailfrom: georgi.georgiev@woodward.com)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.42/8.16.0.42) with SMTP id 01I7OOdE002906
	for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 01:25:57 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com; h=from : to : subject
 : date : message-id : references : in-reply-to : content-transfer-encoding
 : mime-version : content-type; s=20190114Woodward;
 bh=9A6vaXATUnK2dZa1CHAuw0nrVuwo83ATfInosjhcnw4=;
 b=umzNIhna3s5jvgy0TWejLKJZ27NKT/abt5PjNQazZHGoPik7mh0ycJbYhaqexemA2X8E
 23lveD8Kkvgy7qVeGqBYUKBfoDVj1gzQ5lsOBMXDKLGxnayIjhdOZaubCSYJCayV8rIQ
 8CrSK/tgcLxDaZBMYxu2WVyj/SGhErmFAMU5ow6OoqOaDPp1wygLrtQd7kZmT5F3qOCm
 +Himh6CRvVbcbijZ1qhwMctOGuMLjXKgBFiiXXG28/663Qd0e3x6NtZaC4rRmzBsUtEF
 FZOQG/CcUEaZ4AFqeuGNiKxXZkEk+Ghsw8hCqdS+A+rgDRaPN9MIfYzQ2E52nBhoqG3A Yg== 
Received: from coil-exmb4.woodward.com ([10.51.100.67])
	by COIL-PMSGA1.woodward.com with ESMTP id 2y8bb6g0gm-18
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2020 01:25:57 -0600
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by
 COIL-ExMb4.woodward.com (10.51.100.67) with Microsoft SMTP Server (TLS) id
 15.0.1473.3; Tue, 18 Feb 2020 01:25:16 -0600
Received: from Kemp-ExMb1.woodward.com (10.25.100.72) by
 Kemp-ExMb1.woodward.com (10.25.100.72) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 18 Feb 2020 08:25:15 +0100
Received: from Kemp-ExMb1.woodward.com ([10.25.100.72]) by
 Kemp-ExMb1.woodward.com ([10.25.100.72]) with mapi id 15.00.1395.000; Tue, 18
 Feb 2020 08:25:15 +0100
From: "Georgi Georgiev" <georgi.georgiev@woodward.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures with offline/online svn build! #yocto #python
Thread-Topic: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures
 with offline/online svn build! #yocto #python
Thread-Index: AdXcRVMItAsS96VjQ36fsMtuKM+vJgJSsmTA///0WID//+ksIIAAIwqA//7H4DA=
Date: Tue, 18 Feb 2020 07:25:15 +0000
Message-ID: <e81237bb0cab436681a5c60e01d87a65@Kemp-ExMb1.woodward.com>
References: <bfb7604a4f7f481aad771a3472031e1b@Kemp-ExMb1.woodward.com>
 <20200217130337.GS104502@korppu>
 <0704a68acba44839865cb31e22e584db@Kemp-ExMb1.woodward.com>
 <20200217134718.GT104502@korppu>
In-Reply-To: <20200217134718.GT104502@korppu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.1.100.23
dlp-reaction: no-action
dlp-product: dlpe-windows
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.138.108.100]
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 mlxlogscore=999 priorityscore=1501 impostorscore=0 phishscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2001150001 definitions=main-2002180059
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

OK,
I read some code and I added the next line:

--- a/bitbake/lib/bb/fetch2/svn.py
+++ b/bitbake/lib/bb/fetch2/svn.py
@@ -145,6 +145,7 @@ class Svn(FetchMethod):

             if not ("externals" in ud.parm and ud.parm["externals"] =3D=3D=
 "nowarn"):
                 # Warn the user if this had externals (won't catch them al=
l)
+                svnfetchcmd =3D self._buildsvncommand(ud, d, "fetch")
                 output =3D runfetchcmd("svn propget svn:externals || true"=
, d, workdir=3Dud.moddir)
                 if output:
                     if "--ignore-externals" in svnfetchcmd.split():

This works for me perfectly. I may look little redundant but...
Any comments?=20
@Mikko,=20
We have only one svn repo in the whole project :-)

Cordially,
Georgi

-----Original Message-----
From: Mikko.Rapeli@bmw.de [mailto:Mikko.Rapeli@bmw.de]=20
Sent: Monday, February 17, 2020 3:47 PM
To: Georgi Georgiev <Georgi.Georgiev@woodward.com>
Cc: yocto@lists.yoctoproject.org
Subject: [EXTERNAL] Re: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack=
 failures with offline/online svn build! #yocto #python

On Mon, Feb 17, 2020 at 01:35:02PM +0000, Georgi Georgiev via Lists.Yoctopr=
oject.Org wrote:
> Hi Mikko,
> Your patch is upstreamed and...It is actually released. If you see the er=
ror output you will see your codeline.  I decided to try with your old vers=
ion but the result is the same. Can you say something for the previous issu=
e I have about offline build.
> It seem svn is not very well supported by yocto.

Ah, indeed.

svn is supported and for me it's working quite well. It has some issues lik=
e download cache locking when multiple recipes include the same URLs.

Where possible, I've switched to using http fetcher with tar balls and larg=
e binary blobs in svn, but there one needs to remember to include version d=
etails into file names...

-Mikko

***
The information in this email is confidential and intended solely for the i=
ndividual or entity to whom it is addressed.=C2=A0=C2=A0If you have receive=
d this email in error please notify the sender by return e-mail, delete thi=
s email, and refrain from any disclosure or action based on the information.
***
