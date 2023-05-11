Return-Path: <dwatkins@sierrawireless.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 162A4C77B7F
	for <webhook@archiver.kernel.org>; Thu, 11 May 2023 19:24:48 +0000 (UTC)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (NAM10-BN7-obe.outbound.protection.outlook.com [40.107.92.72])
 by mx.groups.io with SMTP id smtpd.web10.5941.1683833083483613987
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 May 2023 12:24:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=o/q5eMaB;
 spf=pass (domain: sierrawireless.com, ip: 40.107.92.72, mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f1JRBCFlrzCCNykjfaLvh9tUgMzxXGOhKaIkW0jpqNaMbZ4ZBMjVOjxqVieaaBZd5SkrtqLhK8nXPqfZrojdyMqVghfJ2cv+46i0KG5T12OXQE//ogqriOfJERqXcCBDVjsFGLZVEotKEvlpDkPw4cDGgFZ1fQov2bdfzx2xEfzUaJZ/aVappM2ClD9gXSrxZkdFpPEnM1BF8AiY3TF5iuYT7vc1s2UDcrIvYWW9FQg44cAOXzBupD2dFmE68bdttFxgwfBncF0dFHTrhVeiI3Y3eFu8nxpyX8HgtrP1QI8UMmYxBV2VzyCEzdqFQoxkjPgcHISAM2+AZTnnkww+HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBpo3fxOvCoCCwC7AFFGaTbDgFb8UxARINGJ9mfN22A=;
 b=kTmfyExdodKA+2V2vlemxX5GQD4qzXEf7vkwo48sl1t0WjF97wv4a4UxOulVqcUM7tQCyhBYpIYGJ2lE6pTg8Lgv0WrOrWVWK25YQutjS5OsUldXwfmM995MDn3gMSV04bmouaDFJQ5DHh9s74neWkHWpz5Vs5GG5JqZfsrBzx1uDue8rzSf94VTlLknJ83IXKSi2MSUL/wLAqF8t8kyucn4Fj5n7L9+hyCNm7/wbAP4f58L9RQPLHOgI5gzqKIGOTtbImFh0sKggz72SMrIPJDPRHnIj1cqwD4rpxcfLrjv5BBvt4TgFdRljMkGpw8LDnNFXrwZDp5o/jSUrWug1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qBpo3fxOvCoCCwC7AFFGaTbDgFb8UxARINGJ9mfN22A=;
 b=o/q5eMaBqqcXE4saUuIiNyTGjxwfTd1X5gSWGEEAO9Jh/D0JGpBL7V+FQijuo/ZnQeEBX141XKVYF49i0YbT3WZFioHvVdnb5JyDOW3L4QgHifxxXx7Dv2g2A/muRSMKp+uC0/WorfJxK8DUrqC7MMDYUZ1rLmVujSmXviGfYWk=
Received: from CO6PR02MB8740.namprd02.prod.outlook.com (2603:10b6:303:137::20)
 by DM6PR02MB6541.namprd02.prod.outlook.com (2603:10b6:5:20b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.21; Thu, 11 May
 2023 19:24:38 +0000
Received: from CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::e1c2:cc8b:741e:6350]) by CO6PR02MB8740.namprd02.prod.outlook.com
 ([fe80::e1c2:cc8b:741e:6350%6]) with mapi id 15.20.6387.022; Thu, 11 May 2023
 19:24:38 +0000
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Problem Building python3-cryptography in kirkstone + chirpstack
 mixins - building for Layerscape
Thread-Topic: Problem Building python3-cryptography in kirkstone + chirpstack
 mixins - building for Layerscape
Thread-Index: AQHZhDoKVA+tXB+/z0ycZmlYXRKHuQ==
Date: Thu, 11 May 2023 19:24:37 +0000
Message-ID: 
 <CO6PR02MB87402FB9AF7A6DE878855D77B2749@CO6PR02MB8740.namprd02.prod.outlook.com>
Accept-Language: en-CA, en-US
Content-Language: en-CA
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO6PR02MB8740:EE_|DM6PR02MB6541:EE_
x-ms-office365-filtering-correlation-id: 5fde5124-368b-477e-619c-08db52555c68
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 arqy7hb/iXK50dY0JxB3lpj8PzkOXMJfAK91MmUw99uQmvzDZjKFIMvLtwqB5vUUeRNcE/J4By4jbXGEK3WkB9+c1jaHsfjvDWj15lQl7yQ+LzApkBTn15SovEcJqEVl0WFPlVEd3vXHwtZbLQK9O6dPuoEHWLEp3cmdEh54BL716pG7tjCsQxLJFA5Uu3dm5pi/ZQbt6yCGFVJ9AyXz1Bh7DkV0XOoq+UMTd0yc0horY2BCU6UpBx+xYM7t4SVpMWB19UXbhAy1dBjJ7FDHJmWOoamrcCmLTYhSo/6vmU+45GcyPpUcsq9N526dkTCGEeEb2tpuWz/FFbVcFmB0Y3d23lQ3r2SyF1ILntkjyST46Wfp2jFb4GZyMZNIKm3UnWWlWXYdBOi2vzcdID4kYNm0SWM5TPyTpt1FpRIgBDkGlaavrTV+z26vDUgxFl8MAL3HstUNK5eEMgipzNoocXDbdHtaKrSE62TnUHBDL0PgdLRP3kw53lNxrGKYiR833XYmZi3l7/KGAzFzLRFlRgVw0dQhYwoSsnm9aLnPg/p/9hbnyXWQ8NOZzKsmHMzxxZit2pruggj+//rxDUEHN0CNTkse/77EI98ymI0K6/g=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO6PR02MB8740.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(376002)(136003)(366004)(396003)(39860400002)(346002)(451199021)(6506007)(966005)(7696005)(9686003)(5660300002)(52536014)(55016003)(8936002)(9326002)(8676002)(478600001)(6916009)(86362001)(64756008)(66476007)(66556008)(66946007)(66446008)(76116006)(40140700001)(33656002)(38070700005)(38100700002)(166002)(122000001)(2906002)(41300700001)(30864003)(316002)(83380400001)(71200400001)(186003)(579004)(559001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?lrTXBtVUU4J0DAHw72dyZwpHCVwnDAwByfYpmbsZS4Kn5pkFqqxJPkNq?=
 =?Windows-1252?Q?12UUiuSTe05WL/MhfGZcviz6QLG2T4h+usUJpTjUC4scw/zebDqj4C3c?=
 =?Windows-1252?Q?B6BeybincIs9h2TV01fj3VA14ltcFfrZEkiVUk2kG5BnolydBoD8OJpV?=
 =?Windows-1252?Q?+82rGvBSIbRhmBfjIQhY7JEaKN5IlZfY6ihDUo3DlgDg4p4vj17T1BYy?=
 =?Windows-1252?Q?0SgoqlV4QCjpFTU99S6rQOD70f61J1Y9jbI2zIwkrQyyn8+c83p4xXqb?=
 =?Windows-1252?Q?QR9ydhyjymMfeUTu/O71XKepJ4BqE5OCfSoTAnTW5L4fzebrvPvlMTD1?=
 =?Windows-1252?Q?GP9oppwTtscj8k+p4sN0teuSH60Osd3zFON83R72gbn5r6hM2DgmZNEr?=
 =?Windows-1252?Q?+eXeASOJGNsfv+UBpsj+ftmZFcp1BNvmksxFdq2qx8JvGYOUszuwMoPr?=
 =?Windows-1252?Q?9/TWyPYN6kpAnAa+CeJvEyU/H5OfX/BD2l+q3U0Zo6E1EkrkJuC+hB9I?=
 =?Windows-1252?Q?h4Vjd8Myc/n2rFz2PCFJ6afHocFMsnGK2Ayt95BvEccPRcVcgSw9QW6m?=
 =?Windows-1252?Q?Awp3Is5NCPFJSARIqX7kKM3ZogkPUDoeQOl0jUzWGuH1ZCCpgbtCNpeK?=
 =?Windows-1252?Q?9Ov+AAO5VivYNiB5v+vAA2Bvtrzsx5xMs3EflcRRY5sA1mwq4tabuZ/A?=
 =?Windows-1252?Q?AYtO0GcB5EI1Pv3IxAjieE3pYJptkG6xrn0MBTWDwHxKeZIQ6qBI5pX/?=
 =?Windows-1252?Q?GFsY3meAV0sDksEqU1eIwfTtyPehcOAZDVQHpBcWVXtnDGJEWeoCn9Ve?=
 =?Windows-1252?Q?Eo+Lf3kp8gxpBtiMwwfsnsTtYm3YH09ZtItW0ZUBh01JCLe1a0raorpF?=
 =?Windows-1252?Q?353nEJLgu54fauXJZS2T+T6AVIqP9enkYg6ubo3Ac1QdKQIbeBWDE1yN?=
 =?Windows-1252?Q?FHaxaqko9gXx5/eXc4FNiap1KP76Kfh+vnphzzb2rrKopWHElYbsxMQC?=
 =?Windows-1252?Q?eWLXpMuSzSNA8ncyGkJRy3OijT4gYXZcI44fFBRhezAt4p1ldEUDt5yq?=
 =?Windows-1252?Q?MmZrBAfJVv47qt/m5I2Y9Dfw8PUVLi+BLkSjDBSuupsGuKifxXJGrG1+?=
 =?Windows-1252?Q?Bwywpy2GEQc6QReglfa62QRgXCqtrB1HsubzQH/JcVxYOdF55LFmj/Y9?=
 =?Windows-1252?Q?6Hv9Mz+rBj63L2+dwChLIKVZ2ByRxiqKZ9R+Od54VJI4MnOOTfdf2qGN?=
 =?Windows-1252?Q?Y1Km19Yzs4tcP90Qx0QnR+mqG47LFJXzyeowkXlEVA/EgKNVtnJ1iQ8p?=
 =?Windows-1252?Q?ZHyEcQlhaem69/gLDcg/7ZJZ06gOpxliDrBb38323AlNMMiWglkPX/UA?=
 =?Windows-1252?Q?eF58e9tXhBkFVh+1HWO8uzJlrocXwUc3c/HaNrEgbJev1eriqDEKcKmQ?=
 =?Windows-1252?Q?LtTeIq/bc9+01KyTuZ2R+gmqoyy/emYy7rRW2agtJ5XbJmCzSxWfN7bW?=
 =?Windows-1252?Q?q8rOO8Ff7S+ueNOgSTzdSfMHl971VxsYo7OmN2LXKY7FohmrJjM0Pwxs?=
 =?Windows-1252?Q?MKkU9kVDj2S31BRl5+wfEpbUSoHV+FHbP2gt+cszfQRxG9ePZp+/Xa1U?=
 =?Windows-1252?Q?t6U9vNL0U6fmeC7rF4+Rr/xDYxtlDSb6YMeXDwWHqiygAcfTTrMnqXt+?=
 =?Windows-1252?Q?V1sVcdn1Fa40rmvOM0kJKiPBRrrr9po9tFxW3s+GpN5wJyntTXHgtJ0h?=
 =?Windows-1252?Q?4Z4cUUhSHvmJAsdpS0XOotAmaE/csMDQ1IEomwVTxv5UYmjubshVvlwM?=
 =?Windows-1252?Q?pV422jWvckhykhC33VuqKQwF4js=3D?=
Content-Type: multipart/alternative;
	boundary="_000_CO6PR02MB87402FB9AF7A6DE878855D77B2749CO6PR02MB8740namp_"
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO6PR02MB8740.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fde5124-368b-477e-619c-08db52555c68
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 May 2023 19:24:37.8983
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G1zu4VgVYd5XhQ4u0Eq8M/OfLG2DWcYcf5kXTefU0b5PvKI62oCYkcmidBUklX7r+utJChzSqeI9mbf3zWZGcc7QYPT13kgcoKdP1KPXajI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6541
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 May 2023 19:24:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59997

--_000_CO6PR02MB87402FB9AF7A6DE878855D77B2749CO6PR02MB8740namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing a challenge related to getting LoRa chirpstack to build into a =
Yocto based image.

The Yocto based image is part of a project based on =91kirkstone=92 to buil=
d for a Layerscape LS1021A SoC (Freescale/NXP).  This normally builds witho=
ut issue, including to build the python3-cryptography package.

I then added meta-clang (kirkstone) to it and integrated chunks of chirpsta=
ck-gateway-os into it as a layer (I just named it meta-lorawan).  Chirpstac=
k-gateway-os is an openembedded based project that uses a different scheme =
than Yocto.  It has a layer (meta) that assembles packages together, with a=
 handful of dependent openembedded layers integrated as layers using git su=
bmodules.

It appears that chirpstack is based on kirkstone, but there are components =
that appear to be mixins from newer branches.  In fact the mixins from rust=
/cargo appear to be an intermediate version from between Yocto releases.  I=
t includes upgrades to handle =93crates=94 better than implemented in kirks=
tone.  I had to copy / paste chunks in because their layer.conf has too man=
y platform specific directives in it.

Chirpstack-gateway-os normally builds an image for rPi.  I want to build fo=
r Layerscape (and later, i.MX).

I have been able to get all the individual packages copied in from chirpsta=
ck to build OK.

My problem is that I have python3-cryptography pulled in as a dependency in=
 my system and have not yet succeeded to get it to build.  I don=92t think =
they build it in chirpstack (or it work ok building for rPi).

At this point my suppositions are:

  1.  Everything is OK in kirkstone (as I have seen).
  2.  I presume everything is ok in the latest released Yocto.
  3.  I can only presume that chirpstack-gateway-os doesn=92t need python3-=
cryptography so they didn=92t bother to check if it built (or it is all ok =
for rPi).

The error appears to be related to compiler tuples so maybe there is a conf=
lict between what was mixin as backports versus Layerscape arch/board suppo=
rt (that is in sync with kirkstone).

I don=92t know much about working with rust and especially how it builds py=
thon modules or selects compilers.  I am hoping that someone can point me i=
n the right direction.

Below is the error=85

dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ bitbake pyt=
hon3-cryptography
Loading cache: 100% |######################################################=
###########################################################################=
####################################################| Time: 0:00:00
Loaded 4867 entries from dependency cache.
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-opt-=
apps/webportal/opt-wpupdated_extsrc.bb: distutils-common-base.bbclass is de=
precated, please use setuptools3-base.bbclass insteadETA:  --:--:--
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-core=
/yaml/libomgyaml_extsrc.bb: distutils-common-base.bbclass is deprecated, pl=
ease use setuptools3-base.bbclass instead
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-opt-=
apps/ibeacon/opt-ibeacon_extsrc.bb: distutils-common-base.bbclass is deprec=
ated, please use setuptools3-base.bbclass instead
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-core=
/yaml/libyamlx_extsrc.bb: distutils-common-base.bbclass is deprecated, plea=
se use setuptools3-base.bbclass instead
Parsing recipes: 100% |####################################################=
###########################################################################=
####################################################| Time: 0:00:01
Parsing of 3290 .bb files complete (3281 cached, 9 parsed). 4876 targets, 2=
07 skipped, 0 masked, 0 errors.
WARNING: No recipes in default available for:
  /home/dwatkins/workspace/mgos/voyager1/meta-mg90-bsp/recipes-kernel/firmw=
are/linux-firmware_git.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_4.19.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_5.4.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-mgos/recipes=
-support/shadow/shadow_4.8.1.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-openssl-fips=
/recipes-support/openssl/openssl_1.0.2%.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/che=
rrypy/cherrypy-python_%.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.6.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.8.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.9.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/vim=
/vim_8.%.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.6.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.7.bbappend
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "2.0.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "mg90"
DISTRO               =3D "mgos"
DISTRO_VERSION       =3D "4.0.9"
TUNE_FEATURES        =3D "arm vfp cortexa7 neon callconvention-hard"
TARGET_FPU           =3D "hard"
meta-mgos-core       =3D "main:38ea2f74e0521b9b63322305264e59cac80e60c2"
meta-mgos-release    =3D "main:8cb2e615f74dac237167b5219a453bd3636c3407"
meta-mg90-bsp        =3D "main:28dc5cdca236cc6792107923b2dd030bd8b42f02"
meta-mgos-airprime   =3D "HEAD:2a21c0b304372dbc36174d0615177287d2af0b3c"
meta-mgos
meta-daisy-cf
meta-dunfell-cf
meta-openssl-fips
meta-sigma
meta-lorawan         =3D "main:8eb3b0d1a5c9f94237bfadd5600859ade31dd69f"
meta
meta-poky
meta-yocto-bsp       =3D "HEAD:75239ddd8d67c00139c6e88c1c2a790b471b12c5"
meta-oe
meta-networking
meta-python
meta-perl            =3D "HEAD:df452d9d98659b49888fa8a5428a0a8bd3e3aaec"
meta-security
meta-integrity
meta-security-compliance
meta-security-isafw  =3D "HEAD:cc20e2af2ae1c74e306f6c039c4963457c4cbd0f"
meta-freescale       =3D "HEAD:82cbf4e5adac1017adc1e4a2ce056c57b3148ba0"
meta-java            =3D "HEAD:8bf79fc2002bb83c6439d25bb63e4206894c2d10"
meta-clang           =3D "HEAD:68ec449f97ffa58d835163581fc72afcb08f027b"
workspace            =3D "<unknown>:<unknown>"

WARNING: /home/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta/re=
cipes-connectivity/openssl/openssl_3.0.8.bb:do_unpack is tainted from a for=
ced run                                             | ETA:  0:00:00
Initialising tasks: 100% |#################################################=
###########################################################################=
####################################################| Time: 0:00:00
Sstate summary: Wanted 30 Local 25 Mirrors 0 Missed 5 Current 243 (83% matc=
h, 98% complete)
NOTE: Executing Tasks
ERROR: python3-cryptography-39.0.2-r0 do_compile: 'python3 setup.py bdist_w=
heel ' execution failed.
ERROR: python3-cryptography-39.0.2-r0 do_compile: ExecutionError('/home/dwa=
tkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnu=
eabi/python3-cryptography/39.0.2-r0/temp/run.do_compile.2705', 1, None, Non=
e)
ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/voyager1=
/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.=
0.2-r0/temp/log.do_compile.2705
Log data follows:
| DEBUG: Executing shell function do_compile
| running bdist_wheel
| running build
| running build_py
| running egg_info
| writing src/cryptography.egg-info/PKG-INFO
| writing dependency_links to src/cryptography.egg-info/dependency_links.tx=
t
| writing requirements to src/cryptography.egg-info/requires.txt
| writing top-level names to src/cryptography.egg-info/top_level.txt
| listing git files failed - pretending there aren't any
| reading manifest file 'src/cryptography.egg-info/SOURCES.txt'
| reading manifest template 'MANIFEST.in'
| no previously-included directories found matching 'docs/_build'
| warning: no previously-included files found matching 'vectors'
| warning: no previously-included files matching '*' found under directory =
'vectors'
| warning: no previously-included files matching '*' found under directory =
'.github'
| warning: no previously-included files found matching 'release.py'
| warning: no previously-included files found matching '.readthedocs.yml'
| warning: no previously-included files found matching 'ci-constraints-requ=
irements.txt'
| warning: no previously-included files found matching 'tox.ini'
| warning: no previously-included files found matching 'mypy.ini'
| adding license file 'LICENSE'
| adding license file 'LICENSE.APACHE'
| adding license file 'LICENSE.BSD'
| adding license file 'LICENSE.PSF'
| writing manifest file 'src/cryptography.egg-info/SOURCES.txt'
| running build_ext
| running build_rust
| warning: build_rust: Forced Rust target `arm-poky-linux-gnueabi` is not c=
ompatible with deduced Rust target `arm-unknown-linux-gnueabi` - the built =
package  may not import successfully once installed.
|
| error: Error loading target specification: Could not find specification f=
or target "arm-poky-linux-gnueabi". Run `rustc --print target-list` for a l=
ist of built-in targets
|
|
|     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3DDEBUG ASSISTANCE=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
|     If you are seeing a compilation error please try the following steps =
to
|     successfully install cryptography:
|     1) Upgrade to the latest pip and try again. This will fix errors for =
most
|        users. See: https://pip.pypa.io/en/stable/installing/#upgrading-pi=
p
|     2) Read https://cryptography.io/en/latest/installation/ for specific
|        instructions for your platform.
|     3) Check our frequently asked questions for more information:
|        https://cryptography.io/en/latest/faq/
|     4) Ensure you have a recent Rust toolchain installed:
|        https://cryptography.io/en/latest/installation/#rust
|
|     Python: 3.10.9
|     platform: Linux-3.10.0-1160.81.1.el7.x86_64-x86_64-with-glibc2.37
|     pip: n/a
|     setuptools: 59.5.0
|     setuptools_rust: 1.1.2
|     rustc: 1.66.1 (90743e729 2023-01-10) (built from a source tarball)
|     =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3DDEBUG ASSISTANCE=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
|
| Traceback (most recent call last):
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/cryptography-39.0.2/=
setup.py", line 48, in <module>
|     setup(
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools/__init__.py", line 153, in se=
tup
|     return distutils.core.setup(**attrs)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/core.py", line 148, in setup
|     dist.run_commands()
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/dist.py", line 966, in run_commands
|     self.run_command(cmd)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/dist.py", line 985, in run_command
|     cmd_obj.run()
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/wheel/bdist_wheel.py", line 299, in run
|     self.run_command('build')
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/cmd.py", line 313, in run_command
|     self.distribution.run_command(command)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/dist.py", line 985, in run_command
|     cmd_obj.run()
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/command/build.py", line 135, in run
|     self.run_command(cmd_name)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/cmd.py", line 313, in run_command
|     self.distribution.run_command(command)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/distutils/dist.py", line 985, in run_command
|     cmd_obj.run()
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools_rust/setuptools_ext.py", line=
 132, in run
|     build_rust.run()
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools_rust/command.py", line 101, i=
n run
|     self.run_for_extension(ext)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools_rust/build.py", line 108, in =
run_for_extension
|     dylib_paths =3D self.build_extension(ext, self.target)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools_rust/build.py", line 129, in =
build_extension
|     rustc_cfgs =3D _get_rustc_cfgs(target_triple)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools_rust/build.py", line 618, in =
_get_rustc_cfgs
|     for entry in get_rust_target_info(target_triple):
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/site-packages/setuptools_rust/utils.py", line 47, in g=
et_rust_target_info
|     output =3D subprocess.check_output(cmd, universal_newlines=3DTrue)
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/subprocess.py", line 421, in check_output
|     return run(*popenargs, stdout=3DPIPE, timeout=3Dtimeout, check=3DTrue=
,
|   File "/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-=
neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/recipe-sysroot-nativ=
e/usr/lib/python3.10/subprocess.py", line 526, in run
|     raise CalledProcessError(retcode, process.args,
| subprocess.CalledProcessError: Command '['rustc', '--print', 'cfg', '--ta=
rget', 'arm-poky-linux-gnueabi']' returned non-zero exit status 1.
| ERROR: 'python3 setup.py bdist_wheel ' execution failed.
| WARNING: /home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf=
-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/temp/run.do_compile=
.2705:184 exit 1 from 'exit 1'
| WARNING: Backtrace (BB generated script):
|              #1: bbfatal_log, /home/dwatkins/workspace/mgos/voyager1/buil=
d/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r=
0/temp/run.do_compile.2705, line 184
|              #2: setuptools3_do_compile, /home/dwatkins/workspace/mgos/vo=
yager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptograp=
hy/39.0.2-r0/temp/run.do_compile.2705, line 174
|              #3: do_compile, /home/dwatkins/workspace/mgos/voyager1/build=
/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0=
/temp/run.do_compile.2705, line 163
|              #4: main, /home/dwatkins/workspace/mgos/voyager1/build/tmp/w=
ork/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/temp/=
run.do_compile.2705, line 188
ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-l=
orawan/recipes-devtools/python/python3-cryptography_39.0.2.bb:do_compile) f=
ailed with exit code '1'
NOTE: Tasks Summary: Attempted 1039 tasks of which 1035 didn't need to be r=
erun and 1 failed.
NOTE: Generating JSON CVE summary
Complete CVE JSON report summary created at: /home/dwatkins/workspace/mgos/=
voyager1/build/tmp/log/cve/cve-summary.json

Summary: 1 task failed:
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-lorawan/reci=
pes-devtools/python/python3-cryptography_39.0.2.bb:do_compile
Summary: There were 6 WARNING messages.
Summary: There were 2 ERROR messages, returning a non-zero exit code.


Below is output after I temporarily hacked in the following into the python=
3-cryptography recipe.
do_compile:prepend() {
    rustc --print target-list
    echo yadda
    false
    exit 1
}
This was to run `rustc --print target-list` as suggested.


dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $ bitbake pyt=
hon3-cryptography
Loading cache: 100% |######################################################=
###########################################################################=
####################################################| Time: 0:00:01
Loaded 4867 entries from dependency cache.
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-core=
/yaml/libomgyaml_extsrc.bb: distutils-common-base.bbclass is deprecated, pl=
ease use setuptools3-base.bbclass instead          | ETA:  --:--:--
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-opt-=
apps/ibeacon/opt-ibeacon_extsrc.bb: distutils-common-base.bbclass is deprec=
ated, please use setuptools3-base.bbclass instead
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-core=
/yaml/libyamlx_extsrc.bb: distutils-common-base.bbclass is deprecated, plea=
se use setuptools3-base.bbclass instead
WARNING: /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-opt-=
apps/webportal/opt-wpupdated_extsrc.bb: distutils-common-base.bbclass is de=
precated, please use setuptools3-base.bbclass instead
Parsing recipes: 100% |####################################################=
###########################################################################=
####################################################| Time: 0:00:01
Parsing of 3290 .bb files complete (3280 cached, 10 parsed). 4876 targets, =
207 skipped, 0 masked, 0 errors.
WARNING: No recipes in default available for:
  /home/dwatkins/workspace/mgos/voyager1/meta-mg90-bsp/recipes-kernel/firmw=
are/linux-firmware_git.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_4.19.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mg90-bsp/recipes-kernel/linux=
/linux-qoriq_5.4.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-mgos/recipes=
-support/shadow/shadow_4.8.1.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-openssl-fips=
/recipes-support/openssl/openssl_1.0.2%.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/che=
rrypy/cherrypy-python_%.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.6.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.8.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/hos=
tapd/hostapd_2.9.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/vim=
/vim_8.%.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.6.bbappend
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-core/recipes-support/wpa=
-supplicant/wpa-supplicant_2.7.bbappend
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION           =3D "2.0.0"
BUILD_SYS            =3D "x86_64-linux"
NATIVELSBSTRING      =3D "universal"
TARGET_SYS           =3D "arm-poky-linux-gnueabi"
MACHINE              =3D "mg90"
DISTRO               =3D "mgos"
DISTRO_VERSION       =3D "4.0.9"
TUNE_FEATURES        =3D "arm vfp cortexa7 neon callconvention-hard"
TARGET_FPU           =3D "hard"
meta-mgos-core       =3D "main:38ea2f74e0521b9b63322305264e59cac80e60c2"
meta-mgos-release    =3D "main:8cb2e615f74dac237167b5219a453bd3636c3407"
meta-mg90-bsp        =3D "main:28dc5cdca236cc6792107923b2dd030bd8b42f02"
meta-mgos-airprime   =3D "HEAD:2a21c0b304372dbc36174d0615177287d2af0b3c"
meta-mgos
meta-daisy-cf
meta-dunfell-cf
meta-openssl-fips
meta-sigma
meta-lorawan         =3D "main:8eb3b0d1a5c9f94237bfadd5600859ade31dd69f"
meta
meta-poky
meta-yocto-bsp       =3D "HEAD:75239ddd8d67c00139c6e88c1c2a790b471b12c5"
meta-oe
meta-networking
meta-python
meta-perl            =3D "HEAD:df452d9d98659b49888fa8a5428a0a8bd3e3aaec"
meta-security
meta-integrity
meta-security-compliance
meta-security-isafw  =3D "HEAD:cc20e2af2ae1c74e306f6c039c4963457c4cbd0f"
meta-freescale       =3D "HEAD:82cbf4e5adac1017adc1e4a2ce056c57b3148ba0"
meta-java            =3D "HEAD:8bf79fc2002bb83c6439d25bb63e4206894c2d10"
meta-clang           =3D "HEAD:68ec449f97ffa58d835163581fc72afcb08f027b"
workspace            =3D "<unknown>:<unknown>"

WARNING: /home/dwatkins/workspace/mgos/voyager1/upstream/yocto/poky/meta/re=
cipes-connectivity/openssl/openssl_3.0.8.bb:do_unpack is tainted from a for=
ced run                                             | ETA:  0:00:00
Initialising tasks: 100% |#################################################=
###########################################################################=
####################################################| Time: 0:00:00
Sstate summary: Wanted 30 Local 25 Mirrors 0 Missed 5 Current 243 (83% matc=
h, 98% complete)
NOTE: Executing Tasks
ERROR: python3-cryptography-39.0.2-r0 do_compile: ExecutionError('/home/dwa=
tkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnu=
eabi/python3-cryptography/39.0.2-r0/temp/run.do_compile.2839', 1, None, Non=
e)
ERROR: Logfile of failure stored in: /home/dwatkins/workspace/mgos/voyager1=
/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.=
0.2-r0/temp/log.do_compile.2839
Log data follows:
| DEBUG: Executing shell function do_compile
| aarch64-apple-darwin
| aarch64-apple-ios
| aarch64-apple-ios-macabi
| aarch64-apple-ios-sim
| aarch64-apple-tvos
| aarch64-apple-watchos-sim
| aarch64-fuchsia
| aarch64-kmc-solid_asp3
| aarch64-linux-android
| aarch64-nintendo-switch-freestanding
| aarch64-pc-windows-gnullvm
| aarch64-pc-windows-msvc
| aarch64-unknown-freebsd
| aarch64-unknown-hermit
| aarch64-unknown-linux-gnu
| aarch64-unknown-linux-gnu_ilp32
| aarch64-unknown-linux-musl
| aarch64-unknown-netbsd
| aarch64-unknown-none
| aarch64-unknown-none-softfloat
| aarch64-unknown-openbsd
| aarch64-unknown-redox
| aarch64-unknown-uefi
| aarch64-uwp-windows-msvc
| aarch64-wrs-vxworks
| aarch64_be-unknown-linux-gnu
| aarch64_be-unknown-linux-gnu_ilp32
| arm-linux-androideabi
| arm-unknown-linux-gnueabi
| arm-unknown-linux-gnueabihf
| arm-unknown-linux-musleabi
| arm-unknown-linux-musleabihf
| arm64_32-apple-watchos
| armeb-unknown-linux-gnueabi
| armebv7r-none-eabi
| armebv7r-none-eabihf
| armv4t-none-eabi
| armv4t-unknown-linux-gnueabi
| armv5te-none-eabi
| armv5te-unknown-linux-gnueabi
| armv5te-unknown-linux-musleabi
| armv5te-unknown-linux-uclibceabi
| armv6-unknown-freebsd
| armv6-unknown-netbsd-eabihf
| armv6k-nintendo-3ds
| armv7-apple-ios
| armv7-linux-androideabi
| armv7-unknown-freebsd
| armv7-unknown-linux-gnueabi
| armv7-unknown-linux-gnueabihf
| armv7-unknown-linux-musleabi
| armv7-unknown-linux-musleabihf
| armv7-unknown-linux-uclibceabi
| armv7-unknown-linux-uclibceabihf
| armv7-unknown-netbsd-eabihf
| armv7-wrs-vxworks-eabihf
| armv7a-kmc-solid_asp3-eabi
| armv7a-kmc-solid_asp3-eabihf
| armv7a-none-eabi
| armv7a-none-eabihf
| armv7k-apple-watchos
| armv7r-none-eabi
| armv7r-none-eabihf
| armv7s-apple-ios
| asmjs-unknown-emscripten
| avr-unknown-gnu-atmega328
| bpfeb-unknown-none
| bpfel-unknown-none
| hexagon-unknown-linux-musl
| i386-apple-ios
| i586-pc-windows-msvc
| i586-unknown-linux-gnu
| i586-unknown-linux-musl
| i686-apple-darwin
| i686-linux-android
| i686-pc-windows-gnu
| i686-pc-windows-msvc
| i686-unknown-freebsd
| i686-unknown-haiku
| i686-unknown-linux-gnu
| i686-unknown-linux-musl
| i686-unknown-netbsd
| i686-unknown-openbsd
| i686-unknown-uefi
| i686-uwp-windows-gnu
| i686-uwp-windows-msvc
| i686-wrs-vxworks
| m68k-unknown-linux-gnu
| mips-unknown-linux-gnu
| mips-unknown-linux-musl
| mips-unknown-linux-uclibc
| mips64-openwrt-linux-musl
| mips64-unknown-linux-gnuabi64
| mips64-unknown-linux-muslabi64
| mips64el-unknown-linux-gnuabi64
| mips64el-unknown-linux-muslabi64
| mipsel-sony-psp
| mipsel-unknown-linux-gnu
| mipsel-unknown-linux-musl
| mipsel-unknown-linux-uclibc
| mipsel-unknown-none
| mipsisa32r6-unknown-linux-gnu
| mipsisa32r6el-unknown-linux-gnu
| mipsisa64r6-unknown-linux-gnuabi64
| mipsisa64r6el-unknown-linux-gnuabi64
| msp430-none-elf
| nvptx64-nvidia-cuda
| powerpc-unknown-freebsd
| powerpc-unknown-linux-gnu
| powerpc-unknown-linux-gnuspe
| powerpc-unknown-linux-musl
| powerpc-unknown-netbsd
| powerpc-unknown-openbsd
| powerpc-wrs-vxworks
| powerpc-wrs-vxworks-spe
| powerpc64-unknown-freebsd
| powerpc64-unknown-linux-gnu
| powerpc64-unknown-linux-musl
| powerpc64-unknown-openbsd
| powerpc64-wrs-vxworks
| powerpc64le-unknown-freebsd
| powerpc64le-unknown-linux-gnu
| powerpc64le-unknown-linux-musl
| riscv32gc-unknown-linux-gnu
| riscv32gc-unknown-linux-musl
| riscv32i-unknown-none-elf
| riscv32im-unknown-none-elf
| riscv32imac-unknown-none-elf
| riscv32imac-unknown-xous-elf
| riscv32imc-esp-espidf
| riscv32imc-unknown-none-elf
| riscv64gc-unknown-freebsd
| riscv64gc-unknown-linux-gnu
| riscv64gc-unknown-linux-musl
| riscv64gc-unknown-none-elf
| riscv64gc-unknown-openbsd
| riscv64imac-unknown-none-elf
| s390x-unknown-linux-gnu
| s390x-unknown-linux-musl
| sparc-unknown-linux-gnu
| sparc64-unknown-linux-gnu
| sparc64-unknown-netbsd
| sparc64-unknown-openbsd
| sparcv9-sun-solaris
| thumbv4t-none-eabi
| thumbv5te-none-eabi
| thumbv6m-none-eabi
| thumbv7a-pc-windows-msvc
| thumbv7a-uwp-windows-msvc
| thumbv7em-none-eabi
| thumbv7em-none-eabihf
| thumbv7m-none-eabi
| thumbv7neon-linux-androideabi
| thumbv7neon-unknown-linux-gnueabihf
| thumbv7neon-unknown-linux-musleabihf
| thumbv8m.base-none-eabi
| thumbv8m.main-none-eabi
| thumbv8m.main-none-eabihf
| wasm32-unknown-emscripten
| wasm32-unknown-unknown
| wasm32-wasi
| wasm64-unknown-unknown
| x86_64-apple-darwin
| x86_64-apple-ios
| x86_64-apple-ios-macabi
| x86_64-apple-tvos
| x86_64-apple-watchos-sim
| x86_64-fortanix-unknown-sgx
| x86_64-fuchsia
| x86_64-linux-android
| x86_64-pc-solaris
| x86_64-pc-windows-gnu
| x86_64-pc-windows-gnullvm
| x86_64-pc-windows-msvc
| x86_64-sun-solaris
| x86_64-unknown-dragonfly
| x86_64-unknown-freebsd
| x86_64-unknown-haiku
| x86_64-unknown-hermit
| x86_64-unknown-illumos
| x86_64-unknown-l4re-uclibc
| x86_64-unknown-linux-gnu
| x86_64-unknown-linux-gnux32
| x86_64-unknown-linux-musl
| x86_64-unknown-netbsd
| x86_64-unknown-none
| x86_64-unknown-none-linuxkernel
| x86_64-unknown-openbsd
| x86_64-unknown-redox
| x86_64-unknown-uefi
| x86_64-uwp-windows-gnu
| x86_64-uwp-windows-msvc
| x86_64-wrs-vxworks
| yadda
| WARNING: /home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa7hf=
-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/temp/run.do_compile=
.2839:163 exit 1 from 'false'
| WARNING: Backtrace (BB generated script):
|              #1: do_compile, /home/dwatkins/workspace/mgos/voyager1/build=
/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0=
/temp/run.do_compile.2839, line 163
|              #2: main, /home/dwatkins/workspace/mgos/voyager1/build/tmp/w=
ork/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/temp/=
run.do_compile.2839, line 192
ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-l=
orawan/recipes-devtools/python/python3-cryptography_39.0.2.bb:do_compile) f=
ailed with exit code '1'
NOTE: Tasks Summary: Attempted 1039 tasks of which 1035 didn't need to be r=
erun and 1 failed.
NOTE: Generating JSON CVE summary
Complete CVE JSON report summary created at: /home/dwatkins/workspace/mgos/=
voyager1/build/tmp/log/cve/cve-summary.json

Summary: 1 task failed:
  /home/dwatkins/workspace/mgos/voyager1/meta-mgos-distro/meta-lorawan/reci=
pes-devtools/python/python3-cryptography_39.0.2.bb:do_compile
Summary: There were 6 WARNING messages.
Summary: There was 1 ERROR message, returning a non-zero exit code.
dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64bit build $





Regards,

Darcy

Darcy Watkins ::  Senior Staff Engineer, Firmware

Semtech | Sierra Wireless
Office  +1 604 231 1100
13811 Wireless Way  :: Richmond, BC Canada V6V 3A4
[M4]
dwatkins@sierrawireless.com<mailto:dwatkins@sierrawireless.com> :: www.semt=
ech.com<http://www.semtech.com>

--_000_CO6PR02MB87402FB9AF7A6DE878855D77B2749CO6PR02MB8740namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Menlo;
	panose-1:2 11 6 9 3 8 4 2 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:none;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1802187422;
	mso-list-template-ids:1077718990;}
@list l1
	{mso-list-id:1809131461;
	mso-list-type:hybrid;
	mso-list-template-ids:-596623508 67698703 67698713 67698715 67698703 67698=
713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style>
</head>
<body lang=3D"EN-CA" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am facing a challenge related to getting LoRa chir=
pstack to build into a Yocto based image.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The Yocto based image is part of a project based on =
=91kirkstone=92 to build for a Layerscape LS1021A SoC (Freescale/NXP).&nbsp=
; This normally builds without issue, including to build the python3-crypto=
graphy package.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I then added meta-clang (kirkstone) to it and integr=
ated chunks of chirpstack-gateway-os into it as a layer (I just named it me=
ta-lorawan).&nbsp; Chirpstack-gateway-os is an openembedded based project t=
hat uses a different scheme than Yocto.&nbsp;
 It has a layer (meta) that assembles packages together, with a handful of =
dependent openembedded layers integrated as layers using git submodules.</p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It appears that chirpstack is based on kirkstone, bu=
t there are components that appear to be mixins from newer branches.&nbsp; =
In fact the mixins from rust/cargo appear to be an intermediate version fro=
m between Yocto releases.&nbsp; It includes
 upgrades to handle =93crates=94 better than implemented in kirkstone.&nbsp=
; I had to copy / paste chunks in because their layer.conf has too many pla=
tform specific directives in it.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Chirpstack-gateway-os normally builds an image for r=
Pi.&nbsp; I want to build for Layerscape (and later, i.MX).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have been able to get all the individual packages =
copied in from chirpstack to build OK.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">My problem is that I have python3-cryptography pulle=
d in as a dependency in my system and have not yet succeeded to get it to b=
uild.&nbsp; I don=92t think they build it in chirpstack (or it work ok buil=
ding for rPi).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">At this point my suppositions are:</p>
<ol style=3D"margin-top:0cm" start=3D"1" type=3D"1">
<li class=3D"MsoListParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 =
lfo3">Everything is OK in kirkstone (as I have seen).</li><li class=3D"MsoL=
istParagraph" style=3D"margin-left:0cm;mso-list:l1 level1 lfo3">I presume e=
verything is ok in the latest released Yocto.</li><li class=3D"MsoListParag=
raph" style=3D"margin-left:0cm;mso-list:l1 level1 lfo3">I can only presume =
that chirpstack-gateway-os doesn=92t need python3-cryptography so they didn=
=92t bother to check if it built (or it is all ok for rPi).</li></ol>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">The error appears to be related to compiler tuples s=
o maybe there is a conflict between what was mixin as backports versus Laye=
rscape arch/board support (that is in sync with kirkstone).</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I don=92t know much about working with rust and espe=
cially how it builds python modules or selects compilers.&nbsp; I am hoping=
 that someone can point me in the right direction.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below is the error=85</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64=
bit build $ bitbake python3-cryptography</p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
###########################################################################=
###########################################################################=
| Time: 0:00:00</p>
<p class=3D"MsoNormal">Loaded 4867 entries from dependency cache.</p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-opt-apps/webportal/opt-wpupdated_extsrc.bb: distutils-co=
mmon-base.bbclass is deprecated, please use setuptools3-base.bbclass instea=
dETA:&nbsp; --:--:--</p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-core/yaml/libomgyaml_extsrc.bb: distutils-common-base.bb=
class is deprecated, please use setuptools3-base.bbclass instead</p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-opt-apps/ibeacon/opt-ibeacon_extsrc.bb: distutils-common=
-base.bbclass is deprecated, please use setuptools3-base.bbclass instead</p=
>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-core/yaml/libyamlx_extsrc.bb: distutils-common-base.bbcl=
ass is deprecated, please use setuptools3-base.bbclass instead</p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
###########################################################################=
###########################################################################=
| Time: 0:00:01</p>
<p class=3D"MsoNormal">Parsing of 3290 .bb files complete (3281 cached, 9 p=
arsed). 4876 targets, 207 skipped, 0 masked, 0 errors.</p>
<p class=3D"MsoNormal">WARNING: No recipes in default available for:</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
g90-bsp/recipes-kernel/firmware/linux-firmware_git.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
g90-bsp/recipes-kernel/linux/linux-qoriq_4.19.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
g90-bsp/recipes-kernel/linux/linux-qoriq_5.4.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-distro/meta-mgos/recipes-support/shadow/shadow_4.8.1.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-distro/meta-openssl-fips/recipes-support/openssl/openssl_1.0.2%.bbappen=
d</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/cherrypy/cherrypy-python_%.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/hostapd/hostapd_2.6.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/hostapd/hostapd_2.8.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/hostapd/hostapd_2.9.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/vim/vim_8.%.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/wpa-supplicant/wpa-supplicant_2.6.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/wpa-supplicant/wpa-supplicant_2.7.bbappend</p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:</p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;2.0.0&quot;</p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;</p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;universal&quot;</p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;</p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;mg90&quot;</p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;mgos&quot;</p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;4.0.9&quot;</p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;arm vfp cortexa7 neon callconvention-hard&quot;</p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;</p>
<p class=3D"MsoNormal">meta-mgos-core&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;main:38ea2f74e0521b9b63322305264e59cac80e60c2&quot;</p>
<p class=3D"MsoNormal">meta-mgos-release&nbsp;&nbsp;&nbsp; =3D &quot;main:8=
cb2e615f74dac237167b5219a453bd3636c3407&quot;</p>
<p class=3D"MsoNormal">meta-mg90-bsp&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&n=
bsp;=3D &quot;main:28dc5cdca236cc6792107923b2dd030bd8b42f02&quot;</p>
<p class=3D"MsoNormal">meta-mgos-airprime&nbsp;&nbsp; =3D &quot;HEAD:2a21c0=
b304372dbc36174d0615177287d2af0b3c&quot;</p>
<p class=3D"MsoNormal">meta-mgos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-daisy-cf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; </p>
<p class=3D"MsoNormal">meta-dunfell-cf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-openssl-fips&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-sigma&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-lorawan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D &quot;main:8eb3b0d1a5c9f94237bfadd5600859ade31dd69f&quot;</p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;HEAD:75239ddd8d67c00139c6e88c1c2a790b471b12c5&quot;</p>
<p class=3D"MsoNormal">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-networking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-perl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:df452d9d98659b49888fa8a5428a0a8bd3e3=
aaec&quot;</p>
<p class=3D"MsoNormal">meta-security&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; </p>
<p class=3D"MsoNormal">meta-integrity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/p>
<p class=3D"MsoNormal">meta-security-compliance </p>
<p class=3D"MsoNormal">meta-security-isafw&nbsp; =3D &quot;HEAD:cc20e2af2ae=
1c74e306f6c039c4963457c4cbd0f&quot;</p>
<p class=3D"MsoNormal">meta-freescale&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;HEAD:82cbf4e5adac1017adc1e4a2ce056c57b3148ba0&quot;</p>
<p class=3D"MsoNormal">meta-java&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:8bf79fc2002bb83c6439d25bb63e4206894c=
2d10&quot;</p>
<p class=3D"MsoNormal">meta-clang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:68ec449f97ffa58d835163581fc72afcb08f027b&=
quot;</p>
<p class=3D"MsoNormal">workspace&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/upst=
ream/yocto/poky/meta/recipes-connectivity/openssl/openssl_3.0.8.bb:do_unpac=
k is tainted from a forced run&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ETA=
:&nbsp; 0:00:00</p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
###########################################################################=
###########################################################################=
| Time: 0:00:00</p>
<p class=3D"MsoNormal">Sstate summary: Wanted 30 Local 25 Mirrors 0 Missed =
5 Current 243 (83% match, 98% complete)</p>
<p class=3D"MsoNormal">NOTE: Executing Tasks</p>
<p class=3D"MsoNormal">ERROR: python3-cryptography-39.0.2-r0 do_compile: 'p=
ython3 setup.py bdist_wheel ' execution failed.</p>
<p class=3D"MsoNormal">ERROR: python3-cryptography-39.0.2-r0 do_compile: Ex=
ecutionError('/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa=
7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/temp/run.do_comp=
ile.2705', 1, None, None)</p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/dwatkins/=
workspace/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/p=
ython3-cryptography/39.0.2-r0/temp/log.do_compile.2705</p>
<p class=3D"MsoNormal">Log data follows:</p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_compile</p>
<p class=3D"MsoNormal">| running bdist_wheel</p>
<p class=3D"MsoNormal">| running build</p>
<p class=3D"MsoNormal">| running build_py</p>
<p class=3D"MsoNormal">| running egg_info</p>
<p class=3D"MsoNormal">| writing src/cryptography.egg-info/PKG-INFO</p>
<p class=3D"MsoNormal">| writing dependency_links to src/cryptography.egg-i=
nfo/dependency_links.txt</p>
<p class=3D"MsoNormal">| writing requirements to src/cryptography.egg-info/=
requires.txt</p>
<p class=3D"MsoNormal">| writing top-level names to src/cryptography.egg-in=
fo/top_level.txt</p>
<p class=3D"MsoNormal">| listing git files failed - pretending there aren't=
 any</p>
<p class=3D"MsoNormal">| reading manifest file 'src/cryptography.egg-info/S=
OURCES.txt'</p>
<p class=3D"MsoNormal">| reading manifest template 'MANIFEST.in'</p>
<p class=3D"MsoNormal">| no previously-included directories found matching =
'docs/_build'</p>
<p class=3D"MsoNormal">| warning: no previously-included files found matchi=
ng 'vectors'</p>
<p class=3D"MsoNormal">| warning: no previously-included files matching '*'=
 found under directory 'vectors'</p>
<p class=3D"MsoNormal">| warning: no previously-included files matching '*'=
 found under directory '.github'</p>
<p class=3D"MsoNormal">| warning: no previously-included files found matchi=
ng 'release.py'</p>
<p class=3D"MsoNormal">| warning: no previously-included files found matchi=
ng '.readthedocs.yml'</p>
<p class=3D"MsoNormal">| warning: no previously-included files found matchi=
ng 'ci-constraints-requirements.txt'</p>
<p class=3D"MsoNormal">| warning: no previously-included files found matchi=
ng 'tox.ini'</p>
<p class=3D"MsoNormal">| warning: no previously-included files found matchi=
ng 'mypy.ini'</p>
<p class=3D"MsoNormal">| adding license file 'LICENSE'</p>
<p class=3D"MsoNormal">| adding license file 'LICENSE.APACHE'</p>
<p class=3D"MsoNormal">| adding license file 'LICENSE.BSD'</p>
<p class=3D"MsoNormal">| adding license file 'LICENSE.PSF'</p>
<p class=3D"MsoNormal">| writing manifest file 'src/cryptography.egg-info/S=
OURCES.txt'</p>
<p class=3D"MsoNormal">| running build_ext</p>
<p class=3D"MsoNormal">| running build_rust</p>
<p class=3D"MsoNormal">| warning: build_rust: Forced Rust target `arm-poky-=
linux-gnueabi` is not compatible with deduced Rust target `arm-unknown-linu=
x-gnueabi` - the built package&nbsp; may not import successfully once insta=
lled.</p>
<p class=3D"MsoNormal">| </p>
<p class=3D"MsoNormal">| error: Error loading target specification: Could n=
ot find specification for target &quot;arm-poky-linux-gnueabi&quot;. Run `r=
ustc --print target-list` for a list of built-in targets</p>
<p class=3D"MsoNormal">| </p>
<p class=3D"MsoNormal">| </p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DDEBUG ASSIST=
ANCE=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; If you are seeing a compil=
ation error please try the following steps to</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; successfully install crypt=
ography:</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; 1) Upgrade to the latest p=
ip and try again. This will fix errors for most</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; users. S=
ee: <a href=3D"https://pip.pypa.io/en/stable/installing/#upgrading-pip">
https://pip.pypa.io/en/stable/installing/#upgrading-pip</a></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; 2) Read <a href=3D"https:/=
/cryptography.io/en/latest/installation/">
https://cryptography.io/en/latest/installation/</a> for specific</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; instruct=
ions for your platform.</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; 3) Check our frequently as=
ked questions for more information:</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=
=3D"https://cryptography.io/en/latest/faq/">https://cryptography.io/en/late=
st/faq/</a></p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; 4) Ensure you have a recen=
t Rust toolchain installed:</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=
=3D"https://cryptography.io/en/latest/installation/#rust">
https://cryptography.io/en/latest/installation/#rust</a></p>
<p class=3D"MsoNormal">| </p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; Python: 3.10.9</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; platform: Linux-3.10.0-116=
0.81.1.el7.x86_64-x86_64-with-glibc2.37</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; pip: n/a</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; setuptools: 59.5.0</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; setuptools_rust: 1.1.2</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; rustc: 1.66.1 (90743e729 2=
023-01-10) (built from a source tarball)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; =3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3DDEBUG ASSIST=
ANCE=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D</p>
<p class=3D"MsoNormal">| </p>
<p class=3D"MsoNormal">| Traceback (most recent call last):</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/cryptography-39.0.2/setup.py&quot;, line 48, in &lt;modul=
e&gt;</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; setup(</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools/__init__.py&quot;, line 153, in setup</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; return distutils.core.setu=
p(**attrs)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/core.p=
y&quot;, line 148, in setup</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; dist.run_commands()</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/dist.p=
y&quot;, line 966, in run_commands</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; self.run_command(cmd)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/dist.p=
y&quot;, line 985, in run_command</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; cmd_obj.run()</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/wh=
eel/bdist_wheel.py&quot;, line 299, in run</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; self.run_command('build')<=
/p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/cmd.py=
&quot;, line 313, in run_command</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; self.distribution.run_comm=
and(command)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/dist.p=
y&quot;, line 985, in run_command</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; cmd_obj.run()</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/comman=
d/build.py&quot;, line 135, in run</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; self.run_command(cmd_name)=
</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/cmd.py=
&quot;, line 313, in run_command</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; self.distribution.run_comm=
and(command)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/distutils/dist.p=
y&quot;, line 985, in run_command</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; cmd_obj.run()</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools_rust/setuptools_ext.py&quot;, line 132, in run</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; build_rust.run()</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools_rust/command.py&quot;, line 101, in run</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; self.run_for_extension(ext=
)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools_rust/build.py&quot;, line 108, in run_for_extension</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; dylib_paths =3D self.build=
_extension(ext, self.target)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools_rust/build.py&quot;, line 129, in build_extension</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; rustc_cfgs =3D _get_rustc_=
cfgs(target_triple)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools_rust/build.py&quot;, line 618, in _get_rustc_cfgs</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; for entry in get_rust_targ=
et_info(target_triple):</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/site-packages/se=
tuptools_rust/utils.py&quot;, line 47, in get_rust_target_info</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; output =3D subprocess.chec=
k_output(cmd, universal_newlines=3DTrue)</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/subprocess.py&qu=
ot;, line 421, in check_output</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; return run(*popenargs, std=
out=3DPIPE, timeout=3Dtimeout, check=3DTrue,</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp; File &quot;/home/dwatkins/workspace/mg=
os/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-crypt=
ography/39.0.2-r0/recipe-sysroot-native/usr/lib/python3.10/subprocess.py&qu=
ot;, line 526, in run</p>
<p class=3D"MsoNormal">|&nbsp;&nbsp;&nbsp;&nbsp; raise CalledProcessError(r=
etcode, process.args,</p>
<p class=3D"MsoNormal">| subprocess.CalledProcessError: Command '['rustc', =
'--print', 'cfg', '--target', 'arm-poky-linux-gnueabi']' returned non-zero =
exit status 1.</p>
<p class=3D"MsoNormal">| ERROR: 'python3 setup.py bdist_wheel ' execution f=
ailed.</p>
<p class=3D"MsoNormal">| WARNING: /home/dwatkins/workspace/mgos/voyager1/bu=
ild/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2=
-r0/temp/run.do_compile.2705:184 exit 1 from 'exit 1'</p>
<p class=3D"MsoNormal">| WARNING: Backtrace (BB generated script):</p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #1: bbfatal_log, /home/dwatkins/workspace/mgos/voyag=
er1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/=
39.0.2-r0/temp/run.do_compile.2705, line 184</p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #2: setuptools3_do_compile, /home/dwatkins/workspace=
/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cr=
yptography/39.0.2-r0/temp/run.do_compile.2705, line 174</p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #3: do_compile, /home/dwatkins/workspace/mgos/voyage=
r1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/3=
9.0.2-r0/temp/run.do_compile.2705, line 163</p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #4: main, /home/dwatkins/workspace/mgos/voyager1/bui=
ld/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-=
r0/temp/run.do_compile.2705, line 188</p>
<p class=3D"MsoNormal">ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/=
meta-mgos-distro/meta-lorawan/recipes-devtools/python/python3-cryptography_=
39.0.2.bb:do_compile) failed with exit code '1'</p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 1039 tasks of which 1=
035 didn't need to be rerun and 1 failed.</p>
<p class=3D"MsoNormal">NOTE: Generating JSON CVE summary</p>
<p class=3D"MsoNormal">Complete CVE JSON report summary created at: /home/d=
watkins/workspace/mgos/voyager1/build/tmp/log/cve/cve-summary.json</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-distro/meta-lorawan/recipes-devtools/python/python3-cryptography_39.0.2=
.bb:do_compile</p>
<p class=3D"MsoNormal">Summary: There were 6 WARNING messages.</p>
<p class=3D"MsoNormal">Summary: There were 2 ERROR messages, returning a no=
n-zero exit code.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Below is output after I temporarily hacked in the fo=
llowing into the python3-cryptography recipe.</p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:#1F1F1F"><spa=
n style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">do_compile:prep=
end() {<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:#1F1F1F"><spa=
n style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">&nbsp;&nbsp;&nb=
sp; rustc
</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#F44747">--</=
span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#DCDCAA">print<=
/span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC"> targ=
et</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#D4D4D4">-<=
/span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#4EC9B0">list<=
/span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC"><o:p>=
</o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:#1F1F1F"><spa=
n style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">&nbsp;&nbsp;&nb=
sp; echo yadda<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:#1F1F1F"><spa=
n style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">&nbsp;&nbsp;&nb=
sp; false<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:#1F1F1F"><spa=
n style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">&nbsp;&nbsp;&nb=
sp;
</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#DCDCAA">exit=
</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">
</span><span style=3D"font-size:9.0pt;font-family:Menlo;color:#B5CEA8">1</s=
pan><span style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC"><o:p></=
o:p></span></p>
<p class=3D"MsoNormal" style=3D"line-height:13.5pt;background:#1F1F1F"><spa=
n style=3D"font-size:9.0pt;font-family:Menlo;color:#CCCCCC">}<o:p></o:p></s=
pan></p>
<p class=3D"MsoNormal">This was to run `rustc --print target-list` as sugge=
sted.</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64=
bit build $ bitbake python3-cryptography</p>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
###########################################################################=
###########################################################################=
| Time: 0:00:01</p>
<p class=3D"MsoNormal">Loaded 4867 entries from dependency cache.</p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-core/yaml/libomgyaml_extsrc.bb: distutils-common-base.bb=
class is deprecated, please use setuptools3-base.bbclass instead&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ETA:&nbsp; --:--:--</p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-opt-apps/ibeacon/opt-ibeacon_extsrc.bb: distutils-common=
-base.bbclass is deprecated, please use setuptools3-base.bbclass instead</p=
>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-core/yaml/libyamlx_extsrc.bb: distutils-common-base.bbcl=
ass is deprecated, please use setuptools3-base.bbclass instead</p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/meta=
-mgos-core/recipes-opt-apps/webportal/opt-wpupdated_extsrc.bb: distutils-co=
mmon-base.bbclass is deprecated, please use setuptools3-base.bbclass instea=
d</p>
<p class=3D"MsoNormal">Parsing recipes: 100% |#############################=
###########################################################################=
###########################################################################=
| Time: 0:00:01</p>
<p class=3D"MsoNormal">Parsing of 3290 .bb files complete (3280 cached, 10 =
parsed). 4876 targets, 207 skipped, 0 masked, 0 errors.</p>
<p class=3D"MsoNormal">WARNING: No recipes in default available for:</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
g90-bsp/recipes-kernel/firmware/linux-firmware_git.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
g90-bsp/recipes-kernel/linux/linux-qoriq_4.19.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
g90-bsp/recipes-kernel/linux/linux-qoriq_5.4.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-distro/meta-mgos/recipes-support/shadow/shadow_4.8.1.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-distro/meta-openssl-fips/recipes-support/openssl/openssl_1.0.2%.bbappen=
d</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/cherrypy/cherrypy-python_%.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/hostapd/hostapd_2.6.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/hostapd/hostapd_2.8.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/hostapd/hostapd_2.9.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/vim/vim_8.%.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/wpa-supplicant/wpa-supplicant_2.6.bbappend</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-core/recipes-support/wpa-supplicant/wpa-supplicant_2.7.bbappend</p>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Build Configuration:</p>
<p class=3D"MsoNormal">BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;2.0.0&quot;</p>
<p class=3D"MsoNormal">BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;x86_64-linux&quot;</p>
<p class=3D"MsoNormal">NATIVELSBSTRING&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &q=
uot;universal&quot;</p>
<p class=3D"MsoNormal">TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;arm-poky-linux-gnueabi&quot;</p>
<p class=3D"MsoNormal">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;mg90&quot;</p>
<p class=3D"MsoNormal">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;mgos&quot;</p>
<p class=3D"MsoNormal">DISTRO_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;4.0.9&quot;</p>
<p class=3D"MsoNormal">TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;arm vfp cortexa7 neon callconvention-hard&quot;</p>
<p class=3D"MsoNormal">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;hard&quot;</p>
<p class=3D"MsoNormal">meta-mgos-core&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;main:38ea2f74e0521b9b63322305264e59cac80e60c2&quot;</p>
<p class=3D"MsoNormal">meta-mgos-release&nbsp;&nbsp;&nbsp; =3D &quot;main:8=
cb2e615f74dac237167b5219a453bd3636c3407&quot;</p>
<p class=3D"MsoNormal">meta-mg90-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D &quot;main:28dc5cdca236cc6792107923b2dd030bd8b42f02&quot;</p>
<p class=3D"MsoNormal">meta-mgos-airprime&nbsp;&nbsp; =3D &quot;HEAD:2a21c0=
b304372dbc36174d0615177287d2af0b3c&quot;</p>
<p class=3D"MsoNormal">meta-mgos&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-daisy-cf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; </p>
<p class=3D"MsoNormal">meta-dunfell-cf&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-openssl-fips&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-sigma&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 &nbsp;&nbsp;&nbsp;</p>
<p class=3D"MsoNormal">meta-lorawan&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D &quot;main:8eb3b0d1a5c9f94237bfadd5600859ade31dd69f&quot;</p>
<p class=3D"MsoNormal">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-poky&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-yocto-bsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;HEAD:75239ddd8d67c00139c6e88c1c2a790b471b12c5&quot;</p>
<p class=3D"MsoNormal">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-networking&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; </p>
<p class=3D"MsoNormal">meta-perl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:df452d9d98659b49888fa8a5428a0a8bd3e3=
aaec&quot;</p>
<p class=3D"MsoNormal">meta-security&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; </p>
<p class=3D"MsoNormal">meta-integrity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <=
/p>
<p class=3D"MsoNormal">meta-security-compliance </p>
<p class=3D"MsoNormal">meta-security-isafw&nbsp; =3D &quot;HEAD:cc20e2af2ae=
1c74e306f6c039c4963457c4cbd0f&quot;</p>
<p class=3D"MsoNormal">meta-freescale&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;HEAD:82cbf4e5adac1017adc1e4a2ce056c57b3148ba0&quot;</p>
<p class=3D"MsoNormal">meta-java&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:8bf79fc2002bb83c6439d25bb63e4206894c=
2d10&quot;</p>
<p class=3D"MsoNormal">meta-clang&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp; =3D &quot;HEAD:68ec449f97ffa58d835163581fc72afcb08f027b&=
quot;</p>
<p class=3D"MsoNormal">workspace&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: /home/dwatkins/workspace/mgos/voyager1/upst=
ream/yocto/poky/meta/recipes-connectivity/openssl/openssl_3.0.8.bb:do_unpac=
k is tainted from a forced run&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | ETA=
:&nbsp; 0:00:00</p>
<p class=3D"MsoNormal">Initialising tasks: 100% |##########################=
###########################################################################=
###########################################################################=
| Time: 0:00:00</p>
<p class=3D"MsoNormal">Sstate summary: Wanted 30 Local 25 Mirrors 0 Missed =
5 Current 243 (83% match, 98% complete)</p>
<p class=3D"MsoNormal">NOTE: Executing Tasks</p>
<p class=3D"MsoNormal">ERROR: python3-cryptography-39.0.2-r0 do_compile: Ex=
ecutionError('/home/dwatkins/workspace/mgos/voyager1/build/tmp/work/cortexa=
7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-r0/temp/run.do_comp=
ile.2839', 1, None, None)</p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/dwatkins/=
workspace/mgos/voyager1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/p=
ython3-cryptography/39.0.2-r0/temp/log.do_compile.2839</p>
<p class=3D"MsoNormal">Log data follows:</p>
<p class=3D"MsoNormal">| DEBUG: Executing shell function do_compile</p>
<p class=3D"MsoNormal">| aarch64-apple-darwin</p>
<p class=3D"MsoNormal">| aarch64-apple-ios</p>
<p class=3D"MsoNormal">| aarch64-apple-ios-macabi</p>
<p class=3D"MsoNormal">| aarch64-apple-ios-sim</p>
<p class=3D"MsoNormal">| aarch64-apple-tvos</p>
<p class=3D"MsoNormal">| aarch64-apple-watchos-sim</p>
<p class=3D"MsoNormal">| aarch64-fuchsia</p>
<p class=3D"MsoNormal">| aarch64-kmc-solid_asp3</p>
<p class=3D"MsoNormal">| aarch64-linux-android</p>
<p class=3D"MsoNormal">| aarch64-nintendo-switch-freestanding</p>
<p class=3D"MsoNormal">| aarch64-pc-windows-gnullvm</p>
<p class=3D"MsoNormal">| aarch64-pc-windows-msvc</p>
<p class=3D"MsoNormal">| aarch64-unknown-freebsd</p>
<p class=3D"MsoNormal">| aarch64-unknown-hermit</p>
<p class=3D"MsoNormal">| aarch64-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| aarch64-unknown-linux-gnu_ilp32</p>
<p class=3D"MsoNormal">| aarch64-unknown-linux-musl</p>
<p class=3D"MsoNormal">| aarch64-unknown-netbsd</p>
<p class=3D"MsoNormal">| aarch64-unknown-none</p>
<p class=3D"MsoNormal">| aarch64-unknown-none-softfloat</p>
<p class=3D"MsoNormal">| aarch64-unknown-openbsd</p>
<p class=3D"MsoNormal">| aarch64-unknown-redox</p>
<p class=3D"MsoNormal">| aarch64-unknown-uefi</p>
<p class=3D"MsoNormal">| aarch64-uwp-windows-msvc</p>
<p class=3D"MsoNormal">| aarch64-wrs-vxworks</p>
<p class=3D"MsoNormal">| aarch64_be-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| aarch64_be-unknown-linux-gnu_ilp32</p>
<p class=3D"MsoNormal">| arm-linux-androideabi</p>
<p class=3D"MsoNormal">| arm-unknown-linux-gnueabi</p>
<p class=3D"MsoNormal">| arm-unknown-linux-gnueabihf</p>
<p class=3D"MsoNormal">| arm-unknown-linux-musleabi</p>
<p class=3D"MsoNormal">| arm-unknown-linux-musleabihf</p>
<p class=3D"MsoNormal">| arm64_32-apple-watchos</p>
<p class=3D"MsoNormal">| armeb-unknown-linux-gnueabi</p>
<p class=3D"MsoNormal">| armebv7r-none-eabi</p>
<p class=3D"MsoNormal">| armebv7r-none-eabihf</p>
<p class=3D"MsoNormal">| armv4t-none-eabi</p>
<p class=3D"MsoNormal">| armv4t-unknown-linux-gnueabi</p>
<p class=3D"MsoNormal">| armv5te-none-eabi</p>
<p class=3D"MsoNormal">| armv5te-unknown-linux-gnueabi</p>
<p class=3D"MsoNormal">| armv5te-unknown-linux-musleabi</p>
<p class=3D"MsoNormal">| armv5te-unknown-linux-uclibceabi</p>
<p class=3D"MsoNormal">| armv6-unknown-freebsd</p>
<p class=3D"MsoNormal">| armv6-unknown-netbsd-eabihf</p>
<p class=3D"MsoNormal">| armv6k-nintendo-3ds</p>
<p class=3D"MsoNormal">| armv7-apple-ios</p>
<p class=3D"MsoNormal">| armv7-linux-androideabi</p>
<p class=3D"MsoNormal">| armv7-unknown-freebsd</p>
<p class=3D"MsoNormal">| armv7-unknown-linux-gnueabi</p>
<p class=3D"MsoNormal">| armv7-unknown-linux-gnueabihf</p>
<p class=3D"MsoNormal">| armv7-unknown-linux-musleabi</p>
<p class=3D"MsoNormal">| armv7-unknown-linux-musleabihf</p>
<p class=3D"MsoNormal">| armv7-unknown-linux-uclibceabi</p>
<p class=3D"MsoNormal">| armv7-unknown-linux-uclibceabihf</p>
<p class=3D"MsoNormal">| armv7-unknown-netbsd-eabihf</p>
<p class=3D"MsoNormal">| armv7-wrs-vxworks-eabihf</p>
<p class=3D"MsoNormal">| armv7a-kmc-solid_asp3-eabi</p>
<p class=3D"MsoNormal">| armv7a-kmc-solid_asp3-eabihf</p>
<p class=3D"MsoNormal">| armv7a-none-eabi</p>
<p class=3D"MsoNormal">| armv7a-none-eabihf</p>
<p class=3D"MsoNormal">| armv7k-apple-watchos</p>
<p class=3D"MsoNormal">| armv7r-none-eabi</p>
<p class=3D"MsoNormal">| armv7r-none-eabihf</p>
<p class=3D"MsoNormal">| armv7s-apple-ios</p>
<p class=3D"MsoNormal">| asmjs-unknown-emscripten</p>
<p class=3D"MsoNormal">| avr-unknown-gnu-atmega328</p>
<p class=3D"MsoNormal">| bpfeb-unknown-none</p>
<p class=3D"MsoNormal">| bpfel-unknown-none</p>
<p class=3D"MsoNormal">| hexagon-unknown-linux-musl</p>
<p class=3D"MsoNormal">| i386-apple-ios</p>
<p class=3D"MsoNormal">| i586-pc-windows-msvc</p>
<p class=3D"MsoNormal">| i586-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| i586-unknown-linux-musl</p>
<p class=3D"MsoNormal">| i686-apple-darwin</p>
<p class=3D"MsoNormal">| i686-linux-android</p>
<p class=3D"MsoNormal">| i686-pc-windows-gnu</p>
<p class=3D"MsoNormal">| i686-pc-windows-msvc</p>
<p class=3D"MsoNormal">| i686-unknown-freebsd</p>
<p class=3D"MsoNormal">| i686-unknown-haiku</p>
<p class=3D"MsoNormal">| i686-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| i686-unknown-linux-musl</p>
<p class=3D"MsoNormal">| i686-unknown-netbsd</p>
<p class=3D"MsoNormal">| i686-unknown-openbsd</p>
<p class=3D"MsoNormal">| i686-unknown-uefi</p>
<p class=3D"MsoNormal">| i686-uwp-windows-gnu</p>
<p class=3D"MsoNormal">| i686-uwp-windows-msvc</p>
<p class=3D"MsoNormal">| i686-wrs-vxworks</p>
<p class=3D"MsoNormal">| m68k-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| mips-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| mips-unknown-linux-musl</p>
<p class=3D"MsoNormal">| mips-unknown-linux-uclibc</p>
<p class=3D"MsoNormal">| mips64-openwrt-linux-musl</p>
<p class=3D"MsoNormal">| mips64-unknown-linux-gnuabi64</p>
<p class=3D"MsoNormal">| mips64-unknown-linux-muslabi64</p>
<p class=3D"MsoNormal">| mips64el-unknown-linux-gnuabi64</p>
<p class=3D"MsoNormal">| mips64el-unknown-linux-muslabi64</p>
<p class=3D"MsoNormal">| mipsel-sony-psp</p>
<p class=3D"MsoNormal">| mipsel-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| mipsel-unknown-linux-musl</p>
<p class=3D"MsoNormal">| mipsel-unknown-linux-uclibc</p>
<p class=3D"MsoNormal">| mipsel-unknown-none</p>
<p class=3D"MsoNormal">| mipsisa32r6-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| mipsisa32r6el-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| mipsisa64r6-unknown-linux-gnuabi64</p>
<p class=3D"MsoNormal">| mipsisa64r6el-unknown-linux-gnuabi64</p>
<p class=3D"MsoNormal">| msp430-none-elf</p>
<p class=3D"MsoNormal">| nvptx64-nvidia-cuda</p>
<p class=3D"MsoNormal">| powerpc-unknown-freebsd</p>
<p class=3D"MsoNormal">| powerpc-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| powerpc-unknown-linux-gnuspe</p>
<p class=3D"MsoNormal">| powerpc-unknown-linux-musl</p>
<p class=3D"MsoNormal">| powerpc-unknown-netbsd</p>
<p class=3D"MsoNormal">| powerpc-unknown-openbsd</p>
<p class=3D"MsoNormal">| powerpc-wrs-vxworks</p>
<p class=3D"MsoNormal">| powerpc-wrs-vxworks-spe</p>
<p class=3D"MsoNormal">| powerpc64-unknown-freebsd</p>
<p class=3D"MsoNormal">| powerpc64-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| powerpc64-unknown-linux-musl</p>
<p class=3D"MsoNormal">| powerpc64-unknown-openbsd</p>
<p class=3D"MsoNormal">| powerpc64-wrs-vxworks</p>
<p class=3D"MsoNormal">| powerpc64le-unknown-freebsd</p>
<p class=3D"MsoNormal">| powerpc64le-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| powerpc64le-unknown-linux-musl</p>
<p class=3D"MsoNormal">| riscv32gc-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| riscv32gc-unknown-linux-musl</p>
<p class=3D"MsoNormal">| riscv32i-unknown-none-elf</p>
<p class=3D"MsoNormal">| riscv32im-unknown-none-elf</p>
<p class=3D"MsoNormal">| riscv32imac-unknown-none-elf</p>
<p class=3D"MsoNormal">| riscv32imac-unknown-xous-elf</p>
<p class=3D"MsoNormal">| riscv32imc-esp-espidf</p>
<p class=3D"MsoNormal">| riscv32imc-unknown-none-elf</p>
<p class=3D"MsoNormal">| riscv64gc-unknown-freebsd</p>
<p class=3D"MsoNormal">| riscv64gc-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| riscv64gc-unknown-linux-musl</p>
<p class=3D"MsoNormal">| riscv64gc-unknown-none-elf</p>
<p class=3D"MsoNormal">| riscv64gc-unknown-openbsd</p>
<p class=3D"MsoNormal">| riscv64imac-unknown-none-elf</p>
<p class=3D"MsoNormal">| s390x-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| s390x-unknown-linux-musl</p>
<p class=3D"MsoNormal">| sparc-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| sparc64-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| sparc64-unknown-netbsd</p>
<p class=3D"MsoNormal">| sparc64-unknown-openbsd</p>
<p class=3D"MsoNormal">| sparcv9-sun-solaris</p>
<p class=3D"MsoNormal">| thumbv4t-none-eabi</p>
<p class=3D"MsoNormal">| thumbv5te-none-eabi</p>
<p class=3D"MsoNormal">| thumbv6m-none-eabi</p>
<p class=3D"MsoNormal">| thumbv7a-pc-windows-msvc</p>
<p class=3D"MsoNormal">| thumbv7a-uwp-windows-msvc</p>
<p class=3D"MsoNormal">| thumbv7em-none-eabi</p>
<p class=3D"MsoNormal">| thumbv7em-none-eabihf</p>
<p class=3D"MsoNormal">| thumbv7m-none-eabi</p>
<p class=3D"MsoNormal">| thumbv7neon-linux-androideabi</p>
<p class=3D"MsoNormal">| thumbv7neon-unknown-linux-gnueabihf</p>
<p class=3D"MsoNormal">| thumbv7neon-unknown-linux-musleabihf</p>
<p class=3D"MsoNormal">| thumbv8m.base-none-eabi</p>
<p class=3D"MsoNormal">| thumbv8m.main-none-eabi</p>
<p class=3D"MsoNormal">| thumbv8m.main-none-eabihf</p>
<p class=3D"MsoNormal">| wasm32-unknown-emscripten</p>
<p class=3D"MsoNormal">| wasm32-unknown-unknown</p>
<p class=3D"MsoNormal">| wasm32-wasi</p>
<p class=3D"MsoNormal">| wasm64-unknown-unknown</p>
<p class=3D"MsoNormal">| x86_64-apple-darwin</p>
<p class=3D"MsoNormal">| x86_64-apple-ios</p>
<p class=3D"MsoNormal">| x86_64-apple-ios-macabi</p>
<p class=3D"MsoNormal">| x86_64-apple-tvos</p>
<p class=3D"MsoNormal">| x86_64-apple-watchos-sim</p>
<p class=3D"MsoNormal">| x86_64-fortanix-unknown-sgx</p>
<p class=3D"MsoNormal">| x86_64-fuchsia</p>
<p class=3D"MsoNormal">| x86_64-linux-android</p>
<p class=3D"MsoNormal">| x86_64-pc-solaris</p>
<p class=3D"MsoNormal">| x86_64-pc-windows-gnu</p>
<p class=3D"MsoNormal">| x86_64-pc-windows-gnullvm</p>
<p class=3D"MsoNormal">| x86_64-pc-windows-msvc</p>
<p class=3D"MsoNormal">| x86_64-sun-solaris</p>
<p class=3D"MsoNormal">| x86_64-unknown-dragonfly</p>
<p class=3D"MsoNormal">| x86_64-unknown-freebsd</p>
<p class=3D"MsoNormal">| x86_64-unknown-haiku</p>
<p class=3D"MsoNormal">| x86_64-unknown-hermit</p>
<p class=3D"MsoNormal">| x86_64-unknown-illumos</p>
<p class=3D"MsoNormal">| x86_64-unknown-l4re-uclibc</p>
<p class=3D"MsoNormal">| x86_64-unknown-linux-gnu</p>
<p class=3D"MsoNormal">| x86_64-unknown-linux-gnux32</p>
<p class=3D"MsoNormal">| x86_64-unknown-linux-musl</p>
<p class=3D"MsoNormal">| x86_64-unknown-netbsd</p>
<p class=3D"MsoNormal">| x86_64-unknown-none</p>
<p class=3D"MsoNormal">| x86_64-unknown-none-linuxkernel</p>
<p class=3D"MsoNormal">| x86_64-unknown-openbsd</p>
<p class=3D"MsoNormal">| x86_64-unknown-redox</p>
<p class=3D"MsoNormal">| x86_64-unknown-uefi</p>
<p class=3D"MsoNormal">| x86_64-uwp-windows-gnu</p>
<p class=3D"MsoNormal">| x86_64-uwp-windows-msvc</p>
<p class=3D"MsoNormal">| x86_64-wrs-vxworks</p>
<p class=3D"MsoNormal">| yadda</p>
<p class=3D"MsoNormal">| WARNING: /home/dwatkins/workspace/mgos/voyager1/bu=
ild/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2=
-r0/temp/run.do_compile.2839:163 exit 1 from 'false'</p>
<p class=3D"MsoNormal">| WARNING: Backtrace (BB generated script):</p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #1: do_compile, /home/dwatkins/workspace/mgos/voyage=
r1/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/3=
9.0.2-r0/temp/run.do_compile.2839, line 163</p>
<p class=3D"MsoNormal">| &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; #2: main, /home/dwatkins/workspace/mgos/voyager1/bui=
ld/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/python3-cryptography/39.0.2-=
r0/temp/run.do_compile.2839, line 192</p>
<p class=3D"MsoNormal">ERROR: Task (/home/dwatkins/workspace/mgos/voyager1/=
meta-mgos-distro/meta-lorawan/recipes-devtools/python/python3-cryptography_=
39.0.2.bb:do_compile) failed with exit code '1'</p>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 1039 tasks of which 1=
035 didn't need to be rerun and 1 failed.</p>
<p class=3D"MsoNormal">NOTE: Generating JSON CVE summary</p>
<p class=3D"MsoNormal">Complete CVE JSON report summary created at: /home/d=
watkins/workspace/mgos/voyager1/build/tmp/log/cve/cve-summary.json</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Summary: 1 task failed:</p>
<p class=3D"MsoNormal">&nbsp; /home/dwatkins/workspace/mgos/voyager1/meta-m=
gos-distro/meta-lorawan/recipes-devtools/python/python3-cryptography_39.0.2=
.bb:do_compile</p>
<p class=3D"MsoNormal">Summary: There were 6 WARNING messages.</p>
<p class=3D"MsoNormal">Summary: There was 1 ERROR message, returning a non-=
zero exit code.</p>
<p class=3D"MsoNormal">dwatkins@carmd-ed-n11377-docker-dwatkins_voyager1:64=
bit build $</p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Regards,</span></b><span lan=
g=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">Darcy Watkins ::&nbsp;&nbsp;=
Senior Staff Engineer, Firmware</span></b><span lang=3D"EN-US"><o:p></o:p><=
/span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">&nbsp;</span></b><span lang=
=3D"EN-US"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><b><span lang=3D"EN-US" style=3D"color:#08DFCF">Semt=
ech | Sierra Wireless<o:p></o:p></span></b></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Office&nbsp;&nbsp;+1 604 231 11=
00<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">13811 Wireless Way&nbsp; ::&nbs=
p;Richmond, BC Canada V6V 3A4<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">[M4]<o:p></o:p></span></p>
<p class=3D"MsoNormal"><a href=3D"mailto:dwatkins@sierrawireless.com">dwatk=
ins@sierrawireless.com</a>&nbsp;::&nbsp;<a href=3D"http://www.semtech.com">=
www.semtech.com</a>
</p>
</div>
</body>
</html>

--_000_CO6PR02MB87402FB9AF7A6DE878855D77B2749CO6PR02MB8740namp_--

