Return-Path: <simone.weiss@elektrobit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5385C77B7A
	for <webhook@archiver.kernel.org>; Fri, 19 May 2023 17:20:06 +0000 (UTC)
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (NAM12-BN8-obe.outbound.protection.outlook.com [40.107.237.76])
 by mx.groups.io with SMTP id smtpd.web10.172.1684516803428997072
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 May 2023 10:20:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@elektrobit.com header.s=selector1 header.b=k0D55xqq;
 spf=pass (domain: elektrobit.com, ip: 40.107.237.76, mailfrom: simone.weiss@elektrobit.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elektrobit.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+tfYedITNuV6y9bp5rx8Y8BMhcVvlELrWq9+ksf8oQE=;
 b=k0D55xqqz4OwuRHJn6+s9ON3cPFCTPsxK/c+DKgU2jpRIFoPOxRjsdO9OeT+jxlqJhYTuBSkTZPVn9dN9KWsqMg9n6B80aOsUZmHSoO65ApViN/KLCiGiFLW0Beq0Jzwbt3uiyjKf+0QjJzska0n307nAcM/3eavFgNBSMiPS2c=
Received: from BN9PR03CA0875.namprd03.prod.outlook.com (2603:10b6:408:13c::10)
 by PH0PR08MB6533.namprd08.prod.outlook.com (2603:10b6:510:36::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 17:19:57 +0000
Received: from BN8NAM12FT033.eop-nam12.prod.protection.outlook.com
 (2603:10b6:408:13c:cafe::2d) by BN9PR03CA0875.outlook.office365.com
 (2603:10b6:408:13c::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19 via Frontend
 Transport; Fri, 19 May 2023 17:19:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.79.107.243)
 smtp.mailfrom=elektrobit.com; dkim=pass (signature was verified)
 header.d=elektrobit.com;dmarc=pass action=none header.from=elektrobit.com;
Received-SPF: Pass (protection.outlook.com: domain of elektrobit.com
 designates 4.79.107.243 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.79.107.243; helo=usbth1es003.ebgroup.elektrobit.com; pr=C
Received: from usbth1es003.ebgroup.elektrobit.com (4.79.107.243) by
 BN8NAM12FT033.mail.protection.outlook.com (10.13.182.107) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.7 via Frontend Transport; Fri, 19 May 2023 17:19:56 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (mail-he1eur04lp2054.outbound.protection.outlook.com [104.47.13.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by usbth1es003.ebgroup.elektrobit.com (Postfix) with ESMTPS;
	Fri, 19 May 2023 10:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BV2fLQoid1PNZBFBmDlelaOPfjN6WHz1MXHr9/x7BdLGV9+OxWhNmcmVDZxo2qH91DUpRhP4Y1TTGc9vfSp43vRQfzcp0+CNNpo/si2HV6zBJIYKYEHpamyFs2w1IXJFX87wK5j+AD9+mxtTIcje3WTuXkk7B0tqeGmMsfaFfFdFfMXAhtxYSwdYMONxxuT7B+BYxJWMT4c9zWA5txoF5QQKVuVhZrtDDpKV16wP1yHu950PLc6oP/Wvwef88+YssriifdpU6Hkrlwi/uBJPf6g19gs41LtNOLNlEW3tZ6x3tUnFdhBCEM5494wNQaeW3eSCsj9WzZSa0Smz7HDXEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+tfYedITNuV6y9bp5rx8Y8BMhcVvlELrWq9+ksf8oQE=;
 b=cgnvFxFBagMWWmi94nvV+RbN02wXG7EMXdoUxjge3cnNcLaWRLAYG4LLzHXTBaliO0tmuY4OxGg4WtsZJn47QgxR7+gV3okaV0844z98PBPoDEWSRPcGfXNXX4LXHP3lNQYe9JtLzS1z4dmxECVJG42GqSZHHKmvuOXH5kZAvsn9wY84y20HpwtYzwZ7vPFco3nXepr0umVLPGt/YEdomyyZm6H9FJGQHgKmoC0VJA0zqRsoC9yHflS+4S4Bx94FM1U8IR0/87TR53cBDAuWZepCcazXBNNdVAtazvG2WIPcGgXIgTq8spUO6YPWOmAg1FaulV9ZwDgyI1XA6a46CA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=elektrobit.com; dmarc=pass action=none
 header.from=elektrobit.com; dkim=pass header.d=elektrobit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elektrobit.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+tfYedITNuV6y9bp5rx8Y8BMhcVvlELrWq9+ksf8oQE=;
 b=k0D55xqqz4OwuRHJn6+s9ON3cPFCTPsxK/c+DKgU2jpRIFoPOxRjsdO9OeT+jxlqJhYTuBSkTZPVn9dN9KWsqMg9n6B80aOsUZmHSoO65ApViN/KLCiGiFLW0Beq0Jzwbt3uiyjKf+0QjJzska0n307nAcM/3eavFgNBSMiPS2c=
Received: from PAXP195MB1231.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:1a3::10)
 by AS8P195MB1877.EURP195.PROD.OUTLOOK.COM (2603:10a6:20b:539::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 17:19:52 +0000
Received: from PAXP195MB1231.EURP195.PROD.OUTLOOK.COM
 ([fe80::305f:ecf4:734a:af2]) by PAXP195MB1231.EURP195.PROD.OUTLOOK.COM
 ([fe80::305f:ecf4:734a:af2%3]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 17:19:52 +0000
From: =?utf-8?B?V2Vpw58sIFNpbW9uZQ==?= <Simone.Weiss@elektrobit.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: [meta-security] proper place for recipes for kernel fuzzing
Thread-Topic: [meta-security] proper place for recipes for kernel fuzzing
Thread-Index: AQHZilR0mRdLsqZtW0GPduHJK7MooK9hsE8AgAAnRYA=
Date: Fri, 19 May 2023 17:19:51 +0000
Message-ID: <e7e671b82143793fe1dc922c718717444da7dda4.camel@elektrobit.com>
References: <a96da1ac888404dad50b57b57450aff07d193ab1.camel@elektrobit.com>
	 <71433182-8142-4eca-8e21-7b70edc770c8@gmail.com>
In-Reply-To: <71433182-8142-4eca-8e21-7b70edc770c8@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=elektrobit.com;
x-ms-traffictypediagnostic: 
	PAXP195MB1231:EE_|AS8P195MB1877:EE_|BN8NAM12FT033:EE_|PH0PR08MB6533:EE_
X-MS-Office365-Filtering-Correlation-Id: eb9d11c6-2163-47df-41ce-08db588d44c6
X-SM-outgoing: yes
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 JHvVVgdHrDJ1wBBugx2XfcigTwkk55H61vYcb7IF7Pfv/RED+WKOdlTa8MUqpMJ+8z7PW8x+ViJOxkWiaBUwnMJp4UFi+e3rUFSTM/b7TYGt75SyW551u/tm0xB8KqqjyJkhF097hVO0eWIHmiOE/uUsfnzFMBeds8SlKoLkkcj2X52D8PZgO6gf2c3nM7AgUabuYy3I/r+zUHw5xGnvlwZK8T8utzK7eHX5ZLiI9m99s3mmDVvzrpJO4x63oTiWAaOhlyfSOm+itOQaFc9wGKURLkb2tWQq1ABFPruwDEDUD8mAj7ch6mlvn0vqNMbKPBMtkRzlj6LRutuhQkmiPVFdlFoKxxRjJS31kcr0bF5OxPQ38/VtsIxqqZOIwD6hV+0bIPAzkr8TWHRTwSbP1G1LJCUdgYlL8ByPKdcPzNijgsYG9mUEann1DdvHQvPFOnXxYB5cc3cRRf9jbCKkQpkctaX8Dut3FIlhGKvbVvlI6itw6NLx6tCmoLJeZpgxyfWB4YdP18b+UqR/+yoyFsWzN0NUk1wjiu6RPL2dZZSFX+S9m0gCJlBPfgReb6FI3brg5lpPDAVP1BSe80dMNPmhm4VZJ+AKrgEInXpFAPoHZFzhYmVJP2DxhgsmO/ow8n6A4w+jCePyLhUrelyzGw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP195MB1231.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(39850400004)(376002)(366004)(346002)(136003)(1590799018)(451199021)(1580799015)(66946007)(64756008)(76116006)(66556008)(66476007)(478600001)(66446008)(91956017)(316002)(110136005)(86362001)(38070700005)(85182001)(36756003)(83380400001)(6512007)(6506007)(186003)(2616005)(53546011)(41300700001)(5660300002)(2906002)(8676002)(15650500001)(71200400001)(6486002)(8936002)(122000001)(38100700002);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <332310938D7C2B45806631B3276F5E31@EURP195.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P195MB1877
X-SM-smarthost: [elektrobit-com.mail.protection.outlook.com]
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 BN8NAM12FT033.eop-nam12.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7673583a-e2ec-44b8-1ee9-08db588d41bc
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	CSzuu0fyuIJwm3/AKt558NwySlpkI/se+hEkP7kzK7Ew2RvfHxRXAVzX8i1ZoKc03cmYKJtMJtz4admVtNdS0VG8LMntM4qBFn9GbEXvMStObnMlXnHkSuC0/QxGPi6/lAdsHB73gU1SZNYgNOY/9XHqfLTPw4QT3gP/RNDQ95uxjejXLZaajpQFRfir1m5DQCDXoFdqZ5sbaeMdz+oR/SeYloDcWEftABrQIt4dVIkEIE6CVZY2PIZt7B4Bm0xJQSz0qQPdNFc+APMihvCeIiOlIdDOFh5MUM6g+ld6hr4BC7IfxI4uaTZRUze1xQ8zS6u6IW9Yq/2BmkxWNEiU8+xS0I4/5tdRy9N3ykZfHLfiYyus/9GrE5oFUusSlygiR3c4OrYPxn3hqH0+xzWpmhbnwv+WQNHFrjNV3SAk+wYsiYIVjg6O80fDd8Im1GONRjpeHm9X3NSKSazUWGGRvKx2RrW+TXFnffh/7ZzwYEzvT3Pz5r978N59orQr+1qToJkWJZBEh+jRkbk9x5Px5+gBGB7tkNJNKpIpl/DrfrUwxhCLUetJDgAei6Abzt0VZCJ2KIHasAKX7I4cPvvvTAQCnN2k9S2NS1LxCLrbmaH6pf7wZPzuciVa8M0LxBG97OW5miHl16f3ZCx+DdNyHUkiR+TRiWZoIAanAcvnxJXls86imqZZrTblmToALC+f0wE7mLEKL6Kt2bfNTlcv11NOu14xUWiMLQ/Nh3KwKiwx5s986fI5+Y+ztdgKEkWJB1IKvvbI6oAFkexQcpEmRw==
X-Forefront-Antispam-Report: 
	CIP:4.79.107.243;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:usbth1es003.ebgroup.elektrobit.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230028)(4636009)(39850400004)(376002)(136003)(346002)(396003)(1590799018)(451199021)(36840700001)(46966006)(1580799015)(70206006)(478600001)(70586007)(316002)(110136005)(86362001)(85182001)(36756003)(83380400001)(47076005)(186003)(6512007)(6506007)(2616005)(36860700001)(53546011)(26005)(336012)(5660300002)(41300700001)(8676002)(8936002)(6486002)(15650500001)(2906002)(82310400005)(40480700001)(82740400003)(81166007)(356005)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: elektrobit.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 17:19:56.6471
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb9d11c6-2163-47df-41ce-08db588d44c6
X-MS-Exchange-CrossTenant-Id: e764c36b-012e-4216-910d-8fd16283182d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e764c36b-012e-4216-910d-8fd16283182d;Ip=[4.79.107.243];Helo=[usbth1es003.ebgroup.elektrobit.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN8NAM12FT033.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR08MB6533
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 17:20:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60077

SGVsbG8sDQoNCk9uIEZyaSwgMjAyMy0wNS0xOSBhdCAxMDo1OSAtMDQwMCwgYWt1c3RlcjgwOCB3
cm90ZToNCj4gQ0FVVElPTjogVGhpcyBlbWFpbCBvcmlnaW5hdGVkIGZyb20gb3V0c2lkZSBvZiB0
aGUgRWxla3Ryb2JpdCBvcmdhbml6YXRpb24uIERvDQo+IG5vdCBjbGljayBsaW5rcyBvciBvcGVu
IGF0dGFjaG1lbnRzIHVubGVzcyB5b3UgcmVjb2duaXplIHRoZSBzZW5kZXIgYW5kIGtub3cNCj4g
dGhlIGNvbnRlbnQgaXMgc2FmZS4NCj4gDQo+IA0KPiBIZWxsbywNCj4gDQo+IE9uIDUvMTkvMjMg
OToxOCBBTSwgV2Vpw58sIFNpbW9uZSB3cm90ZToNCj4gPiBIaSwNCj4gPiANCj4gPiANCj4gPiBJ
IHdhbnQgdG8gdXBzdHJlYW0gcmVjaXBlcyBmb3Igc3l6a2FsbGVyIHRvIHByb3ZpZGUgYW4gZWFz
eSBvcHRpb24gdG8gZnV6eg0KPiA+IHlvY3RvLWJhc2VkIGtlcm5lbC4gSSB3b3VsZCBsaWtlIHRv
IGNoZWNrIGlmIG1ldGEtc2VjdXJpdHkgY291bGQgYmUgYSBnb29kDQo+ID4gcGxhY2UgdG8gYWRk
IHRoaXMuDQo+IA0KPiBUaGUgc3l6a2FsbGVyIHJlY2lwZSBpdHNlbGYgaXMgaW4gbWV0YS1vZS4g
QXJlIHRhbGtpbmcgYWJvdXQgYWRkaW5nIGFkZGl0aW9uYWwNCj4gcmVjaXBlcyB0byBlbmhhbmNl
IHN5emthbGxlcj8NCj4gDQoNCkkgc2VlLCBteSBiYWQuIFdoZW4gd2Ugb3JpZ2luYWxseSB3b3Jr
ZWQgb24gaXQsIGl0IHdhcyBub3QgYXZhaWxhYmxlIHlldCBpbg0KbWV0YS1vZS4gSSBzaG91bGQg
aGF2ZSByZWNoZWNrZWQuLi4gSSdsbCB0YWtlIGEgbG9vayBhdCB0aGUgcmVjaXBlcyB0aGVyZS4N
Cg0KU29ycnkgZm9yIHRoZSBjb25mdXNpb24uDQoNCktpbmQgUmVnYXJkcywNClNpbW9uZQ0KDQo+
IEJSLA0KPiBBcm1pbg0KPiANCj4gPiBMZXQgbWUgc2tldGNoIHRoZSBpbnRlbmRlZCBjaGFuZ2Ut
c2V0Og0KPiA+IA0KPiA+IDEpIERJU1RST19GRUFUVVJFOiBBZGQgYSBzeXprYWxsZXIgZGlzdHJp
YnV0aW9uIGZlYXR1cmUuDQo+ID4gDQo+ID4gMikgUmVjaXBlcyBmb3Igc3l6a2FsbGVyOiBPZiBj
b3Vyc2Ugc2hhcmVkIGNvZGUgc2hvdWxkIGJlIGluIGFuICouaW5jIGZpbGUNCj4gPiAtIHJlY2lw
ZSBmb3IgaG9zdDrCoCBUaGlzIHJlY2lwZSBidWlsZHMgYW5kIGRlcGxveXMgaG9zdCBiaW5hcmll
cyBhbmQgbmVlZGVkDQo+ID4gY29uZmlndXJhdGlvbiBmb3Igc3l6a2FsbGVyLiBJbiBnZW5lcmFs
IHRoZSBob3N0IHRoYXQgaXMgY29ubmVjdGVkIHRvIHRoZQ0KPiA+IGZ1enppbmcgdGFyZ2V0IGNv
dWxkIGJlIG9mIGFueSBhcmNoaXRlY3R1cmUuIElmIHRoZSBmdXp6aW5nIGhvc3RzDQo+ID4gYXJj
aGl0ZWN0dXJlDQo+ID4gZXF1YWxzIHlvdXIgYnVpbGQgaG9zdHMgYXJjaGl0ZWN0dXJlLCB0aGUg
bmF0aXZlIHZhcmlhbnQgb2YgdGhpcyByZWNpcGUgY2FuDQo+ID4gYmUNCj4gPiB1c2VkLiBJZiB0
aGUgZnV6emluZyBob3N0cyBhcmNoaXRlY3R1cmUgZXF1YWxzIHRoZSBmdXp6aW5nIHRhcmdldHMN
Cj4gPiBhcmNoaXRlY3R1cmUsDQo+ID4gYnV0IG5vdCB0aGUgYnVpbGQgbWFjaGluZSBhcmNoaXRl
Y3R1cmUgdGhlIGNyb3NzLWNvbXBpbGVkIHZhcmlhbnQgY2FuIGJlDQo+ID4gdXNlZC4NCj4gPiBU
aGF0IHNob3VsZCBiZSBhIHJhcmUgc2l0dWF0aW9uIHRob3VnaC4uLg0KPiA+IC0gcmVjaXBlIGZv
ciB0YXJnZXQ6IHRoZSBuZWVkZWQgdGFyZ2V0IHBhcnQgb2YgY291cnNlLg0KPiA+IA0KPiA+IFRo
b3NlIHJlY2lwZXMgc2hvdWxkIGJlIGFkZGVkIHRvIHRoZSBzZWN1cml0eS0qLWltYWdlLmJiIHJl
Y2lwZXMuDQo+ID4gDQo+ID4gLSBrZXJuZWwgY29uZmlndXJhdGlvbg0KPiA+IFN5emthbGxlciBu
ZWVkcyBjZXJ0YWluIGtlcm5lbCBjb25maWd1cmF0aW9uIGxpa2UgQ09ORklHX0tDT1YsDQo+ID4g
Q09ORklHX0RFQlVHU19GUywuLi4gZW5hYmxlZC4gQWRkIHRob3NlIGluIGEgZnJhZ21lbnQgYW5k
IHByb3ZpZGUgYSBzY2MuDQo+ID4gDQo+ID4gDQo+ID4gV291bGQgeW91IGJlIGZpbmUgd2l0aCBh
ZGRpbmcgc3RoIGxpa2UgdGhpcyB0byBtZXRhLXNlY3VyaXR5Pw0KPiANCj4gDQo+IA0KPiA+IERv
IHlvdQ0KPiA+IGhhdmUgYW55IGFkZGl0aW9uYWwvb3RoZXIgc3VnZ2VzdGlvbnM/DQo+ID4gDQo+
ID4gT2YgY291cnNlIEkgd291bGQgYWxzbyBiZSB3aWxsaW5nIHRvIG1haW50YWluIHRoaXMgcmVj
aXBlIHRoZW4NCj4gPiANCj4gPiBUaGFua3MsDQo+ID4gU2ltb25lDQo+ID4gDQo+IA0KDQo=

