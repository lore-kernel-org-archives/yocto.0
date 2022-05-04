Return-Path: <heideggm@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7601C433EF
	for <webhook@archiver.kernel.org>; Wed,  4 May 2022 09:39:26 +0000 (UTC)
Received: from NAM11-DM6-obe.outbound.protection.outlook.com
 (NAM11-DM6-obe.outbound.protection.outlook.com [40.92.19.96])
 by mx.groups.io with SMTP id smtpd.web11.4541.1651657159113066843
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 May 2022 02:39:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hotmail.com header.s=selector1 header.b=e5biP2v9;
 spf=pass (domain: hotmail.com, ip: 40.92.19.96,
 mailfrom: heideggm@hotmail.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j9dptpYltsR0fuyQn9NbKBu2tEBozNjYnVBeFUCN1ioyXxjHqasroESUubse1+QazrQAeagw0ifHkn04oD/pm3fucI+ue9wh3BbKC9XhG257E1mJoUBp/FpumHOqY0k/gJqgeDVus7/BcawA/JE7uvogCWrjKPePW3bOCr2d36bDda0RvBjvlRqVU3E5suLxLytuWbo1EXnxsNG3C4vwcC3F16MIAa36GL3GYpJuJgxkFAI+T4VwPRoTVV8ww9eoTJ7SclW55jZupYh9kiQE095TLpn+tXmaGRt3Uy/IWGbJqv+Sd7wamHxiHqX6/JGLQnGcLSF2hoClm3CaQIhypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/Smf7qQK0khi0GROmXwR6pQ3Ki75dhFAEFofF+jzEjQ=;
 b=DIAFxCbJlNm39ECB/9NczjGEiu+Gimw7hZ+uuk2t2SFgZw0u9ubrrsAJApV0BZSEwUO6Ir0AvAULZ84Nmn21uqIbs6KjMkFoepk1TWvIXLAVMLZaCH+E/PqAHeXXPZYbc79clcLVEcv5cMRcxImAsZ82aL+pPMSlXMoEH8fbuUAxJ3s9M1I8UZVkrUb4hjdXA3Yiezba/v+r5odD9CovPS9+jGqDjsM8hJ2gbXD19dhoYGhrcU8m2Ns1KvnLQSx1a/osrI+0D17cP5sSMnRM23hL7AGc0BOMAqqeW64EBWTXfE4kaT8/vQwjpd/j2GRiNu0+bstrRGwgB+dZpaFpFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/Smf7qQK0khi0GROmXwR6pQ3Ki75dhFAEFofF+jzEjQ=;
 b=e5biP2v94KBKn2JjJbj9tJMqNvXvpGhYzu71BtpBL/kQhKjZEG5+Yt0/ZaO0tT9lPnhLnavZiasm3EJUDBogpDv58G0HrPTmrniiTd6qeUP5olVb1ytX7Sr/AJOv1Kkd9hlWPJgGRw7Ofr8H3WHtQ7BCDpgD+/PpBl74aMKf2y65eW0BFcBQHVt0JjGhHeid2FH0cYtX31yOXQ9GlmbX8s9wFg4qDr2MBOZ5UfoQjLlV/1G/XAnEq49yO+2m+NoUXP0M8/35hcSUAYJgrWw2QLqrE67ornCfmjdpH1ULTejKl3gmQQg2WWOTx8VW6QbseX0xEMr26qvEipkiPk+m/A==
Received: from DM8PR16MB4357.namprd16.prod.outlook.com (2603:10b6:8:30::8) by
 MN2PR16MB2877.namprd16.prod.outlook.com (2603:10b6:208:e1::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.25; Wed, 4 May 2022 09:39:16 +0000
Received: from DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8]) by DM8PR16MB4357.namprd16.prod.outlook.com
 ([fe80::2981:ab14:9377:80d8%5]) with mapi id 15.20.5206.024; Wed, 4 May 2022
 09:39:16 +0000
From: Edgar Mobile <heideggm@hotmail.com>
To: Scott Murray <scott.murray@konsulko.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
Thread-Topic: [yocto] Adding systemd to yocto
Thread-Index: 
 AQHYWyPJTFS1N8NLPke707Qwq/uIma0GbgMAgACRQgCABDuUg4AAAwX/gABuuACAAVZONYAAIF2AgAFcCwg=
Date: Wed, 4 May 2022 09:39:16 +0000
Message-ID: 
 <DM8PR16MB43570ACD5F9BB9CC52E71CDEC7C39@DM8PR16MB4357.namprd16.prod.outlook.com>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
 <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
 <DM8PR16MB4357D696EB8115CD320E035BC7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <DM8PR16MB43575294B7F770E74634A9D1C7C19@DM8PR16MB4357.namprd16.prod.outlook.com>
 <ff0fbda-7955-d0f1-4dc7-a78f34359768@spiteful.org>
 <DM8PR16MB435760E81DEDC46DA1B570B9C7C09@DM8PR16MB4357.namprd16.prod.outlook.com>
 <a334894a-8336-4e38-f2e2-b71d3b2dc4c@spiteful.org>
In-Reply-To: <a334894a-8336-4e38-f2e2-b71d3b2dc4c@spiteful.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [It+gKWZQg8BwvSCBM68M9ZJlbrzhZmsD]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c97635c4-5148-45e1-b532-08da2db1f4e9
x-ms-traffictypediagnostic: MN2PR16MB2877:EE_
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 LxqhGTUpeSytvXYPJRMXtPwE7WOpfKvG107o7kblUxvhbLkFDj8c3H2ZlrVreB/VIZ3odE49BHWlWvfLWus8hWXzjYiZHYjhGL7zlaPx+EN6hQm4vgCqVlyciJ1xzQsxp9uHplTfRn2akbiaBAt00Wx2m4PzK35bo03Aq+5TRzG4nX3i0qGOrGxKJUxL7ueBRbnXyLXPqWHttu55r6BdZd9FkYCvo+/UijQqO6tVWc8zhLJ8dtJtLLKcrYTDTJL+tz0zBYWgGwP4dHR/XanwT4bF/ivjWMCjOxtcIEZG0w8qfNp6jgcCi+If0WAI/QfqVchoH319WIvqRQYUVucu7DzBUzHx8ziCCIMmDKB9Ns29vrfuWLySCaItW9IJq8PM76gwMjG5UmGf/N1O2oLhZa4ig8MhHmCCaRZ4LPAuWNgPZDU9h7cDIrvb5ifFxTHzFKhyn0BaSW9au4lM0TZ1rd0cncJpEmwdgFPuafBzh3UIDF37w9HQYfzHY05i/PhjZp2NyKMn8ItJOj6+wVvwn/3GtziTkF5IvyHOp4CQEXG27z/+n5gebhoLEAq+GMe1+JVYRCX3eEwfRd/t+4Mh7zyklEq8U6b4qyHFVf6gBFijyaF0f3Qk743j3PLvle2K6saZdXOLrEWFyfsdRzo0dQ==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?rY3tljG1XVpfETmtsVkmSuBsNxc4EHtjYsKPOkLGH4hUuDMNC+lk835fJY?=
 =?iso-8859-1?Q?AbfiT3p8xaiNbS3qM8ZMg2YNuPC8FQS6YycDULAYg8l8t7WytBxZ4sGd7r?=
 =?iso-8859-1?Q?/kuSrz81fTZvYKz6Tvz0xylDpdqe6frdwz98qoBnX0T5BXtQpHNDKcpAAu?=
 =?iso-8859-1?Q?ObBxG4jNpGWvfLQW+M+DHzPW0uVwaCxzBxXbbC+Fg+zF+6woFIbxaFZV9a?=
 =?iso-8859-1?Q?76P2+J3/L6MsbAXI6zOXqc4968/BUIbmF2OL2r41EAWxQaToSWybm9dE2I?=
 =?iso-8859-1?Q?86LFmyCbyZW4v/gPB02jLTCFLyXj0XrDLjsfbxWilNPN8lGtOxD0rH28zy?=
 =?iso-8859-1?Q?dunxZPkQIWqCNGLCheDvkSI4q4XXzCBvbzwavqn3VdFSugq3s9qScIFDeM?=
 =?iso-8859-1?Q?odDgbJV/1DzQyqYIqw/SKNI2j6HJwZepHII3g+Hg11f7mUqsdoS9NcifZL?=
 =?iso-8859-1?Q?4l+aiAkKKsAkiSjrdZTtz2OlXfviTNDmVQorTcHofQGJUCOwyXSIwxewCi?=
 =?iso-8859-1?Q?AzWh18e0lnhpyThTuvN3poY0j6FpTW4PRoVfi2Z1hgi+vRh0XAAF2vVUn5?=
 =?iso-8859-1?Q?I+QvwOmdoVc0N1HRb1YdhVqHW7wKX2xtLv65VDV0edZgewJ+08sf0CiST/?=
 =?iso-8859-1?Q?ry3zMK4vAPXKjvugnE0BU+wpUdLSZ9i40SC4H/3FVYtoOSW9M5EN3ORud8?=
 =?iso-8859-1?Q?abw7iGY5n7jHiIRa2yrzU1OrhJ7TD21oaDIFTlOADzT64VjN7ID/bJrgQb?=
 =?iso-8859-1?Q?LoWaXjjvMHJ0Li61PhX9X8PEz/hk+aLnbOVlP3acs23ZfukX0mYPiqP9Po?=
 =?iso-8859-1?Q?BzwfYegIqvhUF6L4rSsobWBOa5LCGdqk5ybNnhY9m8qchQQQe2EiqBNvuK?=
 =?iso-8859-1?Q?XfXT2IC9CqN4DeXVJFTJp1fk6RU8wQxo99ErtGmOmDi6R/J2vdwhkdAjXG?=
 =?iso-8859-1?Q?2s8ODonxJsxAsSRE5qfj2gLCqSbo5tJlN9KTr20H6HViTUeUQRRM2SaW9O?=
 =?iso-8859-1?Q?ehsmLjZFJ046b62aU+akMhd8vuKUPZK7A7uulPS4FIQ18E7mwTcuCk4sse?=
 =?iso-8859-1?Q?zkk92LU6EKqxlr6h5imi0gukzfhCS82ASLp7H8UdRbB4zmwwf+QqNYIWUB?=
 =?iso-8859-1?Q?WCkW9PBmh/AKcFCSwH2Kp9dyEBOGUP5PEDhpGRLO2rBjdv5Jl2K5bi7lDm?=
 =?iso-8859-1?Q?0EOw9kwGbUPI1lHcfs+EP1B3d8Ctwelgh2C5fRdxR9ShgzSRQ1PJo1vB4A?=
 =?iso-8859-1?Q?dQmp+3XfRRT3VT65/tjnQX+6F5PpuF5Anqk3X44ExZSfeVsijEbfNPnjtB?=
 =?iso-8859-1?Q?P+5k3s3T/aBYimFPEmsaFvSljBxVQclUhTjY8llD5B2kteifrIcnvSSXPK?=
 =?iso-8859-1?Q?6AFq8zBufLXN5EAtldXJIjiNEvXGax7h1YEbd8uepgqrC1IpFAN1PvV8Bh?=
 =?iso-8859-1?Q?5DBRKdsZgYb/EDGrVonbs9bmBUxdDI0ie9AgOw=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_DM8PR16MB43570ACD5F9BB9CC52E71CDEC7C39DM8PR16MB4357namp_"
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-4755-11-msonline-outlook-5ce7b.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR16MB4357.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c97635c4-5148-45e1-b532-08da2db1f4e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 May 2022 09:39:16.7281
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 
 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR16MB2877
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 May 2022 09:39:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56992

--_000_DM8PR16MB43570ACD5F9BB9CC52E71CDEC7C39DM8PR16MB4357namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Ok, that worked thanks everyone!

________________________________
From: Scott Murray <scott.murray@konsulko.com>
Sent: Tuesday, May 3, 2022 12:53 PM
To: Edgar Mobile <heideggm@hotmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto

On Tue, 3 May 2022, Edgar Mobile wrote:

> Apparently, this is not enough:
>
> bitbake core-image-weston
> /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't reso=
lve package from __spec__ or __package__, falling back on __name__ and __pa=
th__
>   return f(*args, **kwds)
> Loading cache: 100% |############################################| Time: =
0:00:00
> Loaded 1472 entries from dependency cache.
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'pam' (but /media/user/SSD1TB/yoctoqemu/poky/met=
a/recipes-graphics/images/core-image-weston.bb RDEPENDS on or otherwise req=
uires it)
> NOTE: Runtime target 'pam' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['pam']
> ERROR: Required build target 'core-image-weston' has no buildable provide=
rs.
> Missing or unbuildable dependency chain was: ['core-image-weston', 'pam']
>
> These are my current additions to local.conf:
>
> INIT_MANAGER=3D"systemd"
> CORE_IMAGE_EXTRA_INSTALL +=3D " mesa-demos gdb"
> IMAGE_INSTALL:append +=3D " pam"

^ This line what is causing your error, remove it.  With pam in
DISTRO_FEATURES the required packages will get pulled in via dependencies.

> DISTRO_FEATURES:append =3D " systemd wayland pam x11"

If you specify INIT_MANAGER =3D "systemd", then you do not need to add
systemd here.

> VIRTUAL-RUNTIME_init_manager =3D "systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
> VIRTUAL-RUNTIME_initscripts =3D ""

Similarly, with INIT_MANAGER =3D "systemd" these 3 lines are not required.
If you look at meta/conf/distro/include/init-manager-systemd.inc you can
see what INIT_MANAGER =3D "systemd" tweaks.

> IMAGE_ROOTFS_EXTRA_SPACE =3D "38048576"
[snip]

Scott

--_000_DM8PR16MB43570ACD5F9BB9CC52E71CDEC7C39DM8PR16MB4357namp_
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
Ok, that worked thanks everyone!<br>
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
<b>Sent:</b> Tuesday, May 3, 2022 12:53 PM<br>
<b>To:</b> Edgar Mobile &lt;heideggm@hotmail.com&gt;<br>
<b>Cc:</b> Yocto-mailing-list &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Adding systemd to yocto</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On Tue, 3 May 2022, Edgar Mobile wrote:<br>
<br>
&gt; Apparently, this is not enough:<br>
&gt;<br>
&gt; bitbake core-image-weston<br>
&gt; /usr/lib/python3.6/importlib/_bootstrap.py:219: ImportWarning: can't r=
esolve package from __spec__ or __package__, falling back on __name__ and _=
_path__<br>
&gt;&nbsp;&nbsp; return f(*args, **kwds)<br>
&gt; Loading cache: 100% |############################################| Tim=
e: 0:00:00<br>
&gt; Loaded 1472 entries from dependency cache.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; ERROR: Nothing RPROVIDES 'pam' (but /media/user/SSD1TB/yoctoqemu/poky/=
meta/recipes-graphics/images/core-image-weston.bb RDEPENDS on or otherwise =
requires it)<br>
&gt; NOTE: Runtime target 'pam' is unbuildable, removing...<br>
&gt; Missing or unbuildable dependency chain was: ['pam']<br>
&gt; ERROR: Required build target 'core-image-weston' has no buildable prov=
iders.<br>
&gt; Missing or unbuildable dependency chain was: ['core-image-weston', 'pa=
m']<br>
&gt;<br>
&gt; These are my current additions to local.conf:<br>
&gt;<br>
&gt; INIT_MANAGER=3D&quot;systemd&quot;<br>
&gt; CORE_IMAGE_EXTRA_INSTALL +=3D &quot; mesa-demos gdb&quot;<br>
&gt; IMAGE_INSTALL:append +=3D &quot; pam&quot;<br>
<br>
^ This line what is causing your error, remove it.&nbsp; With pam in<br>
DISTRO_FEATURES the required packages will get pulled in via dependencies.<=
br>
<br>
&gt; DISTRO_FEATURES:append =3D &quot; systemd wayland pam x11&quot;<br>
<br>
If you specify INIT_MANAGER =3D &quot;systemd&quot;, then you do not need t=
o add<br>
systemd here.<br>
<br>
&gt; VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
&gt; DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;<br>
&gt; VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<br>
<br>
Similarly, with INIT_MANAGER =3D &quot;systemd&quot; these 3 lines are not =
required.<br>
If you look at meta/conf/distro/include/init-manager-systemd.inc you can<br=
>
see what INIT_MANAGER =3D &quot;systemd&quot; tweaks.<br>
<br>
&gt; IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;38048576&quot;<br>
[snip]<br>
<br>
Scott<br>
</div>
</span></font></div>
</div>
</body>
</html>

--_000_DM8PR16MB43570ACD5F9BB9CC52E71CDEC7C39DM8PR16MB4357namp_--

