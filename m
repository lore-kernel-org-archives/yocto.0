Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 384D3C433F5
	for <webhook@archiver.kernel.org>; Wed, 11 May 2022 09:21:41 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.47])
 by mx.groups.io with SMTP id smtpd.web10.9305.1652260897807541793
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 May 2022 02:21:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cherrycloud.onmicrosoft.com
 header.s=selector2-cherrycloud-onmicrosoft-com header.b=FXGJPpcO;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.15.47,
 mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/Dvmkv5gh83SfTQDGfcNYQjSDIgmk3PzW8meuo06fG9mLxmH17V4wELztu9eJO6VojcNfEQY7NtwBCl/hSv1PD9Yq2E/KUr/WBOjHFk16lN7f+CiAv9gTqqBSbGJYTawpg8v4vm9D+jEfWQioz+Rag3YpIQmZYJs76bKUX4MrCJrR02C2AuLFDOf9BTZaYWCcKVIwF+jvpKnSnjek+TTYnwvTHt7jpTAmLgwXMKknAjiGwLcHw2rG+rGQKVtZ+ur7uW1mazP/UU/7vngp+DD8kY+kQ1jjiMKqX9hXBC0MQDcXT53koxJhXSxi1ZQn+yFYoTo9qaX8/U/ukNiwVPWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B2GevGeC3XKSPf4NRQeiM184EqT6qxJ5GR7vvbkIGsQ=;
 b=il9Pd4JiQ8o7Aul92e93QvJjwckrd67Tt6M6H+3/aJGhv/aMWU1cB/kGGsVUVJ9zKXSxcQgtZIY+QJ6kkDOO1rA++YIyXVfeGQqKHKiwbqPaHNs7Nf/7r2vTjSWJ1mXCqFw8igepTdAUePSyVes7S4cUL+JnLz36a3d9TgHclGJfp1eurAAotPXCZhfPS6EmpEgDL/2RzG7tTtZM+MlloH0H5vWldzgnL5oIXTDYA3D0x4Bfe3JIKylI3aM5FlNNLRr/oXFAyeOYAqTt6fk/qOR5swr9JHNHwcjQrOEF7HjO/Z1rK6nYyDzRTQSTLiGnz61DPZIrOWp+e4fxmQ5F+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cherrycloud.onmicrosoft.com; s=selector2-cherrycloud-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B2GevGeC3XKSPf4NRQeiM184EqT6qxJ5GR7vvbkIGsQ=;
 b=FXGJPpcO5tGRwOz5EUUXoVUEkfAZuNJmv2bluoGUnLKC9fWs96tBFjKjmk1g2TAdbn67wc8uFQhEiUR/2XN+krklclRQJSNB/5I59xwUWXIZQzEt6nVXlQX8m010hue4E/G94pDHSJDJKC5PJP+2RJUUjPgnVXibEsSOHfkNQrE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com (2603:10a6:102:2aa::7)
 by DB7PR04MB5532.eurprd04.prod.outlook.com (2603:10a6:10:88::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5250.13; Wed, 11 May
 2022 09:21:33 +0000
Received: from PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512]) by PA4PR04MB9367.eurprd04.prod.outlook.com
 ([fe80::e443:c646:c299:5512%7]) with mapi id 15.20.5227.023; Wed, 11 May 2022
 09:21:33 +0000
Message-ID: <79add4b4-ae23-9237-7d78-60cf6d817341@theobroma-systems.com>
Date: Wed, 11 May 2022 11:21:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
Subject: Re: [yocto] libmodulemd ver downgraded worrior->dunfell
Content-Language: en-US
To: yair.itzhaki@docusign.com, yocto@lists.yoctoproject.org
References: <Q9S8.1652260069660163397.KXOU@lists.yoctoproject.org>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <Q9S8.1652260069660163397.KXOU@lists.yoctoproject.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6P193CA0041.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:8e::18) To PA4PR04MB9367.eurprd04.prod.outlook.com
 (2603:10a6:102:2aa::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45903c2f-38b5-4499-b0a3-08da332fa3b8
X-MS-TrafficTypeDiagnostic: DB7PR04MB5532:EE_
X-Microsoft-Antispam-PRVS: 
	<DB7PR04MB5532A8C8296524B8C1AE56E6C2C89@DB7PR04MB5532.eurprd04.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	aeTGWQN/WtCnKGJYFs+uPtR5TPAhJZCGyycxcUnaohGbxP9WIRqVMyLRYuNy4sjhTY8cQyIRClYVSYLRwGu8QhoFQjUe1/AFzGcALzef5vVVI+hN6Y8Xe6vlrhmCQhJrcIeC5b6Bs46VB/d+50qCXawU7xpACtjroCEzq2o+CZ3Ep39EC3OWhi/7ZGLGEFVUYWQgZWpGYm1O+qo3zGarQxFE0iihdSJpN6inLmStkOLeKpdoaAAe2VvhX87/ouQAuuFnMMZn+/w3ZY65ummYjSfRRAQZONmfEdIZGbBwokFVX54MosPPjllPiGgbJX/f+Q2PgIWdSvUpEvWu8jI5P09lBIP8qgQzL8moyHxkxqehqzTP/6ig3dyhrxvtMs1UxvgKuJf1QrKEot2jpGQ3LdGa5sRONVo0i+ahDIDXWDbYNqnJtilmqBevvfSTwRYBT8l/qsap6CEHqvKwwV9jFeapSOV6O85gm/ESIraBDvYh1R07A28NRbKnU2ybSJTpkzei6cWqsrL2D9MJfWjYvw1B9hYsvGOtRxoxpnib5qyUYnsHfNiZqlERRD68Hx63HLJJp353Uin431gPgV6XbkWUBYh/Hzvb0hI9yfKk0daBMIgcwD0MEaFo+ODpOygIyRmbBXe6bEBS44kkaVQg6LhJgAHQwhwF0QbWfIDI/bIzFfsuUgpvi2loji9lwsbCv9h7cm/cHLMgGmA/6iLIi6xXURWgPVhHX28BfyQlTRbNFjvw8lAyk9xEwiNEH84QpgLWlZ52rWBxHpN8OLk+LpSmUIfkNRAGHvLSWD1y7EKFI+XHE3k3CMrQ5wxepagT
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR04MB9367.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(366004)(86362001)(31696002)(38100700002)(8676002)(2906002)(36756003)(316002)(6486002)(966005)(5660300002)(66556008)(44832011)(66476007)(66946007)(4744005)(8936002)(2616005)(26005)(508600001)(6512007)(186003)(31686004)(6506007)(6666004)(53546011)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?YlBKRTYwajFBZ2RqeE9kckN6Q3V1cSt0M3d2bUQxQVd3ejU4VFIzaXdSRWor?=
 =?utf-8?B?S0c2bTRrT1pONXR2dlovSkJQSWJjbUhQcHZCTjdUS3hkOW52UmVrcWFDQ2JL?=
 =?utf-8?B?ZGJMWlNJb2pGdjAzSUN6ZEFwcFE4WmpVZXRVL1kvZnpjRGdtZ01TaTNTeDF3?=
 =?utf-8?B?b01oSExibldId2FZbmpJN0tMYnpBeVpOYThUdHBIcm8xU0xJVnhMaDZQaFc4?=
 =?utf-8?B?NGlCUGs2VzhYRC80Z1NBajc5dzZBL1hCZFJURkFmclAyMEpzM2twRW96ZVdY?=
 =?utf-8?B?eVpSTG41bnN4bWtVR0tlZkJzUGQwcWNHQzR5OHFick9JcTFKWnBrMHVmQ2JO?=
 =?utf-8?B?ZGRRa3lRMzZRZ2NwTXd6K055Mk9VNEo2OEplREh4Vm1KWWdNWFNubWhOak5X?=
 =?utf-8?B?dTRUWnJxbThteGZpc1FWS0p2Vk9HRk9DYnBwMWRkbTd2SVd3Y2lJeW1ZYTZx?=
 =?utf-8?B?WXB6L2toTGFXODFvcnduZkFEc2ZYdDFMaVd0SVFRR2tmMk9Eb01nYlhFRmlY?=
 =?utf-8?B?NCtoZUQxZU5ScjZPNzIyZHlSY2drbUxiU2dzOTd2OVExMytETWdsbXZGOXVk?=
 =?utf-8?B?WHAzZDNpcXFHaGRPeVJhUmd2V3BqU25kUExKNEpoZFRhbStyZ1hieTFoL2dp?=
 =?utf-8?B?UVJVRnYxSWZSeTFZS0dvUXVodjlQZy82VjhoWW9SVXZJdjd3ZUJoaCtHUjZ0?=
 =?utf-8?B?dXJRTmNyZ3p1OW5oOEVCWlJuL0Rhd0loVnljTUJNWlRldHBRNUZXY1kvYVdR?=
 =?utf-8?B?dFlFbU5WTTNrOHpOY0VJUEZRMVRlczA0Y1gwZG9VbkNPWUJvOU1QTFp4Z2NV?=
 =?utf-8?B?TlVqQ1hWZVZCWDdBR3hXQ3RpVjdPY0d6MjJ1TDg1Z1ZxMVJ1eHB5ZnZTZWx0?=
 =?utf-8?B?UllkbmJEUzBXZ0xXcUoyVXpmcUYwMVVKalQ2T2dwVHBOTkRmYzA1MEFKc1Mw?=
 =?utf-8?B?dnhmdEg2U3kzRVRYbWhFeis3alJwSm9tejJHUEtWb3FJL2hJaTM0L09DSFly?=
 =?utf-8?B?Z2dXWkJrRE1uU29wUExwS0I2dk5sM2RScGkrUzcwbXFzV2d3UCtCSFlSOHpK?=
 =?utf-8?B?eVNFTjRHaVBVaVltVHdMMFlIa09TdkN6Y0JNTTZnQStnZkVDK25zK1VMWmd0?=
 =?utf-8?B?eHpHSExvanoxaklJbWtYTUVxb1VkQy9LaXJxVi9ZQm1IVjhiaktxckF1eGpy?=
 =?utf-8?B?dEZUREZ3QWExUWJYTFBXSFpFM0tUOCttcndOYmFYdVNId05NTVV6OE5JQW9O?=
 =?utf-8?B?MWJpZWwxdGVobVV3YjUwU0I0clF6bjBTbkZLWkJ2czIxek5BTWdVb1o1enJI?=
 =?utf-8?B?L0l2U3lFSjd5VzRTLzI2RWM4NWwzTndrZlZWRlJkMXBkWVNQY0VtUXd0d3RJ?=
 =?utf-8?B?djUzZjRNTzM4L21ZVC8rcGV2dnRudnRxNENuWDBPaDNVMVN5VzExUnowejZK?=
 =?utf-8?B?Q0RoT3lGRjcrQ2YzK0Q4TGZqTEhEenVyK21WSk1OMHpaYmJtTXpVNEovbGlI?=
 =?utf-8?B?MnlvL1diNHA1aVdYSDJrYzUxdHFWL2ZGbld3RE9POXE1cGlSc0pNQXNHVlJB?=
 =?utf-8?B?MkdJKzJYVGcyS1BPMXltdjNGL0xjOUROeDVUelpmQTdhd1VvKzZZaU1ocDdZ?=
 =?utf-8?B?Q1V0VDdhbFpiaFIxS3JDSlArclFXMlZSKzZYM2tBaGFOWU1mdTAzR1c4eUJW?=
 =?utf-8?B?ZUtpdlhNd1N0eUV1N1MyWEJVV3BoV3BlTWJTWDNrbWZ2RFBnR2xQQ3JITXVz?=
 =?utf-8?B?OHAzUVZ4RWpYY0VuYXZVaVN1OEhNdXVUZGx1NFg4WDF0MTd4RkNpaTF6M2I3?=
 =?utf-8?B?N0M1eWFaVXFiZURXTXlPUUJyN1NZc2MrTDA5MFBraWJieFFzRjVCSDdoMFc5?=
 =?utf-8?B?ZjZCakhzV1V2Kzh6dFBEK0pRWi95U0tTbSthdGJCR3RkbEx1cmJ0MGtBT2Z1?=
 =?utf-8?B?SklTV0haTk5nWHd1WkFyZm9pcy9YK0cwenBXUURWL2lhdCtCUjVYYm1Ea2Z1?=
 =?utf-8?B?MXBINFB6eExlMkpQTDhlQmJtZjd4bE9rWXhSdjJFTU04NGhMQUtFWGlXRXBx?=
 =?utf-8?B?dXQ1N3cvc2RzajJ0SC84TzExOWhwWVZRbi9YZjJPQ051ZWNHL2NzQnR3QmxQ?=
 =?utf-8?B?OE91NmtzN3ArWkJZM1ZWTW11ZldCMjRpT1ZDOGlBUGk3Tk9lRjBDdEIrYkNM?=
 =?utf-8?B?UXcvTk1wY1J2M00xYXN0dk9mREZaeWtOc24wNE9oTUZYbmczUVphNTArZXRX?=
 =?utf-8?B?NlpqUlF0UkFSTm5MTExrODBPYlNhNmt6WEFtV1F2UlFrcDRmblJjeG0yQ3dU?=
 =?utf-8?B?OStuWExNUERJYmFqOFRDSWNMMVJwY1d0aEtnV3BBdmhLZEROdjA4V0pKc2I4?=
 =?utf-8?Q?mnz/Upn3VadatndStu4TEpmuhyE9MrhlM1y9a?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 45903c2f-38b5-4499-b0a3-08da332fa3b8
X-MS-Exchange-CrossTenant-AuthSource: PA4PR04MB9367.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2022 09:21:33.2271
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 kP9XOohLbwJTWNQsdmh+YRpPcqw3teHQPiRHlUfDWeHDK+lEpca7e3l5fvp7mWYdkWPSHmCiyTOx9tyhMeXSq/eGpVO1YrGlyA4VtC+Ud2N/cC5/o085IXTJ0uTkgBWl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5532
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 May 2022 09:21:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57055

Hi Yair,

On 5/11/22 11:07, Yair via lists.yoctoproject.org wrote:
> When comparing Worrior and Dunfell trees, the early one uses libmodulemd ver 2.1.0, while the latter uses libmodulemd-v1 (1.8.16).
> 
> What's the reason for this downgrade?
> 

https://cgit.openembedded.org/openembedded-core/commit/meta/recipes-devtools/libmodulemd?h=dunfell&id=e0678765b1fb66df6ec37da1d32836bee2237af1
https://cgit.openembedded.org/openembedded-core/commit/meta/recipes-devtools/libmodulemd?h=dunfell&id=e5bf0814f565458c1c13d305dfc80a70a060555e

Gatesgarth and later use libmodulemd ver 2+ again,
https://cgit.openembedded.org/openembedded-core/commit/meta/recipes-devtools/libmodulemd?h=gatesgarth&id=2c518de672d8876ff96e49b498feb898a497e6a5

Feel free to just add the libmodulemd_git.bb recipe again in your own layer.

Cheers,
Quentin

