Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB217C433EF
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 11:55:47 +0000 (UTC)
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
 (EUR02-HE1-obe.outbound.protection.outlook.com [40.107.1.84])
 by mx.groups.io with SMTP id smtpd.web11.8388.1651838142843985452
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 04:55:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=ChhJ5CXp;
 spf=pass (domain: arm.com, ip: 40.107.1.84, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=jfeafZs2sZWklPnL2pfEg0PYS8yIPkBrRz7bHDWvecZlHOnbWq446ePeEDGdJbaFK+bI6fsh4oWu50y54Uf9l1iFAhoEe3kbWZhKRfCdgpkYO9ZZA8KImcjyjNSCMG/B0QUYWUl1L0T9FqtPPrNAMBYtDQGZ3C+oQqO632Fi8HfuZmVX//AK/8sMbOdhhwmnCYU4QAvkq2ssolHuLJUY6Sw3Eg5sYshDiwtMCNvOZgHOxR9cEuYIzSWotKpSqmm65ILf62VYavSuhTQdoB+nqT9VGuqymttz3kqfZKqkn1Mi2Fs5Mcv8irRBV7o7nOj2c7m7ykZZ83hSm0J5Z+U6Tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hu+0a4pHaNx6Knk/VzZEPBeSB/JCn4k+5MPHYDCtDm8=;
 b=X6pX+imqzeQTK3u2vB8ow9ojwDySjwp+RSNhcZbc0RFkC2OnNp9ssDDQz9cpHq37A2Zqj3132PlGU/5B61fvEObwbPsZpmKQWYCzX7d2zyMmi1rllRzixEpKq5Y8yJut5Vd/Py6xexI+S6kzg04iv0wwVSRbLCrANNTF9lOKPrHB16dltCj81Z8tyaeTZCxEXPI//U0vdTNpF/R/cKV0WsM5UkeFio6y0fBkwlm/zvl2egjNs6r2EWFgB4XZsOlxQgAdvlNRXKjA3rDHhFibOxW3hKtFx8tL7X/22jz2aHv9xPzeyA1RcTJNVsKauRIsEUErxJu//BeYp245idnShA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hu+0a4pHaNx6Knk/VzZEPBeSB/JCn4k+5MPHYDCtDm8=;
 b=ChhJ5CXpmm3CPCXMeUjWD4myKvscvwfz5XndYKYtKoQXLNuXL67ByPsfISD8HnvMW8CgRU3sGR+pcuUYISflHtRYHIjGcHvdb8/FJrC6NhpPPBQTOpzBueTMP75/P/1saw/UYgoj3fA2GFP5NN/X/eY3eNl3d+HJbRf662jUyaE=
Received: from AS9PR06CA0075.eurprd06.prod.outlook.com (2603:10a6:20b:464::23)
 by AM6PR08MB3958.eurprd08.prod.outlook.com (2603:10a6:20b:a6::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Fri, 6 May
 2022 11:55:37 +0000
Received: from AM5EUR03FT063.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:464:cafe::8e) by AS9PR06CA0075.outlook.office365.com
 (2603:10a6:20b:464::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.14 via Frontend
 Transport; Fri, 6 May 2022 11:55:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT063.mail.protection.outlook.com (10.152.16.226) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.15 via Frontend Transport; Fri, 6 May 2022 11:55:37 +0000
Received: ("Tessian outbound facaf1373bbd:v118");
 Fri, 06 May 2022 11:55:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 7fd45605e0efb60b
X-CR-MTA-TID: 64aa7808
Received: from 7983251813f3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 A8B97309-AA1E-4282-9CFE-C89966A7D1B8.1;
	Fri, 06 May 2022 11:55:30 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 7983251813f3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 06 May 2022 11:55:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OZ8Jj/lMFeGKqAF/6bQ8ITRFXH4F3fAFPlDs8T9LUoYJ2BCOVlJQoJpoPraysZjVO4TO+g1qoub1Otx8JSkST1NB4ISSAP1TXprTBFj0Bf7mJih01NMR6qKP7qDBstMNbL+LNVJ+UNqueLtYt0fePcZZpwhuLOHDXQqnrWEVATFfk4aTC8epxJLdMkLONPAyLRo3W5oUP3mfVmvwZBIwyhQo3DpOmvaMcCF3Yc9Eq+A9pkumR1SXO4pUvReeNzcD01S3yZniq9KaDp/eg0ai/CTcVxx4F+ZSS3ZVAfU+A4f328mBgWJOVNJbKQ0/AHNq0yKM23e2qeBBuVpib8VxnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hu+0a4pHaNx6Knk/VzZEPBeSB/JCn4k+5MPHYDCtDm8=;
 b=IDDOJ6afa3k6PFubeiR2UapW8zdJqN0Fr0i0fj9PSeYcwL2rAFpMoD6LkQUeXXlyna97HUjoVeZO7EGvFWJjGPHf0xfgfo4er0FgpoWHrDag3n2MRvZWXc7No9icGK+krUW3znxk0pLLBSXDzlvaU2nYJeg78R5i/FCl3zCmVlRaBkDJjwiI2OmopXseESB2FaVhfmFV9tkOF6xYGM1rv9MGM/f+aFpRVYaDf1BZR9r2c2wSOCYCWF+Hj9M+oipeTNgF05AzODyNcwgr0Yq0bV0iJFPHrNsY7oOqACkcsUUue2ipY6tPgMFs4H1csLCrbC3lXCf2lf1jKKPRiYg8xw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Hu+0a4pHaNx6Knk/VzZEPBeSB/JCn4k+5MPHYDCtDm8=;
 b=ChhJ5CXpmm3CPCXMeUjWD4myKvscvwfz5XndYKYtKoQXLNuXL67ByPsfISD8HnvMW8CgRU3sGR+pcuUYISflHtRYHIjGcHvdb8/FJrC6NhpPPBQTOpzBueTMP75/P/1saw/UYgoj3fA2GFP5NN/X/eY3eNl3d+HJbRf662jUyaE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by HE1PR0801MB1643.eurprd08.prod.outlook.com (2603:10a6:3:83::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.24; Fri, 6 May
 2022 11:55:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d%7]) with mapi id 15.20.5206.025; Fri, 6 May 2022
 11:55:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "jchludzinski@vivaldi.net" <jchludzinski@vivaldi.net>
CC: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] OE Linux & board-support-package
Thread-Topic: [yocto] OE Linux & board-support-package
Thread-Index: AQHYYDI0GeHw+25sNkS+aRncvcL7nK0Rv/YA
Date: Fri, 6 May 2022 11:55:28 +0000
Message-ID: <864ACA6A-CC8D-4680-B78C-EF28023D111C@arm.com>
References: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
In-Reply-To: <9d3557790b185eab39f60301c57f7a9d@vivaldi.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3693.60.0.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: d6ce9831-6f9a-4f38-4b07-08da2f5755ed
x-ms-traffictypediagnostic: 
	HE1PR0801MB1643:EE_|AM5EUR03FT063:EE_|AM6PR08MB3958:EE_
X-Microsoft-Antispam-PRVS: 
	<AM6PR08MB39586093F71FB21B160C05D9E8C59@AM6PR08MB3958.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 HlaENdaflszwDwdWMSiFyVTboUCZ9OvWudvaOZjpxPs4lmIPgPBNfBUMMPwMwTg+XORRqIhpTyZ5BsZkmumsAaiRf15/zH1FfbjRY/uk1VAqZCNbJyYOI5kYvELg+HF3PEQV5DSjSGwKZMfcUbLqt74mWgxOJY0SVG4b2skgqPN6VREQrOJQPSd/S7So5Y+/pIHRtftMst7FHav6TdeZQI2IoDzemgeG1fi3ClYnk+CffNZvonvhOdoIkZiJEYsWjprm6zl3tlhssh7OIKs+1Zb23UbH9hZR7tQP6PM3BCl7Y5f0KQI8nxwHJBZZNB7/PPAf10uN6VI7Z8UuN2eKTmSfshes9KfhBEqEKVRpKNtDh0RLa1RGy/kX3f+hksd8qLlZ0KoA/dvofTmFxECiW5pZqbAWWigdfEhb2mOWLJEUXI4Wga8ST9WMQAPvtHfJiZb1CDPlqIFMWYUfuXTtYAz9MffCEC/OuNqOeV4qgRDXHPSo5tflR9YoX3dZA6DDT1wsxQlrYf48RhDn/+BKC0U+rd4Ym9PuFiwzd/QJ6lGNy7OoLrmar7mQHhMiJ06nM9J9vqZD5Q5Y353/pF5f36GP5CTiRF90FhNoOImmzntEaUmHvi0ai517sZoRMP9JMEBJOFbXZJT4lU2bEzvc9WLpzD6VB0dknyWbJB96CryV5SJqg4eJXS5VqEPE301Nbx4k/UEgJpXY8wGjyZh0O/xz8pDvbWf6zTwjXIoaJYA2iKPfd0xBgl2E4LGa1Ml8
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(316002)(26005)(8936002)(6486002)(508600001)(186003)(5660300002)(122000001)(91956017)(38070700005)(38100700002)(76116006)(6506007)(86362001)(53546011)(4744005)(66946007)(66556008)(66476007)(8676002)(4326008)(36756003)(83380400001)(2616005)(64756008)(66446008)(2906002)(33656002)(71200400001)(6916009)(6512007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <D3971F527E3BDD4F9EDF260C86C4A014@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0801MB1643
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	9dd47e95-46df-4401-4baf-08da2f5750a7
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AtImnNSLyNAmjHLdJOCNGNUYVALpFFVnycVm5v8g9QrOJOQo6W12tl+Qu423+uBI0yQZx2lpviNTlCr+WW5PttRmi2+TvWbJtIesYekdwdmBtXGhHKNQcacddJdfxgR/UfIIDrgnETwzoRLlhl3a8gs7sRwIJl1Ysace+BnEYZocBpqLi95lpyIE1mdOtlaq+geicGTKh192ZLCwMTQQaunylHv83KbduJeyhsOFh7LD1Q0+C/0DgyYnCwjX6z/wrxcBlmsRhR5/uTazHRRxdZjmwUTEZY4MG657H1qEDxc+I0pKLluchrxUCc8N09DSMbiu6V9mg7kdYbqgKB3BwlLzt/6FRzVIIUeOf8sIok+UWkvSyhsBraU7BzyKjrM5F7H+LpmeY3FoHfrwsFJSd4IKdXQaKIggBeBDWwveH97QMc0lhk3CZdLFRy3wSW0CAuKvsUPGT+oNHP0z779fUkzkbx6nd1YkFi3LqSc9Q8DQ3n9ptOl2pJ9KKRgqPHEL+7A1ypRcIagX8cLTCvdj4dLYMFj8TJpG12O7OtlssF0ubOdtX8+4AV7pz2jZsBYGCs8nBMQ9tvZ3ZszBQzha3DJGELpbeiLIU0P/Vrtrfzk4xRPqC9uSsjesGdxE7tCWalMOENiBOK8LJqS+oASKatQgDvm9cjTLslc0WGsUeF/TY2VhbGKXiSVe5jNzynrg
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(82310400005)(81166007)(356005)(36860700001)(316002)(6486002)(5660300002)(8936002)(2906002)(4744005)(8676002)(4326008)(6862004)(70586007)(70206006)(508600001)(2616005)(336012)(186003)(47076005)(83380400001)(40460700003)(86362001)(26005)(33656002)(53546011)(6506007)(6512007)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2022 11:55:37.5996
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 d6ce9831-6f9a-4f38-4b07-08da2f5755ed
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT063.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3958
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 11:55:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57009

T24gNSBNYXkgMjAyMiwgYXQgMDQ6NDIsIGpjaGx1ZHppbnNraSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8amNobHVkemluc2tpPXZpdmFsZGkubmV0QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPg0KPiBPRSBMaW51eCB1c2VzIGRldmljZSB0cmVlIGZpbGVzICgqLmR0cyBhbmQg
Ki5kdHNpIGZpbGVzKSwgc28gaXMgdGhlcmUgYW55IG5lZWQgZm9yIGEgYm9hcmQtc3VwcG9ydC1w
YWNrYWdlPw0KDQpJbiB0aGUgZ2xvcmlvdXMgZnV0dXJlLCB0aGV5IHdpbGwgYmUgbXVjaCBzbWFs
bGVyLg0KDQpOb3RlIGhvdyBtZXRhLWFybSBoYXMgZ2VuZXJpYyBJbnRlbCBCU1BzLCBhbmQgdGhh
bmtzIHRvIHJlY2VudCBzdGFuZGFyZGlzYXRpb24gaW4gQXJtIChTeXN0ZW1SZWFkeSwgZXRjKSB0
aGVyZeKAmXMgYSBnZW5lcmljLWFybTY0IG1hY2hpbmUgaW4gbWV0YS1hcm0gdG9vLg0KDQpPZiBj
b3Vyc2UsIHJlYWxpdHkgYW5kIHRoZW9yeSByYXJlbHkgYWdyZWUsIGFuZCBpbiB0aGUgZW1iZWRk
ZWQvaW90IHNwYWNlIHRoZXJlIGlzIGEgbXVjaCBncmVhdGVyIG5lZWQgZm9yIGN1c3RvbWlzYXRp
b24sIHNvIEkgZG9u4oCZdCBleHBlY3QgdG8gc2VlIOKAnEJTUHPigJ0gZGlzYXBwZWFyaW5nIHNo
b3J0bHkuDQoNClJvc3MNCklNUE9SVEFOVCBOT1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0aGlzIGVt
YWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGNvbmZpZGVudGlhbCBhbmQgbWF5IGFsc28gYmUg
cHJpdmlsZWdlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNl
IG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2UgdGhlIGNv
bnRlbnRzIHRvIGFueSBvdGhlciBwZXJzb24sIHVzZSBpdCBmb3IgYW55IHB1cnBvc2UsIG9yIHN0
b3JlIG9yIGNvcHkgdGhlIGluZm9ybWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4NCg==

