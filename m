Received: from esa4.bmw.c3s2.iphmx.com (esa4.bmw.c3s2.iphmx.com [68.232.139.62])
 by mx.groups.io with SMTP id smtpd.web10.802.1582151559382037935
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 14:32:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=aePT1SRt;
 spf=pass (domain: bmw.de, ip: 68.232.139.62, mailfrom: prvs=311c70376=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582151559; x=1613687559;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=M7LEJiXXXUdFRQIetE26ljTn/GxacqQYS5MHSWU2w2U=;
  b=aePT1SRtDjFyh+JmQbwXtmmDBkGxM2xWAFDaPD2mpemf65XoFywyE7h7
   KPBLs3XNgtUYCeuPZP+Q+mOCLrOit3eFUtg6/fTENTFXwf1lmaMmSgMIp
   y2425OFtsiFm29HnHJSs2GaTN8QcH/8vNi9ZfPcopjroPIQL4P3/2fvmE
   g=;
IronPort-SDR: UIoczILD7OqIZP/PBDiWZTyz2Uor99wFg81dHDjx0sBJIBzsC2OuMb9muqeoWfiU+rkYEePy+X
 TR8K3S61Ih7P4C1dkKoG1+w2GaVfmuLFvEsjuzywJRW4N2hAqTB3SZIbwC2pfmN9/xPVNXfNFp
 z2NBkl+A7juhe8X2cFddPWsLkwfLVG2wtxWCN+WE6DiyIXB/WU40v6DhKo6d9q7wAcfEaKpmg1
 rh3kQOkdi273j4yJ1+kiA1ArxTA+ZajmFmvTzNG4AwISsISk2SGJ5wZX05WnJpNxyw7lMBkU0Y
 In4=
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa4.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Feb 2020 10:06:30 +0100
Received: from esabb5.muc ([160.50.100.47])  by esagw6.muc with ESMTP/TLS;
 18 Feb 2020 10:06:29 +0100
Received: from smucm10l.bmwgroup.net (HELO smucm10l.europe.bmw.corp) ([160.48.96.48])
 by esabb5.muc with ESMTP/TLS; 18 Feb 2020 10:06:29 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10l.europe.bmw.corp
 (160.48.96.48) with Microsoft SMTP Server (TLS;
 Tue, 18 Feb 2020 10:06:29 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 18 Feb 2020 10:06:28 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <amayajindal786@gmail.com>
CC: <alex.kanavin@gmail.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
Thread-Topic: [yocto] Issue while adding the support for TLS1.3 in existing
 krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
Thread-Index: AQHV5iy16BcR4YLsPEuDT4ipRDmM9qgggQ2AgAATfPKAAAPCAA==
Date: Tue, 18 Feb 2020 09:06:28 +0000
Message-ID: <20200218090628.GC104502@korppu>
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
 <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
 <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com>
In-Reply-To: <-rwstc27cdt90-auuyo41rs8jtvzm6syoph8qyesn3ii-mwuzy2-dgobygumtd4d-75yhts2n0qmc-f0uc4f-r9fqcx4aa7a041vjua4rn8a56jf43y-as3l4g-2l39almml2bd3opuod-lges1-2ywa6z.1582012225122@email.android.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <6B28A6B8699E044E854FB4C824AB2A12@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 18, 2020 at 01:20:25PM +0530, amaya jindal wrote:
>    Thanks for your prompt reply. But is not there any way similar to add
>    support for TLS1.3 instead of moving to new yocto releases

openssl is tricky to update and requires backporting fixes for many, many r=
ecipes
to get builds passing etc. Depending on project size, it may be possible
to update only those components which you use, e.g. backport commits from
poky master or release branches like warrior. The number of backported chan=
ges
will be large. I've ported openssl 1.1.1d patches to yocto 2.5 sumo but it =
wasn't
pretty. A strategy with regular yocto updates is much better and forces you
to think of your dependencies and patches much harder.

Hope this helps,

-Mikko=
