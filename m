Return-Path: <d.antliff@unsw.edu.au>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C332C4332F
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 19:19:36 +0000 (UTC)
Received: from AUS01-ME3-obe.outbound.protection.outlook.com (AUS01-ME3-obe.outbound.protection.outlook.com [40.107.108.93])
 by mx.groups.io with SMTP id smtpd.web10.113327.1671045568874303948
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 11:19:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@unsw.edu.au header.s=selector1 header.b=JwHtBO3d;
 spf=pass (domain: unsw.edu.au, ip: 40.107.108.93, mailfrom: d.antliff@unsw.edu.au)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDZev+26KJPOM/yiYr3I5IQJdJ3P4Ryd8nmGdLE/A4VYsYWaVlBspZTdlsafiezoB0nqYNJAMKVs/vZKVpwPdfrbMV4kU1jjJbRtOso8ebeiscrbVMuct4wBOgHmjD9pENoS9yc/0q26cE3Eevnsq4Z7sivWQt5vnElMUBFW4lx50yvp6hw1kUD0AM0ZBadUCRhhkcatqccT14OJFlK6TiFMS1yNkQSLgJQ2ZjBng7ENLI+ajCxr4wvhIJnrnpn2azjCg5osJtlLty27eLW2XL7WGP1i7bbaalsTgB69OJOtxDScVklPvuWNKJhyxl4Kn5lCqfBO8atXKCvWVxf2pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zv4O2eiv7Dh7pTacyLL1JhEeS6rh4/C+uYRuksJdIHY=;
 b=jFsJldwXw0h1rG9uG3IRndipEaVR4dxAHdAP9hruYtD+CKCpHWIMFuLMTSSJ/uL9Oh13uSX7WnFEtaBgqiosO932BJsR68jp9xXV1UdXEbC4qZiY9ptnRJWW6p/KLuPlAH2RSviVHOHCrdPhw0FZU2xDHmxB0mKttMS+3bGuYm/TJB9pMx/uIFHFf3KyP6YCkpDFW2287hOpVD51R8bFVrYpkYUp+Q+KTrtjvCnM+Gyp0mOaXHZWSsBWd/yPaKdNFh+apMVxGPUtGfxJmeGjZ+eXE6CYs+5sG/RNCJZr2KoXsj+Qokp/QQrG7WsAxi/GfZ70fweMlPeqSs2DVXk40Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=unsw.edu.au; dmarc=pass action=none header.from=unsw.edu.au;
 dkim=pass header.d=unsw.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unsw.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zv4O2eiv7Dh7pTacyLL1JhEeS6rh4/C+uYRuksJdIHY=;
 b=JwHtBO3dtWOhF+lv5Vuzs9lCCeeBsQln5HnW8LoQSpdYQn1Tvnlg8vjnkMsPEqQjWb95S4z4urJgQazi4zVc/1Lo4aji9ssMQW6HgXYASujdE8VPmbi5hWCgG9nqTuQvPoGnEai7lkJPCA93euONRwi86ytP46PFj0zpM4chKwQ=
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com (2603:10c6:10:136::13)
 by SY4PR01MB6621.ausprd01.prod.outlook.com (2603:10c6:10:130::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 19:19:25 +0000
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56]) by SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56%4]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 19:19:25 +0000
From: David Antliff <d.antliff@unsw.edu.au>
To: Chuck Wolber <chuckwolber@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
Thread-Topic: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
Thread-Index: AQHZDzZOKZaFo3ZJk029kid3ZIb+q65tEHYAgAANjv+AAAO/AIAAfKsAgAAk0fs=
Date: Wed, 14 Dec 2022 19:19:24 +0000
Message-ID: 
 <SY4PR01MB6797E5EA90D2F833FC675A11B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
References: 
 <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9_WD95_=bRi7OubjJ7eoGhe8+Y+QAmPu=2zLknjZ-4+w@mail.gmail.com>
 <CAB=6tBTsmaXOCe6jMJfU1ustd2PJgOU52JL_RAeb0ygtwLqe-A@mail.gmail.com>
In-Reply-To: 
 <CAB=6tBTsmaXOCe6jMJfU1ustd2PJgOU52JL_RAeb0ygtwLqe-A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=unsw.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY4PR01MB6797:EE_|SY4PR01MB6621:EE_
x-ms-office365-filtering-correlation-id: 973f452c-f1cc-4e67-0e57-08dade081cca
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 3UQwKOVlJkeftcptC9nAhv0lxnOKhU7z5l8UZoQiD66ZOH/Y0k0ChyXs/fuGiAEbgtyeOc0YB4sQTcVw3YUJaywpiTT5hat7cT+6jrits2GTROM/IiR8lE4iF8njylycmgf+PSNp9JJzrbMRZkXK/rGV8a0H45iE9Ek5Z/1BicUuT7shDxb8K6g4Rb2ARyGYSbheBUb77yT4Uef84eMVvVKMjtOgKyVuqywfzi206yFFi2N8rxcQMAliDI02yfo4uDIus6Y7XB2KFjVD7dFaCJ1ePtwZoG/CM5V+qee5dLHftFmOis8c4oT3YwnqNirbdex1g6n/ZNRj2OM2DYAhUDs9t9X+7SWZ0aut4BKl9SwD3gKOg6dI8HgBsmLiCFV1MXa7xV8ki9TcPoHwSeiYL6JkJoMvRtqCz9HckVhjbC3gMfGaDy2CpvyyCnI1IiuuRdbDxon3I4qB2TCD9dMx/s3/P3Uk+gXWGkpiPWNwYPxB2XNiHD9mfBWLLVBQ7as3V/JWXPg4ipVeVG2CUCzrqzrrxTEW/IFdfQaBY02CVlf1lcZgGxkYfyjmW9knKQ4Dh+ymXSMjwFqV4EL5jn1FJIoqg8I6E3r/qQZWUTBoU1DF1sjk4QwiCUC0WXx29LW3z8stH5pBuuqWofWWlIja3f61p+g2/5VScOUDvwbVDuEdhVj+8yi8bXhG5GlAW3qgpVbiPHfNNrzZrygE+pFHQg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY4PR01MB6797.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(136003)(376002)(396003)(366004)(451199015)(33656002)(71200400001)(55016003)(86362001)(76116006)(66946007)(64756008)(66556008)(66476007)(66446008)(9686003)(8676002)(26005)(186003)(41300700001)(52536014)(4326008)(478600001)(7696005)(53546011)(6506007)(316002)(122000001)(786003)(6916009)(38100700002)(38070700005)(166002)(2906002)(8936002)(5660300002)(66899015)(41320700001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?Xb8Fno69uEUl8Uqrdr3rskGGyCt5uy/NbKF8Bj4Q5bfGDm7R3BxTNDbm?=
 =?Windows-1252?Q?pk69527CQSVVv6phmMKb3x/iFrOkCuLeiqGDb8fG/+HI+FKGHRb+PufN?=
 =?Windows-1252?Q?QXsu/aiaIRWQILcYiMrXlJn2Ot8J41ui4GmUjZWzfuzT8ndf/+TNTmhl?=
 =?Windows-1252?Q?O61xPgwHSItBJrKerHzRccvGT/sWpgvbAOvbqhgOz65TA3qf4+em6Z6i?=
 =?Windows-1252?Q?QHYZT+fvRfsV0x5DmlhApbZvyESv70J7aLSEWxbiVLsiIwikIDlw4RTI?=
 =?Windows-1252?Q?DTJOxtuDdZnIAiuyYKvCt35jmEc+XthlCHwHkKFezb11r1sB2hDoBJvA?=
 =?Windows-1252?Q?vUo8FXWewMHpqagdzQ3gID9QlisBoRP+cVP6YT2JdpSJaBvsD9imo2W6?=
 =?Windows-1252?Q?7v23ArmKEljrZVx4tWdg/elOvvIcd2XV34fZU9b1XXtYJiT0dsIC02f2?=
 =?Windows-1252?Q?nbWS1nJ4ape3kPLGusooOt3Kf7i8mubbUjh3gHZKquw08c/wgtUPju5J?=
 =?Windows-1252?Q?PVP19OscR5o1tq8A2wFZ96tny+LwjO4t9VI/jCawzFrM/jGyL2vh0sJ2?=
 =?Windows-1252?Q?XmvbKhEbRPpBzBOrI7698z/OntMylczIUk02FE1lNylheGfQ8KxU5cvt?=
 =?Windows-1252?Q?+0ikrgUP0Xe9gwcURJPDQZ0HeCbAaPOuicjV8ag2NpR92tnB/GQDpJjL?=
 =?Windows-1252?Q?mGzikgNMca4VSH4EZ+iArgGqX0mEaGC9+DObTj3s0ETISWMcOPM9Obxt?=
 =?Windows-1252?Q?C53bFWzSPQubgKwtg+LzmHFt1ubNvIbQIw+aqY7VyHjQVAoYHiMRKOVY?=
 =?Windows-1252?Q?HsEKJ6yv49hJ5MXbYIK5DnfOOLpktiYBbJgbNCK+fh6F3WnVryAgAfCC?=
 =?Windows-1252?Q?D9VrG1cBMUbNZq18/ALGn2xIPhf92UHvZ+SE5U4dCF7oshq7tOyTlit0?=
 =?Windows-1252?Q?R/bUWE5hucdOtLVVnzxSsQEKVvxwHYPDx+8PaEK5g1o7UeYNEwIK4LcN?=
 =?Windows-1252?Q?qYCK9xWaj1w3e5kvhfEFjYCuUa7PVorCoXBXbr+0p/9nBHqdDcx9sP39?=
 =?Windows-1252?Q?5TzzGr6gfN2stwRstijfZuwfb4l7ZcpZ3Hkq0xFQdZXoT2Wh6LLuUrys?=
 =?Windows-1252?Q?rydacpxgCAxqQeIYepP+DN42DhJ9KlvyX3ghdjt4HdesoPl21gwBA+sS?=
 =?Windows-1252?Q?N7b/tiE+/fLh7HEiVHUPNqfqcS8LWkvqI36zYT1d0DkwiRXPcgXcMmXW?=
 =?Windows-1252?Q?um4r4zEIKmQ5zfX0U0gz+Kjaz1BtL9/Mu46tM0cyG/lq85RmH4v1YjCK?=
 =?Windows-1252?Q?Cv7+WRhjBnwBDEYHqPFkiFdVdTPRG2xZDBjZuyVolzHfDfRooMuxD4Ea?=
 =?Windows-1252?Q?T5+SyPifVlxF1DYo3apbHVygG5paj+tVtXD5o7RdvDAb+Nr2ELGWgbhL?=
 =?Windows-1252?Q?TiuuuN8yN3aodLD6kLpDlEWYWkTL4QI5kPOVDGS8/rMC2FhL0z0V3Zrq?=
 =?Windows-1252?Q?C58jZFm6igY3ee2YC1ecVlqjGzEt0wNmMMmX6jEGxTu5CLalLdKflLqJ?=
 =?Windows-1252?Q?CAfLwhmkcgThS4s11QcowHBPyqEGlKX+wocbqLSjunOIvFJD9x9hgptb?=
 =?Windows-1252?Q?UZdzxVPspqmf8A/e3GiXmMu/6+017AMwT6JeqP+ODyNG6ONdc8vpv0fj?=
 =?Windows-1252?Q?DeKh8TPMH5JgcuwTUPaBukR3TI43PiA7ZBXCdV9tOTUdcjcRAJa/6w?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SY4PR01MB6797E5EA90D2F833FC675A11B1E09SY4PR01MB6797ausp_"
MIME-Version: 1.0
X-OriginatorOrg: unsw.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY4PR01MB6797.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 973f452c-f1cc-4e67-0e57-08dade081cca
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 19:19:24.9362
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ff6cfa4-e715-48db-b8e1-0867b9f9fba3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7PyMZnHz41aSbbMusZNhnM1/fSN3deTUlfSfFem0EDUm+Qr6rx33lf/BOjP8ry8UbW/5qVBHhUqJT+0/KUnjPA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SY4PR01MB6621
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 19:19:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58802

--_000_SY4PR01MB6797E5EA90D2F833FC675A11B1E09SY4PR01MB6797ausp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

How do you handle that in Yocto though? What mechanisms do you use to refer=
 to your code? Do you just keep it all under the files/ directories?

________________________________
From: Chuck Wolber <chuckwolber@gmail.com>
Sent: Thursday, December 15, 2022 06:06
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: David Antliff <d.antliff@unsw.edu.au>; yocto@lists.yoctoproject.org <yo=
cto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps =
that have source within the repo?

You don't often get email from chuckwolber@gmail.com. Learn why this is imp=
ortant<https://aka.ms/LearnAboutSenderIdentification>
On Wed, Dec 14, 2022 at 1:40 AM Alexander Kanavin <alex.kanavin@gmail.com<m=
ailto:alex.kanavin@gmail.com>> wrote:
On Wed, 14 Dec 2022 at 10:34, David Antliff <d.antliff@unsw.edu.au<mailto:d=
.antliff@unsw.edu.au>> wrote:
> Good question! I would prefer not to use a monorepo but it has been impos=
ed on me. It predates my involvement and I=92m stuck with it, unfortunately=
. Consider it an unavoidable constraint. There's a lot in the repo, and the=
 yocto project is just one part of it.
>
> Frankly it would make my life a lot easier if I didn't have to work with =
a monorepo, but my leaders insist that it makes things "easier"...

What reasons do they give for that assertion?

Let me guess: they heard that facebook is using a monorepo, so that
makes it a 'best practice'?

One size definitely does not suit all. Distro builds that coalesce code fro=
m a lot of different internal dev teams are
going to have a tough time with the mono-repo approach. Conversely, a team =
that controls all of its application layer
code is going to have a difficult time with a distributed repo approach.

So... best practice?

Best practice should be to do what makes the most sense for your particular=
 situation. I manage an embedded build that
includes a non-trivial number of in-house developed source trees maintained=
 by a single team. All of this code has no life
outside of embedded builds. Managing that in a distributed repo fashion is =
a terrible idea for more reasons than I have
time to describe. Collecting the source into relevant meta-layers coalesced=
 the work down to a much more manageable
problem.

..Ch:W..

--
"Perfection must be reached by degrees; she requires the slow hand of time.=
" - Voltaire

--_000_SY4PR01MB6797E5EA90D2F833FC675A11B1E09SY4PR01MB6797ausp_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DWindows-1=
252">
</head>
<body>
<div dir=3D"ltr">
<div></div>
<div>
<div>How do you handle that in Yocto though? What mechanisms do you use to =
refer to your code? Do you just keep it all under the files/ directories?</=
div>
<div dir=3D"ltr"><br>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div></div>
</div>
<div id=3D"mail-editor-reference-message-container" class=3D"ms-outlook-mob=
ile-reference-message">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif"><b=
>From:</b> Chuck Wolber &lt;chuckwolber@gmail.com&gt;<br>
<b>Sent:</b> Thursday, December 15, 2022 06:06<br>
<b>To:</b> Alexander Kanavin &lt;alex.kanavin@gmail.com&gt;<br>
<b>Cc:</b> David Antliff &lt;d.antliff@unsw.edu.au&gt;; yocto@lists.yoctopr=
oject.org &lt;yocto@lists.yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Yocto with Monorepo - best practice for buildin=
g apps that have source within the repo?
<div>&nbsp;</div>
</font></div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"border:0; display:table; width:100%; table-layout:fixed=
; border-collapse:seperate; float:none">
<tbody style=3D"display:block">
<tr>
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"padding: 7px 2px; background-color: rgb(166, 166, 166=
);">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"width: 100%; padding: 7px 5px 7px=
 15px; font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Segoe W=
P&quot;, Tahoma, Arial, sans-serif; font-size: 12px; font-weight: normal; t=
ext-align: left; overflow-wrap: break-word; background-color: rgb(234, 234,=
 234); color: rgb(33, 33, 33);">
<div>You don't often get email from chuckwolber@gmail.com. <a href=3D"https=
://aka.ms/LearnAboutSenderIdentification">
Learn why this is important</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"width: 75px; paddin=
g: 7px 5px; font-family: wf_segoe-ui_normal, &quot;Segoe UI&quot;, &quot;Se=
goe WP&quot;, Tahoma, Arial, sans-serif; font-size: 12px; font-weight: norm=
al; text-align: left; overflow-wrap: break-word; background-color: rgb(234,=
 234, 234); color: rgb(33, 33, 33);">
</td>
</tr>
</tbody>
</table>
<div>
<div dir=3D"ltr">
<div dir=3D"ltr">On Wed, Dec 14, 2022 at 1:40 AM Alexander Kanavin &lt;<a h=
ref=3D"mailto:alex.kanavin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:=
</div>
<div class=3D"gmail_quote">
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
On Wed, 14 Dec 2022 at 10:34, David Antliff &lt;<a href=3D"mailto:d.antliff=
@unsw.edu.au" target=3D"_blank">d.antliff@unsw.edu.au</a>&gt; wrote:<br>
&gt; Good question! I would prefer not to use a monorepo but it has been im=
posed on me. It predates my involvement and I=92m stuck with it, unfortunat=
ely. Consider it an unavoidable constraint. There's a lot in the repo, and =
the yocto project is just one part of
 it.<br>
&gt;<br>
&gt; Frankly it would make my life a lot easier if I didn't have to work wi=
th a monorepo, but my leaders insist that it makes things &quot;easier&quot=
;...<br>
</blockquote>
<div><br>
</div>
<div>What reasons do they give for that assertion?<br>
</div>
<div><br>
</div>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex; border=
-left:1px solid rgb(204,204,204); padding-left:1ex">
Let me guess: they heard that facebook is using a monorepo, so that<br>
makes it a 'best practice'?<br>
</blockquote>
<div><br>
</div>
<div>One size definitely does not suit all. Distro builds that coalesce cod=
e from a lot of different internal dev teams are</div>
<div>going to have a tough time with the mono-repo approach. Conversely, a =
team that controls all of its application layer</div>
<div>code is going to have a difficult time with a distributed repo approac=
h.<br>
</div>
</div>
<div><br>
</div>
<div>So... best practice?</div>
<div><br>
</div>
<div>Best practice should be to do what makes the most sense for your parti=
cular situation. I manage an embedded build that</div>
<div>includes a non-trivial number of in-house developed source trees maint=
ained by a single team. All of this code has no life</div>
<div>outside of embedded builds. Managing that in a distributed repo fashio=
n is a terrible idea for more reasons than I have</div>
<div>time to describe. Collecting the source into relevant meta-layers coal=
esced the work down to a much more manageable</div>
<div>problem.<br>
</div>
<div>
<div><br>
</div>
<div>..Ch:W..<br>
</div>
<div><br>
</div>
-- <br>
<div dir=3D"ltr" class=3D"gmail_signature">
<div dir=3D"ltr">
<div><b><span style=3D"font-family:monospace">&quot;Perfection must be reac=
hed by degrees; she requires the slow hand of time.&quot; - Voltaire</span>=
</b></div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_SY4PR01MB6797E5EA90D2F833FC675A11B1E09SY4PR01MB6797ausp_--

