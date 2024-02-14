Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6815DC48BC1
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 14:16:12 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.50])
 by mx.groups.io with SMTP id smtpd.web10.41937.1707920161479436768
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Feb 2024 06:16:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=s3DTpdhu;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=s3DTpdhu;
 spf=pass (domain: arm.com, ip: 40.107.249.50, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Ne6H3z234JFfl/4GPCQOhGu6NKB0uybH3QIzN9GMM5SSLBdhEOEdXnhQcTw5DNH9QPBGxV9+EWW4FEcbKWb5OjKO/jDlRhVN2CJGFLCEf3WalruZr+QozqbUQkSiBJCdwQVmNSIXv+oCtQBJZMKLTrnUPslrn9gtQh3HC/mIvWf/12cNjEpmibkcOEbQJSTTv/ifHH3WFXrkVic2SbUYP54o1JYbtbQXOkgHXMMmMAYZK9MprSCQWzaCOn3M44K2Lys6rr+QvKi2gA55+CJKsRTfjexCKibwMg5k7HOq9N+Dcs3Irn4y5/wt47BeaJTZN6GVnxZv6Y7YjqCtwO+0Tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5/BWBWiDmzEt2U5KYcjji5CdmKrQVZtHWO7ezPXn+0=;
 b=dh5Dl93KNG2Lkg3qgmGkPHZmM/0Hg68wVvmPrYeWpvi+fMWHLKzu5T/yfk3CViJulIvUdJmUlhyAPrVzcKgfHv0u0lQELE4FKNjsnMkojwoVNBplzp7XGyfI8W+4ZMYGrEZ/RkIYb6rsvyB2TqhXLWLfQr0BaybDcqkR1D7rha325XptjNd2lxmbyJlqnsjn8d2vVaIwuJUdqqYl7xfVrh39+av5vNvj4vPv7nITnkwA/o+zXFSyzEYrQIjPQr4nhdPma2wzznw84IXITmLX8qQg4quyxXlgq04UDd6gpBPSwqFzA/C3DMV0kjCaUOjpxR3/u5jfPsKkOAte10BfrA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5/BWBWiDmzEt2U5KYcjji5CdmKrQVZtHWO7ezPXn+0=;
 b=s3DTpdhuB7V54396w/+IIg97c09ihry56Nf4fPhff8Vx8GLXUU4069blPCbR4p2i/4ZnzESjU3T3MlvUPWPc1+aRF2t1VYYLQyvrxBsfZsWf5UwU6vrqkv/NWRhDKGdH3nL4yF1iLxwJBwzZZpQw8+AKgB8aO6QBU0/u/PbMmDU=
Received: from DUZPR01CA0015.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:3c3::18) by AS8PR08MB8442.eurprd08.prod.outlook.com
 (2603:10a6:20b:568::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.27; Wed, 14 Feb
 2024 14:15:57 +0000
Received: from DB1PEPF000509FE.eurprd03.prod.outlook.com
 (2603:10a6:10:3c3:cafe::52) by DUZPR01CA0015.outlook.office365.com
 (2603:10a6:10:3c3::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39 via Frontend
 Transport; Wed, 14 Feb 2024 14:15:57 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509FE.mail.protection.outlook.com (10.167.242.40) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Wed, 14 Feb 2024 14:15:56 +0000
Received: ("Tessian outbound 081d54b8cc4c:v228"); Wed, 14 Feb 2024 14:15:56 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 33ac0d4d4dbf0dd0
X-CR-MTA-TID: 64aa7808
Received: from 6b1a2e2347aa.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 5658AD00-4681-430B-9A6E-F0B826EA4F1C.1;
	Wed, 14 Feb 2024 14:15:49 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 6b1a2e2347aa.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 14 Feb 2024 14:15:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SZ8UnijgCwn0y0P2WV5S7BqGjmPeL9jz48jFLD7WDwDSs/Zm/X02b4Ai7crQ/N2zZPN+t1YA2eLl+ZjolxWmSTAPDsHGV32XZ60NJA/w8kh3OP/cvr4Nv7lOO4dXDLA1VPTuB1z05KV7UbNkGIuR8eznyZ/Ygzl0wlY2JJFgjGPB52f1tizzNENalo+0H028KuT+va/nMiAzpFkVcNkPUTFU9Y68JVHQvVkqu/JR+i7NMBTO157Dag/Qa4WC8s07jxUf5KoystFp1LfBRlLZ6AawAdPxf37Dhs3WbBgB4lZ0XagcdrGWVFqZjCrJwPq2+/yQoV7EZwngWWNiXcVw7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q5/BWBWiDmzEt2U5KYcjji5CdmKrQVZtHWO7ezPXn+0=;
 b=OYgnBwOPoYPD1hJeFS98sYMFChVx7VpiwtrNSpnYbCNvgzDQyiFLDKdqcMkbOVPxvh/+GBXlQo6h16wn2VHWt9feiIhDON/8I9e3QTNGxg7zajtAwMmehTM3OKuhO9jg2ve0zrETNAvT+I1ZEoUEbVwhVk9FUjz44pcEIvaQsHfnaqhOboNaK2E2iBj5Pfrcqz3PJVopS32vLyENOsz9yBdZN24OAJ5w0EfvNvtRkuIXyOzmzbhlYkurwHbPLzv00M3f7MAWBlOICMX+UsMUWZRs27O5A5l86P7zc4NFUZx6CyB8ExfnIOCREi0yU3Q5jLxLp0BLIB6DXKQCIxYC1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Q5/BWBWiDmzEt2U5KYcjji5CdmKrQVZtHWO7ezPXn+0=;
 b=s3DTpdhuB7V54396w/+IIg97c09ihry56Nf4fPhff8Vx8GLXUU4069blPCbR4p2i/4ZnzESjU3T3MlvUPWPc1+aRF2t1VYYLQyvrxBsfZsWf5UwU6vrqkv/NWRhDKGdH3nL4yF1iLxwJBwzZZpQw8+AKgB8aO6QBU0/u/PbMmDU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB6040.eurprd08.prod.outlook.com (2603:10a6:20b:296::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.37; Wed, 14 Feb
 2024 14:15:46 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 14:15:46 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Perceval <perceval_arenou@trimble.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] extend python3 manifest to add a module
Thread-Topic: [yocto] extend python3 manifest to add a module
Thread-Index: AQHaXyvYMo9o1zNemE+HKx7FQ9TJHbEJsmgAgAAseQCAAANUgA==
Date: Wed, 14 Feb 2024 14:15:46 +0000
Message-ID: <8B0A80A4-7D4E-4ADE-A645-0C7DBBBDE8E7@arm.com>
References: <QIBU8S.RL2ZWWVWX0423@trimble.com>
 <CF199512-3ED8-4845-AE0D-3F3FEFCD02A6@arm.com>
 <42NU8S.WT0Y3BGIDTIA1@trimble.com>
In-Reply-To: <42NU8S.WT0Y3BGIDTIA1@trimble.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB6040:EE_|DB1PEPF000509FE:EE_|AS8PR08MB8442:EE_
X-MS-Office365-Filtering-Correlation-Id: 3454a367-1093-4058-237a-08dc2d67764f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 rTRjWxeJSsl7MRCdq1h8mLUr/QahlOoh6+hF0TZ9d7FwSVntd5vE5EJzPduZnA/A1pI3BSd3lSxBvRRK4GMEEXJaBMKsWjyJCx2NM6agA4OxMRESlRYS05qi1DosXaRV32mjHFY+23wAFH0KcRvrKUvXX+33Yna2vhd6D1oZ6CGjy3f4+EzQxEfNw3V4bzMImlDA1vHErEuwGnBbyUC5otQJNONEpZAfd0vQuEdijOaXeY91t3IpTa4xvHjy2kehPPQ87KfVcs3X496yQm54NbjHkHNzfAtLlNYII6LjQpVjjHd2pj7YRMAVYI5crcAReqKpLmI1limjyvhsHHcQPupsSTWzxsh0h/FVUYbVwmme0ca3473Mf+xjHqdIe0AR9JDXQ6xEQFla8NbV6nHRW2jD9tyFV7xJ/1A8lWOki9usS8X4lyQaxgrHxUs9TjfaDGlb2h/Hu0VsmIQ+fGGtb9yOOQg/JgakaClU/I88ZrFAKd66d9lSYGicpQIvJlWdosp+U/Wctq/BW0WrcEieybPFOFWFtjbgs0TUNcTmRilDkXZPS4sM2KJ2J2Ns2YizWk7IMIEzRH1J+4VeKGpw91mJH44obYlInYGCkLfJGf4=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(346002)(366004)(136003)(376002)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(36756003)(41300700001)(966005)(6506007)(6486002)(478600001)(53546011)(2616005)(38070700009)(4744005)(66946007)(64756008)(66446008)(66556008)(5660300002)(66476007)(76116006)(2906002)(6512007)(26005)(33656002)(71200400001)(38100700002)(316002)(86362001)(8676002)(8936002)(4326008)(6916009)(122000001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C9A40B2A28ECD64AB6DCA32CA7A41AA2@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6040
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509FE.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	65087c93-8cf7-4bb3-7588-08dc2d676fd2
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x4jt2gZtKKkfIgeuJHCjJrds8L73kSkr4N5KWIj6/Fg6nVrJPH0LyteuqdDzIvvF00kztezY8DIjfbregLTotqt6zm0O1/VVt0KgG+33YsI/ydBsVP0px8jvrEGI/gJi29c43cHZ5TAaLzdFeeNlrOyqlbi9kChw61twQcsHxQ3DXhzPLKx4qGp0bj6gCyhkD0fKrOK3BRSszhj2xX16IBTdB7h4M44IyHemNd+EOtydHsPck2GcFx6FSds4azIuS4mRnWY9lrllX0YUrbRP+lgH5vXNzuFeKWifivv45Bo9CqgYbN43mxCd/XlqzmMGBjp3AV5MWn7DbiG2jWvolfcdEzZDFC87IqIId1Ma9D3EhAG0KWCnyQQoejn1B3xB4Z777ZVg0tL+h+2qyPOX3/TOnqXC0qp+lOVEZ3Rks6UMoqUa9d5mkrQ8+EGgWFSIJCTuQYXDZHXnSpvvzJZajui7KBPzcfUXrq1GRiLdCO6MGLbtLPrZRjZ8xf+L4Jq4tf/9XWMSME0Gn7bL9zeux+DDiByOAW+Obq73W0mBSoNAaCBRHTGKpXL3KDIO/iyCmnUEnXCENVAozWES5KbT8g==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(376002)(136003)(39860400002)(346002)(230922051799003)(64100799003)(1800799012)(186009)(82310400011)(451199024)(36840700001)(40470700004)(46966006)(86362001)(33656002)(8676002)(8936002)(5660300002)(70586007)(70206006)(4744005)(4326008)(6862004)(6512007)(6506007)(6486002)(478600001)(966005)(2906002)(336012)(81166007)(356005)(82740400003)(26005)(2616005)(41300700001)(36756003)(316002)(53546011);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 14:15:56.9547
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3454a367-1093-4058-237a-08dc2d67764f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509FE.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8442
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 14:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62490

T24gMTQgRmViIDIwMjQsIGF0IDE0OjAzLCBQZXJjZXZhbCA8cGVyY2V2YWxfYXJlbm91QHRyaW1i
bGUuY29tPiB3cm90ZToNCj4gDQo+IEl0IHNlZW1zIHRoYXQgdGhlIGRhdGFjbGFzc2VzIGlzIG5v
dCBwYWNrYWdlZCBpbiBhIGRlZGljYXRlZCBwYWNrYWdlIG9uIHRoZSBkdW5mZWxsIGJyYW5jaCBh
Y2NvcmRpbmcgdG8gc291cmNlcyBoZXJlICBodHRwczovL2dpdC5vcGVuZW1iZWRkZWQub3JnL29w
ZW5lbWJlZGRlZC1jb3JlL3RyZWUvbWV0YS9yZWNpcGVzLWRldnRvb2xzL3B5dGhvbi9weXRob24z
L3B5dGhvbjMtbWFuaWZlc3QuanNvbj9oPWR1bmZlbGwgDQo+IFNvIGl0IGVuZHMgdXAgaW4gcHl0
aG9uMy1taXNjIHdoaWNoIGhhdmUgYSBsb3Qgb2YgdGhpbmdzOg0KPiAkIG9lLXBrZ2RhdGEtdXRp
bCBmaW5kLXBhdGggL3Vzci9saWIvcHl0aG9uMy44L2RhdGFjbGFzc2VzLnB5DQo+IHB5dGhvbjMt
bWlzYzogL3Vzci9saWIvcHl0aG9uMy44L2RhdGFjbGFzc2VzLnB5DQo+IA0KPiBTaG91bGQgd2Ug
cGFja2FnZSBpdCBpbiBhIGRlZGljYXRlZCBwYWNrYWdlIG9yIGFub3RoZXIgb25lPyBXaGF0IHdv
dWxkIHlvdSBzdWdnZXN0Pw0KDQpGb3IgbWFzdGVyIEkganVzdCBzZW50IGEgcGF0Y2ggbW92aW5n
IGl0IGludG8gLWNvcmUsIGJlY2F1c2UgaXTigJlzIGEgZmFpcmx5IGZ1bmRhbWVudGFsIHBhY2th
Z2UuDQoNCkZvciBkdW5mZWxsLCBtb3ZpbmcgaXQgbm93IGlzIHByb2JhYmx5IG5vdCBhIGdyZWF0
IGlkZWEsIGJ1dCBhdCBsZWFzdCB5b3Uga25vdyBub3cgd2hhdCBwYWNrYWdlIHRvIFJERVBFTkQg
b24gdG8gZ2V0IHRoZSBjbGFzcy4NCg0KKG9yLCB5b3UgY2FuIFJERVBFTkQgb24gcHl0aG9uMy1t
b2R1bGVzIGFuZCB5b3UgZ2V0IHRoZSBlbnRpcmUgc3RhbmRhcmQgbGlicmFyeSkNCg0KUm9zcw==

