Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF65BC61D97
	for <webhook@archiver.kernel.org>; Fri, 24 Nov 2023 12:09:36 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.68])
 by mx.groups.io with SMTP id smtpd.web10.133891.1700827774064814250
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Nov 2023 04:09:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jy1EfLkG;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jy1EfLkG;
 spf=pass (domain: arm.com, ip: 40.107.22.68, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=DQ9rS7Uo8A80IXyLB7HHvzF4teeFfs+BYgkSpqk1DttuClvMAZR5D+rQw6qaSngMxQoiajuygRG8k+QlVjvTJiKrS+Dgj7OgJZSDCTDiPZ6O0x1CkpsdIq+8ph/5mGIGLQ8JHbhcNttRKiwOWz2GSZjE0oinB/ElsJQ15eb/1kZg24u9OWG95XHHnWHZ5r99+PO/XWUU2rRMAVb+XFUUcWOmE2nxFPQpvXJLgGRB2qMjV3Pfjg8e8QvHoXeU4Bk0NWpWhwcTjNml71w77bUAmcMp+l5c09CpEUQymbllXg5eKIwD5fp4/Zm+U+iQGHGduUm4ww2us94v1Ji6VjeEtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cE0dLED8+eMIzbHBAglk7hyWbeaJQFFzWBUC0iFx5bI=;
 b=Hh3/3dEuORyQvsEJV5R1VYGrdSEzUWMbLCVmEXFvHdON90oTJ87xH5+uTOETSKptz8J7UBxllfxoPQ9IIp1tPh4SW7qHt3QjSvFD56q4rvQ8XWUgIYHHwTGVWjYrHVAt4f9HZxnbZlTL48xojN4rgmJaSmZLEkCIt1Jd1FYnfjWc/cvK+JCRzvmBeLMYF8J5duw80zf724X0+dPfJZI86K1+tL+pDoLIGYkBTQ3kN687sN9a5eMO4qaoOK68opcPvHs+Wot7oj537KXjiTIDhpexKse2+a5OFbJhOYasYIbhNXcCm69xKLzF8SKit28faO1+rdJ2XdU8zV8ELaX8vQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cE0dLED8+eMIzbHBAglk7hyWbeaJQFFzWBUC0iFx5bI=;
 b=jy1EfLkGtfSwEtYRaB7kYER2urSRPOt+8D2ZHOXs1e9iDZxzAr/F3JBLmPSDH+w8Kcy0FqV+aOVZVsNAR4H5N7gt8hyLrX6ljmYAJl2MiIQKPrWbf5u7bQ11VyMNZQU0+6BBDDbBreSa6bVjV8QiUhIAFCayKYLryfDbWN2obO0=
Received: from AS9PR06CA0510.eurprd06.prod.outlook.com (2603:10a6:20b:49b::35)
 by AS8PR08MB6071.eurprd08.prod.outlook.com (2603:10a6:20b:29f::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 12:09:27 +0000
Received: from AM3PEPF00009BA2.eurprd04.prod.outlook.com
 (2603:10a6:20b:49b:cafe::89) by AS9PR06CA0510.outlook.office365.com
 (2603:10a6:20b:49b::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21 via Frontend
 Transport; Fri, 24 Nov 2023 12:09:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF00009BA2.mail.protection.outlook.com (10.167.16.27) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.13 via Frontend Transport; Fri, 24 Nov 2023 12:09:27 +0000
Received: ("Tessian outbound e243565b0037:v228"); Fri, 24 Nov 2023 12:09:27 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: fb2f2b51f06e11b1
X-CR-MTA-TID: 64aa7808
Received: from 771472e4d86b.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3B62BA22-B197-4474-9EA8-63EFAE169B25.1;
	Fri, 24 Nov 2023 12:09:20 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 771472e4d86b.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 24 Nov 2023 12:09:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g3W1e9kMIxZetylOdyVP387/vcbZ+eLSUbFbFpZuyNoAQ47byVDd0aSDA4k9pxmb7HUr0M0e/S8aOTF/1Kq1SokuZp3hW2ZDHLnGd49YGX5lgWDJnW+Wky9AUjXZVi6asqcfwG6qxICtTcjgfvt8qHEUxShKXBy7rhDaMLJooyWqikD/Kb/t6TPXIY/tTyhcaBIZ90bKNrpW10UI517aWfiQDXPcAekcxh+tvIbpfm4P3cw29AGam8V6SEGe4gr/oJ9dHlwuoSt6BoU0uF9YGlg/P5DcCGYxprJEiWn4B4roBLpvOgsOVId+3mCBaoe4nJK/xsfCDBVHOTT85NS9cQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cE0dLED8+eMIzbHBAglk7hyWbeaJQFFzWBUC0iFx5bI=;
 b=G8vgSXGjEdfYKjuxsGFYvz/mmbjC9Rqy8ORtZ+Uy2i0MQfBT9iC53sX0HRBFeYIlYxtQoOujUedF87n2QuKVd2V0CCFEOlHl7JdwJknCz++utqjpxccJ+j+ybNkVhwbWUr85/klakDg0BEK3MO/XN7F/3hR/kDXYzkMCfYAAUoyojaddef23EFMIQuexGqCiRaDuzCIqSx0It8nppJ2oC/x2qWA2UUTXQEiAm6fPbKodK9pNZGQrPtObZME5sKgPyYbfg7uK6ziNV1NpugiAD2qGBwBJdLqmMMjpCmjH4OFnWrP3+Lh1IIP4qurXmTKlEcoQBAnuXHmZF0sm3FrhHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cE0dLED8+eMIzbHBAglk7hyWbeaJQFFzWBUC0iFx5bI=;
 b=jy1EfLkGtfSwEtYRaB7kYER2urSRPOt+8D2ZHOXs1e9iDZxzAr/F3JBLmPSDH+w8Kcy0FqV+aOVZVsNAR4H5N7gt8hyLrX6ljmYAJl2MiIQKPrWbf5u7bQ11VyMNZQU0+6BBDDbBreSa6bVjV8QiUhIAFCayKYLryfDbWN2obO0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS2PR08MB9975.eurprd08.prod.outlook.com (2603:10a6:20b:62c::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.21; Fri, 24 Nov
 2023 12:09:18 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7025.021; Fri, 24 Nov 2023
 12:09:18 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Index: AQHaHOYJS+jGppb1UUOxtF3z9OWfWLCHzHaAgABQlQCAAUc1gA==
Date: Fri, 24 Nov 2023 12:09:18 +0000
Message-ID: <750E6423-8371-46C6-96A0-DB901787BEC7@arm.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com>
In-Reply-To: 
 <CAMKF1spmQVfXj6TMMgDRrneUeFBKjGfvfN5JT2USC3CkyvVB5g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS2PR08MB9975:EE_|AM3PEPF00009BA2:EE_|AS8PR08MB6071:EE_
X-MS-Office365-Filtering-Correlation-Id: 048d5c66-1f90-4b66-8e90-08dbece634c7
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 m7ZtRH9BImWe6fgX3F60e+DZpHlTAl49ZhCHyc8vwKvbuIm6b/MAAfvQSD/5VmWOi1RrlmYEN2qU6TRN88AVXYPoJOZhzow5haF5MBNEMk0s805gIbuZEBLTVwtDv96cFRHVzab83XBkb47rtpDn3SMrUZWNgdY3PTBszvyyediWfPJXsC60ruMQr/YCYGVXq9qFD7k8pnPQcqjQPS0evVmh8yeCybp1GxtLM0EITNeID42Qdw7Zqj0L1uVJgMUjYKkGAhfb+5iToxtmRcXAb++PiXcUU0xfisbhzaRW+bSBk3V29B0zhBq4tAjKRdW6Whe22CvE6RVGsUJ6qnvN4wMkMZLDtk6Ow4p44Q3AiRrLqtAVIRZLhHBgEUlL6uU613HbT6TszPdNbMsrGIDydClD5rTOvkK4PafVrEBrzod6bDu11oUqgbvXf96e0+6JEOgHsQcpf/f+GPrWnXwYA6keQOCVEDolHgZR2DHdhu66tn8yoNkoMmn9qOgCurEfF24KiGvCSV+9RbSwfC+RhUT80FNqCA56KkAMXEH0SWNa7R//bj4yryWRiFLH7pgUdJ2m/3bTqNB+5jmaU835GbXGnoUSIwtSVDYTSG4qAAObcTG+woc2LCoUIlcKU8YIyyMbkAJMJmCp2UNQeTxoOQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(136003)(366004)(39860400002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(26005)(76116006)(38070700009)(558084003)(53546011)(6506007)(6512007)(33656002)(86362001)(71200400001)(36756003)(41300700001)(6916009)(2616005)(38100700002)(4326008)(8936002)(122000001)(66946007)(2906002)(66556008)(66476007)(66446008)(8676002)(316002)(64756008)(6486002)(5660300002)(478600001)(91956017)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <286D4336B2F9BE40868DB7C4A0EB5B7A@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9975
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF00009BA2.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d04b1cf7-b4d9-4f5b-812a-08dbece62f35
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	D6iTkCdsbuWB1tJ3HtrmwXw412iS3AXo7i62Yh4mXqOFzAjDldwZ9IwRFOhwKAymf6Oc3KY9d2jlF3FHLOJBNkPmLGAm+TV8t3OcLcoMVOD1GTIU7mtYBicMA9XTlf471uwfFILVRYXOBblLjR4EvP05txS1d1WaR6/uph1+1gbUzvB0X/EfEkEAhwWjXpcYzioUyF0kcebqQGJ8xJhRosmPYY9G0FU3jDIHtmfx47FkrcX6NNUVZzH4p2fvX92Kgw4SzK95ho33XcaOLG25VQtYqKe4QWcijgaZdDMJSlXdyzvQ+l0haM0lKbffS9qfo91+Zj4J6niKFD2TdsSXSTPKPkNGei6s5d+MCoIM/BM4xXP0aCi6cYWh9l0VzVRypIWcgNz6MfAzmjqyTYTa3trqEzR/ApFEifxXugT0+GVq7DU+XvNNOAIpVl0GRoqyYow9pK01vxQ8pfDg0kYWTp2hR9ZGqn8dn3Vpoj+bbdva4mEE5vvKFBQNb3ZloT7k8azmaSqskGHNcaagJhSPmkJl2rVnB2CYPwpaAvYfkHPZtf9+tc9U/FT/Lx+wJifwO1bkZ75/428Q45N//g86ULVOtzai3FLzPWufo9Ke3Jl57o7yL3nXkTid7dvly4wFqcEGV4wqS9eThDPkghUa2B/R8IfxoLZxhSNNoqeSdK3iIHOY8wmmGmFJzGKwqor3chOZ8DsXYG3ak5wHMp4/mhxGW2O4kpvnlh60UTFoZDhWAx4eUiDJoupiZnoNlFdy
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(396003)(376002)(346002)(39860400002)(230922051799003)(451199024)(82310400011)(186009)(64100799003)(1800799012)(40470700004)(46966006)(36840700001)(47076005)(2616005)(40460700003)(26005)(53546011)(6506007)(36860700001)(6512007)(36756003)(478600001)(6486002)(558084003)(33656002)(2906002)(6862004)(4326008)(356005)(8676002)(8936002)(82740400003)(81166007)(41300700001)(86362001)(70206006)(70586007)(316002)(5660300002)(336012)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2023 12:09:27.4715
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 048d5c66-1f90-4b66-8e90-08dbece634c7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF00009BA2.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6071
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Nov 2023 12:09:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61752

T24gMjMgTm92IDIwMjMsIGF0IDE2OjM4LCBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPiB3
cm90ZToNCj4gDQo+IGl0IHB1bGxzIGluIGxpYjMyLXZ0ZSB3aGljaCBwdWxscyBpbiBsaWIzMi1n
dGs0DQoNClNvIHRoZSB0cmlnZ2VyIGlzIGJhZCBwYWNrYWdpbmcsIGFzIHN1cmVseSB0aGUgdnRl
IHJlY2lwZSBzaG91bGQgc3BsaXQgdGhlIGxpYnJhcmllcyB1cCBzbyB0aGF0IGluc3RhbGxpbmcg
YSBndGsqMyogYmFzZWQgdGVybWluYWwgZG9lc27igJl0IHB1bGwgaW4gZ3RrNCBmb3Igbm8gcmVh
c29uLg0KDQpSb3NzIA==

