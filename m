Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB40CC35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 20:52:30 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.43])
 by mx.groups.io with SMTP id smtpd.web11.4638.1703191946421833597
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 12:52:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=NJnJhgiH;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=NJnJhgiH;
 spf=pass (domain: arm.com, ip: 40.107.22.43, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=QW2V5MHfDgbE8YZRHt2cDJpMQACy4l2bj4tzo4VXLNLMY7BUdL/ORDnHjcE6zClzhXiXFcI6qA3GBrmDfN0IcrfSqANdn5jJVErIGic1zEKZ2ypOiRuNVmlV/s7+GOAudgkeWZuMEo95RtKL1VnCSBHGbz4FjowxvalKvo3ztW+lpWhU5dKGVOg8ee+KEXSfsWiQelWekDKFDW/g6tDAo2+EyuMUmc2FVeUdcNNTYyx62NBBgKGyBzw2DUcX+4pksgsW/0SbQMKlCZseSch4/5EzISGOlwZQdI9zorIFTidbkyW3UcBtgbh/xECYEIylmhDl8YZcckRI5FQldd+yeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4tYoaI6srwyo62Vi7ZuTNb1kOzIlOIbhzkgLGJpkfk=;
 b=Uf5FGUJSDW1arcrSC2EBV/He8A3piJdG/TtA2PYAR8nep42y0dZub3A6tPKwdZN2YZCMs7ZBLZZnnI8P6poLxCz2T1tE79FKoyYrQueali4Kfb6trasJqVKwBthxDWaIigADv8jBBZmV404YuMBeJfXnN2ek7KnRkvw06U5n+nluznU5/Tc5EZG3ezrST9PzyI8J6hctkL6ojEPZYX9yzTneHj0kt4A0nrIJLpQsm0lPeOXN2J5blaaNrr0sn48HH+1ZLXt1a1GOe6BnfYQSJ8lR3W98klnI8Lu1J0nhRgFEJ8XLNL69APodroPH8ofS4mg6Pzecxm0ehsIQT/8qYA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4tYoaI6srwyo62Vi7ZuTNb1kOzIlOIbhzkgLGJpkfk=;
 b=NJnJhgiHV5pCVLrJTsJTErclgXfazHcdOepT93cW6z4Lc7UhBe8GxEbCBoghyNnVf3+C6OouYMkk/e0bqkAquPxEZ9TdyuQDij8eDRYIOt92VEAiM5bERRtcR4CSnixeXiPCrBI15ECwsNDqCOrCjGHjiVRJR8pbW7/araaJ1og=
Received: from AS9PR06CA0024.eurprd06.prod.outlook.com (2603:10a6:20b:462::32)
 by PAVPR08MB8967.eurprd08.prod.outlook.com (2603:10a6:102:326::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.20; Thu, 21 Dec
 2023 20:52:22 +0000
Received: from AM1PEPF000252DD.eurprd07.prod.outlook.com
 (2603:10a6:20b:462:cafe::8d) by AS9PR06CA0024.outlook.office365.com
 (2603:10a6:20b:462::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18 via Frontend
 Transport; Thu, 21 Dec 2023 20:52:22 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM1PEPF000252DD.mail.protection.outlook.com (10.167.16.55) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.14 via Frontend Transport; Thu, 21 Dec 2023 20:52:22 +0000
Received: ("Tessian outbound 5d213238733f:v228"); Thu, 21 Dec 2023 20:52:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 2ac89228320576d0
X-CR-MTA-TID: 64aa7808
Received: from 699576b295e2.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 12B12FA2-784D-4207-8E4A-8347DFAE4704.1;
	Thu, 21 Dec 2023 20:52:16 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 699576b295e2.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 21 Dec 2023 20:52:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mSj/Z4zJq08tNKSi0O8L/w+YsdnnsdDRBhwOPdWk174xpney0HAmOwAcDYRoqpYgL4BrhSSSFmyeVLm63NltbKQ78YQf/vat3KppD9vCj6QqoyGZ3Zbv7RgiA2BMr7CUTplnkfgdpZQRyvw7Bc9CqI/Ta3/eB2SOFDWjvNdjvQQ5Q0N+2ShqEL8tZfF6lE2ZvRrsIMYacsxg7DWNACoRDR0S1cO2O3rgnfTxQIVnD/4i2FaiCosa4VGZRUfYvzWdLxVBq9GrRQ+I9jrqDLmk8gGt5cQPvcFDlKOPFl9FCBRS3484wLFUHzNnW5dfQ5I2vutGzafs8h/ztHXnkQI8jQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k4tYoaI6srwyo62Vi7ZuTNb1kOzIlOIbhzkgLGJpkfk=;
 b=Z3L7vKSEbhcTDbb43YMTK9X/SMYY1YikjaaqsVH+qCNakt4fLBKnxolu6RuW4wxLBV7KUTmRbJIDTxdT+9Oerj1X/lxk0nHjZPk1s/cynBzDbLectLPxWvn7IhC713WeXCC501H60+bK1qNHO/zRQ6aU1CtXzaaMwHO4cJLoG63k2KhpVsgqy/ukSO+HRM4+syyzMZV/WsvNmit2sn2ujsxDPBuSiczivRMB9W2yFJDrNmEBRsDbneD/3mmGSyLD/nPM02MbafyGI4H5SqLqXeWCS3G8Y1bjYUqhdc0US/3BmHOMtK8noRPyr+WVKoz9rIm2qrS1a/eFj4cRPmNuDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=k4tYoaI6srwyo62Vi7ZuTNb1kOzIlOIbhzkgLGJpkfk=;
 b=NJnJhgiHV5pCVLrJTsJTErclgXfazHcdOepT93cW6z4Lc7UhBe8GxEbCBoghyNnVf3+C6OouYMkk/e0bqkAquPxEZ9TdyuQDij8eDRYIOt92VEAiM5bERRtcR4CSnixeXiPCrBI15ECwsNDqCOrCjGHjiVRJR8pbW7/araaJ1og=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB8797.eurprd08.prod.outlook.com (2603:10a6:102:32e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Thu, 21 Dec
 2023 20:52:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7113.019; Thu, 21 Dec 2023
 20:52:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"aoiblue775@gmail.com" <aoiblue775@gmail.com>
Subject: Re: [yocto] Tuning 'cortexa53-crypto' has no defined features, and
 cannot be used.
Thread-Topic: [yocto] Tuning 'cortexa53-crypto' has no defined features, and
 cannot be used.
Thread-Index: AQHaNE9fZvlob9aVLkSpdvSgLs0ig7C0NnqA
Date: Thu, 21 Dec 2023 20:52:14 +0000
Message-ID: <FE6B9566-50A6-4F9E-9B39-3E60E4DFC83B@arm.com>
References: 
 <emac58a899-1ccd-408b-8b46-bb6d355c7619@andys-imac.leeshillfarm.local>
 <10942.1703182883422018904@lists.yoctoproject.org>
In-Reply-To: <10942.1703182883422018904@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB8797:EE_|AM1PEPF000252DD:EE_|PAVPR08MB8967:EE_
X-MS-Office365-Filtering-Correlation-Id: 08fd3ed6-eef6-4dbd-33af-08dc0266bad7
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 VdJqrkmvJft666rQIdDjyiRk+A6emT6g5wXbid3u/yuhMyrF5hVI5gCP7LOIGJZ37TN3D86iYVVbImhpCMgb+kscw2cA6ruyBw85OoLbfYNmlyIZWmAEE67ezrrsCggdMg5z1mfG2xnx3/rTxlKped4rOmX44XmckipNoKBfTVi1blOSq7rUD7/oRxOmsgsksCxd6codlBCYaw6AgdSzGwxYtsmS5WDjg9qaInBlukWua1DDF9PCJnbl1VxnCClOReAjSdXM1ku+Qv602oMCYDyAsITicoeG9wIaUBb5I/c5gBMr2c+hMLfsJCnOVtm5SyXNNJUtnszRRfdA65q2ijT4YsPpJ5HFXDCXZFSQnyjlf2urYj+fySShrr/YgfKDWTeUBmFW3R3eUiWclz6Nvx+dCyNyE54VjrBu8cCmroeh4G1XOLDqaod7s/uvH/ot9jzib/w/dXXqtv9TA789p5pRNfjzAEnc94JbWzHAT3pzp6fH6qaSCguzbz3fkUT/jRSba8p5VrjU6HN1RpmXk5S00da1woMlhOQ4vvxH4D5aNLXsCxMCntxG7+1CY9fjBlZXgm6zYdKh0XnzShicQQzDGmVzovJNXr/QW84RhYBAOwdbYNPNeYPLjTtUysY/8RrMov0CEpOfxFi99mm7ig==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(136003)(396003)(366004)(346002)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(41300700001)(66899024)(8676002)(6512007)(71200400001)(6506007)(53546011)(8936002)(316002)(2906002)(5660300002)(38070700009)(558084003)(33656002)(38100700002)(110136005)(36756003)(122000001)(76116006)(6486002)(2616005)(66946007)(66446008)(64756008)(66556008)(26005)(91956017)(478600001)(66476007)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EECD8BBB86CA5C4DB72A08A9B412BFB6@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB8797
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM1PEPF000252DD.eurprd07.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	675d2c68-9b24-4d27-d6c4-08dc0266b5e9
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eotRY4KVUMbpGyoFR7xDJC1yNq9ZNAzQNw/3MqJw+aCtM9Qu3gxRzYR9M1GOkZnnmP1uKl0QMfwHeixTD955Jt8K8+ayHKl5M2bPkJK7xxaQvHuQAb0zNIleDrCrdMBLkCEAKgiXoFAS3m59NbQVCf/D1LywoSLYGyTl4RrthM6q/G2SHGMvdJBurC7zBrLV1Qs76Ibx3vKnHlgmN9F+Wy0bzT4UJLtFZrX2TseoRWHXG5PAxA+9LN3+sPML0krKrfNSJhs6XTG2vLtn3ZNGrdlgU0Pwf/tO1l+ZirT94clWUM+ldSkMywvTB/it8t2DxtzMDYens8wAdHIJSmZ6iwTk4Iq78rr52jwB9wqD6xBevSvjodEJTkPIb1eYdOFQMGGf1o6GF187FLGcH41PIYrDp76rfGGwzOwyg7Diy+ke6EcXUitnGqb3jmhe4Ok4JqXo4U+48+ZFTSCBdLybkuBDDEsThrCg6lVyVZDM2lJwBtigrcDLOPUQYhemXu6/F9RMNXWbnK4/tBSuXin5WncfUMr8UZ7lGIhDxLuJLUvVHSw1gdDuMM5XgaJsq/mfCbtTLtTL77l8jsn3SSGa8yoQGx947dUr7dFRhs5lpQXkJgXhVQEHeyXKbihcZW1HEQsqcOdjhLEzj4Y09EruBwLJlpWOROejs+k7ezKE119KizGUwXIm1HTYZRceK4UaFmKqXetFfWruEanxPk2N+t82oQDVnsZ53kYgYO2M7KlFuo6dc9InH3DLneLhet8b
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(376002)(39860400002)(136003)(396003)(230922051799003)(186009)(82310400011)(1800799012)(451199024)(64100799003)(46966006)(40470700004)(36840700001)(66899024)(6512007)(2616005)(53546011)(6506007)(336012)(26005)(558084003)(86362001)(36756003)(2906002)(33656002)(41300700001)(8676002)(8936002)(5660300002)(110136005)(70586007)(316002)(70206006)(478600001)(6486002)(47076005)(36860700001)(81166007)(40480700001)(82740400003)(356005)(40460700003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Dec 2023 20:52:22.3884
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 08fd3ed6-eef6-4dbd-33af-08dc0266bad7
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM1PEPF000252DD.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB8967
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 20:52:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62019

T24gMjEgRGVjIDIwMjMsIGF0IDE4OjIxLCBhb2libHVlNzc1IHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxhb2libHVlNzc1PWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90
ZToNCj4gDQo+IERpZCB5b3UgZXZlciBzb2x2ZSB0aGlzPyBJIGFtIGRlYWxpbmcgd2l0aCB0aGlz
IGlzc3VlIHJpZ2h0IG5vdy4NCg0KQ2FuIHlvdSBleHBsYWluIHdoYXQgeW914oCZcmUgdHJ5aW5n
IHRvIGRvOiB3aGF0IGJyYW5jaCwgd2hhdCBNQUNISU5FLCB3aGF0IHR1bmUsIGV0Yy4NCg0KUm9z
cw0KDQo=

