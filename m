Return-Path: <simone.weiss@elektrobit.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E065BC77B7A
	for <webhook@archiver.kernel.org>; Fri, 19 May 2023 13:19:08 +0000 (UTC)
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (NAM04-BN8-obe.outbound.protection.outlook.com [40.107.100.54])
 by mx.groups.io with SMTP id smtpd.web10.26115.1684502339824378913
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 May 2023 06:19:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@elektrobit.com header.s=selector1 header.b=MH+cMra5;
 spf=pass (domain: elektrobit.com, ip: 40.107.100.54, mailfrom: simone.weiss@elektrobit.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elektrobit.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aCqjKc3sBf5tgM8Gph/sWDsB0tapdwj3IVPtKCRaHKA=;
 b=MH+cMra5oPe2UDkR8LWr1+1q+a/cmmOJlohfDYXcoMU9BlZL81Xfc+0pVsNhVqemf9YBnu3dLyOtsb9gsykkUtgAbGyTQlk0cve28ccbCrhv0fnHZDd0GZhcLPDs3ZjA37evYuQ8F2lOa/FnnmdRIfBkzVXp3Q8/0FjiSGobOFg=
Received: from BN8PR12CA0026.namprd12.prod.outlook.com (2603:10b6:408:60::39)
 by CO1PR08MB7016.namprd08.prod.outlook.com (2603:10b6:303:d4::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21; Fri, 19 May
 2023 13:18:56 +0000
Received: from BN8NAM12FT039.eop-nam12.prod.protection.outlook.com
 (2603:10b6:408:60:cafe::bc) by BN8PR12CA0026.outlook.office365.com
 (2603:10b6:408:60::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.21 via Frontend
 Transport; Fri, 19 May 2023 13:18:56 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 4.79.107.243)
 smtp.mailfrom=elektrobit.com; dkim=pass (signature was verified)
 header.d=elektrobit.com;dmarc=pass action=none header.from=elektrobit.com;
Received-SPF: Pass (protection.outlook.com: domain of elektrobit.com
 designates 4.79.107.243 as permitted sender) receiver=protection.outlook.com;
 client-ip=4.79.107.243; helo=usbth1es003.ebgroup.elektrobit.com; pr=C
Received: from usbth1es003.ebgroup.elektrobit.com (4.79.107.243) by
 BN8NAM12FT039.mail.protection.outlook.com (10.13.182.234) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.7 via Frontend Transport; Fri, 19 May 2023 13:18:55 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-db3eur04lp2057.outbound.protection.outlook.com [104.47.12.57])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by usbth1es003.ebgroup.elektrobit.com (Postfix) with ESMTPS;
	Fri, 19 May 2023 06:18:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CT9ybZmazJ3G8q3CiJawdexvFxfzmd+7AzkvzhfQXQjPT8vWbMHynA3yeD4V6dj4VOCFO8/RAudCQ2IaLvc+0Sm3eHfCPPscV7HZ4ciuQHXcEo0iowu41+/qYYcyKjQXGFIQu39lbk4YivKhwgahk6gvovhbJKpotCT8MBTM5WnjGT77ra4Lr0eHgMxRSuEzax4+SfwdR/2oCpdO9JVBiOnslzz1vnU+jwhPmEspwvjf6ieIBfA66513RujjqUF9zrVqRGJDUT2axZByNofPbGe5EOrX+22yP9Ny7RVCnjluBJpZeDY/4Rll7z7aA7//efYIC63LcJmd8rORZQphzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aCqjKc3sBf5tgM8Gph/sWDsB0tapdwj3IVPtKCRaHKA=;
 b=hAfbi5ZjS4JtSl3305T4h9PqvcH0EquH6dZQiUf0je5sja5oDH46p84DXLeyaW1IVVPFMaqKTKyqYTH5ZHHDEiT76kvXqcm6rhlJb4dtGj58Xe4OzMywjLBAYONT+IVSagbT+//hJFmFVK/RiOYVbo9aHIkpf4O/qygonVT+y7X3bE5H86zyFe6rhfYgLB1l6myh6JqRgSFY7IiczWs8plAO4QgCvwwgLw5LORcxdxsmWShaimTzrAsJ2YcYZ4qdumGyzOGWknBjBHO3aA+TDDJa+MryuEVz6DzY0zGIcy8st+r5JPK6PV6yBbMRegpADC+IlHYwjWMJP8mRXWkJcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=elektrobit.com; dmarc=pass action=none
 header.from=elektrobit.com; dkim=pass header.d=elektrobit.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elektrobit.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aCqjKc3sBf5tgM8Gph/sWDsB0tapdwj3IVPtKCRaHKA=;
 b=MH+cMra5oPe2UDkR8LWr1+1q+a/cmmOJlohfDYXcoMU9BlZL81Xfc+0pVsNhVqemf9YBnu3dLyOtsb9gsykkUtgAbGyTQlk0cve28ccbCrhv0fnHZDd0GZhcLPDs3ZjA37evYuQ8F2lOa/FnnmdRIfBkzVXp3Q8/0FjiSGobOFg=
Received: from PAXP195MB1231.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:1a3::10)
 by PAWP195MB2202.EURP195.PROD.OUTLOOK.COM (2603:10a6:102:337::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Fri, 19 May
 2023 13:18:51 +0000
Received: from PAXP195MB1231.EURP195.PROD.OUTLOOK.COM
 ([fe80::305f:ecf4:734a:af2]) by PAXP195MB1231.EURP195.PROD.OUTLOOK.COM
 ([fe80::305f:ecf4:734a:af2%3]) with mapi id 15.20.6411.019; Fri, 19 May 2023
 13:18:51 +0000
From: =?utf-8?B?V2Vpw58sIFNpbW9uZQ==?= <Simone.Weiss@elektrobit.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "akuster808@gmail.com" <akuster808@gmail.com>
Subject: [meta-security] proper place for recipes for kernel fuzzing
Thread-Topic: [meta-security] proper place for recipes for kernel fuzzing
Thread-Index: AQHZilR04RU1Ilu1ZEi8mteThGPTXA==
Date: Fri, 19 May 2023 13:18:51 +0000
Message-ID: <a96da1ac888404dad50b57b57450aff07d193ab1.camel@elektrobit.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=elektrobit.com;
x-ms-traffictypediagnostic: 
	PAXP195MB1231:EE_|PAWP195MB2202:EE_|BN8NAM12FT039:EE_|CO1PR08MB7016:EE_
X-MS-Office365-Filtering-Correlation-Id: ef2847d1-2aa4-441c-1f63-08db586b9940
X-SM-outgoing: yes
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 rYnG5kTPIZWSS0PydA+e3+yeLZUF/SPZCsZ8c2qQTUdNj2lr0h9AoNhG4Ryu59x8J3HwcHH2oFcfiBuGg15oVEoN4+NXVg6h0wqt0VXd1qr4MY1M1kulG1FCmCTGo4GzYUIF77FBZli8YXxUCKJqjobBaK5S+VECY9MMSEfO3ncX1AdAiQFM8gjnJnkSnlFsslsyLX0xq+VERa8FHZjjxO7f1ZhwvgSAW4VCOThgkIovd03wKzwIbh4BXOIPkrnS8jtd1WHPW0PK61qncTyYrPIFriuBhFsuHh0sfWYjlN/MUPrnd7g/qkvD7qQPq3SLUH88leJG+vJlIGxPrDuHxnxkcovwDj/whRcRuTURWw0dC893BQoTnW9B1z9rc/AxJHqxLF71uMt0rotqmnoO4+wuVBcbXVtRQBCDnPcPboUWFVyWAZUl97ciJLtDhPr02+kqeaJLgXrf1cEU39GWOZY3/6FmNAaTNSmqGglE/NghdTZX0i2SeWsX2AMa/A1FsCIlRUM8EQd2gPEDa1DKCAUFvWKeQ1Ss8/A75PerpXACnqqjIV/GlLN9nXrjxLyCtB1Oy8bW/reTYbD18KQURlNKiDIL2bk4NIr4chBHpzualMzIv5WVLf/sjtAup+PN2lL3lAUwVi4HlfYWKhBQfQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXP195MB1231.EURP195.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(39850400004)(376002)(136003)(396003)(1590799018)(451199021)(64756008)(66946007)(66446008)(76116006)(91956017)(66476007)(66556008)(8936002)(8676002)(478600001)(316002)(4326008)(6916009)(1580799015)(41300700001)(6486002)(5660300002)(71200400001)(85182001)(38100700002)(122000001)(83380400001)(36756003)(38070700005)(6512007)(86362001)(2616005)(186003)(2906002)(6506007)(15650500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <AF386888B6909B49918752AFD7F7F01C@EURP195.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWP195MB2202
X-SM-smarthost: [elektrobit-com.mail.protection.outlook.com]
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 BN8NAM12FT039.eop-nam12.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	325362e3-b63c-4d28-1a48-08db586b969d
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	R4+NJpqVqAcnJ9UefZ9UWRwD287aXNdbyp5Lnn1qYD4YMz8+s8JttnU3/+Lqr4ZxqW+NuPazt/mKl2B29Qbp4QN0vbbN0oeVqMJhtSRnhT7GyUbP6/geq382GIP47fIUyzI9HrTc+teqnwh+amLjo/2datHaCKkxOP5we/qRpXrQIY3qNwKa7jzA8wUSaPFBu5D+CvIcxhfIIV+50rqwL/dWULj73+uhwTNaqH97CfAmm1Sgvgb8+RNbqOQZ+Z0jbaatuPSBvOPTequniXx1NJCpDPf0Zbl9XrrX4hdK9yxXyyRnlZumqNAOw6CrgwiCGMAk97JMmS6MWLvQIw3LkJ8h0nKKUEDMJ9OZQlSfwfJbdb3xnXs6RD8gMYYbxQWQ4PLqMwidY+6SHId+Np/2KQSdLOgExbZPIXgmT1fKQQYbfkdcSouc+XOiLj1RlS1u4lGHXFAYk8UaN0Kg0dx5E1vJsZXK1hgvz19p0+h2Ec8eWEjUwBZdG+BMU26oFwBHIE/vM3yJqWch98HtD1uPCF2WmQOYGGuEVwBR5LOaP9Van0JQd71+TGnK6e6ciliZyvyKZmMO1OoVmy3ZaxkIZXKB0xBDscQaAc5CTmeGNjIcR3HsBO7QWgvhOkXmIZ3EqWucXmDrmgo/O952WnAXeaSeiaBFSqPtAzLXfAIzG4l4ktfTSw7kESTZe91jK9QU+t2SXnwP17GxiQlw1bMZf84rOxBIsWz1RFL+GQsUU0CObkwyZcSaWddI22k/H/RfAOgf9oWt4EmNc19au7D8V4YHVbyvBTq0HJlHxh5eG6ba4yua17bTyR9rX7CvEbep
X-Forefront-Antispam-Report: 
	CIP:4.79.107.243;CTRY:US;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:usbth1es003.ebgroup.elektrobit.com;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230028)(4636009)(396003)(346002)(136003)(39850400004)(376002)(451199021)(1590799018)(36840700001)(46966006)(40470700004)(40460700003)(6486002)(41300700001)(26005)(6506007)(6512007)(36756003)(5660300002)(85182001)(82310400005)(36860700001)(83380400001)(47076005)(2616005)(186003)(336012)(15650500001)(2906002)(86362001)(81166007)(356005)(8936002)(8676002)(40480700001)(82740400003)(478600001)(6916009)(70206006)(70586007)(4326008)(316002)(1580799015)(36900700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: elektrobit.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2023 13:18:55.4856
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2847d1-2aa4-441c-1f63-08db586b9940
X-MS-Exchange-CrossTenant-Id: e764c36b-012e-4216-910d-8fd16283182d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=e764c36b-012e-4216-910d-8fd16283182d;Ip=[4.79.107.243];Helo=[usbth1es003.ebgroup.elektrobit.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	BN8NAM12FT039.eop-nam12.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR08MB7016
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 May 2023 13:19:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60075

SGksDQoNCg0KSSB3YW50IHRvIHVwc3RyZWFtIHJlY2lwZXMgZm9yIHN5emthbGxlciB0byBwcm92
aWRlIGFuIGVhc3kgb3B0aW9uIHRvIGZ1enoNCnlvY3RvLWJhc2VkIGtlcm5lbC4gSSB3b3VsZCBs
aWtlIHRvIGNoZWNrIGlmIG1ldGEtc2VjdXJpdHkgY291bGQgYmUgYSBnb29kDQpwbGFjZSB0byBh
ZGQgdGhpcy4NCg0KTGV0IG1lIHNrZXRjaCB0aGUgaW50ZW5kZWQgY2hhbmdlLXNldDoNCg0KMSkg
RElTVFJPX0ZFQVRVUkU6IEFkZCBhIHN5emthbGxlciBkaXN0cmlidXRpb24gZmVhdHVyZS4gDQoN
CjIpIFJlY2lwZXMgZm9yIHN5emthbGxlcjogT2YgY291cnNlIHNoYXJlZCBjb2RlIHNob3VsZCBi
ZSBpbiBhbiAqLmluYyBmaWxlDQotIHJlY2lwZSBmb3IgaG9zdDogIFRoaXMgcmVjaXBlIGJ1aWxk
cyBhbmQgZGVwbG95cyBob3N0IGJpbmFyaWVzIGFuZCBuZWVkZWQNCmNvbmZpZ3VyYXRpb24gZm9y
IHN5emthbGxlci4gSW4gZ2VuZXJhbCB0aGUgaG9zdCB0aGF0IGlzIGNvbm5lY3RlZCB0byB0aGUN
CmZ1enppbmcgdGFyZ2V0IGNvdWxkIGJlIG9mIGFueSBhcmNoaXRlY3R1cmUuIElmIHRoZSBmdXp6
aW5nIGhvc3RzIGFyY2hpdGVjdHVyZQ0KZXF1YWxzIHlvdXIgYnVpbGQgaG9zdHMgYXJjaGl0ZWN0
dXJlLCB0aGUgbmF0aXZlIHZhcmlhbnQgb2YgdGhpcyByZWNpcGUgY2FuIGJlDQp1c2VkLiBJZiB0
aGUgZnV6emluZyBob3N0cyBhcmNoaXRlY3R1cmUgZXF1YWxzIHRoZSBmdXp6aW5nIHRhcmdldHMg
YXJjaGl0ZWN0dXJlLA0KYnV0IG5vdCB0aGUgYnVpbGQgbWFjaGluZSBhcmNoaXRlY3R1cmUgdGhl
IGNyb3NzLWNvbXBpbGVkIHZhcmlhbnQgY2FuIGJlIHVzZWQuDQpUaGF0IHNob3VsZCBiZSBhIHJh
cmUgc2l0dWF0aW9uIHRob3VnaC4uLg0KLSByZWNpcGUgZm9yIHRhcmdldDogdGhlIG5lZWRlZCB0
YXJnZXQgcGFydCBvZiBjb3Vyc2UuDQoNClRob3NlIHJlY2lwZXMgc2hvdWxkIGJlIGFkZGVkIHRv
IHRoZSBzZWN1cml0eS0qLWltYWdlLmJiIHJlY2lwZXMuIA0KDQotIGtlcm5lbCBjb25maWd1cmF0
aW9uDQpTeXprYWxsZXIgbmVlZHMgY2VydGFpbiBrZXJuZWwgY29uZmlndXJhdGlvbiBsaWtlIENP
TkZJR19LQ09WLA0KQ09ORklHX0RFQlVHU19GUywuLi4gZW5hYmxlZC4gQWRkIHRob3NlIGluIGEg
ZnJhZ21lbnQgYW5kIHByb3ZpZGUgYSBzY2MuDQoNCg0KV291bGQgeW91IGJlIGZpbmUgd2l0aCBh
ZGRpbmcgc3RoIGxpa2UgdGhpcyB0byBtZXRhLXNlY3VyaXR5PyBEbyB5b3UNCmhhdmUgYW55IGFk
ZGl0aW9uYWwvb3RoZXIgc3VnZ2VzdGlvbnM/DQoNCk9mIGNvdXJzZSBJIHdvdWxkIGFsc28gYmUg
d2lsbGluZyB0byBtYWludGFpbiB0aGlzIHJlY2lwZSB0aGVuDQoNClRoYW5rcywNClNpbW9uZQ0K
DQo=

