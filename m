Return-Path: <paul.barker@sancloud.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48BDC433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Apr 2022 08:08:06 +0000 (UTC)
Received: from GBR01-CWL-obe.outbound.protection.outlook.com
 (GBR01-CWL-obe.outbound.protection.outlook.com [40.107.11.139])
 by mx.groups.io with SMTP id smtpd.web11.5635.1651046884371090760
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Apr 2022 01:08:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@sancloud.onmicrosoft.com
 header.s=selector2-sancloud-onmicrosoft-com header.b=I9Q4Np0F;
 spf=pass (domain: sancloud.com, ip: 40.107.11.139,
 mailfrom: paul.barker@sancloud.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QHzZizsuqUJveGbBTKZRLwRra5O18QGWgQOhxFooHhkX05hIlf1YkEWlt1sn5/bguYXOR4oaqx20gb76sP3oO0zaE7aipdDaoqbSBB1vEPjZpuJH2oOaHs+Tz1mj+G7jgqd5ejf3OBnrauxuuvjs0WWEW14sRHpDeJP9p9dLyM7/RZaaPcSkqv/lcHGjvxnEz5ZCDiPzqybo0HdMjQvBNoegnrLFPxqijwnNoUgC8eoNsQSztgtl2RkQo8N642ijBFAhAqGZ/OnxBMsw8FCKRj0ouxd+CObh9GHI9tnHXVTVLNj029K0/6CRHho9d5YR4lx8aNnXVcDZ1IN/w/c6/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kn+mINV4GhpJN3qRZKy2w7qeSV5zloVGkUgk9r0U9qo=;
 b=IkryEZe2cRDouJu3DY5st81NoFJZENm70xJxhIJ2unNQO1GzJXWDvFJmSmxBS7xGKlInuDXFowkcwC5W2vyJgYUuRMpI22MWbs1tqLBUX44gf4yME1P7VCqpRW0CTCyXOBm/K6EtRKj5V2cMV1xrlxYJPrSDTHgM+HhvaERKmUeSFpXPWLDNBOnGcdJDLPpfN1skvv3WtEdmjqDMwsVP5enirerhw5mAh0NjZEnmKVEedEqgP1SZLYEXyN1CwoeeBVnvrzSIMKTWz1reY8MeYQybsYZoPUmgtMOLqYKElIqM0uvFFTsZWSWZdIJY9kiEZwSiq/IWQk9KN/r40vrOXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sancloud.com; dmarc=pass action=none header.from=sancloud.com;
 dkim=pass header.d=sancloud.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sancloud.onmicrosoft.com; s=selector2-sancloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kn+mINV4GhpJN3qRZKy2w7qeSV5zloVGkUgk9r0U9qo=;
 b=I9Q4Np0FPFAbnImB4ByMKYh9jiW71AlgD4qyG86y0f4q6BhHQp7XSv9F0YsiloPlcDitca9V2PC8sZh9yXbO3v+5Ta7dSgaJ70kfByUAPQoleUPXjazlB2KJmp7WecPfta22sAq/6haodzyv12Ru3AtC6BWZMJuNHfTDZ/fDvLQ=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=sancloud.com;
Received: from CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM (2603:10a6:401:61::19)
 by CWLP123MB3219.GBRP123.PROD.OUTLOOK.COM (2603:10a6:400:5e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Wed, 27 Apr
 2022 08:08:01 +0000
Received: from CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
 ([fe80::3c6f:9055:2517:5366]) by CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
 ([fe80::3c6f:9055:2517:5366%7]) with mapi id 15.20.5206.013; Wed, 27 Apr 2022
 08:08:01 +0000
Message-ID: <90b05148-5215-584e-0080-24cd411b2ba8@sancloud.com>
Date: Wed, 27 Apr 2022 09:08:00 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [ANNOUNCEMENT] Yocto Project 4.0 is Released
To: "Lee, Chee Yang" <chee.yang.lee@intel.com>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: 
 <DM5PR1101MB236176E376BD554365050E72B9FA9@DM5PR1101MB2361.namprd11.prod.outlook.com>
From: Paul Barker <paul.barker@sancloud.com>
In-Reply-To: 
 <DM5PR1101MB236176E376BD554365050E72B9FA9@DM5PR1101MB2361.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: LO2P265CA0002.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:62::14) To CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:61::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c0fd8352-1d1e-4b11-5156-08da28250c49
X-MS-TrafficTypeDiagnostic: CWLP123MB3219:EE_
X-Microsoft-Antispam-PRVS: 
	<CWLP123MB32197247025479DEC8C86E8B93FA9@CWLP123MB3219.GBRP123.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+GMj0pegs5So0+YiIdH5h6qtJBXMvolvYpTk8rHMjR+zsfdVC6+y4ds62MGWLnhO4undA+OCBuQX8cVm5C/LmNdTIb5PvjqNbyx48E/zg0VjeGmBhCz64paDj8c2K0GudjZYwsrZHm2zsN5B1lftI+TCNe/hYMX+WINM0o6U1aOgMCGgxPtndFucaUT/IWgte4y8J16uLj3y2TQzYBrr+CAL2SjrtnmnU5Gnm/0CWZ0Rbh+VD34P2vmTKHFZUaZ4Cw9pgwaHmROfLcuIiifn6nYCpc4y8fYli/CdSnw7dUv1jPA6l37PjjCh2FABMELeXTT9hi7NKWRaheGFOVY6W/DCJzT2orH/2y+hzVn3ZYg9oIhbTXajJCt62vBuUY1MkSmO1DTCfKv5+o9Rl+2icytdViI4+AgRfXihPJmp3yWiE2GHV2tehNmORJzUJLgjDngDrHNXKpZJI7oK4htVODz26hS2MyTEYA/0ICfGLZ7QdYLizKiuuJlb5a7XJTT8z8UQCeYm7VSXS8WeGoux6Ia2HzJkwbv8f3FOisjdn1iLjAr3X4uNb3+OAdZ553rEnQ6foH3KD20oAXjZx70Q2ul0I9q7qqqAyc8yXqhFllDkxqKR/38qU00uf6HsAa8IIGbFbQAiqPZj88bS410dbh+v6P7zNoZ5a79xMGjBH9eZQObE7QLcaZypx7pYo2obyZMWkQh0sl+d+VZ8UWOyWqxNczV2VFaUG2NVe/E3lLYHr1WVvnosbrwnq7v+bxvoYsdP0SOnKmfCPwVyRYOojD993ETG09iKpmSh0QZusCiq4WUfA7kKrUAkkJPAWbaO6VVtw4v4G1pNGJOPsPkT3BCKBtuOaFQAo8D8pTIOY6M=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230001)(136003)(376002)(39830400003)(346002)(366004)(396003)(66946007)(8676002)(44832011)(8936002)(316002)(83380400001)(31696002)(86362001)(966005)(6486002)(508600001)(2906002)(38350700002)(110136005)(38100700002)(66556008)(66476007)(5660300002)(186003)(2616005)(53546011)(26005)(52116002)(6512007)(6506007)(36756003)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?5FhXxVPzyLHfTwOmQ7zj6Le7bibO1oEGWXYg4ve9ptOWkIN+F+GBqnYBwSyv?=
 =?us-ascii?Q?e1SrZoAa6DSmWa7Cf4nU5OaHAlZ4jQPvW4P2lWj7q8x/o6My5k+7qvDflzmk?=
 =?us-ascii?Q?jp4XEdYPC/v3vYNI1/LUDmicLOpdZ6GJraZDWspvEp81Pd4ydWFhlKIp35kH?=
 =?us-ascii?Q?nN3NPz+swIYQxEb3d5uSyKbG/5B3bMRdLt/FbfwIkpBIcSQiVLhSkeZ4kSgu?=
 =?us-ascii?Q?TphQwzoaSo648s20WtjRnH8/91s+AmhngHw3osoeixqoosoeNxcleV8YoiS9?=
 =?us-ascii?Q?pc6q0KlG6KxQle8x6gikjoYzDOQP4/8eOpwc2b7fV/0nyJGQynq1tWREBapK?=
 =?us-ascii?Q?UWQrM9L0n+LlfHEV7Ptkp2GLFt8jrPYQfg46JTAuQwEzPLcnqqK45edsK1MM?=
 =?us-ascii?Q?kF4INHk4+k8nY5s5TfFhzk4QMswJay0FVMuEmhlATj9hcIpAKeDRASrDUaFU?=
 =?us-ascii?Q?JSSRtD9krYVJXrn5FEjuVlbLDhuR2/egwsJkJX5MGTva7WYQpZBWjlrwyeu9?=
 =?us-ascii?Q?r6G0ZFJ0b0l5dZPClVqJHjwOZ7sxPVC0NcF+AF9q3rcConjqt1RAdn3nSgQ2?=
 =?us-ascii?Q?bQiyDO+T+PYfWJdkRD9Eun+XGWW26gsnsOLOdzWt3wZwJF9Is5IGxqb19Vsj?=
 =?us-ascii?Q?HcPZrFmJLBd2qlU+Mask/Ohu4qWBSNzo6dKvEE3PjYJR9Z1ayzcMNjqC86FV?=
 =?us-ascii?Q?lbiAZvMDzLN6zvOSTcpuhhgKkybOnK/P11k2LlbjnA7dioIc3HnofE+drSKv?=
 =?us-ascii?Q?IFf0CflH9WpRrU5tCnzULOTOHxOOjXdjjBzqIeFRi7AGEdHD49y4CYaoyN88?=
 =?us-ascii?Q?vBnfeFq6NUS56bteNAIkD44gMPz40PMxcx5Y724KxI8WPWPY9ShaTvTamwrR?=
 =?us-ascii?Q?cCn/qvvpZlESD6e79ahyYjB3152N/YkcAKhFlmow1O1+z0lPKvdY/3X0hpzO?=
 =?us-ascii?Q?WnQIY2KCem4f7t/o6Bto/kMglWv9BAXQr1R876WocC2/KCbx5tZ+qZiUOF+D?=
 =?us-ascii?Q?WxwXIaWRpfh4L10G7iGqD5kYra/EEPZj9Skho6n/A4kZQv2RSfx+zlBLQg8z?=
 =?us-ascii?Q?16ro1xxcU+3/JVPQMHkpv/RxGSjnWp1hokXsp8wBrqslRDn8i78v1eVzPyfH?=
 =?us-ascii?Q?r5Em1/rR4fIcfPHZIGAwQYiyIS2W01cOQmqWjt2ZwR0M1SJzOcksETgydsOD?=
 =?us-ascii?Q?cLeG5T48cUxkFiI6CsNjNEMhBIn4J1P2g86pbWG18V/uFzOuMdRNwiyvnPQ5?=
 =?us-ascii?Q?0Pu363iYWH1A2ehXzlNIfoGl0G/zXOq/i5tJbIVniL4yJpfUW/9SNiCmUb8S?=
 =?us-ascii?Q?Y6AthU6rdR+uREPKc7TGTJ9oB0QgPYmZH5qDRiwUbFsBPg9vfO6M3mt0muKl?=
 =?us-ascii?Q?QpYbpmKt51Hmuv43kipTzq9fb7j6fIFVieDhpW7S5prkfcjlP3JC7TIid08H?=
 =?us-ascii?Q?u9WY8r8EQ0N8XCIycb55q3FpvgxvVmpeUkfneGsK3Bu37nR00nDNIMYvbyvX?=
 =?us-ascii?Q?lOh9S+BOrF21KATUvq3A2MluTaP7z6dYrhL3tJ9Q+KI8kGBeYLMtIzs8EClk?=
 =?us-ascii?Q?KMXP0/DPfPGqHgW5owrTeoTQuHvBJxbNZGQvA+M7232NlA3wrEpRhb/HdrOO?=
 =?us-ascii?Q?GT0zjN8h1AG6Y11f6iBWIHiKxOV6YtwqyZSt4ymMJEceIbjJ2zO/bo4PyFsH?=
 =?us-ascii?Q?3ldKG9AgHqc1w4RJCyHZyNfOISwnxANXQRTVwWuamUon5cTjUDe3Qm1zWgng?=
 =?us-ascii?Q?RHB80PEaNSA0iWRhJNp6EdaXrRtoy1s=3D?=
X-OriginatorOrg: sancloud.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c0fd8352-1d1e-4b11-5156-08da28250c49
X-MS-Exchange-CrossTenant-AuthSource: CWLP123MB2241.GBRP123.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2022 08:08:01.3566
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 840be37c-244a-450e-9bcc-2064862de1f4
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 GsHvwX/F8/U1dPM29ZALue01Qc7wbZUtRfpIQGHnpvQxQ4gvjEzUjrEYqyNnKEDH5bQLeBvGBqlEBCCkyxJyby6Lj9w2BkP+0t8vwIQbdGY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWLP123MB3219
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Apr 2022 08:08:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56905

On 27/04/2022 02:49, Lee, Chee Yang wrote:
> Hi
>=20
> We are pleased to announce the Yocto Project 4.0 Release is now=20
> available for download.

Congratulations on another release everyone!

I noticed one minor issue in the release notes:

>=20
> - The Yocto Project now allows you to reuse the Shared State cache from
>=20
>  =C2=A0 its autobuilder. If the network connection between our server and=
 your
>=20
>  =C2=A0 machine is faster than you would build recipes from source, you c=
an
>=20
>  =C2=A0 try to speed up your builds by using such Shared State and Hash
>=20
>  =C2=A0 Equivalence by setting::
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0 BB_SIGNATURE_HANDLER =3D "OEEquivHash"
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0 BB_HASHSERVE =3D "auto"
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0 BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:868=
7"
>=20
>  =C2=A0=C2=A0=C2=A0=C2=A0 SSTATE_MIRRORS ?=3D file://.*=20
> https://sstate.yoctoproject.org/&YOCTO_DOC_VERSION;/PATH;downloadfilename=
=3DPATH=20
> <file://.*%20https:/sstate.yoctoproject.org/&YOCTO_DOC_VERSION;/PATH;down=
loadfilename=3DPATH>

It looks like &YOCTO_DOC_VERSION wasn't substituted for 4.0 above.

Thanks,

--=20
Paul Barker
Principal Software Engineer
SanCloud Ltd

e: paul.barker@sancloud.com
w: https://sancloud.co.uk/

