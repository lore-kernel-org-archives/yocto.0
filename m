Return-Path: <quentin.schulz@theobroma-systems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68E1E75445
	for <webhook@archiver.kernel.org>; Tue,  3 Oct 2023 10:32:18 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.42])
 by mx.groups.io with SMTP id smtpd.web11.104859.1696329136014043525
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Oct 2023 03:32:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theobroma-systems.com header.s=selector1 header.b=OHzg9ucB;
 spf=pass (domain: theobroma-systems.com, ip: 40.107.6.42, mailfrom: quentin.schulz@theobroma-systems.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSpfxdHWzK/4idZ7tXbXm1q09l0s16VvkqswVR1+hx+Jo2yOnD39NfzrnY181Xd5IVVoJcDFFMwMRs1wE5OSZz+Pb/+ArMC6JMFjBbthoHG953uGoxeWf9ftybrpuHlEdMvwQxvLHGdjH2Cx+OBo2hf6hkfIRfQR971FbhkmcyY0Og01ORjmDO1gPHnJ/pgP61STBIoY6kklUCebR63BJsCwgCNEsRhOuCrxr//xOG2+YJFKIhhU/k4H988dzTF/IlOpiTFrXDcBcIPYVasNNFyZ84DbKdVDULOv5sNqgBoOuyWKXasrutyZXaafzBiG70bDC+o+XHFrVkTUHr/hfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KyY8KMvVKksNOGoSoXyX/cJP2G5clvX4K7nThZGjek4=;
 b=iyT7VALpITW5sfXuSKQ2U/CtX/yEnV7mGQ9KZyNfSwVn46A0IW5gz6gRvqScCe6Ro1JyPDJL/Dpb+p9qQGlSXtyRgf/zcMCphCnG6YOOZeGAUsVMpfg5vcqg5UC77jDEgkLFv0Yrzmz9UaD/9Ser7TCO+tfFPQxLOqY7/ETROeRUx2cWt0OJDSJF3jnCIoi8HrbRPftjrvYQUk5ns0EiuTaHx4Jq5wneBB4SO3f0O3O50kkS3jAgtdwQ7rMNuThMOloOXLnUx48zkifXADlBRcm/I+jGOAOEAAjEA3f2Za6a1PIFbxZpqaK6jsJo52Pj8QU9q7j7Kinkbf8GVlgltQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=theobroma-systems.com; dmarc=pass action=none
 header.from=theobroma-systems.com; dkim=pass header.d=theobroma-systems.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=theobroma-systems.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KyY8KMvVKksNOGoSoXyX/cJP2G5clvX4K7nThZGjek4=;
 b=OHzg9ucBxj9yQjWEkw+zm8om0GONv0UPOVWsiCA8VXvh7jRImvC2CD215ap+idx6gme2BGovSz32ckQi3zH0zIlS3iaFOw25iY8NLjOFOn1oZM+g79w1kwYACyLplDSRdNJcOLFuC9CT1v6gvxc0BrMsoOV3Xhe3bb9+4sBKaB1Id8SIgUDvGMAEI9Hc1nyLANx3DGwycC9LiSgxPRMoYPuwuKjMq6lnC8wkEN/xaoVFJGRC4BK0AQnoXTVo3W2EOzm0YHHQTQ+nLcxClA6pkSbA8QitRuPJ9MqkeadAotTvormuAkdFakQixAzE+IbGI1x1AB8WG6hCVTcqr1Wxzw==
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=theobroma-systems.com;
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com (2603:10a6:10:2d7::10)
 by DB9PR04MB9404.eurprd04.prod.outlook.com (2603:10a6:10:368::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.26; Tue, 3 Oct
 2023 10:32:11 +0000
Received: from DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152]) by DU2PR04MB8536.eurprd04.prod.outlook.com
 ([fe80::a05e:353b:a447:8152%5]) with mapi id 15.20.6838.030; Tue, 3 Oct 2023
 10:32:11 +0000
Message-ID: <0d15a99f-549f-af9d-5f6b-e7712bbf62ff@theobroma-systems.com>
Date: Tue, 3 Oct 2023 12:32:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [yocto] [meta-rockchip][PATCH] KERNEL_DEVICETREE: 32-bit re-org
Content-Language: en-US
To: twoerner@gmail.com, yocto@lists.yoctoproject.org
References: <20231003041941.4760-1-twoerner@gmail.com>
From: Quentin Schulz <quentin.schulz@theobroma-systems.com>
In-Reply-To: <20231003041941.4760-1-twoerner@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0244.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:af::13) To DU2PR04MB8536.eurprd04.prod.outlook.com
 (2603:10a6:10:2d7::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR04MB8536:EE_|DB9PR04MB9404:EE_
X-MS-Office365-Filtering-Correlation-Id: 47daeb3d-7523-45e0-0975-08dbc3fc008a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	inO7TGvAtWU1NvPhmz48lKn5zfBJwbyxRA/p/q4HPmAt5XaxtAFlWDbk0EMmJk3qeeOHFuWb+OR7ECr0qWCdNX7ZbBuuW8NmmcE3pUr9d2ct196QpJOEFS1YkXrkU9ZvVG2WS8pa7Q3XNPY6nW3jwLNyazi75AyTntsSpSeHPfUUoz6PEvwgxEhyfDAXTmCnRI/gTFt/EaBeV9+5nZv1vedDEI0w2CtC5RoehuCNmJN+9zqf/7pB1vIbpVuAZgWp4dAMXzkrf7UYSdPEbc6M2cUJIu4CrJdawmsko9x0z5Sp365Intyci8V5r4R/mOZPSfH+6GwssA5bMrLAR5UNf3KSlz+mQw0z27nbWt3o5vlP55SlUGYNVRueO9uTCszUkvUKnE/Wewdpw8/EypKlHcWvoxjnL3++bnbQP7ZJDM/6galw4NvoeVdnbEp0Riz25RzT60qx+8LHz2+zlcWyA9e7n6zhukeJCTpps3Zey/XqcaPOxGZDP5q6LAJ7eI5CJT/ama/LkqKY9EUB47P98ZsYVJjv/kxgzDT/PNmcahcX9KsbDxRix+SikDV9vSV/KA17tTTl92gLFXozpLm4zZ/Xzsfu1qsf1MHqVeepdH/t4umNP0+KogIfGUCW/oUI/zpIZ9MQ65o0oq/33ZmGhw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR04MB8536.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(396003)(376002)(366004)(346002)(136003)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(8936002)(2906002)(4744005)(31686004)(44832011)(5660300002)(316002)(8676002)(2616005)(36756003)(41300700001)(66556008)(66946007)(66476007)(478600001)(83380400001)(6486002)(53546011)(6666004)(31696002)(38100700002)(6506007)(6512007)(86362001)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?utf-8?B?bXExTno4bFZSTUNQME1zeVhROTJsWkNlOEpRMCsxZXFDVHU3SUJrQ3VyVWs2?=
 =?utf-8?B?OHM2dzhuc2NZeHNHV2NyN3psUDVnaXo5VkVUNmNtOGNyMVcxUFgrSmNPMlFK?=
 =?utf-8?B?SjBWQU5yazJYSHFwZmc4VHNYeDhldHhhSTRjakhvRk1XY0tFOHdSTjdkd0d2?=
 =?utf-8?B?SzRuV0ZXRWcrZUNRRzBKckUzOGtQd0dCbElubHViNTVYR3M0RitPNHNhVzJF?=
 =?utf-8?B?UEhydElYNGUvUWNwNFBBWlBpODJ5UXpPalM3bkpvWnFZK3NmYTl3UzhXRjQ5?=
 =?utf-8?B?Q3BKNXNKdzNvdExZNFlIN3FVVXlzTWU5Y2FIdVQxV1ROUi82QXduTEpGbWQz?=
 =?utf-8?B?Z1pKT1hHbkxacHdITUNBZVVlMXJvZ2V2KzI2WkdSMC9WMndjcmI1VkZYckdR?=
 =?utf-8?B?SUo3WWtqZ0pMbGhrS1pKZktNVU9FNnNublpGbFpBcENwSXZ3M3JzV3JlUXdz?=
 =?utf-8?B?N3BLN3htN3hNdy9KSy9nbEU1NkZFYXNzVDFic3oxSSt5RTRoWHdQYkdpRUhY?=
 =?utf-8?B?ekJueTJMWFV0VXpHaXJLMVdScWdMVW1rQ3N4VUxlR2xTaTJDWDYwL3BkYXdN?=
 =?utf-8?B?cUVTeVhaaENvWjByMVBsT1ArV2NDU3BsSHRWQkZHMGdsNXJRLzBYNzZ2TTd2?=
 =?utf-8?B?bTR6UkNNbmxlTFBLeVdzWFY3aUJPSG9JK0hXVlk4M1M0VW9zM1hWZlBjTXhu?=
 =?utf-8?B?aTR3Q0hUbURNOUZXbEt2eTltL3p3WXhaZWFFNmt3Q2QzUm55Yk5oczhqdU40?=
 =?utf-8?B?Zjl0R093Mit3eG9mL0dkcFZWZkF5bjVNR0dWdzRhMjhMbzVlck1UTlBjdHBu?=
 =?utf-8?B?a2Q0cGwvRVNhL01PejZ6S2xWNjRQV3RFMlVwczMwTTNQV3hJcTVQREUxVkgz?=
 =?utf-8?B?L3VaTUNjdkhvV2loaGN2Vy9jSjBSWEc1UFY0OUZCWkZlSnRESEtoYVpZNXA4?=
 =?utf-8?B?TUNueHk5cjFiaFN2Rll0ZzFDTytDRWFkbnFlUUIrVHMyYVZJMk9PZHRWdEha?=
 =?utf-8?B?MFQvZGxEMEYzaktZVU5PQ0dJdVQ4eXh2UHM4MzZmT1VxQWR2SGRFcS9VN3Nk?=
 =?utf-8?B?OVhzNzNFbVRncGp1d1JHRm9mVWFyeHdhcjRJS1FGclM4dDhmZzdteDJPSWZN?=
 =?utf-8?B?SU5qanZxM3gwalVaVHNFelVJbUZIdlF5Nld4RHkyNnN5SVB3SkkwREZDaUt5?=
 =?utf-8?B?c3FWQTdSMlJXRmNDNDlaOWhaSCtFZFlRL0svV0dLN1BTY1ZyR3BweUQvd05B?=
 =?utf-8?B?VGJiSVRjdWdDSTVienh1VEZYeCtNNVgrL0M0My9vVVVnMkJKcVYrenp6SDNm?=
 =?utf-8?B?U0ZUQUIrMktOVzRHbzNCMUloeW8ySmN2MUU1M05iQkZtcXFkTHE3OWV5b3lE?=
 =?utf-8?B?dzhqbksvZnZLR0pDYnZpSE5LeXNtRGNVUWd3YXRLTzlSTFFia01HbXg4b09O?=
 =?utf-8?B?dXFLSnJSUkQ0dWNRNXZYQnl4aG1jRFlUZHpPQ2VkL3pSMzV1eGR4a2FRT1FS?=
 =?utf-8?B?THpPSFI4Q3NvWFFVeEEvS21oRWFUQ3ViMFlOUllOdHUzNUI5a2NkamNnMEVy?=
 =?utf-8?B?NUREVndsMUViaVc5SUFBQTJBZzB5M05YQzVKSTNwODRBdjdSeWdyc1ErQisz?=
 =?utf-8?B?ME1FSnhOc2ZIL0N0d0RWck1GcW5oOHJORGR0OUl0NHIxTGp4SkNPSEpIeG9X?=
 =?utf-8?B?M3d4YW5SYlpSQXErUWdUajRvRTJVSGpxM3B2NTJOai9KU0ZndEsvNWlRdEp4?=
 =?utf-8?B?c1RiTTlKSnJwZVR6cWNodTAxNXNqaUV0dEUrUU1kZTlmZWZoMVFOaXZ4WUxa?=
 =?utf-8?B?ZUxnYzVERDJBdHNuVlo0SXZiemhHQ09KS09IVW9BdC9SaXorUEZBRkk0RmUx?=
 =?utf-8?B?RG0xdkVtTHNUdnNTVGIyVkZsVE4yWjlwUUdEeS9rSGw0ZW9wWkpycG5zQ1h5?=
 =?utf-8?B?QmlQRk1yMWpwclBqczVMaWpCNGtHU1pjSVhnUzB6ZXlGTVA1WFdXV0NhNVZX?=
 =?utf-8?B?WlJOSmtnaWtKRlMrd1lxaVhJa2JMeVkvMG1Fc0dySXo0a2NxL2UwbElhSDF1?=
 =?utf-8?B?ZjVmZmF4K2M3cE9qc1hkY0ozQVZtQS9EV0tJemhtR2l4a0hKaXpoUkJKWFFS?=
 =?utf-8?B?K1JCakxEQ0MvUXgwVlg0MHpBVEUwTmwxRHlKZzgxeUV1UkpQbVdMZmZCSURm?=
 =?utf-8?B?RmIwQm1qRUs1aFFYUkZ6aDU4UFdZNzFMM0hZb21pYWJCMm5qdE1ic1ptNWJS?=
 =?utf-8?B?dytRWEYydHZEbU83L3k5NmZCRVpBPT0=?=
X-OriginatorOrg: theobroma-systems.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47daeb3d-7523-45e0-0975-08dbc3fc008a
X-MS-Exchange-CrossTenant-AuthSource: DU2PR04MB8536.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Oct 2023 10:32:11.2968
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 5e0e1b52-21b5-4e7b-83bb-514ec460677e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d7zsVWgb13gZpG98XEYe3JYhlmdsSpOPFYLP0l1fET7HSVeN19ZgY/4isjhAQBxSWqpAP5K7R0ANOyT9Cz3Riu1Dhc4cMQ4L+aQKNA1MF3Jid4W34xtHaqa9N/uMIi3j
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR04MB9404
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Oct 2023 10:32:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61216

Hi Trevor,

On 10/3/23 06:19, Trevor Woerner via lists.yoctoproject.org wrote:
> The upstream kernel reorganized the 32-bit arch/arm device-tree directory structure
> to separate out the device-trees by manufacturer (similar to the organization
> of the arch/arm64 device-trees). Update the references to 32-bit arm
> device-trees to match.
> 

Does this work with linux-yocto and linux-yocto-dev from master or do we 
need to add some logic to support both (do you want to?).

Cheers,
Quentin

