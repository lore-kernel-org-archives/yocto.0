Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CE5EC4332F
	for <webhook@archiver.kernel.org>; Fri, 11 Nov 2022 11:24:33 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.51])
 by mx.groups.io with SMTP id smtpd.web08.4359.1668165864797591915
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Nov 2022 03:24:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ix8xJNuP;
 spf=pass (domain: arm.com, ip: 40.107.21.51, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=d0u6X+N4MHGT1yuloxS1+MkW0VwJVnZy+nbDa5+dXKBZhaCMXeHX6fgrawAUt42EwgWJBDdk5FRTBufo7COIIz/V//62FeCp7F3dmjrfymq47/4ytBnaS8s0DbLRM3Nng1+8T+Va7+a5C/AnEcQKfmtWcRaZ6rcxLUrSlQxRWugbR0Q9F2SIrhXyFaadNDI86dGs3xmz0/ihJOc4KhMz20+VhS3QBCE2nmKhjl5zpgb6Jh6bxuSomZ3gldNUFNbvk2+gi3/Pcw9iCg1VTNHLzf/tQE4+kxKYA7LM6IGI3sWW2fsOUmcCwfX7Zw271HoBpa9Yf0pI3vGEKPZ9F9gn6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5QI+Uv9bUKQmwhCoDjUPge2LiKBT1SoqUln4En3XCJk=;
 b=OQaIwcuj2IzUW9CXdzCfLYeGhjhVlZSeyalTQs5Bdbg8cHA/l3WdCJ37I0w5+PFKbxsVWQ+aYRGqpU5ZVSWalIZWwcw99TZ4pI+thAnZ00Eap0vKVOi1Ew5xQOSL7ZPIcEqbCOEkU8Ub0lwVjvSngNFoLIzIdZGiRGTHsTzOvt/zf6JNCB4dtUUiz/WfwbPL/+jIAeUmOowgglCwRAw0+w/igdtbHSgh2xmxcc5PG1O88YV1vvwOnKKnp3jLerpuaJ69AVeDYQN75kyngJUOgsdqwsO31A93hwT6OzMrt0PSuKsgRdDfAqphjnxY6Am3zYFTS0jFtDnxyA1tOTjvaA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QI+Uv9bUKQmwhCoDjUPge2LiKBT1SoqUln4En3XCJk=;
 b=ix8xJNuPvqGPuvdCuZ1GISaD0b6nXuYvpO6Jr+nzY4C5NqwQ8fVduFU8kmqWIJRrhy+jF5hYNPyS1wJ0lwPo9e5wY82SDo4SoAfpAtoyP+Rc1Yqke8qyEHidNCjNlLyy57khVVzuby2jD45M9ZKvAO8FJyZgOdGi1CYJf1mv310=
Received: from AS8PR07CA0037.eurprd07.prod.outlook.com (2603:10a6:20b:459::9)
 by AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.11; Fri, 11 Nov
 2022 11:24:21 +0000
Received: from AM7EUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:459:cafe::f) by AS8PR07CA0037.outlook.office365.com
 (2603:10a6:20b:459::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.14 via Frontend
 Transport; Fri, 11 Nov 2022 11:24:21 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT018.mail.protection.outlook.com (100.127.140.97) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5813.12 via Frontend Transport; Fri, 11 Nov 2022 11:24:21 +0000
Received: ("Tessian outbound f394866f3f2b:v130"); Fri, 11 Nov 2022 11:24:20 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3b0379833d1fc08b
X-CR-MTA-TID: 64aa7808
Received: from 9db0b0141ecd.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id E683D7FB-24C4-4599-80D9-BCCF3742A930.1;
	Fri, 11 Nov 2022 11:24:14 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9db0b0141ecd.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 11 Nov 2022 11:24:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXu6Y5INUYV4pxRHqzbHRWTPmjKHr81Jtgbsc8bOXgdAssMp2NZAiSbot3E3AgUiVPvVuOjYGv5O9j4G9t+TQEjYDFOfedQJUl4UUmUjRNuoQxNxZA4kIkaB4J45N/BM9IgzZ/b5/6ldtnFz00ezpxZ7zkLAvN64SWPA1Bo+z0A/5vehilO1RMctvEREMlS7hyWk+aJphFtzO32/hdu3wBWrWKZgL2i07BvDvd7ruPDqp1I6C1g0++11W3ECsgBQ53mzn43ABQMedSlm+BQxEzSIDiaDA5Q5S/XDz/BpfX3scIW8Wu5RmE5tJqN3IpsH8Et/tfn+ma5C3PRNFzq4IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5QI+Uv9bUKQmwhCoDjUPge2LiKBT1SoqUln4En3XCJk=;
 b=LXoXgA00mXHYFpIAz5M3/Gjq+AC6GYhhtsTm9wq5zgv0+3T35htk+a+LVR4KmSkJ2iina17LpGakO5zumWRlU/gJXhBCJKo20m7w4F882F2/jVgQxB6lR/R44wxThZCZXGkPaYMEy87+NSjLbFbO+IfNn0QCClM6MJs6MexlpU0DlkTlY2XRckglISCDFX2YLricIF3dHS1V0MNtSHAIB2J5++HgNx3nk4uKPd/4xbSicC0dgTaxT/nU2xAjTxUvNh63nk///0D5sKBkd39//oOY/Tb7+cFUjuGAY2hLiPqOouwES9bhk1e0sJx/4FTcUxnfffruam6eg/TZLkRUwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5QI+Uv9bUKQmwhCoDjUPge2LiKBT1SoqUln4En3XCJk=;
 b=ix8xJNuPvqGPuvdCuZ1GISaD0b6nXuYvpO6Jr+nzY4C5NqwQ8fVduFU8kmqWIJRrhy+jF5hYNPyS1wJ0lwPo9e5wY82SDo4SoAfpAtoyP+Rc1Yqke8qyEHidNCjNlLyy57khVVzuby2jD45M9ZKvAO8FJyZgOdGi1CYJf1mv310=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by GV1PR08MB8214.eurprd08.prod.outlook.com (2603:10a6:150:5d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Fri, 11 Nov
 2022 11:24:11 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::af9:29f:ae3b:108f]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::af9:29f:ae3b:108f%5]) with mapi id 15.20.5813.013; Fri, 11 Nov 2022
 11:24:11 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "maik.vermeulen@lightyear.one" <maik.vermeulen@lightyear.one>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Shell function not expanding variable
Thread-Topic: [yocto] Shell function not expanding variable
Thread-Index: AQHY9Re/Uu8xg9xVt0i4S3RBxnh6Fa45lgEA
Date: Fri, 11 Nov 2022 11:24:11 +0000
Message-ID: <DF724F9D-C6C2-4F89-9DBA-E09A83FA3266@arm.com>
References: 
 <CAKO9uzot11j-CarPaitPrJ4mSq9rqEQKP2QqW_go56EM+W93rQ@mail.gmail.com>
In-Reply-To: 
 <CAKO9uzot11j-CarPaitPrJ4mSq9rqEQKP2QqW_go56EM+W93rQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.200.110.1.12)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|GV1PR08MB8214:EE_|AM7EUR03FT018:EE_|AS4PR08MB7429:EE_
X-MS-Office365-Filtering-Correlation-Id: dbb2006b-cb65-4104-67ee-08dac3d74779
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 J6KTNSzS0+MtLlGx4H5fPiZ65QR/w3LG+tZmal79aGlIV/1s/dRd8jbcE6EXz3p66CeGEN3qG8IEyx/8tWZJtLiNAS2j6ynClJ9z5K22rJC3QifnCdGiht5Ozuevb6iKeKtrd9unAYgSHLZfjMn/xm0uQjeMMirlUaDRbW0BJRGtScDi02IVzX9Vqjy2Ei195CnWU0XZe1X83vHaUEDXCq4s3mST1CoOC54Mz6bhOor/qTo8D/2BQflD1DWB1kMqScTwv3iNhXJu/MmEfLf5a5y8J5MC3IWvVENpzLM2Vv4D4OxRFetSjFe1WJyImV4qZA7sD2VzbUYcCGIru/AY80gi1ujGCMpH+ZsSLyIx8xPoBGZ3acwT2XnOB6fZlU0WQoow70JRaJVB65/wmGFzf41IJ6l2Tl37ZL1uunOo5hdxJObUQ3lRetRsTMyjQxpVIYK3YIXTDZmL3N82KVawuO52oXxr4Hgemu1w+K6XP6V/6akFWh6fGYPD4kMLuaJ1aeXTxRT9cUUF/XOY1eVL9wKlz8zelxQeLEFJeP3wZgkaPtzIShgpUE2M2E4WW6D+uxkaOf1O69nPPZb7hdD4zrvS5/RWMdNtabEjKz0jFlpSsRAoONnv5MKId57/g7NHWk/97WOM0eBe2pULrBKH0H943JKFcSeA+MafE6o0mahQfSreEQQbXwsyRLqOL725j9ai1L8AxXZQ9DIY01zkVyws3gqKI2/0VTb9MTObVKy4lltaF9UTkFXWoMSftIIkXcQ8mJNqEkdX05anGX9lnmvjJmwNVd4+PLSdz/C4Kv1j9wcEBu3t8zFlrtRxO2glGn2EnMoEHuovIMfOPHu0Og==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(451199015)(38100700002)(38070700005)(122000001)(4326008)(6916009)(86362001)(33656002)(66556008)(91956017)(64756008)(66476007)(66946007)(66446008)(76116006)(71200400001)(8676002)(316002)(5660300002)(41300700001)(2906002)(36756003)(83380400001)(966005)(8936002)(53546011)(478600001)(186003)(6486002)(6512007)(2616005)(26005)(6506007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <469E3C4FBAC3454DAE7AB952C548CFF7@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB8214
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	511bc66c-e8df-4653-c764-08dac3d7419c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wyn6RXSZGz49KbAL0uUxj3e+o4/Pqqm1nCPiHCphVYVK9W1EN7HV87yqI0eqvH1QTE4H/2dTnQq6mkJHCwBCsv0gW6ouFjhaqitbh+po4XGsTg6MmxUqkpGrhLhySdKksbhiYZktD8O67Od3WJu8MByjEZY0829WZfjqGoX783RVqfXf++QhTRnnR1FJdQjSUdfL6So2i511gsYyxTN8p8W8q9JbPAUXkvYRGOE5bYqJOUnBLrJ6yGqo0dhyDT3rSmEV6XOWnmxqWTXPNLF5W38nNu6QTWKJMfqQMLbXH3TxYifzaO3pC/nuLaA1Cdg8bvj8MRZ/lgtxqPqAxsK25iUQgFJj1uQ+sbmMCj365jo6FQTe//IpscyJl6lbiR3etdDBZXBHco6e05MVesBxArc3xA9uQ2RgH2GvwI8iRpVh7xJUdF/89VoGaBFrep668Y7s8JjlDoXrLW+E1fpW9NKsbo3z2pmGOcZgSl1Zw1x6PPs34SzQmc2zmhjz2dWnI2IlueM21odGE1xeBpYXzZmpQ6w9NSEamSxdu0X1EtThQktcMOw53yeh7rfzjFwvP8WJSBxP3UPcw5xg+6gD8IXsSavKqopH2CA4WLld/bpnILju9N4eDsI7zjE0chwoVGd0JXSmG92kTvMsCYXtJWWeKz1WCWeUDZfuQvqMCqXvKchh9Gnnv4Yb9JDfGWPyEGN74JCiY9RHdGp8Jfs8wZpvhwdFVJ4rmE0Ycuiu1sdk6KePjlc+wuFffXhV+h3doX2eNsh+WNxCFogoO5vrPZZ4ifKeN2yTTNIQ7teKf9l4/C7ClCr0z4acQnXJ5/0i
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(39860400002)(136003)(376002)(346002)(451199015)(36840700001)(40470700004)(46966006)(36860700001)(26005)(2906002)(82310400005)(40460700003)(86362001)(8936002)(6486002)(82740400003)(966005)(478600001)(81166007)(5660300002)(6862004)(6506007)(70206006)(316002)(8676002)(4326008)(83380400001)(41300700001)(2616005)(70586007)(47076005)(186003)(336012)(6512007)(356005)(33656002)(40480700001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2022 11:24:21.0401
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dbb2006b-cb65-4104-67ee-08dac3d74779
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS4PR08MB7429
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Nov 2022 11:24:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58542

T24gMTAgTm92IDIwMjIsIGF0IDE1OjE4LCBNYWlrIFZlcm1ldWxlbiB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8bWFpay52ZXJtZXVsZW49bGlnaHR5ZWFyLm9uZUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gDQo+IEhpLA0KPiANCj4gV2UgaGF2ZSBhIHNoZWxsIGZ1bmN0aW9u
IHRoYXQncyBiZWluZyBjYWxsZWQgZnJvbSBhIGRvX2luc3RhbGwgdGFzazoNCj4gY3VzdG9tX2lu
c3RhbGwoKSB7DQo+ICAgICBESVI9JDENCj4gICAgIGVjaG8gIk9wZXJhdGluZyBvbiAnJHtESVJ9
JyINCj4gDQo+ICAgICBpbnN0YWxsIDxzb21lIHBhcmFtcz4gLW0gMDY0NCAke1N9LyRESVIvPHNv
bWUgZmlsZT4gXA0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJHtEfSR7c29tZV9wYXRofS88c29tZV9maWxlPg0KPiB9DQo+IA0KPiBkb19p
bnN0YWxsKCkgew0KPiAgICAgY3VzdG9tX2luc3RhbGwgImRldiINCj4gfQ0KPiANCj4gVGhlIG91
dHB1dCBvZiB0aGUgYWJvdmUgaXM6DQo+IE9wZXJhdGluZyBvbiAnZGV2Jw0KPiANCj4gZXhpdCAx
IGZyb20gJ2luc3RhbGwgPHNvbWUgcGFyYW1zPiAtbSAwNjQ0IDxyZWNpcGUgcGF0aD4vMS4wLXIw
LzxleHBhbmRlZCBTIGZvbGRlcj4vJHtESVJ9Lzxzb21lIGZpbGU+DQo+IDxyZWNpcGUgcGF0aD4v
aW1hZ2UvPHNvbWVfcGF0aD4vPHNvbWVfZmlsZT4nDQo+IA0KPiBXaHkgaXMgJHtESVJ9IGV4cGFu
ZGVkIGluc2lkZSB0aGUgZWNobywgYnV0IG5vdCBpbiB0aGUgaW5zdGFsbCBjb21tYW5kPyBJIGFs
c28gdHJpZWQgd2l0aCBhbmQgd2l0aG91dCBxdW90ZXMsIGFuZCB3aXRoIGFuZCB3aXRob3V0IGN1
cmx5IGJyYWNlcy4uDQo+IFdlIGFyZSBvbiBwb2t5IHN1bW8uDQoNCkZpcnN0LCBTdW1vIHdhcyBs
YXN0IHVwZGF0ZWQgaW4gMjAxOSBhbmQgaXMgdmVyeSBkZWFkLCBwbGVhc2UgbW92ZSB0byBhIHN1
cHBvcnRlZCByZWxlYXNlOiBodHRwczovL3dpa2kueW9jdG9wcm9qZWN0Lm9yZy93aWtpL1JlbGVh
c2VzDQoNCknigJltIG5vdCBjb252aW5jZWQgdGhhdCB5b3VyIHNoZWxsIGV4YW1wbGUgYW5kIHRo
ZSBlcnJvciBtZXNzYWdlIG1hdGNoIGV4YWN0bHk6IHRoZSBlcnJvciBzYXlzICR7RElSfSBidXQg
c2ggd291bGQgaGF2ZSBleHBhbmRlZCB0aGF0IHRvIGVpdGhlciB0aGUgdmFsdWUsIG9yIHRoZSBl
bXB0eSBzdHJpbmcuDQoNClRoZSBwcm9ibGVtIGlzIG1vc3QgbGlrZWx5IHRoYXQgeW914oCZcmUg
dXNpbmcgc2luZ2xlIHF1b3RlcyB3aGVuIHlvdSBzaG91bGRuJ3QuICBUaGVzZSBkaXNhYmxlIGV4
cGFuc2lvbjoNCg0KJCBGT089NDINCiQgZWNobyAkRk9PDQo0Mg0KJCBlY2hvICIkRk9PIg0KNDIN
CiQgZWNobyAnJEZPTycNCiRGT08NCg0KQWxzbyBub3RlIHRoYXQgYmVjYXVzZSBiaXRiYWtl4oCZ
cyBwYXJzZSBhbmQgdGhlbiBzaOKAmXMgcGFyc2UgY2FuIGJvdGggdXNlICR7Rk9PfSBmb3IgdmFy
aWFibGUgZXhwYW5zaW9uLCBpdOKAmXMgY29udmVudGlvbiB0byB1c2UgJHtGT099IGZvciAqYml0
YmFrZSogdmFyaWFibGVzIGFuZCB0aGVuIGp1c3QgJEZPTyBmb3Igc2ggdmFyaWFibGVzLCBhcyBi
aXRiYWtlIG9ubHkgZXhwYW5kcyAke0ZPT30gYnV0IHNoIHdpbGwgZXhwYW5kIGJvdGggJHtGT099
IGFuZCAkRk9PLiAgSWYgeW91IGRvICR7Rk9PfSBhbmQgYml0YmFrZSBkb2VzbuKAmXQga25vdyB0
aGUgdmFyaWFibGUsIGl0IGRvZXNu4oCZdCBnZXQgcmVwbGFjZWQgd2l0aCB0aGUgZW1wdHkgc3Ry
aW5nIChjb250cmFyeSB0byBzaCBiZWhhdmlvdXIpIHNvIHRoYXQgc2ggY2FuIGhhdmUgYSBnby4N
Cg0KUm9zcw==

