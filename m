Received: from NAM02-SN1-obe.outbound.protection.outlook.com (NAM02-SN1-obe.outbound.protection.outlook.com [40.107.77.113])
 by mx.groups.io with SMTP id smtpd.web12.11142.1591105957284839583
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Jun 2020 06:52:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@melink.onmicrosoft.com header.s=selector2-melink-onmicrosoft-com header.b=KP1cF37y;
 spf=pass (domain: melinkcorp.com, ip: 40.107.77.113, mailfrom: bevenson@melinkcorp.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Sa1kpvYiU/ZZ4fQpOuDvtEnkMsySaoao4PhyH49nF+uVTxPVP0KNHIBm2GrauyC0+1LcmMB93UgOeZZedOwwOHHuohIv6PQbJoCcLwl4IzXVdya+NCaGVQHR+lJOJSzpm/TNlsQCW0Qx1JlxbGVBpzoe140d6EKf95qQc+T7J71y/DzBHs/Pkcfy5y8j/j6k4Cqjejta9N8Hhq3es07gkCTk9M6bV6v3honCdvbSkl6rvO/fsGdgpbbTXkEFktjAlRopXj+0/viD/XNV3dG313WK0oCmVUmGXveYQj6ARIjPM4bLPi2HZ8O3io4fX9yh2OUKKqcxrCcbMIF1iwhovg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IMqprKkv3pFs3NiZtPV0TmUl7nOUJyzGNc/M4XSFx0=;
 b=RN4bRO8GuVnQAd8qi6TtBH2CjwvysZooBBAevi5v37TPQmRJWZIC6PxDhmKZX2S1Ol4xf7r3V2nV6TkJJcomfSVNS37lvawJRlPwj0Q8vhI+miHkz4HaMn27uBLtNSeRd59ROhqKBF3QbisS3O5/GVsxLTgo0a8bzEpTP12sTxDGPbNYnmgu6uTTH2mWJdoRHZx/lWkaigoLYf2P+O4iKd/FPRsKdno2mzbvPvw1RUFvmChyUeBsP3iNMrsf8dMjizEMh1MYUfibmWjdJn7YGDYhGN2zw9nX8gzFhVg5yMMsKnQhIvdFzrVLx/ZYz3stSIh+oGV2c/atufQkmjuaCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=melinkcorp.com; dmarc=pass action=none
 header.from=melinkcorp.com; dkim=pass header.d=melinkcorp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Melink.onmicrosoft.com; s=selector2-Melink-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/IMqprKkv3pFs3NiZtPV0TmUl7nOUJyzGNc/M4XSFx0=;
 b=KP1cF37y6IPK2o5FfkopSBk/r1bx5H57wqIRLz2yQOJSuiTmlNZvk58fh253MJvtShRSChsJnR2DgsMQ3CrxKJUF2VHi0qslwjRX0p2kAbZd3L7Aqce4Cx/2OCIyyVWFag+2o3ikywq2vp0bD0tnEVPKg+QY1yxjq5heXl9RV+b2oIsiP48RcBijKlky9JKjDBURGEvPv4BbC2/7YTzoGfhOMQ4ZEQcGDFNfgd7uEDC1O7Noj6aZf2/Qb6QpVuVW3nWTYQtqPfaMt226bKM3VpjEVYcAAa3oYMczASWSTvx14qmPqvf8bd6Lz3YSpo3duRsqET6+6x7azcWXe1vabA==
Received: from MN2PR20MB2542.namprd20.prod.outlook.com (2603:10b6:208:125::20)
 by MN2PR20MB2592.namprd20.prod.outlook.com (2603:10b6:208:ec::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.17; Tue, 2 Jun
 2020 13:52:36 +0000
Received: from MN2PR20MB2542.namprd20.prod.outlook.com
 ([fe80::b1c1:9aaa:48c9:6225]) by MN2PR20MB2542.namprd20.prod.outlook.com
 ([fe80::b1c1:9aaa:48c9:6225%7]) with mapi id 15.20.3045.022; Tue, 2 Jun 2020
 13:52:36 +0000
From: "Bryan Evenson" <bevenson@melinkcorp.com>
To: Bryan Evenson <bevenson@melinkcorp.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cause for SIGSEGV
Thread-Topic: [yocto] Eclipse GDB setup issues; can't determine cause for
 SIGSEGV
Thread-Index: AdY4IU1c+KqgRe3YQl6zQlxTh54n9AAMxTngACGDy4A=
Date: Tue, 2 Jun 2020 13:52:36 +0000
Message-ID: 
 <MN2PR20MB254289B326D91A3401BECCB8BB8B0@MN2PR20MB2542.namprd20.prod.outlook.com>
References: <1614746D82793AEE.8494@lists.yoctoproject.org>
 <1614866B049B125B.10126@lists.yoctoproject.org>
In-Reply-To: <1614866B049B125B.10126@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-bromium-msgid: f2e300c3-eb13-403f-8d45-67dbab723d1f
authentication-results: melinkcorp.com; dkim=none (message not signed)
 header.d=none;melinkcorp.com; dmarc=none action=none
 header.from=melinkcorp.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fd8a798b-4ff6-4af8-4a39-08d806fc34e0
x-ms-traffictypediagnostic: MN2PR20MB2592:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <MN2PR20MB2592074D68D4D94460286B56BB8B0@MN2PR20MB2592.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0422860ED4
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 motGboVEuibRXsaqL0OYmeTf5cUXPeA4whmVk35y2BZBix3TyPw/dfKJvKE1BYcbXfrFVT3+obIH/kcCUFtujc4BM5FLBf3PSpBsVqd+6e1p/Hct83zUzuMsBvu7VP7k83XtJ6HKK2R/6tuu5eni0W8WuO8YlTf0DSSq77mfta9BBxZ+KbLe4ClN9M2xbJmeBS35PMq2oH3R+MXRpvXOv+/DM0mzvkDXrucee81AewwDBI0il7juYCLhV7Toly5+8551vSftsrYdtzWwBFU6cP0ReYCmIBfcJx/tjUXiXKQA6xWBjzG6wHr5i+ZCxKeEEXRPXVJcsY72fe/jqddROQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR20MB2542.namprd20.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(396003)(366004)(346002)(376002)(136003)(39840400004)(8676002)(33656002)(26005)(6506007)(76116006)(7696005)(316002)(66446008)(66946007)(66476007)(66556008)(5660300002)(8936002)(64756008)(71200400001)(110136005)(9686003)(55016002)(53546011)(478600001)(83380400001)(186003)(52536014)(86362001)(2906002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 2OroY96LydskPUBG5agKIKzvRojmHN+eTV+fH1WfM8gaehl+G7VpEcjt8Rg+GX1Yys/82nXgohP4gwTfjgVOeycLwX44/ol/eXEHxSWCFIIbrJNiFxDJeBVLpOKC8vs5gx9plsseBjCptZ54DBqvjw97YvW9Ldt1mIjqoMhhNnln+CmH8T63CuS/EDTy2sVPgjdeptFdVJq4in0ud33H82eTlVaktz7vr1tbRzcxaihr2qawXj0roryp7Lz11czoyWikBEqtDiS7ZrzGVyIb1mT613WgtfGzKF43kcfJQIjTsU9dP4/w5/2jCLr6wIEpoRYzDtJAgnpiCPIGg7uEleg7RYU24tikvRbTLxHRDE1t3SdTY2BUbysfecgtDrIqUByTGxBo/GnWWWSlhCGG4zdhiu9FTZ/aBS+posaWTyN3qH+BPKx9abbbs05J5SpJtUoLmP6M6x4ujYNQv+sKd9h6+VNzPGsRogiACCCPk0U=
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd8a798b-4ff6-4af8-4a39-08d806fc34e0
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2020 13:52:36.0655
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yp3liZX+NBre1HBZEnha8n851CN6EWanF0/jErMCLYfp79B1EJm+JKWRHr+n911Zcf4tNoZv6UmIg9+w2hLgpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB2592
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

All,


> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Bryan Evenson via lists.yoctoproject.org
> Sent: Monday, June 1, 2020 4:46 PM
> To: Bryan Evenson <bevenson@melinkcorp.com>;
> yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Eclipse GDB setup issues; can't determine cause for
> SIGSEGV
>=20
> All,
>=20
> > -----Original Message-----
> > From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> > Behalf Of Bryan Evenson via lists.yoctoproject.org
> > Sent: Monday, June 1, 2020 11:16 AM
> > To: yocto@lists.yoctoproject.org
> > Subject: [yocto] Eclipse GDB setup issues; can't determine cause for
> SIGSEGV
> >
> > All,
> >
> > I have a AT91SAM9G25 system that has been idle for a couple years
> (running
> > morty, yocto version 2.2.1) and I am working on updating to the latest
> Yocto
> > production branch.  Before I get there, I'm trying to confirm the old s=
etup
> > and I'm having problems with remote debugging.  I know there have been
> > changes since yocto version 2.7 for debugging support, so I want to mak=
e
> > sure I can get the old setup to work first prior to changing everything=
.  I'm
> > looking for assistance in tracking down my debug issues.
> >
> > My stable production image is based off of core-image-minimal, with a f=
ew
> > additional packages for our proprietary applications (proprietary
> applications
> > are written in C).  I also have a development image, based off of our
> > production image, with the following additions:
> >
> > IMAGE_FEATURES +=3D "package-management dev-pkgs eclipse-debug
> allow-
> > empty-password empty-root-password"
> >
> > IMAGE_INSTALL +=3D " \
> >     #same additional packages as production image  \
> >     #"-dbg" version of proprietary applications \
> >     gdbserver \
> > "
> > # Strip python from the image to reduce the image size
> > PACKAGE_EXCLUDE =3D "python"
> >
> > I have the Eclipse Yocto plugin installed and it is setup to use the SD=
K that I
> > have built based on the development image.  I've confirmed that I can s=
tart
> a
> > debug session on one of our proprietary applications.  I can set breakp=
oints
> > and run the debugger.  However, the debugger always stops at the first =
call
> > to uuid_compare with a  SIGSEGV.  The last line in the call stack state=
s
> > "<symbol is not available> 0x00000000".  From my understanding, the sta=
ck
> > pointer is getting set to NULL when uuid_compare is getting called.  If=
 I stop
> > the debugger and just run the application on the hardware, the applicat=
ion
> > runs without errors.  I have confirmed with syslog messages that I do n=
ot
> > have the same NULL stack pointer issue when I run the application outsi=
de
> of
> > the debugger.
> >
> > Any suggestions on where to start looking?  I don't see any obvious
> possible
> > causes and I don't know where to start looking for the problem.
> >
>=20
> On a whim, I changed in my code:
>     if(uuid_compare(uuid1, uuid2) =3D=3D 0)
>=20
> To:
>     If(memcmp(uuid1, uuid2, 16) =3D=3D 0)
>=20
> After this change the problematic line of code worked just fine.  The
> debugger worked fine until I got to the next spot in my code that called
> uuid_compare.  At the next call to uuid_compare I got the same SIGSEGV
> error I had before.  Something is clearly a problem with calling uuid_com=
pare.
> However, I'm using several other functions from the uuid library
> (uuid_is_null, uuid_parse, uuid_unparse for a few) and none of them are
> causing problems.  I don't think it's a problem with the input parameters
> because I'm passing the same UUIDs to memcomp as I did to uuid_compare.
> Has anyone ever seen only one function from a library cause problems like
> this?

I don't know if this is related, but I noticed that the debugger cannot ste=
p into any library functions.  For example, I tried stepping into strncpy, =
and the debugger stepped over the function call.  I switched to assembly in=
struction stepping mode, then when I stepped into strncpy I received the me=
ssage "No source available for strncpy@plt".  I continued single stepping a=
nd was able to step through all the assembly code for strncpy.  I then inst=
ruction single stepped into uuid_compare, and I was able to single step wit=
hout issue until I got to the following instruction:
    bx r12
When this instruction is called, r12 is 0.  I'm a little confused why this =
library function call is failing in this manner (when all the input paramet=
ers to uuid_compare are valid), and I'm not sure why I can't source step th=
rough any library functions.  If anyone has any suggestions on either issue=
, please let me know.

Thanks,
Bryan

>=20
> > Thanks,
> > Bryan

