Received: from esa3.bmw.c3s2.iphmx.com (esa3.bmw.c3s2.iphmx.com [68.232.133.150])
 by mx.groups.io with SMTP id smtpd.web11.3695.1580472831351949598
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Jan 2020 04:13:52 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=gXtWs1xl;
 spf=pass (domain: bmw.de, ip: 68.232.133.150, mailfrom: prvs=292f9c6af=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1580472831; x=1612008831;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=VhY5P/EkDU3CJ/NRytIZhkGiO9FlYXJO2sgjV4pITLk=;
  b=gXtWs1xlnA5sn19XdHdjGiu3eJtHRYmFMSUmTUDK8w4DXKDUqqxofV+m
   Ds6jwfpEldJ5tvaErUBzurDYvM1eJPGPeDqHcDCm4BwPxyWRA9JNiWwWX
   jvKHupjhF773F1LbBD/8jPAikCSb+/LrtDS/rpbw3pZDTmfDP2HCIRW7+
   M=;
IronPort-SDR: UG9srqdiGI6bif+/w0tQmkqKjd1Q5bJf0BDMHVpwhQFyd82l00Rlkqf8R5YssQrgsCv8YgHLOv
 TcmBJpudBvh1VfDD1Z3aDVCLNyN7vpVVAhQUvJYiBR4AOC2JlpmzVVlhfVZ1eEoVxfksRAOmHG
 usIWrMAMOEDhJs6prJTVxWglE0de+eYMubKJqw+qZiAxDAmNr6fNfgPN6bdm3V1ux7i3BE8hcu
 2x7hWhEeDtd9TlB1RJJskDb0ePwFqY8tUQzVeUZo0RhJzlOHkuR7pGs+evPeMIgBrLvbIAS1Qc
 ooo=
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa3.bmw.c3s2.iphmx.com with ESMTP/TLS; 31 Jan 2020 13:13:49 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw5.muc with ESMTP/TLS;
 31 Jan 2020 13:13:49 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb4.muc with ESMTP/TLS; 31 Jan 2020 13:13:48 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Fri, 31 Jan 2020 13:13:48 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Fri,
 31 Jan 2020 13:13:48 +0100
IronPort-SDR: spRJXvyYWhDE9euM9huY0UqMjHix9xs/y7K8uMFKkzkghKY9ofPmxCQnuXE1Ou1EsQRBRnOLf2
 ZYfn/IET5zUjR1rs/bAQEOzElihcPZt+8=
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <georgi.georgiev@woodward.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures with offline/online svn build! #yocto #python
Thread-Topic: [yocto] Yocto [thud], [zeus] do_fetch and do_unpack failures
 with offline/online svn build! #yocto #python
Thread-Index: AQHV2C7Lgm7is4sHNEaoc52jPiTqSqgEnqWA
Date: Fri, 31 Jan 2020 12:13:48 +0000
Message-ID: <20200131121347.GD104502@korppu>
References: <mQNu.1580472135762788821.UjeT@lists.yoctoproject.org>
In-Reply-To: <mQNu.1580472135762788821.UjeT@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AA94F72BCB30B346AF29B16AB244CA1F@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

I can't comment on svn fetcher but I use subversion via http
fetcher. This way the local download cache can have the exact same file
and builds can continue off line. One major gotcha is that all files
uploaded to svn must have unique and versioned file names. Updating the
same file to different content will result in using the old cache file vers=
ion.

Maybe this helps,

-Mikko=
