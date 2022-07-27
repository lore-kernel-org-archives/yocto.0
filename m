Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10A5C04A68
	for <webhook@archiver.kernel.org>; Wed, 27 Jul 2022 16:53:41 +0000 (UTC)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com
 (NAM11-CO1-obe.outbound.protection.outlook.com [40.107.220.98])
 by mx.groups.io with SMTP id smtpd.web08.22397.1658940819789595911
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Jul 2022 09:53:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=aZagKkW4;
 spf=pass (domain: sakuraus.com, ip: 40.107.220.98,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WKujB0X/i+Gnyx9d7ICjpoWzWEx6WtvNbfUyRAWH3G77pV8LtWtbeQmCaWY0FhyiiIjbsse8LtsvHs+CPpPcaDpLNykOxynsxdxLatZHOF9qII1h+LyySJljdUNyY1JuZCl3SgMIdZ/+nvNMO9wCJwiO3lI9CwXHOEM2mN7/7NpQrM32S1+Z0yvp5d7pOFK6JSPwhYjgWSWbHWXDReThU3V1bsFh5xjZMkrvgVvwOxLnSv4htOM0pxXsGvv3X1V/1mYAR58V3dZPTiT66zdfjpuEq8XYnsmIhtL0yJ84M1FOEYBnbK7UvBFdsKg8TtwDTeu3XphKjT94dBMYEAjzZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/qxy8KDddpaiaziZIstg8poKS6aSp2t3WJyyQNrxds4=;
 b=kYmk2D601x9B2Vf9gCtjoMOZqKMOnAtABbfhC8kS2xRp2fMSqJn7skgu4RLvBJqaI06uNlbtwJFKkb8JRP0/Hb5vLgc62usXZ3A+OKjYpDaIW2WiNSPeSigMikyk7/PJJfflFoMqiyuh5X3xrkdiU932tnDpmO4HM0k9/mj9UeUcFdK+f2duAzpntqYsEZrzXtaB/oMsJ6fzS2up1naTesUUV3sFT9xwFja71hrwg7nQlJdp9SHANmGJ8h3hCbQIs+p/ie4vulWG5bFEBs6p0mV88yYPfXtlhhlxG212MO9AiytcgbPUri13SjOWz94NPiQXGHG8iXi77gqB4td0Kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/qxy8KDddpaiaziZIstg8poKS6aSp2t3WJyyQNrxds4=;
 b=aZagKkW4oBGExoam2ywSz/FSXX903y/9RjHx1y/h4wP/9tDxyjhkAsH/dUSmWtwzo0IeWZQW8zLSEaae+sIN3l9UX7aEgB/oY7843ty6tPACDeDF3Kj3t5rDyoYMa4XqnSw/oTqIbcpOafinK7CpqhhN+DjPLsgtbvjkmM1Q+4M=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by PH0PR15MB5056.namprd15.prod.outlook.com (2603:10b6:510:c6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.25; Wed, 27 Jul
 2022 16:53:36 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be%6]) with mapi id 15.20.5458.025; Wed, 27 Jul 2022
 16:53:36 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: Getting error for allarch dynamically renamed package
Thread-Topic: Getting error for allarch dynamically renamed package
Thread-Index: AQHYoS+vnKQc5gG+wUW9brnuOB6qqa2Sb56g
Date: Wed, 27 Jul 2022 16:53:36 +0000
Message-ID: 
 <PH0PR15MB5055A68BB57B1F94BA441B2ACB979@PH0PR15MB5055.namprd15.prod.outlook.com>
References: 
 <PH0PR15MB5055B2211917B31D298918B1CB949@PH0PR15MB5055.namprd15.prod.outlook.com>
In-Reply-To: 
 <PH0PR15MB5055B2211917B31D298918B1CB949@PH0PR15MB5055.namprd15.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d4bdaf2f-0de7-4393-4d45-08da6ff08c57
x-ms-traffictypediagnostic: PH0PR15MB5056:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 OpOTwW34/V42vBBqxpfRWrnkEU4wL8LFdB9ZmUviELWo0Y4eSPDeJoLnWzDZg9Qg9PpLC04PYQYRa8sFxPZ2q0TgCs6i3aOt6qLK5SeGI+t8SvBobT1oIhu+ttA1PtNMwCt+sxEZc57MsP38iHe+jUNfIrZtNBUHlJmxmEKgE6uO6XXxRu37t5M9ZkEADG+nO9YImzD8oMNktZ76MbJhDAPNkdVWs2n3ff5L8jDNcwTo+3f0eDCQ1hHaD9eU2iyaA9uDOYLu+bagrFbLphv7qZAlXjDAudEIKb1tf/hsoy9UWIHNa9SlLvND+pWF6xuJjwnZFSLU/O/fWnajZWTCrnXpvU8OMrRnEq/xr5va68W5Ke83/545UFEiysNy4v0IVd1n8L0PyXpq/DUW97foHKeGTciqLjDKzVRfOdU2fU4nplI4iczANXZUGfImhymkjfF9xIYa30K6MDISdzGGsetpoBmIVYRiYcOG7u3mhArZ0jG9Cjx8t6Uzye0EpXH7tW/9yzxRSeeVPhzcALhYClyBHPQy2qkCbPtOdmUWYo1Myy4YedsWDslXF4BnBtAWa/GnUu5y7G8H8D0tSDmFa/4ApvvJ6wUpan251WRBrHh+Pzw9pHneyuMVRkPvB/MBwsZ/ASAZZgBs9uQVC12X2DqYzMCJ/OS66tSI7Nmjm+Axy7OzSznhfbkLbTFVgNeUhanXxwLT3/Hae8Q90H13wLD63S/hzqYs17N3kJirJ0aJcnD+0k1bkBZsj68p0Wsxl/EyVkxVpfNt0nLA8PkMCQ0qUPoa+vGYvLgsCoJg6vcY9+4eJi9x8FOMQAyB995WtvxaQhQcXs/2BQRJR7fq0A==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(39840400004)(396003)(366004)(376002)(346002)(26005)(64756008)(8676002)(76116006)(66946007)(66556008)(66446008)(6916009)(5660300002)(166002)(33656002)(38070700005)(8936002)(122000001)(55016003)(52536014)(38100700002)(66476007)(478600001)(71200400001)(9686003)(53546011)(186003)(2906002)(7696005)(86362001)(6506007)(41300700001)(316002)(83380400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?KuhTqrQbo3cEdE/Of7Dpq1LrUNdSVih58Pg3koq1bqEmfQKAKkTL0JRDRJ+v?=
 =?us-ascii?Q?SKid953CgSdo/iy+JaTi8Hdb5MTK0kHNbjA85jIgTD0jtGwKHH4/6FDZJove?=
 =?us-ascii?Q?/UYnD4n5qGTErYFwQL03GW2EZzZIXse8aIqhT3GktPM9eG20qOwcGG7JNij0?=
 =?us-ascii?Q?86iqfn1e71sTfpZpAvYfQjQIU4H90GJ6EY+13qFZTi0to/wo7OpF/HU7/0Qq?=
 =?us-ascii?Q?6BJSTp+mCkqt5mN/VP8kLw8/4ml3dlefeaF+HUgU+tGIG93HA7dvljB33qxQ?=
 =?us-ascii?Q?lDme9/dzLE2VM+pEY7waBkAS8MnmrwMWZc+N+LrUxYypZSnkAMRkOOHaSOwL?=
 =?us-ascii?Q?tWKQ3J7AJeL38tdjL885Bi4JQrdYdKF54DXQkcVs2TqgWIp0SAwi9tFvpHPK?=
 =?us-ascii?Q?1DaRBiIsiZpASO5rnIxT2F/OoX7lAfcUgMjc8WV7M5RFumQHV5HAhSvs5rwH?=
 =?us-ascii?Q?W0Mwt5QHKq9I40nbEioehpPw0XG0C3+RcK+LkhCZkfOQKWpsmLPY73YSMoK4?=
 =?us-ascii?Q?iXNT96d3TwU+pI+7tGVRgTL9PaHv5yb4gyfhI4AFplZ6vV+ihTS2OgykQOfw?=
 =?us-ascii?Q?SvBbCtkraLm/c7Cg92Ir25k10B8QyDpoPn9+PRa+EVT50JZR4OVluffSr/Tl?=
 =?us-ascii?Q?8XTJSUrQ+jUmANoTtOxYwfsVzeSygeb7TmUh5O1np1SJVazOQFkwo+QzPU2w?=
 =?us-ascii?Q?B8NbXUnXbINyXut3yoaqUeNGznD6FpbitpPaPbgr8GWD/+Oy+q5ZiA4Nm3bY?=
 =?us-ascii?Q?Ufq9Xx8z7hd3JCnqvGhoPMTspuYUyvXINlPVhfnTzeL2R+pZxszzbhHLJiIa?=
 =?us-ascii?Q?XugNlYT8YfkiaANjqC9LFrAU0S3eh/B4iPUJGAaXRS0gIxUVKZIanp9rtjse?=
 =?us-ascii?Q?9bG5I+4uieRsi/FRZAo9RZwNaN0UnbceQezDqPUEgIYd0megmBBC0QMKiaGf?=
 =?us-ascii?Q?hURubB4dp4PmCZwsStRh1hpJf31CIkNqrp6Y5ns9uQze/b1BNdq9YZXBpAY2?=
 =?us-ascii?Q?jhasgxAfOS+f0jZGv25NhGwYHxWOejaDmuzXGgeonf4rPVfscPujS0PJYdNo?=
 =?us-ascii?Q?/gKYRRMfl6wTyX8plLFeG0mj4dJgpyww0zBDdSOAORtI8+yQJsKOb6KebnHA?=
 =?us-ascii?Q?n3HtY1AzR3Uh35VbJVcB+lZxNwiD5MmcI0ciSjucwoWAzH0Z0QdV46ZjTjZ9?=
 =?us-ascii?Q?aAhwIbbc0aK6LtIea5B96vqi/VKv4L7BMXQocKO3MJ5fDJATcnWG3jHButra?=
 =?us-ascii?Q?P75hl0oesTt+GiYfTpCIx9bGGbdQ6Z5FHPTZVzN8CT8dw3XrjtOSkoDoqnij?=
 =?us-ascii?Q?z7yPYDi04Fyn7i72xVZeCvjFoh6BSg4pCGx4ULAe+C4jU6g+1jIFRX1rGf/z?=
 =?us-ascii?Q?pD6bAi+nYCPdoAloWIiTK5NGtRCRsbKBKpHs+TpjASMcmP9X7Z3op/DhVOFj?=
 =?us-ascii?Q?h1pnoLI8RjHN4TUkB7goGmetEfwocAMntVTcnWe0C0Lk6aUe1lKdqROijbeN?=
 =?us-ascii?Q?jz3Vm0nbZbzC1MgG1iRXuW7QUiOzF/nRK7T0zHVplgmhtdQ/vpAlDR5Fk1Ve?=
 =?us-ascii?Q?V/3msI3kM6KJSAK0bzFcaJcNHnhE1a0sXi/ZEeKI?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB5055A68BB57B1F94BA441B2ACB979PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d4bdaf2f-0de7-4393-4d45-08da6ff08c57
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jul 2022 16:53:36.3399
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 iy3d6pka3qUCr9g14QJy3oG1fjHwr5pIGgfDwnZU78s95wI9Z+KiJfDZOVz8XlIza6Z1+GEY5asXG1S7dzgTzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR15MB5056
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Jul 2022 16:53:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57656

--_000_PH0PR15MB5055A68BB57B1F94BA441B2ACB979PH0PR15MB5055namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello list,
I changed the license on the recipe below to 'GPL-3.0-or-later' and the pro=
blem went away.

Can anyone explain what is going on? I don't understand how the package nam=
e was being changed in the first place, and I certainly don't understand wh=
y changing the license should change that behavior.

Regards,
Greg

From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Sent: Tuesday, July 26, 2022 1:45 PM
To: yocto@lists.yoctoproject.org
Subject: Getting error for allarch dynamically renamed package

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
PV}-src.tar.gz<https://sourceforge.net/projects/zint/files/zint/$%7bPV%7d/z=
int-$%7bPV%7d-src.tar.gz>"

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


--_000_PH0PR15MB5055A68BB57B1F94BA441B2ACB979PH0PR15MB5055namp_
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
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:Consolas;}
span.EmailStyle22
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
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
<p class=3D"MsoNormal">Hello list,<o:p></o:p></p>
<p class=3D"MsoNormal">I changed the license on the recipe below to &#8216;=
GPL-3.0-or-later&#8217; and the problem went away.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Can anyone explain what is going on? I don&#8217;t u=
nderstand how the package name was being changed in the first place, and I =
certainly don&#8217;t understand why changing the license should change tha=
t behavior.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Greg<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Greg Wilson-Lindberg &lt;GWilson@sakura=
us.com&gt; <br>
<b>Sent:</b> Tuesday, July 26, 2022 1:45 PM<br>
<b>To:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Getting error for allarch dynamically renamed package<o:p><=
/o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Hello l=
ist,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">I'm get=
ting the following error&nbsp;message:<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">do_pack=
age_write_ipk: An allarch packagegroup shouldn't depend on packages which a=
re dynamically renamed (zint to libzint2.11)<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The zin=
t_2.11.0.bb recipe is below:<o:p></o:p></span></p>
</div>
<div>
<div>
<pre style=3D"background:white"><span style=3D"color:black"># Recipe create=
d by recipetool<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># This is the b=
asis of a recipe and may need further editing in order to be fully function=
al.<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># (Feel free to=
 remove these comments when editing.)<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SUMMARY =3D &qu=
ot;A barcode generator and library&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># WARNING: the =
following LICENSE and LIC_FILES_CHKSUM values are best guesses - it is<o:p>=
</o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># your responsi=
bility to verify that the values are complete and correct.<o:p></o:p></span=
></pre>
<pre style=3D"background:white"><span style=3D"color:black">#<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"># NOTE: multipl=
e licenses have been detected; if that is correct you should separate<o:p><=
/o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># these in the =
LICENSE value using &amp; if the multiple licenses all apply, or | if there=
<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># is a choice b=
etween the multiple licenses. If in doubt, check the accompanying<o:p></o:p=
></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># documentation=
 to determine which situation is applicable.<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"># The following=
 license files were not able to be identified and are<o:p></o:p></span></pr=
e>
<pre style=3D"background:white"><span style=3D"color:black"># represented a=
s &quot;Unknown&quot; below, you will need to check them yourself:<o:p></o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># &nbsp; backen=
d/LICENSE<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># &nbsp; debian=
/copyright<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"># NOTE: spec fi=
le indicates the license may be &quot;GPLv3+&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">LICENSE =3D &qu=
ot;GPL-3.0-only&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">LIC_FILES_CHKSU=
M =3D &quot;file://COPYING;md5=3Dd32239bcb673463ab874e80d47fae504 \<o:p></o=
:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"file://ba=
ckend/LICENSE;md5=3D7a60e5da828a98fbdf48c9a327c7cdfa">file://backend/LICENS=
E;md5=3D7a60e5da828a98fbdf48c9a327c7cdfa</a> \<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <a href=3D"file://de=
bian/copyright;md5=3D7d98b171c0e673a4b0bde1a85829586e">file://debian/copyri=
ght;md5=3D7d98b171c0e673a4b0bde1a85829586e</a>&quot;<o:p></o:p></span></pre=
>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI =3D &qu=
ot;<a href=3D"https://sourceforge.net/projects/zint/files/zint/$%7bPV%7d/zi=
nt-$%7bPV%7d-src.tar.gz">https://sourceforge.net/projects/zint/files/zint/$=
{PV}/zint-${PV}-src.tar.gz</a>&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">#SRC_URI[md5sum=
] =3D &quot;00511707a3b80023b97a6a79c9b145f0&quot; &nbsp;v2.9.1<o:p></o:p><=
/span></pre>
<pre style=3D"background:white"><span style=3D"color:black">SRC_URI[sha256s=
um] =3D &quot;4e9d4d7dbcf41bfd63b70eca296c564f7c1a9b9d1c70c60e820dbe23f216a=
a09&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">S =3D &quot;${W=
ORKDIR}/${BPN}-${PV}-src&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">DEPENDS =3D &qu=
ot;qttools qtbase libpng&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">inherit cmake<o=
:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># cmake_qt5<o:p=
></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"># Specify any o=
ptions you want to pass to cmake using EXTRA_OECMAKE:<o:p></o:p></span></pr=
e>
<pre style=3D"background:white"><span style=3D"color:black">EXTRA_OECMAKE =
=3D &quot;-DCMAKE_SKIP_RPATH=3DTRUE&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">do_install:appe=
nd() {<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">&nbsp; &nbsp; r=
m -rf ${D}/usr/bin<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">}<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES:${PN}-dev=
 =3D &quot;/usr/share/apps/cmake/modules/FindZint.cmake&quot;<o:p></o:p></s=
pan></pre>
<pre style=3D"background:white"><span style=3D"color:black">FILES:${PN} =3D=
 &quot;/usr/lib/lib*.so* /usr/include/*.h&quot;<o:p></o:p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black"><o:p>&nbsp;</o:=
p></span></pre>
<pre style=3D"background:white"><span style=3D"color:black">INSANE_SKIP:${P=
N} +=3D &quot;dev-so&quot;<o:p></o:p></span></pre>
</div>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">The rec=
ipe doesn't contain anything that indicates that it is 'dynamically' renami=
ng anything.<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Can any=
body tell help me understand what is going&nbsp;on and what I need to do to=
 get past this?<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">This ha=
s popped up in the process of going from hardknot to kirkstone.<o:p></o:p><=
/span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Regards=
,<o:p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black">Greg<o:=
p></o:p></span></p>
</div>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;color:black"><o:p>&n=
bsp;</o:p></span></p>
</div>
</div>
</div>
</body>
</html>

--_000_PH0PR15MB5055A68BB57B1F94BA441B2ACB979PH0PR15MB5055namp_--

