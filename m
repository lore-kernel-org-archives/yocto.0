Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5568EC41535
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 14:53:10 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.63])
 by mx.groups.io with SMTP id smtpd.web11.15342.1702997580944983344
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Dec 2023 06:53:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=QvUp8GoA;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=QvUp8GoA;
 spf=pass (domain: arm.com, ip: 40.107.105.63, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=VqDy00FO6+rwnUSFNcXotxGcCdl79AlZasJCDES9cCN7ge+8nbsusMgWkoTvwgi2CJ9Ud1KQ2YvbnMrlIcaA7BbZz5lTl74MScoJPCd1m6E22NQfY5bBddhHkGBJmu9fX8r9qwavvYE4gQV4ysx0VuqFaFtzLXodmimqefRVrIhVB3Yn097imuDaEa/U3Tnb2GPwxSPB0gL20XP503ZtfAwI3VHjd1nIoYyFLT+cuELx89LLDT9bsnUpmiqk9h1wSD3fVZhcrTZe+ew/4Jtgw4d5JoAx3BeHzCsVKQCQZUAC9hZ5qi0rYHK4OFCkVKnTAv4+6F+6+3WPj9IfdqnKMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sz/44OdPnbR3Hi2I6CXP41hIpJYDdgdFyDPAHj80sjI=;
 b=WL9pvwzpF7HX+KneRjls1CHs2OuoVy5+FphX/XzFt223nJWRyROvLi0p0YL3y7D22d4f2wcIv1bLuhyZcjGRt8Gbn9hhWkGIEE79k3PkENbXNInpy+yUQySwzkAOol7CctyHmK2qyYXIOFLzfn/c/oa0l/wALtsDWntPqfd+1iDd7Nhj/G7uzqR/dtVE7DCs6rv2Pn2FN+ymZ1NofCZdyOoqdU/TN7j1lDJ8N5GszBclePoTSCxilogPiVFNrG9SbKDMb15XQyntN37nfjbIxrXfM7yFcddAjBmqipulTZedcoyckwjND3fv8hh0FmtpxZszAZJEhNiqwLcP3Oe2Ug==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sz/44OdPnbR3Hi2I6CXP41hIpJYDdgdFyDPAHj80sjI=;
 b=QvUp8GoAIUaMfiEZCjp+R+cPPy3mPgGYY7EYCkpFPLuZGXug1xkhS7BZCOBiVSIUiGM9oa3LRB7fhn4U/5akcPDoxHzEV/r2Fc5F2ZTW4XYSxC51QJc1nNNA8iZ0mHU0iT4bc/xUPHUYHcq4sB94Y6453TqGlOzWaoaAXWBN8oU=
Received: from DU2PR04CA0338.eurprd04.prod.outlook.com (2603:10a6:10:2b4::8)
 by AS8PR08MB6728.eurprd08.prod.outlook.com (2603:10a6:20b:396::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 14:52:57 +0000
Received: from DU2PEPF0001E9BF.eurprd03.prod.outlook.com
 (2603:10a6:10:2b4:cafe::28) by DU2PR04CA0338.outlook.office365.com
 (2603:10a6:10:2b4::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38 via Frontend
 Transport; Tue, 19 Dec 2023 14:52:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9BF.mail.protection.outlook.com (10.167.8.68) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.18 via Frontend Transport; Tue, 19 Dec 2023 14:52:56 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Tue, 19 Dec 2023 14:52:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e70fd172b5944a3c
X-CR-MTA-TID: 64aa7808
Received: from 765100aac7ca.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 57E7C140-AE17-449F-8562-C87F1E6F5F0F.1;
	Tue, 19 Dec 2023 14:52:49 +0000
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 765100aac7ca.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 19 Dec 2023 14:52:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DY9r9QwcIQy7H6YjftlBYXqnluO72i/n7CkhyePpLoNVJeHzosksDFr4JH5IrBjzZYJPqe04KkgSpjkUTXWhtuD31nz/N6bf9zLYjRd/UjWMFz8LdQhO8S/A3pVSI3KebX6wnz1U/wkOUG/Qpf9uH9drnwPMRdJ8b4ImW4d3ZV2eAIca4A+aTXxf3jpMYLlzdKuo1bim5TLAyeootu4+JFLrVDVdbLjuWZTXe7i4uuqxKUqgWizZ1x7UOeyZfsabglv5FYCeKqaXhvibepPYU/o0mDBo5Lv1PSCkkeM3UDSSCNMu0OkSX2rXOXysic2VVvXmNLzdOpp8WX/6bKKL6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sz/44OdPnbR3Hi2I6CXP41hIpJYDdgdFyDPAHj80sjI=;
 b=GVal24LveGyTlkKD5Kvai3spF+4UMS1T1eCkkL9astMRiydmbVVsGvd8204mPiayIu652kh3QYI9f4jHJ2SqrEVfiQXFwp0ZD/T/3qZiDGbamSsWWO8KV1mJlTaOKh/8veyTvqDbS+3DPuwlBUEl47VpadxheXTGPST53Yzn0bOqcDsHyV76R0Ha1TaD4eNyqJDfo5r6Bto/pIxRNXAfJRCmfGtz0Fo10FLGKIxVTWdYCu//cru2N6ucHmrGFWxpwx2EeFHN3g7tKdA+NpuVwIzWwYORLSem4EkNsa5BZi/a0Ka4FzqK/f9JliFqd4etYUhITk+PVXv8rbitGENzkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sz/44OdPnbR3Hi2I6CXP41hIpJYDdgdFyDPAHj80sjI=;
 b=QvUp8GoAIUaMfiEZCjp+R+cPPy3mPgGYY7EYCkpFPLuZGXug1xkhS7BZCOBiVSIUiGM9oa3LRB7fhn4U/5akcPDoxHzEV/r2Fc5F2ZTW4XYSxC51QJc1nNNA8iZ0mHU0iT4bc/xUPHUYHcq4sB94Y6453TqGlOzWaoaAXWBN8oU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB8948.eurprd08.prod.outlook.com (2603:10a6:20b:5b2::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 14:52:48 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 14:52:48 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "an010@live.com"
	<an010@live.com>
Subject: Re: [yocto] QEMU core-image-minimal cannot login
Thread-Topic: [yocto] QEMU core-image-minimal cannot login
Thread-Index: AQHaMoW1hIwbWSn/LEm6VjNdWyQfnrCwqrQAgAAGRoA=
Date: Tue, 19 Dec 2023 14:52:48 +0000
Message-ID: <C4938758-12E0-421D-B6E8-F79C211AE3FD@arm.com>
References: <njnq.1702995268044494142.UDY1@lists.yoctoproject.org>
 <30615.1702996212073510551@lists.yoctoproject.org>
In-Reply-To: <30615.1702996212073510551@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB8948:EE_|DU2PEPF0001E9BF:EE_|AS8PR08MB6728:EE_
X-MS-Office365-Filtering-Correlation-Id: 62b7c445-59d3-4521-4712-08dc00a22feb
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 0CAKDVDe+WGALnJM6UHvjrFanyJ7MCQNDcomjDnl/H0ldzt6pdQmZ5Ycw/nsFRiH1mimywkAEDptKG6MRE3AxUMpmKcVvxB6DMfXl+Nhd8ti9zQoaxwuGOaw4ZpOVlIR72iED5PtqlvTXkNah9NLM41aBLFN9lnIAzpSWeQXO2c/MzqJV3/JC10juXR5g7TKXFVZTiHulqZc8IZOZ7smSaEX5C97DY7kbbzdKn5j52FYz/nPX0Wrm/JC084gofR4JDc/y1eebNxd6xzUAhqq7xoTiOrRoijf9+af52+ikBknQypEa1v9MpCha1GOdbkj3N+KEpNmI8Zg3dbDrUX1jJxnWvFLAQJvbjrXt65gDAtN9LU/LWbX/aCdUZGmDmO77K0wpt5zGsFUnJM2PqlftAGs6D/I/6ZL3ls9Ob9n3QOtDbl3bBqn17y3tKhpQg/4hMAmWzyiVfYbzqiMRnCVoK4TAHzZDSeoxkLkLo0wbTyDTvETgglukO23HVmRIk67RdHg+K686Ac1HevgTpmKInRJLx+JNUvfV8SjmqPluNKPmhXAL2b1Vo7qdoISx2FNJ84pBFpf4edlM5d4uQKoKZKLktaJ1qJIn3mDr9JS8wJBcjz1CtHN7d2RtbLcZzOLV5+Rg68gCg7krDnPmQM1eg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(136003)(366004)(396003)(39860400002)(346002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(26005)(2616005)(6506007)(71200400001)(6512007)(53546011)(8936002)(83380400001)(5660300002)(4744005)(2906002)(41300700001)(478600001)(66446008)(6486002)(66946007)(66476007)(76116006)(91956017)(110136005)(8676002)(64756008)(316002)(66556008)(33656002)(36756003)(86362001)(38100700002)(122000001)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <32B0FC27D8761F41924D3D02A8415A6D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8948
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9BF.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	653beea3-8e88-4574-89bc-08dc00a22ac2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xK+DuYOdn+M4dNiP1HRGNBfDzudWWEVVsmf8oAESTrr9lKYK2/G7qYbI3n6afk+KV8/NZ5LsyVlr7IHDTQsg8wAyXDDYyRcvI7lnrh32r4KHzNouLrgUZZFHAPdu4hNTvILDY/cDkfDuxd3l7IFnSI99Glu/SoDALgCHC9MdpGlc9d23zrYs9Lha8XYiRXul6Qsl51RVc/HN19ff+umr+gbywapTlmOziOQmCY4czXeDhP8TWrxSioangTX6wj+D+KA6aJDQOdQVKcxQe5J/sqIbW44+30I4R/rlxvlkHMR5JMnD2Z8zTTYAi5UAOz+z+wkGYD58qIWf1fHKa7+/zE4N1dE87//89SKbeZX107zC9r7yvLAKAZgHmQ5stjkRtTmEjaeVbVg6wgOK4INZKfwMNuRNhS36OSkBP42lWBNlGNP1t6+I6/PCy2mcc7WzWBTwbrVi/AVXiwWvi42ixMZDKc7FxDgE66Jq4YfPgIwtxmJH+4/kIoIXRC1hQhdOwOSqyhc2MfRC/kk7Y4DSVOMNeRjQCm2pofvjpVDnAt2Hzw8reSeQJE9uWikqFy+aPM80cOWapx8kJBqiyU5nLpUGBx+B5iX808chs27F2xt/EFC/g3SN5ZPU1/XM899JbtcwekS6QyX8vWIH9TBuibg0CULOB3vqy04uSTHjUSKqVDwMaOYsYgPf7IT23N7yO1+bGqp2OC4a46yzOpWsEodiCWGS8pTLVhPOTsIL29vg2mAdpwuM5cHWqfn2PA8v
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(39860400002)(346002)(396003)(136003)(230922051799003)(82310400011)(1800799012)(64100799003)(186009)(451199024)(40470700004)(36840700001)(46966006)(40480700001)(40460700003)(36860700001)(81166007)(356005)(47076005)(82740400003)(36756003)(5660300002)(4744005)(33656002)(53546011)(83380400001)(336012)(6506007)(2906002)(26005)(2616005)(6512007)(478600001)(41300700001)(70206006)(6486002)(70586007)(110136005)(86362001)(8676002)(8936002)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 14:52:56.8418
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 62b7c445-59d3-4521-4712-08dc00a22feb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9BF.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6728
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 14:53:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61987

T24gMTkgRGVjIDIwMjMsIGF0IDE0OjMwLCBBbGVrc2FuZGFyIE5pa29saWMgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPGFuMDEwPWxpdmUuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiANCj4gT2theSwgImRlYnVnLXR3ZWFrcyIgd2FzIG5vdCBpbiBJTUFHRV9GRUFUVVJF
Uywgc2ltcGx5IGFkZGluZyB0aGF0IGhhcyBzb2x2ZWQgdGhlIGlzc3VlLg0KPiBTaG91bGRuJ3Qg
ImRlYnVnLXR3ZWFrcyIgYmUgaW4gSU1BR0VfRkVBVFVSRVMgYnkgZGVmYXVsdCB0aG91Z2g/DQoN
CuKAnEluc2VjdXJlIG91dCBvZiB0aGUgYm944oCdIGlzIG5vdCBhIGdyZWF0IHNlbGxpbmcgcG9p
bnQuICBJdOKAmXMgdHJpdmlhbCB0byBvcHQtaW4gdG8gZGVidWctdHdlYWtzIGJ1dCBieSBiZWlu
ZyBhIGRlZmF1bHQgdGhlcmXigJlzIGEgc3Ryb25nIHJpc2sgdGhhdCBzb21lb25lIHNoaXBwZWQg
cHJvZHVjdCB3aXRoIGl0IGVuYWJsZWQgc3RpbGwuDQoNClJvc3MNCg0K

