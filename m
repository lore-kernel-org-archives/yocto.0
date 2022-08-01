Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD557C00144
	for <webhook@archiver.kernel.org>; Mon,  1 Aug 2022 13:51:38 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.72])
 by mx.groups.io with SMTP id smtpd.web09.25126.1659361893337811896
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Aug 2022 06:51:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=EMAMEF3/;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.20.72,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kGuhWWuX+j2U651rZXCLNvQTDf/xVwpmefsMEee7UmJOUQk+wAdhpfH/jsnJdFNV4sQLETCtIn7Xd6pLSi/m3etiG5ybL+tIxAL7ltsf511Sgx1lE7e2vzQqPbt2T7/cN3erySr/9593auhyEAanPQqR+cXsqLiMnQZZqZGCUiwbFdddE1KmA3ECzMxdL8TkYXsjQaU+mp/A6RdPwAB6g3fBmYiXB1QiUCp2KM58QTlypqtfQ3Ru35uY4hmRF56L0O+7I/Oasea+ZU8xT5ouNHtBPiki5lTuerr7KxSafAXjwL2U9uawkRpryMMMYfPCizQLPbhFjUMYW+4z7lrWCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2d8jeRsSiNw2NwC19UGjEuFfHFVkK9D26cFpHTcMWQo=;
 b=izFGn0Hei2P75Y7TkXxaijMCn4ivJYFIlPqNvxu1t3ywJgNHNODDBTdt6OOEbxrGGnzsMsLfLimk74AEWrEMRvTptUGWG675C3XAgNH98fAbgA94vW6yOVa40zBG/4AIYOnpdtePJLBpOIlTXayZBqWbM31CcL2SenSO58VKJeyHUTmbNAcwklZ8yRqzp/60zFC0dehiHxVuttio4zkEkafTsxr4aR3lFe3P4s96m9BuLIVkwt/vk59VdXVxnMuuS/eJ6pErtNsfqS7kkyqRWvUh53PxWeOQJRFrrwG8dG85z+M9yBovVlNrHXmKwHhcyb9wrEmzNnFa+wUmx1C/Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2d8jeRsSiNw2NwC19UGjEuFfHFVkK9D26cFpHTcMWQo=;
 b=EMAMEF3/xiDiBZje9gCdS3DO/347yYhCz15NtBZ6xY95S/0TEt+Z8kK9ZvF9wKUyTNdrgKV1cPgVIHTs1++pN2bEL8vEtS56m4/QLIUSGbRKw9ignnQcdlV/EDluW8gSQDIzfNs69doi8hMgHFLNByoRQlkPG42/IreFqY5mE0Y=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by AS8PR04MB7525.eurprd04.prod.outlook.com (2603:10a6:20b:29b::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.15; Mon, 1 Aug
 2022 13:51:29 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::5c3:766e:66e9:8c4%9]) with mapi id 15.20.5482.014; Mon, 1 Aug 2022
 13:51:29 +0000
Message-ID: <8c7f4c6e-16c2-f8ff-ce5b-7906351ec615@theobroma-systems.com>
Date: Mon, 1 Aug 2022 15:51:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [yocto] nftables_0.7 not working
Content-Language: en-US
To: Maik Vermeulen <maik.vermeulen@lightyear.one>,
 yocto@lists.yoctoproject.org
References: 
 <CAKO9uzqsbZso--U487egNqGJ7qzFpTxG-jLP-Xcrpi+w0y-TZA@mail.gmail.com>
 <CAKO9uzoJoHreC1L7zr1mkZYF7xcGKKPnQfX1bQcCKyp2n_pDNA@mail.gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: 
 <CAKO9uzoJoHreC1L7zr1mkZYF7xcGKKPnQfX1bQcCKyp2n_pDNA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0037.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4a::21) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8c5163b4-5bb1-41bf-2619-08da73c4ef36
X-MS-TrafficTypeDiagnostic: AS8PR04MB7525:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sSSfAvZx3redSDW0riu3gAI0xAl0Q68/2+kYzzKvOj3pHMYDo9SPgRZGRJQuEkr4bH6KfkpaLJb/LdEx2vkCQ1rDim1pLyVlTVtiqTFvrHzqPRV+BI19n1VuFnyRy8MMJyGylHC/qIw6G8SLyixZfJLpzOFSBTTa3RFwcrCepYwcWqHd9WDn7EnBB6bSZuMT/90IzE/Awbe9oqDUNgDziM/dzWjDyjcBrrSVyUOtH4ddLyVOJWsow/VNa1BQ995Cm9kAMO3vgtDnSV0ieKuDG5nuMK+rQB7v/TBFJvnVlbiEOF09D5TcXEims9KM28IZyTUjqs0WuXiPreXNjw2ZeU1AAcb2k1Zl2KUn4Tayu9oNeK+iIEYnefEV4WWaY3DpOuKOe6nb9ptjdYWtc+BJXuyY9bik4OubKa8PhszFdaDiZuzcg9IU3m/vgPSbfR4+ket9Ljqwp46YLAQpjfXFoc8WTwbfdNh/wJnafFzOfhJDILKmx0s3OlOGtQrQeeHpB2y/VDbb/RSUcgvt1hntn7Qp/P2ohslLQ4epJgv0KK2pcLNSfd1USv0EzXbJT5fvyx/PJs7jwKj7zUWR9DV0hqZkqJt7Tcy1EADCOFg9ugEU7BEB8Pa1R6UyY5j2n1ZX4goqYMwUn2yJbb56ztSa0QD4H4J8TjjomxZYpcVdTMp4gdCGuFQiuaupaqSDszjAjcQapgSVrr9eqI9HTqijP0107iA9vRXiKcvQk5QuziU1sbGEudY7+6e1KCZEoR86qPVzwOZkLRwkaysvhLYpSzztkyrHP0Q/F68Cj54LqpMY4p2bU2kF8SpYBZ0jPsRytA5LueHafQHfiEVVoqZ+aw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(376002)(396003)(136003)(39840400004)(366004)(346002)(2616005)(86362001)(53546011)(6506007)(6666004)(2906002)(186003)(41300700001)(6512007)(26005)(38100700002)(83380400001)(36756003)(8936002)(5660300002)(66946007)(478600001)(8676002)(66556008)(66476007)(316002)(31686004)(6486002)(31696002)(44832011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?WmdOYTU1eTk5NHdEdmtaZWdDdUZKTVhBV0dualc5WldsVXJvbC9uWXZ5SlB6?=
 =?utf-8?B?WGRZZWEvNDJsYVIyYk0vTVBjMDZTWWRZRSswdStpNTRLNEVDV2RJdURaZTFG?=
 =?utf-8?B?d1dWcjdaR21JcHFYR3FmMFdVUGtrZVJIRFMyNWR1U2NWc05TT1hiZ1lndm50?=
 =?utf-8?B?ZDFVaEZKQWxwWFpicGxuR1cvUVozbTA3OUhXenpOS05KejNrQWdaQlV6amxs?=
 =?utf-8?B?dmZMYVlKbzk3WWRqUFo4cVZGSmFGTzhjWEZLVjBtNVNDYmN2b3ZOb1NPK2RC?=
 =?utf-8?B?T0hqUW0yd2xRak9CNGJpSlo4TC9vVlRlYXBQaWsvY1Y3cmNRWVMvamlpWG9m?=
 =?utf-8?B?cTMvSXVucytiYitJT0doSVhRd3FodHRwazFJQ3RMUVdubmQyeEpGWUtIZUlE?=
 =?utf-8?B?RXM2ZWZmZGdQa0RXR3lHVGpqSjNGcjg0SWdzNUJEbFFIRVIycERrY211c2VN?=
 =?utf-8?B?ZEZGRHduVytDcjhuQ1hodk1KUUwxTExMV2JKeHI2a0Z0UkpBYmNFQzBjd2pJ?=
 =?utf-8?B?R2hjU3hwS21zdVhPcjRXV2VWYVhsclFZUlE1aWd1ckF4Zi9oNm1rWUV4SmI3?=
 =?utf-8?B?ZGQwM0IrSHdKaXpWcWhWamU4djhUa3B0RUJvUyt0VUhHSzE2NGYwcEUrb2hM?=
 =?utf-8?B?VERzQ1JNZGJ1UE40QlhaU1ZDK0lKQ2ZWbHNxK2ZFaVlOQlIrV3p6TTdtNW5E?=
 =?utf-8?B?K0RUaFRvZGVqM0dCellaQ3Q1R20xbi9sYlBoeGhYZXBicGh6d2xtdmc0UGhL?=
 =?utf-8?B?UWowZUIwK3QyUzRHNW1iaW04SGZldGI1TzNLWWZGaC9NQnFJd2xPUHZBVjZM?=
 =?utf-8?B?VWc2eGdaUkFqdVUyam1RUkI0WnlTOThPcWtmRmM0ODRoNUJSTDVzbnA4ZVNS?=
 =?utf-8?B?cGZ2ZHlGM0RXRXlub0QzSW5vT0tTeSt3WCtaaytOSjZyVHY0RFA2WHNiTjBN?=
 =?utf-8?B?K2RKcXF1dE04ZlMxcjQ2STYvdGd1UFdvZWx6MHYxTmsybnRMQUhzcUJwYmxm?=
 =?utf-8?B?VVVwSERlTXVDN1RVUnBnVTZrcWs3ZG90aDc1cCtNenVRbERwSDFxRXpjNStp?=
 =?utf-8?B?eG5CLzU0L0xFQnhCTEZFd0FFUUoyUm01R2xLbWRVNStwVklDaVJLR3RTU0Rx?=
 =?utf-8?B?S3crWEIyNDZNMG1ERWRNNVk4THdjTTArVzhMMWRYRDA0MVRNcGtkbEJSWWY3?=
 =?utf-8?B?RWJiS1hJMDR2RjVrNGlGTjFvS0JSQnh2NHJHbXN5dkdhdnI5L3FBUVR6dWZw?=
 =?utf-8?B?VVlmNjNBT0ZsOWdOaVJjMnBWejNWa20vUzBvRGJZb3BoR0RLOFR1bzRybE5C?=
 =?utf-8?B?MlNpdHpuMlYxSEFabC9RVEJEV3lWMEdudGV6ZEM1RjdISnNCR1VDZUxVRllG?=
 =?utf-8?B?OW43TTNnU0FFSkVGdmlJeTJnTTYwZ3V3NFlXNHV0OFk2N21xTWdJK3kvb3FT?=
 =?utf-8?B?S0QyNjdBZUVldkpjZnFyYkJOcXE3cHFWVkJWZVBSQWg3ZnZ3eGZMc1M0MHJI?=
 =?utf-8?B?Z2V0RXE5TEhucEZWcGxidE1GUGtldUowTG1MWkhNcTFVcW0xRW9JM0NmVWlj?=
 =?utf-8?B?c0FJRkxBa3RVYU9HaXBWOE9LT2EyUFNyKzlINTFxL0ZDcGpNRDZsQnFGL3Zt?=
 =?utf-8?B?TGs4aWlpZEh2T1hNZHVDTGk1TXhFQXRlQXdEQ2pWMmZmQ1JRVzJFVUoyOUZT?=
 =?utf-8?B?WlV4dzEvSkRka1F5ckpvdXpmVmRCd3U0MUVsclViMHpaUE9SK2kxVUhETDg2?=
 =?utf-8?B?d3dZMXVXYXhzdmk3RVN6bE9ZSUJMK29sMENOYnFLVURtcCs3MkhMb01ndUNX?=
 =?utf-8?B?M2taUXFDNzdvK0FzNjRBMFdmMGFkY29neExkTFFWbGJDWGRyYi9sTnhkcmNN?=
 =?utf-8?B?cTY5LzZQdkE3c2p0UVNLUUxMRjVIUlkyM090UTNmektDWlZ4TVdnYWkrRmxz?=
 =?utf-8?B?RDFVUzB0K0RZSGJudEFHTW96VW9LY1BrWmZ2Y21ndktua1hBd3MwN3VtbXJE?=
 =?utf-8?B?M3Q3OUZSWDI4VUl3L1hrRDIvd3Nja0U5SHdkUm9mRVFTY0M1QlJXbmkrNnlG?=
 =?utf-8?B?cC9BQmJneGJGc1BBS1c4MG1sNVoxL3B6UHpocnVhYkhTNFNUYmhFTy9vYkls?=
 =?utf-8?B?RU9lRG5mZTVlclZFVUs5L0Fsc29TK0k4UHVMcmJabXl1K2wyQVk1QzlxVW4v?=
 =?utf-8?Q?VJHo6A+Oz6vyFf95kLWlafE=3D?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8c5163b4-5bb1-41bf-2619-08da73c4ef36
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2022 13:51:29.1215
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 ccud9jd93CdtzfHYdsGgs/0YAF844t0mX4mMNBvCk01/XHyVSOtg8hGNU8uvXKZIaf1AW1Hhv9ycHmwI2hzRmdMqZv+kZmU5VbtYJF4uk2m/laCda2D3vZhDyN04v9wJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7525
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Aug 2022 13:51:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57715

Hi Maik,

On 8/1/22 14:41, Maik Vermeulen wrote:
> Hi,
> 
> I added the following to our image recipe:
> IMAGE_INSTALL_append = " nftables"
> 
> When running that image, nftables seems to be included, but we get the
> following error:
> ~# nft
> ../../nftables-0.7/src/netlink.c:59: Unable to initialize Netlink socket:
> Protocol not supported
> 
> Furthermore, it's not showing in lsmod, and also not in modprobe
> --showconfigs.
> 
> This is the active kernel config:
> root@agent336:~# zcat /proc/config.gz | grep "CONFIG_NF_\|CONFIG_NETFILTER_"
> CONFIG_NETFILTER_ADVANCED=y
> CONFIG_NETFILTER_INGRESS=y
> # CONFIG_NETFILTER_NETLINK_ACCT is not set
> # CONFIG_NETFILTER_NETLINK_QUEUE is not set
> # CONFIG_NETFILTER_NETLINK_LOG is not set
> CONFIG_NF_CONNTRACK=m
> CONFIG_NF_LOG_COMMON=m
> # CONFIG_NF_LOG_NETDEV is not set
> # CONFIG_NF_CONNTRACK_MARK is not set
> CONFIG_NF_CONNTRACK_PROCFS=y
> CONFIG_NF_CONNTRACK_EVENTS=y
> # CONFIG_NF_CONNTRACK_TIMEOUT is not set
> # CONFIG_NF_CONNTRACK_TIMESTAMP is not set
> CONFIG_NF_CT_PROTO_DCCP=y
> CONFIG_NF_CT_PROTO_SCTP=y
> CONFIG_NF_CT_PROTO_UDPLITE=y
> # CONFIG_NF_CONNTRACK_AMANDA is not set
> # CONFIG_NF_CONNTRACK_FTP is not set
> # CONFIG_NF_CONNTRACK_H323 is not set
> # CONFIG_NF_CONNTRACK_IRC is not set
> # CONFIG_NF_CONNTRACK_NETBIOS_NS is not set
> # CONFIG_NF_CONNTRACK_SNMP is not set
> # CONFIG_NF_CONNTRACK_PPTP is not set
> # CONFIG_NF_CONNTRACK_SANE is not set
> # CONFIG_NF_CONNTRACK_SIP is not set
> # CONFIG_NF_CONNTRACK_TFTP is not set
> # CONFIG_NF_CT_NETLINK is not set
> # CONFIG_NF_CT_NETLINK_TIMEOUT is not set
> CONFIG_NF_NAT=m
> CONFIG_NF_NAT_NEEDED=y
> CONFIG_NF_NAT_PROTO_DCCP=y
> CONFIG_NF_NAT_PROTO_UDPLITE=y
> CONFIG_NF_NAT_PROTO_SCTP=y
> # CONFIG_NF_NAT_AMANDA is not set
> # CONFIG_NF_NAT_FTP is not set
> # CONFIG_NF_NAT_IRC is not set
> # CONFIG_NF_NAT_SIP is not set
> # CONFIG_NF_NAT_TFTP is not set
> # CONFIG_NF_NAT_REDIRECT is not set
> # CONFIG_NF_TABLES is not set
> CONFIG_NETFILTER_XTABLES=m
> # CONFIG_NETFILTER_XT_MARK is not set
> # CONFIG_NETFILTER_XT_CONNMARK is not set
> # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
> CONFIG_NETFILTER_XT_TARGET_CHECKSUM=m
> # CONFIG_NETFILTER_XT_TARGET_CLASSIFY is not set
> # CONFIG_NETFILTER_XT_TARGET_CONNMARK is not set
> # CONFIG_NETFILTER_XT_TARGET_DSCP is not set
> # CONFIG_NETFILTER_XT_TARGET_HL is not set
> # CONFIG_NETFILTER_XT_TARGET_HMARK is not set
> # CONFIG_NETFILTER_XT_TARGET_IDLETIMER is not set
> # CONFIG_NETFILTER_XT_TARGET_LED is not set
> CONFIG_NETFILTER_XT_TARGET_LOG=m
> # CONFIG_NETFILTER_XT_TARGET_MARK is not set
> CONFIG_NETFILTER_XT_NAT=m
> # CONFIG_NETFILTER_XT_TARGET_NETMAP is not set
> # CONFIG_NETFILTER_XT_TARGET_NFLOG is not set
> # CONFIG_NETFILTER_XT_TARGET_NFQUEUE is not set
> # CONFIG_NETFILTER_XT_TARGET_RATEEST is not set
> # CONFIG_NETFILTER_XT_TARGET_REDIRECT is not set
> # CONFIG_NETFILTER_XT_TARGET_TEE is not set
> # CONFIG_NETFILTER_XT_TARGET_TPROXY is not set
> # CONFIG_NETFILTER_XT_TARGET_TCPMSS is not set
> # CONFIG_NETFILTER_XT_TARGET_TCPOPTSTRIP is not set
> CONFIG_NETFILTER_XT_MATCH_ADDRTYPE=m
> # CONFIG_NETFILTER_XT_MATCH_BPF is not set
> # CONFIG_NETFILTER_XT_MATCH_CGROUP is not set
> # CONFIG_NETFILTER_XT_MATCH_CLUSTER is not set
> # CONFIG_NETFILTER_XT_MATCH_COMMENT is not set
> # CONFIG_NETFILTER_XT_MATCH_CONNBYTES is not set
> # CONFIG_NETFILTER_XT_MATCH_CONNLABEL is not set
> # CONFIG_NETFILTER_XT_MATCH_CONNLIMIT is not set
> # CONFIG_NETFILTER_XT_MATCH_CONNMARK is not set
> CONFIG_NETFILTER_XT_MATCH_CONNTRACK=m
> # CONFIG_NETFILTER_XT_MATCH_CPU is not set
> # CONFIG_NETFILTER_XT_MATCH_DCCP is not set
> # CONFIG_NETFILTER_XT_MATCH_DEVGROUP is not set
> # CONFIG_NETFILTER_XT_MATCH_DSCP is not set
> # CONFIG_NETFILTER_XT_MATCH_ECN is not set
> # CONFIG_NETFILTER_XT_MATCH_ESP is not set
> # CONFIG_NETFILTER_XT_MATCH_HASHLIMIT is not set
> # CONFIG_NETFILTER_XT_MATCH_HELPER is not set
> # CONFIG_NETFILTER_XT_MATCH_HL is not set
> # CONFIG_NETFILTER_XT_MATCH_IPCOMP is not set
> # CONFIG_NETFILTER_XT_MATCH_IPRANGE is not set
> # CONFIG_NETFILTER_XT_MATCH_L2TP is not set
> # CONFIG_NETFILTER_XT_MATCH_LENGTH is not set
> # CONFIG_NETFILTER_XT_MATCH_LIMIT is not set
> # CONFIG_NETFILTER_XT_MATCH_MAC is not set
> # CONFIG_NETFILTER_XT_MATCH_MARK is not set
> # CONFIG_NETFILTER_XT_MATCH_MULTIPORT is not set
> # CONFIG_NETFILTER_XT_MATCH_NFACCT is not set
> # CONFIG_NETFILTER_XT_MATCH_OWNER is not set
> # CONFIG_NETFILTER_XT_MATCH_POLICY is not set
> # CONFIG_NETFILTER_XT_MATCH_PHYSDEV is not set
> # CONFIG_NETFILTER_XT_MATCH_PKTTYPE is not set
> # CONFIG_NETFILTER_XT_MATCH_QUOTA is not set
> # CONFIG_NETFILTER_XT_MATCH_RATEEST is not set
> # CONFIG_NETFILTER_XT_MATCH_REALM is not set
> # CONFIG_NETFILTER_XT_MATCH_RECENT is not set
> # CONFIG_NETFILTER_XT_MATCH_SCTP is not set
> # CONFIG_NETFILTER_XT_MATCH_STATE is not set
> # CONFIG_NETFILTER_XT_MATCH_STATISTIC is not set
> # CONFIG_NETFILTER_XT_MATCH_STRING is not set
> # CONFIG_NETFILTER_XT_MATCH_TCPMSS is not set
> # CONFIG_NETFILTER_XT_MATCH_TIME is not set
> # CONFIG_NETFILTER_XT_MATCH_U32 is not set
> CONFIG_NF_DEFRAG_IPV4=m
> CONFIG_NF_CONNTRACK_IPV4=m
> # CONFIG_NF_SOCKET_IPV4 is not set
> # CONFIG_NF_DUP_IPV4 is not set
> # CONFIG_NF_LOG_ARP is not set
> CONFIG_NF_LOG_IPV4=m
> CONFIG_NF_REJECT_IPV4=m
> CONFIG_NF_NAT_IPV4=m
> CONFIG_NF_NAT_MASQUERADE_IPV4=m
> # CONFIG_NF_NAT_PPTP is not set
> # CONFIG_NF_NAT_H323 is not set
> CONFIG_NF_DEFRAG_IPV6=m
> CONFIG_NF_CONNTRACK_IPV6=m
> # CONFIG_NF_SOCKET_IPV6 is not set
> # CONFIG_NF_DUP_IPV6 is not set
> CONFIG_NF_REJECT_IPV6=m
> CONFIG_NF_LOG_IPV6=m
> CONFIG_NF_NAT_IPV6=m
> CONFIG_NF_NAT_MASQUERADE_IPV6=m
> 
> What am I missing? Should I enable it some other way instead of using
> IMAGE_INSTALL_append? Do I need to enable more?
> 

It seems you built many netfilter features/drivers as modules and not 
built-in in the kernel. When that is the case, you need to add the 
modules to your image because Yocto does not do it for you. Yocto splits 
each module in its own package. As a simple try, you can add the 
kernel-modules package to your image, it is a package that pulls all 
kernel module packages all at once. At least you'll know if there's 
another issue before pinpointing the exact kernel module package names 
you will want in your image (kernel-modules can be pretty big if you 
don't have a "clean" defconfig with many unnecessary drivers built as 
modules).

Cheers,
Quentin

