Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A60ECE77173
	for <webhook@archiver.kernel.org>; Fri,  6 Dec 2024 17:25:32 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.75])
 by mx.groups.io with SMTP id smtpd.web10.43197.1733505925880536086
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2024 09:25:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=nOigXF7Y;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=nOigXF7Y;
 spf=pass (domain: arm.com, ip: 40.107.103.75, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=pass;
 b=vqeAPllE/NXoHLu41R70YnVwq8qsXRYIzSp04+9duvkRrg3vLea5OmsGNJIukNvN/aQj4P85DifQy00Ntfvi8uwTn1VTVDXziy4lQSlbGhCT5cPE0NlKtuFFZuW0VNi7JZ8p8Q/4HGSnyqRbct0YfpzRXdfkP8p6EMuivD7nlhwuoTRMtupU8Z7qDzEydTJRHEuKO74my1gir9gPOio01uHLzxoKBzhElYOhNmseLJPIeE8G0zQRPkCRYtk7clEzI5G6A8C/bFcPIaW8QDpp7wD7KgYriFKckfjKKZu8qipgYDh2D3vHoYVEN3WTWQNP5VuIGjWwl0piDr0z3ifgvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9vfdIlL8t/9+kjgM8CVsIFW4ycztymo8i3+dyv+vkE=;
 b=HtcHL2w+6Bz81yosWSCQxqI+6plmGAXkdJWfz9EawwAWAxG3OPyK4VjK4+yqPhIAId5gsaccVGyzXzA9MJYXdSf4LOKCXkxSywQkKrArGITPI0YRCxzILa3aY7f9kzPm/ARPinXOnS/c6yzi1/eoLf4h/PCK7KY8Y4sh4F+Vx35T0BPbUW7Qqn4XJhbv4sN/Z9s/A+qwSslm/hj+dmPlmu84m9vsXq8BjrigxDz5bL9j7bkunwcPaLVzJPH7hHqiOou+SRgFS/UMDhO7trIL8rnBBBOoAm1vyG7qpqIk70iQgPivmkheR0DmcLR9ivjEoGPC+qJ4w3E3hOAfAX0UCw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9vfdIlL8t/9+kjgM8CVsIFW4ycztymo8i3+dyv+vkE=;
 b=nOigXF7YWiYJmtuXGyse8HZm1J28zOJ8Nn3eagAbMwKd0Qqk5BRCPlD2cdHdH0zTqPl3vCInwrah9nZRVxxpV5T3AZnQ61ydVOUw+aYjTGipwlk29QOcV6cJmUXp9lw8jDxqZiHE38VhGY58eIZcdyymhP4UK+lxK15pLU+62xI=
Received: from DU7PR01CA0022.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::10) by DB4PR08MB8199.eurprd08.prod.outlook.com
 (2603:10a6:10:381::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.12; Fri, 6 Dec
 2024 17:25:21 +0000
Received: from DB1PEPF0003922D.eurprd03.prod.outlook.com
 (2603:10a6:10:50f:cafe::f) by DU7PR01CA0022.outlook.office365.com
 (2603:10a6:10:50f::10) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8230.13 via Frontend Transport; Fri,
 6 Dec 2024 17:25:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF0003922D.mail.protection.outlook.com (10.167.8.100) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.8230.7
 via Frontend Transport; Fri, 6 Dec 2024 17:25:20 +0000
Received: ("Tessian outbound 6f08927dda96:v522"); Fri, 06 Dec 2024 17:25:20 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3cd8c692f5a64c87
X-TessianGatewayMetadata: CCHMsXiQkR5RTom+gNHCfVa5zjDN6JNQlxvdJjwMMY6lxWhCsv/kYdjCXZzJO8Sgx3DUv3wMAZErh5qTxHg4Hr/4bkyJ0VaHRdGlX8qHMBdiQCigisT3bZYEqozuY7tRSSryHOH4VrXghrvo3JYtBArimtk6G0obLj7Ux9vBINg=
X-CR-MTA-TID: 64aa7808
Received: from L7c0d461cec31.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F3700FAD-0A19-4110-B0FF-3253C90072FF.1;
	Fri, 06 Dec 2024 17:25:14 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id L7c0d461cec31.1
    (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
    Fri, 06 Dec 2024 17:25:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=s6SNaFP+hWGY2ynIbRFV56nyBn0qJTLLkZIOkHss1NFfcZed+wqKlKMHlJRznmAxmxnIptJ0iZueBmSJLZ9lgydwR4qE3R0Ia/OOB4Vj0Rq+Iy/AX1UPxVl5BjnSErz5DDhDxOzkvqinzcjWODGef0SkSnjJt+MVZoudehuTAfEn11kEIHa6cMvKVuuqDF2LrSFjmchIX5XlBNGfPXy+EN3tbRN1Az/aN76KWdehtFNjeMP07OUhsiGaecXw7VtvQlxF/kQW9Ns5l++kDKHbH/hVmm5/8xK2CA2TyUOs7uItiOS9eHsVtkukekzO/ASfNG946mMOasJT+rvZ6CeG+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9vfdIlL8t/9+kjgM8CVsIFW4ycztymo8i3+dyv+vkE=;
 b=olAlyAXWC3xPEnR7QR7cV2QGcwYReT2xPZwjPJO8Yg0LlvU3MP91j0FhdycalqhrcY/Oa3wH40OWzUdewq710qGg+5oiwKJ0+ZOwcJjlsUtV5Ndmp6nckeVsrxmRLTvckpJGgcksRpeFrb/1MUkeN47PQUCp5aloykwa3CY8GOYMzqMYjrir7oxdzc41YrFeDV/ovGwE3biHi7Y3eDMFsyJVW265DXau/V8MHZwiGAuzoWfWYV5etRvPuI7KHMAQOwS6MPbgVteDb6NdkK2aPQDyVHGogpeAWAysZXGzGvGUrr/MljMdXtaiwvWHUqKOTMZC3IGyXXEbrlnkpeDjSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=V9vfdIlL8t/9+kjgM8CVsIFW4ycztymo8i3+dyv+vkE=;
 b=nOigXF7YWiYJmtuXGyse8HZm1J28zOJ8Nn3eagAbMwKd0Qqk5BRCPlD2cdHdH0zTqPl3vCInwrah9nZRVxxpV5T3AZnQ61ydVOUw+aYjTGipwlk29QOcV6cJmUXp9lw8jDxqZiHE38VhGY58eIZcdyymhP4UK+lxK15pLU+62xI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB8950.eurprd08.prod.outlook.com (2603:10a6:20b:5f9::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.23; Fri, 6 Dec
 2024 17:25:10 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%5]) with mapi id 15.20.8207.017; Fri, 6 Dec 2024
 17:25:10 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"hassanchattarki@gmail.com" <hassanchattarki@gmail.com>
Subject: Re: [yocto] How to add ARM trust zone TA and CA in my os image
Thread-Topic: [yocto] How to add ARM trust zone TA and CA in my os image
Thread-Index: AQHbR9iTXnidueoED0G04F7D6Mwhu7LZd9uA
Date: Fri, 6 Dec 2024 17:25:10 +0000
Message-ID: <0EAFCB74-983C-4EEB-AF2C-74E5F850B816@arm.com>
References: 
 <CAPJWBnjo6NeUOjpGWrbUkxSLSq_iFtqDawCo5LzKKuP=D1s11w@mail.gmail.com>
In-Reply-To: 
 <CAPJWBnjo6NeUOjpGWrbUkxSLSq_iFtqDawCo5LzKKuP=D1s11w@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3826.200.121)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB8950:EE_|DB1PEPF0003922D:EE_|DB4PR08MB8199:EE_
X-MS-Office365-Filtering-Correlation-Id: 98fa0c81-943f-4ff7-7e00-08dd161af5e2
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|366016|376014|1800799024|38070700018;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?WjNEUmVadkpFZUhES0FZWDlldmhqK214ZGc1Z09XWXdYc28yT1BhSmJjSCtq?=
 =?utf-8?B?cnA4OUhucm11dmhReDdSRDJBR0Ewa3p1ZG9yb2dvZUR2UWl2bU1jSC9BaHBQ?=
 =?utf-8?B?VEo1UjIxeE8yTGpYUjcreW1VVHExQ1BwckJjTGExV0ZuWlBEdWxmaW03SjVQ?=
 =?utf-8?B?MFVNUVEwUmdhWDdiVit6OEMrZmFWN1Y2RWN1STFMT0FTdFNiU09tQzVkalVE?=
 =?utf-8?B?MDRlTzErbXdiNTA5WGhaRVhsVG0rS0xMdjdZU0R1ektYbFVlcFlnNjA3Q1dI?=
 =?utf-8?B?ZExoUlJlVUgvVDlRU2pYQWc2QVpWK1NPOWx1NzVRb3U2UkZweUZQanRKL3pU?=
 =?utf-8?B?SFRmQndIcVpGbTBnV29ROXI1Tyt1MmVrRzJiejRmS0ZFRHRySnVlNlRyQW5u?=
 =?utf-8?B?ZWlOUEJqL1NpZ0dhOUdEUGtFR2Q1cCtyUkZ6V3BIVFdQa1VFSzlKSW9wYnRx?=
 =?utf-8?B?MHZJY09QdEdNVmNQVE5sbFQxellHSWdkOC9mbnpCLytpR0RIUUtzRC9sYlFZ?=
 =?utf-8?B?T3ZYM0FJdlVGS293aGxhN0FobnVCaUl2eWVBNFZZRHhXbHVVYURhckRySE5m?=
 =?utf-8?B?K3VqN2kwTXZvK2o2WDRMZk53VlZDdDBGQUFnaTJzNGdGU0I2eGpFMHVZNmti?=
 =?utf-8?B?cXpiSTFHS3ZPM2UwRTdRUmptTDhlTkc3Umd3OG54K2h5WXNCNDJBakQ1U2pK?=
 =?utf-8?B?dlRObXgxWWdpUWNpL05HTytRMVl3SExFcHVIVzZHdmd3aStxS21TaHNyaENQ?=
 =?utf-8?B?UENodGFNK05vbmh0a3VhblFuT1RtSHQ0WmFBaXhnT3N4Um9MSFRHQ2JFeTBZ?=
 =?utf-8?B?YTIvbEdweTczYUhWbCtFTW5nTmNITERkUU16bXBlTE05ZjNwUFNVWjkvYmpS?=
 =?utf-8?B?dWF2a3JvTmdDQVJKODhzUmlJSnR2QzErd3NkNHplenFqMHhXYUU3U1BBUm9K?=
 =?utf-8?B?ZXhUQXZVYmViVGhNUHZhQ2dreTRpZlhHUkNNUnV6WjV5MWxjWnR1bnFYOW5y?=
 =?utf-8?B?WlJWb3BaMDZSRU5kcWV4aXRQNENENXRQTlBYd01GczNSL1oyQ3EyaFp2ZUkr?=
 =?utf-8?B?aHdueXF5VHJlM0lpSVVZNFdMaFhzZEhpenRkb2JzVkZFa0lVZlM4Z25yTnUr?=
 =?utf-8?B?MFIwRTIyeXdjbTg4b1ZlQ1YzeXVsdDk3OFZOYjIyZ21qZjZuOVhwcUFtT0tU?=
 =?utf-8?B?UHpBQm9QTmJWankyUmg4QnhGNGlubW5qRy8za0t1cDVwalFXUXFMVXdTeURZ?=
 =?utf-8?B?eVNSUnFNaVV5K2cxU0Vrc2U0cjYrdURlZlpMNS8xWHVEcWpnZW5hYWhUbjgy?=
 =?utf-8?B?Qjg1dHdKZWFvK2loaTdxNU4xL2JJSGVuTFozd2dVTXQ4eHFNRVg2bzFlSFk4?=
 =?utf-8?B?aFd5c241c0NjNmFrdFJVMW83em5EelBQUFZIQTA4bVFSeEIrRWZqUE43U3p3?=
 =?utf-8?B?b3NLTmhEaW5EZ1VmVUtDQnhQZEpQNTJIdlVUUG1uL0ZSUFpxZGswZDd4bFp5?=
 =?utf-8?B?bUdxVGZCNGJGSlpxMWVYN1JOVEt1NEo1Szg1NUlJNjlyRHlCQVppTHFLMnlL?=
 =?utf-8?B?QUdxVXBjU2taVC81eFNxcVI1K014Y3MxZ3JQSHdYMzhoUkFOVWpUOHVvUDJV?=
 =?utf-8?B?Vk1Zem54VmRWQlhVVlRzdC9BWE5OK0w0T1VHZWV0L0xWOHBZMlE2MWhLM0NX?=
 =?utf-8?B?WTRwNVhrRUpkUTlKVkJnWGw2dHp4cUdUVkQvUzFwRmNPL3YwL3pKb2s0K0ND?=
 =?utf-8?B?NnZoOUorM1NWV1JaTkt1YlhiQUxScjE2YmRTZ2dzSlRwRkRoS1lCa1ozTHlQ?=
 =?utf-8?B?MGhjekV0MjY1YTE5VnF1d1Z4ZzBkczNueG5iamE2bVlsQjU5QUNRUkJiaUQz?=
 =?utf-8?B?WE1aQUhPVDc2cXpwUTdxKzdKR1JTT2o5d1VVVHl4bzR1UGc9PQ==?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(366016)(376014)(1800799024)(38070700018);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <17CA56F92B009E4D822B064D1EC7397E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8950
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-SkipListedInternetSender: 
 ip=[2603:10a6:102:2a3::12];domain=PA4PR08MB7411.eurprd08.prod.outlook.com
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF0003922D.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2296bf9d-56e4-4bc6-fde7-08dd161aefaf
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|1800799024|35042699022|14060799003|36860700013|376014|82310400026;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?Z0hwMkZTY0JrNGNaQ1FZWjhKNXR3TEhwZllPTGFUSEoxTWUxeko2ZzVGV05y?=
 =?utf-8?B?Y0I3SzRqK3NYdGxZUEVKUjYySnE5RytycTB0d00xWis0bUU1VXB2TzZxMHlH?=
 =?utf-8?B?dEc3ZExJa3FrVHVqTEhGUzhzSTNSQy8rOEZFOFhzRG9hMDA2cnBBS3NBZlFh?=
 =?utf-8?B?ajFFanhsVzlPYStvUHUzTGFlREJHdFBEckV2VHZSWlNzYXU1TFRJRDYwRVdX?=
 =?utf-8?B?ak5rYmJ1TUd5WDNhZlgycVRSZ2FKUFlmSk9ndmlyYk1nODhuVmtZTFd3Yzk3?=
 =?utf-8?B?NG1rWStIWitsUy8rRThaZjJhdlBhOHg3TXhMT0ZKWUdGV3oyMmw4MlB6dDFu?=
 =?utf-8?B?bWFTc2dFaDdzVmIrM2xDNUpDeUVrMlVJSnJWTm5jbkFBRGpCaFNsdjNiam9C?=
 =?utf-8?B?N09xbmtDSTNiTlo0R0FtcXI1dG50c3EycnBGeUk1RDZhOHVMa1EyWXRFV3o5?=
 =?utf-8?B?Z2VENUpmL3BDNkd6ZGQ0WHJuSTBmYlZtT1A4T0JHUnpqUEp1RzNWMFc2M2ZP?=
 =?utf-8?B?WUlTT0NpVENYMnhUckxMYXhJUU1CaGJTZWlsL05QNVVzN1Z2bXZlalNOcERO?=
 =?utf-8?B?VnRqVkxEQ29SQ2ZIcXpzWkJUc2NRZkhzNW8wdFg3Z2ZNMldPWk9pTE4wRDRB?=
 =?utf-8?B?L0pqaFJMcGFoaUk5YVVMUHVRWXhQbTRkNCtpaXBReVZXWUxTTnQ5SEZvQUdq?=
 =?utf-8?B?Yis1RFE5d0xuaFhVVW9vNTNoMG12dk1nT0xHZThqd0Jlb3phVEp1NnZGVmh2?=
 =?utf-8?B?ZExXTUkyeFQ4TVl4TzdDSXEybDBLRnFlN3pXbU1VZVErZDFHODE3bTZGUzlS?=
 =?utf-8?B?d0FGRzJaQXAzY0JJaWJ5bEo3NzZqRTl0MFNHcXJsNFZtUXZCaWd3d2QzTmdv?=
 =?utf-8?B?TXBsbVU3UmY1d29nZGJlNUhkTEhtN09wK0s5Qzc4aEc4UHdrRlFXdVpmYkhB?=
 =?utf-8?B?bmVrUGZqMkwxUzdRRStnMWY5RXFVYTkxdjEvazk5dWYwOXJMbWxlVjF4ZWk1?=
 =?utf-8?B?Q2VKdW5BWm5yY2U3c3BQUElYdnlGM1lhODEwN2JNTDRTREhSODhEUVVuUkJp?=
 =?utf-8?B?aGl1K0ZMV2x4aWNXeXdtWEZ3RnB6UWRhZWdMamhCQ3RkV0p2c1hJTTFFRWZR?=
 =?utf-8?B?Vmtpc0UzTFdTSkppdDg3VTYvOGpYY2VvQ1dGTEF2RC9KUUpwbnFVdTlXeWdQ?=
 =?utf-8?B?THE0RU1Bbjd4aE5FdHUyUXA4d0RlQ2c1WWt3R20vclZoL1JjenlFN1JUM1Iv?=
 =?utf-8?B?ZXNBbE5pMncvWjVDS3VpQnJTa3l5dVhSOUJ3aStxbmszeGhJb24yK3NPYVM2?=
 =?utf-8?B?UUtBTFYvckZ5Tzg4NEJkTm9kOWhpU1Y5SXBOTXdrcGt2OXdLTWJETTNlN3M1?=
 =?utf-8?B?LzhYazFkblphNE1EYzFhNENIZmlBd014WEp3WmdIRG5ZbDVVbjlMTDBnOHUr?=
 =?utf-8?B?UUk5REtaZXJFN3YzNjVJd0k2K00xRjM5VnN6RDJweXlTOVppOTg1MGdDOHRt?=
 =?utf-8?B?V2hOUlRXU2paeGluUWtGY3pZS245SCszb0NhUGhtalpKaWlYVGVxTGRJMjZw?=
 =?utf-8?B?eEtyTWhhTU5ST3NKSTdicHBadGxUektoeDZoUXp3MUUxRTk4VzRBWkpJNVkv?=
 =?utf-8?B?bnA3WUNPSUlDZ0lZckZuakF6R255aGhwNWI1dkx4dElwb3VYVklmTk52K0xQ?=
 =?utf-8?B?QkxSbTBWV0lwcitGQ2ZaQ2Fnd2lWY0pCU0l5RWtjUXl1YU9XemEwRHFFb3RL?=
 =?utf-8?B?R2tudXVKQ1F0WS8va0xSRFBya3VWbUdGeTN6SkJtMEZyRlkrK1dqa2ZzT3dr?=
 =?utf-8?B?N1pwMmV3WWNyalQrb0FlRWtCN0NWSTEvT0RZTkVlRloyZDFabmt5UmNhOFZj?=
 =?utf-8?B?ZS9rbGZQTWw3VDBxakJmNXFUTEE1SmdGYmM0Qy81Y3JCTkFnV0hvcVhnV2Rl?=
 =?utf-8?B?V0ZXYVkxejl1WkJtTzZMTWJCSlROWjlNRVM0cUdOTkhBQlc0N3hjMEhJRHB2?=
 =?utf-8?B?RGZia2pDMDZRPT0=?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:64aa7808-outbound-1.mta.getcheckrecipient.com;CAT:NONE;SFS:(13230040)(1800799024)(35042699022)(14060799003)(36860700013)(376014)(82310400026);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2024 17:25:20.6388
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 98fa0c81-943f-4ff7-7e00-08dd161af5e2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF0003922D.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB8199
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 Dec 2024 17:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64413

T24gNiBEZWMgMjAyNCwgYXQgMTI6MTUsIE1PSEFNTUVEIEhBU1NBTiB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8aGFzc2FuY2hhdHRhcmtpPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IEhpIGd1eXMsDQo+IEkgd2FudCB0byBhZGQgQVJNIFRBIHRydXN0
ZWQgYXBwbGljYXRpb24gYW5kIENBIGNsaWVudCBhcHBsaWNhdGlvbiB0byBteSBvcyBpbWFnZS4g
SSBhbSB1c2luZyB5b2N0byBkdW5mZWxsIDMuMS4xMSBhbmQgeW9jdG8ga2lya3N0b25lLg0KPiBD
YW4geW91IGd1eXMgc2hhcmUgc29tZSBkb2N1bWVudGF0aW9uIHRoYXQgY2FuIGhlbHAgbWUgd2l0
aCB0aGlzPyBJIGhhdmUgc2VlbiBZb3VUdWJlIHZpZGVvcyBidXQgbm9uZSB0YWxrIGFib3V0IHRo
ZSBob3cgdG8gYWRkIHRoZW0gdG8gdGhlIGltYWdlLiBJZiBUQSBydW5zIGFzIGEga2VybmVsIG1v
ZHVsZSBvciB0aHJvdWdoIGFueSBvdGhlciAgbWV0aG9kLiANCj4gSSBrbm93IGl04oCZcyBub3Qg
ZXhhY3RseSByZWxhdGVkIHRvIHlvY3RvIGJ1dCBhdCBsZWFzdCBob3cgSSBjYW4gYWRkIGl0IHRv
IG15IGJ1aWxkIHdpbGwgaGVscCBpbiBzb21lIHdheS4NCg0KVGhpcyBpcyBpbmNyZWRpYmx5IHNw
ZWNpZmljIHRvIHRoZSBCU1AgdGhhdCB5b3XigJlyZSB1c2luZywgc28gSSBzdWdnZXN0IGFwcHJv
YWNoaW5nIHRoZSB2ZW5kb3Igb2YgeW91ciBCU1AuDQoNClJvc3M=

