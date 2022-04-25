Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3EF7C55191
	for <webhook@archiver.kernel.org>; Mon, 25 Apr 2022 19:26:13 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.65])
 by mx.groups.io with SMTP id smtpd.web11.26895.1650876752092759325
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Apr 2022 01:52:34 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=iwZvWJ7m;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.5.65,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7b2fdq3AMaEUau/VKUKdmDLH5V2zK+n3Z/uAVGlY5CmDZWZucCuhV3iHTJvJoZFJszgm7ymFRZVCws3m0FXZNWTk3DAn/Am7diUXU0ksnuMCqNo5bDbA9lKa9V7OAEKuQdTbkQvRooiIOqJx+0TfNCfno+W83Q5B2j8dAYA+R6+wHudvDu3LPZD6F6RfWM5ngMq7fs1c0uq40dPUJgfHmGjudczGEAfzgeBOi/Ao7V04ymzpMoA6IsOEnWYoD8lnF6Wt3TZEaRxHhKE//7qpw2ydxBJV0k+eT6ccFRqSrV3Ia2q3Dgu566HJTRAqQk0s1FsLY42laFRYUwtCzLe5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GtwNJr6RCCKCVM69tqtbAloNTc09h2VqWyILO7RDps4=;
 b=KGj+Jw949baVWx7qr3wyvHydCjbobWPVQrxEp/9rAjQhCsgceqsu+/hOl6D7sId/AsnAKLEWypgOBphUqL+4d8YgjTTDedLWiA/hpotUUleD65Y+/IinJxXSD0n+Qqj0IXtI+Vr3N/4M9tqfC/9ZLzo1S4MBHzjxlCRJ8pN2tMbCaoQU5HKgUEl59CvYC+xUWb2MXceDPqy7muc/rNW1NoWhZyvzTA8EeFqVJDJvC8TLkBUYyygW8I4UacDyfUvqJyfJiEuzLZbmyFAaBOGQM6epZuSjjSvKUcVTzoFndiQQ9elR+wSaOQGAXJl3ZmIibLEre1ytbRQDUIkOPT9+6g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GtwNJr6RCCKCVM69tqtbAloNTc09h2VqWyILO7RDps4=;
 b=iwZvWJ7m+9l0HpjHocU6KhbEpDkOoRDnruSW4BiwJIwYua4YTUyMW3ZAjvcIBEvl9wBnnPfVKMUjS3HeTedDn6fm6ABZ1Q/HZkN+egOgcKqpgRAspE20+KGlfXdElVp+RZLJgPmS8UWTEK8rBFx+0RrGRsXGDfkgKXhvtoMkyqk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AM0PR04MB5969.eurprd04.prod.outlook.com (2603:10a6:208:113::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.21; Mon, 25 Apr
 2022 08:52:28 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e448:c9d3:fa5b:2979]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e448:c9d3:fa5b:2979%4]) with mapi id 15.20.5186.014; Mon, 25 Apr 2022
 08:52:28 +0000
Message-ID: <f301f1da-7826-684c-d3b6-8e1e1f639877@theobroma-systems.com>
Date: Mon, 25 Apr 2022 10:52:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper v8] Add a banner on the
 old documentation docs.
Content-Language: en-US
To: Ross Burton <ross.burton@arm.com>,
 "abongwabonalais@gmail.com" <abongwabonalais@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <20220423214039.29457-1-abongwabonalais@gmail.com>
 <2A4FB498-1DEA-4080-995C-1F11E8B13796@arm.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <2A4FB498-1DEA-4080-995C-1F11E8B13796@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: VI1PR08CA0259.eurprd08.prod.outlook.com
 (2603:10a6:803:dc::32) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a1237062-e65a-4802-dc9b-08da2698eccd
X-MS-TrafficTypeDiagnostic: AM0PR04MB5969:EE_
X-Microsoft-Antispam-PRVS: 
	<AM0PR04MB5969302620BF2BA910F6D568C2F89@AM0PR04MB5969.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+DvCsI502BCKRCwfiEV5JrsE90ifwUWY9SOXC2SCDeqZgWzQtQf4p3HeyHzHoI9NqeNhoBhFY0rsQY+Lb6RVDsM/RaWklQxGT3arqbBhW0e1gzEmQ/1WgxoBZjwYgn/7AIuF5I+UCUcLPrw1/nGVc22D9P+tC3xrlM6kOEiRR1K6h5RHw2DI782CQNPrTq50PcQ2RwErx0kecFJjm02dS4Lxo39/mwv79sH0pC4BIozqSAuL8FwWbpnomA3zBB/10uxHNpm5WbF+QaX4vfXPpiQ3rAUASfyrfBrrrzXbCSq1zFgQYgvsBzVvpBPeydig0X18mEumgQeWEWuVEGqc8dl6xLBrdNb5/k6qM4jinkw8iBrdOPznPrjo5hHgiQ+rDe2FQ87R3q2hJHyJNm+oAwrUofiL9WLFHucbGhriD6WErGMU89SNXyb3UrXMhZ78loZ/9o9+Rsgz8wNH4LYAEl4ZIqZDBnw7liOeQ4oVvdBcY2He+j3wp+FKovNPTYDlJ2vCATLZw1jnxiRX+qamqyxWuKtcQo1J2zamo++8NxgXGG5qaOopYDjJqBCBcj/dPjQADXU0GjRluMNGNSSxQSEc0nUuP2hIt8BRwvnj7Jy2MABw3iWmPbD1IIJcazV+gn+6iW4r5KgfK1hCunUOS/BOBSEkJDVREW1yUTyXJln77Pdhigd0seJBbxMYl+vtYEMTlQuE720TkKXjCqoxgmW+jMduLiR8yNJP2XF7iWYRO1b3QMrmZnNuLqgPQOtwLwAu5BR8MQaz3ueaExenEEbqawJWSCB2Qcj7Av3ITfbq7bKmEz9pSbix9wAWOmJ7
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(316002)(508600001)(38100700002)(44832011)(6512007)(6486002)(31696002)(5660300002)(83380400001)(36756003)(86362001)(53546011)(8936002)(31686004)(2616005)(2906002)(66476007)(66556008)(8676002)(4326008)(6666004)(6506007)(166002)(186003)(110136005)(66946007)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0fvsp8nhc7IrIMmOSe0iXQ6Mtv4xGr51IpLXD9spkbovabWlrEwyADm7eDva?=
 =?us-ascii?Q?0MvdeunCq6UvVWm/OINOmWDindx+ypDA3XkGyyM/7NFXmqcuQPdKqsrGuTc5?=
 =?us-ascii?Q?46OWEgnC5yBO4U74+v7xl2qkOYea8QimK3VOVC5WsINJ6EnlZ0Iuf+9Am8w/?=
 =?us-ascii?Q?NLnTwYDlA/jBtswq5lUtbplBmO/vk5gfsLLZvOXfLQsyAODKAAS/kc1056wL?=
 =?us-ascii?Q?59v6+dJLPAZoNIxQ7FtWK9ZM6Njq9H/+KxOR/9vy5NfwQTVumVFL7BoWF1AQ?=
 =?us-ascii?Q?r22z7DuJT9rlCnOiZvYHdLO0mkirjmU1+puUgNHWrZUeKnNkvYpcYCY4nJuY?=
 =?us-ascii?Q?VOb5hMpgdxQzAO8UmKrKBKKrQouFgTab3SJtcpygqIU8PirIcXFQHCEJc76u?=
 =?us-ascii?Q?VSiL43y5cXD4h5ll2pZrG6fmE4HEY+HuQx7Z9gEOCN59dAzaXs/sG6TmVvmL?=
 =?us-ascii?Q?vMopTWP0SmbNx6SLBBntaBbzbLWOkONvAxqUhhNlDXlR6QUwUoU68PxVOZeE?=
 =?us-ascii?Q?jiWx8P08C8dtmL2HVYf7U6NwrU+nYhaO3agElr0WHMP7vOeSk6I2iqua4K0w?=
 =?us-ascii?Q?muNTHYQ59fVC6vuuos8YUDfPga/WhatRWNgT9C05WE2PjA7ER1DN5ze6E1U4?=
 =?us-ascii?Q?+Ao9Vr/Yh21JsszV5kA+R+WesSiSTDT0+Sny+cRo90DIwe/XLSOx0NDSWVMR?=
 =?us-ascii?Q?EQWkmZ42HEPL5x+N5xRy8jYQVFgAANOMIJz1DNAWLbi9GKqbdIZuS1ndLURt?=
 =?us-ascii?Q?zrGB0cR2/JoIUL5J0cll+MtJD3ptJ5ijOkqMjyBKfTQwz79W0EMZefKqD0se?=
 =?us-ascii?Q?2c9DlD920BSous5EY6hTlJbQgG+p0HlMmpSA/5G8gwHvEAS8Uluf+Tvik6xI?=
 =?us-ascii?Q?z1+eU2xeXUBkp5cPgaNqa693Li6FFCgdMRBiwmsKveQz4+86RsNp4Rpihq7i?=
 =?us-ascii?Q?mu3uE9bqknrb04scf9DEt9EqPpFh2Js9CdDVJoEgfc6PcqtP9R/QShpy92wF?=
 =?us-ascii?Q?8bOJ9dMx7ii/LIrtiEz1MrfipenZj5mGLySrjHCzksJ0QbYXA0UpyBpCvM6Z?=
 =?us-ascii?Q?kVT2XpwfZDi/rd7YszBVta061qtjwPA45eLBifg98X+p422f1/NvnBGdKqi2?=
 =?us-ascii?Q?76CyMLBU+eJaWCkTkvcgU/z6W1TFIXaIVlNEKuShyxT6331K6Cuo3BP+n5xz?=
 =?us-ascii?Q?h6sYRpD8icnBs6oHTnrOvPova0LXjqc0cAHeZWFX1Eg3iZZv3BRbIjri2kKb?=
 =?us-ascii?Q?DEKHJpFZWAqgpokTPp71NiP6+ZAEka5JmdhgjvCofDsuJQO8SpXXGwIsCLFe?=
 =?us-ascii?Q?9GZrk3bKG2sRbQ8Sp80a6HxHDP1rhBAJswbSqOHHr9Q6430JiQcHEQic2tli?=
 =?us-ascii?Q?KKWJeocDR4hzPlWspV16AZpSJHoVvQYWDp6VWKwBUBgNKfnFaWCUz6is067i?=
 =?us-ascii?Q?ETF1zMQknI+25QJT+kf0RQrhrFDgnWE4ZSr5GJeBJuntNNWoZMthRIPFQJuF?=
 =?us-ascii?Q?Zp4+F6+RdGoacYzEYZM8UV05p0v/w9XPerFoA2MySArJU+v5jS5GT836dm+W?=
 =?us-ascii?Q?HNF7JUYtEuwA1XGaGp20vlPL/BO0ooL3Ni9uD9SbXQbApcZqdkLcx2zqH4Yu?=
 =?us-ascii?Q?M3d1BPR6soZ/Nk5QpaU0HSlLGuVOSDXtePilegKa85V8o4pfmvnMvCltEj1T?=
 =?us-ascii?Q?NA3zj709MQ2dKiwjAE3hG7a2xIM5c2xR4TO0zSP/lV1exnw9Tuvoat+7++LB?=
 =?us-ascii?Q?n28lGQTwcma2Cb/1bDRIe4U4CntQCrkRezAD4lTGQDPiPyPA+MpSebLNzn7e?=
X-MS-Exchange-AntiSpam-MessageData-1: HnzbUXFeq1iNmoggP1zuFPzzu5lBpb9H7oc=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a1237062-e65a-4802-dc9b-08da2698eccd
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2022 08:52:28.0220
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 szLGnH4eYhRICHRYZKYKhU0RFF4HJ8ciAwk9hyi44zdSiMsNOkvMnfRsBW/RViP5ZDClSBu/3kQot6P/BZ4akTckX7oM9ZBLHDCZwuZizsHFTilU8y5ZeK6sjwjxFTFE
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5969
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Apr 2022 19:26:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56876

Hi Ross,

On 4/25/22 10:43, Ross Burton wrote:
>> +from logging import root
>> +import os
>> +import re
>=20
> The logging and re imports are unused, remove these.
>=20
>> +
>> +
>> +html_content =3D '''
>> +<div id=3D"outdated-warning">This document is outdated, you should sele=
ct the <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__do=
cs.yoctoproject.org_&amp;d=3DDwMGaQ&amp;c=3D_sEr5x9kUWhuk4_nFwjJtA&amp;r=3D=
LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&amp;m=3D3U=
gg7DXNtg5Jzu8oqGU6VwYTbn01QrCiaWSKjVlkEVKyVfiZZnaOgnCbTgFNdaTg&amp;s=3DNpHh=
dUuDWyKDzpnNui16Z9MijVOTPcXWU2zzwvY-aWw&amp;e=3D">latest release version</a=
> in this series.</div>
>> +<div xml:lang=3D"en" class=3D"body" lang=3D"en">
>> +'''
>> +last_div =3D '''
>> +</div>
>=20
> Add a comment explaining why you need to add a <div> wrapping the main co=
ntent.
>=20
>> +    # pattern =3D '^3.1*'
>> +    # exclude =3D re.search(pattern, dir)
>> +def loop_through_html_directories(dir):
>> +    for root, dirs, filenames in os.walk(dir, topdown=3DTrue):
>> +        # loop through all files in the directory
>> +        exclude =3D set(['3.1', '3.1.1', '3.1.2', '3.1.3'])
>=20
> Hardcoding numbers like this isn=E2=80=99t a great idea.  If the intentio=
n is to add the warning on all versions earlier than 3.2, then the regex ap=
proach that is commented out would be better.  It most likely didn=E2=80=99=
t work as regex matching isn=E2=80=99t like shell/windows matching:
>=20
> pattern =3D r=E2=80=9D^3\.1.*"
>=20
> A good solution would be to use packaging.version.parse, but that=E2=80=
=99s not a built-in module so would need to be added to the build. That can=
 wait, the regex solution should be good.
>=20

To be fair, the list of impacted versions for dunfell is finite, since=20
we're talking about old docs that aren't regenerated anymore. Dunfell=20
was migrated to Sphinx (and is thus regenerated by run-docs-build=20
script) in 3.1.5. (So I think we're missing 3.1.4 in there.)

For Dunfell, this message will ultimately be replaced with the obsolete=20
message common to all other old docs, in 2 years from now, when it's=20
obsolete.

Just to give more context, I'm not particularly pushing for anything here.

Cheers,
Quentin

