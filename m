Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DB7C04FFE
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 10:50:44 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.52])
 by mx.groups.io with SMTP id smtpd.web10.37115.1715943035820834903
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 May 2024 03:50:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fD14i9sj;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=fD14i9sj;
 spf=pass (domain: arm.com, ip: 40.107.15.52, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Y9Qy8MsWnDcSOe/0sjcPcGP4F6mAgTPcShXtR1mXaR7J4fW7qE7dxXAMgR/PJ8NKGO9IQcwMxyTzzIHBF+h+mzMLRaDNvSDr0RfO8jWqoXDwOwZmZhTh2Obp6xS364ptbLuxso7NYwvoAVdHwyP28FEpHyFbC06XTl3/AFg6gH7iIvZFKG5Jyl0G7JXrdWNwOsxWeTLiGt/Vlc3Xp4HBf3hwiWBtz1wMa9++hp94wGcMueiGnathH0ChCMpBZFTxxNZEcdQNkeVX/zd/T2NMfW78XBB3v3mb9DPeM+dSIVI/bdeiVwLxlwpBNMgn2xaHx7qVh0ymI9FPxx2rSKcIKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDVjiSqXuurJWteeFFymqpb86Rm40XWm+CI5tI570xg=;
 b=jYCO8DELgbZ5eVxNBKLyZLTGgZTPr/wBomgASniRsAGrIXFm3Vvm8B/ozWKJHuX/qCosxye7fkteSYJCOUq6kC+5Q+gWyvbntFbt5UcEgz68lwn6tzEBriGzPhjU1ejGb/hF8oOr/VJ6gIiS0DK9rp711zSCW94Pc9B/kvBcOlWvHPmRw95atrEB/DX1qBlP1lQPrutIu/+ZWJAjKwqW8S7jdUPZnUetLRId6Spx55ap7rlk18M7SkTBYM/tT+Hp6aI8USX9Cseofa2ZC6cE7nnd5yer71iIt2XTt5xIMi6zk8uY/xqKaB02kjOJaMm4Y++spldQ2oPf5AGMMlJZCA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qDVjiSqXuurJWteeFFymqpb86Rm40XWm+CI5tI570xg=;
 b=fD14i9sjsQq5iTMMwIyvHR8fBJB9bFeAPVKNAnUIpVP0T+RjL5yWgLWf+KkVj2yhca8i3raI1/nCQN+ZybXh4Dev9mPpxqZYhVooPyJ6GECsZ82uiYm/+lTArioQD4a70wo/V4VmCfthyhthgG3I7i1tzQ8rUGBXpwY5TVv5qtY=
Received: from DB3PR08CA0008.eurprd08.prod.outlook.com (2603:10a6:8::21) by
 DB9PR08MB9849.eurprd08.prod.outlook.com (2603:10a6:10:462::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7587.28; Fri, 17 May 2024 10:50:32 +0000
Received: from DU2PEPF0001E9C6.eurprd03.prod.outlook.com
 (2603:10a6:8:0:cafe::f6) by DB3PR08CA0008.outlook.office365.com
 (2603:10a6:8::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30 via Frontend
 Transport; Fri, 17 May 2024 10:50:32 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C6.mail.protection.outlook.com (10.167.8.75) with Microsoft SMTP
 Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21 via
 Frontend Transport; Fri, 17 May 2024 10:50:31 +0000
Received: ("Tessian outbound 9d9bf1c5d85a:v315"); Fri, 17 May 2024 10:50:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 77e780f3041ec840
X-CR-MTA-TID: 64aa7808
Received: from 38a40ade3bdb.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1A6D013A-A686-4074-9717-3F87C8E86D9C.1;
	Fri, 17 May 2024 10:50:24 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 38a40ade3bdb.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 17 May 2024 10:50:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CIFinWGeKKzLmh+4BP9h8vvZVDEhlaKEvUF294FJiK4IFcTX9RLwvJT/OSyrYIGzzXwh7CsI9oKxVInUon4qUXZJ0G+dllTba6Pd90fxpm3mMYYzkjQmoky9NBUyQLe3GMhP6M2YEt562s8SipJ4fqOuoM7RnfWqVCXhepHGG5Dyzs5DYPih286Z7kkhbmQuBWoV1Nd9kd/wsKu+KABJrSDRn6ogjSnDJC3asSZSmrH+za9m/NuJAga60m+XHlUnQ3Aud4NnMRtrIzqYT1CSdfijBY0sJ3bAmG8fxeKnxU5Zi+50+LwdElDc3Xs+b+9qt5XElcq3mycSCFala2X2ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDVjiSqXuurJWteeFFymqpb86Rm40XWm+CI5tI570xg=;
 b=H1uHiAnONoG5XpbyL+MQMxhB0LSF98eqz/7r7IKnYtFrSezmdC7FgyubR4kG13gPuGCdDLh2Y1bbc4N/wQhbRHpcRnKo1vJA3H2gpO0HCPS0+0CiG6NWcxxYQNrQ/3NoDariCxXyfwkPKd5eaUQHuz6A9J9f+GuV0yc7fYl7CmipThUE0bB824bi5achxYoAVA6HYwsV6QC0tPWp8mDgh9Vnq8jyJ7tfE9VEukoU6W7bTmqfFHy4BZLwu1WkCBMbjsfoFkQWxqmdl6hogK8qquQo9G9i//yht48NOJxwyOfaqh3ov7/0+9P0pKEjVpezKxW6OaB1i2FcMDXJOMjgzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qDVjiSqXuurJWteeFFymqpb86Rm40XWm+CI5tI570xg=;
 b=fD14i9sjsQq5iTMMwIyvHR8fBJB9bFeAPVKNAnUIpVP0T+RjL5yWgLWf+KkVj2yhca8i3raI1/nCQN+ZybXh4Dev9mPpxqZYhVooPyJ6GECsZ82uiYm/+lTArioQD4a70wo/V4VmCfthyhthgG3I7i1tzQ8rUGBXpwY5TVv5qtY=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PR3PR08MB5692.eurprd08.prod.outlook.com (2603:10a6:102:8a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 10:50:23 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 10:50:23 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	"simonkbaby@gmail.com" <simonkbaby@gmail.com>
Subject: Re: [yocto] packages not generated in output folder
Thread-Topic: [yocto] packages not generated in output folder
Thread-Index: AQHap8dNI4kOLzRXtEmG+mjFcUDwKLGbQG6A
Date: Fri, 17 May 2024 10:50:23 +0000
Message-ID: <297A0044-BE8B-4470-983F-91529C3F67BF@arm.com>
References: 
 <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
In-Reply-To: 
 <CAEFUPH2wugXtmvaVQPWi4Le=5vAKOEr7=9Cn3Nv47WOqHFhE9g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PR3PR08MB5692:EE_|DU2PEPF0001E9C6:EE_|DB9PR08MB9849:EE_
X-MS-Office365-Filtering-Correlation-Id: df65730a-3fce-46ac-0ea4-08dc765f2bef
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|1800799015|366007|376005|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?UDJaVkl3SCtKV0UrWlVqclZpZFR4UUQ0akJpdDVmcm52czZzT1MzdFd0Z2hU?=
 =?utf-8?B?aHJTUWkyZVdkaDFHSnFlQVR4QWoxWkV3S0dKSFF1aldvUm5mZEM2WEdldWlp?=
 =?utf-8?B?UTkrUlZzMEhYL3NLTkpaYmdKQTJTTGRGRHE3dk1HNVRPRjBvRVBzOUpnR0hZ?=
 =?utf-8?B?d3ZtUzRKcEhPUXdua1ZxbU9BZEdQTmhaRkdSYmYzdkZDZXZjcjNwS1VEb3Fq?=
 =?utf-8?B?UXhnTDUwbzU1V2Z4dm1XZmNlem5vU1NWR2s0LzhNRFpTTE1yaFhqMnhvcEVj?=
 =?utf-8?B?VjJwL1BLWkRMU0xyRnNtM2xPN0pzSU5xNmVGOWxZWVdUS205a05rV0haUjBD?=
 =?utf-8?B?UVEyNFZXNjJ0Ukh6UTMyV2tZVEN0dFc0dWpXTDBmS1dodEUwWEtYNHlrOVgr?=
 =?utf-8?B?a0xPbGg5M2U0a1JXVzRCZU55OHdtRVZyMUl0TWhST1JLTThPeSt3QSszM1Z6?=
 =?utf-8?B?alNoZkRYdlRZUTdPVDJ1djlnUEI2UUdwOUZYRkNZbDQ5SCttYW5FdnRjY2Nm?=
 =?utf-8?B?a3dvWitwUW5VdkJIZWFIc0sweUJHVTJZTEYvOTFINVpFaFd6dFFkZ1RSRnF4?=
 =?utf-8?B?T3ZPakFRaWtjVjRjanI3ZXFiYis0eTJQdlMrMlR0OU8zMmdCalh5cFpxczlD?=
 =?utf-8?B?S1dIMVh0UVdybXI2dnFNeUt5RitOci9ORUhvREo3QVBaQTN3ZWFwaVhYSEli?=
 =?utf-8?B?b1cvU1hJaUpWb29EOGtXWDlaTjcyR1pkdGZOUEJxcjZJSHRBcGNJQ0xSRU9n?=
 =?utf-8?B?cU85K0RhZjRsVzJmT245OWNVWW1qYWtzSkp1clNUVXR1MWk0eVRLdWE0dllS?=
 =?utf-8?B?cHMwTlVDVC82NUVZMDRuRnNwMkltRGlnaWMxNjNrVzR4UmVoeHlWTjlUOWZL?=
 =?utf-8?B?c25UT29NdzZ5am5FMS96YkorclJTUmtPajdSeUI2akRKUmlEcG9XRnBmYktJ?=
 =?utf-8?B?ZU8xekg0OERCd1pnVGJUWkpLbk1mZ0p0eEJGUVgrRm5aRHpPcTZxQVBwWTQ4?=
 =?utf-8?B?REprZlMrKytTUFZVSWxxbmVwcHFNVlprdWc1MTNTbzNhZ0pIY0FpZ3puQ3l5?=
 =?utf-8?B?dXRvQ3NrbUlWMkY3TEpqVjRiWW05ZDA3VldHYW8xNmJQQ09JcWdsTzBzRjQ1?=
 =?utf-8?B?Ukk0UFc0YlMyQTk1MFRxZXl6LzcvbGZYaFZLUEc2ZWk1S3JLSXdsTGpMRzlM?=
 =?utf-8?B?b0pIajRsVGhROFdGeEptQ3l5TzNweHZvaFZkZlBKdnJzWXU4QkxYaklvbGw5?=
 =?utf-8?B?UGh1cEkzRmwzM1hGREwyYnlLTjZJWXZpRFV5bVdNZDJCRXNPQTBxNUozZlR5?=
 =?utf-8?B?RkppUUZEaHZCbUZnYTVzNVR1RmZxd2c2cEl5LzRXbzhWaVk0K1Y3WXJaandT?=
 =?utf-8?B?dndVZ0lvbFkvNVFhZmZEbExTSmdoNC9sNDNhVmQvVHNFT245SkxGQ1FXdFgv?=
 =?utf-8?B?QUxLU2E1bU5wT2lHQ2xoNW4xcGdaeFIyL2JTbUdaMnpVU1ZSUzY3WVZFOU5V?=
 =?utf-8?B?aTYybng3eXltNFdnS1daZkVUam54ZHJTSDl1cXpvMXNZVVdEeDZUUElrVWRK?=
 =?utf-8?B?UGRQUEw5Q1dBMU5uZFpmWDQ3b2pOYUpBVEg4ZzFveERhcmRjWjRwM0cyNjJh?=
 =?utf-8?B?Q1pqWFVPWHYrdU83Z1BETFRGL2RMaTQ2T20zUDhxKzM1OTFmd2M1a0FWWjda?=
 =?utf-8?B?aWR3SkgyVEFqWkNlZU1URmtTeVBSNWxxd1dURFVOZGtMOFZwdHZ4cVBBd3Ey?=
 =?utf-8?B?RVc2Zk9McXFGR2RnaVpReWhEa2VXcDNjaWprV1ZsOUkwVHFCUEJiL04vdXNp?=
 =?utf-8?B?QzVtd0pScHB2UGhDbjJ0QT09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(366007)(376005)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <3D03977A8F892F449A796EF88D595C56@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5692
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e84ec2e0-cc94-47be-e48a-08dc765f276a
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|82310400017|376005|36860700004|1800799015|35042699013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VmxoRG5lVUJhKzRoOTFGbmFFa2RzMk05ZDVhUk5UUlo3N0NJUDB2Q1J2L09r?=
 =?utf-8?B?QWx1WUUvQmdycWdZMlBuS2IwS0dnZzEzdUhBMHBpSjhtSG5zcVFnaVJiVmtw?=
 =?utf-8?B?bWdQeGNpcUxtV2NSbWRXaEhTUS85QUtFRXY0eWs2bXp2ZUltM1BWYXNmOFJQ?=
 =?utf-8?B?NkRjbUhrQUVZa2pVS1NmbzY0SUIvUkVSUksvV1VWdFlrVUR0SHhYb1RHQlpV?=
 =?utf-8?B?QjlCcHdwQUZoNWhNSEh6TGp4MkRvNEUxd2VnWEZ1V3IwZGwvTHl6Q1krd3ll?=
 =?utf-8?B?NW0xUWFtMVQ2ZHRXSm5xdWhEaDdwNjNDc0JaWW5KZC9xRG9tRWlSWHNmVkx5?=
 =?utf-8?B?YXRRUVJaclVYS254YVIxbUtYUkZyMmU3RVhVeEI0cSs5eEVJazcyeERUbUNS?=
 =?utf-8?B?bVJzRUxIVi9hbWlaTVlDMnJSU2tWTGhxcE43QkM1ZTBiTlRtU2FBdHFWTTds?=
 =?utf-8?B?czR1cVBaRkt4SUZRNlVLSG1Da2hIWE5CaDQ5NzlpZXYzbVpYaDB3WUdvRnF0?=
 =?utf-8?B?WkNuN0U3TVR3WGVDdk0rdC9Qdk5xMkJMSXdnR0s2cUdtbXlrK3R3L09IaWNR?=
 =?utf-8?B?VHNDQitvMlNpV3lWa3R3RGdSZGhROVdRdFEwU0kyb3BYNzFQdFF1MXVDZG9q?=
 =?utf-8?B?Wm93RnVwRzk1eGxUSXBiNmduV3B0bThUb1FGWGpOQ0E1Q0xkeVZxejZwRWZ5?=
 =?utf-8?B?MldBUndLUUltaVNDWVVPUk0wdFBQTmt2eDVSKzE3SDNLYnBid3ptclIwcTFl?=
 =?utf-8?B?aGtMMFlQaTI1dG9YYVF6amc2TGs1NkVjKzM2dXI0U3NRWjBUVzFFS2RHTTY0?=
 =?utf-8?B?NDJXNHdjM0dOMGlBOC9tbjRDb0hFQkVQQ1dTTlg0WmQxZU1xNVJnN0U3a0dr?=
 =?utf-8?B?cGhObmoyQ0hRVjhtbmZJeVc1RFllckRTYmZCUGZLNmdFYkhDVWMweTVxNXk4?=
 =?utf-8?B?RHZlR0o1MHBLQ0FBeUdiK0xwZ3BNREprMEV5S1ZvKzZFRzVRcUVYTGRFRlAw?=
 =?utf-8?B?WmRZVE8zenVCMzhTV0t1Vi8rVE85SDlqeDBJdjhXMlFaNDZtdGNQUzNWdGFH?=
 =?utf-8?B?V0xnMzAyblJpd0lTLy9TNTFJaktUbms2SXB0YVlzT2I1cTRsRzF6ZS9qQWNz?=
 =?utf-8?B?WDl5Wm1ndWZXbFpueVZtZTZOVlJHZlVjVjR2bnIyM0FDbm1zZU40RUloRklo?=
 =?utf-8?B?OVZoMWNWT1V2VzNzVHkxZ0phQ2RHR2lLTmwzVHQ3ZUhQUDhHK0UzY3VzSk1z?=
 =?utf-8?B?Ym5ZdTJTSHdXTFk4MFluTWJNNHM0b255bmlSTnUvcXVheW1LdWFvQlBsRFQw?=
 =?utf-8?B?bEg4dnY2N2xvU1UvWC8zakVSRFgvR2lMeXBQcngvWmNVR0w3TmZuaXUzSUJT?=
 =?utf-8?B?LytKZVFobVhjMDhsdEFFS3I4YzNVdnNuNUZmOUFXcmRNMzlDNUxhcnR4cXZR?=
 =?utf-8?B?Vk8xL0dyUnZwZHhXd0JkVCs0T0NyL0lTQmw0QWFMSVNSNWtCS2pKV2NuUFBZ?=
 =?utf-8?B?NE0xaGJWWHhMd0treVZEdkFPK3h4dlpxWnQ3RHVTeHlIME5QVEhZZUxrYmF1?=
 =?utf-8?B?a3ljTmlUZnBkc1hlVnJFZ0tvR3JrMnFKWG9hMHBHUGxpR3duZk5yWW1FV2o4?=
 =?utf-8?B?cHdtaThNdW90UDVRa0VtRm9OOWtCd1NoKzkyQnoyLzZmTTUvSU03YXkzVzRt?=
 =?utf-8?B?cnppUENVT2Zua0NzMjhHWTZ3NGdWNlhVYVdwSDgrQzZ1N2JJd0hIYVR1RytV?=
 =?utf-8?B?dmtMdFhwMkpBYTNPZVpsMGo1S1BuZnhSUnNQOHFSVXJjRS9pV2Y5ZU5TdG9M?=
 =?utf-8?B?TGNreVRIK2xPZ1YyZW9Eb0tIdGp0dzNBZjlaUjRkeXZ2MUM5dHltdHBKTm1h?=
 =?utf-8?Q?XuOMtaZsWQc24?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400017)(376005)(36860700004)(1800799015)(35042699013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 10:50:31.0669
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: df65730a-3fce-46ac-0ea4-08dc765f2bef
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C6.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB9849
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 10:50:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63132

T24gMTYgTWF5IDIwMjQsIGF0IDIwOjI4LCBTSU1PTiBCQUJZIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxzaW1vbmtiYWJ5PWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90
ZToNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSBhbSBidWlsZGluZyBzb21lIGFwcGxpY2F0aW9ucyBp
biA1LjE1LjAtMTAyLWdlbmVyaWMgIzExMn4yMC4wNC4xLVVidW50dS4gTXkgeW9jdG8gcmVjaXBl
cyBhZWggYnVpbGRpbmcgc3VjY2Vzc2Z1bGx5IGJ1dCBJIGFtIHVuYWJsZSB0byBzZWUgYW55IHBh
Y2thZ2UgZm9sZGVycyB1bmRlciB0aGUgdG1wIGRpcmVjdG9yeS4gSSBzZWUgb25seSBsb2cgZmls
ZXMgdW5kZXIgdGVtcCBhcmUgY3JlYXRlZC4gTm90aGluZyBlbHNlLiBDYW4gSSBrbm93IGlmIEkg
YW0gbWlzc2luZyBhbnkgY29uZmlndXJhdGlvbj8gDQo+IA0KPiB0bXAvd29yay9jb3J0ZXhhNXQy
aGYtbmVvbi12ZnB2NC1wb2t5LWxpbnV4LWdudWVhYmkvbWFydmVsbC11bXNkLzMuMC43LXIwJCBs
cyAtbGwNCj4gdG90YWwgMTINCj4gZHJ3eHIteHIteCAyIHNiYWJ5IHNiYWJ5IDEyMjg4IE1heSAx
NiAxMjoyNiB0ZW1wDQo+IA0KPiBUaGlzIGlzIHZhbGlkIGZvciBvdGhlciByZWNpcGVzIGFzIHdl
bGwuIA0KPiANCj4gL2J1aWxkL3RtcC93b3JrL2NvcnRleGE1dDJoZi1uZW9uLXZmcHY0LXBva3kt
bGludXgtZ251ZWFiaS9saWJnY2MvMTEuNC4wLXIwJCBscw0KPiB0ZW1wDQoNCklmIGEgcmVjaXBl
IGlzIHB1bGxlZCBmcm9tIHNzdGF0ZSAoYmVjYXVzZSBpdCBoYXMgYWxyZWFkeSBiZWVuIGJ1aWx0
KSBvciBpZiB5b3UgaGF2ZSBybV93b3JrIGVuYWJsZWQgdGhlbiB0aGF04oCZcyBleHBlY3RlZCBi
ZWhhdmlvdXIuICBZb3Ugb25seSBoYXZlIGEgcGFja2FnZS8gZGlyZWN0b3J5IGluIHRoZSB3b3Jr
IHRyZWUgaWYgdGhlIHJlY2lwZSB3YXMgbGl0ZXJhbGx5IGp1c3QgcmUtcGFja2FnZWQgYW5kIHJt
X3dvcmsgaGFzbuKAmXQgZGVsZXRlZCBpdC4NCg0KUm9zcw==

