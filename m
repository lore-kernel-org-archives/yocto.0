Return-Path: <oliver.westermann@cognex.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D69E8C54EE9
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 08:34:32 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com
 (NAM04-BN8-obe.outbound.protection.outlook.com [40.107.100.106])
 by mx.groups.io with SMTP id smtpd.web12.8659.1664267666908874350
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 01:34:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognex.com header.s=selector1 header.b=WmA8Sqxc;
 spf=pass (domain: cognex.com, ip: 40.107.100.106,
 mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AuFrpDvifp9M2qpRX05z7GDSHhV8aFS/LUelNQIHIUPQ8swE+yjNorgL2xwHCW0hEU0G5twZptKJUuEVbPwKi7my+ISWYFT7b6qDMruTXppKL22Q4NC9n3Q+Y9rcQJlgdXiCPZknGVe/uEid9Wo+U5ryZlqim742eJ5Wa1+F0mKnM5awpiR/g9WiJG+bPf+FJmmVyqSvEsztPna4dWgy3eEqdHUTel1sdeptJ1dLPIAh5I8V7vEs7JF/vqbxKufqQJ4LunMLsyvyRndSRUfnpD5wwmyOjwTwRIUIrAaz7Oi1yCTPGcvcnxW0apo4IMWsau0pALCS1A7FZhCuI/sJeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DLyS2ki0pkT2hKA4XQqJopjh+7DurfsmTnrHfqG9f6c=;
 b=EiGT4K+srDrmK0CUSxDFHL3Sc3YMixQI9ZQrtdWsX8k/HiueUH5G55UTdCV1Oco6ACPp/Jr3HyRzLYFWQzY8P/F+nw+qnUK99d0kosZQbLdrZ9/IlVlKWYk4XwJ17rRbgUilTQaaJlQbN8g9WSi/KtxM1nKMiZ1Jjiwf5YHYB4z61j81BL0uQg53v3ds2TpPCkJlEivT6kCr+eZE6RmQ/vyWWOb252X+4c28NPGLe4Jgsezgon1cLJ+Adpvmkog+kD65p3oWLaClJsGsS5E23Y8KRyLXfezRqh3Y561z92LH9q1GPhXZimJg71Pq6XaN+kRiWlObzdJRFrz4RZyR1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cognex.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DLyS2ki0pkT2hKA4XQqJopjh+7DurfsmTnrHfqG9f6c=;
 b=WmA8SqxciI5l4sEvlXKvaiz+FtWHk9OoFlCn3lXpBL94RR/h4s020YFT4I9O5hKSv3Wtu31WC1bxqmLiFtD3ajiGNKzjM8ZY4/NGqx7ZV7Uhj2YHwPqb/QBPeW6hE7LY1uo1P6KrRiAvULTNl0uXw9LHvfAfDpa1k/paKNaPGso=
Received: from SA1PR06MB8209.namprd06.prod.outlook.com (2603:10b6:806:1c0::13)
 by BL0PR06MB5058.namprd06.prod.outlook.com (2603:10b6:208:6a::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 08:34:24 +0000
Received: from SA1PR06MB8209.namprd06.prod.outlook.com
 ([fe80::a372:6feb:ef51:7e63]) by SA1PR06MB8209.namprd06.prod.outlook.com
 ([fe80::a372:6feb:ef51:7e63%4]) with mapi id 15.20.5676.015; Tue, 27 Sep 2022
 08:34:23 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [EXTERNAL]  Re: [yocto] nodejs do_compile eats all resources
Thread-Topic: [EXTERNAL]  Re: [yocto] nodejs do_compile eats all resources
Thread-Index: AdjRy7s5w/qUGdZMQaGPqGLd3kV5ugAAkJUAAB95YEA=
Content-Class: 
Date: Tue, 27 Sep 2022 08:34:23 +0000
Message-ID: 
 <SA1PR06MB8209B064AB1471F7B0AF432B86559@SA1PR06MB8209.namprd06.prod.outlook.com>
References: 
 <SA1PR06MB82090DEB3CB78A097AC2EADE86529@SA1PR06MB8209.namprd06.prod.outlook.com>
 <CANNYZj9_xv98411bGrzH5eQ3X8P6qpay+5UDZUGfkgdDd0N6JQ@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9_xv98411bGrzH5eQ3X8P6qpay+5UDZUGfkgdDd0N6JQ@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Enabled=true;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_SetDate=2022-09-27T08:34:21Z;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Method=Standard;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_Name=Cognex - General;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_SiteId=c12007a4-882b-4381-b05a-b783431570c7;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_ActionId=3b8ae118-005b-4d58-bfa9-5bfb2c833e5e;
 MSIP_Label_220b05c8-2537-41e8-aff4-fb6c522f9624_ContentBits=0
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=cognex.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SA1PR06MB8209:EE_|BL0PR06MB5058:EE_
x-ms-office365-filtering-correlation-id: 436999d4-ea19-4675-26fd-08daa0631473
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ddUjHc1e3MkGYzqezQSyjuqJNRi+9XVL0Q4GN3P8zDfDFZJddzVdQ3LWGvCrDLo4uF14hjTEJlkYyHiLBcFl1u0Y5Vj2nfQkAoRIhDZOfLq7d5rNkzWS75cz1WQfEpoEU0QNTXJO2Z3y0dwzBY/aWSIPJkfhS6of8lGo7zd5rFm5BM4LgQOV8ssFCN2ssTEhljALk/ZiwaZ1nSBsVGzBoxlbW3hUvT5V/sbGjv8lQyUbk1XLmNKhtAkViWFAbVwCwmvSWv/NI7cuqSs0+eH/scGaZvfFF1ztJk9q1yWXtJS9z1uP5RvS7bja+bU04ffLtBn1LzfuQxz+XC2lyE3WxAHgNauZhZxFqp5nutwv32KDUSYFlMm1miURqDT/nXqFVG4sOwdN4X0MrJJPt8ze1PsQs20IpzgeDEmEW5t8g88NYSmrPGhsH+F6m62KRdqPKdSch/ZEG4qwf4mlDkyyQtccwVFPN/02ixynmn/HYXiszty+mI1KV+IvquZyUZzCmH9sYNPDmcAj6U35ibsNsQI4Lk1od79arLwRIaP2wlhRVj3ORWe+ZQlQfYYvCdMjfUpcTTYUjt4QP+tOJpYLASHAiDUpz+ZvZVfEGrTELAB6tCjF846vIike/zta81TKxIJiXA2k4Dg1DUzS6ZeuI42emujI6b46C/IVyiRg6cg1J3shfc+TEWSdHYP9EfBe2Rs84ymvHRJJnPGocnjtZlGjINMXueUazn3mNfLZgGhNiAfcYLpQnYuFEwiWxeA3P3dWMR1OoTY9Spl84RB5hw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SA1PR06MB8209.namprd06.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(39860400002)(136003)(346002)(376002)(451199015)(86362001)(64756008)(66446008)(66476007)(66556008)(52536014)(8936002)(5660300002)(33656002)(41300700001)(2906002)(4744005)(76116006)(8676002)(4326008)(66946007)(38070700005)(316002)(6916009)(55016003)(122000001)(83380400001)(38100700002)(9686003)(26005)(71200400001)(7696005)(6506007)(186003)(478600001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?8jCYx0+VAF0wpLShcm7NSkyUmbw5um5fvMI8sNL+bpJis+ae8Hlkz+CoDoeE?=
 =?us-ascii?Q?iUzyPxnjK5TTtCT+hPMKDql901eLPRI7GHQn54UYQOK81/NTwl/Fc5xsXhG5?=
 =?us-ascii?Q?Iro7DV33FjjF7OPbEaluhw5Fv1cqye+tBhEDy3+uYI4BH2qF+wZ1LMp/Hbqi?=
 =?us-ascii?Q?vJei+hrQy35I1lvFY+wLuZ2Ve5nZ3EP2Z8FFD24mMMTfok8fpYk5cxCSj5XC?=
 =?us-ascii?Q?XkE8MKRtWdTDnjxe0XL+czxNy/C39JgOfwOjVl+N/A18mx7W0yfYu15xKxtw?=
 =?us-ascii?Q?azju93DjCBjCbffC+zZcrnEpmFy96MaR2sqkUKzhhB48XGmuV7D3qvNRqHu7?=
 =?us-ascii?Q?+a2e2GFLNX7Q31P1VhNpocHRJUDnwFPKR+F5rnirYPes7FUTeTkvRs+hwmCy?=
 =?us-ascii?Q?7cfBXh/VOvUa3PHsl0ma99/JJbl7xwkkUIF2iH+Kl1lMJbyfW9rUqSfyolo5?=
 =?us-ascii?Q?JnvNcXW1KzZreZovuh0MHWhCW6PpqJ2Dqu881Gx2eb1OZ5pJPOoUdXyd/ojA?=
 =?us-ascii?Q?Nx3XI2tLLhoYDeQbJzBzUw5ZBNX6YV87gJOlQkODpv4/K60pWQec6p+nq/tO?=
 =?us-ascii?Q?tS9bWVgfTNBEyJEw1DOcT8nj560a/8hllh19xIVGSSGDh9cy4nB1OcMK28Fd?=
 =?us-ascii?Q?noag+zVHTSxCIFcKGhQ0aKb6tw0sj6mydgzZPS+oM6AxkkRq9tYcoGgzSOyh?=
 =?us-ascii?Q?nbu7cvvUOMlwlnwjkheJCE4JhcvZV/H/shVluPUOmFpfVE1A4mR0jgmkoNXy?=
 =?us-ascii?Q?piAR23CeHeNuICVbO8qKewyhm2WkLdlABs1XqTkLp+hl7PTzQz/BGnPsehTJ?=
 =?us-ascii?Q?opXtmsdpyD5sN1wXsJL1kyeGrGsWVqB31ZiRV2TY+rdbz8pZFOhV+O/arBj3?=
 =?us-ascii?Q?IWZayotKX4FBtmgoDdtmU+zuPuu3HEUP63vPr6TNXjj9E1mLltujBVjt9Hmr?=
 =?us-ascii?Q?kEwJw2cu73ieBlcQgR6KJpZEcLjaCT9aNgOr2l/iXRQ+O7/gbO3L6kgL4TiP?=
 =?us-ascii?Q?D7wg+3QucnepUuTQZVdhO0B/46rlw22pIT9JY1OEJEXB79R/gAnoTvh4n8Nj?=
 =?us-ascii?Q?vfj0p05MUUFlY0hjMpgQam6K5CANgz0dxXEjZ+RANxR4XxNc2C754JbzwUwV?=
 =?us-ascii?Q?m4WZCJW1WF/LyYcXOtXYIac785Gx03a3dP/44KVlnP+jkXb0eATPYNErgVBV?=
 =?us-ascii?Q?ws1aTy916AkwS46Iy6KjC+2a6SwCAu7Zw2oVNNallmNDbQhbSXU10GJR2g8r?=
 =?us-ascii?Q?7L5yd9mYRrokZJzyXsxASvEDvFMTKmwa2JMUwPSOo3gX+Lg/Rz44xYTYWBQm?=
 =?us-ascii?Q?uIAySXZ7OWdIecCiZLNU+wIi06gOYS3kVR6BOxsh6VTKN5mcZIciZLHmekNA?=
 =?us-ascii?Q?n3TkRIxr8fylPrl7yyk0ej54KBuLcqfQ06tlZ5xyAbKV5p0VGHJ0lHliu4g3?=
 =?us-ascii?Q?xuTZZgPVjdeqCeO2YC3Y28z3uFIh+BgxtWm/XVp3f5hXw+3Ct7fald3Zznbb?=
 =?us-ascii?Q?/5Us5gLEaK3aE7xvuTzP6C76g4RQusujJaF+i6NF9sEmKwciqyi0F6S6OF5r?=
 =?us-ascii?Q?4A6CTLbX8pdzFrAzxg33TPhUH7uJwUw3YxIBX+dc75MgdL0Ockk+h+EIJXQX?=
 =?us-ascii?Q?Bg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA1PR06MB8209.namprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 436999d4-ea19-4675-26fd-08daa0631473
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 08:34:23.1175
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 oD8OdPxbBNRHPFQlPhOaU2IxKl5/SBoZ82VpkL4Kg5MPX+tCyapRkzaAvYblyDSi2Bf77Rb3cBnGAIcrgk6vaIFxWZkGSYRARNgfnfL8aNE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR06MB5058
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 08:34:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58177

> Am Montag, 26. September 2022 19:33 schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>=20
>=20
> Anything written in C++ tends to consume 1-2 Gb of ram per compiler proce=
ss. If that lands you in OOM, you probably should limit that with PARALLEL_=
MAKE:pn-nodejs, but otherwise that is the sad reality of C++ builds.

I expected something like this. Thanks for the confirmation and I will try =
to play with PARALLEL_MAKE to reduce the impact.

- Olli=20


