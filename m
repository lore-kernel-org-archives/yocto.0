Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43D7DC3DA66
	for <webhook@archiver.kernel.org>; Fri, 25 Aug 2023 16:50:37 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.41])
 by mx.groups.io with SMTP id smtpd.web11.515.1692982235419135603
 for <yocto@lists.yoctoproject.org>;
 Fri, 25 Aug 2023 09:50:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=JKsmYBZR;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=JKsmYBZR;
 spf=pass (domain: arm.com, ip: 40.107.21.41, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAiot5MQhPTLOxvhbsa8ndmOiH3L99aYm4o0pdcAvgk=;
 b=JKsmYBZRhardhgz7FwCtVGZIVxHDz10fGKtVeZXiz0E5SYPIlELFurK/89mKqXuAV2CJeSxIidLh6UUOI/pbv0QKjnueeDz9UgEKNfbVFv7vaaJLw9jPZID5mzGdskLG/70XeoPb0seSIVkA+Tr14rqQD+z7GicjQMZqJVU8/3s=
Received: from AS9PR04CA0141.eurprd04.prod.outlook.com (2603:10a6:20b:48a::11)
 by DB9PR08MB6730.eurprd08.prod.outlook.com (2603:10a6:10:2a2::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.29; Fri, 25 Aug
 2023 16:50:26 +0000
Received: from AM7EUR03FT035.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:48a:cafe::82) by AS9PR04CA0141.outlook.office365.com
 (2603:10a6:20b:48a::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.30 via Frontend
 Transport; Fri, 25 Aug 2023 16:50:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT035.mail.protection.outlook.com (100.127.141.24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6723.17 via Frontend Transport; Fri, 25 Aug 2023 16:50:25 +0000
Received: ("Tessian outbound 5c548696a0e7:v175"); Fri, 25 Aug 2023 16:50:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: cf07e78037c33b17
X-CR-MTA-TID: 64aa7808
Received: from 4fbe2ea74dbf.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9C7A526C-4F3F-4D35-B46A-E058EB3AF068.1;
	Fri, 25 Aug 2023 16:50:18 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4fbe2ea74dbf.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 25 Aug 2023 16:50:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AJKxY938jBaJ9jifVX94OyggEBYACd7M1OD6pUs/IG62/ceh9yRnAGcp5+m6k7oaIfxXxFYiY5uibMPxE388P41lY2iZ5/Yodvi7QXubmKS/TXToaiAzrfixdIl3T7Xw7XrNGMPuVXzuKi/h9GSjO876cTPt12Do5Cfv27aZnPo6jif5d7f5iEv1OxB5br5NDgtT24iQDA0d+GPP118t3v2E891PVcK06BaOefeRzShCCDAwdPYpgeXXWcaijwZ2SL60l2ZVGd4eQmLPQr02x9bZ3gf8GcR7y+uwctr+ERpMoGVHYAR5519xBrdE5JfnkewJaCpLpPMV7muOm6jTlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iAiot5MQhPTLOxvhbsa8ndmOiH3L99aYm4o0pdcAvgk=;
 b=OPEktQ9YMV31UFnBGN5tm6G5GZjoRuDOPoFy989VHzyZPaUfeQHgHBFzPQrtJcrb9WirCe8PmO66+I284NH1fyVnG1LQnGoc1oyRvrYgBx0fjJLxAhpifb+WDKd3u1Rf9+LuSTUcVO76eATSJ3I3Fp/6cLp6wvuaqaSf8N0MBgGa/nLfppPC2SC0CxcdKOX+yuTKQ6cTN8Stigdby57m/1NRnaJU/5mM5T2Mxtg6BjYNyBshz56bsq3KheoDm1jfkOXmby4jN4MgDTWKmnIX/FFt6XK2QTEcwwO61iVUFrTlXlpr7fV4g9eC6FJyus/gfz/eemXtC7nsrPfbrnljHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iAiot5MQhPTLOxvhbsa8ndmOiH3L99aYm4o0pdcAvgk=;
 b=JKsmYBZRhardhgz7FwCtVGZIVxHDz10fGKtVeZXiz0E5SYPIlELFurK/89mKqXuAV2CJeSxIidLh6UUOI/pbv0QKjnueeDz9UgEKNfbVFv7vaaJLw9jPZID5mzGdskLG/70XeoPb0seSIVkA+Tr14rqQD+z7GicjQMZqJVU8/3s=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PR3PR08MB5644.eurprd08.prod.outlook.com (2603:10a6:102:86::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Fri, 25 Aug
 2023 16:50:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6699.027; Fri, 25 Aug 2023
 16:50:13 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "suhas103@gmail.com" <suhas103@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] lxc 4.0.6 to 4.0.9 upgrade hitting error with liblxc.a:
 not a valid ELF file #meta-virtualization
Thread-Topic: [yocto] lxc 4.0.6 to 4.0.9 upgrade hitting error with liblxc.a:
 not a valid ELF file #meta-virtualization
Thread-Index: AQHZ13O4papGRie6DUyRsLj/SssFJq/7OXoA
Date: Fri, 25 Aug 2023 16:50:13 +0000
Message-ID: <224CC4C1-B01E-43C8-9458-82C6F570CB0E@arm.com>
References: <3F5Z.1692978446496601123.8m32@lists.yoctoproject.org>
In-Reply-To: <3F5Z.1692978446496601123.8m32@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PR3PR08MB5644:EE_|AM7EUR03FT035:EE_|DB9PR08MB6730:EE_
X-MS-Office365-Filtering-Correlation-Id: 1697f059-efb3-459f-cbf9-08dba58b616a
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /x9wBjvB4kZGPI0cafyFodWfEH2FwyV3+VGDay1IuykOAd+1N86yXVpXaQogWWTuS/jMxtnmMNhhgvQiFYfnfTOC6QS3l/lmXPbamibyE5kVD22ai+5yUpmxB4h6JZuT+S9YXSc/b+/ZPRWCKYVTkJkLbO4ieYcMf3hEEdS0EPS4hpRO++PV5zt1VlcxB3vPZ8yUnYl/v8T91pb4DD/WY2ghMgNODoYA9KsewykqYtlhcapBZ+PYrxjo/fBbZp6SWxpx9ost70P5aBSK2fs7drOrmFzJxIfgnxJ5EPnkYqwIDaqd5xHJ/uH6NeQyISgQnxns6nnqsN0t5I7kixNFq3coKX2XmM42mlfqXBdnPVAnjdQKD6sPvbQzOh3dKZN+zsEvUiV7DJQHnLWtfqV7C8/ujdF6TJmspeAjXIJIPMeWRG/StZ0tYpYAmhvO9I8lwjsQWgp5PksB5DsaWyt3KQUN8qJUo/wC3qdKTH6OXCPRKzcEuVpM4q3e9wad0Bm29clw+HY8S6nxtv8j1bxe/A1Et32F3pheg7EIIJKSWkcLhR8jhnahwKiQEH4SiYK69DS5QQ9NwrxwUyCHDiuo7omjbYC0HrTOHfHY1hoaQeSoDlxZmZNVC5vGuv0zXkPPGsgn8+9juZt5a8zxbDvVTA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(136003)(346002)(39860400002)(366004)(376002)(451199024)(186009)(1800799009)(66946007)(64756008)(66446008)(6916009)(66556008)(76116006)(66476007)(316002)(122000001)(478600001)(91956017)(26005)(38070700005)(38100700002)(71200400001)(41300700001)(53546011)(86362001)(6486002)(6512007)(6506007)(2906002)(4326008)(8676002)(8936002)(2616005)(5660300002)(83380400001)(33656002)(36756003)(4744005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <025F91235C446D4C8F7768298E63506C@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5644
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	18ae3429-438c-4998-b3c9-08dba58b59e4
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8lsu4kmr70mUjBHYcUrv3qfCXaLS2Mure3aLkWwhjxPnpix9LraewaNtYSsCLlXI9TspwFok8dWfLhn/UN0/KnQ3LowEKJ0RbbN9kVMpZIz3PWeGcu9c31E0SSEayRzSPDm5BTdGx95lhtsu90l+2JwpotjcVHJ7P837D9B6PpHQfpxtyL4jinkKx3sL9JVNHappe3SrzoDpWk2wf7i8cluWWuLN8rTpFA3UX0lO+HwqGG/+IO6M5hP/MrFv1oFKJ060+xTjQ2ZfbHGtiAIOJpAK3eFTx/JwxdGTqQsqcXNwAGkWJDAwY63UezBwdeqNHx+cruVg1YwCWOgNHxw1MOQzO6wJXeB9FTaMiMDCfE01xpk2k7dJKrkWwPPPpCArGvyL/F57acjCeZAE6XWt/EOtL8UQO+AmnG0FkX7kulOs126fLdoWTbOZNB2GYtOH1FJY6rLtbxp0Ms9t+x43XVKSE7d1v6HEmvWaGV9/aEvhOK31uEH6KPGWIyRQ/mXUOYqV9yPRJs9IPkP53djapr6R/Nfg94CnrQ8I4nv5emY1Xu39LqlIomPCJiah0CpKAwQoAmsG9/ftQIUjarsbAnjwRrOuwgSuBcHT5eYRiQUPHzOw66duHC2TI2wOwAI8nn+qq3DBwdL7bPg67nyuf40Eq6gzpki2KHIjQeskmIaawehmeANFWlk6x7eHi2ijB8lP3RxGqehKdW7g7Mi4+JXRpz7GExIEA4hmKlmQDc5o21N71kvp/64pdgxZ04w9
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(376002)(396003)(136003)(346002)(451199024)(1800799009)(82310400011)(186009)(40470700004)(46966006)(36840700001)(82740400003)(81166007)(356005)(40460700003)(8676002)(4326008)(8936002)(6862004)(41300700001)(6506007)(33656002)(6486002)(53546011)(316002)(36756003)(70206006)(70586007)(86362001)(6512007)(40480700001)(47076005)(26005)(478600001)(336012)(36860700001)(83380400001)(2906002)(4744005)(2616005)(5660300002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2023 16:50:25.6014
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1697f059-efb3-459f-cbf9-08dba58b616a
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT035.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6730
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 25 Aug 2023 16:50:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60893

T24gMjUgQXVnIDIwMjMsIGF0IDE2OjQ3LCBzdWhhczEwMyB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8c3VoYXMxMDM9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0K
PiANCj4gVHJ5aW5nIHRvIHVwZGF0ZSBtZXRhLXZpcnR1YWxpemF0aW9uIGluIER1bmZlbGwgYnJh
bmNoLiANCj4gDQo+IFByZXZpb3VzbHkgdXNpbmcgbWV0YS12aXJ0dWFsaXphdGlvbiBoYXNoIHVz
ZWQgd2FzICJiZWVhMTE5ZWI1MjliNGExMWYyNjYwMDRhZWU4YjU0ODQyN2FlYTM5IiB3aGVyZSBs
eGMgaXMgYXQgNC4wLjYgYW5kIHdoZW4gbW9kaWZpZWQgdG8gImU2YjZhYmFjZmIzYTcyNzNmMGU0
MTU0MDEwZjc0OTI1MmMxZWIwYTIiICh3aGVyZSBseGMgaXMgYXQgNC4wLjkpIGZvbGxvd2luZyBl
cnJvciBpcyB0aHJvd2luZy4NCj4gDQo+IA0KPiBFUlJPUjogbHhjLTQuMC45LXIwIGRvX3BhY2th
Z2U6IGR3YXJmc3JjZmlsZXMgZmFpbGVkIHdpdGggZXhpdCBjb2RlIDEgKGNtZCB3YXMgWydkd2Fy
ZnNyY2ZpbGVzJywgJy9ub2JhY2t1cC9yYXZwYXRpMi9leGlzdGluZ19vZS94ci1vZS9idWlsZC9f
dG1wLWxudC93b3JrL2NvcmVpNy02NC14ci1saW51eC9seGMvNC4wLjktcjAvcGFja2FnZS91c3Iv
bGliNjQvbGlibHhjLmEnXSk6DQo+IGR3YXJmc3JjZmlsZXM6IC9ub2JhY2t1cC9yYXZwYXRpMi9l
eGlzdGluZ19vZS94ci1vZS9idWlsZC9fdG1wLWxudC93b3JrL2NvcmVpNy02NC14ci1saW51eC9s
eGMvNC4wLjktcjAvcGFja2FnZS91c3IvbGliNjQvbGlibHhjLmE6IG5vdCBhIHZhbGlkIEVMRiBm
aWxlDQoNCldlbGwsIHRoZSBmaXJzdCB0aGluZyB0byBkbyBpcyBkZXRlcm1pbmUgd2hhdCBsaWJs
eGMuYSBpcy4gIEl04oCZcyBub3QgbWVhbnQgdG8gYmUgYW4gRUxGLCBzbyB0aGUgcXVlc3Rpb24g
aXMgd2hhdCBpcyBpdCBhbmQgd2h5IGRvZXMgZHdhcmZzcmNmaWxlcyB3YW50IHRvIGxvYWQgaXQg
YXMgRUxGPw0KDQpSb3Nz

