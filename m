Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.1850.1601395047542033188
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 08:57:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=cNrNn781;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1601395047; x=1759075047;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=2OF71l9Gz42wzix8Nm7KCj40RfQXNUBLHWvwx8pNmAQ=;
  b=cNrNn781zZGBGM0npY2dj/wpm1wHg3PqnOEMaK/i1bPIkpegN1Kia/R6
   iB76QFbHng3l9GpMtpcD5hyHzN3K342smJxtF1E9DNUx0rVHujefh+rOk
   +oxubxGPGqZxghTTgcdJl3hiil8VPh5YvdFsXKwU9a8yzNEU6KidW7M5U
   E=;
X-IronPort-AV: E=Sophos;i="5.77,319,1596499200"; 
   d="scan'208";a="313593409"
X-IronPort-AV: E=Sophos;i="5.77,319,1596499200"; 
   d="scan'208";a="437660167"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #linux #systemd Having issues building command line utilities: ntpq, timedatectl, and ntpstat into kernel image
Thread-Topic: [yocto] #yocto #linux #systemd Having issues building command
 line utilities: ntpq, timedatectl, and ntpstat into kernel image
Thread-Index: AdaVw3Ud/GE3osMmSPSA4Q+6JVX7YAA1bCIAAAA8poAACEpqwA==
Date: Tue, 29 Sep 2020 15:55:43 +0000
In-Reply-To: <20200929155243.rheisspm7ouqfu5j@qschulz>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16394C4FC785B364.7275@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


Is there documentation on how to set this up ?

-----Original Message-----
From: yocto@lists.yoctoproject.org [mailto:yocto@lists.yoctoproject.org] On=
 Behalf Of Quentin Schulz
Sent: Tuesday, September 29, 2020 11:53 AM
To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] #yocto #linux #systemd Having issues building command =
line utilities: ntpq, timedatectl, and ntpstat into kernel image

*** WARNING ***
EXTERNAL EMAIL -- This message originates from outside our organization.


Hi Steve,

On Tue, Sep 29, 2020 at 08:45:56AM -0700, Monsees, Steven C (US) via lists.=
yoctoproject.org wrote:
> I currently have "ntpq" building and installing correctly...
>=20
> Can someone tell me what it takes to get the "timedatectl" command utilit=
y built into Yocto kernel image ?
>=20
> I see it referenced in both :
>=20
> openembedded-core/meta/recipes-core/systemd/systemd_234.bb:=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ${bindir}/timedatectl \
> poky/meta/recipes-core/systemd/systemd_234.bb:=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 ${bindir}/timedatectl \
>=20

It comes with systemd. Use it as your init system and then you'll have the =
command.

Quentin
