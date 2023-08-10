Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DC71C001E0
	for <webhook@archiver.kernel.org>; Thu, 10 Aug 2023 11:43:16 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.72])
 by mx.groups.io with SMTP id smtpd.web10.15068.1691667793601992865
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Aug 2023 04:43:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5x1VDpip;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=5x1VDpip;
 spf=pass (domain: arm.com, ip: 40.107.8.72, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eDtFGhhF8iHNMbiIuuFE570ew+d6nSM+IYEaM/WMoAM=;
 b=5x1VDpipSYXnANbVCYkGGiIYd/iM2z1V38KXqP3yp+fYnjkMaGHYqItGzUB6M7w88i/SKDL5y5nVMIU9nDkcwm4lIhgPoLTZlAIkwFRLuTNk3EI/b+I7fvXv156dSqItg9Wjds0ON9dwGR2SVkXFHVzLb5Ig4Yn0PvCNdvx3l1s=
Received: from DU2PR04CA0344.eurprd04.prod.outlook.com (2603:10a6:10:2b4::17)
 by AM9PR08MB6049.eurprd08.prod.outlook.com (2603:10a6:20b:2de::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 11:43:09 +0000
Received: from DBAEUR03FT031.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:2b4:cafe::13) by DU2PR04CA0344.outlook.office365.com
 (2603:10a6:10:2b4::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30 via Frontend
 Transport; Thu, 10 Aug 2023 11:43:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT031.mail.protection.outlook.com (100.127.142.173) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6631.44 via Frontend Transport; Thu, 10 Aug 2023 11:43:09 +0000
Received: ("Tessian outbound f5de790fcf89:v145"); Thu, 10 Aug 2023 11:43:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 089e5f9cdf89ff2f
X-CR-MTA-TID: 64aa7808
Received: from dadb73b5cca0.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id ED46C8CB-CD5E-4B49-ADF6-C9BE34958C87.1;
	Thu, 10 Aug 2023 11:43:02 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dadb73b5cca0.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 10 Aug 2023 11:43:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f93B7dvFo6HI7OLcsYwTzjh5N7PyW01TRN3EjorRmdttA5GGmT3o3UquICoUlTiFCxkrTOJpxo2RTeEEv4YR9OXlrFQ5t65oHwSnuqc0R89TW0TxC7CKad358dG/2RfdWS3A5LR9OLw0F/3egfdim+lXZ70xLrA7kEBmGveBljBfShYkHnTvsajFHghejUPZgnAfZZRyeMyvpFh4G2bItjruJAukIgsyCfh/bFHAMyNVLlLVVG9G7Zu/jhBEDN2itoB00A8gc0dFe57Q8gcKJOS97ZdcSN08mKSQOoSuAv6b6+yorYOUYR+7rRwT5cTA2Blsu2Cy36UiH8sFFsvetA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eDtFGhhF8iHNMbiIuuFE570ew+d6nSM+IYEaM/WMoAM=;
 b=W1+GthHYCxr+l9mX7GriHS396mdSeaZRFlsoAOFg2SWhy1Fk/AQV+G/Vh/CLCOWso+7T2hDqiusZVMkcfJ2AvAGrEbeSEmGZqbnJedJ4APJh0X4h0/j8osgZQSpKwwJ2+hgT7pE6F7VrX6/2Tt87v3fFhTXkn0jwfXHGIYwWq2WUBcdbVr1Ot2xQsesinVCfBFbyGRsM+sB97kFC2RnGPnmjVv94K5TR+ECfpnttypMeq7dcUS1MfeQQIdFbFE14fqawuW3XsaDYLypT/mWCQI6EzYN9+2mQbaWWVRbV3sd/FgFzD+hMZl8nQQqlji7JN457m0DK4Isu+FJGpkoYVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eDtFGhhF8iHNMbiIuuFE570ew+d6nSM+IYEaM/WMoAM=;
 b=5x1VDpipSYXnANbVCYkGGiIYd/iM2z1V38KXqP3yp+fYnjkMaGHYqItGzUB6M7w88i/SKDL5y5nVMIU9nDkcwm4lIhgPoLTZlAIkwFRLuTNk3EI/b+I7fvXv156dSqItg9Wjds0ON9dwGR2SVkXFHVzLb5Ig4Yn0PvCNdvx3l1s=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB10290.eurprd08.prod.outlook.com (2603:10a6:20b:63c::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.30; Thu, 10 Aug
 2023 11:42:59 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6652.029; Thu, 10 Aug 2023
 11:42:59 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: msenturk <senturkmurat1999@gmail.com>
CC: Michael Opdenacker <michael.opdenacker@bootlin.com>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>, Alexander Kanavin <alex.kanavin@gmail.com>
Subject: Re: [yocto] How to migrate an older version of Yocto?
Thread-Topic: [yocto] How to migrate an older version of Yocto?
Thread-Index: 
 AQHZxgk6ACMiFGdJMECKbrvCtXKwUa/Yh6QAgAAz6wCAAAadAIABDL2AgAATHgCACVKKAIAACJiAgAAB9gCAADRigA==
Date: Thu, 10 Aug 2023 11:42:59 +0000
Message-ID: <5DBAE678-395C-43C4-BD05-2F731ED45306@arm.com>
References: 
 <CANNYZj_sYoP+61NGtMrNJfT+m+hZyz=cxJAcOcE1kSkb6SXKUw@mail.gmail.com>
 <19617.1691654254670907270@lists.yoctoproject.org>
 <62798ed9-66a8-0e70-0670-a48bf24d7e50@bootlin.com>
 <CANNYZj8P7+u8hwGTCsf6UyRbyRi74k3P7wJP7Lk7Tcbdxw8n5A@mail.gmail.com>
In-Reply-To: 
 <CANNYZj8P7+u8hwGTCsf6UyRbyRi74k3P7wJP7Lk7Tcbdxw8n5A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB10290:EE_|DBAEUR03FT031:EE_|AM9PR08MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: fa280905-4918-43b6-64d3-08db9996f81f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 p/0hquJk/KuuDQiEPYicwtis4Kr3metF5jBgXQWTWa41ZBTwc3YZLuoNaFJh81qIsFxGgFWH8mxL/F9PtU8CMrZ3OtDfQLJv8W5MRKzObualXixcelBmOsa/fm7ao5PvIVX9aZXt7s2T/cHza+637iaiCnbAPxg+197Yj+UzbksYn5shu8vtmdWOfxr7iWba33rFvfNM+7AoP+kOjFe8NNQPMOUi/KbdITteThDKuZZcPwwzMyOtOHPATO3csipRKU0qKf6q4wEvnRCifFp8MZ694Qk8o/0lIpJJLACz6ZSINAY85VR0xbOXLRkjaEpk/eYFH0QaktOMtCwPIVk3NN7Ubkp4Lu+a/UsUZz7ibZoNzS0OruZIw2IOXraZGFprKZ7tXkhiP5zxXB8PO/OKuq4wvf3t8XH7ttvdAmfZlSWbX1vadSfrghLr2OO8nL8FQny7vtZeEIgTHsB0CCwrrjsj8dX7JtRZf+RLe/7sAzeFDY3EMFgMEJebKfK3jsiZRQV8sj6FRpGxAt89MHYYd5+fcDKElKPe/ljSURW1frdqdN2/SvifXBgrLjYvORJIbDDahrnjO/U5Inboap6PbGdVmnOZi3fuq+ikdpBdl59E10NwFmjjKDUB6+W7DcJFDhh22hj1DHcgIvrISQxAyQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(39860400002)(396003)(376002)(136003)(186006)(1800799006)(451199021)(36756003)(86362001)(33656002)(66946007)(478600001)(71200400001)(91956017)(6916009)(26005)(66446008)(66476007)(66556008)(53546011)(54906003)(6486002)(6506007)(76116006)(64756008)(6512007)(2906002)(41300700001)(316002)(4326008)(122000001)(5660300002)(8936002)(38070700005)(8676002)(38100700002)(83380400001)(2616005)(66899021)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <F1166E447BB0D94DB5B6E5E96AC5D2BC@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB10290
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT031.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	0971f7a7-b497-4267-3bd3-08db9996f296
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Mh7YLo6CUc9QN3ARIq8OS71uQg07evGOU6LpfIlXGDARGJ4oIZ/sWrEf8wMGCtseGlU2lmxeosp/3DEY/z3fPjWb6KlLGd2g9HUPxm95T1F0BV50jHnluRTadPCp6HNSVr0pyoEFJ2IyzZKFVBNGPxiBgVKqRRrCgp+V1vR2HY/lhNyvgmGvk3dEgZ4JqfRL66wzGGAtTsBvvAEUhfN6XJ2UNaw+FI+7xYp/VH7oJ5o4gnaDSWcmO5Y+7lNLMVIM+O3fwwVCiwSQetVFz1hARaLdDv49+KLqx9vv/3Eyv5uT8HIWKdBSxiHOARe4uYQUQ+Ebb4W6bs8s4ubHJ7PYLFwmN6e570tkNXFaUyhj5ml0skXNoJBiYXo/L4J7b0STA6riBBjdrA0GqR1tZUs47ng8UH5BHlufyAPpSTN3tWT7ih4HNwDZIj58OOdX9L1lzdnZKD21KjGCHGSUiEf1P9qAuBY6Me9crldod14BN6gxtGDO5YydRNVYrSF25I0eYjdd+e/XrDigJ2kDTUkIkDiZmam/4xK3aAU+tHA2PUDNdIoSRdoqwdi62VkvzOBSIpxdtCCGWKdzP1wVzLlyefIhUvdPJjx9Qy8e+XjCAdUzsa7Ze9tec13uRg476XSsqSpsAhgayreF2q2KE/kxTc0zGLDrCXRvs7U59cX4bT6oN95mp74C6d2c/ciC2uzsU3X1LGDCQDM7+oyV55hwHezVlORkMwi2nTODDA6uUulWX9H5nuEZiQiDqCU7/sz4
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(39860400002)(376002)(396003)(186006)(451199021)(1800799006)(82310400008)(40470700004)(46966006)(36840700001)(54906003)(40480700001)(6486002)(66899021)(82740400003)(478600001)(40460700003)(356005)(81166007)(5660300002)(8936002)(6862004)(8676002)(86362001)(2906002)(33656002)(36756003)(4326008)(70586007)(70206006)(41300700001)(316002)(53546011)(26005)(6506007)(36860700001)(107886003)(2616005)(83380400001)(47076005)(336012)(6512007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Aug 2023 11:43:09.0008
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa280905-4918-43b6-64d3-08db9996f81f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT031.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6049
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Aug 2023 11:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60771

T24gMTAgQXVnIDIwMjMsIGF0IDA5OjM1LCBBbGV4YW5kZXIgS2FuYXZpbiB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8YWxleC5rYW5hdmluPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IE9uIFRodSwgMTAgQXVnIDIwMjMgYXQgMTA6MjgsIE1pY2hhZWwg
T3BkZW5hY2tlciB2aWENCj4gbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiA8bWljaGFlbC5vcGRl
bmFja2VyPWJvb3RsaW4uY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdyb3RlOg0KPj4gWW91
IG1heSBhY3R1YWxseSBwcmVmZXIgdG8gdXNlIG91ciBsYXRlc3QgbG9uZyB0ZXJtIHN1cHBvcnQg
cmVsZWFzZSwNCj4+IEtpcmtzdG9uZSwgd2hpY2ggd2lsbCBiZSBzdXBwb3J0ZWQgdW50aWwgMjAy
Ni4NCj4gDQo+IEZvciB3aGF0IGl0J3Mgd29ydGgsIEkgd291bGQgbm90IHJlY29tbWVuZCBhbnlv
bmUgdG8gc3RhcnQgd2l0aCB0aGUNCj4gTFRTLiBJdCdzIHVzZWZ1bCBpZiB5b3UgYXJlIHNoaXBw
aW5nIGEgcHJvZHVjdCAob3IgYXJlIGNsb3NlIHRvIGl0KSwNCj4gYW5kIG5lZWQgYSBzdGFibGUg
YmFzZSBmb3IgdGhlIHByb2R1Y3QgbGlmZWN5Y2xlLCBidXQgaW4gdGhlIHNldHRpbmcNCj4gdXAg
b3IgYWN0aXZlIGRldmVsb3BtZW50IGl0J3MgYmV0dGVyIHRvIHN0aWNrIHdpdGggbWFzdGVyIG9y
IGxhdGVzdA0KPiByZWxlYXNlLiBJZiB5b3UgZGlzY292ZXIgdGhhdCB5b3UgbmVlZCBMVFMsIHlv
dSdyZSBnb25uYSBnZXQgaXQNCj4gbmF0dXJhbGx5IHRoYXQgd2F5IHdoZW4gdGhlIG5leHQgb25l
IGNvbWVzLCB3aXRoIHRoZSBib251cyB0aGF0IHRoYXQNCj4gbmV4dCBMVFMgd2lsbCBiZSBzdXBw
b3J0ZWQgbG9uZ2VyIHRoYW4gdGhlIG9uZSBhdmFpbGFibGUgbm93Lg0KDQpJ4oCZbSBub3Qgc3Vy
ZSBJ4oCZZCByZWNvbW1lbmQgYW55b25lIHdobyBpc27igJl0IHZlcnkgZXhwZXJpZW5jZWQgd2l0
aCBZb2N0byB0byBzZXR1cCBhIG5ldyBwcm9qZWN0IG9uIF9tYXN0ZXJfLCBhcyBpdCBjaGFuZ2Vz
IGZyZXF1ZW50bHkuDQoNCkZvciBhIHByb2R1Y3Qgd2hpY2ggaXMgaW4gYWN0aXZlIGRldmVsb3Bt
ZW50IGFuZCB3aWxsIGJlIHJlbGVhc2VkIGFmdGVyIHRoZSBuZXh0IExUUyB0aGVuIHRoZXJl4oCZ
cyBhIGNhc2UgdG8gYmUgbWFkZSBmb3IgdHJhY2tpbmcgdGhlIGxhdGVzdCByZWxlYXNlcyB1bnRp
bCBhIExUUywgYW5kIHRoZW4gc3RpY2tpbmcgd2l0aCB0aGF0LiAgTm8gcG9pbnQgc3RhcnRpbmcg
b24gYW4gTFRTIG5vdyBpZiB5b3XigJlyZSBub3Qgc2hpcHBpbmcgZm9yIGFub3RoZXIgMTggbW9u
dGhzLg0KDQpJZiB0aGUgcHJvamVjdCBpcyBob2JieWlzdCBvciBleHBlcmltZW50YWwsIHRoZW4g
dGhlIGxhdGVzdCByZWxlYXNlcyBhcmUgaWRlYWwuDQoNClJvc3M=

