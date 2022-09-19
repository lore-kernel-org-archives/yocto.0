Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6EEDECAAD3
	for <webhook@archiver.kernel.org>; Mon, 19 Sep 2022 08:20:36 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.81])
 by mx.groups.io with SMTP id smtpd.web08.17632.1663575626095983180
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Sep 2022 01:20:27 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=Uhydm8Rb;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.22.81,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ofY1FEyHLJzvOPLpFHUVLJ3jsVi8WTapn9sLqslTVC+BTblBhuKfX57ItODRHvcyOiQ80dwGJE+DU2jbsN679sOUj/TsRBx+BPLMehW/O/5vK+wJobS0Xbr+Kr8NyLAq6eaHlgcUQC1WSi8ZwCPvPuG+vrrvYtET76ZWGE5xUtdiLYpTQUk8LSW7q6LcjN4WXC4f704C/fwtpcWmlE0oW5Rh3LxlbSKdMMv7pU4AlBI+OjT/UbkR4PM/TC/OXReeBEdHcsfvssfqNEJpb47aEsEW3CY/nOKbq5VdVKF3IUcTWfnunmlrjH2aAKKjc6rJSkuWwEirZiFSwBEAc17Gag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XK55PjkyNLcSFmRfv1xQVL1dFua1QixNpLMAoWYPJXY=;
 b=JLTBIER/wxtkC77nqkcPxH92S5+v2mBxG4AhUXNhgvvDeqLnYfEwcJJ/NaptNNckCsunZbgWBr8PnhXZc92hpjgY98cMqWHqyuImEPY01+auAjvr+FdDXbB/atU/7QMX+6A5mXpikyuf9suBSYs6SaXuCAsUCzG7NlDReVVWJNRCzgnM9fnTcX2IPhXZrLwJqsrpLAholQd7SDDCxvSZzwFbQmohGqmjROKPlNE2Ae7S9sHLD4CgWmBqNKwrBn5SCXaWFBKzePqtqFz9z3k898vZn0g071hMtBigTtXeZvZHuN3SFW3CWi24wv3fmeoCYTXEX+zP/bgt9GsrOBmY9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XK55PjkyNLcSFmRfv1xQVL1dFua1QixNpLMAoWYPJXY=;
 b=Uhydm8Rb9+AXFxljWj0C4rLUKmtPTBCseZLCKdrIfeT2/jkuE9qbEBaFFrtMma/n1JQm9uOpvhcgU1c7ffFCavZU+FrGyEcUdIs/rUUVz7AcubsDuHhLYoPKpSB9Q2sje4nN+WIcXVWrr47rNF+Jsqtjizk5ej+rrb8hUtfl2AY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB7191.eurprd04.prod.outlook.com (2603:10a6:20b:11c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.19; Mon, 19 Sep
 2022 08:20:22 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5632.021; Mon, 19 Sep 2022
 08:20:22 +0000
Message-ID: <793d88d5-91bf-86f7-1b54-e10fdf8ba8b5@theobroma-systems.com>
Date: Mon, 19 Sep 2022 10:20:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.1
Subject: Re: [yocto] Problem with make: *** No targets specified and no
 makefile found.
Content-Language: en-US
To: Kuzemko Aleksandr <kuzemkoyocto@gmail.com>, yocto@lists.yoctoproject.org
References: <zsN3.1663435179617532390.ryWW@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <zsN3.1663435179617532390.ryWW@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: LO4P123CA0447.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1a9::20) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB7191:EE_
X-MS-Office365-Filtering-Correlation-Id: 4aafce2e-d5fe-478d-5f6d-08da9a17cbc7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	zbCyMSxwnR4qWTTteXnq7BbBRBlsNJNWj7vnBEzMLXFhQ7i8GleI3nHkdqOgkqa2rsiFM64Fj9PE5iVP3TKK33zxnH2QbtuQ4PUjcYY3njEct1xe/OkGhoZ/6wIJu8Cl2Fc9r13qEi7qZo/NiRpHD9IdLP1AIlfsgOsCC8Fa23mQAh6n3B9Uh27bKdGJ6RoocbiQfTN+8hpNQxXuFxBidAmxdUUlC1TL9LTHeaL17Fn+KIvMq5sxBUUdunZTPD2y7vD4Onc2OIgJhmKIkEGPUyPbBdDb29bPJ9aMvaXqIptFhjF498hHONc5jI99NefEpwdpKOYCA5unAczIJdzGg/oJodo8P/R5GBJfD/lvRwjCJQzG+UZHZcoCqZkCycCUzJ9+ivAtEhJJwMeHgFJArzyP7moqbD+l/4cCA75qyj0YdSAZeN+3t6W6zad7SiRnbFx0TJgijTN/8ylCv1G3q4jmrQqqZNi1r5X7AxKeLe2J4+DDJqI4oVniLTf5/cHy8pQQCzsAHbWkYnpBrYP9Za4hXsXgCW/jmJ4V6XG1XXUweFYNNBa33nPyMbdQ/CmdKTrm/LccC274Q27Fk3h9oLSEbdfoGjlCuLtaAFUjDLN7cAmxDoJi/Br4l7Qz/lxgtOjGsHZOcvE6dJ8hOHXgxxBaFvmRYl78B/PwzOPYWdZxsT4MR6O5Z+to226Fz4NZ8PW4JURjOSEdPxaUIwYmIXlnPmGp122rKKUiImo6yTBjBVNh4FgDf4SSX3YGyMxtyawWIEZp2JZ6APqp3fFHzFlA14LUDjTTy4IoXQVoP5SlPCwgKta2cGj19dUYJpMl
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(136003)(39830400003)(366004)(346002)(396003)(376002)(451199015)(38100700002)(186003)(2616005)(41300700001)(2906002)(26005)(6512007)(478600001)(6486002)(316002)(8936002)(966005)(36756003)(66946007)(66556008)(6506007)(66476007)(53546011)(8676002)(86362001)(31696002)(44832011)(83380400001)(5660300002)(31686004)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ZFpVcK/FOP1yOOZiqqniXUPqRgniB1qByv2x6g6eS16K49xnje9bCukJXZ2Q?=
 =?us-ascii?Q?WHld3lTE9LXLREHhDr3VwPB/WT22yFx0+QZUurV+qgfrcvv+qFCtOmVJCtQH?=
 =?us-ascii?Q?EE7tH7I5X/nm48zm89PCdX4C2Nd42ky/Hkl94fMh79NGvbRjEfEJ0jaALrZz?=
 =?us-ascii?Q?+uxqKlGzSCpfpu3Q4mBJ9N5v4ymSt7gBXNSK9vs+enIw5JSt79FYgqROYWUn?=
 =?us-ascii?Q?+3dSu1cVUlXCymRrhfvxbhZXQBVJKgmYWwnkO4KaPtrj497HjGMqhC2r4ULJ?=
 =?us-ascii?Q?Tv3u6gTw3tbrtx54b4i0njksHwFOCDkMLU+QZb/IsBwIAtALheK3VKlqhpnL?=
 =?us-ascii?Q?gl6QFwt3ZJfDkL4Qf4Ze6DGKY71YPOd6/sEAaipQ797XbvgBerMe90qv4zH2?=
 =?us-ascii?Q?JTpJzIyOeICFt4/XlWJtaK8EuyApJOMrx5FeKb+same8gqGjYdUvYDSB7Hbs?=
 =?us-ascii?Q?T5JYOkB03SCWdaYoGpWq6DvzD8Z8jlIA8L4cJnfrUut6z5NcamCFZlgZ3gOY?=
 =?us-ascii?Q?vmx6WiSYsewrWkvGm/BFWMxH2X4oEgL0yIKtLLC6hRRFQXJ2x9LHDxowehJT?=
 =?us-ascii?Q?a/fA207bF8yi/4NyfDWrRYKNdo0aWWcFz7ULQS7FRqkk+Twe2D+FH0vrCvTm?=
 =?us-ascii?Q?LRU9McO5QsRgEpy5A9d4xjrdY3+iDAtST3jH7XGd7rREmgO5hqa/8uOT+fGW?=
 =?us-ascii?Q?YDpWSLNLqvYtH2ynzM/yUNH1lXrYdd9IpfZyDtm84WdsveL+GmbN/7JXu2ta?=
 =?us-ascii?Q?fQVM0gLaE/g8F/k40jFl77ik2PqxoTCV3DVeiImNblfUTaVAdEcm7grTA6UL?=
 =?us-ascii?Q?EaGk8xDLDI83Tj5LYa2URtHqljc2JnZqMyc6oC66tvleGFqb7BvbBYtD0ymp?=
 =?us-ascii?Q?bXPgpTPecQuKsC9dxKuytlnb1ONfzQii7WxqolBO8w9uOA27fwx7LSgExp3N?=
 =?us-ascii?Q?xdm4myUY55lDpDqlIP5C2jQcJlNIntN0ywYX6cA5pdPnuX0lG99uT87rvz+2?=
 =?us-ascii?Q?9tbXr6VaeBVst0o9vNTFRubfRVm7444WcMFJWy48yKiCpmA15yQD1WKr7Fey?=
 =?us-ascii?Q?Ve1iqdLSE/9MOqqxGX+Xi0Xm6UXyBlweKKbEGQcJDlHJxIlUApoW7Ra01bxm?=
 =?us-ascii?Q?LI0emhLiQBZwMbkuEFDzN58dzRQTayLlv+AIpWsneOw03gVxUo7NL1zxAw06?=
 =?us-ascii?Q?kWSt27PHrgV80zRVoEMYHcKzdqUIMyHiy5GwCiNz7OrhKt4rCzp60R/ou8z9?=
 =?us-ascii?Q?YOW8eraEwiFEQP8oxx//QHdojLKhKMwfM0TuqIQRrSwnJDZnvszZ9fQn54we?=
 =?us-ascii?Q?zLyCnsQ8p76eSGPNXwkr+LQEYDdUx+fWr5z01OjCYD0elog4Yd6fvVHdhapB?=
 =?us-ascii?Q?2iFQcaE7HfdchbfrEJ7BO8CUso8Nf0CFNJdGkFcix2Y4r1a11iC9CHSNPKlJ?=
 =?us-ascii?Q?LSULMfwSf5B0/DwTgEgmR5vjEMT2B0XAn7b39DnQMidgJNjY6dM3u8mXX1II?=
 =?us-ascii?Q?W2iTrTuGR6hYZ34t2PKfHxBGPK8NNfxuIRdwRwB3eP2TYZffrZzakMO8+Ru8?=
 =?us-ascii?Q?/eMEcURQqialD9/M4EhXo4nT69ynJ0uSAcusscuOKylW+nAEZOAkr29sQNuQ?=
 =?us-ascii?Q?m1OOMEwsYVZqZ09grkOTgWE=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 4aafce2e-d5fe-478d-5f6d-08da9a17cbc7
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 08:20:22.2000
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 yc4w8SUhDLmM3K1hm4wkODoV9BCN6GWycS45XNXIEGSl1chjitEdfTTEqReNUGksTvlJUqGrR1mhOL1/1nioFBisWFRX4LTY1d6fOaED0UgHxlPO+NqIftLaZKMW48WN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB7191
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Sep 2022 08:20:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58068

Hi Kuzemko Aleksandr,

On 9/17/22 19:19, Kuzemko Aleksandr wrote:
> I am trying adapt fbi recipe. (https://urldefense.proofpoint.com/v2/url?u=
=3Dhttps-3A__github.com_Kuzma30_meta-2Dmyconf_blob_main_recipes-2Dcore_fbi_=
fbi-5F1.31.bb&d=3DDwIFaQ&c=3D_sEr5x9kUWhuk4_nFwjJtA&r=3DLYjLexDn7rXIzVmkNPv=
w5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=3DgnSpmPTreYq9mxX4ptMTWTg0g=
TJw7RWcUWX8gKmcw8S8xDyWysHjWlYvrelWOfuf&s=3Djs1u3ARo14dxKOe3T2TO2ZX6O_y6RGM=
tZ8eDqYtxUm4&e=3D )
> When I run bitbake fbi I get
>=20
> NOTE: Executing Tasks
> ERROR: fbi-1.31-r0 do_compile: oe_runmake failed
> ERROR: fbi-1.31-r0 do_compile: ExecutionError('/home/qtembed/b2qt/build-r=
aspberrypi4-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/temp/run.do_compil=
e.4355', 1, None, None)
> ERROR: Logfile of failure stored in: /home/qtembed/b2qt/build-raspberrypi=
4-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/temp/log.do_compile.4355
> Log data follows:
> | DEBUG: Executing python function autotools_aclocals
> | DEBUG: SITE files ['endian-little', 'bit-64', 'arm-common', 'arm-64', '=
common-linux', 'common-glibc', 'aarch64-linux', 'common']
> | DEBUG: Python function autotools_aclocals finished
> | DEBUG: Executing shell function do_compile
> | NOTE: make
> | make: *** No targets specified and no makefile found.=C2=A0 Stop.
> | ERROR: oe_runmake failed
> | WARNING: exit code 1 from a shell command.
> ERROR: Task (/home/qtembed/b2qt/sources/meta-myconfig/recipes-core/fbi/fb=
i_1.31.bb:do_compile) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 769 tasks of which 768 didn't need to be r=
erun and 1 failed.
>=20
> I see empty home/qtembed/b2qt/build-raspberrypi4-64/tmp/work/cortexa72-po=
ky-linux/fbi/1.31-r0/build directory. In home/qtembed/b2qt/build-raspberryp=
i4-64/tmp/work/cortexa72-poky-linux/fbi/1.31-r0/fbi-1.31 I see extracted so=
urce code.
> As I understand this error make is running in empty build dir, not in sou=
rce.
> How to fix this?
>=20

Maybe this has a broken autotools script, can you try to inherit=20
autotools-brokensep instead of autotools?

c.f. https://docs.yoctoproject.org/ref-manual/classes.html#autotools-bbclas=
s

Cheers,
Quentin

