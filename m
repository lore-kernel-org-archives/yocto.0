Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.139])
 by mx.groups.io with SMTP id smtpd.web10.7592.1628689294159989958
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Aug 2021 06:41:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@servotronix1008982.onmicrosoft.com header.s=selector2-servotronix1008982-onmicrosoft-com header.b=iavg1NTZ;
 spf=pass (domain: servotronix.com, ip: 40.107.8.139, mailfrom: nir.geller@servotronix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WQxQIbMJgpk5ZTOzOR/AO58Y5l2ZPhGLrXNzHq6Jm+GwfNBqDK1uXwjkjgw28VFWMPbCmeYhgSNV5nbtj6YT7F64wneAzmDaU00PJOt+Nwj8KVbeMhsibFaQiV322UMYs9dQpl3U6zz+GXgiXvT8bfhdk2oUtaSoUCFTtE2lOaBzuauuss5iVh2SIhFzIjNMzJV8uHuSMfqjgC+AqPdRFQTr7ChLNnolX819elb1BgJQdx9FAMRj8EFvmZKNsfdiG9yiyj9VCM54HtezGLHkSE59DXcI4NnIqw2H7urk+9gcH/zleElOtZjz+OqDpzqIosF3m9d61h3bB8PtGg4xSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0PtHPnp6lTlAxg/DrTTvhLXkvEq/aDFyGTvw4hv0/9I=;
 b=aCV0zT8I7wTlqkG4jQFubG1xpNVqxrzUtezKJstPslTEGyANy5/AF9KU6n6E8IT23RKj9QNJH2YtdH5knOyE3A7y6ptqLOxJIC4nZbXvi5DGKhNy5h462z8cHvTWxVng0MsnCo+r9GofU6HAEHlFyT139cvgXntMnp7kwK5PPt+aHjCzfAJ+YCwXdu60FMvWpOGNVSOFb6uQjhayAOVt7pHfGRzBPr3YHdeQlrCgs86fQb+xX/RCMaR4p6IyjKrgTzcITP5r543Oqmwp4iS57t/NZ+qrhAcLyrIwxImjzlRr9riyrUx575LCaGClcKelea9vKDcxoqyx4kaeRqlVsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=servotronix.com; dmarc=pass action=none
 header.from=servotronix.com; dkim=pass header.d=servotronix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=servotronix1008982.onmicrosoft.com;
 s=selector2-servotronix1008982-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0PtHPnp6lTlAxg/DrTTvhLXkvEq/aDFyGTvw4hv0/9I=;
 b=iavg1NTZXuW/NuG+ZMorqr7YMhof1t0XTWD2FFatbtCmVBByX0JVfQhPi+hOyN9PF7qAMArl26ehZKoY+lwiwdU3ntrlrd+kzFarPpMhrA411C9gZ0tiAR9DzYRGmAdS8Vmb8FajLBeDiTT4pdzG+TtgY3LgCivx3u1OGXZ0tH4=
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com (2603:10a6:803:7::12)
 by VI1PR0701MB6880.eurprd07.prod.outlook.com (2603:10a6:800:19d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.6; Wed, 11 Aug
 2021 13:41:23 +0000
Received: from VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7]) by VI1PR0702MB3695.eurprd07.prod.outlook.com
 ([fe80::24ea:3eb1:7096:60c7%5]) with mapi id 15.20.4415.012; Wed, 11 Aug 2021
 13:41:23 +0000
From: "Geller, Nir" <nir.geller@servotronix.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Topic: multilib32: libtool-cross_2.4.6.bb configure failure
Thread-Index: AdeOlO8NS8O6ySAgTamPedi1GCaocwAIQWoQ
Date: Wed, 11 Aug 2021 13:41:22 +0000
Message-ID: 
 <VI1PR0702MB36954030B45FDB613624BEE690F89@VI1PR0702MB3695.eurprd07.prod.outlook.com>
References: <169A373D601F14AC.28384@lists.yoctoproject.org>
In-Reply-To: <169A373D601F14AC.28384@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=servotronix.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2bf9f987-984c-40bc-8037-08d95ccdb557
x-ms-traffictypediagnostic: VI1PR0701MB6880:
x-microsoft-antispam-prvs: 
 <VI1PR0701MB68801147C00613D0696D6A0B90F89@VI1PR0701MB6880.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 XazPKHml85lynQJ30iPXxwXfodYr7g80mkivM/8reNgfrIYkimGf/yVqpfH+oZWlXt3NjRxhnLlLCneb1sZeaeeTS72fHrNARwIq9eyL6nXX9//zIlp5Dwxsu4BzUnwPujUOp4Q1sk9yIxVUCxcKcWX0HAWDqjO7E0zjry+IQTz7YoR4PHNeVN+cC3eacDwTm9GnnTzMuS84B/mCgKw7NsMDWVsxkDv3Gkk1gN4yA1LnebxvwgBu4dXo2pWJatJsPvps6JpG7hxJFlLh5S1m7jC7fXf5FjXnsDvGeT/Nd5n93SBmivEGPt7yPgC+k4JCJLYTm2PMvlSH5gS1qE5rtIHiEGzl0kPwQufQ7e+jDnFO6HJn+w/VgHDYQ4CXDilXDEkFe/0CJqnpEYOG6lidqYcrqLuDDA+/pD3aQLGuSFvYEf/q1XaNM2Pt4vx7WVQ1IZdfGu14nxXa+NcISCE2rF7w1GiPqhpBUrmg5VMUHD2vanowQM7xPRomQ+GuHkSMaRyjM+KBQJuUmR28OTr9pUHU00woTGXjrOY+fyTTCmlY7WE142kRTZAH0sOFP3YTVLiWyuXV78Y8BaTqeKLgbomEEaCsM4xjPP5rMg+miP8OfwyWfj1IU0OojykuEK93AXRmPHhCJA+TcosiMF7pCx/quJ+OwyttaQR1HaLA8/vryHNG10Vt2bysgqR1uYgp4V0ZmJEyCozMXeBMk4+4+1xNSf3HcRdDfw8s0jt7QjiLSzU2lH/UirV7KhXqs53iONLTmCAcn7TaWZBs+xauleOpCOcYSW3C2Izq9/gMBRYE2Je+PSlfeB526+j/vvAE
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR0702MB3695.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(376002)(396003)(39840400004)(346002)(136003)(366004)(83380400001)(55016002)(66946007)(66476007)(966005)(66556008)(8676002)(86362001)(9686003)(76116006)(64756008)(21615005)(53546011)(8936002)(52536014)(2906002)(7696005)(6506007)(66446008)(38100700002)(186003)(6916009)(5660300002)(316002)(478600001)(33656002)(122000001)(166002)(26005)(38070700005)(71200400001)(2004002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?5GK0OzXAmdu77nCqpuyYlyatqfxQZy3VpdMHLwnWHJUmATMdb50ibx71uDHe?=
 =?us-ascii?Q?7mPZxmB3cj0WzWBoPnw+gJIWqAv5CHx16fxbHXwcrke+sZbVGIS7BFlCMH01?=
 =?us-ascii?Q?UGHBBI6jtXwlrEvo0Y4JNqQB8oxzidPwtZnH04IjSqAoEcRv7HSsvsehnX20?=
 =?us-ascii?Q?VpvA8cdMpYCGP+X1jjS3b22q5nkB5DBzwLRB60hXfZ5WMf/ylcMVNcoARGmo?=
 =?us-ascii?Q?SmQ8Okm5YsndPE7o6PN7tqnpIl9XKuJPf6lSMbj2GS0q3Kh+eo0mjuGFENsS?=
 =?us-ascii?Q?/9ekv1pQlhh0zH68ck4QGhfSYyh6cigjXC+lp1G1JjZCNUMYSRTxNoPqRYs1?=
 =?us-ascii?Q?RHDjDlP0da6cmndQcAImy9cvb9DNleaxRIZ+JYMBu54IhLDAHJZVHIzdsTh+?=
 =?us-ascii?Q?JIzqnME/7ajefPUClfMWDpJD2SdqQHpqIyKjRzh/A6QZLI9sGAL1JRfg6oJd?=
 =?us-ascii?Q?ZOIjMSkx1zlEr+ropLWdKApJGwIoNzolbPgYdKShUN8GcSrocUAVoYgnCMDJ?=
 =?us-ascii?Q?yNYKyNwPqKaMCINm4blqouhddGKJAK4Cy+i9Fr2DbSEJ5uKUsmf5WSujm9r4?=
 =?us-ascii?Q?asXoT8KJeR2IsW5BzwXk5S0LWlltBKvEyAOUOX+AY2KdWSZDAaY/IJw7x9pB?=
 =?us-ascii?Q?8d2pUD/kBz990iOL5gqSlSexc23xXKL9iw6AN2VvjDvCHGe4Gmf+LPPPH7zx?=
 =?us-ascii?Q?wdh9aS1AxcsrfwSm4fipvK14N2Tf9UldnlEFLNLZiqdx/f8hLNDnvBTtbtRi?=
 =?us-ascii?Q?TDgGYqv3hUQr0nE49zHHp6eFNEYwRMzEnYCI3eaumDUQmgFYIcotc6nXWU+k?=
 =?us-ascii?Q?ofVDCT4VMWK0weGMJrLQNcfmD9x6msAGHVG6ArEll0bglH8T7lamAWDUgGcV?=
 =?us-ascii?Q?yooAhX/+9yE6rQ+W9V1biKuqKEhI3OhpKmTskYkQ9zmd2eWR4GqfhNumBbc7?=
 =?us-ascii?Q?xTTeCrx36DR95Kk7YJn9XroDjasCI35cmfxX7GSLmDpBB2fY3Pksp0HapO03?=
 =?us-ascii?Q?Zq4lVwKBC/9Gs3r538a1NyBZYSnNcn8BU39/g4Rd3mvJfVtbC+mJKKNMVt3z?=
 =?us-ascii?Q?Hg+jtfn78WWKKg7od9xFG2Jo5DPBUqI0YnhoBeaEPkCzTBlTiAoTqlVI9BPt?=
 =?us-ascii?Q?MIoKyMYtShmEnLvCKBBOJTlJDB293n6VLSb2Ea715bmXIjG+oJyc+Jla3mrc?=
 =?us-ascii?Q?xyt77Xs0y6q3cpP0PheXv/Uk3LeUQWVJyMkg/Oq/EslkAJijTJPNlXfO1bRQ?=
 =?us-ascii?Q?t495KU0RC7Hr+3wCN74OlSB1ldsvr3VAOna7tY4jezoJK6b8X0m0smb+x/xg?=
 =?us-ascii?Q?tvgclxGwzmTPCIldIdpyr4z9?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: servotronix.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR0702MB3695.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bf9f987-984c-40bc-8037-08d95ccdb557
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Aug 2021 13:41:22.9148
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c4bfc7d-fde6-4201-a2d6-2a396cc790f7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mOMyFxqdigiyS9TtgGwHCzUnicYyN6f1GiKLZBnC8Y0ERse7cUPVLKJglBTH8Rz2SolWnYz9GTVDccY+Kg1zOO8ywrLlvWdKWFATWzHtXC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0701MB6880
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0702MB36954030B45FDB613624BEE690F89VI1PR0702MB3695_"

--_000_VI1PR0702MB36954030B45FDB613624BEE690F89VI1PR0702MB3695_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Investigating run.do_configure suggests that in the configure stage oe_runc=
onf() is set with what seems to be wrong -host and -target values:
 --host=3Darmmllib32-linux-gnueabi   --target=3Darmmllib32-linux-gnueabi

How can I influence oe_runconf() generation and set correct values?

From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Behalf=
 Of Geller, Nir
Sent: Wednesday, August 11, 2021 12:42 PM
To: yocto@lists.yoctoproject.org
Subject: [yocto] multilib32: libtool-cross_2.4.6.bb configure failure

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


--_000_VI1PR0702MB36954030B45FDB613624BEE690F89VI1PR0702MB3695_
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
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal">Investigating run.do_configure suggests that in the =
configure stage oe_runconf() is set with what seems to be wrong &#8211;host=
 and &#8211;target values:<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;--host=3Darmmllib32-linux-gnueabi &nbsp;&nbsp;=
--target=3Darmmllib32-linux-gnueabi<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">How can I influence oe_runconf() generation and set =
correct values?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0cm =
0cm 0cm">
<p class=3D"MsoNormal"><b>From:</b> yocto@lists.yoctoproject.org &lt;yocto@=
lists.yoctoproject.org&gt;
<b>On Behalf Of </b>Geller, Nir<br>
<b>Sent:</b> Wednesday, August 11, 2021 12:42 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> [yocto] multilib32: libtool-cross_2.4.6.bb configure failur=
e<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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

--_000_VI1PR0702MB36954030B45FDB613624BEE690F89VI1PR0702MB3695_--
