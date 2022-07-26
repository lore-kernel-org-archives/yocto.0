Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB504C00140
	for <webhook@archiver.kernel.org>; Tue, 26 Jul 2022 20:44:45 +0000 (UTC)
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (NAM12-MW2-obe.outbound.protection.outlook.com [40.107.244.119])
 by mx.groups.io with SMTP id smtpd.web09.12035.1658868279031804925
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 13:44:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=ktXdrfBx;
 spf=pass (domain: sakuraus.com, ip: 40.107.244.119,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d+kRUfO/8TO6lcd1ueLrlKRQW2kiQGQxft0ILi6EqR9hszyMXoZHumHgADDwx3622xGnL2RGvtvl9HiHDTekBEJU+NzQj8OU+441bsuJWM3997InVIPHNl0UCF8PpZMLlJ6nKSYtwMF7L3bp9ACu0Ap/0Ptfe2yHq1w1eYBr70kKgdBgHxBCFZA/FxEgfFufdbGSKgY/OZSP82IV4C6csmSvvLbBY2zrNYkrYsImmUqI3LgutkXZN8st6MGTl9KKm9OPo2SWjjMPF+RNjNn0egRJ+3X1Tb1AsbrqM1uGpNBI8/jAcYtCavBUgAknCb7AdMK+TsiCMmawOXwaZU03bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=imWz3D4oDSB66VA7PbFquAL5zI9ISgHpzlXmj6ndbFk=;
 b=UEUW1T8kgJ5pvZyY2nmE8nnzuR4C44kfdxYVENtNpI5ZsGoZgfHvXcr2VacYpUhqaM/eutooev7DUCjEjzBGccLEvnpvZMLThKtDMd1FsUyPNVje3RMkvUMFvSxWFN7qLOlZuKNbB7Vg3U8QatBTAXEu9q/rfy/03kbT+Gj6p97DNMCvCHD9uGd/Fy6+TMNzagqH/TvZVvP1tXC5FacP/+sZDWASuAFNnt50iqh5+OMPhNydr/4eMOkVxHZy0xf89Z13MSKAT3qT+zzBeoEpdEsQQ65X5e16aqYr3Z4qWUmw51lf+kvpdOdXmHRHrpzSs+HvMIsTH8zF+CzffbzQMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=imWz3D4oDSB66VA7PbFquAL5zI9ISgHpzlXmj6ndbFk=;
 b=ktXdrfBx1uAHUooiI/yy57CqU+InYpSM6RzJiJMSFQlfkMawOQdPjRKZsW15dE47p83qOzwGJo62EEQu99WHeKNS2SG9HnRLvuxDmME7yvBHZ0Xx/yL+G1FZsbNc9TcoDPlTGyKEgP0yHufyh0d9S66RvtzV4+wt+JPcLzHhUDk=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by BN6PR15MB1156.namprd15.prod.outlook.com (2603:10b6:404:e6::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Tue, 26 Jul
 2022 20:44:35 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be%6]) with mapi id 15.20.5458.025; Tue, 26 Jul 2022
 20:44:34 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Getting error for allarch dynamically renamed package
Thread-Topic: Getting error for allarch dynamically renamed package
Thread-Index: AQHYoS+vnKQc5gG+wUW9brnuOB6qqQ==
Date: Tue, 26 Jul 2022 20:44:34 +0000
Message-ID: 
 <PH0PR15MB5055B2211917B31D298918B1CB949@PH0PR15MB5055.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9711a5e1-4fc8-4f5a-a9d9-08da6f47a613
x-ms-traffictypediagnostic: BN6PR15MB1156:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 57BIdstMRkP6gYzIilpGx5/1fXY/vvWMbssgjBujJjA9sUQ/hPdDEjd1hqWVkVvQbK7LcbhZENLKshzNoQL7kbi56RMxNWzW1uW2/5+f08DRLI3UqvyfKLcqaEDeeWUIv/uZBQMoOq5w9faZIFK2eobgbetNaD88HqIfS+kHxLpX51iewCW9B4Cxw9LI26/lRBU8N2HiC43EbxZnSxWsJemCl6ex0PBb5gQavWxZYeQb0XO9yAzo4fl83li4mxnpgLurRq9BZRn7YFxq/k0fUzqomnm9YOELv2vjvS8Qm4tvpY5v5tiTFWpkQZrD12wYlUPNrSzKVf8eI8x0gAHZP+JFpKTirQKobY9gc2N8+9Ow4JC3nkKs+6o5D03geA9YknlgMc/9oaM63CYfIdlGY+y9eB4yoPDJwbwxruCifyizSHPDsluJ4K+iBnvVLpIGCL9Z5Mqu+44CY+9qEYtnlXoAxNXg+lQ5IMS2cc2vVQoIgi5ztyJD0eiGk2HPyDiOyWST/uSwuSv+9hEnLLcf3gtf9LJyGOgyJ0+RPmH5F3ELuv8L/faG7MtK3a798nSLYkZwbspyiUr5j5X2untTcLA/DhI7tNX8nD2O72ysTXcroBJOXqi4jlmGw1socrajbp+YdZo7aockPdnGBJSUiHCPVdMXDyM0Gwg7ffoqGTuQLjsVk66nzXmsiyvlfKPVZRh3y3wbgUOTy7ygKXJKJ6q9FAIbumtRIJjg/oPWnr2689fKsV3mvv0qdgt2SB9sfzdTajnQCC7HkpMyIrbxyuL0HXJiA5qVNXn8qgnzYmKW2kEdelVVcR5ubXod3rA2N9hEWsPTmvCxKd+6cGvuKB2omuZWbSHkusjfNNV5GT0=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(39840400004)(376002)(346002)(366004)(396003)(122000001)(38070700005)(86362001)(38100700002)(33656002)(55016003)(5660300002)(8936002)(316002)(52536014)(478600001)(8676002)(66476007)(6916009)(66556008)(83380400001)(76116006)(186003)(66946007)(71200400001)(6506007)(41300700001)(26005)(9686003)(2906002)(7696005)(19627405001)(64756008)(66446008)(18121605002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?GBcsPpUjo7CQ2+s0SxBZcJBiY01cyn2TJrSv0TuUeXnjYK7CJKR7Vg/x5T?=
 =?iso-8859-1?Q?9RG9jjQPAyiuzr5B3VPNxsPCZDac2YPIyMZRgEjlfTgWTzjnhJz/P/sxOq?=
 =?iso-8859-1?Q?/fOvLn/02tBQK7TgFgnzw3z/pNYz36jL8B7ZftWr909wMB7H83jxh2ewh5?=
 =?iso-8859-1?Q?cfaM8OmUQOG6GltbPQzNO9Ds+QIqrZA4vvJvMfLnyGREw3hk4N0mQTnRlJ?=
 =?iso-8859-1?Q?KNPP/h8KAoBDtdekFhGw/dnMcjo97u/1T2skdkWmkRkIVIcPAmpLah1lei?=
 =?iso-8859-1?Q?GQJJs4RefZnomhaf7nloQkAkovb6NFgFIZhzzYPJ2Z0sujL1pT67lRI3C/?=
 =?iso-8859-1?Q?nCHR/W5t4EiUvTeT50BYdEdihrLARSfjKIHKXDOBFNTWHiP/gmZZ+lyIwL?=
 =?iso-8859-1?Q?Bf6TnZouz/qv3GMLSGe/K5V7FjJ8pBYUHK219o+3f7Sq53ryaA+FB6RNRP?=
 =?iso-8859-1?Q?v2wbN1kgOO6Aox1LePGx2CzUBiPDc7e5Q5ROG8BDWq/XBiCkCPvwsq/J5+?=
 =?iso-8859-1?Q?Z0ucvSGu/292xppN38zd6727jTyRMznfvj5WhdHirIs+qIfjN464ZVU707?=
 =?iso-8859-1?Q?e3UzQiu8kw0wN9qWXgkUVfd4tSAYq2T/q09bx1al4pO7jH8bjRx3BnkOzX?=
 =?iso-8859-1?Q?VlSLQJTKOWI1kord8aBvcDOctl7PASbiTaAYCllm3+itekOjy7kLYu3RuU?=
 =?iso-8859-1?Q?5AOpbtCiUUrUuY2IPSoq1Pm/vVRwbfUImCCr6rK58Sdw4fIPFWq4JfQbpQ?=
 =?iso-8859-1?Q?X3xbtbQPRW3DGsEZbkQM/ynMvu4Dlse6ea5G6FWfbDhFZpn9WlA9PV1GYA?=
 =?iso-8859-1?Q?ooT+qogAa8I2YZz7BLyqY8gSG+KVAIYsWJVxV4vc29fTTEQmtk8ZT6MZ7T?=
 =?iso-8859-1?Q?oQH/AGK5ymwwPbTI0KRmFjV+ozlRfWSVGLbIXeUDqEzVQJwMHDxqAhQg+w?=
 =?iso-8859-1?Q?uF2q+3zu+0NnmlZeKkg49FSsGsK7ohkw93mzpT4DxtuhhIs8EJjOXtFg6T?=
 =?iso-8859-1?Q?AlhrguYCA9b6ddWBhM5bPTH1AzHYirb9DX6xhxe62WYcavHOB+uu9Ri/bT?=
 =?iso-8859-1?Q?ZeaKu54fT/pD48lFWWYVhSZMb8LPA79kIrzNwuByCel8ABOtJ7ex9FEvvQ?=
 =?iso-8859-1?Q?bCyNo76/ZM7KrlVIMt4kPYQRWSEUDfhWMJsiJCFvGR5FKxNn4KWtjjbHNV?=
 =?iso-8859-1?Q?RzgkYxAgs28aTqFzJ5Tryu5uzsCUyTDyaOBhK6vnDqIMXZoUlYXJrJUauP?=
 =?iso-8859-1?Q?j/rrOWXNDjQYZgBiaHA4T7OCGmoW/7/rz7htCHLAiU49PLKkmNVfVTsW+t?=
 =?iso-8859-1?Q?yWTvfGLJKDX7FI8vv3T2BjEbSFfMK4a8JPetnQt3F/7lj58kQygDV0+EUK?=
 =?iso-8859-1?Q?yd7SN3vKYAEzpnYhr0TQMYZoiTdUWky1jt7bMUQInjIZb8bd46/QYjj7k5?=
 =?iso-8859-1?Q?55hX/+m5xjGJAf6b26FFMhnPTmnsBa0mzwASxna098v1x6ysRUUDDj2I6R?=
 =?iso-8859-1?Q?U1ilZ3g9qfrKrTBb8zqm+rRd2kwW2YGsBRIAG/ZG3b15eHfS+y+7Cd5Ib9?=
 =?iso-8859-1?Q?tCbremUvatDqcHhaPfZijL9Tpp/mHX3/SSadc7relAgHQ/89NYnlOJdTV7?=
 =?iso-8859-1?Q?/5e/4V1yT2kDM=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB5055B2211917B31D298918B1CB949PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 9711a5e1-4fc8-4f5a-a9d9-08da6f47a613
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jul 2022 20:44:34.5857
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 +3l50RpOBerUIpL1LktIriYdALE8Ixb4DZaXOp6Ws22kff8gs3jdOD3p3dwYDYwDfsGcFGVABHt6Ir6aPkAecA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR15MB1156
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Jul 2022 20:44:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57648

--_000_PH0PR15MB5055B2211917B31D298918B1CB949PH0PR15MB5055namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello list,
I'm getting the following error message:
do_package_write_ipk: An allarch packagegroup shouldn't depend on packages =
which are dynamically renamed (zint to libzint2.11)

The zint_2.11.0.bb recipe is below:

# Recipe created by recipetool
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.
# (Feel free to remove these comments when editing.)

SUMMARY =3D "A barcode generator and library"
# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guess=
es - it is
# your responsibility to verify that the values are complete and correct.
#
# NOTE: multiple licenses have been detected; if that is correct you should=
 separate
# these in the LICENSE value using & if the multiple licenses all apply, or=
 | if there
# is a choice between the multiple licenses. If in doubt, check the accompa=
nying
# documentation to determine which situation is applicable.
#
# The following license files were not able to be identified and are
# represented as "Unknown" below, you will need to check them yourself:
#   backend/LICENSE
#   debian/copyright
#
# NOTE: spec file indicates the license may be "GPLv3+"
LICENSE =3D "GPL-3.0-only"
LIC_FILES_CHKSUM =3D "file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504=
 \
                    file://backend/LICENSE;md5=3D7a60e5da828a98fbdf48c9a327=
c7cdfa \
                    file://debian/copyright;md5=3D7d98b171c0e673a4b0bde1a85=
829586e"

SRC_URI =3D "https://sourceforge.net/projects/zint/files/zint/${PV}/zint-${=
PV}-src.tar.gz"
#SRC_URI[md5sum] =3D "00511707a3b80023b97a6a79c9b145f0"  v2.9.1
SRC_URI[sha256sum] =3D "4e9d4d7dbcf41bfd63b70eca296c564f7c1a9b9d1c70c60e820=
dbe23f216aa09"

S =3D "${WORKDIR}/${BPN}-${PV}-src"

DEPENDS =3D "qttools qtbase libpng"

inherit cmake
# cmake_qt5

# Specify any options you want to pass to cmake using EXTRA_OECMAKE:
EXTRA_OECMAKE =3D "-DCMAKE_SKIP_RPATH=3DTRUE"

do_install:append() {
    rm -rf ${D}/usr/bin
}

FILES:${PN}-dev =3D "/usr/share/apps/cmake/modules/FindZint.cmake"
FILES:${PN} =3D "/usr/lib/lib*.so* /usr/include/*.h"

INSANE_SKIP:${PN} +=3D "dev-so"


The recipe doesn't contain anything that indicates that it is 'dynamically'=
 renaming anything.

Can anybody tell help me understand what is going on and what I need to do =
to get past this?

This has popped up in the process of going from hardknot to kirkstone.

Regards,
Greg


--_000_PH0PR15MB5055B2211917B31D298918B1CB949PH0PR15MB5055namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello list,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I'm getting the following error&nbsp;message:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
do_package_write_ipk: An allarch packagegroup shouldn't depend on packages =
which are dynamically renamed (zint to libzint2.11)</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The zint_2.11.0.bb recipe is below:<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<div style=3D"color:#000000;background-color:#ffffff;font-weight:normal">
<pre># Recipe created by recipetool=0A=
# This is the basis of a recipe and may need further editing in order to be=
 fully functional.=0A=
# (Feel free to remove these comments when editing.)=0A=
=0A=
SUMMARY =3D &quot;A barcode generator and library&quot;=0A=
# WARNING: the following LICENSE and LIC_FILES_CHKSUM values are best guess=
es - it is=0A=
# your responsibility to verify that the values are complete and correct.=
=0A=
#=0A=
# NOTE: multiple licenses have been detected; if that is correct you should=
 separate=0A=
# these in the LICENSE value using &amp; if the multiple licenses all apply=
, or | if there=0A=
# is a choice between the multiple licenses. If in doubt, check the accompa=
nying=0A=
# documentation to determine which situation is applicable.=0A=
#=0A=
# The following license files were not able to be identified and are=0A=
# represented as &quot;Unknown&quot; below, you will need to check them you=
rself:=0A=
# &nbsp; backend/LICENSE=0A=
# &nbsp; debian/copyright=0A=
#=0A=
# NOTE: spec file indicates the license may be &quot;GPLv3+&quot;=0A=
LICENSE =3D &quot;GPL-3.0-only&quot;=0A=
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47f=
ae504 \=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file:=
//backend/LICENSE;md5=3D7a60e5da828a98fbdf48c9a327c7cdfa \=0A=
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; file:=
//debian/copyright;md5=3D7d98b171c0e673a4b0bde1a85829586e&quot;=0A=
=0A=
SRC_URI =3D &quot;https://sourceforge.net/projects/zint/files/zint/${PV}/zi=
nt-${PV}-src.tar.gz&quot;=0A=
#SRC_URI[md5sum] =3D &quot;00511707a3b80023b97a6a79c9b145f0&quot; &nbsp;v2.=
9.1=0A=
SRC_URI[sha256sum] =3D &quot;4e9d4d7dbcf41bfd63b70eca296c564f7c1a9b9d1c70c6=
0e820dbe23f216aa09&quot;=0A=
=0A=
S =3D &quot;${WORKDIR}/${BPN}-${PV}-src&quot;=0A=
=0A=
DEPENDS =3D &quot;qttools qtbase libpng&quot;=0A=
=0A=
inherit cmake=0A=
# cmake_qt5=0A=
=0A=
# Specify any options you want to pass to cmake using EXTRA_OECMAKE:=0A=
EXTRA_OECMAKE =3D &quot;-DCMAKE_SKIP_RPATH=3DTRUE&quot;=0A=
=0A=
do_install:append() {=0A=
&nbsp; &nbsp; rm -rf ${D}/usr/bin=0A=
}=0A=
=0A=
FILES:${PN}-dev =3D &quot;/usr/share/apps/cmake/modules/FindZint.cmake&quot=
;=0A=
FILES:${PN} =3D &quot;/usr/lib/lib*.so* /usr/include/*.h&quot;=0A=
=0A=
INSANE_SKIP:${PN} +=3D &quot;dev-so&quot;=0A=
</pre>
</div>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
The recipe doesn't contain anything that indicates that it is 'dynamically'=
 renaming anything.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Can anybody tell help me understand what is going&nbsp;on and what I need t=
o do to get past this?</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
This has popped up in the process of going from hardknot to kirkstone.</div=
>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Greg</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
</body>
</html>

--_000_PH0PR15MB5055B2211917B31D298918B1CB949PH0PR15MB5055namp_--

