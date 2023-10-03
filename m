Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9B1E75440
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 10:18:37 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.61])
 by mx.groups.io with SMTP id smtpd.web11.104710.1696328310121648319
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 03:18:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=arzHjg6i;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.21.61, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kmqIaLOTpczhX2IUalTHzAZKo37ApCfwgcs3wJ8TbGrUXiBN/Yuy0aZhBWmjTxmx3wFrhtihpLckckSa96xFgfH9BCFRs24u57qiafdy7jVnJZaKNXKtNiQhK/z8rM4zYW5Dr/BwyjVx4P9YD9/h6uiEpbGna5TZ1r0D2RmN/u2E287oivNMqn7OYytDn+YiR6KMbvtktMfqFPm2qh4lx70OOAE6gMqryPujxVRFFoFfF+NpVSz8iX0wKGIzKVjpzBfSbzKPmay1JaxRu9i+G6eWpdQzgR8/78DIyIhA2NfsA+3uTJQ6gmz0GWKqPnsiuMnHTmexVhXen2UHK0uLXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JOgFZuuuqjat/kydM++UD/Bv61Zpfdz/u3307uTyDJc=;
 b=DGtHi+7wqAA7xzvZb33AUKS9QQybezwGPQ5nMoAWVLGBza7Zidj5GCkq9fuxDVqzaznn+4rigY/cavASzTHPzxQVuyudmj9yRvJ55feaYwopbFk54ofhyD3BYiiRXhBKqksUw2M0J8iG5y9w53Ht5T8llmZRqz7e0pq9QAUf2/rkxlbRLiis7UAED+Uqy5QvABDGGUW3z47oWk4cOnauRPRxiyLwmeV2+pVLY/6LDztZxmBnqMBsTigHjhWScIxSAp4bf9VmUMhbAiT3txHIpjb1cF1xm9hZeHc/TtxLgIg/pN4lwACOVJDkUpEs2cIeBngLujcEpkA0aOPvkLWg0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JOgFZuuuqjat/kydM++UD/Bv61Zpfdz/u3307uTyDJc=;
 b=arzHjg6iZZO2+t+MHlZzvxltXIqjDQzfCvGc4J3UYsc7Z3xFt5nRoNtGj7B3F55iiXQ9haREUnKQiyPcWVASRlTeQosyPka+ZAyHfIMhS2MO2dHFAPgVPTq0Zb6col7VOGzjUtJ/O9q2RvNQ1jwcZVE3iQxjRQU7Uw4xOwmZJqvsQCq5a/gVo3hHa6vGEd80dSnc+qnGI2JqVs2qfRccEQdOHcfqKY0yF2ZpLHBd5HNS2OvBp0PFzagffJT6mBE2PndcNqgmZjhU278THI+zzzNN6wqXAYNsngwjwgK+6XJOjUZHWc/JZKhlkKm38i3uKSWQtPxJiqwAD7urWAs9DA==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by PAXPR04MB9105.eurprd04.prod.outlook.com (2603:10a6:102:225::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 10:18:26 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 10:18:26 +0000
Message-ID: <d9f5b531-37b0-250f-1574-f2eb8db6f3c3@theobroma-systems.com>
Date: Tue, 3 Oct 2023 12:18:24 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH v2 0/4] u-boot cleanup
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231003004741.6021-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003004741.6021-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR3P281CA0056.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:4b::6) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|PAXPR04MB9105:EE_
X-MS-Office365-Filtering-Correlation-Id: ffea8f3e-330a-4b40-bb6f-08dbc3fa151b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	miwiVeMBGYwJOkEMQXOBKPNXfgXAsiEaDUsIX6VY8d7g+faJzgy6h70YfTNQ9107V2dzikpoH52EocKT9OGy4pS3VxN7PiSOQng3HXN1VwnwpxbT2G6jaNtKdj//U44GWTMUqjS6oc2r+xTt8VeeM/FYKWd7Yn43D+VJAaNQqU4FJi2uz0tV/kZdMZbyg13e4R4loSnlOwKgb0rwD8g+YtxKOiznpir/zzcoN77PZ2AM/Dfg6wUnrVMYWSxhDTZ7uwhERDL5OaHci5WSOAwTqy+4GRetUmjMV2WLlFE5Vjs7XtzcI9bUP4/eoH13NBomDX+YFfj2M6gbuK/ITJvuDrOYMPrk9c6tqVR65um0pX9jsSmMiR2vzPAvaqmOyltTEEkY/WhIyMIL8ygGpyk5PFww6GzP1QqWRTQDMo3823K/iXDl2bucEFnBWbOjQiwPCMWy3qW4GGaV0yPZJulB3+MnB2GSyqThMwO2vegNWAjzC/EJzkuM/R6F5k7wfYX845OY73sMQDGZayf/DWYz8zTEyzYYffOaJ9k4LkOfxgKfAtL77dnDEucYxZ/EGRzrnlV2LN0Pfg+BBrdImO+ltuB/Af+XXrDMxEOrmcsVT2HnmSEA01EivZClStQXXPw+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(366004)(136003)(346002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(66899024)(53546011)(8936002)(6506007)(83380400001)(44832011)(6486002)(5660300002)(8676002)(966005)(2906002)(6512007)(316002)(66476007)(66556008)(41300700001)(38100700002)(478600001)(2616005)(31696002)(66946007)(86362001)(36756003)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?VE1wNUFzZXZxRXk2cmJzQTFJakNneHZpTWgzcmthajZ0TDU0Rml0MXltMlF4?=
 =?utf-8?B?Rkw0YUpuN2ZVL29nbFNnK3pyRkNYNUNrcjlpMHdOaE82ejcwWTVML0gxWld6?=
 =?utf-8?B?ck9mRnhJZkRLZXJpc1ZWNjEyK2F4WDRJN1AydDNGY2JXMFo5TUlDRXUzNnVJ?=
 =?utf-8?B?aEpwNG5SWVVrTlNEcDZIYWJ1Vmlqb3FUU2MxKzViRHFmcDl2cG1mOFFEeWFN?=
 =?utf-8?B?bU5Tb1NpR1VmUzJlU0UwSG9qOWd4aTJFRktNalE2Z25aNnZZUko4eVBUMW95?=
 =?utf-8?B?d3g4L2RFWUFiQnJOYXllK1hrL3R6ak1WYWd0d09LS1pyejlmMDZmbWRwdU1u?=
 =?utf-8?B?bUhMbXlTQ0ZWbCtFeGxQWllpTkVhNEJRdWlPNDF0ak4rTm1yMHF6Vk1KcEdl?=
 =?utf-8?B?TmxOVXV4WDZSZG4yci9OMWd2STg3N2svTHRFMmpyYnRTOUhvdDhQTFcxV3BF?=
 =?utf-8?B?S2pRWkJ2MFlDb3FNbXllNmFjejltQVo2RE10MHpQL2hwYTMza1RHUmdaS1NR?=
 =?utf-8?B?VGN6ODhoSFdXN25mR045WFRvZWFGZ01XNDYybmNsRmtuVzBza1c1ZnZzN0t6?=
 =?utf-8?B?Z2pRemd1aDVKUnNJdHM5L2hjbUJSc2NTdmYyc2xOQVhHVXh4ck9uWUFkR0RU?=
 =?utf-8?B?dVk2T01iYWJrSEtqVHl2YjZkQ01CTGp2eG1BZytvNFRCVEUxVEJEWXRCQVJN?=
 =?utf-8?B?Z09WNXZsWkZiTlZlWGwwaDFCdVFlYUpvMlhNUXhSZVRsOXdMUFRoYVBra2Y1?=
 =?utf-8?B?dkpoczBpTS9oOCs0dmVaQ3ArdVVkNDIzcDZnSEdxdWpGU0RCZXRCK0oyWHRK?=
 =?utf-8?B?SDhnd1BIanZlRmdxSjlIaVAzYmpMSnN1ckV5RGF1bDYwQ2VTQjVrT1dlN1VY?=
 =?utf-8?B?NEkyRE5OeGsxTVd0RnorWVJiV09hekc5aFU5NmRuQ0lobXRkamplMlRrTy9h?=
 =?utf-8?B?Uk9DNGphNVFDd3NCNVN1YW5OQkJQMXV0SDNIekIyYzlTSmV0cWR0ekQ2TVhx?=
 =?utf-8?B?V0R5TnJWT0FzeUJmT0RBTks1bEI3VnRITlQ3QmwvZjJFZWIwL2lIRitMazBM?=
 =?utf-8?B?dUsyRU85RWdrTWZ4VUFndzlSM0dieXJuZXVVVldURm42SVB5bU10UnlSSWZm?=
 =?utf-8?B?Rjg4RllHV0VBNmtueXBseFl3L2RiZ1Qxalp3ZE1ZMlFIcmt6V1EvVnRFNmNp?=
 =?utf-8?B?S2czbU4yU3ljaU1oRk16Q1hKZHB2WkhiL0hERVpyYi9qaGQxRW44UlJ6V3Aw?=
 =?utf-8?B?L0U3Q294MlJzZU1FLzVXNlVDaFFMNFhOZ3BHNllVdS9iazdqd1BOYTc2c25x?=
 =?utf-8?B?NmUvNHBwaEN2aHVSOWFUSFVTNWVyVzhJTTAza04rRjNvZW1vQjVmR3U3MFRv?=
 =?utf-8?B?LzZ6UW5nRWhtTTMycWR5aUU0VFNFT0tKWnFNWm5ydlBtbndmZGFTNGZCL1lM?=
 =?utf-8?B?L1Jxc0lkVWw1L0tlQk8xeU5sVFAzdTFzRjVwRm5oenR5Zk5PcHVtS3BCT1cw?=
 =?utf-8?B?SVc3NVZXUkNZajQvTEZDL01nYWl2V1o5U25ZVlNsM1NTMjVqVVZBNEdKMjZz?=
 =?utf-8?B?ajhlN2U2VUUrTkc4cnhGSEFFNGtJWDd1VytZYkNpNWZDTnhuWXJTL1pJbm5l?=
 =?utf-8?B?Mnp2akR3RGpLNE9HVzR2akNhWHJlNDRNV0FYcHBHS2NNZDVNcWtnM01KQTRN?=
 =?utf-8?B?WUpwc3FGQlR6SWFzSlczekJ2Szc5WWE0ZGJzVFRXVFM4ZjJtdkRJdUNabEkw?=
 =?utf-8?B?RnNUbDZZQ3NNM2FhcVFLdzZUcWJBeEdMSW16RDBWMWNGOTQ2bGRUTG1RTjZ0?=
 =?utf-8?B?U3k3Mld0WngrSThzc1JjMUwvbm9nRnNzalBtZkFDQkV5TDh0TjZ1L0tvemxQ?=
 =?utf-8?B?K3ZIa2VHOEFlanZIUzIvTjRUU3RVdXBzcm9BMEczZnJtQ05GUE1LekNKYUs5?=
 =?utf-8?B?VHlOTnhZZWNIVGhHVG5DL3BSUWVmWERMdVhveUNEVXFmdWU2d3JzcHZ0V1Ja?=
 =?utf-8?B?bVJ4MGVQczhLRlJxTkQvTURjSXcvTjhYcld6bXFITHVPWmhYRTFHQzR4eW9H?=
 =?utf-8?B?TVZRb09YeUdWNUtYaEZieHlkQTB1U3hUZjZUc2l3OHVtdFBWenhIbVhCaEJE?=
 =?utf-8?B?RHM0K0lLUXNqQUNnK1ZPYXh3ajdhajZKbEpBTjdhdWx2UDh3YndGTGwzMjlP?=
 =?utf-8?B?TkdJTkx4T0Z1MGxaM0Y4UzIzeDJ4WEJLWEF1OVp5WjNWYkhKeGx1N3BRNVJI?=
 =?utf-8?B?OGU1M1I4ZTRvWkdQWW9kdVJZY213PT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffea8f3e-330a-4b40-bb6f-08dbc3fa151b
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:18:26.7403
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mNB5BUkFdrK7ZPwGoH1F6o26c70kthZnSwGEmiFrVJr1PkqYyhTwRHNB3qReIsbgwOMfM+vA/joE47SGV1ur4zxJJfYQYlur57jWxdgyDI4uvVheuXm8TFqTT67LYmOO
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR04MB9105
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 10:18:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61213

Hi Trevor,

On 10/3/23 02:47, Trevor Woerner via lists.yoctoproject.org wrote:
> The U-Boot bbappend recipe was in need of some cleanups.
> 
> v2:
> - breakup the original 1 patch into 4 to make the steps easier to
>    audit/verify.
> 
> Trevor Woerner (4):
>    u-boot cleanup: move task
>    u-boot cleanup: group dependencies
>    u-boot cleanup: group EXTRA_OEMAKE
>    u-boot cleanup: organize DEPENDS
> 

Perfect :)

Reviewed-by: Quentin Schulz <quentin.schulz@theobroma-systems.com>

Cheers,
Quentin

>   recipes-bsp/u-boot/u-boot%.bbappend | 32 ++++++++++++++---------------
>   1 file changed, 15 insertions(+), 17 deletions(-)
> 
> 
> 
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61203): https://lists.yoctoproject.org/g/yocto/message/61203
> Mute This Topic: https://lists.yoctoproject.org/mt/101725918/6293953
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [quentin.schulz@theobroma-systems.com]
> -=-=-=-=-=-=-=-=-=-=-=-
> 

