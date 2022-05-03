Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61032C433EF
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 10:57:54 +0000 (UTC)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (NAM10-MW2-obe.outbound.protection.outlook.com [40.92.42.88])
 by mx.groups.io with SMTP id smtpd.web11.9551.1651575463938325072
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 03:57:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=WurTaXVG;
 spf=pass (domain: hotmail.com, ip: 40.92.42.88,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XaXLbNY8/jFqCOPqAsjEkxJl76yJweRYGVdiBWbMgbPAhJMaFMXB3Zu81HvsL6lLTgYHonVXJg8v7sRJMMpBI7llu4Qo5YGhptExRrOfS8yBgXw1iuvSNqbtCGedZNnD8X7PfG4iUtQhPkSn6H1i56rGy3TO2JWfA3sFf+ZPhY5fuTGRLJJKWuJHxzFsgMqqlHyvkzVqH07a/tKbOJAMPSVQap0/OkzOrNJceQLAPSvnCk45vSb/mH/X/LAZHG/8EzVI+OiDJYOuSqx2r7/8F5n9XIcmwkXbB8436mbTHvpx1wHeUJG2pbBStyD581Hid1xiR0MxZTJ+OK3iBjzKAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yUBRsrWcJyqG0eb2Lnr/AZX4gtZSgaaVWgAzKmT5nBo=;
 b=a0FtxgnkAoTfUhJVSRxSBEvf9+BW9jDdYSqsdtUWS39wbnaOMx4DN5lSgHYdmcV2d9RQeKRno3wOkrnefkoxNWm1sFFHL84lmi7ctFBEoeHVZBfkXfkoe/xTh+3mBAu9c5Rzxa14wBbEzgvmsMseqLcYClI+ojbMjj+K7hWpZis2Jniz4lTLNziASYL2Y0xKUmZZJLdYlEFlkETwXMI11ITzZsLAyDtDspSwqFui+DdKJta7Ne+5aTl5hRZzQSmJbW63BJih28PHYfVUCzFDam04uPnsVCnpPnZbL/+ALOWe1kb4HdfO+pn6PHxviT6PAXqbG4V80IUFbByvLUlicw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yUBRsrWcJyqG0eb2Lnr/AZX4gtZSgaaVWgAzKmT5nBo=;
 b=WurTaXVGoX3P9TBVf2e/HFsEESzdeiE0VbMkJu5uBK8E2/aJrt6BumNBEXCOskC9Th7eFbdQf2gwosLa4xkg7SHMfN+Us20apIAMJRcEtAHYRoRvsKhN2z8vCPAaxs3CZjWaJtKrsQetOfi9m/lSG9yS5P9reDweiUgtI8ZH6nsRrOCzBOrWIaat9YpyFSrjaUeYiRevzS2t296Pt7f3aC/CqCJcWbD4vhXwzBBbheqOj4B8fO5v+6XgYcyEmSV6gctxdp42M6pfcKIjCkcvhRHFRGyrs4in5g1mKwN+VsOX2/gE3Eq/92gF1qVIkezxDLFwS5nNi2oXs5e5JF/7kA==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 SJ0PR16MB4190.namprd16.prod.outlook.com (2603:10b6:a03:32c::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.24; Tue, 3 May 2022 10:57:41 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8%5]) with mapi id 15.20.5206.024; Tue, 3 May 2022
 10:57:41 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Scott Murray <scott.murray@konsulko.com>
CC: Joel Winarske <joel.winarske@gmail.com>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
Thread-Topic: [yocto] Adding systemd to yocto
Thread-Index: 
 AQHYWyPJTFS1N8NLPke707Qwq/uIma0GbgMAgACRQgCABDuUg4AAAwX/gABuuACAAVZONQ==
Date: Tue, 3 May 2022 10:57:41 +0000
Message-ID: 
 <DM8PR16MB435760E81DEDC46DA1B570B9C7C09@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <ff0fbda-7955-d0f1-4dc7-a78f34359768@spiteful.org>
In-Reply-To: <ff0fbda-7955-d0f1-4dc7-a78f34359768@spiteful.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [Tr+ikYcq++HH8W3w9vyo+bTUMw/5XvFw]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3343ae1c-ec3d-4c23-82ce-08da2cf3bead
x-ms-traffictypediagnostic: SJ0PR16MB4190:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 58+cAY4jDULxGyrBhr4pmI+E/4xMU75BV5ulI+XoWjmdMz3HMhH3TVvuO0+a7CRHMVnOJSbEDrgLrmuLCCnt3k3LydD7ePMvWoZmrpzWdiZOhepXCVfh5F+T8Iwwr6AjAAmBc5xgi5jbFxTnRSg17WfxmjsmH/d/Q/UliPeAA16ylP+5k5tJi6ZsIBynSe28AmkZA0Mg8yNX0nUIh+yaXc+HwBlBvoLYJ9VAIcmdorjtAAnXFfWOWfZWdMQMPRQt6fHYuCHjKcQHD3QHSikLSUR6WfaBtXCM9HTFWsf4ayhAmAAKSsZ/gTbRbxdoksIPY2nBnej5a/jtN4rvZktCgAYemHnp1ci8teQcTL55CEQlnfHiQzo82LqMJWLFhQ8nosFuP7r6euEKN2CPdOawkeC2GKkjBXcmQ6JXs4Egy+eog9LjLWOMUmY5ntp3lD7AVlM1rQtFinfNjAQIOLD07TfNX+D2nm6qKWHQ8tiXoiZxiA67ThUZ6XtlwK2PvIzxNc4jgn4MwEhBC+ocI1rSfB79FcW7lfWFDjdqVa/6wXKFH78ImWstqsFDpmQfmz+9QGAvlB1i78HOMj0v58FqMA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?hmMQxtZoyufcUifyFN1yOi5t82nSFVQkZskNB9SRmWdS9glUx0u2CKDkTn?=
 =?iso-8859-1?Q?Q6j6Y342UZvw4akz/pa/3VzI3O3v1ju1Wcwd+1/tbAhcHYri3CrzpnBu7P?=
 =?iso-8859-1?Q?va2VVTkSjKgdt1Y2XJdOCOenHZqxsHVYp92TNrq5s/7yNXi2tEAVVtRJaR?=
 =?iso-8859-1?Q?kd+J/ql3KOIXaPdE0lXbAU8LbWCNfk/43RJB1woqyMCtnja63lVcyaYBQx?=
 =?iso-8859-1?Q?IGLDdcji2LTBbXf1tLDP8mO5ESh32S/3pgywwLGA8bLm7ABOeeOFd6bi3p?=
 =?iso-8859-1?Q?M2VeWXAqXGFrAYu+QIHHRItgOn24yFNG6Yc/GRk36iRyyD1SN7wK2Ktaz4?=
 =?iso-8859-1?Q?KKWn+WVYhBOVW1I9P841mqg4UXV2kbWKmBt2HAozhEy+pfgjMRLFKr6xGH?=
 =?iso-8859-1?Q?GVbYGkibzbO1+OOwojAkS3Li//oUjkSf99MtdOxCDNjyJKJas6ZOsCoM7L?=
 =?iso-8859-1?Q?K6D1Wyunx3zEDGW3FjJ7scBo1AnOOL2v75Z17aDRCU6VHu82rzYCKQRF5i?=
 =?iso-8859-1?Q?nwV6a8igBgobp+DrdFAc8G1JBB/+UCKREnaI6mZyeg9kH86CXG7LuY0OWU?=
 =?iso-8859-1?Q?8xJ7A6mA6JCpdXH+WdcPj72XdYb0rW48FDBtia6N/rUI8eJ6njYscCRo+J?=
 =?iso-8859-1?Q?1DLuFI//F3/9WD2Is2wxlGTef2uPzDXcG/CDIuzBKYzdx0Lz50MkO/sfx4?=
 =?iso-8859-1?Q?2EPyAtfm+K70MLTeSwawM++hhxiL4trQIl+b3hKgeiAxmq0LUbmi3oxyaP?=
 =?iso-8859-1?Q?/6vHRh7fcZlG9WegZETcHu6SgvJFHjnleTbO9+hAIkEr/gvdvesO49PFwY?=
 =?iso-8859-1?Q?FOb5rfR86NC+5iLvi8McKmw/+r0uAEYrZruK0vOc6OKtMBD9tX+wm8pY/y?=
 =?iso-8859-1?Q?9heLjoTlVhhnPJGmaXcHK+4vODPz5UYpMghfyf4jP6seEIuGhVLc6BZjD3?=
 =?iso-8859-1?Q?Gy+e0vXoC0UQFihIeoOtKu8wHF5j4A+CwmjqBqorAPYy7tW3hxFTP0Wlk2?=
 =?iso-8859-1?Q?V1BIcZFG19NHVxlQ8uMe5bjbSYYZl0yN01kWIZyXjzpI6hy7KUrxtVlKff?=
 =?iso-8859-1?Q?u3VclRuoWHm2CvSpitM9ShvS1mOeYxJODS8sV1VvfbfaUpUQAiWHbcrVHw?=
 =?iso-8859-1?Q?K4lKoERJKrRcVrOKKe5sUjDq78OT3Z74nxx3ZmPDrCSIPzzFPxv2APT6J9?=
 =?iso-8859-1?Q?ZjpJ+Ov2bKge/SyGkmIrd97Kr+hpJF4O/JGTuQz8ehDnpmWiFtG0KercmK?=
 =?iso-8859-1?Q?AB1TwwJrvJ8Bwdyl5n2ac+7f7WyabHYVRn3WXmP91HF5cWszYk36sT0BPJ?=
 =?iso-8859-1?Q?2mS0EywwYeENG+aostn9MNmCGnGqZheH8L48yU/cmcss9u6ehSD1ukqNV+?=
 =?iso-8859-1?Q?Bo4Gf2KXw+WbYg5Po4HQ7k5RD0qEEdbyQIU5T+oe5tQ5mw4UJuP6B4/T+E?=
 =?iso-8859-1?Q?Drj45yzPnXV4QkyqWL9VQx7eTEr0ogL8vh1VRQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB435760E81DEDC46DA1B570B9C7C09DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 3343ae1c-ec3d-4c23-82ce-08da2cf3bead
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2022 10:57:41.3751
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR16MB4190
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 10:57:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56975

--_000_DM8PR16MB435760E81DEDC46DA1B570B9C7C09DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Apparently, this is not enough:

bitbake core-image-weston
/usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't resolv=
e package from __spec__ or __package__, falling back on __name__ and __path=
__
  return f(*args, **kwds)
Loading cache: 100% |############################################| Time: 0:=
00:00
Loaded 1472 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies
ERROR: Nothing RPROVIDES 'pam' (but /media/user/SSD1TB/yoctoqemu/poky/meta/=
recipes-graphics/images/core-image-weston.bb RDEPENDS on or otherwise requi=
res it)
NOTE: Runtime target 'pam' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['pam']
ERROR: Required build target 'core-image-weston' has no buildable providers=
.
Missing or unbuildable dependency chain was: ['core-image-weston', 'pam']

These are my current additions to local.conf:

INIT_MANAGER=3D"systemd"
CORE_IMAGE_EXTRA_INSTALL +=3D " mesa-demos gdb"
IMAGE_INSTALL:append +=3D " pam"
DISTRO_FEATURES:append =3D " systemd wayland pam x11" VIRTUAL-RUNTIME_init_=
manager =3D "systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"VIRTUAL-RUNTIME_initscrip=
ts =3D ""
IMAGE_ROOTFS_EXTRA_SPACE =3D "38048576"


________________________________
From: Scott Murray <scott.murray@konsulko.com>
Sent: Monday, May 2, 2022 2:32 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Joel Winarske <joel.winarske@gmail.com>; Yocto-mailing-list <yocto@list=
s.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto

On Mon, 2 May 2022, Edgar Mobile wrote:

> Ok, correction: I complains about pam missing.

My apologies, I'd forgotten that wrinkle as we'd been sidestepping it for
a while in AGL with some custom Weston startup.  There are a few recipes
in the Weston stuff that explicitly mark pam as a required feature when
using systemd, so you'll also need to have:

DISTRO_FEATURES:append =3D " pam"

Scott

--_000_DM8PR16MB435760E81DEDC46DA1B570B9C7C09DM8PR16MB4357namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div style=3D"font-family:Helvetica;font-size:12px;font-weight:normal;orpha=
ns:auto;widows:auto">
Apparently, this is not enough:</div>
<div style=3D"font-family:Helvetica;font-size:12px;font-weight:normal;orpha=
ns:auto;widows:auto">
<br>
</div>
<div style=3D"font-family:Helvetica;font-size:12px;font-weight:normal;orpha=
ns:auto;widows:auto">
<div><span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16=
px">bitbake core-image-weston</span><br style=3D"font-family:Calibri, Helve=
tica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">/=
usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't resolve=
 package from __spec__ or __package__, falling back on __name__ and __path_=
_</span><br style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:1=
6px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">&=
nbsp; return f(*args, **kwds)</span><br style=3D"font-family:Calibri, Helve=
tica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">L=
oading cache: 100% |############################################| Time: 0:0=
0:00</span><br style=3D"font-family:Calibri, Helvetica, sans-serif;font-siz=
e:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">L=
oaded 1472 entries from dependency cache.</span><br style=3D"font-family:Ca=
libri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">N=
OTE: Resolving any missing task queue dependencies</span><br style=3D"font-=
family:Calibri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">E=
RROR: Nothing RPROVIDES 'pam' (but /media/user/SSD1TB/yoctoqemu/poky/meta/r=
ecipes-graphics/images/core-image-weston.bb RDEPENDS on or otherwise requir=
es it)</span><br style=3D"font-family:Calibri, Helvetica, sans-serif;font-s=
ize:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">N=
OTE: Runtime target 'pam' is unbuildable, removing...</span><br style=3D"fo=
nt-family:Calibri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">M=
issing or unbuildable dependency chain was: ['pam']</span><br style=3D"font=
-family:Calibri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">E=
RROR: Required build target 'core-image-weston' has no buildable providers.=
</span><br style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16=
px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">M=
issing or unbuildable dependency chain was: ['core-image-weston', 'pam']</s=
pan></div>
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">
<div><br>
</div>
<div>These are my current additions to local.conf:</div>
<div><br>
</div>
INIT_MANAGER=3D&quot;systemd&quot;</span><br style=3D"font-family:Calibri, =
Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">C=
ORE_IMAGE_EXTRA_INSTALL +=3D &quot; mesa-demos gdb&quot;</span><br style=3D=
"font-family:Calibri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">I=
MAGE_INSTALL:append +=3D &quot; pam&quot;</span><br style=3D"font-family:Ca=
libri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">D=
ISTRO_FEATURES:append =3D &quot; systemd wayland pam x11&quot; VIRTUAL-RUNT=
IME_init_manager =3D &quot;systemd&quot;&nbsp;</span><br style=3D"font-fami=
ly:Calibri, Helvetica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">D=
ISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;VIRTUAL-RUNTIME_=
initscripts =3D &quot;&quot;</span><br style=3D"font-family:Calibri, Helvet=
ica, sans-serif;font-size:16px">
<span style=3D"font-family:Calibri, Helvetica, sans-serif;font-size:16px">I=
MAGE_ROOTFS_EXTRA_SPACE =3D &quot;38048576&quot;</span></div>
<br>
</div>
<div>
<div id=3D"appendonsend"></div>
<div style=3D"font-family:Calibri,Helvetica,sans-serif; font-size:12pt; col=
or:rgb(0,0,0)">
<br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>From:</b> Scott Murray &lt;sc=
ott.murray@konsulko.com&gt;<br>
<b>Sent:</b> Monday, May 2, 2022 2:32 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Joel Winarske &lt;joel.winarske@gmail.com&gt;; Yocto-mailing-lis=
t &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding systemd to yocto</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Mon, 2 May 2022, Edgar Mobile wrote:<br>
<br>
&gt; Ok, correction: I complains about pam missing.<br>
<br>
My apologies, I'd forgotten that wrinkle as we'd been sidestepping it for<b=
r>
a while in AGL with some custom Weston startup.&nbsp; There are a few recip=
es<br>
in the Weston stuff that explicitly mark pam as a required feature when<br>
using systemd, so you'll also need to have:<br>
<br>
DISTRO_FEATURES:append =3D &quot; pam&quot;<br>
<br>
Scott<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB435760E81DEDC46DA1B570B9C7C09DM8PR16MB4357namp_--

