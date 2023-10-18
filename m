Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81B38CDB47E
	for <webhook@archiver.kernel.org>; Wed, 18 Oct 2023 15:32:57 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.58])
 by mx.groups.io with SMTP id smtpd.web11.284203.1697643173122989192
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Oct 2023 08:32:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=gWLJAYp/;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=gWLJAYp/;
 spf=pass (domain: arm.com, ip: 40.107.104.58, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Lw3ZdCyIEQrdceQoo/G5GQ1TYyELfv++4dMt/VBtec=;
 b=gWLJAYp/+ndWae9sA8iP6vuaN/8uAvpwzf1H+d6PRcB5WjMaFAuIGqHWn9h2VUGKh/5ZnslfdGPrSsNtrBVdF4KNdLNswvFztwuVXn/ceXHTWEmrP148h8B4XYfyGJjvWnt2HB9MXOGHROGYb8DxYVMO4UCiEt764noaswn9wtw=
Received: from AM4PR05CA0012.eurprd05.prod.outlook.com (2603:10a6:205::25) by
 PR3PR08MB5625.eurprd08.prod.outlook.com (2603:10a6:102:89::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.36; Wed, 18 Oct 2023 15:32:46 +0000
Received: from AM7EUR03FT040.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:205:0:cafe::8d) by AM4PR05CA0012.outlook.office365.com
 (2603:10a6:205::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.21 via Frontend
 Transport; Wed, 18 Oct 2023 15:32:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT040.mail.protection.outlook.com (100.127.140.128) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.20 via Frontend Transport; Wed, 18 Oct 2023 15:32:46 +0000
Received: ("Tessian outbound d1b3e404ba03:v215"); Wed, 18 Oct 2023 15:32:46 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6773f01ed3f4622c
X-CR-MTA-TID: 64aa7808
Received: from f1f6d8910cf3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 76F0D4C8-4F74-4888-9C0F-CD41A6A4AE82.1;
	Wed, 18 Oct 2023 15:32:39 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f1f6d8910cf3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 18 Oct 2023 15:32:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jYKuh/1lftIJHxSEaDwRnMlPGMHGfDXLWXinTZcGTwc3KQrQLW/duFtu5w/lZt3+3opjFPkcN5jq3fW91Zl8mXEPY5aA7nNc3fgIJlLITGtKeOkXhongSRrrYsRORGs2RAFLi1ARKkXkOWehwLwlcjlnJNLZLxqN5bmoadSgGTHjUdHv8SW+1IJbXQVFYrPRCQ6N4xKPSqUjP/QwC15hwLmYPMKOor8DQUwwGOTFOrtRmn2byKPA/NmuYuYknabrS0jhVLxJO0knzWH96yCQEc8lyZ8YwcBlxH5gSzDIlLdNcZ3C2w2QdFPn50q0j/TyWhJVVp3Gb0mbesGcoUEnUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Lw3ZdCyIEQrdceQoo/G5GQ1TYyELfv++4dMt/VBtec=;
 b=ZvhjBVJVx8LWDwyfQ4hb//IAHN7J6na3xjf8LrolMiCEZMz8xk+1SO54JjiX4CkHlXtQOM7RyF/Lx3YVarJJgoZEBuuZQyUybhcgQasNRvyi3STD71Rfnb4rcz+rNxlplmcT55YGeB7oAdM/2pVhGmwudRsgRg86MXpH819vOpg7o0+CS+IRsw/GmqRjLWC5zuXxWoesoEv/W0TI8GZIawOZfdYMiFKtF30ylBq2bExln9UlPa5VkNbkupQi1q6TpVR2+Y3IA0zNNKKyY8FC9Jay5xyQbV1dzBYrf/o+2ibdl9XBcTeZM8FFhAiyb53xHx4qRFK6oi0pWQeErWs/Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3Lw3ZdCyIEQrdceQoo/G5GQ1TYyELfv++4dMt/VBtec=;
 b=gWLJAYp/+ndWae9sA8iP6vuaN/8uAvpwzf1H+d6PRcB5WjMaFAuIGqHWn9h2VUGKh/5ZnslfdGPrSsNtrBVdF4KNdLNswvFztwuVXn/ceXHTWEmrP148h8B4XYfyGJjvWnt2HB9MXOGHROGYb8DxYVMO4UCiEt764noaswn9wtw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB6564.eurprd08.prod.outlook.com (2603:10a6:20b:314::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.22; Wed, 18 Oct
 2023 15:32:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5%4]) with mapi id 15.20.6886.034; Wed, 18 Oct 2023
 15:32:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
CC: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>, Yocto discussion list
	<yocto@lists.yoctoproject.org>, Yocto TSC <tsc@lists.yoctoproject.org>, Bruce
 Ashfield <bruce.ashfield@gmail.com>, Paul Gortmaker
	<paul.gortmaker@windriver.com>
Subject: Re: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3.rc1)
Thread-Topic: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-4.3.rc1)
Thread-Index: AQHaAYx73hBTgtRJlEGVavwBEjaKTLBPrXuA
Date: Wed, 18 Oct 2023 15:32:33 +0000
Message-ID: <EF291923-E5FC-46CC-9AB4-291695AFABC2@arm.com>
References: 
 <0101018b416d8d29-59a72af7-335c-4677-b485-bc0ec3abd261-000000@us-west-2.amazonses.com>
 <40ab5c11d917f68dc6115d24f2fd427cb4a1fd38.camel@linuxfoundation.org>
In-Reply-To: 
 <40ab5c11d917f68dc6115d24f2fd427cb4a1fd38.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB6564:EE_|AM7EUR03FT040:EE_|PR3PR08MB5625:EE_
X-MS-Office365-Filtering-Correlation-Id: 214e9a86-480f-439d-76e9-08dbcfef7a86
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 b7uzoqiB0yJPUOtNeFM4fKmf00MF/av/iM1eVtFJ6J7VaP8d0nIryDjIk+feVzaQ8dWvKnJWZKqjhtKBj1fRfP1G3pc7aXw3c/soeP0Za7f5neDlPuDvow+YsDjGZ3CSJkbb8ibt5gQx3zbh/Ro54lwp/F7z5HScLpr8WZz9VYBhN86S90aHavid4jRG9tsa78oLRa+zZX96X4i/TiZW/aRZzLwAEj3WrYXddyUftrs6LomiOz8aM3vUsGjUtTwFouYKE75Usszx4eA3oNhEgrkvSuMEQN++s4KsAwg6y0T82P/yaNU5wE5mm3K/Wvki2E8ixiclSrK7TPnzGUp2vTkpjLQ2En54A3a5rXN6iPc0yzsm42Jdy4j8GpzHE/fwGwxWJzOfUY6bH844nyh9jWUmV5JyK7TEgsrEJPfRyMdFDZErZ5Z2XwhqjH8WkkJcC/zsOHX3nx7f4MDAZsFJiRgoaY16BMWOp3Y9KpEmbfWsTed+W8xEjPPBQ+oxX+O6DOL+enY1ZewAfo74gh/ZXc/R1VBBC8QNfx10E4V/LCgbMGb624d7RcQJ+VaHbg4jnTOJ3jfpFDbb4lY94gUZk+4v/UnaF6Jlupbhd3nA6EeCaIEJm7bCU21QBkoW2fY5
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(396003)(346002)(136003)(366004)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(83380400001)(4744005)(4326008)(4001150100001)(2906002)(36756003)(5660300002)(38070700005)(71200400001)(26005)(38100700002)(122000001)(8936002)(2616005)(8676002)(478600001)(53546011)(64756008)(6666004)(33656002)(6916009)(966005)(86362001)(6506007)(6512007)(316002)(41300700001)(6486002)(66946007)(66446008)(91956017)(54906003)(66556008)(66476007)(76116006)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <38F86E7A87889C42BBAE296B456C150D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB6564
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT040.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	8ab646ef-a85a-46be-4997-08dbcfef7301
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	65oTDS2H22jK1azE/k5bXbmYFDm6Y6++uAyPlcOP7+F8YC1HDBN0adMGgkJ1L/ZdqRtBe1FBFL9QHqvCQRb0x1moHP4ibS2c1nxWLFgurIOyMdV7+VfxtlXL0GY/Gv/Xz5dALibY/JA17URB+BZ57/59rlaF3J5/r5dEtS3qcVmS4Zba58PMsWw5DGQdrS3kaHTq2sFDOC/OL0SnFNOPbQ0qJvNkCmBNISxvGRGMErc0OdDlL4gPwqji5EcodsVNwVSJCOrAIg74KZTVLT5eXcGFKp3Knk1RM4qpUSTgae5vNFGo8ckNaih+EHbVrSLwXgvrjGsDacyw0/0Yp5fNt42b64MdyVSQvz0VYndZXiBo1q7b0UeVge+aR8NXk3fSqBC1egA+MC/wsc4Cizet0ODRUuGIlpCNnScN8WtXKqkXZpeE5fYjkWC7xSfS2YpACfykSWKzq0lrbjr4nYVleIwF+CWtpc38RMiTt6Zxq8y7Cp4JTuqt6LUlZ9s/nHmRKKHvK28kAyvKWf0HSLqnKioKN9wkmklITEFOLx0kIJo52M4Ps/7KgXJT1QoP9mJVd01NnMnyVC/DHlKSuRaZPUiKxLjVTKp0PijhlgKBoZ2N/jYbYjb8l3mjTSujkVo921zaK70wcs6Y5TEYxw3HrKfjoTfQuCrx16GNy/qbw+UA6ovtvrc+4FcvYgZ7MsRRtMiUvTJjBXeV9AmaHfTPTlvV/0nrHdEw/QhyPomgtiA=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(136003)(346002)(396003)(39860400002)(230922051799003)(451199024)(64100799003)(1800799009)(82310400011)(186009)(46966006)(40470700004)(36840700001)(40460700003)(26005)(6506007)(6666004)(4326008)(966005)(2616005)(336012)(36860700001)(83380400001)(8936002)(107886003)(316002)(5660300002)(47076005)(41300700001)(6862004)(4001150100001)(2906002)(478600001)(6486002)(8676002)(82740400003)(70586007)(70206006)(450100002)(54906003)(86362001)(356005)(81166007)(36756003)(40480700001)(33656002)(6512007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2023 15:32:46.1729
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 214e9a86-480f-439d-76e9-08dbcfef7a86
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT040.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5625
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 Oct 2023 15:32:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61402

T24gMTggT2N0IDIwMjMsIGF0IDA3OjI5LCBSaWNoYXJkIFB1cmRpZSB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8cmljaGFyZC5wdXJkaWU9bGludXhmb3VuZGF0aW9uLm9yZ0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IE9uIFdlZCwgMjAyMy0xMC0xOCBhdCAwNjoxNiAr
MDAwMCwgUG9reWJ1aWxkIFVzZXIgd3JvdGU6DQo+PiAgICBBIGJ1aWxkIGZsYWdnZWQgZm9yIFFB
ICh5b2N0by00LjMucmMxKSB3YXMgY29tcGxldGVkIG9uIHRoZSBhdXRvYnVpbGRlciBhbmQgaXMg
YXZhaWxhYmxlIGF0Og0KPj4gDQo+PiANCj4+ICAgICAgICBodHRwczovL2F1dG9idWlsZGVyLnlv
Y3RvLmlvL3B1Yi9yZWxlYXNlcy95b2N0by00LjMucmMxDQo+PiANCj4+IA0KPj4gICAgQnVpbGQg
VVJMOiBodHRwczovL2F1dG9idWlsZGVyLnlvY3RvcHJvamVjdC5vcmcvdHlwaG9vbi8jL2J1aWxk
ZXJzLzgzL2J1aWxkcy82MDYyDQo+IA0KPiBUaGVyZSB3YXMgb25lIGZhaWx1cmUgaW4gdGhlIGJ1
aWxkLCBhIHNlcmlhbCBsb2dpbiBpc3N1ZSBvbiB0dHlTMSwgc28NCj4gYW4gb2NjdXJyZW5jZSBv
ZiBvdXIgYW5ub3lpbmcgNi41IGlzc3VlLiBUaGlzIGlzIHRoZSBmaXJzdCB0aW1lIHdlJ3ZlDQo+
IHNlZW4gaXQgd2l0aCB0aGUgd29ya2Fyb3VuZCBhcHBsaWVkLg0KPiANCj4gVGhlIHF1ZXN0aW9u
IGlzIHRvIHByb2NlZWQgd2l0aCByYzEgaW4gdGVzdGluZywgb3IgYXBwbHkgdGhlIHVwc3RyZWFt
DQo+IGZpeGVzIGFuZCB0cnkgYW4gcmMyIHdpdGggdGhhdD8gSSdtIHRvcm7igKYNCg0KSeKAmWQg
c2F5IHdlIHNob3VsZCBwcm9jZWVkIHdpdGggUkMxIHdoaWxzdCB0ZXN0aW5nIHVwc3RyZWFtIGZp
eGVzLg0KDQpJZiB0aGV5IG1hbmFnZSB0byBzaGFrZSBvdXQgYWxsIG9mIHRoZSBmYWlsdXJlcyB0
aGVuIHdlIGNhbiBkZWNpZGUgd2hldGhlciB0byBzcGluIGFub3RoZXIgUkMgd2l0aCB0aGUgZml4
ZXMgaW4sIG9yIGp1c3QgcmVsZWFzZSB3aXRoIHdoYXQgd2l0aCBoYXZlIC0gd2l0aCBjb3Bpb3Vz
IHJlbGVhc2Ugbm90ZXMgb2J2aW91c2x5LiANCg0KUm9zcw==

