Return-Path: <gwilson@sakuraus.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 353F5C43334
	for <webhook@archiver.kernel.org>; Mon, 25 Jul 2022 18:08:29 +0000 (UTC)
Received: from NAM04-DM6-obe.outbound.protection.outlook.com
 (NAM04-DM6-obe.outbound.protection.outlook.com [40.107.102.115])
 by mx.groups.io with SMTP id smtpd.web09.31653.1658772498733135193
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Jul 2022 11:08:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakuraus0.onmicrosoft.com
 header.s=selector1-sakuraus0-onmicrosoft-com header.b=icgkt1zY;
 spf=pass (domain: sakuraus.com, ip: 40.107.102.115,
 mailfrom: gwilson@sakuraus.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DmURN7G4UnuNNNIkU7eRFz7uxgrYI+r0XLH2382ofNW6ESio5r9XmV9gtDXtpWwSUB1zho+T1m9CS8xlXAZh30r8oD6Sr7XWje2b46+IdjhNLADLSH+v4JOdSQX9pmzO7IMJ4n8pK0SUv44+ube0ED5JROdjF3zGO6NptJsBurKYH/RBpSl718ciDEUrwXae0nDxh34mlEvp9t/rn0XI7BYMpFp6gqJZNytnlifSWLC4SRckFSwQ7kb1vk0zjSB4pJlBUFqS0pCxU33cIAZNFVTy/+eQyW8XHKnN40jCtijTmmUYGCKzU4IynbFlyfwGZdaNZ2t5fyjyDPF9PxtsMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/wpooxXgp13iD5JuFTS9i+qNKjeJCN4Ow1ZmsicKhJc=;
 b=M06UoT3JMUEu1uZSlJjYuDUg+Q5GrRzg4WYfcoMN34tGa+dOq4UeRPhaBb8Q095ZgQWYcoPfuh1J+VpJ3MkC8yKsXs+TQ8XQrnUe56cdjMusdWuieL4yOFttK+6VIpxVMctfVfwbchwx7S+TviRrl+ea6tDz/3IOrDIKVEfKSTOn6jXNjCQaHCcNURnzxmfRF0A+6a3RaJ9R9P8ip55QbOYU8ViUGTRrY2zZU420FlurQKVXERWS+xkw7KyT9t1COUdrWyT85JAGnEgtvJwL5MOMuoT+X+P0GU9yIOm1MuDAOO6Ye8Ku6DtYjn1j1wfcnmC2aStyXMxbxwYcwKF0nQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sakuraus.com; dmarc=pass action=none header.from=sakuraus.com;
 dkim=pass header.d=sakuraus.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sakuraus0.onmicrosoft.com; s=selector1-sakuraus0-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/wpooxXgp13iD5JuFTS9i+qNKjeJCN4Ow1ZmsicKhJc=;
 b=icgkt1zY9GcFXI0OHEBtIt8vJJ4UQo81glSItEvWctE3fRhpaY7Z8xSlUs6Y69sXRaBEbTXtu7gGrNPx9PG4RcsGrsXL00qchb/Mx5OmDIWvpikzo+uniPW97Jc+46Tj079IeJ0tio2rz0UKqF8/WeRv17vfHQ09T9koaLee4oc=
Received: from PH0PR15MB5055.namprd15.prod.outlook.com (2603:10b6:510:c2::23)
 by BN7PR15MB2292.namprd15.prod.outlook.com (2603:10b6:406:8b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5458.24; Mon, 25 Jul
 2022 18:08:12 +0000
Received: from PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be]) by PH0PR15MB5055.namprd15.prod.outlook.com
 ([fe80::2090:cc5c:676f:79be%7]) with mapi id 15.20.5458.024; Mon, 25 Jul 2022
 18:08:11 +0000
From: Greg Wilson-Lindberg <GWilson@sakuraus.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding and using user in more than one recipe
Thread-Topic: [yocto] Adding and using user in more than one recipe
Thread-Index: AdieD1df1BcSkp4iQdmPgSqjbDpx0AAHRpKAAB4NYmAAavLQWw==
Date: Mon, 25 Jul 2022 18:08:11 +0000
Message-ID: 
 <PH0PR15MB50555CCB2A384E1B8D2A668ECB959@PH0PR15MB5055.namprd15.prod.outlook.com>
References: 
 <PH0PR15MB5055F60DA7F873193E3AD877CB909@PH0PR15MB5055.namprd15.prod.outlook.com>
 <CAMKF1srE40FXoPynBsUxtaOjj+BdJHu4SoNQXNMDFmFwjYvt0g@mail.gmail.com>
 <17047D93444A051F.4676@lists.yoctoproject.org>
In-Reply-To: <17047D93444A051F.4676@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sakuraus.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a453ccbb-aede-42e3-cbd9-08da6e68a326
x-ms-traffictypediagnostic: BN7PR15MB2292:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 /TX/geWTH/kRdaU1db1M9NaO6rc4IXGHztnW4NnjnVROLO+ohr+gfrAcoJnfhjmSLV30Asc7HH6U+Lz7UwoCKD/YkAVWQZD0SX7DPQRNvOCRQgNc3bq6rKVgKex2aZ3+y8rn/+qSMZcdQsTrGL8j29SHdjTT73ICGtlhuEtTAiBTNmidgqsTdbXajFqe3ub20iVe8FweqQr4izB5rzMrfMeZkonf3evZYImBlbU0i6gKXj69QjkWBo0BDrdHssWZQH67wHqwT421kg18oaxc/CmVwHnaIh+98dCEIX/GCrgpmFQdNANqLpuPEgojwsgdqfMMwcv5S1f0jc9EeVnK1+BrBeCqdfnnANK3+DIWGik8MIZPTnkshfkGSigUqcjRUJYyTjBVcCrd1fm+w2eQyYgDX48aEGBE0m8ri/AagVzQ0E/GPLyGXRl17R/lAzuUqoWPj6mB95d6aFQTwKT6UEVES0EvuhvelAY5WGCp/MHxpe8vnJruruuGUqi67/9uc5qaa6Nerq8O84RHrqTmw3nqX3ULgWY65tYpWJ9pVNV86zY1fQACT43C3WfZTKJY7QI7vasxh8aGxqOfyh9dXdwpI69Fh1XqW8GgnIYnTByq3sz8djQA/etY/xolIB2WpgrE3pM2oX9uioy/rRz/yRxB4m0PPuYCGrHjlHLfZqZR91jHK4hbXHaxIA/AbGCPRmqtKun0AM4uh5q+BKCvUyJbJLEssuABU0bTY0pH2HzWckFCS5GUCKdtHiL75PrFUv0Iyv6u+UsEUx4H3/lmSgwDXojwUpglX8Dt2uK3C9I=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH0PR15MB5055.namprd15.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(136003)(346002)(366004)(39840400004)(376002)(33656002)(86362001)(53546011)(2906002)(41300700001)(7696005)(186003)(26005)(9686003)(6506007)(38070700005)(38100700002)(55016003)(83380400001)(66556008)(122000001)(66476007)(64756008)(76116006)(66946007)(66446008)(19627405001)(8936002)(8676002)(478600001)(71200400001)(316002)(6916009)(52536014)(5660300002)(4326008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?hJ6XY18TNriNHQT/51LFXtgfCUK//K1GbeK+LYLkTGi/+Wai5u1GgLj1?=
 =?Windows-1252?Q?APZvhjGspMugW+DwRt+mndaOTNTltuQlQoD8rYmpgJ+DKHry99cUIG7G?=
 =?Windows-1252?Q?aOXM+HCoQRnXaZUhir44Yc0enyLsslldaMYobf3/X8xK/z3D0uoA/r6B?=
 =?Windows-1252?Q?KPlwMQG1H0qS4+r5tnQ7SS6pUx6uerUyIx2w7tfbBAAOc2BWL/MRXHsy?=
 =?Windows-1252?Q?4ytgtNS+KlhBLazhaYDknnxJYkkH93cUgufO4NkiKHvwGewDbQ+wplbP?=
 =?Windows-1252?Q?xoSYzuryS0Cki005yYzILEYHoN/eV1rLUW6LZ2ZEF+FeT2fnyQgW6bop?=
 =?Windows-1252?Q?JAHqESZZOWhb7YSCUUPEwU/zyg5gNFZZ5zkhXquT5fHMngNdo2iFisXG?=
 =?Windows-1252?Q?Lqlj6ZovQWK0uKae8/7xKu1zEzI8fpfJis+lNU+bK/5zndGcC+8YDQmw?=
 =?Windows-1252?Q?gzrW5h5OrejwMgclOxRoSuzrgiaivVVNZNfTJ8rrqfgqjDrFGoicQ/hj?=
 =?Windows-1252?Q?fJ/19bMka0Qa9cKLoJT9gYeyMGUFr1kUpNZEeNUUv9NkhW1Cqp3OQlCI?=
 =?Windows-1252?Q?Iv2in4UX4ehRJQsY8OHfeVDKAPKmr+OyJ56ynwFvta/RaXcH42xsCYap?=
 =?Windows-1252?Q?FJp0yQIolJzuHV8uR5KWAb8NHRuMIn6XKTDav5yU/YhrBmOpMVhwDUQt?=
 =?Windows-1252?Q?bfM41x3rmkokbkfBlQFvvUjEld7HT6o6LEQ0ff7edOGaxRzHW98wtcQh?=
 =?Windows-1252?Q?ItnKzTllhFKaXS5liNQwo3KO7FmEYrXLsTSFDjiqGvknEhHvvyCxJ2jV?=
 =?Windows-1252?Q?wVNLjgv7Rq2G8n4OtVNTB7qreVNAoY1qnYKfjgovLaLgn7U1MOZw3bK4?=
 =?Windows-1252?Q?rc2OfTntKFZKGCN5XPOERrQnhXXGVgVXjEuKHk2vgS+jUNxKY4nvFtwz?=
 =?Windows-1252?Q?iEVhIHMOWPf00NhqMfDtncEotFB6kTO7v3xM/1yA0wFGrbCD7zmkfyiE?=
 =?Windows-1252?Q?M3B6hvYpj25fz1ToLveDuGdWet2Phc4dVNE3nIl3cJvVfX2SEQLPMQVf?=
 =?Windows-1252?Q?RZnIoru2756isITW6ZPiYLUe61MO2pb8hLSY0Ks4DdB+3PRzjWSM+dp4?=
 =?Windows-1252?Q?cmdU2WgXXpsx7CqZm7+SkB6cZli+C2knaWmXJLqnQis6ly1Sp9QVDA4a?=
 =?Windows-1252?Q?mP3q83zlsW3TLB2LoOyiJLWiRqLi5Zq1S1xYySRYooLiwPwDCrqckBzz?=
 =?Windows-1252?Q?IShtkYXpte09mmdI+imPCu0WhH0NGdVMXsPxciLHkm4IC7ZoG0N9Aqtx?=
 =?Windows-1252?Q?453Rdj19QmCWWK/XZUT/oILZsx/s7xm8/GWJJ5WYfFenhsEvLNJhKrXt?=
 =?Windows-1252?Q?ZzUxjR5WDAI9RBqCyWbl742zlNIo0fQ2CYzJTry77buVwFoIJGdDFIbZ?=
 =?Windows-1252?Q?M6qG1nY9aJCa93pwTIT3oDxZPqW8OsK+AeBLkrihRJVmaRjStMpnA8FH?=
 =?Windows-1252?Q?7pWe2Tc6pDej0CPgGSk49Jw1G+P5qRmQxF+sc6Mb4UZf4v49obHZkXiU?=
 =?Windows-1252?Q?NwHckskjvzu7k5U8dJ/HiCnVRVt9Yqz0ufIF+BLB4Fgn3ESjjLMRKYCo?=
 =?Windows-1252?Q?Zi5r2BW4zCSdtv92sEbbKyWH9fLcExXTdoqe/TWo4MP+hVSGE7AO6CGP?=
 =?Windows-1252?Q?YFNwrq1wpxQ=3D?=
Content-Type: multipart/alternative;
	boundary="_000_PH0PR15MB50555CCB2A384E1B8D2A668ECB959PH0PR15MB5055namp_"
MIME-Version: 1.0
X-OriginatorOrg: sakuraus.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR15MB5055.namprd15.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a453ccbb-aede-42e3-cbd9-08da6e68a326
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2022 18:08:11.8604
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37ffe720-0c78-4d79-baff-87ee7fde7c3d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 6uoHQew5F9m+EAGkObIgeqUorgk+5Hx0Y+Cf3Bb1DUqBTBxxsKE47fBCXq+5DYOlc4SyiZssTDNSvglmIDOxNQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR15MB2292
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Jul 2022 18:08:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57635

--_000_PH0PR15MB50555CCB2A384E1B8D2A668ECB959PH0PR15MB5055namp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello Khem,
I've added in the useradd line in my image recipe:

EXTRA_USERS_PARAMS =3D "\
    useradd -d /home/${SAKURA_USER} -r -s /bin/bash -U ${SAKURA_USER}; \
    usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \
    usermod -a -G sudo,dialout,video,input,audio,disk,shutdown,datetime ${S=
AKURA_USER}; \
    "


But I am still getting errors in the two recipes that I try to use the new =
user. How do I tell them that I need to inherit the added user, do I add a =
DEPEND or RDEPEND on the top level image recipe? Is there some other way?

I saw a previous thread somewhere that suggested making a separate recipe t=
o create the user in and then making the recipes that use that user DEPEND =
on the creation recipe.

Regards,
Greg
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Greg Wilson-Lindberg <gwilson@sakuraus.com>
Sent: Saturday, July 23, 2022 8:03 AM
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding and using user in more than one recipe

Hi Khem,
That's originally what I had, but for some reason I hadn't put in the usera=
dd line. I'm assuming that then because this is at the beginning of the ima=
ge generation, I can then use the new user in any other recipe. Is there an=
ything that I need to do to inherit the new user, or is it just there?

Thanks,
Greg

> -----Original Message-----
> From: Khem Raj <raj.khem@gmail.com>
> Sent: Friday, July 22, 2022 17:38
> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] Adding and using user in more than one recipe
>
> On Fri, Jul 22, 2022 at 5:23 PM Greg Wilson-Lindberg
> <gwilson@sakuraus.com> wrote:
> >
> > Hello list,
> >
> > I=92m trying to understand how the extrauser and adduser packages are u=
sed
> and interact in kirkstone.
> >
> >
> >
> > I need to add a user and I would like to also use this user in another =
recipe.
> This had been working in our previous builds using version of Yocto up to
> hardnot. We are in the process of updating to kirkstone and the user stuf=
f
> has now broken and I am not making any sense out of the documentation.
> >
> >
> >
> > How do I create a user in one recipe and then use that user in another
> recipe? Can I even do that, or do I need to create the user in more than =
one
> recipe with a hard coded UID, GID?
> >
> >
>
> you can do it in image recipe
>
> inherit extrausers
>
> IMAGE_FEATURES:remove =3D "debug-tweaks"
>
> EXTRA_USERS_PARAMS +=3D "\
>     useradd scribbledeedoo; \
>     usermod -p '$(openssl passwd -6 diddleDoo5)' scribbledeedoo; \
>     usermod -a -G adm scribbledeedoo; \
>     usermod -a -G video scribbledeedoo; \
>     usermod -a -G audio scribbledeedoo; \
>     usermod -a -G systemd-journal scribbledeedoo; \ "
>
> HTH
>
> -Khem
>
>
> >
> > Regards,
> >
> > Greg Wilson-LIndberg
> >
> >
> >
> >
> >
> >

--_000_PH0PR15MB50555CCB2A384E1B8D2A668ECB959PH0PR15MB5055namp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Hello Khem,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I've added in the useradd line in my image recipe:</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<div style=3D"color:#000000;background-color:#ffffff;font-weight:normal">
<pre>EXTRA_USERS_PARAMS =3D &quot;\=0A=
&nbsp; &nbsp; useradd -d /home/${SAKURA_USER} -r -s /bin/bash -U ${SAKURA_U=
SER}; \=0A=
&nbsp; &nbsp; usermod -p '${SAKURA_PASS}' ${SAKURA_USER}; \=0A=
&nbsp; &nbsp; usermod -a -G sudo,dialout,video,input,audio,disk,shutdown,da=
tetime ${SAKURA_USER}; \=0A=
&nbsp; &nbsp; &quot;=0A=
</pre>
</div>
But I am still getting errors in the two recipes that I try to use the new =
user. How do I tell them that I need to inherit the added user, do I add a =
DEPEND or RDEPEND on the top level image recipe? Is there some other way?</=
div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
I saw a previous thread somewhere that suggested making a separate recipe t=
o create the user in and then making the recipes that use that user DEPEND =
on the creation recipe.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);" class=3D"elementToProof">
Greg<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Greg Wilson-Lindb=
erg &lt;gwilson@sakuraus.com&gt;<br>
<b>Sent:</b> Saturday, July 23, 2022 8:03 AM<br>
<b>To:</b> Khem Raj &lt;raj.khem@gmail.com&gt;<br>
<b>Cc:</b> yocto@lists.yoctoproject.org &lt;yocto@lists.yoctoproject.org&gt=
;<br>
<b>Subject:</b> Re: [yocto] Adding and using user in more than one recipe</=
font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Hi Khem,<br>
That's originally what I had, but for some reason I hadn't put in the usera=
dd line. I'm assuming that then because this is at the beginning of the ima=
ge generation, I can then use the new user in any other recipe. Is there an=
ything that I need to do to inherit
 the new user, or is it just there?<br>
<br>
Thanks,<br>
Greg<br>
<br>
&gt; -----Original Message-----<br>
&gt; From: Khem Raj &lt;raj.khem@gmail.com&gt;<br>
&gt; Sent: Friday, July 22, 2022 17:38<br>
&gt; To: Greg Wilson-Lindberg &lt;GWilson@sakuraus.com&gt;<br>
&gt; Cc: yocto@lists.yoctoproject.org<br>
&gt; Subject: Re: [yocto] Adding and using user in more than one recipe<br>
&gt; <br>
&gt; On Fri, Jul 22, 2022 at 5:23 PM Greg Wilson-Lindberg<br>
&gt; &lt;gwilson@sakuraus.com&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; Hello list,<br>
&gt; &gt;<br>
&gt; &gt; I=92m trying to understand how the extrauser and adduser packages=
 are used<br>
&gt; and interact in kirkstone.<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I need to add a user and I would like to also use this user in an=
other recipe.<br>
&gt; This had been working in our previous builds using version of Yocto up=
 to<br>
&gt; hardnot. We are in the process of updating to kirkstone and the user s=
tuff<br>
&gt; has now broken and I am not making any sense out of the documentation.=
<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; How do I create a user in one recipe and then use that user in an=
other<br>
&gt; recipe? Can I even do that, or do I need to create the user in more th=
an one<br>
&gt; recipe with a hard coded UID, GID?<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; <br>
&gt; you can do it in image recipe<br>
&gt; <br>
&gt; inherit extrausers<br>
&gt; <br>
&gt; IMAGE_FEATURES:remove =3D &quot;debug-tweaks&quot;<br>
&gt; <br>
&gt; EXTRA_USERS_PARAMS +=3D &quot;\<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; useradd scribbledeedoo; \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; usermod -p '$(openssl passwd -6 diddleDoo5)' s=
cribbledeedoo; \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; usermod -a -G adm scribbledeedoo; \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; usermod -a -G video scribbledeedoo; \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; usermod -a -G audio scribbledeedoo; \<br>
&gt;&nbsp;&nbsp;&nbsp;&nbsp; usermod -a -G systemd-journal scribbledeedoo; =
\ &quot;<br>
&gt; <br>
&gt; HTH<br>
&gt; <br>
&gt; -Khem<br>
&gt; <br>
&gt; <br>
&gt; &gt;<br>
&gt; &gt; Regards,<br>
&gt; &gt;<br>
&gt; &gt; Greg Wilson-LIndberg<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; <br>
&gt; &gt;<br>
</div>
</span></font></div>
</body>
</html>

--_000_PH0PR15MB50555CCB2A384E1B8D2A668ECB959PH0PR15MB5055namp_--

