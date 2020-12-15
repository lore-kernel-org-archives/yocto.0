Received: from smtp1.axis.com (smtp1.axis.com [195.60.68.17])
 by mx.groups.io with SMTP id smtpd.web12.5889.1608073680786795009
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Dec 2020 15:08:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@axis.com header.s=axis-central1 header.b=jHuon9Rv;
 spf=pass (domain: axis.com, ip: 195.60.68.17, mailfrom: peter.kjellerstedt@axis.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=axis.com; q=dns/txt; s=axis-central1; t=1608073681;
  x=1639609681;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-transfer-encoding:mime-version;
  bh=mD1kMfKvX/quVEFLngDp92K64Uk8aBIJj9bwm+kz04s=;
  b=jHuon9RvahRwN2us4+hw+3q6dvFagaq+EtxTyqk6d2JGmR8e56jue5sT
   7gsuI5Xp1oNsVXcdNfc9g7P9rya6MRe5NG3n1zvWbrvSG1Tnk2k5fb9uq
   T0sdxLeiFbkRR1ji4DJrfw/DFBJ1UDFxfP21eBYDPRS5qxLf4o+r7cpZw
   WgI4zF1C9jom0moLRANCXLvBttAo9Rlp8UlMBGfVyYZ4/9Ha61eCK4HGJ
   KxnAi53ROo5CcLpJWjUL7iy42k9/ypqegNq0CIN2pc5BhjkhlWBuYcceq
   VnziYna5ON8WVAYlExvLvdQWCM7KaxLqcoHGcH8KeNSzrt+ZXXLBVdsc7
   g==;
From: "Peter Kjellerstedt" <peter.kjellerstedt@axis.com>
To: Vineela <vineela.tummalapalli@intel.com>
CC: "'yocto@lists.yoctoproject.org'" <yocto@lists.yoctoproject.org>
Subject: Re: [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is Released
Thread-Topic: [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1) is
 Released
Thread-Index: AdbTG4rDkRnyxgcZTbap8GFLmyVcLAAGNySA
Date: Tue, 15 Dec 2020 23:07:58 +0000
Message-ID: <fcdceff7753a4f52911b8b3c61a35d76@XBOX03.axis.com>
References: <BYAPR11MB279089CF30BA5D2240349ECE88C60@BYAPR11MB2790.namprd11.prod.outlook.com>
In-Reply-To: <BYAPR11MB279089CF30BA5D2240349ECE88C60@BYAPR11MB2790.namprd11.prod.outlook.com>
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
> Behalf Of Vineela
> Sent: den 15 december 2020 22:13
> To: 'yocto-announce@lists.yoctoproject.org' <yocto-
> announce@lists.yoctoproject.org>; 'yocto@lists.yoctoproject.org'
> <yocto@lists.yoctoproject.org>; 'yocto-request@eclists.intel.com' <yocto-
> request@eclists.intel.com>
> Subject: [yocto] [ANNOUNCEMENT] Yocto Project 3.2.1 (gatesgarth-24.0.1)
> is Released
>=20
> Hello,
>=20
> We are pleased to announce the Yocto Project 3.2.1 (gatesgarth-24.0.1)
> Release is now available for download.
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/poky-gatesga=
rth-24.0.1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/poky-gatesgarth-24.0.1.=
tar.bz2
>=20
> A gpg signed version of these release notes is available at:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/RELEASENOTES
>=20
> Full Test Report:
>=20
> http://downloads.yoctoproject.org/releases/yocto/yocto-
> 3.2.1/testreport.txt
>=20
> Thank you for everyone's contributions to this release.
>=20
> Vineela Tummalapalli
> Yocto Project Build and Release
> vineela.tummalapalli@intel.com
>=20
>=20
> --------------------------
> yocto-3.2.1 Release Notes
> --------------------------
>=20
> --------------------------
>  Repositories/Downloads
> --------------------------

[cut]

> Repository Name: meta-gplv2
> Repository Location: https://git.yoctoproject.org/git/meta-gplv2
> Branch: gatesgarth
> Tag: yocto-3.2.1

The yocto-3.2.1 and gatesgarth-24.0.1 tags for meta-gplv2 have been incorre=
ctly=20
set on the dunfell branch rather than the gatesgarth branch. The Git revisi=
on=20
and tar balls below are correct though. Since the tags are signed I do now =
want=20
to modify them myself, so please correct them as soon as possible.

> Git Revision: 6e8e969590a22a729db1ff342de57f2fd5d02d43
> Release Artefact: meta-gplv2-gatesgarth-24.0.1
> sha: f43941fee62bccb5dee55809ab8c65d60eae82cf06cd05f3b150e93efaff86b6
> Download Locations:
> http://downloads.yoctoproject.org/releases/yocto/yocto-3.2.1/meta-gplv2-g=
atesgarth-24.0.1.tar.bz2
> http://mirrors.kernel.org/yocto/yocto/yocto-3.2.1/meta-gplv2-gatesgarth-2=
4.0.1.tar.bz2

//Peter
