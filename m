Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665ACC433EF
	for <webhook@archiver.kernel.org>; Tue, 17 May 2022 08:40:21 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.44])
 by mx.groups.io with SMTP id smtpd.web10.4750.1652776814702476476
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 May 2022 01:40:17 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify"
 header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=ETTugOds;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.104.44,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F7B2rtH/I1NsXiL8ok+9lNbAqMHwcNOXTF8fPFX9yenkZLS1ULE5oRrVEPpHGdVt+nb63BtCng6uQ4nBXrxEP5f5l4HiyNQHe7w/1Tuc7GhL03LLUAzXX+bP/HebZcAms9jrSgtE7258eNWENjy5S0IDZUV946NV9Jqf8Q2EsLu8cqnjuNYjK7O0r6pb9EHxCxRW6MGVpCqbhUwam/QVAMHp6hpok1Y572gZ0SdP5XDWGfmQ9RdQ1nse9xp+tU3HYhpE4u6nvma/aXyo+7MgMZj769ut5qVjatqv9JFfPntINDfat5H4wy6mtE89FgIEF59hD46+ONzwqkBNbWS/dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fzd0sogdkLlp0QEA6/gy8RqVtVKH7pxKV+/NJLyTe3Y=;
 b=FBVw/Xt63ZJtSAjU36SQFCfeHL5kogXtypOYeQ4LcYyvt4WNBUSFNPIOEj17t3x2qL1qvqaaXs+Rmtda39i0QWJxal4TGuEYnsbVTJruBN7cF+PcMI3LyUI+Xj/C6AaQOVDO3ISpsKmUQLSv0DN59wsqpK34kht4IsmLC15cBjl4dWULbpPodVmR0/OROh8vsRrqMwQf7rMjGwi6f7wVVyVUfvRHpdZZy+G8McRQ7+NCxteypo3ryvjIeq7Jrf7BHXzUyOrsOlGinHDeynVxmRVFFi6bU4XMTRCwH2IVOjZ8NSmuNwc5cJjdv5y+zP8ky9//1QUTnr2zYD4A9XkcGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Fzd0sogdkLlp0QEA6/gy8RqVtVKH7pxKV+/NJLyTe3Y=;
 b=ETTugOds0teF2mjrMCQ6CLVAc25RoOv3FJxvwfkERAAJIVgVPKwSbXb0zQ9I+0SSmHwTswCtH34f97CPDG4etCrHQsB9IxS35w9BqO0c63qKLOHGiMm5+24XbDUVCycAxQBy4Yamy6Wp5B6tboy8RP2GPT9OKTAP5FBGnj/Hibk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by DB6PR0401MB2279.eurprd04.prod.outlook.com (2603:10a6:4:49::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.18; Tue, 17 May
 2022 08:40:11 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Tue, 17 May 2022
 08:40:11 +0000
Message-ID: <4f99d135-bbb4-417e-69f7-4c83f3ebeba3@theobroma-systems.com>
Date: Tue, 17 May 2022 10:40:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [yocto] OpenSSL 1.1.1o in next dunfell release
Content-Language: en-US
To: Daniel Karlsson <daniel.karlsson@actia.se>,
 "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
References: <e3a2ba8e2cd541eb9d39e6fb4365db77@actia.se>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <e3a2ba8e2cd541eb9d39e6fb4365db77@actia.se>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: AS9PR04CA0156.eurprd04.prod.outlook.com
 (2603:10a6:20b:48a::28) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 42be6c10-5fe8-4b4b-9b28-08da37e0dad0
X-MS-TrafficTypeDiagnostic: DB6PR0401MB2279:EE_
X-Microsoft-Antispam-PRVS: 
	<DB6PR0401MB2279C80B81AEF3952DDA2A0EC2CE9@DB6PR0401MB2279.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kLkz4q6q1UmDCtRlZkVfeDgeaWBLsNrTwavnEBSmj+InNyRgWbHl73hDltUaKoaUIvtxQLECPOmcUtx/3CXgdWJdwnXt4Rba+i0r91CK/zXtm3+UO88MUP1OsqX7JHs3CFGsADktG1Itup8FHSp4acUXv4X/WIyRkEKnmWiONQFaKzp3iHwlj/ewnV+SbFPTA6Atye3+QlkDsSNf7XO45f2m3598r82e7OnO2Z1+mu2gxglQNJTOTXZL/AApx654NbM7VHFHE5mj6cx+4vqcrltQPSdHrnwdGtNcfdRMKM+PIKO/1BkMoP7WVfDuqLWNZBLWRx2HdsPCB325WZB2HuVJjoDC9hHWerebkTQzHGiRdsNzHUPvqXEDCFEsbsuyDuSNdmXo7LXWHYWZUcfZEGftWB2HwYhVNQYlCMGFgm7KDyDkYl0d+C1RBdL27a5bRnU7jIaJa7Wzglufpqf/yXPYpCoywnAyRmHYrNXLpRVS8/fwCTqwMdPub2zsYDd3WYUEMQs/mciHvEgukgKzJHGT127fBpb6Ke0by+IWXeuAWlJbyIhcWlycya3ZlBoDeykFND7n3LMNlFq8tz9LGcePCJduuU/UeS7DmpwaXjpKCLOV9B/X5B59YOIISyqHbeQVtLO7GNdjAhYNfSpMHeQrN1QtnydmAZo7lFg/4TvkM9xFK121pCLRHfbzprRLUJ75M1SlvKYqRwiVygi8gMRw4fjGTGH+U/sokneAqNxg2/cNRpW46Vr9xI5Ax1Hi2/dPN5ENFYzcrFCeUKclGk5cxk3eF0RfKLAE28UUeeif/c4f33op1uCyAYXem152
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(508600001)(966005)(6506007)(53546011)(6486002)(83380400001)(31696002)(66476007)(110136005)(8676002)(66946007)(5660300002)(6512007)(38100700002)(2906002)(44832011)(8936002)(186003)(2616005)(36756003)(31686004)(26005)(316002)(86362001)(66556008)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?oo3In2bUu8JjixC4cnsAhi3YDvDabpsK1rZ+Bl+OU08i9TthtrdY3fr1Vywf?=
 =?us-ascii?Q?GEsGNLlLBRQjI8C813KeGt/fqSqiBPhrOzDi4uowCTWDNHB18Sea2Wf5gtw9?=
 =?us-ascii?Q?293qsPHJvsBPbLzFCiEYetVqKQfkMiFL9YNzEFt6a4jA4vFgfuQ/LaNAIHvj?=
 =?us-ascii?Q?lVh7K6g8ydUEPSiLqCj9djEOzOoN9HvNCPcFtsTG/Lb2MhTHYaT2zmat31Ay?=
 =?us-ascii?Q?BregQKW9grCMoxwp0vkbdoW+nHfAw2wW3J613v+/U7EY2JhYywSR6FTBDODY?=
 =?us-ascii?Q?LR4sVCOBs7SU3iEf6VvP9peI4hvkI+HXRLscl8AAD5J1sSGvi4AByBce3xUN?=
 =?us-ascii?Q?Aac/OW4iT8YHYAra2OK7CG6AC3WsCR0yFimx4NgU6bg1QnAZw6vWo1H5On92?=
 =?us-ascii?Q?8AnSB4UTWEYxOmV0Jq6jfizpwwrQln2+QjgC+OEA7r5MDHDecP87mkN7sULS?=
 =?us-ascii?Q?NA41Xesejv8ileAj2wiXhYcEBGUA/uRQCxxKEbzdtK7+2UuxZU+vwpawPNLh?=
 =?us-ascii?Q?mbcCQiMMmQF9+rwkz5SEimSKR9fI1Rz/5tk4yzP5O0FhCe5JDEXJgGtHnOjK?=
 =?us-ascii?Q?01sBAMgBO+yeU1SToGljClUeiTmnqG6C67I55zL+sbzYlk3jrjbg9/MYiTQn?=
 =?us-ascii?Q?MOcKwvkqUDofw+XFtAQOeDFwFz6dBPuluNAyhsc8DAMGbj9fCl84dsaZ280b?=
 =?us-ascii?Q?EIAl8vWcRt5EWjdyN4qtjnIuEsV1ZwHVwp6IXXxQ2u/83hG+I/WHp1bFr8Go?=
 =?us-ascii?Q?UiKxfROxJdBCYZj2BY+OnBQ5j9cPrYygmBMU5H42IoKwdJ7cOxieyiMsGw+r?=
 =?us-ascii?Q?sPgwf3ZfE5UQgoJgp2RX5wct8oZqFiGhthwZtlaLCnw38FDrV3C8dfOVd0Md?=
 =?us-ascii?Q?5qbF9JTxdtP/8hmzdIlZQUjsiMmDQ6tYSu4SaZhi2BxXXdTNoZ0kCRTZcrJO?=
 =?us-ascii?Q?XOnT2vBRsEa4IYrSYnkz7XHsWW0bGAGkgDoU6j1ybqNKNHnFGpj0zTvFXcIH?=
 =?us-ascii?Q?w+IE1ON5BYyfthME9h2NORI10w7zmHLeM++Ij3IPDSt4mgtva8+eX+b2i6v8?=
 =?us-ascii?Q?HcOpTEOEbsEIAv16/J+uX0cEmTyJ5DzUMUVOY8kstSVUCGNulA1EgKw+kVbh?=
 =?us-ascii?Q?SWJqK4ByGIJz4MZxHEjEFBRFW9ezD56sbLVW4TRJLaz9lcx5tkKJqz8SAfzd?=
 =?us-ascii?Q?QmS7pg8gUETBS9pLWHslPMYe8L3pfWpPL7FxqS/j64j1vKSkMV5EjzcL66Fq?=
 =?us-ascii?Q?DwBvCATmQaLzuIgjSYi9/09+u1+2+uII+k9tzIL+ZgXj/tB9behucdKq91HG?=
 =?us-ascii?Q?GMga5lchMezoU+5TvK6EcvMkYCIdO057SuMCuL0i/qmHEsk0UCykvIt4jCZe?=
 =?us-ascii?Q?ij1TD1sMEtiAEJWfSazKQ5Cw7iPJpWoHtDD1SvR5gt258qJSlMZ1Io0CcH0a?=
 =?us-ascii?Q?b23I7aWQY/FUhyTDxfzVaNAkDheTcrrBtai8+cgVqnpZMLCf+8B0gijyYy0a?=
 =?us-ascii?Q?9JHe3m8wfGJDLz0pmrtGfTSBPRPkLUL3R0qRp4yJI7UPPB/30OWuxuVbOYh3?=
 =?us-ascii?Q?pY4iUHaIZMeXdAApdgeC7vbqzM7vCX2AlN1fqkvOFv8PolBo51Mj4Sbo2PSI?=
 =?us-ascii?Q?JLTRqgoWo952YZ1F6pAgYVolkrGo6UuKw9SLSATFmMrlDim0Beeyo+zVH/Is?=
 =?us-ascii?Q?N1zdMf4ltfIHPT07zS/EHU7zCC3vGpGmkjy5wA8WoE0mXoph9nXrua2NAyx0?=
 =?us-ascii?Q?fzTnx+7g10JdZJsBnARcQJOqdK540+lGf6SybjQhE6Ep07/J2AlN?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 42be6c10-5fe8-4b4b-9b28-08da37e0dad0
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2022 08:40:11.1058
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 BkJhVbrPNk9TUDi+nwmJBdutloDQmKkPbaXV2DsLVdolzubsCwWtRdWfl3ZKFML2Jz21zPxxQJR+JRXR7RCmO7msG3c7+ng6LCt5Us7IRjmnJSYkFQufM+qDTKHCP8Q+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0401MB2279
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 May 2022 08:40:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57121

Hi Daniel,

On 5/17/22 10:29, Daniel Karlsson wrote:
> Hi,
>=20
> Our customer wants us to ship OpenSSL 1.1.1o or a later version in our ne=
xt software release so I=E2=80=99m interested to know if you plan to update=
 OpenSSL in time for YP 3.1.17?
>=20

It's a minor release with CVE fixes, this should make the recipe update=20
a candidate for Dunfell and other branches.

However, I did not see any patch on the mailing list yet for Dunfell.

If you want something to be updated, you can send a patch to the mailing=20
list. That'll make it much more likely to be included in the next=20
release. The maintenance, update and fixing of recipes, classes, etc..=20
of Yocto Project rely on contributors (we've very few people dedicated=20
full time to the project, and they only have 24h in a day :) ), so don't=20
hesitate to send a patch to us!

See=20
https://cgit.openembedded.org/openembedded-core/commit/meta/recipes-connect=
ivity/openssl?h=3Ddunfell&id=3De26bc21f09ed1631437fc990cbda86c8659d4738.=20
It can be as simple as that commit. See=20
https://docs.yoctoproject.org/dev-manual/common-tasks.html#submitting-a-cha=
nge-to-the-yocto-project=20
on how to contribute. Let us know if you need some help or guidance.

Cheers,
Quentin

