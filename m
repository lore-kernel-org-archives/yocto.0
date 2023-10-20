Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E18DCDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 15:40:49 +0000 (UTC)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (EUR01-HE1-obe.outbound.protection.outlook.com [40.107.13.51])
 by mx.groups.io with SMTP id smtpd.web10.57548.1697816444508857834
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 08:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jM4ptFYP;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jM4ptFYP;
 spf=pass (domain: arm.com, ip: 40.107.13.51, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6bMzlgH/QxM1GWSCFvRSgwXXfLb6Kc/n85mNkQWDqg=;
 b=jM4ptFYP9nGM+T5QvWYlMihPQPcaEgpRQjoPJTmpdm7ouHnU3tAbJToV7OkTdpTbssL38llkZBg6uKEsh9CjRxpfGM1X0g6dZQz9bSGgqJqCfU17Pp/MiR/1LsUU4DJKD4OCmOUxCuWNH9/Gh8lAkXuqgr6KLjuUXZcJnl1WXS8=
Received: from DB8PR06CA0022.eurprd06.prod.outlook.com (2603:10a6:10:100::35)
 by AS8PR08MB6613.eurprd08.prod.outlook.com (2603:10a6:20b:339::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26; Fri, 20 Oct
 2023 15:40:40 +0000
Received: from DU6PEPF0000B61E.eurprd02.prod.outlook.com
 (2603:10a6:10:100:cafe::dc) by DB8PR06CA0022.outlook.office365.com
 (2603:10a6:10:100::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.26 via Frontend
 Transport; Fri, 20 Oct 2023 15:40:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF0000B61E.mail.protection.outlook.com (10.167.8.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.24 via Frontend Transport; Fri, 20 Oct 2023 15:40:40 +0000
Received: ("Tessian outbound d9a8e74be042:v215"); Fri, 20 Oct 2023 15:40:40 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ec386080dd882290
X-CR-MTA-TID: 64aa7808
Received: from b25294df8eea.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 2F6B4E3A-0A7E-457E-9E9D-0CABC4EED76A.1;
	Fri, 20 Oct 2023 15:40:33 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id b25294df8eea.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 20 Oct 2023 15:40:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HhV+OmswJXiYmGXjhnuH1usgc/m4RTbnvMeU/BkpzJLrcmjVEjtTBU2U3srFUaLwYbYAuobziXYIq/gmuUp+5NqHbk5gN5ffNXKptS4ewes6dMlTToTfA2/nMEgZPrxO6+MJIhMh8INgreA6Ssebrw+gK89QOBJmjCWPjMt5hcPpkBwVTr9JM3xWo2bk9DydhIQK9T3AEmuasC76miOZUgF+1IXhL2R7F11JmZb+Od4vKGAZ3vaXAxFgSVf1AbMj+dGpBQv+Ta3dqUbNe2L7Q+vQF/Fu8PX6mpJRUXMmqQESteSVIlBK1HWzIpLzjZxmQDpxhA4IghdJgjeXTcYsuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m6bMzlgH/QxM1GWSCFvRSgwXXfLb6Kc/n85mNkQWDqg=;
 b=c9E1KpmJZ/a69y8TS0vBAOHEvHOMcG4vyoDIulRs9bdzTbU1aqMtLZ1/blUuhb7tFHNNkC2dTGSJB0MaPl3Jhhc5Ipu3bJcaQXXGnOIyZqBt3z3wrl6xIWWFe+EhWvYqLoqpUTMFdk+b1TGExCKnIc1PegBLnfu7MBeatyRM4lepS21zYywGiMVzDOe84ipsgc1W2bA1nzLU75UxIWHQeO5Kv1NXozBg6O01nf7zpdZAtZbVN4PVv4Yn29GI5YtqFzEcS7mo6vLY9j+RaUPOjeeaM5d0BNb01PKWEHtYjAl+o6HXt9B1LIkhOcXhiE0TttrmK+87m6o4CVurg7Vm6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m6bMzlgH/QxM1GWSCFvRSgwXXfLb6Kc/n85mNkQWDqg=;
 b=jM4ptFYP9nGM+T5QvWYlMihPQPcaEgpRQjoPJTmpdm7ouHnU3tAbJToV7OkTdpTbssL38llkZBg6uKEsh9CjRxpfGM1X0g6dZQz9bSGgqJqCfU17Pp/MiR/1LsUU4DJKD4OCmOUxCuWNH9/Gh8lAkXuqgr6KLjuUXZcJnl1WXS8=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR08MB10218.eurprd08.prod.outlook.com (2603:10a6:800:1be::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.25; Fri, 20 Oct
 2023 15:40:32 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::d066:526c:84ed:fb05%5]) with mapi id 15.20.6907.025; Fri, 20 Oct 2023
 15:40:31 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Darek Konopka <kono6886@kettering.edu>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"adrian.freihofer@gmail.com" <adrian.freihofer@gmail.com>
Subject: Re: [yocto] Run generated executable in cmake recipe #cmake
 #kirkstone #make #native #yocto
Thread-Topic: [yocto] Run generated executable in cmake recipe #cmake
 #kirkstone #make #native #yocto
Thread-Index: AQHaAp/v0PKoO0u1u0meM6PVz8h5dLBRRRYAgAGNIYA=
Date: Fri, 20 Oct 2023 15:40:31 +0000
Message-ID: <61A1D6E1-1FBB-464A-94E1-9AC1E129179E@arm.com>
References: <cXNw.1697728876995550500.flRW@lists.yoctoproject.org>
 <CAB3asfiCcAnVPjHYCJU5UU1yCdu2nHDwbVhnfn3EnqvZJ+j6Vg@mail.gmail.com>
In-Reply-To: 
 <CAB3asfiCcAnVPjHYCJU5UU1yCdu2nHDwbVhnfn3EnqvZJ+j6Vg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|VI1PR08MB10218:EE_|DU6PEPF0000B61E:EE_|AS8PR08MB6613:EE_
X-MS-Office365-Filtering-Correlation-Id: fd35bcbf-d99f-46b3-5f5d-08dbd182ea0b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 grWP3zNV8iT/ZK6ILhNswo34q3o3K7cclcxVvzcb+Epwvyhr8NcDHVt33U/2aU5B4n6nWQB31LXllzPtss4lkdr7mfD1vxi216CESu6TPLOb2NXcXYUVAH8Ml5HZUJ5jSGFejN9cQe+NyVM8lDZAGxkNXuYzgSkTR6PGCcxOhWvR5O3ZYGQzH2fOEHM9PkAND0vPmlg17oi3CtedG5W2zQ5WrME3asT4gR3vF9XdyD9YUcI1bs/CYFt1iKx4TQfhi2NeU2l4UfJwni+AXRUdEDwq3RJjLvwhOdL3Kgueo7h6BN7mOIUK0HQ1hrtrhSuR7ld27Oqn8TMdbEZG5laKpffaavQe+S9+5xPkbveL3UEDIMhfEdFvpS6ZBV6YUzuGN5+c91ubRi6Errn4vp8l3p7y2rpHelxSndVe5YstlcgJn3IhXdF2G2fwagkFKUWTF27XcQOwa4WtXb1mvvQoCSpurN7lqqwKUVS6g87by5VIRKppSRPNHYtej2whJk07q8q+JYz6baRLM1fBk74mygLB9ZHnA6lrbG5VkDpG8gevZf3BGA3gO0LeWSHWSU9clompH9D6tACNMwtbbcLL7YOVe4TR6ZMcYGGEQKQfPr/TYRYec4auMZW8I2JK+hlpFCmmJx1rMr867S45GtW5CQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(2616005)(71200400001)(6506007)(6512007)(53546011)(26005)(5660300002)(41300700001)(8676002)(478600001)(4326008)(8936002)(2906002)(64756008)(6486002)(966005)(54906003)(91956017)(66476007)(66446008)(66556008)(76116006)(6916009)(316002)(86362001)(122000001)(66946007)(38100700002)(33656002)(36756003)(38070700009)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <8FE3DADAB01C434AAD52118C938D19B1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB10218
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	45e7244a-765c-47aa-1e7e-08dbd182e4eb
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8IL3tOmD0Dk84tzjkGeRjKMFw9fAt5ATgl9Hs1hQeLB40y2ALVhWMeU+eHtfQ9GkU2HgUZULCIc5uiQ3kRjJAQFLhm1ARCJhAB3ScKeY0ffCfcYN++fGeEYtVxvLtV4ITBpZTF6nHXKKA5IRCsUm17Uroz3vFvVVvW92bKs26+pkrVg42XUFIJrIMYdaGe7ZZPaHlukanVnpoysEnl9OVR8OlhGYt9KST1888eo+J7ApUJzEmQg2EfzjV1oQLl/k7OQ1BW1PgcL5N92QqpE++F+g3DvMnrAA7kQewjX8rB6DXNSZW193xEtOGUFRlE3kaxt1u7+bNR/ysS4jaOWAtMkxaDyvaLArbqz4S5j09oTNi1VgPe+dbDJ48Zi1c1/9b2/f3sS+ks6xP3jTbvEUkR6ccC11ZjVEc9lzDNIDW+FN+R3XnYAGdIYRBM3snqSQ9+SdM5tu1n5cWy+5wg6crY0dnFNp4pgvZ0SgUw9znz77O/OAHz7ndz6FfIUPi0qlVtbBaXnn2Joj8Web6oSgBy+1MZn9Vjnu8bQVcc8wccsMuLv91w0QA1TZQceQdhJX8QDFK+K/3nJlsbEqYRCYgRsrYswa/pHs28h4Q71rguY+8+eBhpXfGlDDgtiuf+lKYl5UAl/VlcYhdPFwQ34krfKzWUkgw/FLnUkmS/X1BvofAXiU0GHUuhz5ikZfmMljTS/nYQheN+/BPVPVYlv0R3saQtlxQQoupX0AUYa8O5Y=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(39860400002)(346002)(376002)(230922051799003)(451199024)(64100799003)(1800799009)(82310400011)(186009)(40470700004)(46966006)(36840700001)(40480700001)(33656002)(36756003)(40460700003)(36860700001)(54906003)(316002)(70586007)(70206006)(86362001)(356005)(82740400003)(81166007)(2616005)(336012)(26005)(107886003)(6512007)(6506007)(6486002)(2906002)(478600001)(966005)(5660300002)(47076005)(8676002)(41300700001)(8936002)(4326008)(6862004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Oct 2023 15:40:40.5624
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fd35bcbf-d99f-46b3-5f5d-08dbd182ea0b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF0000B61E.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6613
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 15:40:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61439

T24gMTkgT2N0IDIwMjMsIGF0IDE2OjU4LCBBZHJpYW4gRnJlaWhvZmVyIHZpYSBsaXN0cy55b2N0
b3Byb2plY3Qub3JnIDxhZHJpYW4uZnJlaWhvZmVyPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gTWFraW5nIHRoZSByZWNpcGUgY29tcGlsaW5nIGZvciBjcm9zcyBh
bmQgbmF0aXZlIGFuZCBhZGRpbmcgYSBERVBFTkRTIGZyb20gY3Jvc3MgdG8gbmF0aXZlIHNlZW1z
IHRvIGJlIHRoZSBjbGVhbmVzdCBhbmQgbW9zdCBZb2N0by1pc2ggd2F5IHRvIG1lLg0KDQpBZ3Jl
ZWQsIHRoZXJl4oCZcyBwbGVudHkgb2YgcHJpb3IgYXJ0IGluIG9lLWNvcmUgdGhhdCBkb2VzIHRo
aXMuDQoNCj4gQWx0ZXJuYXRpdmVseSB0aGlzIHBhdGNoIHdvdWxkIGFsbG93IHRvIHJ1biBjcm9z
cyBjb21waWxlZCBleGVjdXRhYmxlcyB3aXRoIFFlbXUgaW4gdGhlIGNtYWtlIHByb2plY3QgaHR0
cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9wb2t5LWNvbnRyaWIvY29tbWl0Lz9oPWFkcmlhbmYv
ZGV2dG9vbC1pZGUmaWQ9NmM2M2RmOTczZDk1MzBlY2FiYzk0ODBmOGJhMmFiYTNmZjkzOTUyZi4g
QnV0IHRoYXQncyBub3QgdGhlIG1vc3QgY29tbW9uIGFwcHJvYWNoLg0KDQpUaGUgZG93bnNpZGUg
b2YgdGhpcyBpcyB0aGF0IGluIGEgc2l0dWF0aW9uIHdoZXJlIHFlbXUtdXNlciBkb2VzbuKAmXQg
d29yaywgeW91IGNhbuKAmXQgYnVpbGQgdGhlIHJlY2lwZS4gIFNvIEnigJlkIHN0aWxsIHJlY29t
bWVuZCBhIG5hdGl2ZSByZWNpcGUgaW4gdGhpcyBjYXNlLCBiZWNhdXNlIGFzIEFkcmlhbiBzYWlk
IENNYWtlIGp1c3QgZG9lcyBub3Qgc3VwcG9ydCB0aGUgYWJpbGl0eSB0byBidWlsZCBhIHNpbmds
ZSBiaW5hcnkgd2l0aCB0aGUgbmF0aXZlIHRvb2xzIGZvciB1c2UgaW4gdGhlIGJ1aWxkLg0KDQpU
aGlzIGlzIG9uZSBvZiBtYW55IHJlYXNvbnMgd2h5IEkgZGlzbGlrZSBDTWFrZTogaXTigJlzIGFj
dGl2ZWx5IGhvc3RpbGUgZm9yIGNyb3NzIGNvbXBpbGluZy4gVGhlIHRvb2xjaGFpbiBzdXBwb3J0
IGxvb2tzIGdvb2QgYXQgZmlyc3QsIGJ1dCB0aGUgYWJpbGl0eSB0byBlYXNpbHkgc2F5IOKAnGJ1
aWxkIHRoaXMgYmluYXJ5IHdpdGggdGhlIGhvc3QgY29tcGlsZXIgc28gSSBjYW4gcnVuIGl0IGR1
cmluZyB0aGUgYnVpbGTigJ0gaXMgaW1wb3J0YW50IGFuZCBhYnNvbHV0ZWx5IG1pc3NpbmcgaW4g
Q01ha2UuDQoNClJvc3M=

