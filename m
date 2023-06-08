Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72AAC7EE23
	for <webhook@archiver.kernel.org>; Thu,  8 Jun 2023 10:10:28 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.79])
 by mx.groups.io with SMTP id smtpd.web11.5408.1686219024467769765
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Jun 2023 03:10:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Ld2/O6AK;
 spf=pass (domain: arm.com, ip: 40.107.241.79, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gmPBXNI6esLvcJQ2PYDrc78asc010hLlNrZ8iB5KtyU=;
 b=Ld2/O6AKq+CkhPkGgiL2iZnuCbPToL7e6NREMO3cAarIlbHxozt5w5mpse0FvvsS/2avTkQIdiIGlBXTA2fUw1lwZnb/SgWBEAWtaXFtymvaf2xYwQY0JZtgEWBICJ1n4JPWLGAowG31yOifjbbAQAyy4sY6Fv6/m5mDDy77UOU=
Received: from DB6P193CA0012.EURP193.PROD.OUTLOOK.COM (2603:10a6:6:29::22) by
 DU0PR08MB9026.eurprd08.prod.outlook.com (2603:10a6:10:47a::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6455.32; Thu, 8 Jun 2023 10:10:15 +0000
Received: from DBAEUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:6:29:cafe::ef) by DB6P193CA0012.outlook.office365.com
 (2603:10a6:6:29::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.19 via Frontend
 Transport; Thu, 8 Jun 2023 10:10:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT058.mail.protection.outlook.com (100.127.142.120) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.25 via Frontend Transport; Thu, 8 Jun 2023 10:10:21 +0000
Received: ("Tessian outbound 3a01b65b5aad:v136"); Thu, 08 Jun 2023 10:10:20 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0f8a95a63dfe0698
X-CR-MTA-TID: 64aa7808
Received: from 4a6a096711e3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 730FA9C7-1624-4C17-BCD9-ADA541A02244.1;
	Thu, 08 Jun 2023 10:10:13 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4a6a096711e3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 08 Jun 2023 10:10:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VW88X4C26LnWU0+fkyehFKcAaDohPKTVqL/3VIJ5jFL4FVY8AcZC++YaTA8O01QiYQ0L6UBLKbVIhr651cMsFuI7TYfesl1gDu6R54tjJiUpww91JLsIyTuVOwvJycXKFrjKRLl1OWNhJGK9/Pgii0FmAF6HSIzrItGQYRmZt0TxbFM/ytzi6W+mpElzTiS1klTMwvTAIbLo5ufXT6EU3bOu0Y5yz7gAGy2eNQDE+bmuT3QCZ0A6NXZQSS1Sgj/gyScwWmjP5iywXHKOjOjUqHhSRFKyyfUuywTK3zZwd6mGPg8ESVH5nFh/pzBZ007rU1eYuctwHPyOG0HZI+YNlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gmPBXNI6esLvcJQ2PYDrc78asc010hLlNrZ8iB5KtyU=;
 b=ZJKr2Liwa0rLsOikHkwl8rnjEvj/ps29xqWNsDc7Ih44HqkP4eFY8IaKfEqp6BSgXDT+zTdmvlx5zX9IEk53PWLfPyg2F4HMzfskrsVhF5A3i3WRuO/bJOInj1OH8n2JiSvAZkXOZvC27uF8t2nAN8uOY+BsFOITlt/flhNEBP6YH4g2eqUwniGCBgVL7ksrOKh4az1DP+QCpkFwUKD4xAhsh4Ttvgv0h8STzvxf6tV+AAYpsUE6BpVF4LuLTgpmdXgQcy7DiAS83E2jT3EO/8Y9v/HvYrEMoMMr5yOruT6f+UEmdPw1dxgcppDwz9qnWsjjD0rh5VCuB7vGXZuUpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gmPBXNI6esLvcJQ2PYDrc78asc010hLlNrZ8iB5KtyU=;
 b=Ld2/O6AKq+CkhPkGgiL2iZnuCbPToL7e6NREMO3cAarIlbHxozt5w5mpse0FvvsS/2avTkQIdiIGlBXTA2fUw1lwZnb/SgWBEAWtaXFtymvaf2xYwQY0JZtgEWBICJ1n4JPWLGAowG31yOifjbbAQAyy4sY6Fv6/m5mDDy77UOU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAXPR08MB6383.eurprd08.prod.outlook.com (2603:10a6:102:155::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Thu, 8 Jun
 2023 10:10:12 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 10:10:12 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "zhangjialing@loongson.cn" <zhangjialing@loongson.cn>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Submit a new layer meta-loongarch to the layer index
Thread-Topic: [yocto] Submit a new layer meta-loongarch to the layer index
Thread-Index: AQHZmelQPXnJgsAaXUy0IixCsyvAHa+ArvqA
Date: Thu, 8 Jun 2023 10:10:12 +0000
Message-ID: <F3C5E126-A6BC-471B-B054-5918881B5B7F@arm.com>
References: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
In-Reply-To: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAXPR08MB6383:EE_|DBAEUR03FT058:EE_|DU0PR08MB9026:EE_
X-MS-Office365-Filtering-Correlation-Id: 35f60c8d-ff54-4320-4e5f-08db68089150
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 nYkVJJ4/GnWKlnLeWbrM9e7wH3gyRKE9rgqoZluHn9ho+khq5WHaPE/p5WHQgi8dDMnFRI8pA2X8vG2gdBQeOCTRCzr8Spbzzwqp4O3FyQo3tVnmyPiShULL9QbFqydSiX4V3q/zhJLX5PKhi+sASqNuzZ/wIzkv1j6n9DKIqj4bl5s0kuZps2mbK+XGGra5kFBVJMx7p/0QOTug4K6Ajrcsk/ANil4/Gla2n+SuThiKdaQ3ShPLOtHpGLpjzgcBnfsZ1FI6TndxLevRelxgXMBhx8184n6W+R0HUOv4MIbCJNa3F7+W3EwAm6STGllmtS8kmuOn1z6fzujKlsok8zpUowNikmVAkO1SgYesZuSGWOpYFcxeyoQ80ax+dOE9XLlm7qbgoAnjCMpHAooAa2P35uHUqQhsYqMYQJBIWeq5SDF8RK9iUz6bzi7nIJrtSS8BwEZOU4cTlsdUg3+cfuA1X1Q1gu8cYGTXhn0bKwzKOpOUYMBC2Ww5JmmOZqaVyYFuEZDlNH1d0MeQdQwLXLKcTdNzxAw8zgp0vdYYUFMdc7NlUJZA8cVSEzAe8hiS9e5hUeI4+1lwp77AUT+ToD909h1AAbf6xM1ezgJSIDdf3e+SAd1TJ03uvHUHtaS7eQJnzJs0xrNJc8xxxC73SBPzVc14ltThrRhQrLMW5PCmyV42FyWrNUUTw57vrXqX
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(136003)(376002)(396003)(366004)(39860400002)(451199021)(91956017)(186003)(6506007)(26005)(6512007)(53546011)(2616005)(83380400001)(36756003)(966005)(2906002)(71200400001)(4744005)(8676002)(8936002)(6486002)(478600001)(33656002)(6916009)(122000001)(86362001)(5660300002)(41300700001)(38100700002)(66476007)(64756008)(4326008)(66556008)(66946007)(66446008)(76116006)(316002)(38070700005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C44B5F2E6FE3264993B4E7560D56C6BB@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6383
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT058.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d7cdcc0e-6ee4-46be-ec5e-08db68088c3d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8E/Ek8A+9yXFTV4Oe3zCfTk3Yh66LpslUlHqJRqAFTXznJrVbvbfabHokhIefJ8kQJ2P0JOIQIyam64o0EtSnfamXOucgpQZ/KHlsRnmz9Jt3avX2iDpetO+jaWthSHI98Obw5QtGeEjEo3hDnry26cPTvx2c0TWFueRM/J+sZJ6x/VZuGj3kPqs4nx+AVfDEieI2edfmFHlq0WexsuG1erpXUylrMfzJEwL/ddLoECwWLpQFSi00RVxwLfcbmTTdCeGuU6AJ2Nrc+t+rgR6YM+NfZyGQ+Cce+HsGA51O3UoJldtEqYt2KN4DQmAjWbvE/2rrCFjNH33+PYA4/9WHiDpAT/EwsHFLEO0r5exwPzokr6FHE2ldd08weH+w2NAU6OLsDvFM3t+RfS32rHEFqQJzZ8eWrXL0tlwYslwVVBD9MFvgnvYf4Vh991lMJv+FFKXIyqxgJvZo4YiAyBqskyLsr5gAKbdiX5zDluFcoA3bhSVwoqaGg1614jxDvalsR4P3Lpz2CEeM4dn/q0CzcfIRdt7kl6nM23HUe52HLc+AYaTBOhgj0jaO+m3Ctfr9khUPkNmrsYy2Bdw8s8obXXrV2aCaANmiAytxObwSRxKNKvK3j4JBmWsCIlj59I0dDRiOO1B6tZOFEx/6erlkeePL/sJMtOpwFAPnQUKTEnvaLwNCT+OrBAP+Ood7k+XQmoxHCCsMe6a35rZGJKMTkes667RgPgGHZpHAa8QpboRAz58pdF3tf3SOygmU28g7aAO1FlO7vRrzWfxnO5AlA==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(396003)(136003)(346002)(376002)(451199021)(40470700004)(36840700001)(46966006)(70586007)(70206006)(6862004)(8676002)(36756003)(8936002)(5660300002)(4326008)(478600001)(41300700001)(40460700003)(966005)(316002)(6486002)(40480700001)(82740400003)(356005)(81166007)(53546011)(47076005)(26005)(186003)(6512007)(6506007)(83380400001)(2616005)(336012)(36860700001)(86362001)(82310400005)(33656002)(2906002)(4744005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 10:10:21.0043
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 35f60c8d-ff54-4320-4e5f-08db68089150
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT058.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9026
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Jun 2023 10:10:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60229

T24gOCBKdW4gMjAyMywgYXQgMDg6MjEsIOW8oOWutuWyrSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8emhhbmdqaWFsaW5nPWxvb25nc29uLmNuQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiBJIHdvdWxkIGxpa2UgdG8gc3VibWl0IGEgbmV3IGxheWVyIG5hbWVkIG1ldGEtbG9v
bmdhcmNoIGZvciB0aGUgTG9vbmdBcmNoIG1hY2hpbmUgdG8gaHR0cDovL2xheWVycy5vcGVuZW1i
ZWRkZWQub3JnL2xheWVyaW5kZXgvYnJhbmNoL21hc3Rlci9sYXllcnMvLiBIb3dldmVyLCB3aGVu
IEkgYXR0ZW1wdGVkIHRvIHN1Ym1pdCwgSSBlbmNvdW50ZXJlZCB0aGUgZXJyb3IgbWVzc2FnZSAi
TGF5ZXIgd2l0aCB0aGlzIExheWVyIG5hbWUgYWxyZWFkeSBleGlzdHMuIiBZZXQsIEkgY2Fubm90
IGZpbmQgdGhlIGxheWVyIG5hbWVkIG1ldGEtbG9vbmdhcmNoIGluIHRoZSBsYXllciBpbmRleC4g
Q291bGQgeW91IHBsZWFzZSBoZWxwIG1lIG9yIHByb3ZpZGUgc29tZSBhZHZpY2Ugb24gdGhpcyBt
YXR0ZXI/DQoNCk5ldyBsYXllcnMgbmVlZCB0byBiZSBhcHByb3ZlZCBiZWZvcmUgdGhleeKAmXJl
IHB1YmxpY2x5IHZpc2libGUsIEnigJl2ZSBqdXN0IGFwcHJvdmVkIHRoZSBsYXllciB5b3Ugc3Vi
bWl0dGVkOg0KDQpodHRwczovL2xheWVycy5vcGVuZW1iZWRkZWQub3JnL2xheWVyaW5kZXgvYnJh
bmNoL21hc3Rlci9sYXllci9tZXRhLWxvb25nYXJjaC8NCg0KUm9zcw==

