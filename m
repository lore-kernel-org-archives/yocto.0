Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F1F0EEB64D9
	for <webhook@archiver.kernel.org>; Wed, 14 Jun 2023 10:02:24 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.45])
 by mx.groups.io with SMTP id smtpd.web11.7892.1686736934530595191
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Jun 2023 03:02:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=v9mgnb/e;
 spf=pass (domain: arm.com, ip: 40.107.105.45, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gT8Hk+RssT7FbjtiXcMoHkxwIg8qqwBUi5WEha0BS84=;
 b=v9mgnb/eUUpE8fB+Jd3AqIFXBAZbxcUb6jwiLEtYqo/szA+/cowa+WkC/GkhHHctpfjLT+ECNieoMFNVbzDJ5+NGN2Tq88K6l8NJ4MtHkhj1+yfYZ25m99bdo1yW5p2Ym8OFpVZ0tlh9H/SlnsA06BHhmpaarEgrVoDSj0vENiI=
Received: from DB8PR09CA0024.eurprd09.prod.outlook.com (2603:10a6:10:a0::37)
 by GV1PR08MB8618.eurprd08.prod.outlook.com (2603:10a6:150:82::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.46; Wed, 14 Jun
 2023 10:02:09 +0000
Received: from DBAEUR03FT008.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:a0:cafe::3e) by DB8PR09CA0024.outlook.office365.com
 (2603:10a6:10:a0::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.37 via Frontend
 Transport; Wed, 14 Jun 2023 10:02:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT008.mail.protection.outlook.com (100.127.142.107) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6500.25 via Frontend Transport; Wed, 14 Jun 2023 10:02:08 +0000
Received: ("Tessian outbound 8b05220b4215:v136"); Wed, 14 Jun 2023 10:02:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c2fb6daa782e3392
X-CR-MTA-TID: 64aa7808
Received: from ed4fb1e72130.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 6C1B0622-D672-485C-A264-26E80307D0DC.1;
	Wed, 14 Jun 2023 10:02:02 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id ed4fb1e72130.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 14 Jun 2023 10:02:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ldxlMR+I5CHHDm7+zNbfp/W9+T1OzvgIOZ1iyIPh45GM5hz4mk6kFSeEq0nvPKI+ZVT6J7QlMNHcDIPCkVW1uULQ4LIq8HEriD1MQXFogOqSWTE3e2OaHkQ/F/iy1k3gdQQQEh3Art6li2qnmCA/teqX4HE2LW7t3ZLNpUPTQPo5+p8Lnj6F19hg+e8al+j7YP2tHDiyd3WL2llb5IMbxQNq6gmc5GFEfDenXFjT/fgSuthr4Dv4YeMTQkUweF/2Pmtb1Yn5jbzup4P742hO68S9AJ6e+RdnDaskPZHrW6PVa7ca+/VV9K5kldOzPktR7Vgw11SRrJUkBMVGL0kX8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gT8Hk+RssT7FbjtiXcMoHkxwIg8qqwBUi5WEha0BS84=;
 b=kbSexdEMu9ZLMPFDpoJEPmXUVfdbCFtPJ0/GS6cbkEEQCK8Lju96ZXZi/U0dhHsDQxwQ+wnEoXXn43R8BYb/X/sPwf8Cb2NfP0Q7NJTgkIyxThIdhMv+XjZRbueGF2idzivTTd3yTtCve2kqbUf1gQIXBwf/kx3qIlvHjyG7hZSUy3dLzDBDQM9sjpWBbbs/4O0VJQyDOid4wGP4aNzxPnOesIJSbNNQhRIdjTF6T/i/Ax/q4pSQBL3oIo7dfxbMhB7s3PdEZpVTriU/jsyfQHm4RNJPujm39FSQ19ppsnxmAByLGpq/xINosrDKOwBK3Nt8qVMkM99ksUUfqkNrBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gT8Hk+RssT7FbjtiXcMoHkxwIg8qqwBUi5WEha0BS84=;
 b=v9mgnb/eUUpE8fB+Jd3AqIFXBAZbxcUb6jwiLEtYqo/szA+/cowa+WkC/GkhHHctpfjLT+ECNieoMFNVbzDJ5+NGN2Tq88K6l8NJ4MtHkhj1+yfYZ25m99bdo1yW5p2Ym8OFpVZ0tlh9H/SlnsA06BHhmpaarEgrVoDSj0vENiI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB3PR08MB9057.eurprd08.prod.outlook.com (2603:10a6:10:429::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.39; Wed, 14 Jun
 2023 10:02:00 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6455.045; Wed, 14 Jun 2023
 10:01:59 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "lavkhush2208@gmail.com" <lavkhush2208@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Error while testing "core-image-base" through "bitbake
 core-image-base -c testimage -v" #dunfell
Thread-Topic: [yocto] Error while testing "core-image-base" through "bitbake
 core-image-base -c testimage -v" #dunfell
Thread-Index: AQHZnp/xoh7un8K7ekuMIBFB5O6UO6+KA9OAgAAJTQCAAAQXAA==
Date: Wed, 14 Jun 2023 10:01:58 +0000
Message-ID: <EA43C08F-E88B-4912-8247-3DEB1CE3CB8B@arm.com>
References: 
 <CANNYZj88p-YF6jN+JxmPT3Pw=nmaC7OAZaUde4koK4sYCddfww@mail.gmail.com>
 <32579.1686736030692782839@lists.yoctoproject.org>
In-Reply-To: <32579.1686736030692782839@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB3PR08MB9057:EE_|DBAEUR03FT008:EE_|GV1PR08MB8618:EE_
X-MS-Office365-Filtering-Correlation-Id: 415aea01-8c3d-4f7e-9524-08db6cbe6a87
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 MV1DIDBTXwYfIktJoh01CU/yOtq+UR40zW10T5tJtsr8IPt89KSJnx2NHPLYgQrEkVyY3frr4lQYZRF6zoxvqHGVgigZ8NVTxWxAjbbx05Cwjpqf9+p5f/7o/+39AP13U9fTH/Nhu+SCdD4BCaIFfeMEmoLYSeeWj334pT9Swa3wS2ENjHPe4worzHseONIvNTcrhSa8aTFl++QXko+yHhs3tTXeNcEmmiZxfuMxNnywpqbVOFkN8Ch1cZwn3XleFdddZfZJsCnaRpplSQhdURHNwJkZVr+G/TuhL5OFdVwnSQ5k/eik6mbxZf9t1IVd8W/ddpkQfs7EmrpC2A9qNif7+A7JudwEuCADV/5O6t2zO8oU4wuikuW7nsiy5PqYWwBmYh32QWDH07jYvI3cDS9JbTOY6RJmQ6hHvpUbLxFlSdrk1h79+baY1jPtWpKi/fXBDH0j5zKE1EZtAb3R3JFP/9Npfz4ri6Spl1YYdVbAGtiEuc2q9LI0iVpF5vHdvgqld54YdKAtAsGiMzgrBjaA0pv/I5M8Z4TZcjG48zizTBTs8Eg+/445TaeROuAfLgB6oHbtzVbVSM/iwX/HuAlK3V68JeIxl8hQXViSfERAI5mlqlFL3Ak/b5GwbYkJwQ8Qty2if203V1kUkPcRrg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199021)(8936002)(6486002)(316002)(41300700001)(2906002)(4744005)(2616005)(38070700005)(6506007)(86362001)(186003)(6512007)(26005)(33656002)(83380400001)(122000001)(38100700002)(53546011)(36756003)(5660300002)(8676002)(71200400001)(76116006)(66556008)(66476007)(66946007)(91956017)(478600001)(66446008)(6916009)(4326008)(64756008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <8C7CE8B497EDBF458F0B7BD06C98CE12@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR08MB9057
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT008.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	165e9145-ab61-446b-5594-08db6cbe649a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b0LzLar7Mm2EGUdWmsy6SFkaZax2sdicooEaoEbch2alX1P5btwhyMZaYRLzPxt+6wR3WwJLdkVSJyCuqbrSI99CoXMfEqWJUGS+RtEM96J+ayjfflzILgdJmhjECzwShYqa3HBD5qSAM9O3Pk5LGDp+b4uUCignZH+AGaDyo6RNDv6PCwVfp46IoGVqiduUIAjdkecuGP1+2EwzvcuxcUDV5GRxlaxdAx6Os5qosJJ2vTTm58Ymtlrzw0TeWjFc+DaynTMZZBHeud/hYQnc0UrEhIDJaj7i4ALerxPtMWZnu/6H92h/mKt8f3DuwCA3m96ZclsGr5UAdP9qw1gbeMYZyfRRCYKW8fiTe74VypUvVzG3hCDizPizO6c1QWITAcppOCB9II5fq35uUc+vWNWS7P1PXCJ4Eljh0hg0SijEV/OoHt1zqPxSES1rdC193FSFJvB9CPmiTJVV+4qlBTAGF8mzVKIeLqyzt/3SA/Xm7NBqzIJ/vs1PgT7R7ultHVWISOQsMaUPc3SkeaHU3fxHEDY4MrTWCL8Q/cinov17+imF1xLIxvwGdPNC44ZxopTBN/r9bDudpw0REuQv1eoT0QbBc+WA4XjSnM/zGOsUAsC8EiN4JpPBb0eNktJIVB3h5VNod9GF7nxmRmCi2zF4gj0dooS2KdAg7ImYueWP4PrHHBdl3p5PBuBsAaBdonwlhR89olP2c2IXnKdyfW9ovN7SXb03We3g4dNeZ2TGbcmpoT54sSFySsY8eIS5
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(346002)(396003)(39860400002)(376002)(451199021)(36840700001)(40470700004)(46966006)(5660300002)(8676002)(6862004)(4744005)(2906002)(8936002)(70586007)(70206006)(6486002)(4326008)(6512007)(26005)(6506007)(53546011)(41300700001)(316002)(186003)(36860700001)(336012)(356005)(82740400003)(83380400001)(47076005)(2616005)(40460700003)(478600001)(33656002)(40480700001)(36756003)(86362001)(82310400005)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 10:02:08.9757
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 415aea01-8c3d-4f7e-9524-08db6cbe6a87
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT008.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8618
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Jun 2023 10:02:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60295

T24gMTQgSnVuIDIwMjMsIGF0IDEwOjQ3LCBsYXZraHVzaDIyMDggdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPGxhdmtodXNoMjIwOD1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IA0KPiBJIGRvbm90IHdhbnQgdGVzdGltYWdlIHdpdGggcWVtdSwgaSBhbSB1c2lu
ZyBteSBvd24gY3VzdG9tLCBhdXRvbWF0aWNhbGx5IGl0IGlzIHRha2luZyBxZW11LCBob3cgY2Fu
IGkgc3RvcCBxZW11LiANCg0KQ2FuIHlvdSBzaGFyZSB0aGUgY29uZmlndXJhdGlvbiB5b3UgaGF2
ZSBzbyBmYXI/IElmIHlvdeKAmXJlIG5vdCB1c2luZyBxZW11IHRvIGVtdWxhdGUgdGhlIG1hY2hp
bmUsIHdoYXQgYXJlIHlvdSB1c2luZzogYSBkaWZmZXJlbnQgZW11bGF0b3IsIG9yIHBoeXNpY2Fs
IGhhcmR3YXJlPw0KDQpSb3Nz

