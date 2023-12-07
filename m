Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02F1FC4167B
	for <webhook@archiver.kernel.org>; Thu,  7 Dec 2023 11:03:55 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.76])
 by mx.groups.io with SMTP id smtpd.web11.81042.1701947025748727115
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Dec 2023 03:03:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jD4wIgy2;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=jD4wIgy2;
 spf=pass (domain: arm.com, ip: 40.107.6.76, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=XzFABrJQWHl3I2MBgr9Df3WLU9kIeVriHAveKAnFPWBBfKRub9QU47QYeozHt5eG95L5tLiGnvhpUxmp3Dyx9P8PR2P9BicJioug4gVOgb53ZaxXCuyW/bbzlzf7UsZS7LahfLABQDFrk+V8jAFbDopcP9Fe6Gx3QiE0ezH5Yba7hp/d5xm0Q8wxzJuZG4K85RxjzqxTx8ejypfXp4k3R794xuNvzliFX0A0FmHvZi2eUfeA4EXLogIRo6c8zGWk1q/2o5Dg+f4+i9Zs4msUT99GDswM69ASdsf7P2ZIpuhQKG5yM0MJZTtjPjsM9QdqT2sr+WGOTZC4XTBZ1vf//g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5htcboPNWBrSWJJ4iPObsILEF9oWDxfMaJ2JBregjU=;
 b=Qe/NWw81JpZqjXgmsOlmxx06HxJ/dfeTbdZdsGwX553df7MoWC/GKsf0nLw2AcNY/rco7+5UwXOvjWQAlr1R84XZ5nf7GXoSUmv5kNFWSFLaplFHP9mhMngGh0fjdL8Lsmpgr+scPXBK78Dmfb93QiBSeyUrW2Yefjmo/z5eg475NRC3M16AklZ2HSLZsN711jU7Rk6elH7dc4wdhMVfUJ9b0ekFQILDJ+Lj/IU+dzSje3D/U+xXvrNTef3CazpFgHfakiH4Nj3H9v0GD1qItaNJv4l0+11PbFm385qoTZ+kRtz8RWOc1wb/sdvUdrdDPi5Wth2bjy4yAC9ZpFSV3Q==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5htcboPNWBrSWJJ4iPObsILEF9oWDxfMaJ2JBregjU=;
 b=jD4wIgy2tTXEgjJ1xQh+537PhbH41OtuZ7xaCCgjJhbGrlyW/tmkPNrcuf4qj6uVyJMn3h0oi2lbTmCBsegEJD19bTYgDxH2bZXQboKsnMSWIvdpSz+f2GQGIc3TkB6Z6FcQZfpuQtj+yB2SJWcMR8N4yoCrcPUx9NbJPSfNPZU=
Received: from AM5PR1001CA0022.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:2::35)
 by DB4PR08MB9213.eurprd08.prod.outlook.com (2603:10a6:10:3fb::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Thu, 7 Dec
 2023 11:03:42 +0000
Received: from AMS0EPF000001A5.eurprd05.prod.outlook.com
 (2603:10a6:206:2:cafe::ed) by AM5PR1001CA0022.outlook.office365.com
 (2603:10a6:206:2::35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34 via Frontend
 Transport; Thu, 7 Dec 2023 11:03:42 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS0EPF000001A5.mail.protection.outlook.com (10.167.16.232) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.20 via Frontend Transport; Thu, 7 Dec 2023 11:03:41 +0000
Received: ("Tessian outbound e243565b0037:v228"); Thu, 07 Dec 2023 11:03:41 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 41efd1a1c697aabb
X-CR-MTA-TID: 64aa7808
Received: from 616bea42d15a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 97A1A358-2B5E-4F12-BF67-564351F1AA87.1;
	Thu, 07 Dec 2023 11:03:35 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 616bea42d15a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 07 Dec 2023 11:03:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UdC99t+reU2rEA/8jkrJUGjMJHzKN7ld2YJy3ElDe/CSFqoqyFqnID0tBCBHhRWjX81w8rTahxkLxhGf8F2F1kfWdqZFnmxjP9ijHdxitRkuFo5NJ+7s+d7lO07CsmJnnEymluVJgqKW5oeyv8J6sBgFUFGqZyDsb6s6lRE+8SGCgiDIkuUR/cPx5RVLvuVBdXJnMECbC5WmsAu6RIt0lojKJYc7GGsotmnC2d8llQV3b5pehH9WESIpXA/l8/9uarGd+d39zwKr19OusAv2JZVit6QmHekKrbsII/F+jaf4+07xSXFrJT5wPzOjF6B8bbzG4ZkmJjx/13huDaSA1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m5htcboPNWBrSWJJ4iPObsILEF9oWDxfMaJ2JBregjU=;
 b=KpAbYoFX4XUzpn0ksHZ8/QcixfZD7CdhbdpDNQqcmWleuE5uMIOUworU+ISqgYYAvspBacT4OqEEbBXAgqDN+TrPFoVtjcP0dShot6qQt2v1YfzHxDa8ZWGbur0BhjV331uEA5P7IuO3YoTbiPENDT8AoF/K1bEeVguzDJ+FJmo7+Hg1cr0AZblGDmJN9b/24P7Whw++zggnms/mD+HSuiAq2hVqMU7ifoI2p/vYdr1CHZboq3VWfHPpjsDtF2GZcWVDx4Mdi1V9yz+svdfFtik0yi6XcyK2P97NniouCcHZraD8KMvbeYUX0N+PBH1wkVXTWsMifPmvc2Xe61skEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m5htcboPNWBrSWJJ4iPObsILEF9oWDxfMaJ2JBregjU=;
 b=jD4wIgy2tTXEgjJ1xQh+537PhbH41OtuZ7xaCCgjJhbGrlyW/tmkPNrcuf4qj6uVyJMn3h0oi2lbTmCBsegEJD19bTYgDxH2bZXQboKsnMSWIvdpSz+f2GQGIc3TkB6Z6FcQZfpuQtj+yB2SJWcMR8N4yoCrcPUx9NbJPSfNPZU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB9888.eurprd08.prod.outlook.com (2603:10a6:20b:5ba::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.25; Thu, 7 Dec
 2023 11:03:33 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7068.027; Thu, 7 Dec 2023
 11:03:33 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mattwood2000@gmail.com" <mattwood2000@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] initramfs creation
Thread-Topic: [yocto] initramfs creation
Thread-Index: AQHaKI3o4sGZw42kw0aZzfBIOIUew7CdqOAA
Date: Thu, 7 Dec 2023 11:03:33 +0000
Message-ID: <35CEFCFD-4EFF-4EEE-A151-132DBF65E58D@arm.com>
References: 
 <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
In-Reply-To: 
 <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB9888:EE_|AMS0EPF000001A5:EE_|DB4PR08MB9213:EE_
X-MS-Office365-Filtering-Correlation-Id: 229f4b91-825e-48cc-8dbd-08dbf7142c5d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 /88EcVkLwy7nYg7+rFSyFd5lwzdBaK+XHqx4LYDfs7CBsRf2U4U/inmqoQvyVVq+qawh8HzUbQaBcdA4pnHq00WDVjFS2JBz/qH33UqnS4VrDHjqA6Xg3BQFTJfRh6WhadNPpEb6QrWYQpUbjhUYHdDSs2XPE/0URRpYqnGIuiHb61Yqtxj+a1nFNCWNsV2dB3MbQ1CQAH+5SaLbGCf9ccZyTZrYKBMqyclNZ1+Vzvg83pC0EbTORxjN5yHGQDl9WwqFdF8iaqY+PPAOwngr83sHzyqcUbFLNFngKd+pb4xYpCOSgF6TlKzt7g/x8hwLAJWfnLGEYho37TuK2Wo9fGWYPZ601ss7Xiq7WvN2QLlskIciAs6rNowe8ZDkHq1gwbfQRC+Vc3j0HTaevJc4M1YUtF/1SDZtNDRK/UXuLQKS5VXrtYfnozv23W/ozvr3316gFCIfoymDO3VOZYKYRbSdLGkKPZfMW5l7y9uWl8LhkwCgHogGvs3j/Je0VRA2ajYe+1DD9mNPD/fIY98fHci4YKuWIndXsipKrZcucAW9BOG2nfSXcZRk2Pb2ugoFVfp5awwhizUIFVRB1JrN5/25LcCx1jnP+Gio1NATh04VcGLi/xL9fIA9qtf8Fy3zhd+N0HHIxo7XVrYEIOfDlQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(136003)(39860400002)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(8676002)(8936002)(2616005)(4326008)(5660300002)(36756003)(71200400001)(6512007)(6486002)(478600001)(6506007)(316002)(66476007)(66446008)(66946007)(6916009)(53546011)(76116006)(64756008)(91956017)(66556008)(41300700001)(2906002)(38070700009)(33656002)(38100700002)(122000001)(86362001)(26005)(83380400001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <39E056D50D0E834FAF2821A183E9CE30@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9888
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS0EPF000001A5.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	4f6af2c8-d8ff-4205-284d-08dbf7142721
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	j3qhFG8fzju8lK+bUJUtmC6LwyRVRiDYB+C6emeKe7rca+hribQNtfSM7qqpcVbeJUG1LJYhf9ByTZirah4RFy49DDQxe55PGchwU0XztxutDuEDHpoGva0RTIQEsPVZhvG7j7+9r+xOyYqItUVOqRGDowVimPlSdUNr9BQKxdFNovH297YpiF9YCTCV1J6Tg/5kDty1FoRlDJ+7ulUC/M1Nq0GHfjk28uuMKqbrKhxLdoLLeo4QI2jFOYeuym13eJzYfeotJyCIfQd39doz/QAXTCfRzGGJtNNzFrtv0g//TNfzpEcmfeN9+3Uf0QAlqYjy8Q1UpAzZZfCeqMB22Qo08G6V/ACV+Kty9LgRVnxh3rlrgHtxt+Vx+bQ0/XIVFjKw87dakT8GT61Wv09P5zJfOJlwnhZi/JGrlSvKO94G7eXLa+lUzHZMdni5md7Lo1Quf8gH3/fTbkryRjSvEPZ4E1EEj8fJ93K8ROYxLaqh+mSqXwMs9saFinGMmcMFxg2v5okUZZE+4U9xmyIeX7YVVM7UsNP5tioZvgOoQHzfFYnFVKEgaP7cGDrwyogcPbsoWIJLkRADQJPczXnc4hyGaFpubC5xP4yZZsCS+D8ctYBqXTbNiGpu0PJiKra4m+PjiX941MVKqHZXST894lihVTxRgIXH9LwXyHJ33/QpV3IbVO8Kselzh5L5xaXqkEfbjI+b+ZEAbObA9Z1Ksh3hPHxCelbqG2/VP4I6A2p3H5R8E+d81y8g5YcBREdj
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(376002)(39850400004)(396003)(136003)(230922051799003)(1800799012)(64100799003)(186009)(82310400011)(451199024)(40470700004)(36840700001)(46966006)(81166007)(47076005)(478600001)(6512007)(356005)(2616005)(82740400003)(6862004)(4326008)(8676002)(8936002)(70586007)(70206006)(316002)(83380400001)(26005)(336012)(6506007)(40480700001)(53546011)(36860700001)(2906002)(5660300002)(40460700003)(86362001)(41300700001)(36756003)(6486002)(33656002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2023 11:03:41.8323
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 229f4b91-825e-48cc-8dbd-08dbf7142c5d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS0EPF000001A5.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB4PR08MB9213
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Dec 2023 11:03:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61824

T24gNiBEZWMgMjAyMywgYXQgMjE6NDcsIG1hdHR3b29kMjAwMCB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8bWF0dHdvb2QyMDAwPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gDQo+ICBIaSwNCj4gDQo+IEknbSB0cnlpbmcgdG8gY3JlYXRlIGEgY3VzdG9tIGlu
aXRyYW1mcyB0byBoYW5kbGUgc29tZSB0aGluZ3MgYmVmb3JlIHN3aXRjaGluZyByb290IHRvIG15
IGFjdHVhbCBmaWxlc3lzdGVtLiAgSSBmb2xsb3dlZCB0aGUgZG9jcyBhbmQgaGF2ZSBiZWVuIGFi
bGUgdG8gdXNlIElOSVRSQU1GU19JTUFHRSA9ICJjdXN0b20taW1hZ2UiIGFuZCBJTklUUkFNRlNf
SU1BR0VfQlVORExFID0gIjEiIHRvIGdlbmVyYXRlIGEgekltYWdlIGZvciBteSBBUk0gcGxhdGZv
cm0uDQo+IA0KPiBUaGUgY3VzdG9tLWltYWdlLmJiIHJlY2lwZSBpcyBiYXNlZCBvbiB0aGUgY29y
ZS1pbWFnZS1taW5pbWFsLWluaXRyYW1mcyByZWNpcGUgYW5kIGlzIGluIGEgbWV0YS1sYXllciB0
aGF0IGhhcyBhbm90aGVyIGltYWdlIHJlY2lwZSBmb3IgdGhlIGFjdHVhbCBlTU1DIGZpbGVzeXN0
ZW0gaW1hZ2UuICBCb3RoIHRoZSBlTU1DIGltYWdlIGFuZCBpbml0cmFtZnMgYnVuZGxlIGFyZSBj
cmVhdGVkLg0KPiANCj4gSW4gY3VzdG9tLWltYWdlLmJiLCBQQUNLQUdFX0lOU1RBTEwgaW5jbHVk
ZXMgSU5JVFJBTUZTX1NDUklQVFMgd2hpY2ggc2VlbSB0byBiZSBnZWFyZWQgdG93YXJkcyBsaXZl
LWltYWdlIHRoaW5ncyBidXQgdGhhdCdzIG5vdCB3aGF0IEkgd2FudC4NCj4gDQo+IFRoZSBpbWFn
ZSBib290cyBidXQgaGFuZ3Mgd2FpdGluZyBmb3IgcmVtb3ZhYmxlIG1lZGlhLiAgSSBmaWd1cmVk
IG91dCB0aGF0IC9pbml0IGlzIG5vdCBwb2ludGluZyB0byBzeXN0ZW1kIGJ1dCB0aGUgbGl2ZS1p
bWFnZSBzY3JpcHQgZnJvbSByZWNpcGVzLWNvcmUvaW5pdHJkc2NyaXB0cy4NCg0KVGhlIHByb2Js
ZW0gaXMgbW9zdCBsaWtlbHkgdGhhdCB5b3VyIGtlcm5lbCBpcyBtaXNzaW5nIGVNTUMgZHJpdmVy
cy4gIFRoZXnigJlyZSBtb3N0IGxpa2VseSBidWlsdCBhcyBrZXJuZWwgbW9kdWxlcywgYnV0IHlv
dSBkaWRu4oCZdCBpbnN0YWxsIHRoZSBtb2R1bGVzIGludG8gdGhlIGluaXRyYW1mcy4gIE9uZSBl
YXN5IGZpeCBpcyB0byBqdXN0IGFkZCBrZXJuZWwtbW9kdWxlcyB0byB5b3VyIGluaXRyYW1mcy4N
Cg0KSSBkbyBoYXZlIHNvbWUgdHdlYWtzIHRvIHRoZSBpbml0cmFtZnMgaW1hZ2VzIHRvIHBvc3Qs
IGJ1dCB0aGV54oCZcmUgbm90IHF1aXRlIHJlYWR5IHlldC4gWW91IGNhbiBzZWUgdGhlIFdJUCBp
biBwb2t5LWNvbnRyaWI6cm9zcy9nZW5lcmljYXJtNjQuDQoNClJvc3M=

