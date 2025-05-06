Return-Path: <matthias.neubauer@sick.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFD4C3ABBE
	for <webhook@archiver.kernel.org>; Tue,  6 May 2025 14:49:15 +0000 (UTC)
Received: from mx08-001e4f01.pphosted.com (mx08-001e4f01.pphosted.com [205.220.185.191])
 by mx.groups.io with SMTP id smtpd.web11.78146.1746542946381080966
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 May 2025 07:49:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sick.de header.s=2021092101-mgw header.b=n7dVNVgh;
 spf=pass (domain: sick.de, ip: 205.220.185.191, mailfrom: matthias.neubauer@sick.de)
Received: from pps.filterd (m0277713.ppops.net [127.0.0.1])
	by mx07-001e4f01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 546E8fQP022205;
	Tue, 6 May 2025 16:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sick.de; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=
	2021092101-mgw; bh=Ga8f3eVahHuVq6ifky5u51FUbyRcw8lQqdyNz9aM9U0=; b=
	n7dVNVgh2MIUPQSRLHeEG+gGl+2PedKNLwJAA/0yyOxpBb6q2ccd0/rf7Wsps5bO
	HuKQEpXU2H882BN2mdlV3NJG5gn6xGMQWoXgReXv0uYM8leRcoCcEIf/XCzN7gCr
	R2hdGdh0CPD6H1+MZ3ZJ346zXM9zNa4Roba5cAixzqiDBfJ/xvGGA1ser00JUrpY
	BQ9RTN9XC/3riWGvb7rJ2XBoej8ovCkha/q6MLTyw3csacb7FuFbMoPXyNDSrDGs
	1H/CAHr2wfFAsxMkJab5qnSZf30jjM9FMzmmhSTS76mMgcFPJdn5gj59K0o2Sd2c
	svYQKA2smn4n7rzbpRQgew==
Received: from fr5p281cu006.outbound.protection.outlook.com (mail-germanywestcentralazlp17012050.outbound.protection.outlook.com [40.93.78.50])
	by mx07-001e4f01.pphosted.com (PPS) with ESMTPS id 46d7fwe6ka-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 06 May 2025 16:49:02 +0200 (MEST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=elceMiEfySA840a7JML2YMr5QbXdx4JvVfrB36vTDLAdoTRxaiVpxrrgiBKEpsnMyIKmU5BsHXmbsaq+OANyqR2V5L/bU65ITuefmSIhRP95EJWhxvZVcDcOkXDvyh9km0dV6SkiabtUfKFN6bC0JgPYaita35u7StBskX/YsRJdu91M4M1H9Yja7s+T+j0/QpKO50C713vfka1Tl0DaLhlVQHhoMWAkt3nqKkcO9UTTtBtrAfk5tKPgMtE68bS4E3jjtcBda9isIVL90pKuxdselOFEBgioFxE3IfCixB7v0WvtCqGp6fXBJpTHrESlB3ZaMxHN4eFphKOvFgr0eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ga8f3eVahHuVq6ifky5u51FUbyRcw8lQqdyNz9aM9U0=;
 b=JSuGx5wCfKV7nEq0uqx98aNCKXblCSgyXVIVDmtDtJsMyWug/76lKqG5SKOI9Hp3dTjn6UlhWIM7gXg1svM2Xz9OEPqpb8d97Zpkp8HU5nC3/EJ0/Bs1v+mqU4HbSYUEDo7wK+YdyTq9isIsV9hs85K3WXHn/wYZ3ixcN9Y1OSf6n6mwAB1suyGnIjt318nNqZ8Rg9sQ1jTxuUSaPRDXLMrfMMgXpp5GIhsYhA2ovrfqVH2anpC3+tDOKsQwZ9gF4b1Z/4bcPa8H2wasGYaeUjvaJMHdum8iUCeKvBAFnMok3MIogBhCsiWkWGEp6fM/7nLw3zw9LHdZr9YjfZhcBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 51.104.160.93) smtp.rcpttodomain=gmail.com smtp.mailfrom=sick.de; dmarc=pass
 (p=none sp=none pct=100) action=none header.from=sick.de; dkim=none (message
 not signed); arc=none (0)
Received: from FR4P281CA0420.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:d0::17)
 by FR3PPFEA2F147D6.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d18:2::1a3) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.24; Tue, 6 May
 2025 14:48:55 +0000
Received: from FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:d0:cafe::9) by FR4P281CA0420.outlook.office365.com
 (2603:10a6:d10:d0::17) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8722.20 via Frontend Transport; Tue,
 6 May 2025 14:48:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 51.104.160.93)
 smtp.mailfrom=sick.de; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=sick.de;
Received-SPF: Pass (protection.outlook.com: domain of sick.de designates
 51.104.160.93 as permitted sender) receiver=protection.outlook.com;
 client-ip=51.104.160.93;
 helo=xwaresmtpservice-6f457cb4c8-l95z6.xware-eu-k1-north-1.o365.crossware.co.nz;
 pr=C
Received: from
 xwaresmtpservice-6f457cb4c8-l95z6.xware-eu-k1-north-1.o365.crossware.co.nz
 (51.104.160.93) by FR2PEPF000004F0.mail.protection.outlook.com
 (10.167.240.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.18 via Frontend
 Transport; Tue, 6 May 2025 14:48:54 +0000
Received: from BEUP281CU002.outbound.protection.outlook.com (40.93.77.0)
 by xwaresmtpservice-6f457cb4c8-l95z6.xware-eu-k1-north-1.o365.crossware.co.nz
  with Crossware for Office365 id a9483331-c949-4cca-9494-2a32cb89d4c4;
 Tue, 6 May 2025 14:48:54 +0000
Received: from BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:38::9)
 by FR4P281MB5049.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:193::20)
 with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384)
 id 15.20.8699.24; Tue, 6 May 2025 14:48:53 +0000
Received: from BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM ([fe80::1dfd:14b7:f7b7:e15])
 by BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM ([fe80::1dfd:14b7:f7b7:e15%6])
 with mapi id 15.20.8699.024; Tue, 6 May 2025 14:48:53 +0000
X-MAIL_SIG_CONFIGNAME: SICK AG
X-MAIL_SIG_CONFIGNAMEPLIED: SICK AG
From: Matthias Neubauer <matthias.neubauer@sick.de>
To: Alexander Kanavin <alex.kanavin@gmail.com>,
        "yocto@lists.yoctoproject.org"	<yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Install externally built .ipk packages during
 image generation
Thread-Topic: [yocto] Install externally built .ipk packages
 during image generation
Thread-Index: Adu+k26Ukj981tFsT5+wLQYfqajvRwAAWmqAAAAt19A=
Date: Tue, 6 May 2025 14:48:53 +0000
Message-ID: <BE1P281MB1907E2B9EA198B6CA71E314BE989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
References: <BE1P281MB19077BC8D4D9AF1D12514B13E989A@BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM>
 <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com>
In-Reply-To: <CANNYZj_j+qkvJO0Msd7dQ+1SKtOA7PRCj4CGvFEqa3Gm-io-tw@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
X-MAIL_SIG_CACHEID: 59383
x-ms-traffictypediagnostic: 
	BE1P281MB1907:EE_|FR4P281MB5049:EE_|FR2PEPF000004F0:EE_|FR3PPFEA2F147D6:EE_
X-MS-Office365-Filtering-Correlation-Id: 5475fb4c-e2b4-456e-aec6-08dd8cad1ff9
X-MAIL_SIG_ADMINUNIT: none
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?S0ErS1hTV0dOWmdoVFBmOXJVS3FOb0pWR2VpVE5KTTh2ZjBGRkgyVmNQOTJ4?=
 =?utf-8?B?QXhqSW5EaGFHbmlsYXRGdXIzY3h4azdqVmgwcS9sQ0NYWDJ5SUEzOVZ3V2Uz?=
 =?utf-8?B?ZWFIYUdnZTZBYW5wa1FCUG01dUdaZ285Z0pqazRyZzlLaTV4a3lQamVuNHVW?=
 =?utf-8?B?R1g3VWNFYXpUN1dIRjRLRXlTUlMyeloyWjBuMnlBZEZXVjNNMUp6bkNQN2Zm?=
 =?utf-8?B?Q3RTeGdrU1N3c0RCN3lCQm5jRFZPQUVzOHN4VUlVM1QzYXFvNEJ5RkpjRjhi?=
 =?utf-8?B?ZTdsZU03ZzR4V2VRc2NMT0ZEOS9YcFZadEhjQzdGNUFkZW5WQlRGZ3hPNGN4?=
 =?utf-8?B?QVk2TVkwVVVuN29xbENadldVRjRDRnN1aGlXSW5xcVZpV3kzNmtsR1NTNmo2?=
 =?utf-8?B?MklhS3AxemVwYmVxZ2xZRndadC9oMlhORDdNN1JsU2lHWnBNWVdSNkloenJD?=
 =?utf-8?B?Q0tXR2NtamJCZnEyRFRza1U0Wk9MTEQ0UDY0bm5Xc3V2cndST1c0OVJjczZ2?=
 =?utf-8?B?TzFURFdEUE9lWVZFeWplcitvQW8yNHFwTThjVXJsOVZQYWo3Z2Zob1VtZWZm?=
 =?utf-8?B?Rk1YOW5HSWhEalVQMXRyK2RpeE9GdXVCRnEyR2JXUEI0MFVVUFJ3V29DU056?=
 =?utf-8?B?OGxqMHo5VDFCRkxETmJLQmc0TnlJS3hyajFlWENiWDhpb0g4VVJ2bGtUUXpy?=
 =?utf-8?B?Y25tT05WTU4rTU9weEtiMUZZU0lzZmpOUC92b3VRTzBYL3psMTVraENyanBR?=
 =?utf-8?B?UEFqd2FVaUd1UEptRHN0anh4ZFdEVER3M2k5WkR4LzdJbVE3aCt3ZXVhSFcr?=
 =?utf-8?B?cnc2RnByazZCMDF2amRvZVZIMFAvNjJiVDVhNVZ6NVZwbzZKNzhCUG9IMWs3?=
 =?utf-8?B?MzFieGxIZkxnTzdpRUNwMlhjN0gxK05LOGU0UVQ3L05oamdnMUtJdjdrbE5k?=
 =?utf-8?B?dUsvTVlTeGlmSHF5NlNPN2czVGlrT0N0Y1pvVkVoei81REV3MDlXVSs3WFNU?=
 =?utf-8?B?a0pTZnI2dU5MQW53aWYvWFZLdHd0bXpWTm9WUzE0cnlhR2dHYXVWY1FvTkp6?=
 =?utf-8?B?N0NyS2VnUFJCdHd5OGF4V0w5bHhpd3VwSkRjc01LRDIrRGNIU3FzY1B5L2VD?=
 =?utf-8?B?c0VPbUh3emlkRGhrRzIvYkJFREVPTDB5RnJjVTdiVjVHcWlhekpQTlNWbWV5?=
 =?utf-8?B?d3ptTCtwU2dlRzhVQnllUW1iQWFCQUNvZ0xNaEpQR3hnUVRQRzlDYUo2L2p4?=
 =?utf-8?B?RjJYMm40NFh0K1JyaW9tTEUwREd6YzRzdTdsekJSa3UwQnpXR0RZVFdtcGw3?=
 =?utf-8?B?TnRkQ2llOEdxdEY4YzExTHNHUmkwdEtxOE5YdG93UVRNc0VqbTBsMFdZaFRV?=
 =?utf-8?B?T1puNWM4UEdRcUE0dkpBR3ZFaGkrTWpTUTRHNlM5cEVFbjBYb1ZreEQ1WDV6?=
 =?utf-8?B?cmlWVHg1U0Jtc1p6SUc0RE41M3BDajZhOVQycTQzY0tIUUxad3NEWGFaaXIx?=
 =?utf-8?B?WVZINVlzRUxHbTlPcDl2Q3YzL25PMk5Ib3BpQ0JQSUtId2swVDkzeTc2ZXNV?=
 =?utf-8?B?eXFjWDF4SGw0YTRzblQ0d2l4LzhQdW9ZUDRudjVzYitYUUR6L1k4dmJOS29D?=
 =?utf-8?B?TkE5QzNxSkliNldkR2RFbkJ4S1BaT1NsUXBxejNUa0RTdWVEeE5EcFEza3Vl?=
 =?utf-8?B?eUZzaVA0VDNyanFRR1B3ekpMWjA1TnMvZnp0NUJtUmllckVGNmFNeTFIaVRR?=
 =?utf-8?B?WGlQTnZkOEhPUFJtNDRkWWgvc3BtaXE2bUU3d1picjFOdlduSDZyTjlOSkYr?=
 =?utf-8?B?cUw3ZEQxNE8ycnFvUDhQZU11TlI2VU8yYUpZSGxoMEVHM2JLd2ZmdkFYWmhi?=
 =?utf-8?B?WXBMcmFkTnlVbkVLMFpMWVZYdlZDd0NBNnRUMDVUTld6Q2Y0WnY3SFAxNmth?=
 =?utf-8?B?Rm9NREhoaUxSSHZSbmZuMEk5YjJjRlRBY1FHSnFlSjJJVWlNRGdid2pROTk1?=
 =?utf-8?B?aDc1YkNYeWJBPT0=?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BE1P281MB1907.DEUP281.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
X-CWesigProcessed: Y
X-MAIL_SIG_VERSION: 0.2.855
X-MAIL_SIG_SERVER: xwaresmtpservice-6f457cb4c8-l95z6.xware-eu-k1-north-1.o365.crossware.co.nz
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR4P281MB5049
X-EOPAttributedMessage: 0
X-CrossPremisesHeadersPromoted: FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-CrossPremisesHeadersFiltered: FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cf1aa39a-6dd2-4d9d-ffa2-08dd8cad1ed9
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|82310400026|14060799003|35042699022|376014|36860700013|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?blJiTEp0Z3J3Zk1Id2RJZUFEaVlpZXh0R1VwTDJOczBNODRQaENyWndOZ0dt?=
 =?utf-8?B?VUQxbVFhK05Nc2QrWTVYSVIzbElyTDBYQ2ZYdTJleUdBT2x0amNlaDRmL0Y4?=
 =?utf-8?B?cmRlVUJSWW0rZ21nVk83Y3B5akhkWGRCUXZ4cVR5Z0x4TzI0SjV4ZVNGNG1R?=
 =?utf-8?B?YWFVYmxWVDFjazB5QWcxYkdYL2NmdmJOdjBMNUxWTVV6TGZrN0N1N2w3TDla?=
 =?utf-8?B?eEk4Z0FyWUNYU2pkOFh0cHZ5RVVxWmorTmFYZWg1U0pqOWZESm80VlYvYlRa?=
 =?utf-8?B?K2FNWWNSL2lhYTF6NTgyVzhwSVJxTjFiQm9tMDRNUE11KzJXVTh1a2twb3k5?=
 =?utf-8?B?VWhJRU14RWl4NCtjbzZEUDlPUk1sSWRENWFMZFhyOTZudnB5SDZKdWNkcW1w?=
 =?utf-8?B?UXlmRlJ5cStQc1l6dUtJSmNteGxCQ0FnMmRFNlA0cGt2OHQ2cWdxVityTUgr?=
 =?utf-8?B?ajdOMWlseHJoejFxSEJGZlFkMDR0eXRQc29VaFg5RkdwNmhKSHJyYld2UzIz?=
 =?utf-8?B?U252dXZGMFU0NVpzQkNoYjI3cHl0ZSsxN1Z2dTR2TkJQbVFMb3NFbWdNVnVj?=
 =?utf-8?B?eGZ5czZrQUxneHltS1duRmgxTld5SzFnVmIxeFlJTEdadkpVVGdjemhnS0wx?=
 =?utf-8?B?TmJZb3VOUnJlSzVTcUc1Y3BBdnFWeGVFQ1VSVzRpRDVxanNLVS90S0lNSTU1?=
 =?utf-8?B?MkdaaEs5WFFFa2l1WVE4N0RJcmJFZFplN3NzNXhVZ0kzZWtBK0I0SWQ2OEg5?=
 =?utf-8?B?NkhLanZQWGlHUDJTSTR0aFIraW5MMXl2NVRqUzBtUXFueTZrdklxcXZncmZI?=
 =?utf-8?B?MDFUbFhYYldNNFNYMlJHa2JBTmNPYUxvRk0rTURyanQ1THZ4WE9ZNkQ5djBj?=
 =?utf-8?B?YXhUY0haWURMR2VUVWJpNmhpN1ZkVVIwOS9ZMnZoVklFTm44TFJUVVNKNFJZ?=
 =?utf-8?B?VHFPclpYWTJwY1hneG9kUlNYVlBGdmhJSEJRcDFFUXNZRi9FTEVxc2dDMjd2?=
 =?utf-8?B?U1M5TkFZRm5wbUc1NllkejFwaVZHTlU0aEhCbzBKZ2JQcHc0SmVZNkw4eE9z?=
 =?utf-8?B?U3ZBcFhvNDF4TVp2VVJtMEdSWnhtbXhlOFJPY2VhNjY2ZFZPWTNlRjJWUnJC?=
 =?utf-8?B?L0FMQk5KMlRObjViZFduMU96REJjcC9mQ2c4d2g0VEJuSmw0SUpQemtucE9R?=
 =?utf-8?B?cmhWWE0wOU84OUhkMVVDZjZNZ1RLV0dWeWdFNWQyUFNQcjZjZHBJazNXRklQ?=
 =?utf-8?B?UmZWU3JBYWZCMTdFYjZuOTF1RWcyMUNoajFNa0syQlBSanVYUHhzMVU1VFlv?=
 =?utf-8?B?MWUwOTFHZncvZlZnTFlsTTlZbGI3UytVUU5aaUFKWElGYWlmUmRwOFoxMHl2?=
 =?utf-8?B?aTU2SERUK00zWEJ2RTBYaUwrek9tZVl1Q3lWb2drU3hCYUMxUHYrMmlhazhE?=
 =?utf-8?B?UStnbWppK0ZpZzFlZFF0K2xjaHU0NmhxUnRJUUpLNXh1cmQwWm9RL0IvNVI3?=
 =?utf-8?B?bFYvVVpydStyM0dTeEdyRWcvcTgyUERUVVY4OUhlOWhEbmZRVU1xTDR6VG1n?=
 =?utf-8?B?MzhJRmczUmVTOEhla3NTZ1FsNmVJaEk5cTdHWk1jbHB1UmZpRStFOFBiYVNR?=
 =?utf-8?B?NVNWdDRzRGFxMGZ6VWJYQ2RBQitrSHprSzF3bzduVDRaYnErcDhFYlJTTlBH?=
 =?utf-8?B?UDN2UVlkRVBjUEZ0MnFMWEsxOVA3TTRWOHpFS0swQUtnejJtOHoybG5UZ3hn?=
 =?utf-8?B?SGlIbWZEOGNoMlhLSzh2dXdjTk5CL1NsL1RrdTh3dit0MWMvODNpd01PNFBO?=
 =?utf-8?B?dXFRL1lyTytIcHE4RWJPcHNPZzNQT0g3UjQ2MDQ3TEpyb3FSZmcwczJ3OER6?=
 =?utf-8?B?b1k3dFFNa252eTFPaENRSURDUkREK1BlSTY3UnVQOE1jcWFVUkxpQUhZdDdt?=
 =?utf-8?Q?zU4gzkeY5/PgNhgcm9QW5rK2K0scRJEm?=
X-Forefront-Antispam-Report: 
	CIP:51.104.160.93;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:xwaresmtpservice-6f457cb4c8-l95z6.xware-eu-k1-north-1.o365.crossware.co.nz;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230040)(82310400026)(14060799003)(35042699022)(376014)(36860700013)(1800799024)(7053199007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-ExternalHop-MessageData-0: 
	kL4nI806jMwWp5LB04vrB/tkeh4UnlpaIjkFcsRJSiFvL2SIOsQ8S/9EwBkoQb0mKpJpWuXViY9fW4aTKKdvd5nIfrxKOkJbaHwQ2XcQmmo+x4V4yxp3+XdascnrEQMZU7UGpCk5Vyphwkiu/e1mHyrMypC5jaYG4h8XjyfcYsqlr4moCeOfMpzda9R7DwrGbj8DiTbm1Ha+T3iAp2DotUYar/R2/p1ddvTmL8vGBCVkRE5ICM/cAol726YQEhAp9tDvyazrdmDsjN3TZsjpAD7GzDnGeMAqhbFlTQDFEb1rbX6ntV9Wf8wfjbOmplOPjgK2fBxXysDFB5XIanh7sDnxPzXz06e/Tt8xRToYX6v32x1/Jta639IBunm0RAWx2i73HXyKuH0PApHiA+mNIa5ybubzbGSsr4WI5Fki/k+wa2RgwTy7vyTWhaf8iSJBH5BbcGr+oK3jyx2n18KvgK0OVQ7N4IDAEvGQySAfHMAeSA2HqtwBb6ffSaAK7aNwIJ9BGraW7FHZXiC9n+gda6VIKWthhSHxaaswyBsRy7x/asjwbN7kqsORlJe36Lnm3yBk0ALZRaGNVS+git38Ybjw/etpqAw04bmgfYOamS7C75zOuFsFTuOicGsmhKdz/K9HBf3hSIhZX+O3pDveQQ==
X-OriginatorOrg: sick.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 14:48:54.8449
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5475fb4c-e2b4-456e-aec6-08dd8cad1ff9
X-MS-Exchange-CrossTenant-AuthSource: FR2PEPF000004F0.DEUP281.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Id: 149acf93-d7d8-49e9-aea4-e48d6d0dae68
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=149acf93-d7d8-49e9-aea4-e48d6d0dae68;Ip=[51.104.160.93];Helo=[xwaresmtpservice-6f457cb4c8-l95z6.xware-eu-k1-north-1.o365.crossware.co.nz]
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: FR3PPFEA2F147D6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDE0MyBTYWx0ZWRfX8dI7Ve3Bp2oz
 blz1O0Yux/YaraGrPG1vjlCpCo/TY/YhJF31OpRe9YJHMUM6OFK2xceEvqv+EEAWtvlJSwmHoUZ
 H+gchRHTX4RDPPHkrrsHu62MOqNmqFObkJoLvapp6Ktjf9RuOFiz0D2JF6X6MsVlTPnqWhAZCMb
 h0/XpVWaojJ/iKSGcCRpvVtM8WpKO6gGjEg2fcP6bCJyiNAl4qIX3IrAEwlColFTFSsDaJCGd73
 YH1V0rS9jQJPx/8zAOmAQ6OW0d7B/0h33wtIMkB7qeXuAVFh/RmWGDG0T6CqE3Qo0m4bEHGV9kG
 J1BH0/NaZn7XpO9QILyHQ2R5/yJEK/GDFyZmcKwsYOsB0tj9c0Pk1K1VrnmULtDsG2CD0MENnTv
 VcJbtuefOLW9BAppYhyV1vOUMMUVy6tYgW/MtjHnJaRyVGZT5vvxbnk9KuMQrmECl2yAm3B/
X-Authority-Analysis: v=2.4 cv=UfVRSLSN c=1 sm=1 tr=0 ts=681a215e cx=c_pps
 a=KQRipQceup3wOVCr+5RoVQ==:117 a=c1ZRfG1RmQFzPXQupEc97A==:17
 a=wKuvFiaSGQ0qltdbU6+NXLB8nM8=:19 a=Ol13hO9ccFRV9qXi2t6ftBPywas=:19
 a=lCpzRmAYbLLaTzLvsPZ7Mbvzbb8=:19 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=s63m1ICgrNkA:10 a=F08PkAPK9d8A:10 a=__reGKuPAAAA:8
 a=pGLkceISAAAA:8 a=iGHA9ds3AAAA:8 a=aOWClxxrNB_P_21MjLIA:9 a=QEXdDO2ut3YA:10
 a=ZWq3DkvqUpLo1-QMl0b1:22 a=nM-MV4yxpKKO9kiQg6Ot:22
X-Proofpoint-GUID: MhNqtzygDzgr9B1MPFxzKFSNKobxTC54
X-Proofpoint-ORIG-GUID: MhNqtzygDzgr9B1MPFxzKFSNKobxTC54
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1011 impostorscore=0 suspectscore=0 bulkscore=0
 adultscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 priorityscore=1501 phishscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505060143
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 14:49:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65288

Q291bGQgeW91IGVsYWJvcmF0ZSB3aHkgdGhpcyBkaXNjb3VyYWdlZD8NCg0KV2Ugd291bGQgbGlr
ZSB0byBidWlsZCBzb2Z0d2FyZSBpbiBhIG1vZHVsYXIgZmFzaGlvbi4gDQoNCkluIG91ciBwcmVm
ZXJyZWQgc2NlbmFyaW8sIGVhY2ggdGVhbSB3aGljaCBkZXZlbG9wcyBhbiBhcHBsaWNhdGlvbiB3
b3VsZCBhbHNvIGxpa2UgdG8gcmVsZWFzZSBpdCBpbmRpdmlkdWFsbHkuIFdlIGFsbCB1c2UgdGhl
IHNhbWUgU0RLLg0KTWl0IGZyZXVuZGxpY2hlbiBHcsO8w59lbiAvIEJlc3QgcmVnYXJkcw0KDQpE
ci4gTWF0dGhpYXMgTmV1YmF1ZXINClNvZnR3YXJlIFBsYXRmb3JtIEFyY2hpdGVjdCB8IEF1dG9u
b21vdXMgUGVyY2VwdGlvbg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQpTSUNLIEFHIHwgRXJ3aW4tU2ljay1TdHIuIDEgfCA3OTE4MyBXYWxka2lyY2gg
fCBHZXJtYW55DQpQaG9uZSArNDkgNzY4MSAyMDItMzk0OSB8IG1hdHRoaWFzLm5ldWJhdWVyQHNp
Y2suZGUgfCB3d3cuc2ljay5kZQ0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQoN
ClNJQ0sgQUcgIHwgICBTaXR6OiBXYWxka2lyY2ggaS4gQnIuICB8ICAgSGFuZGVsc3JlZ2lzdGVy
OiBGcmVpYnVyZyBpLiBCci4gSFJCIDI4MDM1NSAgfCAgIFdFRUUtUmVnLi1Oci4gREUgMTQxNjUz
OTYNClZvcnN0YW5kOiAgRHIuIE1hdHMgRyZvdW1sO2tzdG9ycCAoVm9yc2l0emVuZGVyKSAgfCAg
SmFuLUguIEViZXJoYXJkdCB8IEZlbmcgSmlhbyAgfCAgVWxyaWtlIEthaGxlLVJvdGggIHwgIE5p
Y29sZSBLdXJlayAgfCAgRHIuIE5pZWxzIFN5YXNzZW4NCkF1ZnNpY2h0c3JhdDogIERyLiBSb2Jl
cnQgQmF1ZXIgKFZvcnNpdHplbmRlcikNCi0tLS0tVXJzcHLDvG5nbGljaGUgTmFjaHJpY2h0LS0t
LS0NClZvbjogQWxleGFuZGVyIEthbmF2aW4gPGFsZXgua2FuYXZpbkBnbWFpbC5jb20+IA0KR2Vz
ZW5kZXQ6IERpZW5zdGFnLCA2LiBNYWkgMjAyNSAxNjo0MQ0KQW46IHlvY3RvQGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmc7IE1hdHRoaWFzIE5ldWJhdWVyIDxtYXR0aGlhcy5uZXViYXVlckBzaWNrLmRl
Pg0KQmV0cmVmZjogUmU6IFt5b2N0b10gSW5zdGFsbCBleHRlcm5hbGx5IGJ1aWx0IC5pcGsgcGFj
a2FnZXMgZHVyaW5nIGltYWdlIGdlbmVyYXRpb24NCg0KRVhURVJOQUwgRU1BSUw6IFRoaXMgbWVz
c2FnZSB3YXMgc2VudCBmcm9tIG91dHNpZGUgb2YgU0lDSy4gUGxlYXNlIGRvIG5vdCBjbGljayBh
bnkgbGlua3Mgb3Igb3BlbiBhbnkgYXR0YWNobWVudHMgdW5sZXNzIHlvdSB0cnVzdCB0aGUgc2Vu
ZGVyIGFuZCBrbm93IHRoZSBjb250ZW50IGlzIHNhZmUuIFBsZWFzZSByZXBvcnQgc3VzcGljaW91
cyBlbWFpbHMgdXNpbmcgdGhlIE91dGxvb2sgYWRkLWluIFJlcG9ydCBQaGlzaC4NCg0KT24gVHVl
LCA2IE1heSAyMDI1IGF0IDE2OjMxLCBNYXR0aGlhcyBOZXViYXVlciB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8bWF0dGhpYXMubmV1YmF1ZXI9c2ljay5kZUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gSXMgdGhlcmUgYWxzbyB3b3JrZmxvdyBzdXBwb3J0ZWQgc3VjaCB0aGF0
DQo+DQo+ICogdGVhbSBBIHVzZXMgdGhlIFNESyB0byBkZXZlbG9wIGFuIGFwcGxpY2F0aW9uIGFu
ZCBwYWNrYWdlIGl0IGFzIGEgDQo+IGJpbmFyeSAuaXBrIHBhY2thZ2UNCj4gKiB0ZWFtIEIgY29u
c3VtZXMgdGhlIGJpbmFyeSAuaXBrIHBhY2thZ2UgdG8gaW50ZWdyYXRlIGl0IGludG8gYW4gDQo+
IGltYWdlIGR1cmluZyAqYnVpbGQgdGltZSoNCg0KSXQncyBub3QgaW1wb3NzaWJsZSBidXQgaXQg
aXMgc3Ryb25nbHkgZGlzY291cmFnZWQsIGFuZCBJJ20gdmVyeSByZWx1Y3RhbnQgdG8gZ2l2ZSB5
b3UgdGlwcy4NCg0KVGhlIHJlY29tbWVuZGVkIHdheSBpcyB0byB3cml0ZSBhIHJlY2lwZSBmb3Ig
dGhlIGFwcGxpY2F0aW9uIHRoYXQgZmV0Y2hlcyB0aGUgc291cmNlIGFuZCBidWlsZHMgaXQsIGp1
c3QgbGlrZSBhbnkgb3RoZXIgaXRlbSB0aGF0IGdvZXMgaW50byBhbiBpbWFnZS4NCg0KQWxleA0K


