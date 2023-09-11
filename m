Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F342EE57DF
	for <webhook@archiver.kernel.org>; Mon, 11 Sep 2023 08:05:38 +0000 (UTC)
Received: from EUR02-VI1-obe.outbound.protection.outlook.com (EUR02-VI1-obe.outbound.protection.outlook.com [40.107.241.84])
 by mx.groups.io with SMTP id smtpd.web10.53675.1694419531675181410
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Sep 2023 01:05:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=wJ+rzbE9;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=wJ+rzbE9;
 spf=pass (domain: arm.com, ip: 40.107.241.84, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZvKKID8R2cF1YSQ27GcFU6nqSn2gupKixTByjRdFGw=;
 b=wJ+rzbE9pyLNWEJS4CX9NysqqoTJZqnkkWG0dtRiRAp1vaNKyw+vx/IROzGKg88i3OvD/uuMkcEKALDtICqcCYwwfbzDoXVoI8N0s4+d2gqpZKjd/0lsTcd+1wzOoZTjINgXO/0kZdEDGYSjYurOhg+/C932ifA13icfOKZzFiU=
Received: from DUZPR01CA0151.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4bd::13) by AS8PR08MB9867.eurprd08.prod.outlook.com
 (2603:10a6:20b:5ab::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 08:05:27 +0000
Received: from DBAEUR03FT042.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:4bd:cafe::a0) by DUZPR01CA0151.outlook.office365.com
 (2603:10a6:10:4bd::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.35 via Frontend
 Transport; Mon, 11 Sep 2023 08:05:27 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT042.mail.protection.outlook.com (100.127.142.143) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.11 via Frontend Transport; Mon, 11 Sep 2023 08:05:26 +0000
Received: ("Tessian outbound b5a0f4347031:v175"); Mon, 11 Sep 2023 08:05:26 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e244a5999b2713a8
X-CR-MTA-TID: 64aa7808
Received: from 9f8984ad3d0c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 806D6FFB-B3C5-482E-ACE0-3536D85D8C56.1;
	Mon, 11 Sep 2023 08:05:20 +0000
Received: from EUR02-AM0-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9f8984ad3d0c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 11 Sep 2023 08:05:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkjZ7buFMOLpa73XtZL0lbv0CUVWehb4sD5XG9bxzoqwbHwtAfnrF1DLo7NYBeU4hZlQjmkNhouglFNkc4EBFDmTWBVmzpdsaJWg50L54XF/7nYfwnRbPdApU3+aRdzI32PKq0ZiRdnH+s03/eef9BpXO98/dN4oo0xcvzEIWzS1XbZBQJk6MVBepZoB/dCi81jTQ4RkGbIolXebTOuonATJgi8gEkquBnIno+nPDmHf6osfeJFvJ6t1ppByqqoKQN+rn7ycgyG9yGxx1u4v6HZI3TBHQOvmFWD/KA1hfUnIdRz/U4X8z2MbRP+sUcKV5KK9gJgBKencGB/1P3UH/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PZvKKID8R2cF1YSQ27GcFU6nqSn2gupKixTByjRdFGw=;
 b=Eya6fY9wJHpKgJv60l3XY/dATETNMicG/+AJ7MOUF8Sfz9Ahfqpe8QkBziXkzjvlOCk8hYNbqbKIx0nQ20COUKwJL7fyhQBr2Pa3ImLylR3tMojVeaoMBq9dtec/A7DiXVCPA1JFukAUtPHYH6Sbe30A3RyfGt38ap02xMdubUfOETvr0QZFc2mb74o9JVMeaKlX8NRT/WeIVyNYFQvdN6fHmPA9X4ZIfk1Ff/alZ5jenJAtXsQ0Sq537Q+RVxMl8zQif3NK8loXblOsls6GzRdjUzMErJ0+TzZuf6Omwx3bhRIAVFjMVjKiQIFiXDdYhQ+Up75aCW1cu9Ib4nRFtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PZvKKID8R2cF1YSQ27GcFU6nqSn2gupKixTByjRdFGw=;
 b=wJ+rzbE9pyLNWEJS4CX9NysqqoTJZqnkkWG0dtRiRAp1vaNKyw+vx/IROzGKg88i3OvD/uuMkcEKALDtICqcCYwwfbzDoXVoI8N0s4+d2gqpZKjd/0lsTcd+1wzOoZTjINgXO/0kZdEDGYSjYurOhg+/C932ifA13icfOKZzFiU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB9733.eurprd08.prod.outlook.com (2603:10a6:102:2e6::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Mon, 11 Sep
 2023 08:05:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 08:05:19 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "Qi.Chen@windriver.com" <Qi.Chen@windriver.com>
CC: "me@linux.beauty" <me@linux.beauty>, yocto <yocto@lists.yoctoproject.org>,
	yoctohelp <yocto+help@lists.yoctoproject.org>
Subject: Re: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
Thread-Topic: [yocto] Question: Sharing SSTATE_DIR and DL_DIR through
 Lustre/NFS for team work
Thread-Index: AQHZ5FIutXjTNFVK4Uiw6MYtc47oCLAVBpYAgAA+IQA=
Date: Mon, 11 Sep 2023 08:05:19 +0000
Message-ID: <288AFEA0-E521-48A5-9793-B83003F810A0@arm.com>
References: <18a81ed8796.114a3273a387212.4468069863803228583@linux.beauty>
 <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
In-Reply-To: <c4eeb346-6cfb-2bf3-6db4-1402d595e09b@windriver.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB9733:EE_|DBAEUR03FT042:EE_|AS8PR08MB9867:EE_
X-MS-Office365-Filtering-Correlation-Id: 9b1794a8-3acd-4efe-226d-08dbb29ddbc1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 bTeWJOhAaXTsGYjQL1lTmGf55jGtJSVwAMshgQk+S+Zx2q4FOTN49IAJMp8BFCitux/0gttSqMzJtpOdfC3FurzRi/p2D6Odx/Lrw+SX0jbdCHbluzq7evjekk9J+npnAXnv2vcrhXaGMfOXf3P0338UsK0YfjxUj1rwj+DCrDXAQ1vDxEZOTuDl/e2biRvNyyTy3npNZ/HITs8DxR+GghnOt1v0DhJoJMmUiMKkTQXHRAKWgJ5+cp1Kek63aS7+dcASvhWkEKGez+vTPrtpIIjakGXsGJNv37UVKhjlvXGade083VOtHE2eRJ+74APsxqHrTBxY2WCMLjFg8x7EfkJ5kqbL5d0yQe6d6w+lZbUbllst4Vw3Ocyepzh/qtC64vNcLxPD7AfSpZCBhFYunTezGyl2zpmGzDks8Z7PqCw/rm+IGs1EHp3GD8uouag3F2zniMORZxfldRBUgdpqd+k/HoMWlSBMlA1CVxBCGBaA+AY7eo6djzUT0N5Dr5ej64Tg63Hdj3UKHKctv8NPFhdi7Lc1/DR0oCQxMzi9gjPw0kZuY3Gnohez9goATzMHiSBGlmKjUmvG8VO7LQj5iAV73s5W3RCrihNmeX7tgQZkZ9GIGnC0FwMjlS9xt7kSmJ0be/aplIz6gv+PfDeImzUaddFEc2XaUGNkoTk/r8w=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(39860400002)(366004)(376002)(396003)(346002)(1800799009)(186009)(451199024)(53546011)(6506007)(6486002)(6512007)(71200400001)(83380400001)(122000001)(86362001)(38100700002)(33656002)(38070700005)(36756003)(2616005)(26005)(76116006)(66946007)(4744005)(66476007)(66446008)(66556008)(64756008)(54906003)(91956017)(6916009)(316002)(41300700001)(2906002)(8936002)(8676002)(4326008)(478600001)(5660300002)(13693001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <743DA9DB722DFA4FA02F3C644B726C2B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB9733
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT042.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	90adc69c-2d4a-4e28-07af-08dbb29dd711
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	sM3eucuteAvSEswKsdf290yGON85i3twJsd6NDk+FyNQ6ap2AxxIyXILmt9EMf8oi6q6UY+fLyqVOjmcP+MUTcS4V2uhVv/mBZSpzcfAQ/2m318hquUZRK4NZg/fAwBH35Z1R/TmHvihym1aSHE1xHZ7FSo+w3HARunGvVSJ6qkm8nXfcL9JcGXOO6qFr933Gw1ScXvbjcJluMH92yIix4bb2VFAdHwEHjDifmvvc2F7bAtYM3/hlq+3AKFkpv6oKYuv/T9HIySfxkLC/XVup9WCBhly0h+8r83gBryf+zK9TGV5DPWA8VA4iFt0Ac37nVpMf5qgZ9EFjtgb9u511lgcNw/LM/ylmnoHCN5mktL4TA5ZGhUZwYcfD1l4eCl9RopyFWtF+K8ui8b37vp2JsOLFahsAoSrDjz29F/SZkaVC8zorMZSjmb5kHjSAvnlZ+5VI2vc8TWHyJR0E3xsImz/me6l48/46RZ/jqkCH/BtFESKzJGZ3FXmDONhlfb+01jhNd5YdM6MY7+oQyhVujf1ShhwBgrvE9Y7Ou2KWe7ifbyPd4uTvRCNBsZYbUX/L/kDJ/RJglL5sC72WhcvQMfLC7yybe7iaZoff0egUQPKmsAFblKDh1NWSeguTOMo+Nqcu7YWq/Jb4imF+OqDAf0CiJ538wFIRZG+6hyVIq1EOXnzxBiPKIGHB9WtWb1n3Fz0Y575R6ItkPT8sOLbEdgmnKLhmFbfEwu0vkF9R5K2TVOZF619SvJE6v1W+gJUZXqKwQCzLX6DxqSgOnBBDg==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(39860400002)(346002)(136003)(396003)(82310400011)(1800799009)(451199024)(186009)(36840700001)(40470700004)(46966006)(356005)(81166007)(82740400003)(36756003)(33656002)(40480700001)(86362001)(40460700003)(478600001)(6512007)(53546011)(4326008)(5660300002)(6862004)(6506007)(6486002)(8676002)(8936002)(54906003)(450100002)(70586007)(41300700001)(70206006)(2906002)(316002)(4744005)(83380400001)(47076005)(36860700001)(2616005)(26005)(336012)(13693001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Sep 2023 08:05:26.9534
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b1794a8-3acd-4efe-226d-08dbb29ddbc1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT042.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9867
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Sep 2023 08:05:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60967

T24gMTEgU2VwIDIwMjMsIGF0IDA1OjIyLCBDaGVuIFFpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnIDxRaS5DaGVuPXdpbmRyaXZlci5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6
DQo+IA0KPiBTU1RBVEVfRElSIGFuZCBETF9ESVIgYXJlIHdyaXRhYmxlLiBTaGFyaW5nIHRoZW0g
YW1vbmcgZGlmZmVyZW50IGJ1aWxkcyBvd25lZC9jb250cm9sbGVkIGJ5IHRoZSBzYW1lIHVzZXIg
aXMgT0ssIGJ1dCBzaGFyaW5nIHRoZXNlIHdyaXRhYmxlIGRpcmVjdG9yaWVzIGFtb25nIGRpZmZl
cmVudCB1c2VycyBkb2VzIG5vdCBzZWVtIHRvIGJlIGEgZ29vZCBpZGVhLg0KPiBZb3UgY291bGQg
Y29uc2lkZXIgdXNpbmcgdGhlIFBSRU1JUlJPUlMgYW5kIFNTVEFURV9NSVJST1JTLg0KDQpJZiB5
b3UgaGF2ZSBncm91cC1zdGlja3kgYml0cyBvbiB0aGUgcGFyZW50IGRpcmVjdG9yaWVzIGFuZCBh
IHNoYXJlZCBncm91cCB0aGF0IGFsbCB0aGUgdXNlcnMgYXJlIG1lbWJlcnMgb2YgdGhlbiB5b3Ug
Y2FuIHNoYXJlIHNzdGF0ZSBhbmQgZGxkaXIgYmV0d2VlbiBkaWZmZXJlbnQgdXNlcnMuDQoNClRo
YXTigJlzIHRoZSB0aGVvcnksIGF0IGxlYXN0LiAgVGhlIGxhc3QgdGltZSBJIHRyaWVkIHRoaXMg
aW4gcHJvZHVjdGlvbiB0aGVyZSB3YXMgYSBidWcgaW4gc3N0YXRlIHdyaXRpbmcgd2hlcmUgdGhl
IHBlcm1pc3Npb25zIHdvdWxkIGJlIGluY29ycmVjdGx5IGNoYW5nZWQsIGJ1dCBJIGNvdWxkbuKA
mXQgcmVwbGljYXRlIHdpdGggbWFzdGVyIHNvIHBvc3NpYmx5IHRoaXMgaGFzIGJlZW4gZml4ZWQu
DQoNCk5GUyBpcyBrbm93biB0byB3b3JrIGZpbmUgKHRoZSBhdXRvYnVpbGRlciB1c2VzIGEgTkZT
IG1vdW50IGZvciBzc3RhdGUvZGxkaXIgYWNyb3NzIHRlbnMgb2YgYnVpbGRlcnMpLCBhbmQgcGVv
cGxlIGhhdmUgcmVwb3J0ZWQgdGhhdCBDZXBoZnMgd29ya3Mgd2VsbCB0b28uICBJ4oCZbSBub3Qg
YXdhcmUgb2YgYW55b25lIHVzaW5nIEx1c3RyZS4NCg0KUm9zcw==

