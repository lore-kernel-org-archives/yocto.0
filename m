Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.96])
 by mx.groups.io with SMTP id smtpd.web08.5415.1628674950582344234
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 02:42:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=wq3iDsIl;
 spf=pass (domain: servotronix.com, ip: 40.107.22.96, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6zg1bIXeb9U7zZAO6LbW4TCXSSwaJ4pFm1srkIAScvWcPV26xbVYrtyoU8EMXFjMVITUNjjvjrVZiDatWmAXAqutp+3w3XTp6j+WXecAIDXXN/rpKCpjbQfiBXH6rnKPW7+MTRIYsTNa7cn2478jXuGmsRbJVUmhkdnrQEEELeF0RBCfcnGQd+Vc1Wnt7YCBTMOYCSafFq/huwG1UPNEeLuO6pumX1p3hr4W80mC/WGO5Q0VDzZ6BFhmKp20zXIn2LnJoXSIJLgqOP5boCzVigRftA7YUdJmMyB6uxoMJfvvi4MwLwGEo0ZquuJ882KvtwhBdXvTyncg2nL0OMX5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcebTPB8vxtiaNBsK/zXC/9jguyk7I+VFmVSMGHrnnQ=;
 b=HVx7yBPJS1M/NGS33LbVL/QDELKVErrcrE229p7ONnqCGZ1DmCxhdMRy29d8UTOVbwdoBnvZQJhS6ezGMvHx7QVFjmhHDdBrWyMK7hG53G5hfp+Lt3TL/I2TnOD2fw2TGDxfYcCCzQlw4Zuwzlmy6+oXddT11vQ+/AlPhH922L+p/nVR33hBWzMhDKndbdY2RxjJmbH//Petyfsvn6LFHrb498gE0dm4PjGBqBdWbfwS4t0H5w1RTc3lVZ0gWcgKgz/HlsLL5x5vhhe74KCD4/yDs7rukHQJIgAcFzH9yFYqpUmg55Fz2NzhTVR5xedsfloIG9Wo+0FGw3v6IzQU4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TcebTPB8vxtiaNBsK/zXC/9jguyk7I+VFmVSMGHrnnQ=;
 b=wq3iDsIlv2NCjwiLnNH+25PSrmdgvfyZFfP82FNBS8o5B78fFKr0BD77lrAiUgGCLpqdDJlSJiytTmgOjiFIf55faMDxPr8+VjGNBRqjoYPR2i2AUQtFGc3JwLH83vTeguRMTo5fFg5Uv5uxjVO6TuuzWS7C8qnVonHp4ImZXEg=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR07MB4400.eurprd07.prod.outlook.com (2603:10a6:802:68::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.10; Wed, 11 Aug
 2021 09:42:25 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4415.012; Wed, 11 Aug 2021
 09:42:25 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeOlO8NS8O6ySAgTamPedi1GCaocw==
Date: Wed, 11 Aug 2021 09:42:25 +0000
Message-ID: 
 <VI1PR0702MB3695646062BD6D755085B92B90F89@VI1PR0702MB3695.eurprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 033892e7-5ff2-4e09-16d2-08d95cac5397
x-ms-traffictypediagnostic: VI1PR07MB4400:
x-microsoft-antispam-prvs: 
 <VI1PR07MB440006DE8AFF028894966BB190F89@VI1PR07MB4400.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 QiAAfozWo+j3hRyRzM0Qj33Z/BqwPV3qdvwS2mDPhHicYLEwDkIGLuVfp3JNBsmrWesVyNKFpQHwD1I4XYFGxwje/Ds8bdGqCrXwUc5Pqz6eHnCIWzzM1GikY9LMwg6c1fEcKsR6wMVgDNHbg78vidcZhGheTXYWufBqI4OI8TTfmdYRIw1DNe0+YN/xj+Z2ez0XZQ7JhaYVmHoJlLKpwr3tb47zSRa9Nj+g7hGdpsxmZToLd+bEJLy2qvrfXxcO3+ZyiQi4nTvR6nF0H6j39qhBJ3lATVfwrtJvusXRz9Jr7HVAEH9uo/Y+9CmVxsYhtezgv/w1oNHx0f2Z752qPKUcjXX4Y6f49q0Q0z3+bgkAHYpQePGe8o2UO09S9rr0sJXdW+lhOnX3xRSZifFpl6IhvbU2X8n+tY1caoqup6E0qT5zXIiw+DEv6VdIqiPpDQiqch9hJbRRzUngMqTQq1zp8/vN4oZjt5Hv5lh8pSsAqff6gkUjnf9dMWCQZdI1lch6WoT6XCdqxw45FApgv9+RqWpKTIGd2PINjPk7a0PcZslm8KOCmjXDtiXQlIBZQ8elv9u0q39bPlQbAzHHTN1AUjklP6UJOSRNo847u72v7tEM3XI0ulkElryaKyrvmW+Ftpqr5cbO/9aVKCiLHClPVBxOzcsijRObqBnu2fbB6Wmjzlr4zIA9ImPSCGgllkDBvAw4VAshyOn+kSbih0NCOQCU2DXyUZllIxV1ATPdCFCo5ILcSn/rOcr7fawdhq0hAeXYd2bXzOi0TYO7zSAz72ZZI3dyTsvSrj/aByEDVc4yll4fWbgodcSLaD8k
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(39830400003)(376002)(136003)(396003)(346002)(366004)(316002)(5660300002)(9686003)(2906002)(55016002)(21615005)(166002)(122000001)(86362001)(7696005)(52536014)(8936002)(6506007)(8676002)(38100700002)(66446008)(64756008)(66556008)(66476007)(76116006)(66946007)(478600001)(186003)(26005)(6916009)(71200400001)(966005)(38070700005)(33656002)(83380400001)(9326002)(2004002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?lqOtUtRQ6FSRg1qjJmujJedrb/8nThWyHTb/Zq1xec/KGNcr9IA2vkzlaMvn?=
 =?us-ascii?Q?Ntacyb2O09aOA7j6Tenw8Mqp+m1eNYPrETUJeCGCSQG8pG/lZ3DuyqiZOkRV?=
 =?us-ascii?Q?ImsB5nA0sYaJyynrqMrJ51hy2dODqeombK9ya4bcjgeYJn1CAPmK3zFrbjxt?=
 =?us-ascii?Q?EptAePBeAOJ+jW4qwYu4mGU2VtpySYSP6Q6XLTSd3zpl1QRzLtOm+RzQF18W?=
 =?us-ascii?Q?xRP7+q50FU2q0eRkWJ0ZKYANeXF2R9fhbyKQhkp6W9NE1hPa9IClmzUk1yCt?=
 =?us-ascii?Q?fMVvz1L7HMwR+stgY+rgsfdYgs/LoDxSgwawueFhm3zjponWhlQKKvDCif89?=
 =?us-ascii?Q?fJpomE7aYR7DnRc6ckb0AiZj+6HuQ24kE1JOMGMHwUp6X4k6hZn+WeUzSkIH?=
 =?us-ascii?Q?JCGyaTCrcx/yMPNxcK+vxiA8o5qcqO6VfWwQiolNrAkajtuARd/RNAxJOJrU?=
 =?us-ascii?Q?9d9GU8RrSPbqKT4DwFTXrdu7TBfkri8y8xvtxuU9OrFJbJT7MMlGFS1WZHiG?=
 =?us-ascii?Q?14bFkjIDc7yklFZTpE0mUnlezaUw2EoeOYBqvuBjwYTQzfYGigJA2VZpRj6i?=
 =?us-ascii?Q?p2hcbmE7EFLt5Vk4vAMePbKPsa1Js9BZSm9J3OYD/FGbq6uNpysh8eGdNZLF?=
 =?us-ascii?Q?RSyyMpMH294qw8oKzBiM8kySXRfIVzJtuWc+YrRR1X6LJs/Bmb0ILsSCLjjM?=
 =?us-ascii?Q?t1QZvzyel9dHkko9M0BzA42UvUgkHjQL1xcR9iHNfCEM430KANwsFnlzzgd+?=
 =?us-ascii?Q?sCMW8XMmNdemsvHwpvx9hIhvVW9voLTLMZBE5quKSA3j+wnW2xrReQT/AAn5?=
 =?us-ascii?Q?K+SX6s01I5Y0mFcW5Ex+JYeM2tg76v51zESi/Xd8nLnWRHS3SV3N49eh9Gx/?=
 =?us-ascii?Q?eiVY/uwkuuzQNadZIqp7LvMh0BDm8HhpT03g83Qb2Rww2BAwf4iAl746HlrB?=
 =?us-ascii?Q?ArfzvAG5NkLDa6FpG3RSRwwcOE7Jh8EVlCGYonxba6xr/TgW9x4+Rt0U7Z7p?=
 =?us-ascii?Q?f2NKJyZ7WD5rO907aWA2gnGa7dMaCGg98gclO/EcTAnxswnoh1fDg8nMn1nf?=
 =?us-ascii?Q?akZ82lpjYRZ0irs8VKcE/hW95hNjnXRfKhGlagFcjZxyVimCxSnZRYKxaPlu?=
 =?us-ascii?Q?/Aee0u/U6+z2nmHV1aYW9T6/Qy/GXhAoM9oU5LRDJJHXPbzhakB2B5+m2FdT?=
 =?us-ascii?Q?7vCI2URVpnwESxQJpCVCvBxI5MmoJOo9Ss+/znXcEtCW0HcP8WTL/d4X5WlQ?=
 =?us-ascii?Q?BAMH0G/GWznHCWGVj8e9hNN6DdVJjNgFbyTa0DGR5P4aLIuEpBjcqoL6Up+d?=
 =?us-ascii?Q?eixXBWI4ufW6CdSPPZvVNLZ8?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 033892e7-5ff2-4e09-16d2-08d95cac5397
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 09:42:25.5477
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CSmsxfdrcrrnQ8n9cswiXIkPGVS/te8AJ8l8L2Lnf2T+jSCrZr36dvc7YzCdaVf+adN1jj5G6++wh5HoIrKMozxmv/xiR8GIpAtP7C7OwRY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR07MB4400
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0702MB3695646062BD6D755085B92B90F89VI1PR0702MB3695_"

--_000_VI1PR0702MB3695646062BD6D755085B92B90F89VI1PR0702MB3695_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi There,

Following the instruction from TI

https://software-dl.ti.com/processor-sdk-linux-rt/esd/AM64X/latest/exports/=
docs/linux/Overview_Building_the_SDK.html

I've setup a yocto project for the AM64x.

Toolchain used is 9.2-2019.12

Now I need to add support for multilib32 because I have some software that =
can be compiled only 32 bit.

I added the following lines to conf/local.conf

# Define multilib target
require conf/multilib.conf
MULTILIBS =3D "multilib:lib32"
DEFAULTTUNE_virtclass-multilib-lib32 =3D "armv7athf-neon"

And I am able to build a few packges with lib32- successfully, however, lib=
32-libtool-cross fails at the configure stage:

--host is set to the value armmllib32-linux-gnueabi

ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: configure failed
ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: Execution of '/home/build=
/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux=
-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_configure.29261' failed w=
ith exit code 1:
automake (GNU automake) 1.16.1
Copyright (C) 2018 Free Software Foundation, Inc.
License GPLv2+: GNU GPL version 2 or later <https://gnu.org/licenses/gpl-2.=
0.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Written by Tom Tromey <tromey@redhat.com<mailto:tromey@redhat.com>>
       and Alexandre Duret-Lutz <adl@gnu.org<mailto:adl@gnu.org>>.
AUTOV is 1.16
autoreconf: Entering directory `.'
autoreconf: configure.ac: not using Gettext
autoreconf: running: aclocal --system-acdir=3D/home/build/tisdk/build/arago=
-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-lib=
tool-cross/2.4.6-r0/lib32-recipe-sysroot/home/build/tisdk/build/arago-tmp-e=
xternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-c=
ross/2.4.6-r0/lib32-recipe-sysroot/usr/share/aclocal/ --automake-acdir=3D/h=
ome/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmlli=
b32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/sh=
are/aclocal-1.16 -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtoo=
l-2.4.6/m4/ -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/ar=
mv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4=
.6/tests/ -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroo=
t-native/usr/share/aclocal/ --force --warnings=3Dcross -I m4
aclocal: warning: unknown warning category 'cross'
autoreconf: configure.ac: tracing
autoreconf: running: /home/build/tisdk/build/arago-tmp-external-arm-glibc/w=
ork/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recip=
e-sysroot-native/usr/bin/autoconf --include=3D/home/build/tisdk/build/arago=
-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-lib=
tool-cross/2.4.6-r0/libtool-2.4.6/m4/ --include=3D/home/build/tisdk/build/a=
rago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32=
-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ --include=3D/home/build/tisdk/=
build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueab=
i/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/share/aclocal/ --f=
orce --warnings=3Dcross
autoreconf: running: /home/build/tisdk/build/arago-tmp-external-arm-glibc/w=
ork/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recip=
e-sysroot-native/usr/bin/autoheader --include=3D/home/build/tisdk/build/ara=
go-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-l=
ibtool-cross/2.4.6-r0/libtool-2.4.6/m4/ --include=3D/home/build/tisdk/build=
/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib=
32-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ --include=3D/home/build/tisd=
k/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnue=
abi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/share/aclocal/ -=
-force --warnings=3Dcross
autoreconf: running: automake --add-missing --copy --force-missing --warnin=
gs=3Dcross
automake: warning: unknown warning category 'cross'
autoreconf: running: gnu-configize
autoreconf: Leaving directory `.'
| NOTE: Running ../libtool-2.4.6/configure  --build=3Dx86_64-linux         =
                        --host=3Darmmllib32-linux-gnueabi                  =
 --target=3Darmmllib32-linux-gnueabi                         --prefix=3D/us=
r           --exec_prefix=3D/usr                          --bindir=3D/usr/b=
in                             --sbindir=3D/usr/sbin                       =
       --libexecdir=3D/usr/libexec                             --datadir=3D=
/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonml=
lib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/s=
hare                      --sysconfdir=3D/etc                            --=
sharedstatedir=3D/com                                 --localstatedir=3D/va=
r                             --libdir=3D/usr/lib                          =
     --includedir=3D/usr/include                                 --oldinclu=
dedir=3D/usr/include                      --infodir=3D/home/build/tisdk/bui=
ld/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/l=
ib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share/info            =
                     --mandir=3D/home/build/tisdk/build/arago-tmp-external-=
arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4=
.6-r0/lib32-recipe-sysroot/usr/share/man                   --disable-silent=
-rules                      --disable-dependency-tracking                  =
              --with-libtool-sysroot=3D/home/build/tisdk/build/arago-tmp-ex=
ternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cr=
oss/2.4.6-r0/lib32-recipe-sysroot
configure: loading site script /home/build/tisdk/sources/meta-openembedded/=
meta-networking/site/endian-little
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
endian-little
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-common
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-32
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common-linux
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common-glibc
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
arm-linux
configure: loading site script /home/build/tisdk/sources/oe-core/meta/site/=
common
## ------------------------- ##
## Configuring libtool 2.4.6 ##
## ------------------------- ##

checking for GNU M4 that supports accurate traces... /home/build/tisdk/buil=
d/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/li=
b32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/m4
checking whether /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/=
armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sy=
sroot-native/usr/bin/m4 accepts --gnu... yes
checking how m4 supports trace files... --debugfile
checking for a BSD-compatible install... /home/build/tisdk/build/arago-tmp-=
external-arm-glibc/hosttools/install -c
checking whether build environment is sane... yes
checking for armmllib32-linux-gnueabi-strip... arm-none-linux-gnueabihf-str=
ip
checking for a thread-safe mkdir -p... /home/build/tisdk/build/arago-tmp-ex=
ternal-arm-glibc/hosttools/mkdir -p
checking for gawk... gawk
checking whether make sets $(MAKE)... yes
checking whether make supports nested variables... yes
checking whether make supports nested variables... (cached) yes
checking build system type... x86_64-pc-linux-gnu
checking host system type... Invalid configuration `armmllib32-linux-gnueab=
i': machine `armmllib32-unknown' not recognized
configure: error: /bin/bash ../libtool-2.4.6/build-aux/config.sub armmllib3=
2-linux-gnueabi failed
WARNING: /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2=
hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_confi=
gure.29261:1 exit 1 from 'exit 1'

ERROR: Logfile of failure stored in: /home/build/tisdk/build/arago-tmp-exte=
rnal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cros=
s/2.4.6-r0/temp/log.do_configure.29261


Manually running the configure command with -host=3Darm-none-linux-gnueabih=
f is working properly.

How can I fix the recipe to set -host correctly in this case?

Thanks a lot,

Nir.


--_000_VI1PR0702MB3695646062BD6D755085B92B90F89VI1PR0702MB3695_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hi There,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Following the instruction from TI<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><a href=3D"https://software-dl.ti.com/processor-sdk-=
linux-rt/esd/AM64X/latest/exports/docs/linux/Overview_Building_the_SDK.html=
">https://software-dl.ti.com/processor-sdk-linux-rt/esd/AM64X/latest/export=
s/docs/linux/Overview_Building_the_SDK.html</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;ve setup a yocto project for the AM64x.<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Toolchain used is 9.2-2019.12<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I need to add support for multilib32 because I h=
ave some software that can be compiled only 32 bit.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I added the following lines to conf/local.conf<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"># Define multilib target<o:p></o:p></p>
<p class=3D"MsoNormal">require conf/multilib.conf<o:p></o:p></p>
<p class=3D"MsoNormal">MULTILIBS =3D &quot;multilib:lib32&quot;<o:p></o:p><=
/p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;armv7=
athf-neon&quot;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">And I am able to build a few packges with lib32- suc=
cessfully, however, lib32-libtool-cross fails at the configure stage:<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">--host is set to the value armmllib32-linux-gnueabi<=
o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: co=
nfigure failed<o:p></o:p></p>
<p class=3D"MsoNormal">ERROR: lib32-libtool-cross-2.4.6-r0 do_configure: Ex=
ecution of '/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7=
at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/temp/run.do_co=
nfigure.29261' failed with exit code
 1:<o:p></o:p></p>
<p class=3D"MsoNormal">automake (GNU automake) 1.16.1<o:p></o:p></p>
<p class=3D"MsoNormal">Copyright (C) 2018 Free Software Foundation, Inc.<o:=
p></o:p></p>
<p class=3D"MsoNormal">License GPLv2+: GNU GPL version 2 or later &lt;<a hr=
ef=3D"https://gnu.org/licenses/gpl-2.0.html">https://gnu.org/licenses/gpl-2=
.0.html</a>&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">This is free software: you are free to change and re=
distribute it.<o:p></o:p></p>
<p class=3D"MsoNormal">There is NO WARRANTY, to the extent permitted by law=
.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Written by Tom Tromey &lt;<a href=3D"mailto:tromey@r=
edhat.com">tromey@redhat.com</a>&gt;<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; and Alexandre D=
uret-Lutz &lt;<a href=3D"mailto:adl@gnu.org">adl@gnu.org</a>&gt;.<o:p></o:p=
></p>
<p class=3D"MsoNormal">AUTOV is 1.16<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: Entering directory `.'<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: configure.ac: not using Gettext<o:p></o:=
p></p>
<p class=3D"MsoNormal">autoreconf: running: aclocal --system-acdir=3D/home/=
build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-=
linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/home/build/=
tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-=
gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share/aclocal=
/
 --automake-acdir=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal-1.16 -I /home/build/tisdk/build/arago-tmp=
-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool=
-cross/2.4.6-r0/libtool-2.4.6/m4/
 -I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-ne=
onmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/tests/ -=
I /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neon=
mllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/us=
r/share/aclocal/
 --force --warnings=3Dcross -I m4<o:p></o:p></p>
<p class=3D"MsoNormal">aclocal: warning: unknown warning category 'cross'<o=
:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: configure.ac: tracing<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: /home/build/tisdk/build/arago-t=
mp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libto=
ol-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/autoconf --include=3D/home/=
build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-=
linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/m4/
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6=
/tests/ --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal/
 --force --warnings=3Dcross<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: /home/build/tisdk/build/arago-t=
mp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libto=
ol-cross/2.4.6-r0/recipe-sysroot-native/usr/bin/autoheader --include=3D/hom=
e/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib3=
2-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6/m4/
 --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv=
7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/libtool-2.4.6=
/tests/ --include=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/wo=
rk/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe=
-sysroot-native/usr/share/aclocal/
 --force --warnings=3Dcross<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: automake --add-missing --copy -=
-force-missing --warnings=3Dcross<o:p></o:p></p>
<p class=3D"MsoNormal">automake: warning: unknown warning category 'cross'<=
o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: running: gnu-configize<o:p></o:p></p>
<p class=3D"MsoNormal">autoreconf: Leaving directory `.'<o:p></o:p></p>
<p class=3D"MsoNormal">| NOTE: Running ../libtool-2.4.6/configure&nbsp; --b=
uild=3Dx86_64-linux &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--host=3Darmmllib3=
2-linux-gnueabi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--target=3Darmmllib32-linux-gnu=
eabi &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--pref=
ix=3D/usr &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--exec_pre=
fix=3D/usr
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--bi=
ndir=3D/usr/bin &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;--sbindir=3D/usr/sbin &nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--lib=
execdir=3D/usr/libexec &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--datadir=3D/home/build/tisdk/build/ara=
go-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-l=
ibtool-cross/2.4.6-r0/lib32-recipe-sysroot/usr/share
 &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--sysconfdir=3D/etc &nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--shar=
edstatedir=3D/com &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--localstatedir=3D/v=
ar &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; &nbsp;&nbsp;--libdir=3D/usr/lib &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;--includedir=
=3D/usr/include &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 &nbsp;&nbsp;--oldincludedir=3D/usr/include &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p; &nbsp;&nbsp;--infodir=3D/home/build/tisdk/build/arago-tmp-external-arm-g=
libc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0=
/lib32-recipe-sysroot/usr/share/info &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;-=
-mandir=3D/home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at=
2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/lib32-recipe-sys=
root/usr/share/man
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &nbsp;&nbsp;--disable-silent-rules &nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp; &nbsp;&nbsp;--disable-dependency-tracking &nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nb=
sp;&nbsp;--with-libtool-sysroot=3D/home/build/tisdk/build/arago-tmp-externa=
l-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2=
.4.6-r0/lib32-recipe-sysroot<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/meta-openembedded/meta-networking/site/endian-little<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/endian-little<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/arm-common<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/arm-32<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/common-linux<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/common-glibc<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/arm-linux<o:p></o:p></p>
<p class=3D"MsoNormal">configure: loading site script /home/build/tisdk/sou=
rces/oe-core/meta/site/common<o:p></o:p></p>
<p class=3D"MsoNormal">## ------------------------- ##<o:p></o:p></p>
<p class=3D"MsoNormal">## Configuring libtool 2.4.6 ##<o:p></o:p></p>
<p class=3D"MsoNormal">## ------------------------- ##<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">checking for GNU M4 that supports accurate traces...=
 /home/build/tisdk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonm=
llib32-linux-gnueabi/lib32-libtool-cross/2.4.6-r0/recipe-sysroot-native/usr=
/bin/m4<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether /home/build/tisdk/build/arago-tmp-e=
xternal-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-c=
ross/2.4.6-r0/recipe-sysroot-native/usr/bin/m4 accepts --gnu... yes<o:p></o=
:p></p>
<p class=3D"MsoNormal">checking how m4 supports trace files... --debugfile<=
o:p></o:p></p>
<p class=3D"MsoNormal">checking for a BSD-compatible install... /home/build=
/tisdk/build/arago-tmp-external-arm-glibc/hosttools/install -c<o:p></o:p></=
p>
<p class=3D"MsoNormal">checking whether build environment is sane... yes<o:=
p></o:p></p>
<p class=3D"MsoNormal">checking for armmllib32-linux-gnueabi-strip... arm-n=
one-linux-gnueabihf-strip<o:p></o:p></p>
<p class=3D"MsoNormal">checking for a thread-safe mkdir -p... /home/build/t=
isdk/build/arago-tmp-external-arm-glibc/hosttools/mkdir -p<o:p></o:p></p>
<p class=3D"MsoNormal">checking for gawk... gawk<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether make sets $(MAKE)... yes<o:p></o:p>=
</p>
<p class=3D"MsoNormal">checking whether make supports nested variables... y=
es<o:p></o:p></p>
<p class=3D"MsoNormal">checking whether make supports nested variables... (=
cached) yes<o:p></o:p></p>
<p class=3D"MsoNormal">checking build system type... x86_64-pc-linux-gnu<o:=
p></o:p></p>
<p class=3D"MsoNormal">checking host system type... Invalid configuration `=
armmllib32-linux-gnueabi': machine `armmllib32-unknown' not recognized<o:p>=
</o:p></p>
<p class=3D"MsoNormal">configure: error: /bin/bash ../libtool-2.4.6/build-a=
ux/config.sub armmllib32-linux-gnueabi failed<o:p></o:p></p>
<p class=3D"MsoNormal">WARNING: /home/build/tisdk/build/arago-tmp-external-=
arm-glibc/work/armv7at2hf-neonmllib32-linux-gnueabi/lib32-libtool-cross/2.4=
.6-r0/temp/run.do_configure.29261:1 exit 1 from 'exit 1'<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ERROR: Logfile of failure stored in: /home/build/tis=
dk/build/arago-tmp-external-arm-glibc/work/armv7at2hf-neonmllib32-linux-gnu=
eabi/lib32-libtool-cross/2.4.6-r0/temp/log.do_configure.29261<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Manually running the configure command with &#8211;h=
ost=3Darm-none-linux-gnueabihf is working properly.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can I fix the recipe to set &#8211;host correctl=
y in this case?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks a lot,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Nir.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_VI1PR0702MB3695646062BD6D755085B92B90F89VI1PR0702MB3695_--
