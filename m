Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 758E9C7EE25
	for <webhook@archiver.kernel.org>; Fri,  9 Jun 2023 11:33:38 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.43])
 by mx.groups.io with SMTP id smtpd.web11.11009.1686310414958901142
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Jun 2023 04:33:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=xdYurG7C;
 spf=pass (domain: arm.com, ip: 40.107.21.43, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17X+/TEOew3aoO2q32y8PWObCaq/4hZoMMfETINQ9fM=;
 b=xdYurG7CWV5GGfLz1sNFnZCkDdWAXJDOtaxV+ouHgga6oqVr5VxlZ3EEm0KQfRXvmRkm61+1mYzbseF3XDk+ciB2IBsv9I9ExWuBGAUr6dW+p2cHNHSSU1xKcAwS4nyq/jkBW9y2t8Vi8/BChbAi/wrHer3192xSZHzx9R2/Hhc=
Received: from AM5P194CA0004.EURP194.PROD.OUTLOOK.COM (2603:10a6:203:8f::14)
 by DBBPR08MB6043.eurprd08.prod.outlook.com (2603:10a6:10:20b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.38; Fri, 9 Jun
 2023 11:33:30 +0000
Received: from AM7EUR03FT062.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:203:8f:cafe::e7) by AM5P194CA0004.outlook.office365.com
 (2603:10a6:203:8f::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.25 via Frontend
 Transport; Fri, 9 Jun 2023 11:33:30 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT062.mail.protection.outlook.com (100.127.140.99) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.27 via Frontend Transport; Fri, 9 Jun 2023 11:33:30 +0000
Received: ("Tessian outbound 5154e9d36775:v136"); Fri, 09 Jun 2023 11:33:29 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2a6778e8aa773b69
X-CR-MTA-TID: 64aa7808
Received: from 4c5cbc7e8370.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F4C2FF6C-50C3-49C2-B878-23862F3B6A8C.1;
	Fri, 09 Jun 2023 11:33:22 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 4c5cbc7e8370.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 09 Jun 2023 11:33:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4xiTiBN60g6HiWtY0yG+7V3r6FwyTHkEvIVP2TVAeb4t4FVMHHvDCoQdpPVY3S1fjrhyoCo7mC7ZtmXMYaUoCkgizDOEHJ01cjbgtGWoKChEwgarjFRgB/t7Pml+1PtbveDcZNqwkucgah9HfRIyq3NM03RMiN2erGOKpInJhHd0AyW66hCscJGte9ewofTaRWMZaI7VGTsWvL50j9ZBQviev4x/6BdtDlvqpFRPG7eiwx/85UVewDGpaFjHJnQPMiHwqXomIOfnF4fJN20vbHgYRyj7WJpUoe6zY/ZoxPbcLBpTciVySMwB3S3yKlw2A5xZl3hYcDZcCfH+s31QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=17X+/TEOew3aoO2q32y8PWObCaq/4hZoMMfETINQ9fM=;
 b=Nrq+SH7O0rq/OBtKVWBiRKbhFmlXQ0uiTPSX29HWxTGTGV3UQ4Mw5bfYUgopIHvPXVFZa/JRruc7tIpYroH7N/KxYaPV+4jasa9YTbZX70dGcr5NZACcBQbK6fJzXhmKrID4DfEHqiz6Ba9gPMjvx9+aofqqAvLpoDEBBQALScrC90MZ0AKaj0g5PfgCIY6hGS+c77VfGfvs6hM9+6Gfl9vBUaZ0odX2d0FHdA4CFIeGOnWPHXqYDLgyt/+91i3DWd3a7w8F/3LhD0hyK5SUfiol76LA6KRrsCbks1hZGYetZhD5Er4LJknK9SGMnf8pV1aqYDRoaKQHNeKnAipLQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=17X+/TEOew3aoO2q32y8PWObCaq/4hZoMMfETINQ9fM=;
 b=xdYurG7CWV5GGfLz1sNFnZCkDdWAXJDOtaxV+ouHgga6oqVr5VxlZ3EEm0KQfRXvmRkm61+1mYzbseF3XDk+ciB2IBsv9I9ExWuBGAUr6dW+p2cHNHSSU1xKcAwS4nyq/jkBW9y2t8Vi8/BChbAi/wrHer3192xSZHzx9R2/Hhc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5668.eurprd08.prod.outlook.com (2603:10a6:20b:1d0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Fri, 9 Jun
 2023 11:33:20 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6455.030; Fri, 9 Jun 2023
 11:33:20 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: =?utf-8?B?5byg5a625bKt?= <zhangjialing@loongson.cn>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Submit a new layer meta-loongarch to the layer index
Thread-Topic: [yocto] Submit a new layer meta-loongarch to the layer index
Thread-Index: AQHZmelQPXnJgsAaXUy0IixCsyvAHa+ArvqAgAEbiQCAAI4AAA==
Date: Fri, 9 Jun 2023 11:33:20 +0000
Message-ID: <8918F74E-0EF7-4BFA-8B89-55312F8490AB@arm.com>
References: <7c04fe75-a0dc-394f-6e7a-a1fa4e50960f@loongson.cn>
 <F3C5E126-A6BC-471B-B054-5918881B5B7F@arm.com>
 <d30745fa-6a9b-c36a-282c-6ea2ebef1b5a@loongson.cn>
In-Reply-To: <d30745fa-6a9b-c36a-282c-6ea2ebef1b5a@loongson.cn>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5668:EE_|AM7EUR03FT062:EE_|DBBPR08MB6043:EE_
X-MS-Office365-Filtering-Correlation-Id: fea53122-79c4-414c-4d46-08db68dd597d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 UDYvZ8BXlJ54lr+GHimlvxwA4S2JqcwgznHQh796v1NECa9wD9PPzfalrmCXdS2Pv4o18mq9zsbkhTskMqcIPjn9FfJLtYBI0vccNVs5cS1sx6rBKx8p+kSAX0ODiI2ZsvNGHM8T5tsH25/ous0aDUccUdLoyiHNp2j98cqcuj+I2GWdPmnxbQKHz1c3pGEATeUbMmEW6eadSLyNsOkidaqOxhbBcu9Qm6AvgdjyjMIDfw9DRt+Y4GLlz/mjEn8s0KZkmebKDrEYKw5uu+SPq8ro9SPlne618JsofkxbtSAajGgR3GipOgk6Twsnp7zSxr7LKaWPZrvIWiunFtvJx1J8uW9iKcrkHNuql9SZbcF9SvwMXd10cRWyOb31gGKX5d6iDu6i2SeK5z5DHPIdTk580JpPB2mw6BWvzZmuo4ROqLcn8rw47GhIZpbj1w9kXtNAC1ZVTUd2IsMpcLbh/rZ4fqfXQ5Ra5T+duPq2F9CeW7Tm/Ox0DixZpdSTCzk7kQ2HPl5RoDWlDuwbCn0L+ooNCf/wJg3hv2Zw1YUM8v0wGX4BlymgYjkeX1Gkl1Ap0MuHKeEpMjS4hx2gie/40wJTSQK8Pua7VhSqRDThEoFaUiVxVOSt7467p9OctOsq94O9B0fQOdo1psAGKslSCQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(346002)(396003)(39860400002)(376002)(451199021)(71200400001)(8936002)(66556008)(478600001)(5660300002)(8676002)(36756003)(33656002)(558084003)(38070700005)(86362001)(66946007)(6916009)(76116006)(66476007)(66446008)(64756008)(122000001)(91956017)(316002)(4326008)(6506007)(38100700002)(2616005)(41300700001)(2906002)(6512007)(26005)(966005)(6486002)(186003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <3ECC6F9D03920B469F00EFD7F9975695@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5668
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	f80f0047-78a4-429e-a903-08db68dd53d0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	46Q0xP6EFh+i3HITOs/Ad1U5C7hUShf/n9Fczww1QX/yGyxSjGubEibakFnQBCKeCq1MuHl8LU3ZL0k+xmCkxl3Oj1vWp9e16HLAKZDYyN3JXjYi3qaEIaF0snCJzTylIC06FWapzfVTxFMQQ82bylYuTM2R0ZU+kH4mRPz2YRFJKTqOF5iq9dKqG4Vs/cRF/yjLTNzeHLaoQhlduCEqEf4MUlSbHAqhXsaXWaVSVctrATMj7AoQpHkA5DdTD85+QMc8Cxa6tHw8PT7MIfJTpjJ7pNFrEglKqcpJzH5hmfHuUGaBIOfseapoyF/1DFVvzxb+09/nMkuDyn6tnGSKviPrK66J/Owufxnm8uSW+7oBJbVQH25YRnXiP69QcLPDaA8MvH7QoXRSGQr4gMTQQ0OCdwN4n1kssiC1IuyAG8GyBH4jg4KkhybDMF8F/CxJySgQZG/4Suhbkp6GP7VfBXloUK6P2FzF6Go5nP+7ticLEiUisn/Da29+hfhQPbYNQ+rkyo8HuLqFnVHZl4W1LSF4jpmPMwAk4awOEgnR2ecm5DbnNhAE1xQj4NYHRZThAdM4KD6lWeMvhJ+XnYzQ6zrPQopjP5a8SKmJNEBFOILMLdiqj2da4+4LRCklLnta1DsuO++nAnSErdhxJqTCCXBJ9EDhjSnS6+nG/9dxWr3WubJZXnGuwT8ma3H5Ytw9SFbOmZyzfnPwXAYeY2kq+N/OX+hr0MvFMuJiHUKa4DM=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(136003)(346002)(39860400002)(451199021)(46966006)(36840700001)(40470700004)(966005)(41300700001)(6486002)(40460700003)(316002)(86362001)(2616005)(36860700001)(82310400005)(26005)(186003)(47076005)(6512007)(6506007)(2906002)(33656002)(558084003)(336012)(82740400003)(81166007)(356005)(40480700001)(5660300002)(36756003)(8936002)(8676002)(6862004)(70206006)(70586007)(478600001)(4326008);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2023 11:33:30.0877
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fea53122-79c4-414c-4d46-08db68dd597d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT062.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6043
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Jun 2023 11:33:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60238

SGksDQoNClRoaXMgd291bGQgYmUgaHR0cHM6Ly9idWd6aWxsYS55b2N0b3Byb2plY3Qub3JnL3No
b3dfYnVnLmNnaT9pZD0xNDk4OSwgYmVjYXVzZSB5b3VyIGxheWVyIGhhcyBhIOKAmG1haW7igJkg
YnJhbmNoIG5vdCBhIOKAmG1hc3RlcuKAmSBicmFuY2guICBZb3UgY2FuIGVpdGhlciByZW5hbWUg
bWFpbiB0byBtYXN0ZXIsIG9yIGtlZXAgYSBtYXN0ZXIgYnJhbmNoIGluIHN5bmMgd2l0aCBtYWlu
LCBvciB3YWl0IGZvciB0aGF0IHRvIGJlIGZpeGVkLg0KDQpSb3Nz

