Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02C27CDB474
	for <webhook@archiver.kernel.org>; Tue, 17 Oct 2023 13:37:19 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.57])
 by mx.groups.io with SMTP id smtpd.web11.215186.1697549835230303565
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Oct 2023 06:37:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=mDw+skFi;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=mDw+skFi;
 spf=pass (domain: arm.com, ip: 40.107.249.57, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60QBqmXZhcrhc885ph3wgipIjEpjhjhS0XjuTWKHxuM=;
 b=mDw+skFi+1YSIpAi345lzzk3BRifCK06pY204tKh3o8iEgWqL0nMXCSiNZSNN4guMWoOcJ+5YwOVY0DHfw7k6zW/CqKsfk3moFiZ6SFO0BDYUy6XuSqnCDwP/zrxsl08pmirrR1Jq4HPrSeo2R5WqeOmAXj/O0zylViFWY9Gmsw=
Received: from AS9PR06CA0092.eurprd06.prod.outlook.com (2603:10a6:20b:465::10)
 by PAVPR08MB8941.eurprd08.prod.outlook.com (2603:10a6:102:328::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36; Tue, 17 Oct
 2023 13:37:10 +0000
Received: from AM7EUR03FT023.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:465:cafe::21) by AS9PR06CA0092.outlook.office365.com
 (2603:10a6:20b:465::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.36 via Frontend
 Transport; Tue, 17 Oct 2023 13:37:10 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT023.mail.protection.outlook.com (100.127.140.73) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.20 via Frontend Transport; Tue, 17 Oct 2023 13:37:10 +0000
Received: ("Tessian outbound 9aeaca65ec26:v211"); Tue, 17 Oct 2023 13:37:10 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3fedbf7f990c89d4
X-CR-MTA-TID: 64aa7808
Received: from e42973342480.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 9916612C-6895-4AB2-8578-AA4A0F4CBBA7.1;
	Tue, 17 Oct 2023 13:37:02 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id e42973342480.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 17 Oct 2023 13:37:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O5eOcOE1hU4fXb9JAwQ7syyAUjTzhOgZbm5zGIbsBbyvLdzOsi9c4qdO5aVd8Dy+w526MjzoPMkT2Q9vuzh6Yp6Eqg3iCrBleJn6aG7JbDTR3n+tLraYRgN8p5pn4OCTph5x4sjGp0DT37pyoYGj++KcJ5Aa//srbBfi4Q0CTnwMvMsuoSJCSoLQmWwvrYmxqhItl8UpbC+snCN2LUBH6XogQHybdj5xIARQJ1qQX3ifWHFaz4vHY6ouL/261PwNJji38lei2CNvPHZysRlC4AKhjhxA6MMZkCMRcrPE4uQvba0PcXg6cmmJxK8W/hd897gAaOGOKtNDZBDSTI2AGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=60QBqmXZhcrhc885ph3wgipIjEpjhjhS0XjuTWKHxuM=;
 b=IIkqAKt/NaR3RbC/ubI9ljB+qlER0LHgJsD24pV+8sYT5DB93wxE5ghEgfs/LYPuDJmlF6DSWpgm1S0int/fGYYmfrdrHCNFcPVJa0pMerDfOXY/wH01E7HadLHRLKw5ZtJMKnxiEly7VGXgiUbzqIYnLyFqEioNfJCVNeu48nOA4GWsKDwOGCh4ecCDnALtjAuNiRFM+qvFwGCBH4VY5otnarojhHYW/GqnOra9L+EF5w7ThXDAsvIQAJXICWQZA3Ib/dtGTd4pkvOGzxNPqv7xcE00jjZYAhNTOCGcjwXun3LhyHBfmeBHTUy6mTGJSm6IiIRJaKyXOnXuMVA11g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=60QBqmXZhcrhc885ph3wgipIjEpjhjhS0XjuTWKHxuM=;
 b=mDw+skFi+1YSIpAi345lzzk3BRifCK06pY204tKh3o8iEgWqL0nMXCSiNZSNN4guMWoOcJ+5YwOVY0DHfw7k6zW/CqKsfk3moFiZ6SFO0BDYUy6XuSqnCDwP/zrxsl08pmirrR1Jq4HPrSeo2R5WqeOmAXj/O0zylViFWY9Gmsw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAVPR08MB9081.eurprd08.prod.outlook.com (2603:10a6:102:32a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.34; Tue, 17 Oct
 2023 13:37:01 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1817:56f3:7623:c4a5%4]) with mapi id 15.20.6886.034; Tue, 17 Oct 2023
 13:37:01 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>
CC: Yocto discussion list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] example where "RDEPENDS" is including a "virtual/"
 run-time dependency
Thread-Topic: [yocto] example where "RDEPENDS" is including a "virtual/"
 run-time dependency
Thread-Index: AQHaAPEDCBKV1HBzX0KVflTwZvClX7BN/BIA
Date: Tue, 17 Oct 2023 13:36:58 +0000
Message-ID: <99405314-A263-444E-9307-9D9638602E64@arm.com>
References: <492bb1d0-8487-1a5-78d1-6c11f639f03@crashcourse.ca>
In-Reply-To: <492bb1d0-8487-1a5-78d1-6c11f639f03@crashcourse.ca>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAVPR08MB9081:EE_|AM7EUR03FT023:EE_|PAVPR08MB8941:EE_
X-MS-Office365-Filtering-Correlation-Id: f347f0c6-2400-4b46-b2a7-08dbcf162a22
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 D0FVXZFPWSRBC8K4N/vPCWtgKaOyMwjws9cnufwm3/szCPGP95ypKp6HKHkijZeD0Yeu8eL2qn4RWIIykzuwlI1SRLOGIGSAgA6Rcnrq/CCi8rJYrN81PjhciAtrxIoZa+LrojiEywbTwmle4lmItiTW5UDtj8LLM47hz+2mkbEprt6LNCuGvcbMo+EFlNpcuX/EaRMJDyegwQt2ul4lWB1sF23qGMto1rwmKL7leD5EWkSIqqB7V/5yfn/hMNVLwJQN0mHoLaWs4o/GYojKYf4FIuYRby7xin9Am4yySnQTGlhj0vcFxF8tUxbWgNb08o0AETVYPUvqtZAzzMKfx36Opxy2f8/Ce7Po75zeUCT3elsGBmD0kmO49rNvcr/qhWq6KTHkOWqvYUNyPG3aP8SoY30GbarHia/23E7t+2MHWf11qC/VjrvMxjv9B1KxZ0U7950vk4jp51J7PsawQVnb3cu2Xj83hrKzjjwcmKG6QHaLs1rEWqt4cZShq5ArmCHoRaPHYeTuQiOGYbaeP/Sxb3xaYvkyO0x4i/xwzmvWEFXbvQxgi3Cr5x82LefyE8N0jIHuPPXOHcUUpfgKbx+skl6bWz1fus5+d1sWG+2o05A+bsoiA2SMIxRpnDFuTKLg6Y49TPxXmqJT6/zeeA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376002)(39860400002)(136003)(346002)(366004)(396003)(230922051799003)(64100799003)(1800799009)(186009)(451199024)(6486002)(66556008)(64756008)(66476007)(2616005)(66946007)(76116006)(478600001)(6916009)(66446008)(6506007)(26005)(91956017)(6666004)(6512007)(71200400001)(53546011)(316002)(8676002)(8936002)(4326008)(5660300002)(41300700001)(86362001)(2906002)(33656002)(36756003)(38070700005)(122000001)(38100700002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B7070C7EA2A4FD4BAB1BD4C1F29D0BE2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9081
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7944cfcc-b574-4df7-39b1-08dbcf162321
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ZRSfBkgCZPo6oAJnCPRWVFN8xCh0RWiqrjSJHAoMRZDJu2s0B7d9xKYa262LxzH4pxn8evog6rw9WJY4pCYSS4qqZQmdseeZ4YVzHoFPJNSEFNEfpZHOeXZphFITDqEQXesq+jqmH9DXxbel4VPMLJIPQfZxMnkerAapfEJ4BpGi0GrBZ70oiBvsbmRBs6tKpys2OF97M5rzbG6t9jwFom/bCAbQE2A181baNGYaZuWGYGc6H5GpH78PJx105MadIMWBl72D8kz4SS8WWLM+Pwc6YR44mscfXeyp6QU032Buvd/0syCeqZI39dDOzyJPno0DVyX6xCob3hIA0+TdpcrXxPYXYLa5vfMO3UjzI9+14b3HKQkF6b5i48t4qal9I74lrl2fFY/+oLlk9N/0vxdYeGkX8zWzUHU0EJ0ffi/8yhWbSR9fwBQD37RVjc4Y3PhydvesWMB7xtNLvubkpaImGNqWKbLyi26669zxEXOW2mRPSYuIOpDDZq3O1M7n7z7UZczQkRhkiVI9aflhJWdn60mJNmiveguNYtDmJBFKZNNa8Tb/bth9OQXL8s/4PZhadsbJYMZydUzS8J5KU1aYEzFtlWVR/n3f0QURb+3WVCET9RlK4PjHSaRL0KYMZYU//1Ds/qtUqj8wbzAzd4THX1eGSf/zv+jSlnYWGCYrvGtS/NQAkx/hLzkxlF5w/t2J3FaWJ/hF6AAgUe8J31jIzgMPUJBRTR7xnhsAlg3W3y9/Lb8fiPMK9TEGjhkV
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(376002)(346002)(39860400002)(230922051799003)(64100799003)(451199024)(82310400011)(1800799009)(186009)(40470700004)(46966006)(36840700001)(36860700001)(40460700003)(336012)(26005)(40480700001)(2906002)(36756003)(5660300002)(86362001)(41300700001)(33656002)(4326008)(6862004)(81166007)(8676002)(8936002)(70586007)(316002)(47076005)(70206006)(478600001)(82740400003)(356005)(6666004)(6506007)(2616005)(6486002)(53546011)(6512007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2023 13:37:10.5423
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f347f0c6-2400-4b46-b2a7-08dbcf162a22
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT023.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB8941
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Oct 2023 13:37:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61378

T24gMTcgT2N0IDIwMjMsIGF0IDEyOjU2LCBSb2JlcnQgUC4gSi4gRGF5IHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxycGpkYXk9Y3Jhc2hjb3Vyc2UuY2FAbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiANCj4gIHdoaWxlIHRoZSBkZXYgbWFudWFsIGluc2lzdHMgdGhhdCAi
dmlydHVhbC8iIGRlcGVuZGVuY2llcyBhcmUgb25seQ0KPiBmb3IgYnVpbGQtdGltZSBkZXBzIGFu
ZCBub3QgcnVuLXRpbWUgZGVwcywgaSByYW4gYWNyb3NzIHRoaXMgZXhhbXBsZQ0KPiBvbiB0aGUg
bWV0YS1pbnRlbCBtYXN0ZXIgYnJhbmNoLCB1bmRlcg0KPiBkeW5hbWljLWxheWVycy9vcGVuZW1i
ZWRkZWQtbGF5ZXIvcmVjaXBlcy1vbmVhcGkvIChibGFuayBsaW5lcyBhZGRlZA0KPiBmb3IgY2xh
cml0eSk6DQo+IA0KPiAkIGdyZXAgLXIgIlJERVBFTkRTLip2aXJ0dWFsLyIgKg0KPiANCj4gY29t
cGlsZXIvaW50ZWwtb25lYXBpLWNvbXBpbGVyXzIwMjMuMC4wLTI1MzcwLmJiOlJERVBFTkRTOiR7
UE59ICs9DQo+ICJwZXJsIGVsZnV0aWxzIHZpcnR1YWwvb3BlbmNsLWljZCBsZXZlbC16ZXJvLWxv
YWRlciB6bGliIHRiYiBsaWJlbGYNCj4gc2V0dXAtaW50ZWwtb25lYXBpLWVudiINCj4gDQo+IGRw
Y3BwLWNvbXBpbGVyL2ludGVsLW9uZWFwaS1kcGNwcC1jcHAtcnVudGltZV8yMDIzLjEuMC00NjMw
NS5iYjpSREVQRU5EUzoke1BOfQ0KPiArPSAidmlydHVhbC9vcGVuY2wtaWNkIHpsaWIgdGJiIGxl
dmVsLXplcm8tbG9hZGVyIGJhc2ggdGNzaCINCj4gDQo+IG1rbC9pbnRlbC1vbmVhcGktbWtsXzIw
MjMuMC4wLTI1Mzk4LmJiOlJERVBFTkRTOiR7UE59ICs9ICJiYXNoIHRiYg0KPiBpbnRlbC1vbmVh
cGktY29tcGlsZXIgc2V0dXAtaW50ZWwtb25lYXBpLWVudiB2aXJ0dWFsL29wZW5jbC1pY2QiDQo+
IA0KPiAgaSBoYXZlIG5vIG9waW5pb24gb24gaXQsIGp1c3Qgb2JzZXJ2aW5nIHRoYXQgaXQgc2Vl
bXMgdG8gZmx5IGluIHRoZQ0KPiBmYWNlIG9mIHRoZSBydWxlcyBsYWlkIGRvd24gaW4gdGhlIGRl
diBtYW51YWw6DQoNCkNvcnJlY3QsIHlvdeKAmXZlIGZvdW5kIGEgYnVnLg0KDQpJdOKAmXMgdW5j
b252ZW50aW9uYWwgdG8gdXNlIHZpcnR1YWwvIGFzIHJ1bnRpbWUgbmFtZXMuIFRoZSByb290IG9m
IHRoZSBidWcgaXMgaGVyZToNCg0KbWV0YS1vZS9yZWNpcGVzLWNvcmUvb3BlbmNsL29wZW5jbC1p
Y2QtbG9hZGVyX2dpdC5iYjpSUFJPVklERVM6JHtQTn0gPSAidmlydHVhbC9vcGVuY2wtaWNk4oCd
DQoNClRoYXQgc2hvdWxkIGJlIHZpcnR1YWwtb3BlbmNsLWljZCBhbmQgdGhlIGNoYW5nZSBwdXNo
ZWQgdG8gYWxsIHRoZSBkZXBlbmRlbnQgcmVjaXBlcy4NCg0KUm9zcw==

