Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E28C43217
	for <webhook@archiver.kernel.org>; Thu,  1 Dec 2022 16:02:24 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.61])
 by mx.groups.io with SMTP id smtpd.web11.47852.1669910534398388193
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Dec 2022 08:02:16 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@theobroma-systems.com header.s=selector1 header.b=K6LPqW/a;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.61, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BWwHLa+DzFopWShZph8UilYlkDlFZ4DHqeVWmynXPp1Cudylr/2PTdpr3x/5WjfcTZ77AMVgLrG/YSaGRXr3x+Il6Fo+rMr0Oy01SkhYRAqj2FOS8RydMG9SOKhCZgnK6IN5oL5aRHhO3VP+n1ysC/cm/vF42OT9yTRf9UrB2KNAKn6BOl4r2/6UBInN15idXcBL+e6swM7N8e3i+APOKnGmKCRQCpXUVNy2SG10s4oGoidR2nX14DqCfHWWmtgN9TmV2LMNmZ+Yxz8BdWwfhTUJ72ekt9KdA71mws0Khfg8MeJ2+aGeIlwIogB6deZjkyN1ruq3yzdobjHSHbwUGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=M90cIUl0QaXaZ/TnfODcXGDERunRRZg6QRrYpltzO50=;
 b=CHVSHZmxp8vaDbGQNRUnsRVzumkSYN+L0Lwtp9R8obTSR20uHvwAhsx1kY7obR8cK5n4iv9jZSo52MCpu4MjL1zkQlc6T9kOE0mbw38X+bRCQNie8I15u+mT/CBHz/1tb+lRHOzjR/UStQwgTN+Rl4ZtUTLK2XKQINsuYSMfmEZNuFuf5Kfx88wGkStz/I+JowoxSqfCbpv8WHqlCy3c8YqYRjMXlG4dVCZu6rlRTZpt1TkrvDHfy9MrwY0mx773sH1/9cPWYsf9DYe4s/XGLk3kXAlD1rNXBirroff+LA3HWeNnlRY58a3lbfsu0ZEgjI0UEDp5DUQGUw9vXD/GTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=M90cIUl0QaXaZ/TnfODcXGDERunRRZg6QRrYpltzO50=;
 b=K6LPqW/aVLriGEnwK+JryKxHuxMFyPq2P3OqAhu6uR8Wj0DD3TgWogDSmlbwwTOoKOIqKFuD28uJRsRnLOmQ2xgPAGwiSpBTPOrRhUVOnHTVA2dM6kwXIqASFg17osGIE+Pg88EFYM4pz6c4/I9vRcxJ5ap/zDNngrGtT2eo+IjPmNi4+a/rKZTVUyI6vASEVFO/AQLuv2z4ps0D9hf1JKovDpRXKV01Pp5F6Ba0v9/8QDgSsXogjaP4J5GStARIss2b606ERjBHUb7jXNvYd+njhq/X4n4a1aueMorUoVNXEDtk2MYyfdwUTRitPc4BokPwZWI9nazNw/UQv1RhgQ==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AS8PR04MB7832.eurprd04.prod.outlook.com (2603:10a6:20b:2af::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.21; Thu, 1 Dec
 2022 16:02:09 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::9ebd:cd48:9396:76f6%6]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 16:02:09 +0000
Message-ID: <65abb041-2bcc-dbb1-62cb-8fb24a91e663@theobroma-systems.com>
Date: Thu, 1 Dec 2022 17:02:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [yocto] Get target machine
To: j.ignatius@yahoo.co.uk, yocto@lists.yoctoproject.org
References: <wvJS.1669899325904673732.ekuV@lists.yoctoproject.org>
Content-Language: en-US
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <wvJS.1669899325904673732.ekuV@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR0401CA0024.eurprd04.prod.outlook.com
 (2603:10a6:800:4a::34) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AS8PR04MB7832:EE_
X-MS-Office365-Filtering-Correlation-Id: 19198992-c10c-4297-b1d3-08dad3b56692
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/kENgJCOZqRwMD+YLKsp27JmPyy8CZ2ggDsDqYIEHyPzie3TV8mBlEJeFZuezi6ytWB0BODwUPllRJH/xr4Wy3dO0DcuYZDMmsgDRg+7ehzeSLNItmEVWyaKMSX/QGTljnwRfeZRjE9cmwfSF8JxXXnO3FrCOFdffcHR0kkueYpnIz3j+PEHkKt2w2xMXuNHH9UNlDubzaMqMEOzTfV/aUPp8O4+e/NgCwONv+463Tqlq46ikiBhQwHeo7EtLeXFpeazKjWTya0Ya9y3bAjf3yBAGdpIIFPwgDV1XcutvMTByS6C1MvDegA1L0wtf0yCRRES+CRvak3S8B2zANmWMxXWXS3kJR4vaHQvm5TYfiK0utIFF/i9YAPV/1ovM0U1j1EUlNeKJNps42hj5Uxy4OTVp/q3ZrGmaR6+lcMCAu+kOji124kEAI9TqxX2llyz4YlqoOl2Ym4ycgg8Y0sKFbNJ5riaIVJo1pnrfencTG1saZXDHF9wotvP8y7jPxOoLVIGK/m+LLwUfA6ei/HdybecWRXjnz0oKc1HnpvWCDI/EQB3/ehWciYVPNdPykUjRXmljnF2vYn0+PVtTATE8AaJPDFeZRanmvD3+XQCm5soH3/JRV9kkNgIgl6LrRu2n5HxYo5s2HetURQI5Jh/LWoN3hxl98AHBkom2G27oMFLnkwGe1JAvMmb2ccKNtd+dUuDgvw4V+5wMwE0NGNvgosRwXMEg11ejiU1XIf7Vp4=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(366004)(396003)(39850400004)(376002)(346002)(136003)(451199015)(31696002)(36756003)(186003)(86362001)(8676002)(66556008)(53546011)(6512007)(6506007)(5660300002)(66946007)(66476007)(6666004)(41300700001)(2616005)(478600001)(316002)(6486002)(8936002)(38100700002)(31686004)(44832011)(2906002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ncLLPSePhjHdNrgQEuKvao3rcmW69ahqW6JCTb7XTsZbbZfqvnzzQh1sXwke?=
 =?us-ascii?Q?3DkJHuBeclHW4iybkg6jZvfSxZE8PJBMbjdTimTX9MAa6AiFAheY2avUmlTd?=
 =?us-ascii?Q?v6bzyjY3DoapfC/dw7hcxl+GewDhPvm9BncKzXxIf74341k86zrZCisf+21s?=
 =?us-ascii?Q?KlSt6/r/HmXvG306OlPqtQmVknM/jaDe/kfJuw5QnqgXWDywFR1zUPAwYch0?=
 =?us-ascii?Q?oiAwIfKAVklOFDFaWmPPgIWb0/E+EXisO89Fuw6gb6ODvqOeEQSj78+nleSi?=
 =?us-ascii?Q?1fG7nMapLQRA9BZw/ReWrvDlQoVlnIwZCP+YmPwNAvRggEy9bofHpn4UxPtr?=
 =?us-ascii?Q?RsvoK1wv3UONFhX6kFvfUc42wy7o4F35eopeuRAUvXOE+/DuK4SLrIoGLDfX?=
 =?us-ascii?Q?HzERvXkOGHrobafvYZNbdgCRXqOv8BlDbv+MIiHlqIgF1GVJBO3eA5RIID+f?=
 =?us-ascii?Q?Q68yqynqIW+OuofQSkSbCan79Nt+WQMc6amRub02Dt0GyF9VoA0UKokfE/QI?=
 =?us-ascii?Q?onYgyglk8HCkGu/nfmHc3BqcphHN4yGsZj5iH6mqeYmmOnJExn8MBlaUekbb?=
 =?us-ascii?Q?swY2V6AjY/uU1LkCPaa6BXdUi0cctkrLUUxK9Xqj+wSnEN94Tp0Yjk0lk6qX?=
 =?us-ascii?Q?8lhSxqJqL2uGOp/mllZxdS9LdKYCjZhqepRK7m/JVAXdt1iSbgO+x8xwAS+a?=
 =?us-ascii?Q?caLvg/1qTeDHUjGCzBXUT0MRGVw0rh2lWBdcXT0xzVN49v4rFodzyfw8e2HP?=
 =?us-ascii?Q?Nidu77ZJuqL7IoEwbJgJkVcnxRE8+u9BbDe5K9Jmeh0XBBcV56RNc67/NZNo?=
 =?us-ascii?Q?PomfswbL8klXiZoSHGJe4b6L15rOwEvw7nhxN4D7G8DhRnBdQ1WagDRpDDPt?=
 =?us-ascii?Q?+UhKEhGkD2wcnQszbajPfbtIi8yvOcwgI9V+fV2TglhA6CLhNX++X40i3cwU?=
 =?us-ascii?Q?uCWJxCs+v062a2rUg6eyGr98ZYyymPim3Y6COg35K9ehIpCNnWXj/n7L5+vX?=
 =?us-ascii?Q?DzBXntELSuJxT9KWxqy0xbMmofvgpWnwiuwd2hK/78p/2fPg0VBENCyCcjfy?=
 =?us-ascii?Q?rTvv1GkAJUawjQUd02Mk3wj4wfruU8Q4B6/l8pMBM7P8WkDWIX5VAKhZmE3l?=
 =?us-ascii?Q?EVw4i+ayP6LEjgV6WZRThuvlIqXtRDXyz50lzDYJ3TJeH/27H0gpQsQacIA2?=
 =?us-ascii?Q?eL2ztq7UcIGnAYEiFo2/9vMLKO+2UvlKVU+Hj0GZwhN1yDv7Ri2bFGphm+Fb?=
 =?us-ascii?Q?7OMlZucaaxPF6fUJC8OBo7LAHvoGO8sSBYf2bG4pE4k72aoAk2QP9BOtPQy5?=
 =?us-ascii?Q?fBwamfyni5j9ZzYj3SEhrdomUYYs/jEcciLdWYDFgKCAZilOpfrZjr9PLUTK?=
 =?us-ascii?Q?fjqu+LWGzR1iLDG+UFR5Dsk/3lpLEzA5SF1EowELE67oJsVb2GVFusZ9mCbk?=
 =?us-ascii?Q?3scjiaVDXzCkumkZOz4vW7fl6zWG0U8KOn+V/hEMn960DV3OnUwT3Lw2SRoF?=
 =?us-ascii?Q?ReblTdHpKnmo+pY4XugsvfCTqPuzgACRJWe/t4QkGlVo5qQjLlbJPIH+aHGz?=
 =?us-ascii?Q?MiGZHNGCp5QWanoVa5wScN6LYPrOCGzOrZ5oke5ll201Jc24zSzkYPaOql1k?=
 =?us-ascii?Q?1/uxYKY71EGpV0TaraK5PETa9GJVKOSgjC9HtjZD6avQwG/hwIhSxLeCzT8T?=
 =?us-ascii?Q?Q2XrYQ=3D=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 19198992-c10c-4297-b1d3-08dad3b56692
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 16:02:09.3064
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ieOKT57HXPuYg6C8u1V7YWXNeV1XSwkTx3EuJ6V/cYB98uDqXD76kQGeZ8ygFrbdPPtO7Spldk1Pl+mZwUmGN3/MsjjpYAYnRZfeflurJdkjqDYry4Wc25RMwF2zPr2i
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7832
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Dec 2022 16:02:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58707

Hi Iggy,

On 12/1/22 13:55, Iggy via lists.yoctoproject.org wrote:
> Hi,
>=20
> I have a .inc file that contains this information:
>=20
> # Set the MACHINE string, expected to eventually replace the long list of
> # build settings below
> EXTRA_OECMAKE +=3D "-DRDK_MACHINE=3D${@d.getVar('MACHINE', False)} "
>=20
> # Set the region and platform type (defaults to Xi6 and UK)
> EXTRA_OECMAKE_append_xione-uk =3D " -DRDK_PLATFORM=3DXI1 -DREGION=3DUK "
> EXTRA_OECMAKE_append_xione-us =3D " -DRDK_PLATFORM=3DXI1 -DREGION=3DUK "
>=20
> EXTRA_OECMAKE_append_llama-uk =3D " -DRDK_PLATFORM=3DLLAMA -DREGION=3DUK =
"
> EXTRA_OECMAKE_append_llama-us =3D " -DRDK_PLATFORM=3DLLAMA -DREGION=3DUK =
"
>=20
> I understand that the append lines=C2=A0add extra parameters to the make =
call. How does Yocto know which platform to use? I mean how does it choose =
xione-uk or llama-us for instance?
>=20

You are building for a specific machine (MACHINE in your local.conf or=20
via command line argument for example), so Yocto definitely knows it.

Then your machine configuration file (the one in the form of=20
<machinename>.conf contains multiple MACHINEOVERRIDES in .inc files=20
which define "families" under which your machine could be matched.

Since MACHINEOVERRIDES is part of OVERRIDES variable which is used to=20
filter some variables "overrides", it'll just work (e.g.=20
EXTRA_OECMAKE_append_<machinename>).

Hope this helps,
Cheers,
Quentin

