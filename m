Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3AD20C624B4
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 12:14:57 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com (EUR03-DBA-obe.outbound.protection.outlook.com [40.107.104.53])
 by mx.groups.io with SMTP id smtpd.web10.89320.1700741695457011126
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 04:14:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cTsVlnKX;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=cTsVlnKX;
 spf=pass (domain: arm.com, ip: 40.107.104.53, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=fuY30reEQS3BUUWGaYkNPqKSXK9e4CHxEO032JDnvhLoegysfukbxujY7lCU77l6FvSJs0UTKGZnrvx72c2kUA5lLNt8cXkPDj7rC1s5OBeGVYc2W5vLkoTC6xv+UfE5SUKnylXw9oUzQ8kJOoXTs64jpnmp7O46WAQ78YLjQJ0NpR7qvbTCKSEJoGgCSDLsRX5NSrl9LCYmKxqcsAdwislZmlgtUzwxxymTzheNDBudiHf4Moi2S6/ufveAIAqRBng3CZH5iQ1ZhK4K1b9VHlsf65U1847ezC5DA1ZyMnbSssxL+WJv1hwYb1rtsCwRTqkzoYp0XGd9vGjTggF3MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFvGWUHmtqLJgQc4CMOoirI3npMlfcOdGPfR6zQ9+p4=;
 b=idd+tswyghnxdr25ocNtlBByYeKRflPFVT/bF+co3IpznD4O8vPFm5DJidHJYw2kchWYr6t4gkeUnEuBfWTdwC1cl6HHHNaCcyhuuNPmW3WZtfLFLjOgy2jVjKctr2zjZFmtLlObbFLrW8Dgcz/+hBPMkxIjpJeSdJtT1RYLrXQZTrZ8lEUGoClXVZwgsiZai0TqPGjy00bQXX6qs77NcsNn9p12YR4PWBmBTsKS8YRpxT+KMSKBB7nkMrkOj+ZrrwMTt0rHyD/ukrmc87GqZdJgsq6idWGr2+1yUNxdAOamb1lRUoFl4XgxDL+V2LOoEJKI+B2Mc7njkAZi/2u89A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFvGWUHmtqLJgQc4CMOoirI3npMlfcOdGPfR6zQ9+p4=;
 b=cTsVlnKXUKHNnLvB8XUDHtpltbNEk4hcNhAIx7Upr7C255aQDBlWB0RotMMYyT+KBZFrhX+HlqCT5pqxZnR2Od1j+X/2Z8P1PDDtYfXtOn9i0Qq/qwdt1X/lchp6rZuSp9Mi1NGEozbk+WDAE6xff7IxS9pltO0NHTal+zEb8tw=
Received: from DU6P191CA0008.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:540::20)
 by DBAPR08MB5767.eurprd08.prod.outlook.com (2603:10a6:10:1a7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 12:14:47 +0000
Received: from DB5PEPF00014B9F.eurprd02.prod.outlook.com
 (2603:10a6:10:540:cafe::8c) by DU6P191CA0008.outlook.office365.com
 (2603:10a6:10:540::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20 via Frontend
 Transport; Thu, 23 Nov 2023 12:14:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B9F.mail.protection.outlook.com (10.167.8.169) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7025.12 via Frontend Transport; Thu, 23 Nov 2023 12:14:47 +0000
Received: ("Tessian outbound 8289ea11ec17:v228"); Thu, 23 Nov 2023 12:14:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 09cd4465676f70cd
X-CR-MTA-TID: 64aa7808
Received: from 958e880dc6b7.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 3A5B4B04-1AED-412B-87B4-11855CF98BE4.1;
	Thu, 23 Nov 2023 12:14:41 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 958e880dc6b7.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 23 Nov 2023 12:14:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k2i6IsYyY1l5gdxpDQDzuk0dIl17DpkiB3SOWE8p1OkJlkdyZTJ5rJTFR/nTzg9rUMXwEN6bH9t/AaZiJ3deliJhYbFnlBCR9n2J+r9SVzgqXjXjVceFmTZ2QBuhQB7dndeyPO4qrC8+3HrFzrc8/S1QGMnTGsGcQIib+tL/Jvo3Wz7ygA4o6uI5me+C3MTuZtNZoQOBdH96F6g3CfrgH66EwWroCKjrdvvNUSZuC3mKOrCo1TQ6BSh6NlwDdCXHPJI/9Vf9FmECPkDH0IL6RHCB0OWwxBP2XBXQxA4xIpLVP4DbGixbfrAqZSvUlAi90x24iaK738HcWmVvrFGI5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fFvGWUHmtqLJgQc4CMOoirI3npMlfcOdGPfR6zQ9+p4=;
 b=hsOnP3jz6LYC/e7o+dMiNbVMvXsMwViF0l4BXsZJy5C84EgnGxp4F3lsR1UrENJ2JGUAzp96Q/W7cQElkFFyCkJ2eAt1ZaNt5MFrX9tMlO+Xqws3r2umQHEjYVRRQSfLTE7Z7fLB3EXFJ9Hau9Rd1hiyNYgD1IbI5QpTFfeO0CvQ5h0RXAd9TVtvtqt1Kx1789G09+ugziAs1r/mtYr+ZzAxOT2QtwDxow0rYxY6bpEBBOUrsFAdZmv+CO7v8yY7LihfzF8bLhQ/gfX66zkPxPs5zdvcFwGlr++dPSZ1+QZdTK0aY53j6xRxqAtBNPrpcx0788+GqJ+SUP2HS4hUBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fFvGWUHmtqLJgQc4CMOoirI3npMlfcOdGPfR6zQ9+p4=;
 b=cTsVlnKXUKHNnLvB8XUDHtpltbNEk4hcNhAIx7Upr7C255aQDBlWB0RotMMYyT+KBZFrhX+HlqCT5pqxZnR2Od1j+X/2Z8P1PDDtYfXtOn9i0Qq/qwdt1X/lchp6rZuSp9Mi1NGEozbk+WDAE6xff7IxS9pltO0NHTal+zEb8tw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB8936.eurprd08.prod.outlook.com (2603:10a6:102:340::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7025.20; Thu, 23 Nov
 2023 12:14:39 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7025.017; Thu, 23 Nov 2023
 12:14:39 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Topic: [yocto] [yocto-autobuilder-helper][PATCH] config.json: Add
 lib32-matchbox-terminal to multilib images
Thread-Index: AQHaHOYJS+jGppb1UUOxtF3z9OWfWLCHzHaAgAADHoCAAAPVAA==
Date: Thu, 23 Nov 2023 12:14:38 +0000
Message-ID: <74FBAD99-E844-4DF2-AD18-B02D2613228C@arm.com>
References: <20231122014822.3871458-1-raj.khem@gmail.com>
 <25CE6021-2333-43D8-B3E4-3207FEB8ED4A@arm.com>
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
In-Reply-To: 
 <CANNYZj_9_yY5H8fX6=Vy3FFgiVu1V8uOJxHNdtMkfMb37JXCSg@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB8936:EE_|DB5PEPF00014B9F:EE_|DBAPR08MB5767:EE_
X-MS-Office365-Filtering-Correlation-Id: e702ef5c-b231-4a09-0ff0-08dbec1dc90d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 cy/lPBu66YNsUcJek5S7PNUqxtTS7Y2J+gLbr8xgi6jwpdThPERtMFr/s+CHP1Xu5GQmcx2FG59woKsgdUN2K5Bad6VjKkqzmfzPOYgZKh5Uk1NLgjJsw8cYuccjIcucVOpvrLkbMODA67GD9iPzEFr2R+JNOU12rrG/4M7axAq0r4cwJ609rGKeKAPflUig3j8ROrnsj6eohlnZFuTW2m+2/BeXVU0nkZw6nWTTrf/Mbi+iliDMkCk1PvlX5GbQtUA9FIzKmw2HW4+sFdBMYfe3JOst3ru7wPyD5VaGGhdD80d0/xndMHfgzIs1IcAUKJcBvLo72ydCVVR31uoI3GNrcL0S5U+HfKNwWOndtEhqS/ut5ASB0aVeZlhyAw3SsuM3RWWAWoMMkxkRzmJtGN5Bf9XaE8ro1SogQRHgmZR2EXeKILtgGaZv14M/aC+FHvs8iCKopsTA7+IjmNI12qzjkOvoQcbR3IZny0EQOuVdPqcmIMX7j2xFqaXShGxGU7VQ/Bi5hJ7jbxAwaBXQ6IAQyd47XZj8jekqHX9bB7CrM+3L/nI4r90Gs3eW/du+jSB9Q9JWTt2t4UOhpkUKVTTL1Nf5pTTUZSMoZP6m149dquq2Gf2qVUbw8rtbGJwDmvns8KVXfStbmK811LWnkw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(136003)(376002)(396003)(39860400002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(83380400001)(38100700002)(86362001)(36756003)(33656002)(38070700009)(122000001)(316002)(76116006)(8676002)(8936002)(4326008)(54906003)(64756008)(66446008)(66946007)(6916009)(41300700001)(66476007)(66556008)(91956017)(5660300002)(4744005)(2906002)(53546011)(6512007)(26005)(2616005)(478600001)(71200400001)(6506007)(966005)(6486002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <55B6A2CF11E43B459AC33FDEECD15483@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8936
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B9F.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	62f844fb-8711-4bef-2152-08dbec1dc3e8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IANDa1/Mwr4ERiiPm0kseAEk8klkI1GPG/uqv0t3VwtfgWb3BIBiRlYQA/qhio8cZEUWYk+pVesmhINwqFxJZFYuFMojrYXC3zHu4MY9tX2YHkD86VTD+6Z4s82IISy78jlBHf7GSCx0ezbmkSzi9oUQRC8h5dSfnD6V7BzHfTrCqrgfZozgR/0nklrGDh3rCQGwNle2eZJFCDuBQ/Q1ZDlmCkyJzK4vHWcWZaPMDPt5miEyh5wpxX3KD4mITno5U4dOA0A22d0tDbbmQPzrXB5NYeXgLfyOCRlqZRfK6B01ywpF7LYqcBslVfLEJ1lGryxtFbH7g9A6xMEEkHOm+MwaNaAcoVHQ6R4Pefq/cceX1DA7AuBeKTdiKjFeZSBAO+RXz/osI6dfka99y/Cnxf3HHTMQWvNp+8xoOR4PcxIdLzjfhUpOwNKhaSBKYBKvflp5yoClliUMX8r9ldT0P7uMLc1v2/vNWLUddbvDySrY3SASBZ4+P0JS043C2BIAqyvLtRqDsj2LmgEtpw1kwIhIfxH0mh8vVQYELUxv0a/rGm47ESxpMQc9lpO04xTYNqnnsmvezDb36qODRS0dHiSMnzhPGf7+4+fMquaG7MBLr6gq7kN8O1Yx1Nm1ugTzNgZFUwErJU+FbHCL1EuHBaA+ALIGoTVMffMGA2X+9S4BtUX7d8+TuV03tDd53e4UumsCB5M/C98gcnJ013VoXQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(346002)(376002)(39850400004)(136003)(396003)(230922051799003)(82310400011)(64100799003)(186009)(451199024)(1800799012)(46966006)(36840700001)(336012)(83380400001)(47076005)(82740400003)(86362001)(36756003)(33656002)(356005)(81166007)(36860700001)(70586007)(70206006)(8936002)(8676002)(4326008)(316002)(6862004)(54906003)(41300700001)(40480700001)(5660300002)(4744005)(2906002)(53546011)(6512007)(26005)(2616005)(6486002)(478600001)(966005)(6506007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Nov 2023 12:14:47.4340
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e702ef5c-b231-4a09-0ff0-08dbec1dc90d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B9F.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBAPR08MB5767
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 12:14:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61740

T24gMjMgTm92IDIwMjMsIGF0IDEyOjAwLCBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmlu
QGdtYWlsLmNvbT4gd3JvdGU6DQo+IA0KPiBtYXRjaGJveC10ZXJtaW5hbCBkZXBlbmRzIG9uIHZ0
ZSwgYW5kIGxhdGVzdCB2dGUgZW5hYmxlcyBndGs0IHN1cHBvcnQuDQoNCkFyZSB5b3Ugc3VyZT8N
Cg0KaHR0cHM6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9wb2t5L3RyZWUvbWV0YS9yZWNpcGVzLXN1
cHBvcnQvdnRlL3Z0ZV8wLjcyLjIuYmIjbjE0DQoNCj4gQWxzbywgSSBkbyBub3QgdW5kZXJzdGFu
ZCBob3cgdGhlIGZpeCB3b3Jrcy4gSG93IGRvZXMgaW5zdGFsbGluZw0KPiBhZGRpdGlvbmFsIHBh
Y2thZ2VzIGludG8gYW4gaW1hZ2UgcmVzb2x2ZSBhIGNvbmZsaWN0IGJldHdlZW4gdHdvDQo+IHBh
Y2thZ2VzIGluc3RhbGxpbmcgZGlmZmVyZW50IGZpbGVzIGludG8gdGhlIHNhbWUgbG9jYXRpb24/
DQoNClRoZSBwcm9ibGVtIGlzIHRoYXQgdGhlIGlwa2cgcm9vdGZzIGdlbmVyYXRpb24gd29ya3Mg
4oCcaW50ZXJlc3RpbmdseeKAnSBhbmQgYXBwZWFycyB0byBjcmVhdGUgdHdvIHBhcmFsbGVsIHJv
b3RmcyAob25lIGZvciBub3JtYWwgb25lIGZvciBtdWx0aWxpYikgYW5kIHRoZW4gc3BsYXRzIHRo
ZW0gdG9nZXRoZXIuDQoNClRoZSBzY2hlbWFzIGFyZSBpbnN0YWxsZWQgaW4gL3Vzci9zaGFyZSBi
dXQgaWYgeW91IGhhdmUgZGlmZmVyZW50IHNldHMgb2YgbGlicmFyaWVzIGluIC91c3IvbGliIGFu
ZCAvdXNyL2xpYjMyIHRoZW4gdGhlIGNvbXBpbGVkIHNjaGVtYXMgYXJlIGRpZmZlcmVudC4NCg0K
VGhpcyBmZWVscyBsaWtlIGFuIGlzc3VlIHdoaWNoIGhhcyBleGlzdGVkIGZvciBhIGxvbmcgdGlt
ZSwgc28gaG93IGhhcyBpdCBvbmx5IGp1c3QgYmVlbiBub3RpY2VkPyAgRGlkIHNvbWV0aGluZyBj
aGFuZ2U/DQoNClJvc3M=

