Return-Path: <d.antliff@unsw.edu.au>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE32FC4167B
	for <webhook@archiver.kernel.org>; Wed, 14 Dec 2022 09:34:23 +0000 (UTC)
Received: from AUS01-SY4-obe.outbound.protection.outlook.com (AUS01-SY4-obe.outbound.protection.outlook.com [40.107.107.135])
 by mx.groups.io with SMTP id smtpd.web10.98545.1671010459657648551
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Dec 2022 01:34:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@unsw.edu.au header.s=selector1 header.b=cfY02S72;
 spf=pass (domain: unsw.edu.au, ip: 40.107.107.135, mailfrom: d.antliff@unsw.edu.au)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NsqMgIqnJ4soBlAxnbomVi7FzSrRvrEiWGPsOyWc1hp709itjNc+mCvYd3wk6biIwUOUaYdFZERVaoayx6DwEA+7pqEsBASbEkRyPqTM+YW4HWXE6vZ+QA1Y+I9Hg1967Fb5iqf8VBEzh5R662EpWBQqYVxDh5UfA094fWFCMUMCdMPVBHahowQk0JYWStIVOuPpiUzacIkk2gxgmlqrPbnZgonAy0fhnnuRulWaxSyEuW3NMYQM6P2N4MzGe45MMVm/pptNFIuh9Re0lMCA3Z3276rMipoQlAp3SlrbWHHljEFxcQrxKg7C+gLyHPajx7Qji3q/Hlp0Kx1acbqnvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+onxIRUw3oXRlpJ19EXB8G4x3oPyQeKaLucz4M0cKvY=;
 b=klNiwxP1otRnagYh/eCb4zk0fhC/lq1UpH044kkb0+I8oPiF+pfJW48Phuv2DybTI57jhvZZLuHldp0CMV1Isrm9npO4F5CfR9x64TnxtM3+gGW1A8XEbW6r4r4AdBck2Rj61om3tsOG3DG9ahwaNB1vAUSm44LxEhmtdZLrAon135ideWURvAutm5tLFZJIkSFN5j2Y9yWCVcEdAVeP2MJjRe08HH3TK0Nyg1qkoCXebEogV5M6TkHIpB1vwYqhNOGvcyXEDNR5X4RegAF8UxIbQQsNGoGdqdrVYXqTJqKmPUq7AFVaBVSX7aizK1k0gYqQ+G5zEpm4E6/AUfXLlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=unsw.edu.au; dmarc=pass action=none header.from=unsw.edu.au;
 dkim=pass header.d=unsw.edu.au; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=unsw.edu.au;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+onxIRUw3oXRlpJ19EXB8G4x3oPyQeKaLucz4M0cKvY=;
 b=cfY02S72iSN7Hl7p5L4oPzIYsaeJktmbbj0+3z91lMc3DUVboBhEi7q7tmx3RXSCs8BYUdzhOnHsH/Ff9Od7j5cN1/v/MHAw+T6w1GKRS1gDeoRJVK7m8UMymmongwA/DMs6Ot8reNJs1s5cmRJ8OJZUxNPrtwPkqi2G9H/fhsY=
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com (2603:10c6:10:136::13)
 by ME3PR01MB7959.ausprd01.prod.outlook.com (2603:10c6:220:182::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5924.11; Wed, 14 Dec
 2022 09:34:14 +0000
Received: from SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56]) by SY4PR01MB6797.ausprd01.prod.outlook.com
 ([fe80::e176:8a0c:2e59:c56%4]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 09:34:14 +0000
From: David Antliff <d.antliff@unsw.edu.au>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
Thread-Topic: [yocto] Yocto with Monorepo - best practice for building apps
 that have source within the repo?
Thread-Index: AQHZDzZOKZaFo3ZJk029kid3ZIb+q65tEHYAgAANjv8=
Date: Wed, 14 Dec 2022 09:34:14 +0000
Message-ID: 
 <SY4PR01MB6797E2185B27B31256010857B1E09@SY4PR01MB6797.ausprd01.prod.outlook.com>
References: 
 <SY4PR01MB679719971DE5378023DF6F3FB1E39@SY4PR01MB6797.ausprd01.prod.outlook.com>
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9pSipKkwpRwaCo3NwO1O=uK_BXazxvS7t70qWTpaSpJw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-NZ
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=unsw.edu.au;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SY4PR01MB6797:EE_|ME3PR01MB7959:EE_
x-ms-office365-filtering-correlation-id: b8327d28-c51e-4fba-4033-08daddb65d5e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Ojb8lajoR+z2ORnM3rZ8B8hABaYI66v2nnhR2yPkAeOxh+sCnUbmCrnaqJUKqwiLN8R7gPOxoinpT7TfvbqyDdykKCUgkNhp466bhwzuWDU15k38vp02oA/eItkwoazXeEkJFA9P6Fxm/OB5/CLgpON3mIOV0Zqug3Pd5+aiGK0IXRhCc+V+S0iUtpt06I/kkCZJPotsUuVbRb7Ttg6TJHpOE11sYSmhcrmDCFiIYzEzGf3JGwolr2ynHUSFVZpChg65eOpm4lkoiQftAMQU/muI8aHblj53CJN4GzcSYtlvjNLzgWLgnTWObnnqEeyZO2K4T7fPN+J+Ej3s1wf+QAUHUXz1mTVbaxb0DLvzpRsyThTnkRWiaoCfMB7qHybXMs99ggoDXJbd4GKt6RgCBKymLgy4BeGe1+3QVtX9hYYAmOyQwxOTZd0sDFahtwxOWQ9mEB0hDeR5n0xNzWPemNZiHolPdzEkTawEjj+y7tjAex+7l65HzmH1BtHFpoQOYv+iXxuK3cdypC/iUej/HAD6MksXvTIuWUxvB6qpyaaJuvp92hF2fOoagoHr7hm4fqZPXCX9cLevsTy5k9wrK/lLWxtIju91GlWUPUuoPZHDUk/CY/yBxZ9srogmI2NrplN5t9kktb529Y/3SQuXq8/NlGgTgL90GVOfzrCAm6SActKPnKmwmW8hciSPKhVelbVPA16elcM9y5eDYDYfQQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SY4PR01MB6797.ausprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(346002)(376002)(396003)(366004)(451199015)(2906002)(9686003)(55016003)(26005)(186003)(41300700001)(5660300002)(8676002)(86362001)(64756008)(66556008)(4326008)(76116006)(66946007)(66476007)(41320700001)(66446008)(6916009)(786003)(316002)(478600001)(38070700005)(4744005)(33656002)(122000001)(7696005)(6506007)(8936002)(52536014)(38100700002)(71200400001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?kVZvt/KODvOqXs4zNCv3WQZeXtMCZNVCXqN16IQRz+p62Bf1aM+7cnIA?=
 =?Windows-1252?Q?ysgam77c8HlIvrRfo6z01FjpuNVygymr7NREpLHskis7Lfmr6lwpgAO8?=
 =?Windows-1252?Q?wk4szv74AfgV3AIXhov5iUraoo1t3/FbfGHxSHCEidVZsLj1ptD+ZOmh?=
 =?Windows-1252?Q?YiJd/NaM+hV098MYRE7Zki4f8YGwi5PEUqaEinqBKSwuZ4Bs7Uow/rQh?=
 =?Windows-1252?Q?VREwMuVGd57LxxPoxcBScQJUfyMjyLHkXVKEpuNxnmFl0Gbjp0MNAKHd?=
 =?Windows-1252?Q?c9Bsg+mZ8A3zScjqzOIdXnw9ssCqTqU5XrZsV7KXLkUZ5k6m0GclvTLA?=
 =?Windows-1252?Q?OAgpX8LL5rz8fOiC/xNyGAOCYpa9tLRMt2NHWLqEvPpNQDjrBbXHr0a6?=
 =?Windows-1252?Q?9aA4HFglp0onNqd5ZPogCWp4uHG1fQrLnPmY6OhDkHUuJEeGv61ep/vU?=
 =?Windows-1252?Q?t16ipPBUp0BF5ZIBTZcYwqfDw7y2VsErms9IHKk21n5BAF65dlXzWVpu?=
 =?Windows-1252?Q?q2piiLAwbqPgslfCi5rB0rJ4k6K4XzsUrAKa+24HuizD3LZAGAAm5T1Q?=
 =?Windows-1252?Q?jlDdMYvlwp/1TYUCoA2gQSBRGLFECgxlTmzBss1/Wif5vDThvL1G6Ti+?=
 =?Windows-1252?Q?JLf665p5ncRuLWYSA5UAuoxvOO5Jq2xSCfR8fN0u41gtDIypUkfpAe+7?=
 =?Windows-1252?Q?nfg6cK9hhGu+AOdHsygZ6WZkUBZ5MjcELdkewNQBr/FLx15DYKYrjz4d?=
 =?Windows-1252?Q?Y2Oh/LOcHDdOWkyW0hg2DYP2kWdRTi8OldkqdsTqKNow4e50H9KbPe+g?=
 =?Windows-1252?Q?Z+jVnzKrCkdbAKX6H2K6iduj4VDf1QoofVWtU8nVjYMj/8ewu7Tp0Dve?=
 =?Windows-1252?Q?eYScVLIHrVT3lC2aHeeBTxqjvldlsK7VtcGoB9o+9SnUqQlTDIYWnAIS?=
 =?Windows-1252?Q?uwa5ji84pNkNpL8mo129OQViwdw/0AgQnT6LbaGa7urkF4Q25AW7YV0/?=
 =?Windows-1252?Q?a/6kzEUVunpUs8D5U0QUKAHpkj4PR0Mlvbd7Gj8TJCTtaTYlByfF+VLQ?=
 =?Windows-1252?Q?5mxyJyMK0mve9R7acdO4ezsmBcbONGTAz6RJOWIsae+vmxZbi4fsfGwN?=
 =?Windows-1252?Q?xiQK1qYgYfdN487I824mDe2b05cfw/U16365rQ1nJJyX9rAlsc0bteW2?=
 =?Windows-1252?Q?oRVBHGz2eYrqsqT9fLR8NRjsYrIF07jVs0YhizQcwV2HEY4imfJMQHCw?=
 =?Windows-1252?Q?b6pJX0t0eC2yGZiZ6zzyeEr+rlRejQnfj2ciWxYyNgUA0DuQkIFIwcyG?=
 =?Windows-1252?Q?uW0QIy8RXVS3EJ66ObsADP/vI2DVH/9BfPe00knxyNuaaB822IRRKk7f?=
 =?Windows-1252?Q?cPjWJHsNwYkePd8oaG7HwIc/CCrVOIE9OqzZqwqIJHCKFpK80PUCix3t?=
 =?Windows-1252?Q?FOKnvmd6KN/DxBvvYahvUW/wHnyTlzNGDQJxP9SasV0gOdb9r9QBRwQm?=
 =?Windows-1252?Q?zy4AL9tPbjO7E6D1I+iK53BNAAfmDtjNAzTAiIY52lQpE4ad6GJpeNyf?=
 =?Windows-1252?Q?O8IjSYwEufTb7XIW9L6zXsjMEIAWPmM/KLZM+o7YsWEWQ1rJ9DrmnWwY?=
 =?Windows-1252?Q?bOAntpMeLzHVRnkJpf6rvQMmJIDgRrTDxkdhKJW7yhBQ4Q8Oj9gxHgNF?=
 =?Windows-1252?Q?FuMZ50pFoI+2o+UXSQ/yLL0vFB/fWhZSsg35gMALleut2hb10mmh+w?=
 =?Windows-1252?Q?=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_SY4PR01MB6797E2185B27B31256010857B1E09SY4PR01MB6797ausp_"
MIME-Version: 1.0
X-OriginatorOrg: unsw.edu.au
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SY4PR01MB6797.ausprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8327d28-c51e-4fba-4033-08daddb65d5e
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 09:34:14.6278
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3ff6cfa4-e715-48db-b8e1-0867b9f9fba3
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: U16DYAEWfW1n4TqQYBTl8pLnjPiSJ84kdotFhxhOXPZJYgE42CLLPhoXySXkkYAzTARb7X5DwZV5nAZbpdCDOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: ME3PR01MB7959
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Dec 2022 09:34:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58792

--_000_SY4PR01MB6797E2185B27B31256010857B1E09SY4PR01MB6797ausp_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Alexander Kanavin wrote:
> It helps if you explain why you want a monorepo in the first place.
> What use case is being solved by that?

Good question! I would prefer not to use a monorepo but it has been imposed=
 on me. It predates my involvement and I=92m stuck with it, unfortunately. =
Consider it an unavoidable constraint. There's a lot in the repo, and the y=
octo project is just one part of it.

Frankly it would make my life a lot easier if I didn't have to work with a =
monorepo, but my leaders insist that it makes things "easier"...

-- David.


--_000_SY4PR01MB6797E2185B27B31256010857B1E09SY4PR01MB6797ausp_
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
<div>
<div dir=3D"ltr"><span id=3D"ms-outlook-ios-cursor"></span></div>
</div>
<div id=3D"ms-outlook-mobile-signature" dir=3D"ltr">
<div></div>
</div>
<div id=3D"mail-editor-reference-message-container" class=3D"ms-outlook-mob=
ile-reference-message">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><span style=3D"font-family: Calibri, =
sans-serif; font-size: inherit;">Alexander Kanavin wrote:</span><br>
</div>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">&gt; It helps if you explain why you want a monore=
po in the first place.<br>
&gt; What use case is being solved by that?<br>
</div>
<div class=3D"PlainText" dir=3D"ltr"><br>
</div>
<div class=3D"PlainText" dir=3D"ltr"><span style=3D"font-size: 12.96px; col=
or: rgb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !im=
portant;">Good question! I would prefer not to use a monorepo but it has be=
en imposed on me. It predates my involvement
 and I=92m stuck with it, unfortunately. Consider it an unavoidable constra=
int. There's a lot in the repo, and the yocto project is just one part of i=
t.</span></div>
<div class=3D"PlainText" dir=3D"ltr"><span style=3D"font-size: 12.96px; col=
or: rgb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !im=
portant;"><br>
</span></div>
<div class=3D"PlainText" dir=3D"ltr"><span style=3D"font-size: 12.96px; col=
or: rgb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !im=
portant;">Frankly it would make my life a lot easier if I didn't have to wo=
rk with a monorepo, but my leaders insist
 that it makes things &quot;easier&quot;...</span></div>
<div class=3D"PlainText" dir=3D"ltr"><span style=3D"font-size: 12.96px; col=
or: rgb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !im=
portant;"><br>
</span></div>
<div class=3D"PlainText" dir=3D"ltr"><span style=3D"font-size: 12.96px; col=
or: rgb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !im=
portant;">-- David.</span></div>
<div class=3D"PlainText" dir=3D"ltr"><span style=3D"font-size: 12.96px; col=
or: rgb(0, 0, 0); background-color: rgb(255, 255, 255); display: inline !im=
portant;"><br>
</span></div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_SY4PR01MB6797E2185B27B31256010857B1E09SY4PR01MB6797ausp_--

