Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2F618C433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 15:11:44 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.80])
 by mx.groups.io with SMTP id smtpd.web08.7437.1657120302991868816
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 08:11:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=SjmbXLgU;
 spf=pass (domain: arm.com, ip: 40.107.8.80, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=ROALdz1YbS5AIW1p5cZwQzH+qtkwMxmofsY8VnjjcTTncQX58sf6PgXVkpm4vmzzgsDINNIRT7mM8W+64MLg8BzHBK100Je+Bqj/FKwzSJgme16p68DIbR7ntb2tf8gslhDfqBvQdoR60EpoDSSYI72MCuX3XEBG67EhtBLbwquCuQPK6/sKk2DvfEvh/X9eR/LFCq24zcUZXIYoUf2XwgI0KrrpYbdwkuJIKaV67OOF+SpdI/7PR3HmTjJz4B4sWyl0uTmbNmbDdO47qh2JpKTF1uealSYc7YWp2nOUlx2byn+Do8aPX9GIT4G5WekXoM5cYauGjB2VcvYyFSqNoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i0hVoAqz9X0h/obbUKEjeoXGHtBeHUNETMqiim4vAqg=;
 b=VvNm3qltMwpckltpEzbnu0HtvEfaJUB3v8vPptdFhLUrX/Qpy1eFJJDjboJPsJtJxVKoUPvjP8o39mmInBJVZa7PdNXDMh6PTnmxsmq2LFlabY00dLrnP6woF1RP8uRm41LmYLe8Qgj4bFXMoB+K4J/qvZpZSgxszhsQjd32PwDVFFQn9W5gcOWkh0hi3cCCs6jui0xir5cN3kvBq0tPAtdGtCNTEZWQE7caRco8B9nbI+rrh54q048/oszx+9vu64xRufCz1RUkFDb/8lsqNZdGEhYzSpZFZXEtwgdjAVHhk8DIzHUJxdHPoQJDLDn9pMslWHNRBUcyDBs+wKEvrg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i0hVoAqz9X0h/obbUKEjeoXGHtBeHUNETMqiim4vAqg=;
 b=SjmbXLgUWzsUi72akQVIbvLeqVvl+UzIBLi3EhQk110hFnB79u/s7Z+gSl9XKl3GHk9MU+qyrRDl1dLEbMu9e9+6/ua5GI9V62+XdtJifvL+p0TN5YsIxCO6/x+wMnJrHad5L+CcAZU6mxEBTadZ9QcG+2E5paA9ViAPte0c+TA=
Received: from AM6PR10CA0056.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:209:80::33)
 by GV1PR08MB7802.eurprd08.prod.outlook.com (2603:10a6:150:59::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.20; Wed, 6 Jul
 2022 15:11:38 +0000
Received: from VE1EUR03FT034.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:80:cafe::bd) by AM6PR10CA0056.outlook.office365.com
 (2603:10a6:209:80::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16 via Frontend
 Transport; Wed, 6 Jul 2022 15:11:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT034.mail.protection.outlook.com (10.152.18.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15 via Frontend Transport; Wed, 6 Jul 2022 15:11:37 +0000
Received: ("Tessian outbound f9f15f9daab2:v122");
 Wed, 06 Jul 2022 15:11:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: e7517e15097a3f0c
X-CR-MTA-TID: 64aa7808
Received: from c3cf4733895a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 4831A6B2-45AD-410A-BD53-776A00DAA04F.1;
	Wed, 06 Jul 2022 15:11:30 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 c3cf4733895a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 06 Jul 2022 15:11:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Xgu4h0suMVM0wXkupFiUw7WQaGoscUIH7G8QqU83pRiJaXlVmQ4zSK3B/Ahvqr8P/bbqHZIt2SD+6q2MLZT0tTb7hN8dgx+ewLIQk0p2J8xLJv5JAZrc0ShIDyrVUykLh7YDFDlvF08N9Vp2YYxkCNdoj0lvn63ncM1nHuhoPkzBY2W9aLmlpxjssB5kACL0zasqJ9E68s8zWA/l72yKmxqHEm5FXfklCr2095gql9+TRRty8Aa1ACb15MptKO0v7xtngb5eTQ1B+LJuQmsD2imDRYe+23KVFIMnAEuP3JGuPvd/q5eqYaQfaaoUfnD0TVv7LKbffzU6OiSsV67pAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i0hVoAqz9X0h/obbUKEjeoXGHtBeHUNETMqiim4vAqg=;
 b=Yc5R2eyzI7QvZWXWvHOxUWgSar9qzy3O94AEw6EcdE1QXi1ui7TMUO659tMJ9e3oKWZ6H3Rt4z4CEejLy6riSHZP5/gv5lCxWrjW9Poa4a3UmcGsJlK/BsY8pOOQNlGAl+i+DyQqFzDnZt64CMrfxlkBbvyDUcqiC8TzfXkXaR7V5XQp0R8c1rRCncYs1AclLgQQL9xyZ9DSZw5aF2M4c7Y+86mU/e2AW3+eK4A0IZ2bxoVN4ROp16E2xX2zrAPfctvnhNX3RhHd+uvg7eaPCPjscmg6HrZqBcsInS3+RXn68b5a/4DAOJUkq/CXXgrBjFEl/YNtqaqAxNw28XdTaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i0hVoAqz9X0h/obbUKEjeoXGHtBeHUNETMqiim4vAqg=;
 b=SjmbXLgUWzsUi72akQVIbvLeqVvl+UzIBLi3EhQk110hFnB79u/s7Z+gSl9XKl3GHk9MU+qyrRDl1dLEbMu9e9+6/ua5GI9V62+XdtJifvL+p0TN5YsIxCO6/x+wMnJrHad5L+CcAZU6mxEBTadZ9QcG+2E5paA9ViAPte0c+TA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VI1PR0801MB1903.eurprd08.prod.outlook.com (2603:10a6:800:89::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Wed, 6 Jul
 2022 15:11:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926%2]) with mapi id 15.20.5395.020; Wed, 6 Jul 2022
 15:11:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>, nd <nd@arm.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper 2/2] config.json: remove
 non-gpl3 job
Thread-Topic: [yocto] [PATCH yocto-autobuilder-helper 2/2] config.json: remove
 non-gpl3 job
Thread-Index: AQHYkUKDJeXvJIoO9EaGthBERyZi2K1xcs6A
Date: Wed, 6 Jul 2022 15:11:28 +0000
Message-ID: <F6664C21-E0CC-4239-A41F-EF3922D3A241@arm.com>
References: <20220706140437.817618-1-ross.burton@arm.com>
 <20220706140437.817618-2-ross.burton@arm.com>
 <CANNYZj9gm3mtfHP_QzjLjoOK78x6XNFUwSHnepVeE2ifxbJFvg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj9gm3mtfHP_QzjLjoOK78x6XNFUwSHnepVeE2ifxbJFvg@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 20f642ce-bc35-40e0-a002-08da5f61d2c4
x-ms-traffictypediagnostic: 
	VI1PR0801MB1903:EE_|VE1EUR03FT034:EE_|GV1PR08MB7802:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 n9M1k50Kf8R6fg3kHmcBE6ZvprY3+CwALkCjq3xb47X6pc7g3ExTKyopcSPNeb9EQas2cBOW/ssmg9Ofjr0ZtRupX+5dLa8+gS4rSB9U7SWUWe7OZtQm09kEVxrreWuI84K0jVywi+hgRDrJ9Uvy/DKeAbRUUJEjFZAJ0u/p18fkX83rqZ4eId3HOEn0QeyzGzI6zz3GeaXaI0OUKO0+zJLy/IeDDKq96kEnxSh3BvKKxvindZer3yU6Dw8ZOlEUW9sQPDwLsdLI4Id2KrxIGjTFzY3fGMfSYPySFcjn9Zx5NpUaUvoDgMVTtBdz1Yb+In0ROYlA1qTFx1woeYrXrz9wYL3wgba8l4p/JbjYvGuwkNH9UPmf5g9h2j22dPfrX4ATkChHibKmXCiu/5GqBZqkfR4MLHsW26zQNqTIP14P2caRNT5w72ezyf8mKESp4rUJ0sr4t1yvZA5+53QdP1r2YXet41kLXXKKLppgMkCurDPlf9bUONoK491EPa/hYO6L/f/u2Rnx3SkXIeI60qdaGREGQzftY9mKPXcaJ04aQzKe+989QIlCEqTvD9MkjFOKoMzLXLLTVqNZ1J+vs0e+lzA/kcdKllia/OscEF4mdTDIutjmVhkLfGlEHvtt68EkC8mwdqMNrrvuSPhTVppPFz6vzwyxPtReA4wj2SzgmONP35K3txQLG1/IYoLVI3UBku3FHM57ytELk+J6hyod8d16t4+nvGvIcJ5BYNbYwsmEEhrtCmvR2dve/TeXEgQ9l20/rm2furSNFALTqX5bkUPL2T9iu1W9dDQr7ITaPxCgd9pB9DOI7m1Uoyv5A17q8QXpGjM0hmnSWInHsiNockNR3tVn80YfSdKZgr4=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(376002)(366004)(396003)(39860400002)(136003)(346002)(2906002)(41300700001)(2616005)(316002)(33656002)(38100700002)(4744005)(66946007)(64756008)(4326008)(8676002)(36756003)(122000001)(38070700005)(5660300002)(71200400001)(66446008)(66476007)(66556008)(8936002)(6512007)(6486002)(186003)(6506007)(53546011)(26005)(6916009)(54906003)(76116006)(91956017)(478600001)(83380400001)(86362001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <A4059C65C2707F44AC5018BA13C76F6D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0801MB1903
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	d1de5335-5149-46b1-c0dd-08da5f61cd00
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wysbQFXZWOahim2JmSkxAS0tHfh0ueoILDpM2+/ubQ+zRsrfmFwZlkXePrB3ggypK0KEaUibKWmwXzfgmnFNF5NI95KPVUEF5XHitr4e7Frap/Q2AVkjlCfcoopoUg74H8y8mrosmEDe3ax2Y6kTXP90XzshevlyumF7949SwD5NCp3lqrjk73o5CeErPVXJXmMOb9GtLGi7rton6Aa4LnSscPs5vQE++gzBr0NrSc6ZVIUgpwZya4y2YV+AsJrS+HOvbyBIKxRK+m4mxA3BwiTjNoA/9BKJeS2trjsXokUfOuRyvZl09MnhYDMmGnY3I2M3J25H1UbeY3jiXC9K9YZWMx50fe9f41GXhCPmUmmGFoYS6/sbVdGZPEechd3cHOQb43gujBfoi99UtB0wl60es5XJ5Nc/ecpnyzTnO8SF1CilOJTqxw4RWb0nfvZ8cOe/k+rKut2lA1wXBNBbbVHQV7t4iDdT7Qm/0AIdzpkqn7aeDJBZ5RFOje13mdxM8yuFzOxcl70bejDaiwQXUx2R8+E6vmIXz647MCu5jpl6QbbG70H5Bw0y5ebTeVwnLKjlratUI3doRCUVYWwyHmex949FZmdKRHDlkmp9rCsiLOtHuMHcPjWiWG/3ZfPkoyrFkNExSlIieqd1J1Z2AUQV640BbhXgOHIp2t1yTyx5yAiqvtGGmESz1SsdAUhdSbWz6yoJUfT5n1hmipjUEgZYN4EiFES/EMOh1AOsj2K/JPznn008xbFZYgjkzt2/xbqoTVXGKIQIycVDT6bX8V9DafAydarLX2IJ5OagU622K7wAQABnPsroLfdCuiz2
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(396003)(39860400002)(376002)(136003)(346002)(36840700001)(46966006)(40470700004)(53546011)(4744005)(5660300002)(6512007)(81166007)(26005)(41300700001)(316002)(54906003)(356005)(82740400003)(478600001)(86362001)(70206006)(6506007)(4326008)(6862004)(8676002)(70586007)(36860700001)(6486002)(8936002)(336012)(33656002)(83380400001)(82310400005)(186003)(47076005)(2906002)(36756003)(2616005)(40460700003)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2022 15:11:37.7820
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 20f642ce-bc35-40e0-a002-08da5f61d2c4
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT034.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7802
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 15:11:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57465

T24gNiBKdWwgMjAyMiwgYXQgMTU6MTMsIEFsZXhhbmRlciBLYW5hdmluIDxhbGV4LmthbmF2aW5A
Z21haWwuY29tPiB3cm90ZToNCj4gV2hlcmUgYW5kIGhvdyB0aGUgZGVjaXNpb24gd2FzIG1hZGU/
DQoNCk1heWJlIOKAmGRlcHJlY2F0ZWTigJkgaXNu4oCZdCBxdWl0ZSB0aGUgcmlnaHQgd29yZCB0
byB1c2UgaGVyZS4NCg0KSG93ZXZlciwgbWV0YS1ncGwyIGlzIHVubWFpbnRhaW5lZC4gIEl0IGhh
cyBubyBhY3RpdmUgbWFpbnRhaW5lcnMsIGFuZCBpcyB3b3JrZWQgb24gb25seSB3aGVuIGFic29s
dXRlbHkgbmVlZGVkOiBpbiB0aGUgbGFzdCB5ZWFyIHRoZXJl4oCZcyBiZWVuIG9uZSBhY3R1YWwg
YnVnIGZpeCwgdGhlIHJlc3Qgb2YgdGhlIGNvbW1pdHMgd2VyZSByZWxhdGVkIHRvIG1ldGFkYXRh
IGNoYW5nZXMgdG8gY29yZSAobGljZW5zZSwgb3ZlcnJpZGUgc3ludGF4LCBldGMpLg0KDQpCeSBk
ZWZpbml0aW9uIGFsbCBvZiB0aGUgc29mdHdhcmUgaW4gbWV0YS1ncGx2MiBpcyBvYnNvbGV0ZSBh
bmQgYWxtb3N0IGNlcnRhaW5seSBoYXMgc2VjdXJpdHkgaXNzdWVzLCBidXQgbm9ib2R5IGlzIG1h
aW50YWluaW5nIGl0Lg0KDQpUaGlzIGhhcyBiZWVuIGJvdWdodCB1cCBib3RoIGhlcmUgcmVwZWF0
ZWRseSwgYW5kIGluIHRoZSBNZW1iZXJzIGNhbGxzLiAgTm9ib2R5IGhhcyBzaG93biB3aWxsaW5n
IHRvIGFkb3B0IHRoZSBsYXllciwgZml4IGFueSBvdXRzdGFuZGluZyBzZWN1cml0eSBpc3N1ZXMs
IGFuZCBtYWludGFpbiBpdC4NCg0KV2UgbGlrZWx5IG5lZWQgdG8gZGlzY3VzcyB0aGlzIGFnYWlu
IGJlZm9yZSBmb3JtYWxseSBkZXByZWNhdGluZyBpdCwgYnV0IHRoaXMgc2hvdWxkbuKAmXQgYmUg
YSBzdXJwcmlzZSB0byBhbnlvbmUuIElzIHRoZXJlIGFueW9uZSB3aG8gYWN0dWFsbHkgY2FyZXMg
ZW5vdWdoIGFib3V0IG1ldGEtZ3BsdjIgdG8gbWFpbnRhaW4gaXQ/ICBUaGlzIHNob3VsZCBiZSB0
YWtlbiB0byBvZS1hcmNoLg0KDQpSb3Nz

