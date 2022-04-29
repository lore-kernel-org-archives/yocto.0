Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2999C433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 12:15:17 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.42])
 by mx.groups.io with SMTP id smtpd.web08.9197.1651234514527931312
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 05:15:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=LhwgNphM;
 spf=pass (domain: arm.com, ip: 40.107.20.42, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=c8R941JuYETn8btnP4+iUmSVon3g/dIFvNyb2bRv3I4zuiWPs2LLin2IxIEiNqrLRanDdmRaCEON6xaIEtD8poKYF3IPhlD1PADWhSyc9RdpXS5UBcpZuezgmyHh3B+Nqqo4YdcaDOmiWU8I3BVrmq34UITxHnteYehJznPhp8DtpJcbgvzKIs54fZmNrNpwK4Ayy3glBZkSIqrvJRIZVMpT5NPvBYiwELO1r+L/2zNjNLCbPi93bFBCaNdJ8S0GNgwOMO90WMPQwbjNCqEdbV0D1+agGauESXNoacSQ9q6D7XDunNfweGjx3h6dwveMM9qO/dMuGoPRXW6jEXs7tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knKAXr207PkpRT0cjWc1FXvl8mYIi6+FM1PvkX6AOG0=;
 b=Bw9Egd0HzPoS1piZfVjYCxgwBnkJmQWNWDl/unvKuYGZl2BaT5+SBEQr2ug4KXRQ0I4uJfZNKTbpxBdD/9gYu7/6D1vn2RmzdjMftxfZKoZ19oXLbcnzCJCQHITN0/VMAKI0mDjXOOCLhbNPF3inkqGtUSwq0kW4oesmPWizLAOxL6hHAoYJrNM+LapuOF6USRyBR3/OikiMTd52jbqq+3DR0FIZVMJxyaOxWflRlP3MY4yRNI6Md/hyvBx3M/SXn+jZmfa6U8i4LHB9913V9bGl1/IxilVpSi+agaVxpeE8a7JB2cm0Ov476iYcb7vVlmNivafE9kdhD/JaBdSIWw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knKAXr207PkpRT0cjWc1FXvl8mYIi6+FM1PvkX6AOG0=;
 b=LhwgNphM+UdAra3i5JvOMkDe3Dn3wpVKIHPeK17lprZwlpvOSMBgw+x6G+Iv+xMQmzkPxpIbHI0RHKo2b5+9oLZRyE4S1Wa/nrg/icWjHRIZjBhrNN7SMC3Mycabeqc0cY31DJtk/qQo53Khe34EdNhpaRIXVbaWZDMG5rKBlbM=
Received: from AS9PR06CA0498.eurprd06.prod.outlook.com (2603:10a6:20b:49b::24)
 by VI1PR0801MB2111.eurprd08.prod.outlook.com (2603:10a6:800:8d::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.16; Fri, 29 Apr
 2022 12:15:10 +0000
Received: from AM5EUR03FT045.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:49b:cafe::55) by AS9PR06CA0498.outlook.office365.com
 (2603:10a6:20b:49b::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.13 via Frontend
 Transport; Fri, 29 Apr 2022 12:15:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT045.mail.protection.outlook.com (10.152.17.105) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.12 via Frontend Transport; Fri, 29 Apr 2022 12:15:09 +0000
Received: ("Tessian outbound ab7864ef57f2:v118");
 Fri, 29 Apr 2022 12:15:09 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: f0c3a2be53b08661
X-CR-MTA-TID: 64aa7808
Received: from 0ab1e2c2c642.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 21665F7E-0E01-447D-968C-353C84DB5D0C.1;
	Fri, 29 Apr 2022 12:15:02 +0000
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 0ab1e2c2c642.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 29 Apr 2022 12:15:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=keu6wVGB+waPZAonPf6bMZMjToWYK3DPhzP0JZ9D4BQMMg7zeItlpMIRVGU3efi5gwGg1SdueOkkP3V8O8bHVV4DMMr/ByBSg943qe/ieyuEgBiLT4YbnSr5TtMEkvvUuE+O+HG9fAjqTmQMLyQFNwn/lulWp2+yfI5yuehRulBBFrQqXSZI4pgrdRdDQXfREVDsxRIdviYuEoh977yIjTUbmOAhEPeaW/Tpyu2sGTrnQLcm9Z3yWqUitWGHYmafy/ukfjJvTZydUdOJ64C8zegW3oEtltX5DTV8oUCIwuF16iRLgDgLUoSjEejmvItVfk3BFyoYDiLOTA50fWa48w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=knKAXr207PkpRT0cjWc1FXvl8mYIi6+FM1PvkX6AOG0=;
 b=JsN/mk9VSWKEKmh3MSij919QL5TtuhsaNxF+p4SlU52P3QvvLQOdl68r09FaiuhT7quUCIIJQN/sEWg+m/hMmTJRhEJVKB58PKnVc+FSA8yNwRWIHMG5wOIYHd86+9raZagCsNpuPmnbHrLQ2r7bH7Xk49auR+5sqz2TjVQp8d4E8WfrOb2TpnymgU6Lje3WdEdg/Usb7YSd+URYQ/k9BAVN8JF3O206bc2YIQHroDCwQ5BDKrxJmItAW1wDQQJbtcMDaHfeCm+ZP3tD3qxLlKvTjmHWATIyQ1GWfB0ni00BuDJy/ZxxN1PcSMWEv31qX0Uzmc8EvC9SH6lLK9NOSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=knKAXr207PkpRT0cjWc1FXvl8mYIi6+FM1PvkX6AOG0=;
 b=LhwgNphM+UdAra3i5JvOMkDe3Dn3wpVKIHPeK17lprZwlpvOSMBgw+x6G+Iv+xMQmzkPxpIbHI0RHKo2b5+9oLZRyE4S1Wa/nrg/icWjHRIZjBhrNN7SMC3Mycabeqc0cY31DJtk/qQo53Khe34EdNhpaRIXVbaWZDMG5rKBlbM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB6349.eurprd08.prod.outlook.com (2603:10a6:102:15b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.14; Fri, 29 Apr
 2022 12:15:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::8af:d35b:6628:5013]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::8af:d35b:6628:5013%5]) with mapi id 15.20.5186.021; Fri, 29 Apr 2022
 12:15:01 +0000
From: Ross Burton <Ross.Burton@arm.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>, nd
	<nd@arm.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] config.json: rename
 meta-virt to meta-virtualization
Thread-Topic: [yocto] [PATCH yocto-autobuilder-helper] config.json: rename
 meta-virt to meta-virtualization
Thread-Index: AQHYW6/Ak17LG+OoZ0SkqYhg1fQEFK0Gzh6A
Date: Fri, 29 Apr 2022 12:15:01 +0000
Message-ID: <38595E10-F01E-482B-91A7-65BB743CEB06@arm.com>
References: <16EA55990FE178FB.11702@lists.yoctoproject.org>
In-Reply-To: <16EA55990FE178FB.11702@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3693.60.0.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: a500deff-7803-40bf-a66f-08da29d9e7d5
x-ms-traffictypediagnostic: 
	PAXPR08MB6349:EE_|AM5EUR03FT045:EE_|VI1PR0801MB2111:EE_
X-Microsoft-Antispam-PRVS: 
	<VI1PR0801MB211157B2A969FD61567E8C3AE8FC9@VI1PR0801MB2111.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 4rptBJzevOORmzRXLWdYxez1KPU77sHx71aVyddOL8LO6S30WdCZxG+tdvHpWhLrWmfUxEIu95Zh+OihgwM0JRe4hRZ1ijbCvlQkZiNG4+cAOKaRG+2Yxdz4QIqOo9pc207+drO0Jq0ocSMBKESMAossm9BpQo2A1tvrHMPLS1qrj/6EuT+bYZn/QG3ZtDiLb1oq+uwat2aGvfF5DHmjW2wKENtwkvzUB8KrlC80be74tUdo2gIMIYZsWo83bSqJwJ1BSBPiDjIje4fzec7Rb4+CyTou6qd4qdfxWGkvat6Xzzj0cyk57klb1/i28mM9Yt0fydqOEXErcZowqYCe6CJjWe7TRaLXHWmWvm/fjplA97iD8lztITi3bOimT5neCGeWCm0qQYoUnLgjEnVjqaP8dWrvH+RmSSFQn3guVusg/GNI4fSa3iHsaxNbxHbIKGWr7U/YVQPafRfL3Qz26o+kFjVAE0amF9Efq0IUbPSsel2Ii1znNul8JsDpI8w5c6n9khkT5UdYr/VqEZAQ4mwpoS7FIQhoCEFOcR+od9F6GzM5/3vOxAQsQ+wXMfTCLX/ipXXecrQtXbb8CIUfn8A+bAxIayOV1kTlCcZqzKhktK8Mpicv3A2D6A3IaIVOgnuOEnt3hPtvR2v+HF4i5dDO4MXklTZlA6UWs8j/RhEfh+HP3zKI0qnHfIDn3NYehJ8jNLHlhdWusjN942SJi38VLEzlPJTo61z85XfGt74qY4EWP4hsfuW3sYlxWS0zNFpHvZUQ/tTQMHFVwaR9BD9C+Bn3IRhrKSQTScYL+KrdDRL8Oxxppnn0xSyGeRqz
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(66556008)(66476007)(66946007)(38070700005)(38100700002)(8676002)(6486002)(66446008)(26005)(4326008)(36756003)(64756008)(186003)(2906002)(5660300002)(76116006)(33656002)(91956017)(122000001)(8936002)(508600001)(83380400001)(86362001)(966005)(316002)(71200400001)(6512007)(54906003)(109986005)(6506007)(53546011)(2616005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <23DEB62157DA674092E83485D3608987@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6349
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	327d0fac-a36b-434d-2e98-08da29d9e276
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	N/cnPyAHEi+w5wsvqGRqCOFSdrVXHOG2CVlzPwtmhVPMs7X3vsuJZVVkD/1CLnixU18NfaYHUM5fGmsy9X9K7+5nODhKmUc3Fk1l+fA7ObcCgk++dwDNBkEmk32c9f8lwrKexHhEvXrRt0yE2UQhTQRX37fAxwpAAsXKvSqiRGVMbTmBTHL7ZQ3bwQ2AhFTo4KKUjVAiFfg98v3ltkn/BtOYxAojieC0jrR7HbANJMPwHCkgPp0PU1UYbJfttKMucCnlMRyakCIEr/JnbkA4z32eSQbuJDzV9oU2g3txtKU6NS8SejsLh7d3qGhUPKkg3FFaw1OEq15VyeO5oIq6OtdgkdvWWqRMgG2cu6CDGfdn1U0UFIFhDVldDp98CAdCFS+8sS3yeZPlPDOUcycERQz3W1BUgI5iRzFI7ZnFBKR+Z9/wH9N1wtT+Dyzphb7D2qHKBgGqhKepR6v+USEJK/v/jUkhcJXmAuB9YZ0RPIq8ZhLivLSENC5v8CV8YO9lyQ3B6Jo14RMTWuJR7GtJgh6Zi4OS0eLI3ZRBBKXq5suSPzgmY4US4JXuuQVv3cTtjIE+5og3m7jGv/X8EGEZzvhzd9rhX6dxg3LRv+JTCLGZ9agWcp4TeAsKwtHOIAKfsjJRISFc/yyyqpWdbm5i/G0Z8CIuda0FxEEwSiYS8lmtY8h3rrCCidXxgYIazGDfkaBgQlTNX+HWQi0hm73yh+5C5jFsT2z1WapulhBMc5w7pU8v2XP7HMScJPURGY/5WD8bLCcm9i/bVLwGZ6gzAg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(40470700004)(36840700001)(46966006)(26005)(336012)(40460700003)(5660300002)(70206006)(186003)(36756003)(966005)(508600001)(36860700001)(6506007)(2616005)(54906003)(47076005)(6512007)(109986005)(70586007)(82310400005)(53546011)(33656002)(83380400001)(8936002)(316002)(86362001)(356005)(2906002)(8676002)(81166007)(4326008)(6486002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2022 12:15:09.9902
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a500deff-7803-40bf-a66f-08da29d9e7d5
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT045.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB2111
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 12:15:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56956

SeKAmW0gcmV0cmFjdGluZyB0aGlzLCBtb3JlIHBsYWNlcyBuZWVkIHRvIGhhbmRsZSB0aGUgcmVu
YW1lIGFuZCB3ZSBjYW4ganVzdCBsaXZlIHdpdGggdGhlIHNob3J0IG5hbWUuDQoNClJvc3MNCg0K
PiBPbiAyOSBBcHIgMjAyMiwgYXQgMTA6NTgsIFJvc3MgQnVydG9uIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxyb3NzLmJ1cnRvbj1hcm0uY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiANCj4gVXNlIHRoZSBuYW1lIG9mIHRoZSBsYXllciBpbnN0ZWFkIG9mIGEgY29udHJh
Y3Rpb24sIGZvciBjbGFyaXR5Lg0KPiANCj4gU2lnbmVkLW9mZi1ieTogUm9zcyBCdXJ0b24gPHJv
c3MuYnVydG9uQGFybS5jb20+DQo+IC0tLQ0KPiBjb25maWcuanNvbiB8IDIgKy0NCj4gMSBmaWxl
IGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvY29uZmlnLmpzb24gYi9jb25maWcuanNvbg0KPiBpbmRleCBkYzU5ZDdmLi5hOGQwZTIwIDEw
MDY0NA0KPiAtLS0gYS9jb25maWcuanNvbg0KPiArKysgYi9jb25maWcuanNvbg0KPiBAQCAtOTMz
LDcgKzkzMyw3IEBADQo+ICAgICAgICAgICAgICAgICAiQkJUQVJHRVRTIiA6ICJ3b3JsZCAtayIN
Cj4gICAgICAgICAgICAgfQ0KPiAgICAgICAgIH0sDQo+IC0gICAgICAgICJtZXRhLXZpcnQiIDog
ew0KPiArICAgICAgICAibWV0YS12aXJ0dWFsaXphdGlvbiIgOiB7DQo+ICAgICAgICAgICAgICJO
RUVEUkVQT1MiIDogWyJwb2t5IiwgIm1ldGEtb3BlbmVtYmVkZGVkIiwgIm1ldGEtdmlydHVhbGl6
YXRpb24iXSwNCj4gICAgICAgICAgICAgIkFERExBWUVSIiA6IFsNCj4gICAgICAgICAgICAgICAg
ICIke0JVSUxERElSfS8uLi9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLW9lIiwNCj4gLS0gDQo+IDIu
MjUuMQ0KPiANCj4gDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQo+IExpbmtzOiBZb3UgcmVj
ZWl2ZSBhbGwgbWVzc2FnZXMgc2VudCB0byB0aGlzIGdyb3VwLg0KPiBWaWV3L1JlcGx5IE9ubGlu
ZSAoIzU2OTUxKTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vbWVzc2Fn
ZS81Njk1MQ0KPiBNdXRlIFRoaXMgVG9waWM6IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zy9tdC85MDc3MjczNS82ODc1ODg4DQo+IEdyb3VwIE93bmVyOiB5b2N0bytvd25lckBsaXN0cy55
b2N0b3Byb2plY3Qub3JnDQo+IFVuc3Vic2NyaWJlOiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVj
dC5vcmcvZy95b2N0by91bnN1YiBbcm9zcy5idXJ0b25AYXJtLmNvbV0NCj4gLT0tPS09LT0tPS09
LT0tPS09LT0tPS0NCj4gDQoNCg==

