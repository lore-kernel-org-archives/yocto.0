Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14CF8C27C53
	for <webhook@archiver.kernel.org>; Wed, 12 Jun 2024 15:12:28 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.56])
 by mx.groups.io with SMTP id smtpd.web10.970.1718205144721383802
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jun 2024 08:12:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=XIrhXN2L;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=XIrhXN2L;
 spf=pass (domain: arm.com, ip: 40.107.22.56, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=SpEmlRCyCMBOpy8tsx4RDsTzRQ8SnV4TONpd6BXC8j/QwtuGbj1Woal/LTO+CvMUIf4nKr5o2N2Q05qEXqX7XUYkJPjDAUuiyOxyjMRru1+6E233BNmAK5c9C8Pb9czA4W6q4gt9d6l6NndJA9HMq3RkyXTWao1el10OR2hwNurzDFTHVgx6sddGVvFYeySMggLXbd/kEBocAcbfrqA/tXZ/mLsWLJVzKtohOZ7W7bXZm0MEoKcr0TS+1IUYJDm3abUqbHS+CaLD4KT7Z9gvaKlhX5wljX+tWdbSt9e+hagTh2EDfBkPFPlt7oM7EbtnJHTnaXHdVX2kYU0G6KieqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqJZGXHBZ0Y0EW9IMiisux8++y44K9YssHhtiFGAEbk=;
 b=CCjpbOc2vDUl829q9MZriS9Q9w2WYSuOuvW0lBPkYVQAfrFi//WM3yziqlIupmMqgPkoC8vcsAff6Ii41P2Hj+ABSGKg45WUymKVfylk+3N5+WC/PYOjr/wEp59zXnZKqImppFOxurVnQgi6ZPFiJuW5RLWYkeucN+q2Tv9HmaPlv0/Ym6pKimEFfT1dXoLcrLNS+dAQreoiuFpK3ynDnWTHkasp+7fe3SG1sd+euYUJkO3K7G0J8m3PRMiiEXP1psE4x9oUItPNb8sYG1eJk2Da3JVgUGyMes1gJcg9TAGH37E5N25ADJ+5RZyinTRxvDnwFHoKSYWFWljlr9wm5Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MqJZGXHBZ0Y0EW9IMiisux8++y44K9YssHhtiFGAEbk=;
 b=XIrhXN2L91pEMDyarNoCS/PpU0CltGCRW9EvFm1ShB8scJACjU5Fyl5HsnjIucjIppFz5biheqMfXXpAP/B8ebhtJ8N65CVPGrnkD1qE9n9uM16841ztqtCx4zRQ3lfizXkVX9FCijnF+MWpsvBX+MKdLLgnYWOHEMwhinSZYp0=
Received: from AS4P189CA0050.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:659::28)
 by VE1PR08MB5615.eurprd08.prod.outlook.com (2603:10a6:800:1b3::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20; Wed, 12 Jun
 2024 15:12:20 +0000
Received: from AM3PEPF0000A797.eurprd04.prod.outlook.com
 (2603:10a6:20b:659:cafe::ca) by AS4P189CA0050.outlook.office365.com
 (2603:10a6:20b:659::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.20 via Frontend
 Transport; Wed, 12 Jun 2024 15:12:19 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A797.mail.protection.outlook.com (10.167.16.102) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7677.15
 via Frontend Transport; Wed, 12 Jun 2024 15:12:19 +0000
Received: ("Tessian outbound 949243bb8c19:v332"); Wed, 12 Jun 2024 15:12:16 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 63d112c4b2a4a1ea
X-CR-MTA-TID: 64aa7808
Received: from 0d0f0edf437e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A6F312A3-86B3-43F7-9696-F9669135CDB4.1;
	Wed, 12 Jun 2024 15:12:10 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0d0f0edf437e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 12 Jun 2024 15:12:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VjaxUBHrUBSS+7J7lK1XcSAWRzLkYVsMxLPT0vXIRZ03Gs8EivB0Rx3D/wBcNNa4qIckUZ46E9+7U2nDUXxPmFsW1A8UcpOtqn6c53Ztqeu4rY1JHmNRsSVL3xDCDBts0O21o3htOex3JAjJ1oQNejrsXwjK42gmJP4o7RYm/JeQ3X4KN7lOF3RlRI1t7s0EEhN2tVjax2h7eDKPDwjSw9JHuJRpZl0cy6tTZy/s4UsZYZ8JMY7cdgK0Zfyb9njdNyMyVEeNolzvnJ0pNrkT1OmGQW5VKUIFxd08P/9WwRwVi2rDlMouDNzOs3v6L8OnTCMnGgA1S4MaQGvchtFrNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MqJZGXHBZ0Y0EW9IMiisux8++y44K9YssHhtiFGAEbk=;
 b=U7jW7geAkJ/OoT9EMTYobqYnRnzP4vSkRDFQF8NtxmqsPOlcXG6JzHDtYEtpWewSZ4GdOx3u2Ck+0TVzLoiZsiE2Xn60/laC+QVmXpvykoFUwPZhSxpFfbBl3AYu3qLeBuHtjHrsr/2996hxWMlhepoTaGpfFU7efvxyPK82nk5GhcickVstOEwBk3A1Dk5U/JkmtqiGLK1wkz1Q4nrsvrt1yHnbyCwfbgmW2Ba9RH4dc+Z04nSR2URby1oTlfGMQmV5XW9RntZwqQeJLg9voOTgHiHlW5YYfHWaB48SQjfFlvxkjt3mFE6X/1eTBNRVmKt1onPaw/jlwFzcmWzwuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MqJZGXHBZ0Y0EW9IMiisux8++y44K9YssHhtiFGAEbk=;
 b=XIrhXN2L91pEMDyarNoCS/PpU0CltGCRW9EvFm1ShB8scJACjU5Fyl5HsnjIucjIppFz5biheqMfXXpAP/B8ebhtJ8N65CVPGrnkD1qE9n9uM16841ztqtCx4zRQ3lfizXkVX9FCijnF+MWpsvBX+MKdLLgnYWOHEMwhinSZYp0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PR3PR08MB5722.eurprd08.prod.outlook.com (2603:10a6:102:8f::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.37; Wed, 12 Jun
 2024 15:12:07 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7633.036; Wed, 12 Jun 2024
 15:12:07 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Kaiwan N Billimoria <kaiwan.billimoria@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Recipe for using a custom Makefile with C source
Thread-Topic: [yocto] Recipe for using a custom Makefile with C source
Thread-Index: AQHavLWldDWl4j0vBki13epa7wL4SbHD+a2AgAAHG4CAABGFgIAAGFaAgAARrYA=
Date: Wed, 12 Jun 2024 15:12:07 +0000
Message-ID: <6BFEF67E-ECA5-4626-9F47-6C112D538249@arm.com>
References: 
 <CAPDLWs9n96dwiMAkVr9LXY8-64Q0ze3ER1SYs-cpuUV2hfBo+w@mail.gmail.com>
 <591DCA78-8AA3-4D14-9075-1C262B393630@arm.com>
 <CAPDLWs8pt44vmhrA=xG6i36cbDnL+A2orVFu7+z3Eox8oFj-xw@mail.gmail.com>
 <3C9C3677-6A6C-43A0-9982-68A3DE7D33CE@arm.com>
 <CAPDLWs_d1kwsSg6TLtiDUHD6E0RsJ0=WL=3mtsJ4YYrhAmerbg@mail.gmail.com>
In-Reply-To: 
 <CAPDLWs_d1kwsSg6TLtiDUHD6E0RsJ0=WL=3mtsJ4YYrhAmerbg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PR3PR08MB5722:EE_|AM3PEPF0000A797:EE_|VE1PR08MB5615:EE_
X-MS-Office365-Filtering-Correlation-Id: de2bd13c-d28a-4be4-8d67-08dc8af20d66
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230032|376007|366009|1800799017|38070700011;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?ejlXNUhKSVA2YjFKWlFJY3FTUXJkMWU4QStNK2ozRWRLYmdmTFpIaVVhTmw5?=
 =?utf-8?B?Sm81cU9pRDZEdm90TDkwSjg4RWd3ZW81SnBsQzFJbDRlMC9IM2pLUHp2S0pE?=
 =?utf-8?B?Ymp6ZXVYR016cTJDazBhQjVjeWNsbHZiZFJpdW5xUW9xZU5IQzZIZVBncnZo?=
 =?utf-8?B?d2VTcFRLTkw4Nzg0bXp5Z1c2Nmw2WHhTaEw0MjZ5MHEvaDNiWXdwUU9lWnMr?=
 =?utf-8?B?OHBjdCtpQXp3ZzBTN3l6WDhDbzRYbG51cEJlRG9NdGJJeFRuLzR0NUNUZE5E?=
 =?utf-8?B?NXNhamp4ajltVTIxcFk1QllqRGdmei9KK0d5Qy9xMDlLb1RQdFRSVllCRVJs?=
 =?utf-8?B?amc1YjlGaXhvaW5HMEc1Yk1Sd3lyemh5bnA3d1ZscVQxT3Y1d2NCb3hvNDBa?=
 =?utf-8?B?Mk95UmlyZjZHNGIwb20xekNTOW1tYWM2OVVjeHlJRU5BVVFsTWJzOVJDRFlM?=
 =?utf-8?B?Z0xLNGdWTXB5Y2k3aVVabDlsN2VPcVFOQ3dlR3gzaStWSlkrT1FhbyswQ0dJ?=
 =?utf-8?B?WFNHZnVvTXlVK21uR3J0dGEvZ0x0VmQxcjFjNVRtNWV2b2paUUR4YkxjMlI4?=
 =?utf-8?B?SlJFWmVXeEZ0WkM3ZXdGeVl0YUlKNnBNNTlUUUR0ZWxwcVdybk1JdVpXYkZh?=
 =?utf-8?B?T2RIcG5LQm9CNHMrQUxqSG9CNExtNDI3NFlIRko5L1RIanN6eTNsTHpTZ0Nw?=
 =?utf-8?B?NVhzVVgvWVpGWlN1bkc0TnN3b3VFbUN4REthQ3pHMzNzcUtXV3RSNFN2amdC?=
 =?utf-8?B?c3diM0phaCs5UWFKWHVJQjIwNjJ2YkpMMWxOZExkZUdOc2JTRFdQcElYUnVN?=
 =?utf-8?B?QVU0amJmbUhSaDVGeDFOSXZic3lSOU14RE40WnFHOXFzT1phbE1yN1hldE5k?=
 =?utf-8?B?TmVnQm53YlhlODNRRHM3MXJyYU9RbDhnUGIrYm5KRTFqL1ZLUkI4UGo2eSt0?=
 =?utf-8?B?K0NHdU9aS0Q0MkRIVG1tTWRMZWtSaHFBMVlZclovYWtmRWNFTmV0YnhsUUw4?=
 =?utf-8?B?V3A3cXR2VVN3TWIxRHAyV3ErckNZdUZ5bzNuRVdJdG4zN25ZUWhLc3ZLN2xV?=
 =?utf-8?B?Rms3UVZZZXI1S0l4ZkdiOHJHSXJMS1Q4aDdtN0xINUR5SVZORFpoQkVWNHlQ?=
 =?utf-8?B?YmIyRmxib1dEa0hMcm90cUlWcXBvbXJGOUJqYW5IR3BJTnFzVEw4WHhMclU1?=
 =?utf-8?B?YzFVZ005WnBpYTVWMyttZi8yUGRLUU5kOGEwRElIR1F3SDRNYWVoMm9KUXM1?=
 =?utf-8?B?WGYzMmV5d0VqQ1NXREdhdy8veUZjYmUyZ2dVbXd6bEFkQ0NsTEVtdWtCU1Zo?=
 =?utf-8?B?WDhtMi9HL1hhUkhJSkw1V2lxQkVrYjRMN2dqVUlmaHlHZEZvNk45QW41Yk1P?=
 =?utf-8?B?aytXK2hNR0h6RXJ0MFI0K2crN0VhWjd3MGdoby91Z3lKM00wRnZRQi9zWHIv?=
 =?utf-8?B?ZWZKSGpXQkFHRGVUTkRJYVFPQitsRVcrZjZQOExSWFhoa3hERTM1ZElvaUk0?=
 =?utf-8?B?Slc3NUk3Y0dadzRJVnBob2V5NzQ5QXM3MVZraFpnWlhLYUQzckRMWkFyMjl1?=
 =?utf-8?B?NHBaUnFNbm1CclRUOXR2cFFOWWlYTjVSNVZNWUNIa0krSTJnQVVNTTN5OWJx?=
 =?utf-8?B?eXYwWDlmWjZubnBIbG9HNml1Qmo3dGRmNzJidHFCcE91M1ZjTFo2RVcyNUVr?=
 =?utf-8?B?NkdFejIzbFY4YTNKdGFidlViQWRrbUU2a1R6V25uSW5GNTcxNGpiUkdYVml2?=
 =?utf-8?B?aFZ5dTkxdm45cGJWSEdtSnpVSDJHQkw0Z0x2NnZ6bDJXUllNSnN5YlZJMC8r?=
 =?utf-8?Q?pXQbIXTpmvcFZC4eR6n8juZZ34VpH9GDA4WE0=3D?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230032)(376007)(366009)(1800799017)(38070700011);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <662BDFC11FEF0244B68B6A76D37856E5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5722
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A797.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6a81d429-b24c-4fe9-ca7f-08dc8af206ad
X-Microsoft-Antispam: 
	BCL:0;ARA:13230032|376007|82310400019|35042699015|1800799017|36860700006;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?RVBLZ1ZJMCswUll2NFBONWFlQ1E4NUU1SnBWNGFzSTBmbFBOc3g3NUN4aVBP?=
 =?utf-8?B?NWkzY2RwSW5KWlM5RkxBRXlRaUxsNkxWRi9oSmx5ZFpTejlzUGdCZUg3ME5E?=
 =?utf-8?B?a1grVlRzY21DSXNoS3ZmalhNdG5VLzYzeGJvNlRseFhmRFNxK1JueDNSUENI?=
 =?utf-8?B?WTFmMEZmdWZkOGl6eGlubk5IZkUyWFpjVGJxMXhFS243dGRuT2Iya0RPYXlD?=
 =?utf-8?B?MkdmOGFQSWxTVGtRMWZVbnEvTlFZWmFGVGhSRHp4VFNyeHFZODRuZG91YlJ4?=
 =?utf-8?B?SGZ2YVVGVGhydFBwY0ZWSUF4c3VqbkY3Tm82bEpIdEE2cGxoUFlMNUZDNmda?=
 =?utf-8?B?U3RKR1pNdXRLMHZ0YzJ3VkxmUFo1OERRWkpNelU1eEdyL3NmYjB2Q3hjTUY2?=
 =?utf-8?B?K2dhVm4wcE1aQmNRSGxibElUQmJWWk9HTExEZXd3SGU1M0VkZjluYjRZa0dp?=
 =?utf-8?B?by9kQkZRaVhkaGtMUk93dld0NlhKZENXRGRvMlVBK2pvcHpaNk1BR3BTRk9J?=
 =?utf-8?B?L3NDMmNIbFVpUXJxeVZlVzNOMUJkbEpIaUhYemhUVWl0T3k5RmxhbnZMVmdC?=
 =?utf-8?B?a0Q0eWZUMk5IckhPbVYvMHRzYnY3aVdleUNBQzcwZ2NSY0Q2U1JKSi9nczhE?=
 =?utf-8?B?UlhwWDJPTm12T08rQ3IxSXRwYURPZEFma2czR0lRbFZVKzFrM3JhUFB1QjBI?=
 =?utf-8?B?K01jZ1RveHd4MEtoS3pyZHFBTE0zaDllemNzelpZdmxXWnp6Q3A4MVFhUEVJ?=
 =?utf-8?B?aTJiOW9pNjNSOVhPcENsbGh4UXkyaFAwZm1veDU3VFdjV1dydFFMU085NytU?=
 =?utf-8?B?OEVaVzl6Qkh1a2R1ZXZwREdQVDlJTHdtSUVmS0c2VFNaOHBoeWRYMEh5TG9m?=
 =?utf-8?B?M0lWUCtqSWZKbXJpbWdkempJMkY0UkI5MjExbzNyMEZwZGZFRWxsOGpWOHpw?=
 =?utf-8?B?QXRFNkNCaHpIU21laWY3akpudDBKeVpHckRWR3MvZHc0cWpzZ2JHUERuU2tw?=
 =?utf-8?B?VVV3aEhYMWo4RG5RZ0tQK3ViaGp4anpBMkYwK2JKMnFybWRsQzZvNmtXd2g4?=
 =?utf-8?B?RHA3aFQ0Y2xRcTJ2WHhTTDVrTXhNMnV3UkgyMGxxY0p2MFQwT0dQNWJpSEtT?=
 =?utf-8?B?eFRoQmVNSXJVZVp3cENqQTZBNjhFNVJKVW05emhqNE1ZSmhrSlVQOFB1ci95?=
 =?utf-8?B?Q280dHlWcXpOS3p0em5aVjFyMXlmOXI1K2VIdm5MSFRyRk9UNG1IVURyRjhT?=
 =?utf-8?B?WEpHaWM2cDhNSHhWcDJXcHQ4RHliYmo0VTF2ZjBZakZmY2gxSkRubGtTUjlE?=
 =?utf-8?B?dVROeW92TW16T3psdHpyay9ZNGJOVDlaV29adFNoQldGMlhNV2QyUCtybTUv?=
 =?utf-8?B?QlZ5M1d2MUFzT0I0Y3h6cDhzdEFMMFZVaFRqQUhhUXNZaTN1Y3R5QjFnTnhv?=
 =?utf-8?B?TnBBRU1lQWF6aDd0ZGNuRU9hc1RnczhDQkZ2TFFBTjFQL2Z0Yll2T2xnYUJY?=
 =?utf-8?B?NXkyN25BYmloZjhlQlltTWNNN0R0YTliNGNWTlFQVTN6NjdRWmFiTWJaSGVk?=
 =?utf-8?B?S3ZIdHgwaVZDMTFzVlFOMzB5azUxc25BYXhlUUErcHNaVUNvS0RJRDg0Z0ph?=
 =?utf-8?B?UDVVNmNzZmI1L01LRDNyWjZ0OW9BSHVqck5HTmFPNTV3TmZSZzU2VU4rejB1?=
 =?utf-8?B?NzIwdVZ6RGlJMTZqdWtTNktrak9KTk9BUUlKa1dsNVM0NlM0RC9yKzFlTlA1?=
 =?utf-8?B?TERrTmdzKzZOY1E1K2R1L1NYcWVYRndSREFvd1ZZOE1rekp1YjJBankwYStI?=
 =?utf-8?B?ejJMSmhoMFpHQk04VUExSTRpbGhJWWVGM1lLTHdaWFlodFZkbnRmU1dBbElk?=
 =?utf-8?B?RWJnUnFmczJYeXRxWDdlR3dYS3pLa0x5bnA5UXdnN2VJR3c9PQ==?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230032)(376007)(82310400019)(35042699015)(1800799017)(36860700006);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 15:12:19.0842
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: de2bd13c-d28a-4be4-8d67-08dc8af20d66
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A797.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5615
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jun 2024 15:12:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63332

T24gMTIgSnVuIDIwMjQsIGF0IDE1OjA4LCBLYWl3YW4gTiBCaWxsaW1vcmlhIDxrYWl3YW4uYmls
bGltb3JpYUBnbWFpbC5jb20+IHdyb3RlOg0KPiBPaywgZ3JlYXQsIEkgbm93IGV4cG9ydGVkIGl0
Li4NCj4gQW5kIHllcywgaXQgX2RpZF8gYmVjb21lIHZpc2libGUgaW4gdGhlIE1ha2VmaWxlLg0K
PiAqSG93ZXZlciosIGl0IGRpZG4ndCBtYWtlIGFueSBtYXRlcmlhbCBkaWZmZXJlbmNlIC0gYm90
aCBiaW5hcmllcyBhcmUNCj4gYWdhaW4gYWJvdXQgdGhlIHNhbWUgc2l6ZSwgYW5kIGJvdGggc2hv
dyAodmlhICdmaWxlJykNCj4gJ3dpdGggZGVidWdfaW5mbywgbm90IHN0cmlwcGVkJy4gU28sIG15
IHBvaW50IGlzLCBldmVuIGV4cGxpY2l0bHkNCj4gcGFzc2luZyBjZXJ0YWluIENGTEFHU19GT08g
dG8gdGhlIGN1c3RvbSBNYWtlZmlsZSB2aWENCj4gdGhlIHJlY2lwZSBkb2Vzbid0IG1ha2UgYW55
IHJlYWwgZGlmZmVyZW5jZT8gVGhhdCdzIG5vdCBncmVhdCwgcmlnaHQuLi4NCj4gV2hhdCBpZiBv
bmUgbXVzdCBwYXNzIHNvbWUgcmVxdWlyZWQgZmxhZz8gVHlwaWNhbGx5LCBhbmQgY29ycmVjdCBt
ZSBpZg0KPiBpJ20gd3JvbmcsIHRoZSBwcm9qZWN0IE1ha2VmaWxlIHdpbGwgc3BlY2lmeSBpdCBi
dXQNCj4gYml0YmFrZSBkb2Vzbid0IHNlZW0gdG8gd2FudCB0byBvYmV5IHRoZSBNYWtlZmlsZSAt
IGl0IHdhbnRzIHRvDQo+IG92ZXJydWxlIGl0IHJlZ2FyZGxlc3M/PyBOb3QgZ3JlYXQsIElNSE8u
LiB0aGF0IGlzLCBpZiBJJ20NCj4gdW5kZXJzdGFuZGluZyB0aGlzIGNvcnJlY3RseS4NCg0KRGlk
IHlvdSBjaGVjayB0aGUgbG9nLmRvX2NvbXBpbGUgdG8gc2VlIHdoYXQgaXMgYWN0dWFsbHkgYmVp
bmcgZXhlY3V0ZWQ/ICBUaGF0IHdpbGwgdGVsbCB5b3UgZWFzaWx5IHdoZXJlIHlvdeKAmXJlIGdv
aW5nIHdyb25nLiAgUmVtZW1iZXIgYWxsIGJpdGJha2UgaXMgZG9pbmcgaGVyZSBpcyBydW5uaW5n
IOKAmG1ha2XigJkuICBJZiB5b3Ugd2FudCB0byBwYXNzIHNwZWNpZmljIGZsYWdzLCB0aGVuIHBh
c3Mgc3BlY2lmaWMgZmxhZ3MgKGVpdGhlciBieSBhZGRpbmcgdGhlbSB0byBFWFRSQV9PRU1BS0Us
IHdoaWNoIHdpbGwgZ2V0IHBhc3NlZCB0byBtYWtlIGNhbGxzIGF1dG9tYXRpY2FsbHksIG9yIGJ5
IHdyaXRpbmcgeW91ciBvd24gZG9fY29tcGlsZSgpIHRoYXQgY2FsbHMgbWFrZSkuDQoNCkZXSVcs
IG15IGdvbGRlbiBydWxlIGlzIHRoYXQgTWFrZWZpbGVzIEFyZSBUZXJyaWJsZSBhbmQgcmVjaXBl
cyB0aGF0IGJ1aWxkIHRoZW0gYXJlIGFsd2F5cyBhbm5veWluZywgYmVjYXVzZSBNYWtlIGhhcyB0
ZXJyaWJsZSBzZW1hbnRpY3MgYW5kIHdyaXRpbmcgYSBNYWtlZmlsZSB0aGF0IGJlaGF2ZXMgYXJl
IHlvdeKAmWQgZXhwZWN0IGlzIHN1cnByaXNpbmdseSBkaWZmaWN1bHQuDQoNClJvc3M=

