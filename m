Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D832CC433EF
	for <webhook@archiver.kernel.org>; Tue,  5 Jul 2022 15:56:29 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.78])
 by mx.groups.io with SMTP id smtpd.web09.86246.1657036578124325988
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 Jul 2022 08:56:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=pNsfq6XO;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.78,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N9+0S+EeWgw/hlZJkzdHIYNjfzH0zp0li3zRU9Sis7ejE9/4vDYU/R+/7eQa0Bcz88OoE/z4kHxiFBvni6pxJu6GDgypWvvgGJbSw5oYazYDLWd7GR4XydCeyWaYus0mhoNAwEenjdmTdAw0pqTOIjVQV/UdDCQmtOJCVSZd120Yf6c1CC0SJbNbg/nau6XVzg2dJVfD6dH6D/a5iufdogrmn6FV7VfqJCIic+bnadMRfcFumuTLbRIlrRjSV2nKLCmx4S2UjWnGlKunGKrbJTB93eacT406DSkUoSL0MZB7a4G21D+5bUI1IIUMjbQ5wfosQsaByLBV/2xIOjanrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1P95QGFcBBtCAtPOROALbp5ONTCNe3Xw42MpimJWjoA=;
 b=JITJQAQAcjwJPmjtuvbbGOoLYQsXS7mzjW/ouRQNF797iMDz/O5X/dkS86V+8WM7c0is6iEpVghJHtg6KLJlZXLtR6USKwR8j0F7jbSg99ZYvk5DUV6Una7Qj0oBgpGHskL8j6+TMgPoyJ8OgqxjtvhUsrYMABBWbv8OC4MVkGGg7OZerkQl/tPhIfRiYLnVPGMOStvKho86C5uqeoFzMoprgTxNMZjwoTq9lsPQhcSrOwcMIobzJO9kYV6CQBESYlZ/LHDOHdEzTocK9RccjQkUY50PK+81FW4yS8Mpc8H9dAcm0S7YnVN867Owk4LR/lhLdo0Hv8JgdJwUUpXcCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1P95QGFcBBtCAtPOROALbp5ONTCNe3Xw42MpimJWjoA=;
 b=pNsfq6XO6+/pwOU1wspFzx9ICyuPxmlorP5pvK2at6D4HFXC40jbW86WR7xeR2BvQR1NV7mbBUBGq2jz5eyvudz6zHmm6monKo6p6zxYxoe+lfbbfUykNQ3HfIOprQOzH9fh2chaRys99cooNLOctBemI+xlVrpklMgHmTN5LTw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by DB6PR04MB3077.eurprd04.prod.outlook.com (2603:10a6:6:8::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.21; Tue, 5 Jul 2022 15:56:15 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::cc58:11a8:839f:895f%7]) with mapi id 15.20.5395.017; Tue, 5 Jul 2022
 15:56:15 +0000
Message-ID: <33e56e11-0e57-1e48-6f68-529a2d618980@theobroma-systems.com>
Date: Tue, 5 Jul 2022 17:56:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] Unable to fetch repository from GitLab. Checksum mismatch
Content-Language: en-US
To: rashmipisal@yahoo.com, yocto@lists.yoctoproject.org
References: <umVt.1657036286562889638.nKpX@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <umVt.1657036286562889638.nKpX@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AS9PR04CA0096.eurprd04.prod.outlook.com
 (2603:10a6:20b:50e::26) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6aab6c87-1b3a-4c1c-f5ae-08da5e9ee3ec
X-MS-TrafficTypeDiagnostic: DB6PR04MB3077:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Hxk6TmvoVNEVfEaT1eFP2IhCDfsCygSxqNnYbka9N90mD7eJMuCCaiBpmcLAT9MQea5ACW7zWEznx1kBmAe7F7MMGhjIhBmQstmzn9HF3U72BmO7CFmANVKdRzHTdMrVLTd+SkSW4upzSZ7clfIA41hLkJKR+XlAfkiVKWfliK3V5I98NsFyLnynCuq+qzdG4VFZZz6hBa+yNA7OFOEkrqENwOwJO03xwDDCXfxOVEK6HH6rWIe2QsfxLL+TKAPdxTQNULnNBZ7KxHC9zIHLngTR6fh7VrqXkGcQMg3mryHJ6ndmLwhkI6mvlQAbvq3JxmUrGUxdX1cWCnROtHfdm4vCbe/hokVGX76kE3Qi2qx2KN5/4cuwWsu/8dxQjXgxdnTbNnyEtdRJVe+QsQe+5XSPKBllqAlm/DfC0gUPDSTLtxYKYSGwR++HFcF1ESVeDmR4wyWhXXXEYOnXtUsaqvvuf08z2CFYkdypv0PtYHO+LN1Xgb+0UgvvXG6EcebGQT32z+T79isb1gG8FeL0/Ci0UEermAlHWQ4nLx1GVEumsnbEBnYQNJsuuIdQ5PDq6Ud2fzRpD71Qx6Bb1o8RTHm4DFHP0AZ/HsfQ4PXoqIvtfIxGJ0zyTaI9Spn9L62EpwR56j+rXlfwmULZSJP2x7egwD7V/WzPwP0ivze546xl6F3WYtrxMXd6jhgNbG6wiOIFUg3+bY59qcsXUjJmqu3Jm27+mAG5JPZyWo6ICbksDdRIfQzhH9oVJNw7YcFLYzkzP4qHk/jKU24p5TXc0CWm5328CC8NF/bjzNn4Td50OcxbbVcNdKZQUbpSu/Rl3KlJVvW/qBsPFZkFlnS25DOYXl7Kyjab0dMp1rBHEUk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(396003)(39840400004)(366004)(136003)(346002)(376002)(31696002)(8676002)(66476007)(66556008)(66946007)(53546011)(41300700001)(86362001)(6506007)(2906002)(478600001)(83380400001)(5660300002)(8936002)(26005)(44832011)(966005)(6486002)(6512007)(2616005)(186003)(316002)(38100700002)(31686004)(36756003)(45980500001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?b2lkMmRBeExudjNYblMwUWZoSjRCMWVCRDZTdFhMZU1jZ0dvVlFBRTdKMSt1?=
 =?utf-8?B?ODIrd1RrSVVHejd6R2h2MGlEMlRIV1E5NW1WTWJWQ2Z2KzNZR25oTk9KRjIw?=
 =?utf-8?B?N2VXTENidDBmNVVGYS93amhaMVJtaDFYWGxVVzUxcGkzc0FJSGVqZ2tIelB5?=
 =?utf-8?B?R3A1aGRTb01CRGs4QTA4d2RFYXZod3J5MDhYaEt0UUdWU3REUzk3VlI2ZmtL?=
 =?utf-8?B?bGZxdGdiR3FNZmUzZ2g4eWNQTXlUd1l3VmZndzZvMllGMUNnOU9mWkVYTEJ2?=
 =?utf-8?B?UUlETVVUMS9GK2IxMElnZkIvUk40TUhaY3Y1bHNvM1dydm96OHBSeFYwVDJ6?=
 =?utf-8?B?dWZqUW5oaTJnNFA5K09rUTdkN1QyNUtlTjB0eGtpL2xYUkY4RzBvU0dYSTFp?=
 =?utf-8?B?Zi9tdkd5bFQyL25vN1ZLS2VveC9GQXBZbFdUa1dDNkNCaGtXQ1BQV09laWIw?=
 =?utf-8?B?dTd4UXBqU1kxYWF4SFJRb1NKK0V3a1U1TWhPM0FLVVZCSi9jTUJsckJrYStL?=
 =?utf-8?B?STkwSis2Ym9BYzhkWUhYVnJ5R1hUWGFuVmttOFBZUlVyL1NEaUJ0TmMrU1hh?=
 =?utf-8?B?UithbWE5SWdqN3R3QmU0NjBaUjRCTUpsSTVadHJkMkJuRlJOck5CZUlIYkNi?=
 =?utf-8?B?cXF1VjNjQXd2UU93bFVoNnkzS1pxWGx3ZWR1by9oWThBZUhTZGtucEN5UW9q?=
 =?utf-8?B?RmhQZW5uT2sxd3dkSUNOckpOSDR2TzNVODNxaGpOS0laaktLYmdrbjB4NlJ2?=
 =?utf-8?B?aU1UR29KdmVHTlBMQWtKTEpZRk53bkNnblhwYThlTkw5cEdzbzBhMmEwZWUx?=
 =?utf-8?B?bXBCNG42bG11VWtXSGRaVmhodFBlM3lHdkljRnpGWFljbDd0NGd2SmhOSnk1?=
 =?utf-8?B?WFg3VXJydFdyQnptREhOeXpNNW9DdEFSejBKdnJRcUI0TVZXYU9ZcTByUGZD?=
 =?utf-8?B?Zk9iK3J3WFowaFNPSUd4Uk9aQXBRc0ZtaHBKVTFsZkgySEJRb1RJZUJXWDhM?=
 =?utf-8?B?a3FwLzFSZ2E5WWFybzZBM3Z4M1RtZkIzRmtrc1g0OW5JdjFob2VEVEdpdXh3?=
 =?utf-8?B?eWU5d1BMeTFJYUJ3K3VKSDNwSXpzRy9mN2IxMkxZcElzWVNCVVZYWStXRnhm?=
 =?utf-8?B?TEQwVHVWeTJPbUQ1U1orSi9oU1dydExEMHpwdDJWanROM2hPYjJwaTZ3QlRC?=
 =?utf-8?B?VkJFanRCdGZzMlBFZDFsUDRpbG9vWmVSbjhaRkE0NWx4SW5CZktGZXV0ZjNn?=
 =?utf-8?B?bG1FQndqOE9ZVU56dVZmbHlJUURaaHV2bFpGWmVjdnhpY1h1d2daTlAvNGxx?=
 =?utf-8?B?aEg1RGd2bURxNEdSOUZ6N1ZhQWNpeFBMTkY5dEtMWXkrUThNK2ZSQm8wOGc4?=
 =?utf-8?B?Sml6ZjVTZjA2RHBVa05sVk9DMWFnLzJmZFpVS0x5RXdwOFZiUE5wMU84ZXd6?=
 =?utf-8?B?OEZ4YzllT0VZMnVwOXdKWWlHY1c3M2FlRUJSMGw5NlEreWNRcTRFakJXcGJZ?=
 =?utf-8?B?QkJjOGtKVTZaRTJIaG1MYzM5RWpScHpseTFnZ0FPOE1HcjNuZ0hWOHlkT1Vy?=
 =?utf-8?B?cUxYNk1vQ2g0dTN6ZzAvNkc1QlNqT083ekJ3UzN2RVNONFlEdXVTUzRITVND?=
 =?utf-8?B?VkhOeVZKWCsybk43b1J0QnFEVGZLbkJTSXcrSUk0L3ZFbVUrRDVORU8xQ0ho?=
 =?utf-8?B?UFNkR0k3L2llUTZydUxkcHE2ZjJzMVllWDBKaE1qV0VvbnBSNWxEY2ZHUWJP?=
 =?utf-8?B?TExFNHl0N1d0RERDRHJxeUNVT1IvLytOZE4xTVJ2dDZYdlNjdVZaVCsyMUtl?=
 =?utf-8?B?bmtHTVluNjhqUkFLYTVvSDk0Vk1ySUYyd0VIS3prLzMwNU0wb1AyLzZKRVd1?=
 =?utf-8?B?K0U2eVVHbzFBMGR4NzBUOWlFUnlxTVVpOC9XN25TSDg4WXlaaVlERWZGUlkr?=
 =?utf-8?B?Um1ZVGZsZUFCYUFRRzdiYjd1WlZZaDQvUisyaW9jVndHRGlwZlVlb0oybFpz?=
 =?utf-8?B?bmFGZmtYMC9wNSt3S3ZjN0JtTWRCQlRRM1d6aGFoa1NSMXRPRnp5Z0FnMHEv?=
 =?utf-8?B?cmNuSFB1SE40a1VYM3VXQWtBSnptdkJPSWdybytaTnY4MEJ3d2RVSWdqWE9U?=
 =?utf-8?B?dHlnQlhJNnduZStHYk11L3NaelBWYmRPMCtnREhyTWdsRkNyVWFrVG1uM1Mv?=
 =?utf-8?Q?aUYj0SkkbMblDwmvZOslzNk=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6aab6c87-1b3a-4c1c-f5ae-08da5e9ee3ec
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 15:56:14.9866
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 /RGs0sTgSYXOH/haHgmDfk3+/68z7kUdySsOTldn2mIdhJJCSEnjGWWDlQQWe1Cf1/Z87N327gm7i6XMHzQtIczXI0PA4wf1nHd4626kZgV2ca5+b1kW0UQASMdGC5he
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR04MB3077
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Jul 2022 15:56:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57457

Hi Rashmi,

You only need to add ;protocol=https to your SRC_URI which starts with 
git://.

git:// in SRC_URI is NOT the protocol used to download the sources, it 
is the way Bitbake knows which fetcher to use (in that case, the git 
fetcher). If you replace it with http, it's going to be the HTTP 
fetcher, which uses curl. It is not what you want to use for git repos.

c.f. 
https://docs.yoctoproject.org/bitbake/bitbake-user-manual/bitbake-user-manual-fetching.html#git-fetcher-git

Hope this helps,
Cheers,
Quentin

On 7/5/22 17:51, rashmi pisal via lists.yoctoproject.org wrote:
> Hello,
> 
> I am building a software image and it fails when fetching a repository form GitLab. https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_ajstarks_openvg&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=kJKsWKz_K582lp2OiBXmm-8OF2OXSN90rZSBapaIU84&e=
> 
> Initially I was using git:// protocol to fetch the files but due to the GItLab ended support of git:// I am using https:// protocol. I am getting following error. Any help is appreciated. Thank you.
> 
> ==================================================================
> NOTE: Running task 2097 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/meta-openembedded/meta-oe/recipes-graphics/gphoto2/libgphoto2_2.5.8.bb:do_patch)
> NOTE: recipe libgphoto2-2.5.8-r0: task do_patch: Started
> NOTE: recipe libgphoto2-2.5.8-r0: task do_patch: Succeeded
> NOTE: Running task 2098 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/meta-openembedded/meta-oe/recipes-support/glog/glog_0.3.4.bb:do_patch)
> NOTE: recipe glog-0.3.4-r0: task do_patch: Started
> NOTE: recipe glog-0.3.4-r0: task do_patch: Succeeded
> NOTE: Running task 2099 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/meta/recipes-devtools/perl/perl_5.24.1.bb:do_packagedata)
> NOTE: recipe perl-5.24.1-r0: task do_packagedata: Started
> NOTE: recipe perl-5.24.1-r0: task do_packagedata: Succeeded
> NOTE: Running task 2100 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/meta-rebound/recipes-bsp/openvg/openvg.bb:do_fetch)
> NOTE: recipe openvg-1.0-r0: task do_fetch: Started
> WARNING: openvg-1.0-r0 do_fetch: Checksum mismatch for local file /var/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg
> Cleaning and trying again.
> WARNING: openvg-1.0-r0 do_fetch: Renaming /var/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg to /var/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg_bad-checksum_ddfeecef70433040e18ee9e68481e7f3
> WARNING: openvg-1.0-r0 do_fetch: Checksum failure encountered with download of https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_ajstarks_openvg&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=kJKsWKz_K582lp2OiBXmm-8OF2OXSN90rZSBapaIU84&e=  - will attempt other sources if available
> ERROR: openvg-1.0-r0 do_fetch: Fetcher failure for URL: 'https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_ajstarks_openvg&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=kJKsWKz_K582lp2OiBXmm-8OF2OXSN90rZSBapaIU84&e= '. Checksum mismatch!
> File: '/var/lib/jenkins/workspace/yocto-rebound/build/downloads/openvg' has md5 checksum ddfeecef70433040e18ee9e68481e7f3 when a8b34f242afbf3cac74fc7d34a496b24 was expected
> If this change is expected (e.g. you have upgraded to a new version without updating the checksums) then you can use these lines within the recipe:
> SRC_URI[md5sum] = "ddfeecef70433040e18ee9e68481e7f3"
> SRC_URI[sha256sum] = "7c67772c69b23d5b4cd298c7ddbf02938c3d11de04747c3243435e1463169669"
> Otherwise you should retry the download and/or check with upstream to determine if the file has become corrupted or otherwise unexpectedly modified.
> 
> ERROR: openvg-1.0-r0 do_fetch: Fetcher failure for URL: 'https://urldefense.proofpoint.com/v2/url?u=https-3A__github.com_ajstarks_openvg&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=kJKsWKz_K582lp2OiBXmm-8OF2OXSN90rZSBapaIU84&e= '. Unable to fetch URL from any source.
> ERROR: openvg-1.0-r0 do_fetch: Function failed: base_do_fetch
> ERROR: Logfile of failure stored in: /var/lib/jenkins/workspace/yocto-rebound/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/openvg/1.0-r0/temp/log.do_fetch.30930
> NOTE: recipe openvg-1.0-r0: task do_fetch: Failed
> ERROR: Task (/var/lib/jenkins/workspace/yocto-rebound/meta-rebound/recipes-bsp/openvg/openvg.bb:do_fetch) failed with exit code '1'
> NOTE: Running task 2101 of 5013 (/var/lib/jenkins/workspace/yocto-rebound/meta-gplv2/recipes-extended/gawk/gawk_3.1.5.bb:do_prepare_recipe_sysroot)
> NOTE: recipe gawk-3.1.5-r2: task do_prepare_recipe_sysroot: Started
> NOTE: recipe gawk-3.1.5-r2: task do_prepare_recipe_sysroot: Succeeded
> NOTE: recipe opencv-3.3+gitAUTOINC+87c27a074d_2a9d1b22ed_a62e20676a_34e4206aef_fccf7cd6a4-r0: task do_fetch: Succeeded
> NOTE: Tasks Summary: Attempted 2101 tasks of which 0 didn't need to be rerun and 1 failed.
> ====================================================================================
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57456): https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_g_yocto_message_57456&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=aiy2liQy8V0E54f0u0J9akaQ-NaVMPXg8DU7h-wYdME&e=
> Mute This Topic: https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_mt_92187673_6293953&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=ss4rCycim4dMwzxGO8iJtHaJO4Xp48AcfJR1y8wCLes&e=
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.proofpoint.com/v2/url?u=https-3A__lists.yoctoproject.org_g_yocto_unsub&d=DwIFaQ&c=_sEr5x9kUWhuk4_nFwjJtA&r=LYjLexDn7rXIzVmkNPvw5ymA1XTSqHGq8yBP6m6qZZ4njZguQhZhkI_-172IIy1t&m=Uy8eY6eBlqV_AsuEY-zJDusZsvsTvDx2FOD4Nhn0s-1R6JDqU0aLQCXt1Sje117Y&s=8zuU9VVW0HPYB502lx6SL7lcHAkKaLbUSgkqz_we0tM&e=  [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

