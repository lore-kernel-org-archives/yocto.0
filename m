Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07AB1C25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 15:39:29 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.84])
 by mx.groups.io with SMTP id smtpd.web11.17468.1715873967644124871
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 May 2024 08:39:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=cUumS24P;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=cUumS24P;
 spf=pass (domain: arm.com, ip: 40.107.20.84, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=X617Dt2YU3xtXQkZUBVGkhrir4ZextUF9d9wyZyO1V+s2JS7XUL7C3au0LVBywh7LsIGBpP91xs6PpsQaxX5ZWkZzj3eLHZ+pg/gWRekaxqEEx6QKxCQZ4jhPmE6hkLwLS/sDbCn1sowj6E/krDlbp8K+aBwTwwCcSWDYKuXaEyJcd8iR5NnPZ4a1cN6qNyQVMMRRDqiozY9aC2qnqXU2iwzxGsi1SAA9XRU8zlo53WODtsgwRKruBQAUVTnnQIEawRv+Lp1aStzkDhj5mZFeLSLs4d3vAokoq2N5tspREWdyTgNLnix8OjE2JHOalAW/878ej7tiVgzE7rpD2x47g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WM7MBggBENZSqnENeZErSLPzWYcLvclSZ2vRrT+kzSE=;
 b=AXqW9Sk9rktajCMX3istkSLyaHbLOpH3OVGptnm9xl3yP31GAe27Z5l69A7jrDkiEzomfUUzNaLV8WKbosNeylaFwC67X/3q752Xg8mUNDf+GjIXG+UTp166SHEmuwAIi7g/+4X78TP28hZFn2JqmbgeMipZy588S7jiEbjwkMADZc9AtzHWznJQpGnCA1YhlaHiaRnQAAwBEFsTwIay8EW7MdHgscoEtoJQjEKKXN0W0dFLgNebZEgjhwcGtwlu4QD9zYMHb3mMsuWNsw5As5oNDgJQAN+ytRl4JH7BaVKzVz/bxetEp1h21Xa86GZwdD6Hutsvm5P6Rji9uVRzgA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WM7MBggBENZSqnENeZErSLPzWYcLvclSZ2vRrT+kzSE=;
 b=cUumS24Po0xjmZqTZy0ykQwsruRxNf87tOyMkYeVZB8xHyOZWrn+LAHux7w1KSHFNPUgGzrrRwgbdnPNkbh1OE1U1vezGQMc4GFgy2RbelW8TcluYmcMUhWHv4rl+SAMr6OAxRzTJQd1WqyJkpO6m1DLc+/ldxaa9wKdOa4Fgc8=
Received: from AM0PR02CA0111.eurprd02.prod.outlook.com (2603:10a6:20b:28c::8)
 by DU0PR08MB7738.eurprd08.prod.outlook.com (2603:10a6:10:3be::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.55; Thu, 16 May
 2024 15:39:23 +0000
Received: from AM3PEPF00009B9D.eurprd04.prod.outlook.com
 (2603:10a6:20b:28c:cafe::90) by AM0PR02CA0111.outlook.office365.com
 (2603:10a6:20b:28c::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28 via Frontend
 Transport; Thu, 16 May 2024 15:39:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF00009B9D.mail.protection.outlook.com (10.167.16.22) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Thu, 16 May 2024 15:39:23 +0000
Received: ("Tessian outbound 9d9bf1c5d85a:v315"); Thu, 16 May 2024 15:39:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dcd77a68a76664c2
X-CR-MTA-TID: 64aa7808
Received: from 862d26d87381.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7346218C-DE03-4FD3-A3B3-127F11747214.1;
	Thu, 16 May 2024 15:39:16 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 862d26d87381.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 16 May 2024 15:39:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GnCiF4VBCOy/IRjenryQ7qNUIob9gf+mzbPXaYiYNA32HDI15FnudsT2pZR8NS+Yi+WCLp6/SUQyUG2hyoK/On4jG+kVdLSEKf2ILJBKXlCuy47kDFhhsUMaERP3+ajV7DhzZV1qYXoXILyMzNcqWhcq/qr6LiAGyVB1CioWsyXnGeFiXusqMe1mVIVpv9NED4bZtNv29aHEbtjnoRQDmIlT98JnyCi1e72oEgz1y2f63PYdehJHPmJb3lNbN/m+YoPauvQnmctN4iSOgysXCLVbAF11NQ5eVg2L/FfIIk5zrTdK/PoWrO8iaNtqYccduc5M8bKoNeA9CsEfRmSsSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WM7MBggBENZSqnENeZErSLPzWYcLvclSZ2vRrT+kzSE=;
 b=hZ03FEQACI1DkSP450GG0wiokd1SsTX+90KqJ4P0qg2Ua8zSLc2MKSL0ome42YjO659PKYCZwsZkBs9GehN37rrrfdziLdxInteGt9XlVIO0OF0H9ssr89YMV9gSKBC0teBfwbD6ceA8Ccs+iWntv3DKvXdKJwRVEQkmOmwCLnC1ershLD7YKUEj9VDo5mvPPKt/OdEbyi8/mkf2Xy9QYt0HfJwlCTKikwbAorQ2jN9HMVq7VD59Qgen3K+HH55RGkR+uJ5IRbPoLrQxC5WR+3ntvBegJ6+fJft4WZc4jD0oSiN0xFdV4N1fOLrXtt6Po2ZIa3ykplIbz/nXoZSw1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WM7MBggBENZSqnENeZErSLPzWYcLvclSZ2vRrT+kzSE=;
 b=cUumS24Po0xjmZqTZy0ykQwsruRxNf87tOyMkYeVZB8xHyOZWrn+LAHux7w1KSHFNPUgGzrrRwgbdnPNkbh1OE1U1vezGQMc4GFgy2RbelW8TcluYmcMUhWHv4rl+SAMr6OAxRzTJQd1WqyJkpO6m1DLc+/ldxaa9wKdOa4Fgc8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB10141.eurprd08.prod.outlook.com (2603:10a6:20b:631::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.27; Thu, 16 May
 2024 15:39:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7587.028; Thu, 16 May 2024
 15:39:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>,
	"zoran.stojsavljevic@gmail.com" <zoran.stojsavljevic@gmail.com>
CC: Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
Thread-Topic: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
Thread-Index: AQHap48DnV+qrqTYRkGxGSlwaI24RLGZz32AgAAtiYCAAAI4AA==
Date: Thu, 16 May 2024 15:39:14 +0000
Message-ID: <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
References: 
 <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de>
 <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
In-Reply-To: 
 <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB10141:EE_|AM3PEPF00009B9D:EE_|DU0PR08MB7738:EE_
X-MS-Office365-Filtering-Correlation-Id: 36b1d862-396a-42fb-2760-08dc75be5c7e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|376005|1800799015|366007|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?VW1WeVIxMHNydFZEbTFHQjhaa3VZeGM5ZTVpNXl4TjJFdTdyV2JEOUlZekxQ?=
 =?utf-8?B?QVRBTGwvM3FuUmc4RHJ2NnBLNnpTT0ExdVN1dWQ1NTBPMkt3ZU9BTTFoT0I0?=
 =?utf-8?B?ejFXRU15SmlOWHUzUFpRT3RBSE1EK0dkY2pZM2o3d2JnSnpkUFROYVhEcFVY?=
 =?utf-8?B?aXJkdU9wSFBRbnBrc1pnamxYeWUvWEp3VkhhMzV2TWpncHMwcStPcnNNUThq?=
 =?utf-8?B?Yk5ZMUVaMlJxOC9aSkdGaFJXaW9IdXNFcVVYTTY0YllwZmxGZ1E4QkUwNUxH?=
 =?utf-8?B?Vk9CNTk0Wk5MQnNjYm8vbjhGWDYySUVCcDVQRmdPYVR4ZnRuTUFHV2VrOTFC?=
 =?utf-8?B?YXNIUXhpQ2Q3VFErS2c5MWlXOFFUaVBzaVZncXJzN0hremw2aGpqVndOZHJ3?=
 =?utf-8?B?SDdpN1dBT29Qb2h1ZllIQjB6MzEzb1JrOU1nVmd2SUdlL25teEVuek9rRUdu?=
 =?utf-8?B?cVVETjJSRUFkQmRiSUhkYmQ2SDhML294cFJxMC9jNHlpUjBNd1BtbDlKZGZj?=
 =?utf-8?B?cC9yUUZHUUFqekM3WnQ3MWNDa01oWmIwRmZ4aDgxWlhPWUlOVmQwK2dXb0I3?=
 =?utf-8?B?cUxZM3pmSk1rL2J6WUF0WHo3bGg2ZkkwVlRTRzFtNHBRY01XTnVTVnZ5OHhM?=
 =?utf-8?B?aW4yMVJXMzVUN2FUQldkVFIwdGE3RzQreFlDYkhLWitOYjRzWks4bWRlQk9K?=
 =?utf-8?B?eHU0OVRvRW5ZWFo3OVBBU2x6VHBkRGJyMm1hM09ocllvMWZpNDFJd05RamdN?=
 =?utf-8?B?OGl5MFdzRFZBcXRvMytGU3hjRVBVdjlGYk5LQmFBK0lkUW5iazhxblo5a3c1?=
 =?utf-8?B?VTFub0V0ZnNoN2loZUVNMmtPTGtTblpXZjBVQVg2bkxKOVdDUVlBOWNseldW?=
 =?utf-8?B?OXoyaWM0QVhZWnpPM0MxbVJLQnJKc0RoVGVOMDhDaVBjb3YvRlhCck5UZ2RT?=
 =?utf-8?B?Qmhid0FKR0VGaHFiV04vRitRU0x5K0xGWmxhVm12Z1Q1UzdkZUljNWJwakor?=
 =?utf-8?B?aDhFSkxiSWJNMWNIWmpzVzZRWmVOVWhJMVpkdGVNODMyd1JpRExiUU9icEhU?=
 =?utf-8?B?S0t4aXVGTDAwRmdxVlB5YWoycU5qWkdoYVBXRGpFZ3pEVTc1TFJWaDhSTVRR?=
 =?utf-8?B?R0FiUkNjTlExUG1vQlFlUFdmbVRPUHNIcnhOSWFjZUJqY1lIa0FuRWx4dCth?=
 =?utf-8?B?OVZMK0VQM0VkN0NUbk53YU5oYjVoT2o3cXQvQVZGYkNIbHVTN1NURUhDNFlN?=
 =?utf-8?B?MnlMRUM2TWc1Ly9taDFXTUtDWkF1clltMVQ0d1VoQ1JnYW8wYVBFVGlyMmsw?=
 =?utf-8?B?NTMxL0pCMWh3WGNGK3ZlRnllbDZRYTI0VHNvNmcwVkFyQmx3cy9DaHltV3px?=
 =?utf-8?B?dWJna3M3VmJaL3UvTUFhcVBMOWZqV0s4elFyUVRKeGxkTTNOMGRUU2tHMzVa?=
 =?utf-8?B?ZDFUemtsYXh4enluZld5aWhVZ0kxTmlBZkROcGVBQ3l6cHozQ0Izayt3aHRJ?=
 =?utf-8?B?dVV5ZXNwVXdZTDlQV3MwWkZlMCtrWVlQUFcyUWdSTHNLNjFjS2hCcS90UkVO?=
 =?utf-8?B?bm5VVFlnenFnNUUyMnVHcTljV2lJT2ZoTVpDZlNYYUwvemxwRDZJRUVkSCtW?=
 =?utf-8?B?WkV1cFJOUWcvVWF3bERyZ2p3OVA4M3JSNzBDREEwYTkrUU9DVk1XR3Z2ZHNU?=
 =?utf-8?B?YU9udGUzV2FWaVo1RXlTMWFJaHMrRlQ1RTN1aTl0ODJZQUtRaUdmTGNtdkdU?=
 =?utf-8?B?aUVHc1JRVFc3dVo2UTFlV2l6Z3Y2Z3R1bW5XaWZOY3NuUzNRWThIc1FyNG80?=
 =?utf-8?B?UWNzd1lpbllETnhmb2I1Zz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <86EF1CA571E09749AED3AF356C0ED32F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB10141
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF00009B9D.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bb6df25b-9860-400c-6c80-08dc75be5724
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|1800799015|35042699013|376005|82310400017|36860700004;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?ZGM2K29CL1JFR1cvdzJWdWlJOEE0OWZwZE9jZERlTHArRUxhSmpCMTVNUDlG?=
 =?utf-8?B?aHdNbFp5eG9ONTVJdzFLUjBXRkNVbzdsbkdTZnAxYldPR0ZlVnhKV0ppYnlU?=
 =?utf-8?B?Qk5LZVl2M20zK29rQWVJMWFES2NIdVpZeUpXQUJvcVRNUjA5VW9nTDFnZWFE?=
 =?utf-8?B?Mi93NFpCNWtEcHE0M2RFTk9Sclk3NVZhNmh0dkVmMXVRRDFabjlBRWp3T3RQ?=
 =?utf-8?B?N0F5cGtyenJkYTc5QURKUUxkOEs5STU1ay9LTWFiZ3pzdDBMMTNKSGF2cys2?=
 =?utf-8?B?VDMxY0t4SS8wRlpOQVB1Tkl5MUFLalRoMUZPcGhnNURqU0NZNHpFcmNPcUFz?=
 =?utf-8?B?U0NFN2lvWlhMNkdjd1duN2tycUtwaDM5RG12L1ZxenRxK1lIR3N1L0NqV3RL?=
 =?utf-8?B?YVNGTFdEaUE3TXlRQTJob1l0OFE2VjZQUWsrcXdQbWt2dzdiL1JLaVU3UGNu?=
 =?utf-8?B?d05vUHlLS3FFSXdBamhnaFZGSXc3NXdSeVd5UkhmT2daWG90ZFl1eitKMkww?=
 =?utf-8?B?eDhvbDZnVnJIZndXalI1QlFKK0c1VGNVbGVxZlVudlE4VU41SFZUZWZhRHJp?=
 =?utf-8?B?NmFQd1ppREJhU2R2RWUrOFlqMnlINVQxaHZMcGk3alJaRjRrVEJtSzYyb0tN?=
 =?utf-8?B?c0xnZzUrQWo4a0FJcjZHV25Xenp1c0FoRFQ3M3FRcnZkSXEzN2FPbFVnRGY4?=
 =?utf-8?B?YWNNNTVlYWZVSUFadVJMaVMzaWRmQ0trbzhJOTlZbmJQa1FuYXY2YmxUVE5L?=
 =?utf-8?B?N0JORXhzeXMrZTY3UkRXUnQ3M2NjbGRxbnlkNlcxNlBsUEdRMjM4UnVsQzlZ?=
 =?utf-8?B?NFlqV1FDSjluNU8vY25LQ1JrVnZwT0Vwd2VtNWRVYWJkMjRwOUFqeDBVcXV2?=
 =?utf-8?B?L3l4Kzg5b3MwREFtOHJXR21EbDBXY2lLNFRoWHNkZVp1MjkyTVJEOUY3V3E5?=
 =?utf-8?B?cGFLTG5tNUlrc2E2ZVEydm5JNXBXTzRPRVFwWXFTYmxETDBvMlc5S2VqczBh?=
 =?utf-8?B?Z0FvVlowa3k0Z1JkK01Rc2dZeTFLZ0JXT1hkVjdtVk9NR1pMV1Q2VXArRzBD?=
 =?utf-8?B?a1lkdmJlWGN0cllibzBwbGJnK2pFV2hRWUJuRGtzKzMvQ1pMVmo1MjNRQitF?=
 =?utf-8?B?WFhSNVBPNDdRdm9NaDZOMk5jdVN0dytzWGVzTHljZHd5RDVqc25DOVFJSVBO?=
 =?utf-8?B?TzA5R1hYdnMvbzliOUdxT1N5QiswdGtuU05tRk1YUHVSbXlwVENLL1ZQcHdD?=
 =?utf-8?B?VmlCK2d1WDAzOVJ3czI1d01Yc09Ub3NKckt4NzN1T0ZzSHVRK2xmZFg4YWNV?=
 =?utf-8?B?QkFGakp2QkxqOEh1Z1VzU2E3TXMxVGQyMk1LYXdEUmthT0hSaU9QZzErc2Ft?=
 =?utf-8?B?ajBGdW01dFVnUFZGdnRrSmhPWWQyd0c1SVN4QjcvVXArNTVzVlpKMGx0bkFG?=
 =?utf-8?B?OStPZC90K0x6ejR6MXRTYTcramYrcTZiRzRteFFHbEU5c3lLRmZpTXZMU0gx?=
 =?utf-8?B?SGVqU3lkWEc2OWNYMlhPUTRGUVIzcmtCbis2SmdGN3lGbmh5L0dJYUI2NkJp?=
 =?utf-8?B?MkdWaDVEMnhPVDRZMXVaOHZzRXRsU3F0THJnSWxad3I2M0R5Z0xxWXpYK0ph?=
 =?utf-8?B?cE1LRGRaWGVHKzEvWVZTZFVjNFJMdHBpTUprbS9UeXhBWm95ZjkxcXJHOWUz?=
 =?utf-8?B?RDk5THdBdnF3d2RJYUNZNExoODI5R1FscjZOZklocTZldUluZ21xRHVMNVZJ?=
 =?utf-8?B?NXRmd0VLUUZyb3ZySStyKys5UUFGKys0b3lTaWFJS2F2OUdHVWorZ3ZsbGdT?=
 =?utf-8?B?aHRHYk54bWUySEdLZVkvcVZqcjRjeVVLNk1XQ2F4dFkxbTBtb2xubkpCc0Zy?=
 =?utf-8?Q?m/l/xhwIHLTi4?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(35042699013)(376005)(82310400017)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2024 15:39:23.5306
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 36b1d862-396a-42fb-2760-08dc75be5c7e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF00009B9D.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7738
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 15:39:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63119

DQoNCj4gT24gMTYgTWF5IDIwMjQsIGF0IDE2OjMxLCBab3JhbiB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8em9yYW4uc3RvanNhdmxqZXZpYz1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gd3JvdGU6DQo+IFRoZSBmdWxsIGxvZyAoZnVsbF9sb2cudHh0KSBpcyBhdHRhY2hlZCB0
byB0aGlzIEAsIGFzIHBlciBVciByZXF1ZXN0DQo+IChsb3Qgb2Ygc3R1ZmYsIGVjaHQhKS4NCg0K
RnJvbSB5b3VyIGxvZzoNCg0KV0FSTklORzogSG9zdCBkaXN0cmlidXRpb24gImZlZG9yYS00MCIg
aGFzIG5vdCBiZWVuIHZhbGlkYXRlZCB3aXRoIHRoaXMgdmVyc2lvbiBvZiB0aGUgYnVpbGQgc3lz
dGVtOyB5b3UgbWF5IHBvc3NpYmx5IGV4cGVyaWVuY2UgdW5leHBlY3RlZCBmYWlsdXJlcy4gSXQg
aXMgcmVjb21tZW5kZWQgdGhhdCB5b3UgdXNlIGEgdGVzdGVkIGRpc3RyaWJ1dGlvbi4NCg0KVGhp
cyBpcyBzYXlpbmcgdGhhdCBGZWRvcmEgNDAgaGFzIG5vdCBiZWVuIHZhbGlkYXRlZCBhbmQgeW91
IG1heSBleHBlcmllbmNlIHVuZXhwZWN0ZWQgZmFpbHVyZXMuDQoNCkxhdGVyIGluIHRoZSBsb2c6
DQoNCnB6c3RkOiAvaG9tZS92dXNlci9wcm9qZWN0czIveW9jdG8veW9jdG9fdGVzdDIvYmJiLXlv
Y3RvL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzLXVuaW5hdGl2ZS94ODZfNjQtbGludXgvdXNyL2xp
Yi9saWJzdGRjKysuc28uNjogdmVyc2lvbiBgQ1hYQUJJXzEuMy4xNScgbm90IGZvdW5kIChyZXF1
aXJlZCBieSBwenN0ZCkNCg0KVGhhdCBpcyB0aGUgc29ydCBvZiB1bmV4cGVjdGVkIGZhaWx1cmUg
eW91IGNhbiBleHBlY3Qgd2hlbiB1c2luZyBGZWRvcmEgNDAsIGJlY2F1c2UgaXQgaGFzIG5vdCBi
ZWVuIHZhbGlkYXRlZC4NCg0KVGhpcyBpcyBhbiBpbmNvbXBhdGliaWxpdHkgd2l0aCBGZWRvcmEg
NDAgYW5kIHVuaW5hdGl2ZSwgc28gdW50aWwgdGhpcyBpcyByZXNvbHZlZCB5b3UgY2FuIGRpc2Fi
bGUgdW5pbmF0aXZlIHdpdGggdGhpcyBpbiB5b3VyIGxvY2FsLmNvbmY6DQoNCklOSEVSSVQ6cmVt
b3ZlID0g4oCcdW5pbmF0aXZl4oCdDQoNClJvc3M=

