Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92C7C4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 20:34:47 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.72])
 by mx.groups.io with SMTP id smtpd.web10.473.1707424484137964320
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 12:34:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Z5YLeaXP;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Z5YLeaXP;
 spf=pass (domain: arm.com, ip: 40.107.8.72, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=hF7hW40a5Ud5E4h+wAB+hLU5Vv+sDhXjb5s5NetHx5TXUXsabtYXDkWF2Waoqfip32R/4SjuF9BgHgja6DRxahPiES61kcsfDeOP6Iv4g6TxG5qEWQHgqDjqwGjzIJGbTVgem4S7JolcwpqKkO/3q2IWXT+3DU+7p/f46xv+6kzGFBitGB+avUuajsKVkAZgrILxv6pO8Mty9zjxSChNhEJwC5wNLI3NZBU0Yi5PfSV/IRVEsA8TPpq+tAIDu1nG2mWcg9OY/LHFdwOCdYjn20T+NhV4qOsYQTopdjwK/KnQvwWrtYCl94BPmAE4TlrGtxtmRsnx6KZ50lAfdhrQXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X+MYeLq72QsNXdvh7MijWEgH/6dWzhVO3yNkC7lSCMM=;
 b=FPxrOq7YiHhznBWFxWYULAcOYHZ0NpnZ8qlFA9pjYRSzbRwBWV98ngwVU1UFj9cUtfYw4TeP/d8V9CWkX/0JCLbnGqp+jbwuVoME1RJYgvjKXdAK7HWdXcUr6BU6M49PTySf8e91t48K+p32XDIDI6FKOPI+wLOT5+y9AloF020aQw0Kl+sBvn4+o3Wakd22jN7/PUkGtYgFkQQcx7LH2cCE1zf3uCM6ZsVcopZcyHVWzd74UVqix2sfL4htH+PmSXgVp4kffb3fKv0scEFn0SusQoDDvOkgT807T/HD4TVFZjS1nK6yEuIvoyRC6LzkwDF6Nm9SEnKZcuG9p6BWrg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X+MYeLq72QsNXdvh7MijWEgH/6dWzhVO3yNkC7lSCMM=;
 b=Z5YLeaXPq/rgLtkMoTw5kvcISS+k5NaVgljzM2zDh15c0Hxa2HKD1eucSqf+RN9Rj393nI+zQ989uF2T8uRh22ZoNlonCkrCSwuFP0+4DkuO+X8nbiGMMpFDkMZl2nK/fMFEPgSvg6HSBP0O2f0KQ94nEawLBu9CGcV/PPe9hgQ=
Received: from AM6PR02CA0027.eurprd02.prod.outlook.com (2603:10a6:20b:6e::40)
 by AS2PR08MB9617.eurprd08.prod.outlook.com (2603:10a6:20b:60a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.37; Thu, 8 Feb
 2024 20:34:40 +0000
Received: from AMS1EPF00000048.eurprd04.prod.outlook.com
 (2603:10a6:20b:6e:cafe::4d) by AM6PR02CA0027.outlook.office365.com
 (2603:10a6:20b:6e::40) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.37 via Frontend
 Transport; Thu, 8 Feb 2024 20:34:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000048.mail.protection.outlook.com (10.167.16.132) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Thu, 8 Feb 2024 20:34:40 +0000
Received: ("Tessian outbound a297577ee0df:v228"); Thu, 08 Feb 2024 20:34:39 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dd3ca5d5f782f516
X-CR-MTA-TID: 64aa7808
Received: from 2a4b72d43584.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 8C8DCF08-561A-480B-B327-FC4F190DF2DD.1;
	Thu, 08 Feb 2024 20:34:32 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 2a4b72d43584.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 08 Feb 2024 20:34:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvy3xWsuMA3UbOxtuwSggHllD2+eO2eCBKq9N/0brg2t2jTmyH+CoC3ulYn/7qlJF6nqGs2yJoxy6aRdlyxKTzK3LU3GO1KeJos/uSIzfBzVtrYlbhWKvn6ilM4Z086NUCgEDntqx+qgyHRqXLwzg4mKCz1Yx26XBgeNo9J+maZof+K9pfD2aOLhapI/pCVOCJ98Gv6cNyJbc9RqXZ6eQmoxFcbMoE/oWkadHlS4U9EC7NNIkS3eVs/K/3AI7Gdj1n6/qu3aS0LdcyroCaZs9JmjE0UWCjEEperatwkv+Sc8D9dashYuF1o9FtTAVjY2e4p7vBQybdxgEG5pXR+utQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X+MYeLq72QsNXdvh7MijWEgH/6dWzhVO3yNkC7lSCMM=;
 b=ScgCJNEWfzA5RGxMWsL8rVKrpO7MvV/GmXm7EXzWhYP/VuN6kOr4IKI6O/YgWw/FpkEeFULNNp8Byhfc46t3/s7077KOIKuoYtIzaVhU6D6xLKeG3e9lEYDs4RRXa8z5erSp8boX+TaDGQb5g2NuH+yxTBoGntOR1w/xncc+zh7if/+GukrQKnTqlHMrieqBZVSoVRFBtqn1dbjFcywPeT19Tj6taMa22h6E3Ym4i6u7Qb0twCYfxkGzjgDQ1i5cecOUNmqwYs4XO3AaMrC2uoMj/zfw5n+rXj5zErTbGpu1ZQT+KAuBzCNVvChr9qaqmG0/I4Qf9dlIHOBPUVkL4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X+MYeLq72QsNXdvh7MijWEgH/6dWzhVO3yNkC7lSCMM=;
 b=Z5YLeaXPq/rgLtkMoTw5kvcISS+k5NaVgljzM2zDh15c0Hxa2HKD1eucSqf+RN9Rj393nI+zQ989uF2T8uRh22ZoNlonCkrCSwuFP0+4DkuO+X8nbiGMMpFDkMZl2nK/fMFEPgSvg6HSBP0O2f0KQ94nEawLBu9CGcV/PPe9hgQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB8205.eurprd08.prod.outlook.com (2603:10a6:10:3b9::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.24; Thu, 8 Feb
 2024 20:34:31 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7270.024; Thu, 8 Feb 2024
 20:34:31 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"manjunatha.srinivasan@gmail.com" <manjunatha.srinivasan@gmail.com>
Subject: Re: [yocto] About Scarthgap Yocto 5.0 release
Thread-Topic: [yocto] About Scarthgap Yocto 5.0 release
Thread-Index: AQHaWrA28MlEgFmP3EqcUd2s623yX7EA5wIA
Date: Thu, 8 Feb 2024 20:34:30 +0000
Message-ID: <6729F28C-647C-4B31-B6B1-375BB9F764A9@arm.com>
References: 
 <CAAAM0df2oQf3McTkQUu73TiqmMf1xEs8Pw4JGukqV8XekXyKnQ@mail.gmail.com>
In-Reply-To: 
 <CAAAM0df2oQf3McTkQUu73TiqmMf1xEs8Pw4JGukqV8XekXyKnQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB8205:EE_|AMS1EPF00000048:EE_|AS2PR08MB9617:EE_
X-MS-Office365-Filtering-Correlation-Id: edc44a87-c429-4c05-a464-08dc28e55fdc
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 enCiJy4jTraodzcekAfaVOvOJzYulEcQZAFxRYp8pyvhJnm6MHdQH6M1IY+d7aDpPsEpIWMxHDhOM1ykA1Yaz81qgZlhZsX7+T3Tk0Hn6WxR+X2FrykdclrQ1Wx+zOIxVocpzjQXWf6qNdOByBd29mr+nw7tvADukKAktQUA8hjS2HcidyleZlbkMmIvFN+FP2cWBijqErJotSyIVCFvwqZyg9hQS8peojU1d+6cIKDvWAmZ7gd40rhDLVJpl3xA8HifS3eEpiTD9ce2GDs9eqsHHJtQBZ6BXvOGPoKkngf/94ykMEkkozH3kP9AGC8HNt9b1erjEmWVqZ+83gH9Vl0vB2LHnGZXzxytmxBbcqJBKTCerEGNtni7UHVJs6BQ2A/tZFbi0IdouQNvRyMKp2JwsAEgrtS/oWe3UhCQYh1Og5bdQOq5tmiZh/GXLCyoMd4iNON9wen5EOATg5QD4rifspyw7PJouiCYjiq4KmVSa4dKkJLTKsM9yudTmpehVWHaF416jV1XsOFzDXqXXJ0eBy0Yai3O6R9WfsOS96sSyj0s9asuVxoL3VtFjXf2eAyfz+0TUYynSQ6qQRCVJqwEHSp8maWz7xUHJrwIDmQ=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(396003)(136003)(39860400002)(366004)(376002)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(83380400001)(86362001)(38100700002)(966005)(6486002)(478600001)(316002)(122000001)(64756008)(66556008)(66476007)(110136005)(66946007)(2616005)(66446008)(26005)(53546011)(71200400001)(6506007)(76116006)(6512007)(33656002)(36756003)(38070700009)(41300700001)(8936002)(5660300002)(8676002)(2906002)(4744005);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <4F43373E81A388499DF927543D8F5713@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8205
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000048.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	a231c22b-6506-40a8-66ba-08dc28e55a7a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AnNJx4ijgxEVS/Kxs9Z9YZjNRxg7g2X9SMfaiGQQDFa0O/2XqSXpDLJEG46ghfSb6SFBNrkP6DHwwH3dxVznyW6ICBZo9nYVe7gXdABUJ7oEg6H7gHDwauaHJe78ugn35PxN3IppsSBV/ukuhQ+RCL8dSiA0sLA1LSvkM727HZhR56qPLG06cMbnQ73fWnyal9hoqA5KsO5xto90kC23LliQR8FLC4weM2p93yPoHQlx10MbWH3HVsGkmXd4UKh41DFS1eCxpqLa7CDJ7/ZEFGPZN5U74zEt9aw6AZk2KBmpfhgHEd2lofBMfetvCrSGdmq5k0DEy9NGo6rz4QBPKYde7QddPkPMlH6edX569jsFRRNDrRmVPpfCVDggdYNZtZpQ6c4hWoL4nOs0d7+DGJZo/rDiT0PLyG/0TdSd5KecsUoc60fbFvT/fYX/c7ICVFy86xFfmCPMj1EWVrCLq00LKbfFCWZzGkY06Y6CJ3yUTU2yLcqQLQLA4paB8aOb/6/H3+N5XcPkkxlZX/Z4nu6HqCvQ1U/snvKmbLG8F+3F1vKLQu6FiA7Gnv369HAqvIxAjXMM3YRXBqp8kaBdhw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(136003)(346002)(376002)(396003)(230922051799003)(82310400011)(186009)(64100799003)(451199024)(1800799012)(36840700001)(40470700004)(46966006)(36756003)(41300700001)(70206006)(110136005)(70586007)(316002)(5660300002)(478600001)(86362001)(33656002)(336012)(966005)(356005)(82740400003)(81166007)(6506007)(8936002)(8676002)(6486002)(4744005)(2906002)(83380400001)(26005)(6512007)(2616005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2024 20:34:40.0216
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: edc44a87-c429-4c05-a464-08dc28e55fdc
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000048.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9617
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 20:34:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62437

T24gOCBGZWIgMjAyNCwgYXQgMTY6NTksIG1hbmp1bmF0aGEgc3Jpbml2YXNhbiB2aWEgbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZyA8bWFuanVuYXRoYS5zcmluaXZhc2FuPWdtYWlsLmNvbUBsaXN0cy55
b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gSSBhbSBpbnRlcmVzdGVkIHRvIGtub3cgd2hhdCBj
b3VsZCBiZSB0aGUga2VybmVsIHZlcnNpb24gb2YgdGhlDQo+IHVwY29taW5nIFNjYXJ0aGdhcCBZ
b2N0byA1LjAgcmVsZWFzZS4NCg0KVW50aWwgd2UgaGF2ZSB0aGlzIGRvY3VtZW50ZWQgaW4gdGhl
IGxheWVyIGluZGV4LCB0aGVyZeKAmXMgYSB3aWtpIHBhZ2UgZm9yIHRoaXMgc29ydCBvZiB0aGlu
ZzoNCg0KaHR0cHM6Ly93aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9SZWNpcGVfVmVyc2lvbnMN
Cg0KQWxzbyB0aGlzIG1haWwgaXMgcmVsZXZhbnQgcmVhZGluZyBpZiB5b3XigJlyZSBwbGFubmlu
ZyBvbiB1c2luZyBTY2FydGhnYXAgYXMgYSBMVFMgcmVsZWFzZToNCg0KaHR0cHM6Ly9saXN0cy5v
cGVuZW1iZWRkZWQub3JnL2cvb3BlbmVtYmVkZGVkLWFyY2hpdGVjdHVyZS9tZXNzYWdlLzE5MTEN
Cg0KUm9zcw==

