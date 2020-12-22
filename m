Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web10.12139.1608647359284563121
 for <yocto@lists.yoctoproject.org>;
 Tue, 22 Dec 2020 06:29:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=LnwHFAB+;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1608647359;
  x=1640183359;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=B1PsEyMqQBbgBaumThZXf//9MQpJRnuBmPQIAwdMepQ=;
  b=LnwHFAB+rjKJxbWtu7FpIGD3PvFI4YDua5Kh/hZ115iSDNUToBCUFD0N
   DSXn4NTjugmlxpB4NoiVWd51n7keWAUsAdRiuzSTScoR7+zqUQp0TvIIE
   jDYCrbqIw9BdDqpDPNU+QMRsmLH9PdHKRRWTJ86swe88m8Ji7dqbKCNNL
   zvxvbP5Aph7mQdo6Sy4vrycwvFojS+WY9tMkCgFno3tfm+Bm6Srj2/Yrl
   4xmMw3ZZAR552zo/NOMstTk6RIdEUPS8MIB7FSDXMwIV+pb0LecKkMgE2
   1P2k7gH5JL8dnseYBYQ9veIP4TxsJzlVtY8SU8IlLHM5EJkWYjgKc6zUH
   A==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Vineela <vineela.tummalapalli@intel.com>
CC: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is Released
Thread-Topic: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1)
 is Released
Thread-Index: AdbTG4rDkRnyxgcZTbap8GFLmyVcLAAGNySAAU6DG2A=
Date: Tue, 22 Dec 2020 14:29:16 +0000
Message-ID: <80315c352d4d41cbb892b9ca033df9fb@XBOX03.axis.com>
References: <BYAPR11MB279089CF30BA5D2240349ECE88C60@BYAPR11MB2790.namprd11.prod.outlook.com>
 <1651067E60B88465.19655@lists.yoctoproject.org>
In-Reply-To: <1651067E60B88465.19655@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Peter Kjellerstedt
> Sent: den 16 december 2020 00:08
> To: Vineela <vineela.tummalapalli@intel.com>
> Cc: 'yocto@lists.yoctoproject.org' <yocto@lists.yoctoproject.org>
> Subject: Re: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-
> 24.0.1) is Released
>=20
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Vineela
> > Sent: den 15 december 2020 22:13
> > To: 'yocto-announce@lists.yoctoproject.org' <yocto-
> > announce@lists.yoctoproject.org>; 'yocto@lists.yoctoproject.org'
> > <yocto@lists.yoctoproject.org>; 'yocto-request@eclists.intel.com'
> <yocto-
> > request@eclists.intel.com>
> > Subject: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1)
> > is Released
> >
> > Hello,
> >
> > We are pleased to announce the Yocto Project 3.2.1 (gatesgarth-24.0.1)
> > Release is now available for download.
> >
> > http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/poky-
> gatesgarth-24.0.1.tar.bz2
> > http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/poky-gatesgarth-
> 24.0.1.tar.bz2
> >
> > A gpg signed version of these release notes is available at:
> >
> > http://downloads.yoctoproject.org/releases/yocto/yocto-
> 3.2.1/RELEASENOTES
> >
> > Full Test Report:
> >
> > http://downloads.yoctoproject.org/releases/yocto/yocto-
> > 3.2.1/testreport.txt
> >
> > Thank you for everyone's contributions to this release.
> >
> > Vineela Tummalapalli
> > Yocto Project Build and Release
> > vineela.tummalapalli@intel.com
> >
> >
> > --------------------------
> > yocto-3.2.1 Release Notes
> > --------------------------
> >
> > --------------------------
> >  Repositories/Downloads
> > --------------------------
>=20
> [cut]
>=20
> > Repository Name: meta-gplv2
> > Repository Location: https://git.yoctoproject.org/git/meta-gplv2
> > Branch: gatesgarth
> > Tag: yocto-3.2.1
>=20
> The yocto-3.2.1 and gatesgarth-24.0.1 tags for meta-gplv2 have been
> incorrectly set on the dunfell branch rather than the gatesgarth=20
> branch. The Git revision and tar balls below are correct though.=20
> Since the tags are signed I do not want to modify them myself, so=20
> please correct them as soon as possible.
>=20
> > Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> > Release Artefact: meta-gplv2-gatesgarth-24.0.1
> > sha: f43941fee62bccb5dee55809ab8c65d60eae82cf06cd05f3b150e93efaff86b6
> > Download Locations:
> > http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/meta-gplv2=
-gatesgarth-24.0.1.tar.bz2
> > http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/meta-gplv2-gatesgarth=
-24.0.1.tar.bz2
>=20
> //Peter

*ping* The tags in meta-gplv2 are still incorrect.

//Peter

