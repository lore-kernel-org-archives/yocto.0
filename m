Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EADAFC48BF6
	for <webhook@archiver.kernel.org>; Mon, 26 Feb 2024 10:04:48 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.47])
 by mx.groups.io with SMTP id smtpd.web11.17094.1708941884139600906
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 02:04:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Wt3pa95H;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Wt3pa95H;
 spf=pass (domain: arm.com, ip: 40.107.20.47, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=L0EwGRK+yUOhxFC06Z/1VR4WYQ7iRLk5oSZg7GnyCs6hXzfD67pZjh0JLxxOsRoFhJMD68HFiBmy4g+0wy92j6bjbHIkOTX1yYJAONsZDPdvRcuMHdQnSYo9mabD3/S5/dDEHzDMfc8r5Mgnw+JbRF0KdN9ir71qR2xieONcZljcCZreMhERkYtIdaiI5YZvTvylJIWKVlBXc9W0viPyJwpxNL0RyzBfcBpXGtz+nkioGJNXdKDfxSSk4FnHISna8VksyVQic5C9Ed6/TVwqvdvHgtJKXeRD2JV3x5oU1a0A8u4quUrnY93ZtuMj8mpYIC0KHEDK7zZxeX8gqfCTOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kW1OezlQlgqNRSdrDbWo7C/evCZ51MES7PmyTahSFU=;
 b=WdYiz7VpS9BBt+Plpu26HRcX7S8ebML6GjsJNpRCehh7VbtEugYnQP+hnUKtm40gW1LdNN23Oy0S8Efda9hM7jlOll14AByIAP2v4i1nNJUScO+/syI/d8SHfIrG/MaUTNIgdgDPgqUeGvXsCdcFUBnMQWQELZgkDV0/VfS96cKTqjygZfpepGLcayitObMNN1LYNz6vsUvhHaOT0JOxqVT4GnAOWUJj/Tb0SzzL4V0b2zpWJiZ+nG++vSEpWhlEgPhsg7d52bMolC5HI96QZ7OkOHeNsEi8fGFveBweDs9LrKppoxhDN5QbFutSw0urKlKGygwjYG7fngOHy7mylw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0kW1OezlQlgqNRSdrDbWo7C/evCZ51MES7PmyTahSFU=;
 b=Wt3pa95H9qwYjDRS77WXnQ7RLZlyr4kpKPjqNJQTPWpRMNoi/mQRsRlGZrZsUR0Lyo6Kn8gmDI73109uy9PTzQQzxsIjFk0JNG66iwjzedlJXbmuTIC4EhDJKWQ6OelZa4hboUPhVCzOiWba71V8lOSJsaxHYGc92BWEQIYGsFE=
Received: from AS9PR06CA0274.eurprd06.prod.outlook.com (2603:10a6:20b:45a::20)
 by VI0PR08MB10559.eurprd08.prod.outlook.com (2603:10a6:800:20f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.33; Mon, 26 Feb
 2024 10:04:39 +0000
Received: from AM3PEPF0000A797.eurprd04.prod.outlook.com
 (2603:10a6:20b:45a:cafe::a4) by AS9PR06CA0274.outlook.office365.com
 (2603:10a6:20b:45a::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.49 via Frontend
 Transport; Mon, 26 Feb 2024 10:04:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A797.mail.protection.outlook.com (10.167.16.102) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Mon, 26 Feb 2024 10:04:39 +0000
Received: ("Tessian outbound e358842a0ad8:v228"); Mon, 26 Feb 2024 10:04:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 1d7e15f5f3d640f0
X-CR-MTA-TID: 64aa7808
Received: from 41063d957afb.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id D4B8394A-53FD-464E-AE44-78D7B0F578E5.1;
	Mon, 26 Feb 2024 10:04:32 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 41063d957afb.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 26 Feb 2024 10:04:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jJgyvrTKd9jmpeflISP9eln5IazO5Sz1qWElExBzXafcZzKUMKrgFObn+AeFWxONTVHZ1Tj6Yv5ECWfMAg5A+wWj/y48rGeevKiXt6pKSPiYMX5KSOu9JnykvaA3Bjw3mgtA8znvNnxcoQVrotvVGsbQ9AIY42wh1Ol/6tl06gZeERShD83m/5pvxiYM3tLL0TNYydUke2359lioVmA1x3ehZRrgW2q1BGaj0l7CK/9EOUdpo+IKiCSYjP7QJCcAwGPaBZwoh6FdmBFVM5lWgouMqmBWHzvHRtG8li7/VZPDDUb3yML3g4NV9mkt/gqWQ8WEDZ70mrVQqaVW7pzmMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0kW1OezlQlgqNRSdrDbWo7C/evCZ51MES7PmyTahSFU=;
 b=Zpzr15KGf93SHliMvvsnAsdsDqzSu6TZnn9DjNBE1FDwbSAGciPiFAZYltj/yreZaXP04nGW8q7h5WmygYnyzUy1MlicIQu9pmqTJUHUCcQgAg2LGJuhzCbi1M5QsxVAM9pIvwlThrZKNki4CxuANfR9uThfZlssf86T0k5blZF+c6N5VXBqX9LqCLdNcyZJIM8iHCskQUhdD+g0PvyKqd53ya60HhYT3iMjuVssoOGD2eMUiZ6VNYCOMokh9ohe+MBha0j7CefjU//rHvHqkBMSTBTOyUkh9nnhIzwZAIuCJTHYFvA4+QHETS2zn4eumdTtsPkQ1UcoiszBz7vOQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0kW1OezlQlgqNRSdrDbWo7C/evCZ51MES7PmyTahSFU=;
 b=Wt3pa95H9qwYjDRS77WXnQ7RLZlyr4kpKPjqNJQTPWpRMNoi/mQRsRlGZrZsUR0Lyo6Kn8gmDI73109uy9PTzQQzxsIjFk0JNG66iwjzedlJXbmuTIC4EhDJKWQ6OelZa4hboUPhVCzOiWba71V8lOSJsaxHYGc92BWEQIYGsFE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU5PR08MB10678.eurprd08.prod.outlook.com (2603:10a6:10:528::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.34; Mon, 26 Feb
 2024 10:04:31 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7316.034; Mon, 26 Feb 2024
 10:04:31 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"acox@reliablecontrols.com" <acox@reliablecontrols.com>
Subject: Re: [yocto] Machine qemuarm linux-yocto-tiny_5.15 Missing ext4 in
 Kernel
Thread-Topic: [yocto] Machine qemuarm linux-yocto-tiny_5.15 Missing ext4 in
 Kernel
Thread-Index: AQHaZrEffc3Q2BH+ek2zhuvfNDpneLEcaPIA
Date: Mon, 26 Feb 2024 10:04:31 +0000
Message-ID: <FB06F67D-5C3B-4585-BAB0-394CCE05EF71@arm.com>
References: <trdP.1708731374055475315.fHPK@lists.yoctoproject.org>
In-Reply-To: <trdP.1708731374055475315.fHPK@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU5PR08MB10678:EE_|AM3PEPF0000A797:EE_|VI0PR08MB10559:EE_
X-MS-Office365-Filtering-Correlation-Id: c652c3b9-f4cb-484a-1422-08dc36b2587e
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 nYoSnWBDqmfm872Xg8ZkS/vcKQbvomal0djaIB7VTWzUqnkPJFmXzu+juE69B6A5qlreYohAjFj6/jQEKJ0sKNhFZe7nJYmobIuBSbzG++RzNO8vbE7xSutjsRKHyYW3huPxuhp+C822OIz6s6XaBwb31x9WiaJ4WuIFC6YRpKJU88kjuaSVhivwHx4cvAsCxWSn7FXH3VE8nZxVs/MZzXU1RkxC8GWkNmdhTk0ZzAqsSUmmL5UqvTGYG/nkivxq0zupVSzTIx23ut5CAVtcTX3S70c+hiyz2T2huGqM+hwmt7pizVgBkiL0tjxMjosZKAhr03z6eieqePAOL76aCLfr532A+IZUePtoQpNYyFDVr3XOp+7VIfxH/6wr5mUjs2TE4XjL5K/ju2Okv5vXHHHHGE48CJ1ryTFB8dc8l5d/ntPQ/MYsMUM+VKpcblslijOQDBBe9lkkBXargxMRgI/twSYqMBexEUuXTwMHe3Y95yheQbzt0by6s4PZbUMECX4gEDSzNstyyd7HTgqgbJw15EmLiYX2GpaCsfqwrCUbQ1z36sS5oCmqxtpYWsr13+KDlhZwX+b1doDD2KxRRkEHSikpwd473N74cgpPf4t1ntgauwtlv6thOJEubsKf1O0JDE5QDns2yI0nywa/6oAOaRVfzPawiEsQYQwGEswRcPwVAQgo7HKtm/hHU0UWVzeY0umdoiKdxwUL/ZnMrfDmvvkpu1RdDLd5BTqutdE=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <42D16206B31B9E4197B98A8BE4B990A5@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10678
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A797.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b8c92ec0-074d-404f-997f-08dc36b2535f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	cHSS1Pgv9O6/9S276MX7+UAtb6FBRhbcjDUy7dWbUGRSWvVrviFhEH8D6GMDA+a17P5z80dgUG2PjuiSy7OE5zE/7NW6dYm6tf5fmFiB/IUgT59TSjzFmJoyKemGTIJ61vHDQ3e3pvOBBDQQxtaqi/rcFwKRfgI2I9hAWLdtRpIxQOCl5Vbb/Cp0GSUcHLFQCB5Vseh5c/nOULrOAk/saE0qRXOYe0UALUUH1/mCBM42sANwsLkYnM9F96yywk1PDGx1n/3FNhftnFEu0Ul+BBAIKW+KYwCAM9GCxYOTEQjHX9MF5gl0xUPMDjYn7wqSgZP2Pi2kMSYkh8OYkSS6BWJYInaCZcFG0IdM8sQ+1lY/desY0D7mA8vCaH0qI66KQxMMYjX5/Pl/nd1JBmJND6Z+7xuo2jLuhPNo8NHo6uDgw0Z7AbBRQOegUKISOMpFHks0nKaoVagEiQXvhZ5MhICrk681s73vRueFiKcs4/Dy4RXARcqbOxAxJ9x3+mwDo/Rg+WMKnXQ+HoKugaA5ZcW8UF18/05mVMkRIgvuNj7YRHUXPv9YpaWLfPEOuo05s1LEk3tGUtXmWbJpvFODqJSUDjTSpEDhPUc2Lf3AKv+d6UOmBuhR49e2as5kDuz/K1E+nTaGCRBHXdu/HF50/3fETcGClJ7VBh008x3v6ywGabjkJR4GSbXO0f5nlqyr0K7mgSM0ei538/ka2+IlkDzmIcZfHkCacbzKBxIA1R/J+OWBLWuQpFlXzyFRFGOJ
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2024 10:04:39.5879
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c652c3b9-f4cb-484a-1422-08dc36b2587e
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A797.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI0PR08MB10559
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 10:04:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62603

T24gMjMgRmViIDIwMjQsIGF0IDIzOjM2LCBhY294IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IDxhY294PXJlbGlhYmxlY29udHJvbHMuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3Rl
Og0KPiANCj4gSGF2aW5nIHRyb3VibGUgd2l0aCBxZW11YXJtIGZvciBhIHRpbnkgZGlzdHJvLg0K
PiANCj4gTXkgc3lzdGVtIHdvcmtzIGZpbmUgd2l0aCBteSB0YXJnZXQgZGV2aWNlIChhbGJlaXQg
ZGlmZmVyZW50IGN1c3RvbSBrZXJuZWwpIGFzIHdlbGwgYXMgcWVtdXg4NiB3aGljaCB1c2VzIHRo
aXMga2VybmVsLiBJdCBzZWVtcyB0aGF0IGZvciBzb21lIHJlYXNvbiBpdCdzIHByb2R1Y2luZyBh
biBleHQ0IHJvb3RmcyBidXQgbm90IGNvbXBpbGluZyB0aGUga2VybmVsIGZvciBleHQ0IHN1cHBv
cnQ/IEFueW9uZSBlbHNlIG5vdGljZWQgdGhpcyBvciBhbSBJIG1pc3Npbmcgc29tZSBjb25maWd1
cmF0aW9uPw0KDQpsaW51eC15b2N0by10aW55IGlzIG1lYW50IHRvIGJlIHVzZWQgaW4gY29uanVu
Y3Rpb24gd2l0aCBzb21ldGhpbmcgbGlrZSBwb2t5LXRpbnkgKHdoaWNoIGp1c3QgdXNlcyBhbiBp
bml0cmFtZnMsIHNvIGRvZXNu4oCZdCBuZWVkIGFuIGV4dDQgZHJpdmVyKSBhbmQgaXMgYW4gZXhh
bXBsZSBvZiBhIGN1c3RvbSB0aW55IGNvbmZpZ3VyYXRpb24uICBZb3UgY2Fu4oCZdCByZWFsbHkg
bWl4LWFuZC1tYXRjaCB0aGUgcGllY2VzOiBpZiB5b3Ugd2FudCBhIHRpbnkga2VybmVsLCB0aGVu
IG1ha2UgYSB0aW55IGNvbmZpZ3VyYXRpb24gdGhhdCBmaXRzIHlvdXIgbmVlZHMuDQoNClJvc3M=

