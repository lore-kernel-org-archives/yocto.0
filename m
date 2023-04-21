Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD6FC77B75
	for <webhook@archiver.kernel.org>; Fri, 21 Apr 2023 12:00:41 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.54])
 by mx.groups.io with SMTP id smtpd.web11.9631.1682078430577748418
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Apr 2023 05:00:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=3LW6Bdy8;
 spf=pass (domain: arm.com, ip: 40.107.7.54, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wK0RZSnXrJY3Cey5Ow9aqm7Izc/sqw9bJblOueE6EBA=;
 b=3LW6Bdy8IFlVuKaHk9zqBny0Fanp2I092KDsBTp8cCt9C+O1QjlALFRETzkGcE9W9zEeaje3JEZRafQeGtc5Lkm5fsPunTtZdJ9E/bGToRElvpq43N9F+PL8IJMsqJGPdxQVqfRo7z4Yz9t7UPyrjDnHOw/9b8JLx3HfjZ+FGAo=
Received: from DB8PR06CA0017.eurprd06.prod.outlook.com (2603:10a6:10:100::30)
 by PAVPR08MB9458.eurprd08.prod.outlook.com (2603:10a6:102:318::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 12:00:23 +0000
Received: from DBAEUR03FT063.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:100:cafe::6b) by DB8PR06CA0017.outlook.office365.com
 (2603:10a6:10:100::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.24 via Frontend
 Transport; Fri, 21 Apr 2023 12:00:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT063.mail.protection.outlook.com (100.127.142.255) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.25 via Frontend Transport; Fri, 21 Apr 2023 12:00:23 +0000
Received: ("Tessian outbound 8b05220b4215:v136"); Fri, 21 Apr 2023 12:00:23 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 84ed6d9c390e37d6
X-CR-MTA-TID: 64aa7808
Received: from 478006ddbb9a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 1A5CF677-2093-43CB-B4DD-DE3676708F8B.1;
	Fri, 21 Apr 2023 12:00:16 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 478006ddbb9a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 21 Apr 2023 12:00:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CysUTJtQlYvIcZTu6JbB9iTbYpJ8ckNZg5kFtTeLn7C0uK6BzyUz82Nz/WtN5k1mfHhLq51povgI2oKPSdNdIsCCZKEFrXGo3T54XpWXNccx67WrnONqA08BaIaEuRF/wKu4Q/xNpFAE9W5yIz4XdLL1cmg+HzLUS5Hkbpbdc7GDBa+phWkL8JIf1IEqnmGjonO2ZrKZbqGcvsdEf1Ag8j1pNZ62495wTPNPcC1vQZfT3JeTKUvf3AANpzI9M1O9igUW2DLgu6Dh7Jr4g7uMT0zjQwt1Zrvq6t82zq2pA9Tgr4Mjhumd5IO/84OdABav9PR1xr7xIqN2kAj3JKiPiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wK0RZSnXrJY3Cey5Ow9aqm7Izc/sqw9bJblOueE6EBA=;
 b=c4BzM9NGTlld35hm5VMY8jDmizazKPLk3S5RYNIbZZ1kihXgrj+MIWh9R0uuh/10FCBLWwiQGh1jL1OgHCryuqNwGfYNMdYsx49CRhaeVZUSu2ZWAa3Lp5egV+BYdiqdS1CCyPRdbd6unC+GvbDphU7S5vFqtKvekpDjf9IpLdrnFVkNJL4/6p/aXpXm6yEHxDp5TPkRz0yhVwBFgJgCDJkuABMCTD5llGvF0ttdN7N5Dfyxns/58iziBkftRe8ulEVwqmPxAOXQNaoWemcfPb+G1Z2HZy6xA+QcwpA7+ZJAiu0P7/4LiS4S+AWHoeDNckNLKlMadi5ClE6CmmiF3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wK0RZSnXrJY3Cey5Ow9aqm7Izc/sqw9bJblOueE6EBA=;
 b=3LW6Bdy8IFlVuKaHk9zqBny0Fanp2I092KDsBTp8cCt9C+O1QjlALFRETzkGcE9W9zEeaje3JEZRafQeGtc5Lkm5fsPunTtZdJ9E/bGToRElvpq43N9F+PL8IJMsqJGPdxQVqfRo7z4Yz9t7UPyrjDnHOw/9b8JLx3HfjZ+FGAo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS1PR08MB7660.eurprd08.prod.outlook.com (2603:10a6:20b:47b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.21; Fri, 21 Apr
 2023 12:00:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%5]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 12:00:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "daniel-s-mendes@alticelabs.com" <daniel-s-mendes@alticelabs.com>
CC: "main@lists.yoctoproject.org" <main@lists.yoctoproject.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] SFTP protocol supported by curl
Thread-Topic: [yocto] SFTP protocol supported by curl
Thread-Index: AQHZdEY+0NM0p2dRTkKAwhCJTwc26a81qQ+A
Date: Fri, 21 Apr 2023 12:00:14 +0000
Message-ID: <0DDC2F65-2DD2-44AF-968D-E5C608EC2CC9@arm.com>
References: 
 <AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609@AM0PR06MB3940.eurprd06.prod.outlook.com>
In-Reply-To: 
 <AM0PR06MB3940FA3D73CA5E5ED4CD2EC7D3609@AM0PR06MB3940.eurprd06.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS1PR08MB7660:EE_|DBAEUR03FT063:EE_|PAVPR08MB9458:EE_
X-MS-Office365-Filtering-Correlation-Id: f679a70e-806b-4837-510f-08db425ffcc4
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 4pEBUvLS3jLOdg6EDgO9OL/avH2+FPHo74PhkVFyiFJqn6F0CtW+cZr+SSd3NNrt3HNcA2pdY5rXRgA1PvxE/kjrJxVoCh48k5liz7wGA2mQNVLMdB3iO4Wvbpq1GaYS14L6Ls4Ijq6z8Xk3dwmQ+fimv4oaKWp1hOVYZepVJGh87rKv2qZCkpnCUU4ENhZBTyOaIkwwJNv6rmsrpoE64Ox2DmUVgimtGvQuFNswWa8QnNvvBLFMHK63B/IFJjNOhgjMseQTUqTOC0cSlrbMeVFzxFqlCjodCkibLk5y+714f36gU51azswHWiD+04ZExqVBhWEa7uOIuaYURT/01jaCf041oGVgcc0o0V+SKCDC+BZzkKzxjaAe4iAEkP4cFwqfF2hHH/yUcwDP+7IcJhywgp0W0Y6Ahch9SjKogsRidBJb8++vdLrDhot44VdrnDBN+OATpvIbqLTpC+2DZj7K91X4JTQFvNo42QQqlsDCPjYdnDZTcKmDsW/lJu2LnSHx9sDlQpRpyf6ymoP09u+G60Stp/RKKcvSGWxXk7UaHE9FMpcdYdpQB3c40DNmecLyPoaiC7+x6pqcj5ERkN9Nt6Wpu9cZaZj8ARryXvg0f8luZD0C8BBmR/Ar6xbwzH6v6eNms/B4QtjoVo8EIA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(376002)(346002)(396003)(366004)(136003)(451199021)(2616005)(33656002)(83380400001)(36756003)(5660300002)(38070700005)(38100700002)(53546011)(8936002)(8676002)(2906002)(478600001)(4744005)(6486002)(54906003)(71200400001)(6512007)(4326008)(6506007)(6916009)(26005)(41300700001)(122000001)(76116006)(66556008)(64756008)(66446008)(66946007)(66476007)(91956017)(86362001)(316002)(186003)(966005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EECE389B75694F46845E496A77F9542D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR08MB7660
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT063.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ce53f88b-727b-4039-ae24-08db425ff753
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WzjXLXMf/eWLf38SxN0QSuXDbTKPoY9ASEBEt/18RHb9TLKVia37Qp+MmmXtlSC4PE9aUPoyQUG31agWrDms7RXl4XOvRK1VHrOw/T1Raqw9iKSTu82Vq1tzugmX6+rQGqYGsYyylu59cBI49k7RmLYkgSsxtzVobWIZckAzkOWtBQJNW1I35s8jzTO8aSRKwNg1fzp26iAVUkZWR2gcXSKt0kx85KJRONTuKfRQz654hJE+TxVbM8JdPvKf2hR161uXxuaKItStEQRRxiOjpIaVZJraWaPz/ByrUM4perCLXvO/vDPm3QkL8xIyMnMNukjfmQvordUo3LZe78xkSFOaIbN1NztUJ6B/2aplC0VbG2UzAn/7P2rXv/zSdYT+CVKc8Bqm/c6JTVNvBFX4Q60EKpm7o4Mvjq00JE17m529u3kle/rdLuE6svXoA5lV9JUC5npkC4NUG1GcBgrwudM0xkQTfYTIZCErx08GqX/EMLmwtYduc5NT/X2MK2zpcjpRjh3XzygQ3ewDQP8KZrrPUeIVmJDMNt7DRvtCk6xLw1idyqKLheZ0xmwpvKPK/AQfFMtKnqICxBG3esp/P13k0ZpzT1DVtYanQUeWcSyVIEH05QLdmQB5k5RwqVwX52dPVarEHd3vIg0KNXpHr1nhdWmgShQLlgI+ibi8GibI99FOCUpO1wk3c0uBU5Gt
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(39860400002)(376002)(136003)(396003)(451199021)(46966006)(40470700004)(36840700001)(966005)(316002)(70206006)(450100002)(70586007)(40460700003)(4326008)(86362001)(478600001)(82310400005)(40480700001)(6486002)(6862004)(5660300002)(36756003)(2616005)(8676002)(8936002)(81166007)(356005)(82740400003)(2906002)(83380400001)(47076005)(54906003)(336012)(41300700001)(36860700001)(33656002)(6512007)(6506007)(26005)(186003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 12:00:23.2951
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f679a70e-806b-4837-510f-08db425ffcc4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT063.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAVPR08MB9458
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Apr 2023 12:00:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59753

DQoNCj4gT24gMjEgQXByIDIwMjMsIGF0IDEyOjQyLCBEYW5pZWwgU2VjYSBNZW5kZXMgdmlhIGxp
c3RzLnlvY3RvcHJvamVjdC5vcmcgPGRhbmllbC1zLW1lbmRlcz1hbHRpY2VsYWJzLmNvbUBsaXN0
cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEhlbGxvLCBjb21tdW5pdHksDQo+IA0K
PiBJJ3ZlIGRldmVsb3BpbmcgYW4gYXBwbGljYXRpb24gdGhhdCB1c2VzIGN1cmwgdXNpbmcgU0ZU
UCB0byB0cmFuc2ZlciBkYXRhLiBUaGUgZmlyc3QgdGltZSBJIGNyb3NzLWNvbXBpbGVkIG15IGFw
cGxpY2F0aW9uIGFuZCBhbmQgdGVzdGVkIGl0LCBpdCB3b3VsZA0KPiBwcmludCB0aGlzIG1lc3Nh
Z2U6ICJQcm90b2NvbCBzZnRwIG5vdCBzdXBwb3J0ZWQgb3IgZGlzYWJsZWQgaW4gbGliY3VybCIu
DQo+IFRoZSBzb2x1dGlvbiB1c2VkIHdhcyB0byBhZGQgdGhlIGxpYnNzaDIgcGFyYW1ldGVyIGlu
IHRoZSBjdXJsIHJlY2lwZSBieSBjaGFuZ2luZyB0aGUgbGluZToNCj4gICAgIERFUEVORFMgPSAi
emxpYiBnbnV0bHMiDQo+IFRvIHRoaXM6DQo+ICAgICBERVBFTkRTID0gInpsaWIgZ251dGxzIGxp
YnNzaDIiDQo+IA0KPiANCj4gSSBjYW4ndCBmaW5kIGFueSByZWNlbnQgcG9zdHMgb24gdGhpcyB0
b3BpYyBpbiB0aGUgY29tbXVuaXR5LiBJcyB0aGVyZSBhIG1vcmUgZWZmZWN0aXZlL2JldHRlciBz
b2x1dGlvbj8gRG9lcyBhbnlvbmUgaGF2ZSBhIGRpZmZlcmVudCBzb2x1dGlvbj8NCg0KVGhlIGN1
cmwgcmVjaXBlIGhhcyBhIFBBQ0tBR0VDT05GSUcgZm9yIGxpYnNzaDI6DQoNClBBQ0tBR0VDT05G
SUdbbGlic3NoMl0gPSAiLS13aXRoLWxpYnNzaDIsLS13aXRob3V0LWxpYnNzaDIsbGlic3NoMuKA
nQ0KDQpTbyB0aGUgaWRpb21hdGljIHdheSB3b3VsZCBiZSB0byBlbmFibGUgdGhlIGxpYnNzaDIg
UEFDS0FHRUNPTkZJRyBmb3IgY3VybC4gIFRoaXMgaXMgY292ZXJlZCBpbiB0aGUgZG9jdW1lbnRh
dGlvbjogaHR0cHM6Ly9kb2NzLnlvY3RvcHJvamVjdC5vcmcvcmVmLW1hbnVhbC92YXJpYWJsZXMu
aHRtbD8jdGVybS1QQUNLQUdFQ09ORklHDQoNClJvc3M=

