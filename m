Received: from mail1.xn--80adja5bqm.su (mail1.xn--80adja5bqm.su [45.62.210.217])
 by mx.groups.io with SMTP id smtpd.web11.1100.1588290400535426719
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 Apr 2020 16:46:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: mail1.xn--80adja5bqm.su, ip: 45.62.210.217, mailfrom: jin@mail1.xn--80adja5bqm.su)
Received: by mail1.xn--80adja5bqm.su (Postfix, from userid 1000)
	id 2CC6420C5539; Thu, 30 Apr 2020 17:47:43 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail1.xn--80adja5bqm.su 2CC6420C5539
Date: Thu, 30 Apr 2020 17:47:43 +0200
From: "Sergey Bostandzhyan" <jin@mediatomb.cc>
To: yocto@lists.yoctoproject.org
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] [WIC] Wic creates spurious partition
Message-Id: <20200430154743.GB14651@xn--80adja5bqm.su>
References: <eafa7325-fd3f-9fce-8cf5-d22a6bad9452@ibeeto.com>
MIME-Version: 1.0
In-Reply-To: <eafa7325-fd3f-9fce-8cf5-d22a6bad9452@ibeeto.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Rudi,

On Thu, Apr 30, 2020 at 04:36:39PM -0700, Rudolf J Streif wrote:
> bootloader --ptable msdos
>
>=20
> That should create 7 partitions of which 5 have a file system. However,
> when I flash the emmc with it and boot the device:


did you mean --ptable gpt?

> /dev/mmcblk1p4=A0=A0=A0=A0=A0 1392640 4771841 3379202=A0 1.6G=A0 f W95 E=
xt'd (LBA)
> /dev/mmcblk1p5=A0=A0=A0=A0=A0 1392641 2723840 1331200=A0 650M 83 Linux
> /dev/mmcblk1p6=A0=A0=A0=A0=A0 2723842 4771841 2048000 1000M 83 Linux

In msdos layout you can only have a limited number of primary partitions,=
=20
anything exceeding that will go into extended partitions which you see
as "overlapping" here, in the above paste p5 and p6 are actually within th=
e=20
extended p4 (hinted by W95 Ext'd)

Kind regards,
Jin





>=20

