Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09E6DC433FE
	for <webhook@archiver.kernel.org>; Thu,  6 Oct 2022 07:47:47 +0000 (UTC)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com
 (EUR02-VE1-obe.outbound.protection.outlook.com [40.107.2.64])
 by mx.groups.io with SMTP id smtpd.web12.3183.1665042464894313824
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Oct 2022 00:47:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@theobroma-systems.com
 header.s=selector1 header.b=B58GDUzX;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.2.64,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nUbLDbY08hQEdOk7mnZDTZWWX0WqlS5SErxjJgjDuHzX6DDWE9Gc4uOgVa0kRKAwffO3jE2qO50M2k1oEYNWB2bcE1aLN2QcyLqyqgj3t/+sdAPZVg7PdzPTR82YAQmKJB2qGT+2sduOIPsolE/b6PvHyF6DpHF1q6RL4RN07XyJoK+s1vlkVL8SgaJJO0v3/3WGQXMMDmPevVJfFEF2a043QIk32/tyyziKYRHXMFziZ2uHTKlifeuN9I6yiB3OttioLp3nSQUSsgLTkiR0WJyR2qD+e70YO3Tn9Ozs/7vdXLlTjoXBoIr6/UMUxihFSCAPs9tQqyqTxCZsjwhiJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HMEISIC1jvQwzO0NHvRi4A6/JX769e/xnTumWiAclxA=;
 b=eODNVPdC23U+RcWp1Tt9LflSXP1A+Ek+BNRAFDimK2G/Bpb8tSpLFNcAhcevP/DNuaqBNDlwppCkP+JyzUye8STgnqHbyO668DBeX9Zm3b/h/8r3ySQWbE+AUuJu6OX6ZpzU+bLk+cpHCye69VQbj65dmTzm2tbyc9OlUZmhq9DtAUhY/2F9mlmURovLVxyFyAf2uc2lKOPm0H5c3JXA+Lh8HZ31lsHqUpZN4ZDC7nYHSFLf54AFUKPn2jdgjHm+HP0M1/m9hEHySh7EFh3X4mqdQSrN4p5BvGOPvj+Djj9Rc8D8+5A9wqPdSm1OxYYekVObwMSUqmkybJl9XAgbZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HMEISIC1jvQwzO0NHvRi4A6/JX769e/xnTumWiAclxA=;
 b=B58GDUzX+OSckb78pwxzfglfmEx3dYtzZtShm0u1aOnW0K6UeBl6Ic8yVXHuQpNjoikMMZO4iNRMbyp1PyOEYSkh91qtt2CBzC+SL1wrBn5R/PjemCZnK27s0zP0QMvJ3k2mBSfKpVlAtl/K6VIDTr91+soQ55oRFQdiFWL0A6cMxgnPsmG1Z/446iUoiLXMjKAwSyxCIZuC9Esh5BwzrEbP7+TQC+7SAZITgKdg+QdXHLnvVYdN0T06Lk7b1Da1J9JRq3eBvMufugczTLYS4qQRjwrtNijWC2Crq1w6SGqU6Ty0YQboDWkVqet/jGEANUNaUXQpysTMLnnziSdZhw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by AM7PR04MB6887.eurprd04.prod.outlook.com (2603:10a6:20b:10a::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.34; Thu, 6 Oct
 2022 07:47:41 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::5e5e:1989:e5ec:c833%3]) with mapi id 15.20.5676.032; Thu, 6 Oct 2022
 07:47:41 +0000
Message-ID: <903c6bff-a064-db43-f03a-34a7a25f31cf@theobroma-systems.com>
Date: Thu, 6 Oct 2022 09:47:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [yocto] SRC_URI file://f.tar and destination
Content-Language: en-US
To: Mauro Ziliani <mauro@faresoftware.it>, yocto@lists.yoctoproject.org
References: <c291f57a-8e73-5198-6363-1c46306afa86@faresoftware.it>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <c291f57a-8e73-5198-6363-1c46306afa86@faresoftware.it>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR0701CA0044.eurprd07.prod.outlook.com
 (2603:10a6:800:90::30) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|AM7PR04MB6887:EE_
X-MS-Office365-Filtering-Correlation-Id: e56c38b6-8a8f-4a2b-36a6-08daa76f0c54
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	v0V0NtXoLhhLb29yqEe5yBoAV2NVN4795o7NvNRxAJliPR3S3v9WPkjVAOkBcXuq9s+nuC1qsmjmlrDcQjwAdxoKvIOmGZfXz4XIAlPJIBrFKNxoFIeg/mJN6varRLxk5lTnzjv6RDn0eiS3DqNXQjfBOrgY2rOTUi4B3XYQxhnZW8XxwrpxiuPDmWH66D7J3ENEtQ9+zuXz9I3NPtk3A55l3HJMFLbsX2d0Sb4IOIOUVZcbKO2SdKMaq1tx6g8Sj1pUV5lULsLouPsVq6l2gMjlGgYLXGrvS/HEyr2/LlPWA5H39Llr6wUHBQGP3/7tSgtHHeYH6E2u4xhhuhxiA1GJyjgaGFafwpXo34U51VF+ucWKVcrqg2fDf99Y5+zCtJdSMvmfhTa/TPwRoBWcm0qKE07uOeLwqaBZbjMTraFV3V2IMNQHBe1+b3b8zflo5iK7H1mzFopHugKFbpXwJz/SFaCXuaz7rITyJumFJl+ZOFZ1+P1mAzUI3Lfsk4fdERWnw52v08qnbWI7CRdqXn3nlPbi5qGIwBIKlpRq1ejHSoXzMeYTtq2biFseVhGlUR/uAZfkLaRZtGB2YIj0LrwrU5TlTVdjVspUi1iJfqjX+Hk+OT0d8TChMpaEvxWpvqR2mRBUzx0rZfWRaAchYhm00ZrEKZtal424r2Yt94q+mnbttBwoI4pgBo+erFZinrMypGNolhhvsc3bZTfy3b7gJRjB7QCTEbUKiOs8eojX0pzm1ozTvE3oJLPsrUnt4Mf+VNwYfmskl07mAoEnGmkLyD/rLtXWeuqPB4e4f/ez+adslW8A03RvYdi4TsBF
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(376002)(396003)(366004)(136003)(346002)(39840400004)(451199015)(31686004)(53546011)(966005)(478600001)(6486002)(41300700001)(6506007)(6512007)(36756003)(66476007)(4744005)(8936002)(5660300002)(8676002)(44832011)(66946007)(66556008)(86362001)(31696002)(2906002)(186003)(316002)(2616005)(38100700002)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?1Ik8acjyFm5NHMUTRdjnUtiKCiWO/q1mbOOXVi/0QuhXRHy1XdvJU0N5qGVV?=
 =?us-ascii?Q?KK2uo0gCIKpltVtfnhP4TWs0H5IUAQcx9nGobWAtxAt/h3owIESq/E/joSty?=
 =?us-ascii?Q?kCQFcJuzUpiLQBQVrttP19/+ZqpfrBpOEA3vKSow5NqGw0Duz5L04GH7+j15?=
 =?us-ascii?Q?KLQyEfzI4mz7ABI2BSh/SW73UT/fKQDsCSecafq6QO/rrF3RqKmmzAtVRVf5?=
 =?us-ascii?Q?6F83wZJW6/Bm6zrX607yA7dLhtgwXmh+Zd/WdzGzKJo/B//Cl3gfpr++C5Ep?=
 =?us-ascii?Q?mJiX9O12emexZmvzozO++OhYTPMaPLMTOz71nWVdtYiyexsDD9LYU1iund7A?=
 =?us-ascii?Q?TNhDsV8izhhNQMo9pitSJxhpb3IChuDw8h+ywUkKiil71K3NqdRHtpzHqyLB?=
 =?us-ascii?Q?EvNeJ/az2F7hJwT2RWXmxKAlHsuwg9ihQLdTDZPktQdmE5xnevMxIOIFKkWq?=
 =?us-ascii?Q?HUXgyDPNcEyJpPg9q1ouPvoJxpW4eWDSssvhI2lcK8wQqFB8VzFKSBwXDEk7?=
 =?us-ascii?Q?Aj+mYtkiIdLwAU59K+9A50YBpxDPe6vx2In0v2HgilDu/s5dvIK8HDKMv5x9?=
 =?us-ascii?Q?znGB5vDzqOWyNR073z77YFs1c1VAbV8HWxje7Xh0neU7X7NPx0AixAl7utJ+?=
 =?us-ascii?Q?UhRk65zC+GBFRsp+doOAA9FgBKJbquBcisfeoBTZxfX4I4ExIW8tRMJbnulN?=
 =?us-ascii?Q?++tQDP/3jCqwLcYr7SnR9gtMNtAWXtilNk/QFlzP7qmiJkLdf2JeA7JzusA0?=
 =?us-ascii?Q?7GdLRHCphARL76M8MENQ0Y7tsQMPnXmoOT1TGlJ5nrjwpjWcpxBcWl/pyG4q?=
 =?us-ascii?Q?PCnOlUwICsCOUIdXC+Lvd0nSku/C1rWzDVOwkAdPkcpkPWxpd2kpDiyvnqMD?=
 =?us-ascii?Q?1nj0mLeSW3e4t7tKdlf+xDFUgHA169jqC1xMqsahyEkl3FpYSqkGidYJklVV?=
 =?us-ascii?Q?1sztfGh2MtW1L7GzXDJUrnKf//FH23vc4uCAZXuwEyRqLnynHQEuDlYlGyWC?=
 =?us-ascii?Q?rDYi5o4fmny+nQqExQP2VdUEfcwoiywdIfDN5T8WC2mY7ZXwC6Hw83RK45ri?=
 =?us-ascii?Q?N+K5W/zH+3hKBzMX/pkiVUBUQvno0pikurcRs7kpiTaD9ckFoTH200DpSqc2?=
 =?us-ascii?Q?lJIE3m1ImPFEotsQWymPRv/f6IxX9MYoGJnyaOkSpe7LJQLNRv2OoXeKQoxX?=
 =?us-ascii?Q?81NNOx1RCuZFEDzSpei3m1dTpt/pAF/Bxo9YJgQ08jn7qXSxsdebmF9o0YgA?=
 =?us-ascii?Q?BKO8LgOUuRgKw5GP0++TaIN0s6KSuOWQoGnuRjlXHnBD2Z809HGDPw1Aq2dS?=
 =?us-ascii?Q?KWwUMlx0VaugWHQDIu0Z3tRQM0PWZnTHeqFH+n95p4VrW+EaaJuK+l0mkY92?=
 =?us-ascii?Q?jKFR/s47JHYpBI7q1zF8h0I+lwVGnGLJTVq1taQn9epyLzvF2v+GEY8LztWX?=
 =?us-ascii?Q?3v07jE6mB+m+JQP+vCbErqCQBhZ6xhtNIQj84XRXKdI8vcALV76CfBsDYHg7?=
 =?us-ascii?Q?szE4zRPdLdRiLmIhknwoNXwg6rKD7biIjqTbJQTDThy3UCYvIb37jjdptIxF?=
 =?us-ascii?Q?TUzpG8nKhsFXKF9vAru/axzU2FusPQCMYFZLnYXggdOMtmRdXU5uIlcg3Zco?=
 =?us-ascii?Q?QPk1myzb8FZSG1oj2tUYVirQfuh8CYXFnx65u4GGr7eZ?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 e56c38b6-8a8f-4a2b-36a6-08daa76f0c54
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2022 07:47:41.8118
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 hKPdIRcKvRZQJX4Kne1/mAHhdwrvLKgwbSOXvmSkpcEutB/2qbgtfUoewICDrm8rnagG8r0CEHFiLtANnypJm1YDiO8LQgQQV7aVvaH84Vmkjld9/D6rgQKwVgZClo3H
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6887
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Oct 2022 07:47:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58272

Hi Mauro,

On 10/5/22 21:37, Mauro Ziliani wrote:
> Hi all.
>=20
> I'd like to explod a tar file into subdirectory of source file.
>=20
>=20
> The recipe fetch the original source from a git repos.
>=20
> I make a tar of folder I'd like to add to the original sources.
>=20
>=20
> SRC_URI :=3D "\
>  =C2=A0=C2=A0=C2=A0 git://git.myserver.com/project.git \
>  =C2=A0=C2=A0=C2=A0 file://added_folder.tar \
> "
>=20
> # S is ${WORKDIR}/git
>=20
>=20
> Now added_folder.tar is exploded in ${WORKDIR} but I'd like to explod it=
=20
> in ${WORKDIR}/git
>=20
>=20
> There is some parameter for file:// fetcher?
>=20

Can you try ;subdir=3D parameter?

c.f.=20
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manu=
al-fetching.html#the-unpack

Cheers,
Quentin

