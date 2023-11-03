Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 653A1C4332F
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 16:44:07 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.49])
 by mx.groups.io with SMTP id smtpd.web11.58117.1699029845639719725
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 09:44:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=75ATQEU1;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=75ATQEU1;
 spf=pass (domain: arm.com, ip: 40.107.22.49, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=gwz10SzGJecY0jECZq26sfoSuAOxfjl1dIiwM5206Pq3xcaxgu4b2hwAS1dkS7gu0K8//nA0AHIQFX9ZUnS48kPbUkScx3bRabCoiQQhWRrvRgyLORfURfkXXYL6btNLo0oLINAnaxGs3Gx+HsZbhrzEP2uh6r9g9AqnkJqxgqYl0cYBQEjfGvYR1Nqpojp4SmxNcyzCHVgWr6njMZ2N4OR8TZGmMgQbQPINtA2GauXo+bRZyuyoj7HTRqt/Htob4+d2v3VJMwHech4nUH4L/W2hexcIlk2Ljf7brca704sJEW4aEdC48A/1URqyqj6WdXAJdR6DuSQE10ADl7eOBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q28lsWufQeoe2bAGsC/H5e+KWOCSCcOqn0GDpqNdoAk=;
 b=L/dUEt8Nsm14xl6syUsRVaE7yLR1kJBFT1t7xh9q2UTVw3ZFLY8jIwd5weOzvgziMCKK0gDzTlkSD4jm8Y/MMqfT4dmJ9BWAk8U8+xLUAuDbG9wBIDSY9HFZRd/0QlpDNwVPBHyQMylzvuWq9zhxVMPgs4dxIAWiljuYO1+wT/COcE1GT3129TZz5U5IERFJCkzkn2PkrAfd/0LsbnkOV/bxn8Q3YLNYn2q2FT2fhJjzKtEvCIxt2NnUYrYDeFazM2slHPhzRw2M3XyDW6UDfw3roH/f7bYB9Wp7+BKgfd8g1a50Tw7Re8rZ2erxv6a6lMcrYhU6fczkhSDWaowqQg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q28lsWufQeoe2bAGsC/H5e+KWOCSCcOqn0GDpqNdoAk=;
 b=75ATQEU11lgmiwbe5mtWpk2SR507UkaacpfgHONMceftNz9KlWJRfRnmPwQPbpFLOn/DlLgPScMw3Z99gVtlTUEl8wZICxmsObl0PhSaYJuKiiH+Smok/4OaALnsN0kKN6umS1w9yfxPuAwrQ8dq1NJdJzd8NAYRZF7KYPoAXIw=
Received: from AS9PR06CA0482.eurprd06.prod.outlook.com (2603:10a6:20b:49b::7)
 by DBAPR08MB5592.eurprd08.prod.outlook.com (2603:10a6:10:1a8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 16:44:01 +0000
Received: from AMS0EPF000001AA.eurprd05.prod.outlook.com
 (2603:10a6:20b:49b:cafe::c9) by AS9PR06CA0482.outlook.office365.com
 (2603:10a6:20b:49b::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21 via Frontend
 Transport; Fri, 3 Nov 2023 16:44:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001AA.mail.protection.outlook.com (10.167.16.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6954.19 via Frontend Transport; Fri, 3 Nov 2023 16:44:01 +0000
Received: ("Tessian outbound 8289ea11ec17:v228"); Fri, 03 Nov 2023 16:44:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e5917a8acc569d43
X-CR-MTA-TID: 64aa7808
Received: from c3b7b5210536.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id AE3A10D0-99F9-4756-922A-A786D7C28F78.1;
	Fri, 03 Nov 2023 16:43:54 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id c3b7b5210536.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 03 Nov 2023 16:43:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkJyeaom1RMBvtqCYB8uDDysRVN6v2PdZxbegazlRd4eM+UW9vChOhyQ9geQ44jHNZq66K5HROYMqq/XJ+nqzBC591+xEltiO/qkGWmi6gcC5EFCox9uk+6b9F2kH9Eb8zSYUweTo27JAkfpLfxBfo1k93xoaWsI+mGqMXUdcZtF8Kv6w8Zly+JEdLdOeWCOeJRDQPLoptYJ3EshFpxbFyAdO/mR920AiRjXM//TDaCZpRCZB/WX64DWhu0ZBmad+AWfHKC0OUnYyCcaYW8HxhoALmDE3V7t9mOqtGyrpaGut8WuXj0AF/yJr8aaX3QSAuX8k9AL3lsqiTYEZl5MQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q28lsWufQeoe2bAGsC/H5e+KWOCSCcOqn0GDpqNdoAk=;
 b=hN8kMBDMZPGGyPgeEVNjD77BZDgx81BntW2RBDAfk6hqdAt0wQoxFXppr+eY6KNT8RLnKxGmRfmCyBIB5N6G1Yn34MRcUfYgTglPGulEmOLRgqvKPTqmeB6sLAw4jgjjTdhBUgMZIzAzWkBNsxLFmapqNvmu/NY/6GDtQb6QT8yo1olOda34UYuAbRqTlOdUbkNofpOGyxfdIxx9Nf/zrG0q2OwioTNW6qLau0aTHi7IYdnroTwzRHp2ccah1E3ikersK5VL2y1ZP6n2ZB0eavLEQszjNVhy5sHk8JVSgJ5EqbBKzeijBMhl7+CQizZMblwQQ95w1JG32L7lnYAMJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q28lsWufQeoe2bAGsC/H5e+KWOCSCcOqn0GDpqNdoAk=;
 b=75ATQEU11lgmiwbe5mtWpk2SR507UkaacpfgHONMceftNz9KlWJRfRnmPwQPbpFLOn/DlLgPScMw3Z99gVtlTUEl8wZICxmsObl0PhSaYJuKiiH+Smok/4OaALnsN0kKN6umS1w9yfxPuAwrQ8dq1NJdJzd8NAYRZF7KYPoAXIw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB6454.eurprd08.prod.outlook.com (2603:10a6:20b:33a::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.21; Fri, 3 Nov
 2023 16:43:50 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6954.021; Fri, 3 Nov 2023
 16:43:50 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "roman.leduc@univ-pau.fr" <roman.leduc@univ-pau.fr>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [nanbield] meta-intel-fpga layer support
Thread-Topic: [yocto] [nanbield] meta-intel-fpga layer support
Thread-Index: AQHaDmas5Z+zSV3zHkqctefHa2f+NLBozP2A
Date: Fri, 3 Nov 2023 16:43:50 +0000
Message-ID: <D461A548-00F2-493D-A23B-B386C0525168@arm.com>
References: <YEAF.1699023679569756446.0cWP@lists.yoctoproject.org>
In-Reply-To: <YEAF.1699023679569756446.0cWP@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB6454:EE_|AMS0EPF000001AA:EE_|DBAPR08MB5592:EE_
X-MS-Office365-Filtering-Correlation-Id: 7afd6b87-8026-4e1a-97d2-08dbdc8c1529
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 EUKeUUA+uJDWQlnwj3UjcsowNwuPAqUO6qY1W7+b0B6TH58NkaVwgDhEG4CLpW7Et2dcWRGlJu7N9z4rSfNbrGOp3Z2vTl+FNTMBYZ8dxt6MoTPCcypzqRRFiqEhIa7TG5jbkDPgh37rWEg9n56PgHdnGpQbZcu1sRYp+2tp5IG/DD2iIb7IHZcrpWrdBR5gNtJDY5PAv2yEQxIXT83TUwM3w5IIU1W4dvRRXrRZhz4dTPadyNbwKdauKFrETXr3f2F2oIPNxxuYvYa2U2sDbcyNfgU/untw/s+QBhE41fkKhIyJjPcjmhbpetESqz5eLp0ZPyZkKJPHfrD4mddD3USMI+erbczg1UqzWUQX/fOXZ/QhOU0CLUQhntDQSmAuyvBANV7WWliCOCHQJibDEnbo0E8mJ9XYD4s3PY/wWvaNKWeXyH/jiOBv8MFJ/BQ6xfee0OgwG41P7krJscCHEhoHC/yi7WuXxYtSTIHIHmGKGLlUHlLHioXQC0/YNsdoLL96vmmleaTUaB2NztpwbE41NnOakkiPglDpjeKMpI97ABBHrAAH7hQ6lRuaK6MrSoTDwzB7gNwubdarQIPSqvi1f5ltaOqcGHChrc7Z3664QoY8d89qrWSTFHLx8Hgpv9xFoOSXV7/UzeCB9DDH7w==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39860400002)(396003)(136003)(346002)(376002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(26005)(6512007)(2616005)(86362001)(36756003)(33656002)(558084003)(38070700009)(122000001)(38100700002)(8936002)(83380400001)(2906002)(5660300002)(478600001)(53546011)(6506007)(71200400001)(66946007)(8676002)(4326008)(66476007)(66446008)(64756008)(76116006)(316002)(6916009)(66556008)(6486002)(91956017)(41300700001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <B04BF4039E6FD947950B579ACC2DA3B6@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6454
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001AA.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	130449ea-8d27-4154-8b7e-08dbdc8c0ea1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oFgFawangs0uR5fNAWAB8jj7X/Gl34MZ4GYpajUo43IwtP1LDQyHavFWMT1/7byN1zYIrvpFv/aTi5ZWReB6VbCA0B/6aJNfa7r6StjrsoPjJWhG+sJ2enk1cVYVRsLJ4yN7FvwwSQAGKpOAn94s8OZZE3jf6r6KmOLcG45RTvFqis6XGq/mqgtkrqFP1Oj3XrcMWstp0jL0oKrS8dSXROnKkvTPda995CY8ye6SSSkdhtHsUoo2RWu7j8lZJ8NKfAq1B+z6f8lR/rAVyB0lJh+5uStHH+nE0owBSiFjkKyuus5KLaoKspxbuTVTFDIB8tUUVrgbbViiGBTJzmfZcFNlPi22mMsengnAi9D6Cl2fWT4Pf/qJflp9ghFIEibbAezy2j9pkST3jemNLRMHDZu/Wka1UgfPwZMH1nsbRU05juRWUtF0o0x9bEV92odPKNdWlpGUQhsOMFdgHpJTPg7VXya2YzNsVW9L61+lJdsUG4CjHTdQUMfQDAzU+nBMF1JEhFWD3k2bFQQAo5ZtC03r3W2jJRDjMpsWr9SjsqO2LjWuKBDwGju6AGMNLlePCt6F3ckgrXnJaK5ut8jMHP7opLmDAlJxyhvWzqWui9LJKtOopPf22SlRDyJgoD5e5X4cGOFebdVY8BmJCZKEcWlwb4nEt6Jiw82RlOVtAS6J4eKpcdngJQDTS+Q3R2Cf6s03QywvCr1iGoEn2ZnlpQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(39850400004)(376002)(346002)(396003)(230922051799003)(64100799003)(451199024)(186009)(82310400011)(1800799009)(36840700001)(46966006)(70206006)(41300700001)(70586007)(316002)(5660300002)(478600001)(6486002)(2906002)(6862004)(8936002)(4326008)(8676002)(6506007)(53546011)(2616005)(40480700001)(6512007)(26005)(36860700001)(336012)(83380400001)(47076005)(356005)(86362001)(33656002)(82740400003)(558084003)(36756003)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2023 16:44:01.1011
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7afd6b87-8026-4e1a-97d2-08dbdc8c1529
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001AA.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5592
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 16:44:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61603

On 3 Nov 2023, at 15:01, roman.leduc via lists.yoctoproject.org <roman.ledu=
c=3Duniv-pau.fr@lists.yoctoproject.org> wrote:
> In order to work with django I need also virtualenv library.

Use venv instead, this is part of python3 itself.

Ross=

