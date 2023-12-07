Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80065C4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 12:52:16 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.85])
 by mx.groups.io with SMTP id smtpd.web10.83224.1701953535704451311
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 04:52:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=8/ona6m3;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=8/ona6m3;
 spf=pass (domain: arm.com, ip: 40.107.6.85, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=jMa0jaUCh6L4D3OGcJL4qS6BtwYqw50c55wJncMtdGWl6eLB8Wro278UhKPTaQ6+/smnwGMsZARVxsyzXaiFZXaUFgHu28k5l74s2xCa5jiM6aBWA2SLMeHs/MBxBh+jQc+UfnSy0omBOAmWMnKAIO0I8CZs97K4+RBoWi9zCHTYcapGHJvinVSgaC1d1BWUs6O5xj7d1A9UAtcMjp54tMLhWYa5yTN250gaHC7HJRLGAvBAZqn/2Q8n5fMfmVKn/ZQk83T6CTBkGQ/9DrVoB3PJmbsGypGXFNlkQS3U2/+n5LJGdgcFn7VFBrU968d17BQDavlohKGcbnAD9AgJPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ep+5OcmNyL1Xd3141ZvNsmjmY9ceIGeaRKe2xqtRJGk=;
 b=VkOQS2qCYQa5qV69fjHrfE54i/kFEd/lfLcj+8p5ZGAGq/Rs33jGnsY0Wt8kOjn+3BUpnAUtiaCymYD24vnVBBfqxw/PgnzW4K3O+c0x019giQ9SQUBl+x54R8b2vFAydQYno32u5z1CmfqoZvQbBa2PCjzHe13EpeD6SrULry0AyC0pyuCobEpK6dVEMRGzrvDbkJ0JOf0WTmWTjJn5MOjNRGcemposjLPQAPf22DbE7+Bk5r1+2vQK0mxu/fQDxTK0UgjpQ+kHSivzGOY/7VMaIysjFMoJTskPfyFXjYNFAWgVapThgO3GrbVk2m9UyCnpOqTHzkgNADjIgBgV4Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ep+5OcmNyL1Xd3141ZvNsmjmY9ceIGeaRKe2xqtRJGk=;
 b=8/ona6m3aHbIUNioaDyBvywnF6/axr6TKSl1711THHjy9CW4xnDayP/MAi+CceEunZIYgCpDA0vObD53JI9n9AbmH3hztdIaJylXMK6Xsmh6vF8aU114cGKKxN69lybNJfuvOQ7P4Xye0xOGU6jWWOTwI3XlPhhg9vbvXgDKn80=
Received: from AS8PR04CA0196.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::21)
 by DU5PR08MB10804.eurprd08.prod.outlook.com (2603:10a6:10:522::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 12:52:11 +0000
Received: from AMS0EPF000001A2.eurprd05.prod.outlook.com
 (2603:10a6:20b:2f3:cafe::35) by AS8PR04CA0196.outlook.office365.com
 (2603:10a6:20b:2f3::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34 via Frontend
 Transport; Thu, 7 Dec 2023 12:52:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A2.mail.protection.outlook.com (10.167.16.235) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.20 via Frontend Transport; Thu, 7 Dec 2023 12:52:11 +0000
Received: ("Tessian outbound 20615a7e7970:v228"); Thu, 07 Dec 2023 12:52:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: b53e41d6fe83fa72
X-CR-MTA-TID: 64aa7808
Received: from 86b50d389f74.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3F76CCD9-666B-4FF2-B3FE-721E5A7060B9.1;
	Thu, 07 Dec 2023 12:52:04 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 86b50d389f74.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 07 Dec 2023 12:52:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AbgIKz+Gn9+rUVo4gkl2nu+1P59DpguiOfRFy+4WmczbAKBYPv8AiZGADGCoY3C8xeRR3TWw6w3LZYTY8eJN3q4UMYbWYO3nRAZu4k72019xl8DloY9//573v/pbQGilLrvUitfvr59fKAiZjsk2+oQ1O7G+D/S8YxqAJekl9h8esyQ/smIjcGsMLbE+xZe8lkmT2I9Y+g+stXU4fz6i8pSj73iFoYv5ntNJEkYpODSLZQXJicpjQPJBzUQgvFLP2QJEz2eHFCRV+wqR6KtKaASoE8ExTZ0UOmGJnWxh/gJ31a+hKwySqI5XWGnjR7/kP3C41/IWcu4625LgbFM2Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ep+5OcmNyL1Xd3141ZvNsmjmY9ceIGeaRKe2xqtRJGk=;
 b=Ce06uXVmv/1Zp3KKAzgKk/9vTFoZlKuiU6p7WyuLXlbF4+KPHmJCmQY/HW0euk+4rJr/N5gr04BXhqg2WwKB/ipoDYpaUZGsMvoj/KgA6400dIFRNvbIIjd/WdWOfITG3wSC1UIoqE5rsjmzjFsWI/Q4H3jYjKHdcpvEtu4lwYpsdElbtD73dSJZZ8pTa1BvYsuz5E9oK17+nbXnYAV/YINbKi+FYi+0ZFLb85CT8V3H88xMn6ZQ0grCqxBxZnJz2pehQKgVGhbaIzpyMOgcSKZ8UvhfT/5T2vw+628m6V/uI7qw12Qxc5Qw0K7JhqEMlmDE/Baj87m1fO8Nu/3LlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ep+5OcmNyL1Xd3141ZvNsmjmY9ceIGeaRKe2xqtRJGk=;
 b=8/ona6m3aHbIUNioaDyBvywnF6/axr6TKSl1711THHjy9CW4xnDayP/MAi+CceEunZIYgCpDA0vObD53JI9n9AbmH3hztdIaJylXMK6Xsmh6vF8aU114cGKKxN69lybNJfuvOQ7P4Xye0xOGU6jWWOTwI3XlPhhg9vbvXgDKn80=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB8724.eurprd08.prod.outlook.com (2603:10a6:10:3d0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 12:52:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7068.027; Thu, 7 Dec 2023
 12:52:01 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "iurascu_teo@hotmail.com" <iurascu_teo@hotmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Static library created by recipe arch is not correct #sdk
 #yocto
Thread-Topic: [yocto] Static library created by recipe arch is not correct
 #sdk #yocto
Thread-Index: AQHaKQjgt9sNvvjDnkG50gm/XSRJBLCdxjgA
Date: Thu, 7 Dec 2023 12:52:01 +0000
Message-ID: <49B96581-E340-47A0-B858-858DDB5690C0@arm.com>
References: <mZaN.1701952094193943491.UbkB@lists.yoctoproject.org>
In-Reply-To: <mZaN.1701952094193943491.UbkB@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB8724:EE_|AMS0EPF000001A2:EE_|DU5PR08MB10804:EE_
X-MS-Office365-Filtering-Correlation-Id: 707c106e-64c2-4f2c-f3b5-08dbf723543c
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 uGI9lUMRCCYCSeGfo1UumlcJcWxF3WOKY3bXZ48iJd3VWDYQTQuTl3addFFD3imw+i45W3FImYzbu0YIyWHQfWFyA3L2XxQ3g91mCkkP0pPl0cOgNIo1DXDX21ovv7i25yVBfDo2thQdyY75c+BZVZ5/SxCRYyLEnHnUlxIfRsGf0Pn3DI77c1suwuzXJQHJlI1nbwNDUNwqElQNXtKPYNVyzrKpO9gbkTcWEqV6iCFESWtVkHOT+bnxe6wDaxGv92VZUuSJ92cRAoex2WghqIs33RUDVi4LS+Ec+HcaZuZUh9SxAPumiyHMthkuhfDyAsxbXi5H+yKJVZqL7rDLvcYcYr+RsXfBPQziBOTgvfUAepV2SDL/XeX/pA7Nw5wZSMpxyYN5bAnJvgBoKRjW1OlzY+LlV5czt8WYPF6bpd3xbURecPaHAmpyna8QLth/dDnJy+RQ507G1fxucBV3K5X/qBVIZYk0tpcf8uV+zpynzU7LNKCUa5C91/1QZfCDE+4/qhQ0haeVdS17rfo+LvAZxYxES/9Fdx/KS8D9l2/pBaO2jyPeoaL6+Zm88fexM4wHPnOA7AFtAbYTwzowHD1JFc5A+BspWUmQp9gf9KZHALMGGn/t55LBXMHA5/xQ0zcLp5udc4lKTCPyAvonCA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(376002)(346002)(39860400002)(136003)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(38070700009)(6512007)(4326008)(6506007)(6486002)(53546011)(2616005)(26005)(71200400001)(8676002)(8936002)(64756008)(6916009)(66946007)(91956017)(66476007)(66446008)(66556008)(76116006)(83380400001)(316002)(5660300002)(38100700002)(33656002)(478600001)(36756003)(86362001)(41300700001)(2906002)(122000001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <2B3E74C35025384EA3278BB1D71CB3E2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8724
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A2.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	46d49a04-cdd3-4b40-b443-08dbf7234e59
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9/2jmq12xuiWgJVWwX8txv32rW+XZ3JgsiIBBbJsJJN6Dy9L0GQxAa4xyeaG/iSN9wucRyw+/0AHw9zjPso1jxg0jNpY1UD/VKZay+VxQN/mtebqYKJLggdoNbYTfEVU1MZMkJ650m+HkKHRCs5SQE9+uE6CNRMslpZG9RfIGzs9yGA8F212MpL8+IAyW0ke4EGTW3Ha3zuXNJbYx5/COUZSoFwAHiJz6kwDAdKPuO563QlctaSDCmyCPVAjK6mVgK4dKgs3Tvak6uJ30wGE3XS+hcJl11cfLM4ccMaI42fKLKHY18Zit+Q669Fioi3qR1Q2bKRD3RUiJFzexx6QpaEUSGERMxzfK8J5ZAJpXFKnqU6F1ThTp70ug6QhutH7S1KhzuNO1AsaDK6V7doF3GwPxVyzFgOMbyTrIAMufmDb2jL3EbgLJHYm33wXdmQ+197bjFgg1GssKJy6VaElByCjt7mbu1RcIOTzZ50iPI0DOe81nd89aXTS2YthPDOVw8rRTp0zmiAZyr7IjLiwg3ANv6EZSvh0C6oVvp+yl6keEwXxXbNMVxvIj53p6OC//x4xJwCNNJafJnRiSYZpssRFuOro30OYF4gflc3XIey2KOAC0ASIRN9bMmFWIe5sQLwHdMSXEMig2zs495sdy8LS+AYL/yztHcWGz80KAh/4NcPLJP+wacyQ1wJij04dOjU4lGnA5TZsCno8Xz+kOuaZFPHTV7WDtKYH+Xw1Uy51O1xT7ibDY4oa30U1ao65
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(346002)(396003)(39860400002)(136003)(230922051799003)(451199024)(82310400011)(64100799003)(1800799012)(186009)(40470700004)(36840700001)(46966006)(36756003)(41300700001)(5660300002)(2906002)(86362001)(40460700003)(33656002)(6506007)(6486002)(82740400003)(47076005)(70206006)(81166007)(356005)(70586007)(26005)(53546011)(45080400002)(83380400001)(478600001)(6512007)(336012)(2616005)(40480700001)(6862004)(4326008)(36860700001)(8936002)(8676002)(316002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 12:52:11.1785
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 707c106e-64c2-4f2c-f3b5-08dbf723543c
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A2.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10804
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 12:52:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61829

T24gNyBEZWMgMjAyMywgYXQgMTI6MjgsIEl1cmFzY3UgVGVvZG9yIHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxpdXJhc2N1X3Rlbz1ob3RtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gDQo+IEhlbGxvLA0KPiANCj4gSSBoYXZlIGNyZWF0ZWQgYSByZWNpcGUgdG8g
aW5jbHVkZSB0aGUgSU9CQiBsaWJyYXJ5IGluIHRoZSBTREsuIFRyeWluZyB0byBjb21waWxlIGEg
LmMgZmlsZSBpbiB0aGUgU0RLIGVudmlyb25tZW50IGdpdmVzIG1lIHRoaXMgZXJyb3I6DQo+IA0K
PiAkICR7Q0N9IHBiLXRlc3QtaW5wdXRzLmMgLWxpb2JiIA0KPiAvb3B0L3Bva3kvNC4yLjIvc3lz
cm9vdHMveDg2XzY0LXBva3lzZGstbGludXgvdXNyL2xpYmV4ZWMvYXJtLXBva3ktbGludXgtZ251
ZWFiaS9nY2MvYXJtLXBva3ktbGludXgtZ251ZWFiaS8xMi4zLjAvbGQ6IC9vcHQvcG9reS80LjIu
Mi9zeXNyb290cy9jb3J0ZXhhOGhmLW5lb24tcG9reS1saW51eC1nbnVlYWJpL3Vzci9sb2NhbC9s
aWIvbGliaW9iYi5hOiBlcnJvciBhZGRpbmcgc3ltYm9sczogZmlsZSBmb3JtYXQgbm90IHJlY29n
bml6ZWQNCj4gDQo+IFJlY2lwZSBmaWxlOg0KPiANCj4gZG9fY29tcGlsZSAoKSB7DQo+ICAgICAj
IFlvdSB3aWxsIGFsbW9zdCBjZXJ0YWlubHkgbmVlZCB0byBhZGQgYWRkaXRpb25hbCBhcmd1bWVu
dHMgaGVyZQ0KPiAgICAgb2VfcnVubWFrZSBjYz0ke0NDfQ0KPiB9DQo+IA0KPiBkb19pbnN0YWxs
ICgpIHsNCj4gICAgICMgVGhpcyBpcyBhIGd1ZXNzOyBhZGRpdGlvbmFsIGFyZ3VtZW50cyBtYXkg
YmUgcmVxdWlyZWQNCj4gICAgIG9lX3J1bm1ha2UgaW5zdGFsbCBsb2NhdGllPSR7RH0NCj4gICAg
ICNybSAke0R9L3Vzci9sb2NhbC9saWIvbGliaW9iYi5hDQo+IH0NCj4gDQo+IA0KPiBNYWtlZmls
ZToNCj4gDQo+IGxpYmlvYmIuYSA6ICR7TElCX1BBVEh9QkJCaW9saWIuYyAke0xJQl9QQVRIfUJC
QmlvbGliLmggQkJCaW9saWJfUFdNU1MubyBCQkJpb2xpYl9NY1NQSS5vIEJCQmlvbGliX0FEQ1RT
Qy5vIGkyY2Z1bmMubw0KPiAke2NjfSAtYyAke0xJQl9QQVRIfUJCQmlvbGliLmMgLW8gJHtMSUJf
UEFUSH1CQkJpb2xpYi5vDQo+IGFyIC1ycyAke0xJQl9QQVRIfWxpYmlvYmIuYSAke0xJQl9QQVRI
fUJCQmlvbGliLm8gJHtMSUJfUEFUSH1CQkJpb2xpYl9QV01TUy5vICR7TElCX1BBVEh9QkJCaW9s
aWJfTWNTUEkubyAke0xJQl9QQVRIfUJCQmlvbGliX0FEQ1RTQy5vICR7TElCX1BBVEh9aTJjZnVu
Yy5vDQoNClRoYXTigJlzIG5vdCB0aGUgd2hvbGUgbWFrZWZpbGUsIGNhbiB5b3UgdmVyaWZ5IHRo
YXQgaXTigJlzIGFjdHVhbGx5IHVzaW5nICR7Q0N9IGFuZCBub3QgZ2NjIGluIGV2ZXJ5IGJ1aWxk
IHN0ZXA/DQoNClJ1biBmaWxlIG9uIHRoZSBsaWJpb2JiLmEgdG8gdmVyaWZ5IGl0IGNvbnRhaW5z
IHdoYXQgeW91IGV4cGVjdC4NCg0KQWxzbyBpbnN0YWxsIHRoZSBsaWJyYXJ5IHRvICR7RH0ke2xp
YmRpcn0sIC91c3IvbG9jYWwvIGlzIGZvciBub24tbWFuYWdlZCBmaWxlcyBhbmQgYnkgd3JpdGlu
ZyBhIHJlY2lwZSBpdOKAmXMgbWFuYWdlZC4NCg0KSSBhbHNvIG5vdGUgdGhhdCBpb2JiIGlzIGxv
bmctZGVhZCBzbyB0aGVyZSBtaWdodCBiZSBhIGJldHRlciBhbHRlcm5hdGl2ZSBub3cuDQoNClJv
c3M=

