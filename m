Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 606B5C0032E
	for <webhook@archiver.kernel.org>; Wed, 25 Oct 2023 09:54:37 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.79])
 by mx.groups.io with SMTP id smtpd.web10.169733.1698227672012385173
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Oct 2023 02:54:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=7a7p5zyB;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=7a7p5zyB;
 spf=pass (domain: arm.com, ip: 40.107.20.79, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uvu1O4pVWp8DV+V41ME720czGMvmuFBHS5lx6p0PCOc=;
 b=7a7p5zyBbYfc1NRWXkuNbMSlIp1Zh7NY4EjjWi+e2+Icv/CbSSSwItnLwIogK6MbDZLL5glwJjyZ7L3SVyw7v35jW0Ze1phtGI7eHHRHgJP+3WDICc16wfPO3/DluELLgj/Y6gaHqnmMB5d6eHIVp0BQxJlwiGujMZYc18foYhU=
Received: from DUZPR01CA0003.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::15) by DU0PR08MB10325.eurprd08.prod.outlook.com
 (2603:10a6:10:471::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Wed, 25 Oct
 2023 09:54:28 +0000
Received: from DU6PEPF0000B61D.eurprd02.prod.outlook.com
 (2603:10a6:10:3c3:cafe::11) by DUZPR01CA0003.outlook.office365.com
 (2603:10a6:10:3c3::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.34 via Frontend
 Transport; Wed, 25 Oct 2023 09:54:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61D.mail.protection.outlook.com (10.167.8.137) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6933.18 via Frontend Transport; Wed, 25 Oct 2023 09:54:28 +0000
Received: ("Tessian outbound d1b3e404ba03:v215"); Wed, 25 Oct 2023 09:54:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7161794bdb2e9d40
X-CR-MTA-TID: 64aa7808
Received: from 89973ce3542c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 895AB161-F72F-4825-BDEC-BCED0CBDC5F6.1;
	Wed, 25 Oct 2023 09:54:19 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 89973ce3542c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 25 Oct 2023 09:54:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a8OIbfveg9ibPsj1uuptYXptyDfuuM710JvdE2aAAKsm+4cZIcE5zlUZkUAlOiOy9CSpiq84cpQhU21ocSOSm56CeKkb7IUxr2V4x5tSqZc4wBOuLCRd9JSWAwIWz2vyjwalbFwOz/G4viWxHoA5HWaGqhSmUC97AbovltnixMsupzLcZpxe/ieK8p4UDFEh83hfIf5LpVcudlQns6AE4/q5CuiQ0Pd+gMAWe0eic13omyEwqoGa4EvCdj93geyDyHZZ+VctojSvsexwlLRLE1EB10ZJcEGStNXg/+HnJOGfBGPm6bcrW1+QwWN5ipyVQBjplq6YWo75/ivkuoYXVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Uvu1O4pVWp8DV+V41ME720czGMvmuFBHS5lx6p0PCOc=;
 b=Yn5t1qhxncYl0ti0TC8FUVvFZH33J8Xrvj7feMQUr6YVAJ+WRvJZKMN7W02EXWCYxqWWMkgcT9FsRutcLHcStDc4JbGxHtTVql7/i8U1/wESEhnZSeayVJ8Mify5BL8q0OnEQJneBkcccNF7M6z/Od/JAL5rZ2hvWT57tD8igKzC3j9YJBnNxGpkmWScfF+vlEqdn+RZpSEIbUfsHG33voSypYth5fGvs3NtfZjHteE4yknT4tOivx1gPMGPYfTUDwKfoe5LnK32D1JzktyFabTWRf/o5enGQEACMDkp19RwmiBDdlG4qSNjdjmy39naaQ3/atm/Y0EM5kp6uWFpLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Uvu1O4pVWp8DV+V41ME720czGMvmuFBHS5lx6p0PCOc=;
 b=7a7p5zyBbYfc1NRWXkuNbMSlIp1Zh7NY4EjjWi+e2+Icv/CbSSSwItnLwIogK6MbDZLL5glwJjyZ7L3SVyw7v35jW0Ze1phtGI7eHHRHgJP+3WDICc16wfPO3/DluELLgj/Y6gaHqnmMB5d6eHIVp0BQxJlwiGujMZYc18foYhU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB10197.eurprd08.prod.outlook.com (2603:10a6:800:1bc::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 09:54:17 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6907.032; Wed, 25 Oct 2023
 09:54:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "dspei@ambarella.com" <dspei@ambarella.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [Poky - Kirstone] About update FFmpeg to v6.0 in poky
 #bitbake #devtool #ffmpeg #kirkstone #yocto #poky
Thread-Topic: [yocto] [Poky - Kirstone] About update FFmpeg to v6.0 in poky
 #bitbake #devtool #ffmpeg #kirkstone #yocto #poky
Thread-Index: AQHaByVhg/OnaoMR7EW3hQB1fsAmILBaRBiA
Date: Wed, 25 Oct 2023 09:54:17 +0000
Message-ID: <EB835F08-3815-4CC6-958C-102766B0C8B1@arm.com>
References: <xcT9.1698207479013990293.zP8l@lists.yoctoproject.org>
In-Reply-To: <xcT9.1698207479013990293.zP8l@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB10197:EE_|DU6PEPF0000B61D:EE_|DU0PR08MB10325:EE_
X-MS-Office365-Filtering-Correlation-Id: e6df3ca0-81b8-4502-0d7f-08dbd54060ba
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 VnGsMaKLRBa9TZDuXmsj9jJvsyv6S0gxR1IJUxqgpcdVygEHIZGI3eBPIdVjicCS44PuXqICngwz9EW1etoWYkvNT6RsCPPdJPujIm/nuGLFq6Z//fux+y/AnQ36N53wYV1DFWg/beFY1eNo8EfEMqeKU+5mljGMx6rv5gGayTMtv81R7rj7BqNMOELwipLog3u4JVr4uq9qGwgOwQSQaQe37X9UkyiTxxDFYBi0lOgUgSDn/Kuqgj1HXmv+iSiW3JkaUkFmAMiYSRA2LiCNDh6fjSL3PHs3X0XJJHcUuCi+DLV5Yy+nfbBOccKPgInI4T5YpN+L+aIV9gSlc7tFpkYqbY7peXhYf+kYoel16y3oYhY8HAQTEEuRcvB+/v7X4wGoqiJgJrq10glDZ8NLdLZ8hHmcwwoFgEV4r87vU+MakAGRWUGpifOhl7lDq/jTPT5ZUPUjN1ehEmQ5oYc1lRioa+CR2AsDwT8w20uinqt2Cl3jkYT17Y/LwRcELL2Oh+5O5vqRqTnYi42K8BSA4DVbj7Mq7/aa0meIC0VPvs3WWHWXkRqFGn19uAzwAcqDRAkzYdX7nDjX+HogIioezyOFQupjAoFEYuAE73Wfk9JVPkSVvjSXaF4FJOY1thrhk+JnckKemZgoji2AM6DGUg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(346002)(39850400004)(396003)(366004)(376002)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(66899024)(15650500001)(2906002)(66446008)(6916009)(6486002)(64756008)(66556008)(76116006)(66946007)(66476007)(91956017)(6512007)(316002)(33656002)(5660300002)(6506007)(966005)(478600001)(41300700001)(53546011)(4326008)(2616005)(36756003)(26005)(8936002)(71200400001)(86362001)(38100700002)(122000001)(8676002)(83380400001)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D4269CCDE36D70479D17D081C230559F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10197
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61D.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e4bb60ef-d258-4820-78bb-08dbd5405a8d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UDwKPmQGL8onXT0xL1URKeRzYRcV46YzRe+iEhwP4Q2gcfeXcmo9pOZkRlmcqH7a7V3cyWXDXW0L9kHRM/xvxe86vC+D6OpMMqkSCw5vauG2RqJSRzqC7pbZ4wx6T/uAvJQyxpT87hYDGI/RK314EsQZPHo6oQvqO4KSFYFz9ITKIesDILJHfjnFAu4rmb6rzyI63d3pV/YESELAyf4i+zHEclVxaAfjMoqnzcRZLpEd7QhW2e+TzsV97Y4NSNP/tiAc3FoA3bhpbwOriTjeJWxCGit83SxA16G9U5DF1iqDxazd3iIHUY0Lp1tnd2ymwMjs2gaHTuaWIKGjEzFgyeAQT1qN6x0tA0Wd/jP3fMgTQ35eDQZBTY7J3QPtuDmTeSdq4shxK7nGMXi1vQVVbbtryH0lkXTqunfJ2UtpH/2VsRjBuCbaA5hX9RuZLPuM0c/IExMrRSoLinDdMxmDXXecR7mgV6e/7yO773kDl2llFqnub9PGWe2mKBMlCelzwNfSIwPfWIwdVAeH9mcvti6PKK2Rq5z3dCB4mxe0W7E+MO4Q/2zERIHLK+bl/PqwpO5BurLlq3ZbvIAum61iiNQxOy6AXIjLmt7U31b2itFcr4ejrEdxxH+dlEOScgqarvtYtLubJGyjGgHIkGbBUygPzrTU0OSdukuzp1bl2vZ+Du5E/mY3E96MPYvzbXKo+0AAkBFoOOPrPCPEfeUbfXBp44Job61EYWR+HwWILfk=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(136003)(39860400002)(396003)(376002)(346002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(82310400011)(36840700001)(40470700004)(46966006)(6512007)(53546011)(316002)(70586007)(70206006)(2616005)(83380400001)(26005)(336012)(6506007)(66899024)(478600001)(40460700003)(8676002)(40480700001)(47076005)(8936002)(36756003)(33656002)(4326008)(5660300002)(81166007)(2906002)(82740400003)(41300700001)(86362001)(6862004)(15650500001)(966005)(6486002)(356005)(36860700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 09:54:28.0173
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e6df3ca0-81b8-4502-0d7f-08dbd54060ba
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61D.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB10325
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 25 Oct 2023 09:54:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61477

T24gMjUgT2N0IDIwMjMsIGF0IDA1OjE3LCBkc3BlaSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0Lm9y
ZyA8ZHNwZWk9YW1iYXJlbGxhLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4g
DQo+IEhpLCBjb21tdW5pdHkNCj4gDQo+IFRoYW5rcyBmb3IgeW91ciBjb250cmlidXRpb24gdG8g
dGhpcyBncmVhdCBwcm9qZWN0Lg0KPiANCj4gVGhlIEZGbXBlZyA2LjAgd2FzIHJlbGVhc2VkIG9u
IDIwMjMtMDItMjcuIEl0IGlzIHRoZSBsYXRlc3Qgc3RhYmxlIEZGbXBlZyByZWxlYXNlIGZyb20g
dGhlIDYuMCByZWxlYXNlIGJyYW5jaC4gDQo+IGh0dHBzOi8vZmZtcGVnLm9yZy9kb3dubG9hZC5o
dG1sI3JlbGVhc2VfNi4wDQo+IA0KPiBJIGNhbiBmaW5kIGl0IHdoZW4gdXNpbmcgJCBkZXZ0b29s
IGxhdGVzdC12ZXJzaW9uIEZGbXBlZywgYnV0IHRoZSB2ZXJzaW9uIG9mIHRoZSBGRm1wZWcgcmVj
aXBlIGlzIDUuMC4xIG9uIHBva3kta2lyc3RvbmUuIA0KPiBJTkZPOiBDdXJyZW50IHZlcnNpb246
IDUuMC4xDQo+IElORk86IExhdGVzdCB2ZXJzaW9uOiA2LjANCj4gDQo+IEFsdGhvdWdoIHdlIGNh
biB1c2UgImRldnRvb2wgdXBncmFkZeKAnCB0byB1cGRhdGUgYnkgaGFuZCwgdGhlIGRlZmF1bHQg
dmVyc2lvbiBiZWluZyB1cGRhdGVkIHRvIEZGbXBlZyA2LjAgaXMgd2FycmFudGVkIGZyb20gdGhl
IHBvaW50IG9mIHZpZXcgb2YgbXVsdGltZWRpYSBwZXJmb3JtYW5jZSBhbmQgeW9jdG8ncyBsb25n
LXRlcm0gbWFpbnRlbmFuY2UuDQoNCldlIHR5cGljYWxseSBkb27igJl0IHVwZ3JhZGUgcmVjaXBl
cyBpbiBzdGFibGUgcmVsZWFzZXMgdW5sZXNzIHRoZXJl4oCZcyBhbiBleGNlcHRpb25hbCByZWFz
b24sIGxpa2Ugc2VjdXJpdHkgaXNzdWVzLiAgRXNwZWNpYWxseSBhcyB0aGlzIGlzIGEgbWFqb3Ig
cmVsZWFzZSBzbyB0aGUgaW1wcm92ZW1lbnRzIHdpbGwgbm90IGJlIGxpbWl0ZWQgdG8gYnVnIGZp
eGVzLg0KDQpZb3XigJlyZSBhYnNvbHV0ZWx5IHdlbGNvbWUgdG8gbWFpbnRhaW4gYSBtaXhpbiBs
YXllciB0aGF0IGNvbnRhaW5zIHRoZSBsYXRlc3QgZmZtcGVnIHJlY2lwZXMgZm9yIHN0YWJsZSBy
ZWxlYXNlcywgYXMgSeKAmW0gc3VyZSBvdGhlciB1c2VycyBtYXkgd2VsbCBhcHByZWNpYXRlIHRo
aXMuDQoNClJvc3M=

