Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 42FBAC433FE
	for <webhook@archiver.kernel.org>; Fri,  4 Nov 2022 11:05:40 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.71])
 by mx.groups.io with SMTP id smtpd.web12.9680.1667559930337075408
 for <yocto@lists.yoctoproject.org>;
 Fri, 04 Nov 2022 04:05:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=oz/aoYSR;
 spf=pass (domain: arm.com, ip: 40.107.20.71, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=oX4DOsdBWVJ2ao14xqlItxh7loeENxKfRmaNGGbR+n5025jylNi/4APXJ2Z2IZztXenrm8vLcol+HcgNJHtgXj5xIM6XL3/CHxqrEFrk/8MvxSS48x63zxFYDiLbYS5iQ37K/LdZ8+RN9zOwnT8hoXz+DzwRppsEjopHk8Velwri4CD7tgnASeSnm0j8gE3/olMogz/ktKqCWlxlxh/9Wy5bVF8N6f6lecTuMtRx1fgio5rsGfHWTTxOk0fIC3e2hbIvtJ3uI4SJ6zCfVe4rFCAq1GpQQCgWMxnWepP7geSCDgnqzFRp2racjjpceR+bz5Y0Y3DpXSiC99ZNR8VYiw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSgeWsf/MiuB+cysrqSGI3YqioAcO+NYprcJVmjJyU0=;
 b=oWIxn/86Q8CSvlfKvqU+IorwUXDN6RFWN8s29Oco2k3+Nf3E1S32N6c0twiRHEP0WmtkDcUc5Eh4cA0nXqyygxuFbBwLbnYssfv3kj0xbDl4bFfhgMrpSiHLUtxPGGMMhoH2LSJWTUsWg0HonT+gVnWjHGFN4Pc50nPxHY6CyyU7BS0HGA7yeNUM8+ULoiErfB+0khb0F5EKjMQgQD5Rl8i9SAZSz+tFoSQEYFXfecbB/mq/gw/LLYr99t4vCTErOvU1aLgeqHcQL+4pNaB+38elmGqR7aRCwBNVGI7a44pP6PlI5rTMHnzw7br96uXHsVwr8QuXOksZKtfvmGgQcw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSgeWsf/MiuB+cysrqSGI3YqioAcO+NYprcJVmjJyU0=;
 b=oz/aoYSRbrAewIBg3AWI3Nxm5dOFlQAm0InJ+KF9yGX2CLGVLfMnhZ7oKE1xm/weQU2jDgkbZ9qZDjqwvlMZwCux0pmJjlr1fRRumVhqsf2LCldK9eTYNUGGg8uw1zFUKpsbtDT9lb3YotF8XvJwMzVXv4FJWWZmud/zHbcHtuc=
Received: from FR3P281CA0178.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:a0::19)
 by VI1PR08MB5328.eurprd08.prod.outlook.com (2603:10a6:803:13a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.8; Fri, 4 Nov
 2022 11:05:26 +0000
Received: from VI1EUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:d10:a0:cafe::2b) by FR3P281CA0178.outlook.office365.com
 (2603:10a6:d10:a0::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.22 via Frontend
 Transport; Fri, 4 Nov 2022 11:05:26 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VI1EUR03FT057.mail.protection.outlook.com (100.127.144.80) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5791.20 via Frontend Transport; Fri, 4 Nov 2022 11:05:26 +0000
Received: ("Tessian outbound 73ab5f36653e:v130"); Fri, 04 Nov 2022 11:05:25 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 3f4f2190474288a7
X-CR-MTA-TID: 64aa7808
Received: from 3e7ca852a3c3.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id BFB5E6FE-C3BD-49E0-9128-62AEDCE377BB.1;
	Fri, 04 Nov 2022 11:05:19 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 3e7ca852a3c3.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 04 Nov 2022 11:05:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfMTYndiIv3VltlwrZD0LfLwW0XqUfW8N6U4A5xqEO2vMd6Csbb+mpiHQue8XAxUmnGn6c4UjKARgLOEY13y5xHSVQWZuW/r6v3ya+uRa33E5od3YWvluqpSyAau7n1euxJSczUO5QXApN6xo+I7SMw+QKzW2j/McrzV6pX/XXckD8uys+ua5mka3odGgraNdXyBpwVKIiDQAfFk1n4wbSj0wtjKkgcFydRO0qvyiy37XDqudFDj50hlWjCHN90QSW0LuhaAvmcLyRcHFcvGPSKIRmwhRom7ehuZm3yNaAvSxuar1GACuStg2wK3qVfuxnsf4sM6JV38nksKdsufXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xSgeWsf/MiuB+cysrqSGI3YqioAcO+NYprcJVmjJyU0=;
 b=LL4g6AuO5aVqNyJXbVzbyhtixb5td93buPaAYig6O8rczvz7nYFeaThipfi4c99cCVunN45q7nqagce+G9+8mWo+/pznOYkU+uOlQNVPeUHt2bJgyn6iGVH9QTlobY0A9rL8om9zvK5PC2SMGTE0wCYZiELj+KT6prOxuR2EFlR8SoZWkwUwaACaVMO3Qv3gQWrm5k+FIez7VaVue1vlvuL98RNLCo2ONt52OezYmYd/GSHV3zf6cbYbUR4gDjLltG++ovJcgDk8bPeVWCL0xjkrgvATLlcpG9XRrLRj5NcwG/imLj+mF2YUF9bx8GwBG/qPj35f3if1PoT3FSKrFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xSgeWsf/MiuB+cysrqSGI3YqioAcO+NYprcJVmjJyU0=;
 b=oz/aoYSRbrAewIBg3AWI3Nxm5dOFlQAm0InJ+KF9yGX2CLGVLfMnhZ7oKE1xm/weQU2jDgkbZ9qZDjqwvlMZwCux0pmJjlr1fRRumVhqsf2LCldK9eTYNUGGg8uw1zFUKpsbtDT9lb3YotF8XvJwMzVXv4FJWWZmud/zHbcHtuc=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB7605.eurprd08.prod.outlook.com (2603:10a6:10:308::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.8; Fri, 4 Nov
 2022 11:05:17 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::af9:29f:ae3b:108f]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::af9:29f:ae3b:108f%4]) with mapi id 15.20.5813.008; Fri, 4 Nov 2022
 11:05:17 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "john.klug@multitech.com" <john.klug@multitech.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Python3 project without setup.py
Thread-Topic: [yocto] Python3 project without setup.py
Thread-Index: AQHY79dxWbrwGSF0NEiFYKRZUioPAa4umumA
Date: Fri, 4 Nov 2022 11:05:17 +0000
Message-ID: <C76A0F05-A40C-435B-86B6-A10CB6FC5EF0@arm.com>
References: 
 <DM8PR13MB5111D68232CC40829F86E9E6FE389@DM8PR13MB5111.namprd13.prod.outlook.com>
In-Reply-To: 
 <DM8PR13MB5111D68232CC40829F86E9E6FE389@DM8PR13MB5111.namprd13.prod.outlook.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.200.110.1.12)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB7605:EE_|VI1EUR03FT057:EE_|VI1PR08MB5328:EE_
X-MS-Office365-Filtering-Correlation-Id: 40e9f2e8-c25f-48b7-a274-08dabe547a26
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 bzpgov92ge9J2tm0wqw0HoL7H7CqNAV/bXOegQ5A38mPsFZwFMDFGZJcRTUaESAAoTSllnZPWREEj0x8AYps+9noo7DHlMURESgBgw6Rf4CdcTX9ElYz3X1nWvwHkUn8rSAV90AX7241GRpiQehjkiuTZkHk8zAOJO9qivmrQtPnlop0R57T/vOyE5jLWrqc4FunQzaXjzSgVYjJ3xQMHv3ITfOGQnNJSzh6oFP796bUSli8SgwEp4OlPKboMp+1k8DrG1Jf5uh4iuvehg2ODMGSPIV8b8296qhCGuI72jlDdCEPa8wr6dzggOCVNq8j+Hx0ge54Zhx1CQC9PJIJFL5W6aJtKCTlzXE9ceNWrHkXGE2qFRYoC7HnF4SMY3Q8Wf692MKhJCfHYby7tsFSEFHvQmdj0S06jkgoRM2WUFrsnpFWUPiqEEIXoI3GLMAR7gWz+OIw5ey76Fwdgjc0HrwUcE1dqTTHCpoh7WrFG2h3wncFa9LblLnQ9T5dUeejYJQ8Loa5bYmCSz5RJEUZBTt4FVfnYw0kt+jB4MzFaEtO0uIpJPIiEZ40W9yAEPX/sbqiDuvTZ/3OLL2kj2ZmwYwHICF7uzGVzSz75bH2o9GJVSUKaySXVno1G30c2K+HmFmI3yp9nRALWa8UMwm6ugULdvz/DgpTYxGfPFj1g3I1IGRDZXsw0qkTsmo5WsPYdZ2f3YsDXNlIZcxhGjXXH9ipl9eBdGIYv/5S+iSe7t0tZEDgxmu/OF2ydYPll7XUzJNQ1184gH03i8mfKBxeXFWuExm8B6iqk2ZpnrdZ1uZhSHLJ/FLajvxa2Y1Pum+nw+j/ZoqZdqvkiRzdD/rvkS2857J0Djii3T1AJiLoAgYQWWH2MH2yZCPV1f19qiZk
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(366004)(136003)(376002)(39860400002)(346002)(451199015)(83380400001)(2906002)(76116006)(66476007)(8676002)(64756008)(6512007)(66446008)(66946007)(66556008)(41300700001)(36756003)(86362001)(38070700005)(4326008)(122000001)(6916009)(316002)(38100700002)(26005)(33656002)(8936002)(5660300002)(2616005)(186003)(53546011)(91956017)(6506007)(71200400001)(6486002)(478600001)(966005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C06668E4D759D84EACFE304B6C9218FD@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7605
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VI1EUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	cb3b6de7-f95b-439f-5421-08dabe547529
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5m5PM1kp0VoEpqvuQw+3Xwv2gX9DDxMCQhBHdS9+R1/LUSWogUIP8Er55i5VuSHxPy2cD9dci/ULoVXNcvEjeV1bROewFT8Gqli/C6kM6oY7MKchKdGD4F9dNI7DqiCrc7vwqLBovEsiEOMHdtcHczhktxrSQDWZ/OqGDRqYxmv9HKD5pYbci6sysmcam+52s7hxBKtyFVaAavKnxq2ErtKizUomNkpMV2SWCFZE1aPfW6rozlOmZUkv2Olvr/GwyvOQRJwoShgFvsD8jn5O5KoFsDJpFj+QBA9gGj5kfr2eWL+jhv2zCbjP2aMY56Zkwjzs2zNH6DOmfn5YUqd9xY+JHa4zWAG8aw5rbtCWv/bAgykG44wj80bFXWXhyCJjGdB0br7mFfsBLerLO+nIlnL2ktuhlgBNgHH/d7b6S+UAUeOrKz2ZLJtQ6aUUG4J7lvk4LIJiOC7dRAZ3Pl1ijK+3/+SKdPgMvvw53zmjatcgjsm8aQs3792o8tQAsHHQWu78vMxRRA59f/eX8hXKtRwSYNUXP8+ltJOSgdsLWX2Ml/MG0Sl0Bh3GgC0/l78DXY/JG4G03yNP7clQTi5XY02kW06mnZa5i83L+4V2MSopt2/Ou8aEBp5GEGEJTFeWpfzvvOAmFFdBMjtratcD1G8o6mLJHBShaOp1RB4tmrJ1iSy4fopXYd43+2fICly165kE8LLonPUdLEPRLSs3TI8UwHpNKNRk64kNgJMl2uBa0abKFEnw3RfdwPkRw4Im8ajhEFcasxFebUxV+i1E/ruO3EZZ0JPCCNsvuESz5AfUW5P4n1jJpXuQtQvl2C5rYfilDpmdKuskcBDnofmojw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(39860400002)(136003)(376002)(396003)(346002)(451199015)(46966006)(36840700001)(40470700004)(83380400001)(47076005)(2906002)(36756003)(33656002)(6512007)(70586007)(4326008)(8676002)(41300700001)(40460700003)(86362001)(82310400005)(356005)(81166007)(70206006)(40480700001)(36860700001)(316002)(82740400003)(8936002)(6862004)(5660300002)(6506007)(336012)(186003)(2616005)(53546011)(26005)(478600001)(966005)(6486002);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2022 11:05:26.1135
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 40e9f2e8-c25f-48b7-a274-08dabe547a26
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR08MB5328
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 04 Nov 2022 11:05:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58487

T24gMyBOb3YgMjAyMiwgYXQgMjM6MDMsIEpvaG4gS2x1ZyB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8am9obi5rbHVnPW11bHRpdGVjaC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBJIGFtIHVzaW5nIER1bmZlbGwuDQo+IA0KPiBXaGF0IHNob3VsZCBJIGRvIGlu
IGEgcmVjaXBlIGlmIGEgcHl0aG9uIHByb2plY3QgaGFzIG5vIHNldHVwLnB5Pw0KPiANCj4gU3Bl
Y2lmaWNhbGx5Og0KPiBodHRwczovL2dpdGh1Yi5jb20vcHloeXMvbWluaW1hbG1vZGJ1cyAgIA0K
DQpUaGF0IHByb2plY3QgdXNlcyBbYnVpbGRzeXN0ZW1dIGF0dHJpYnV0ZXMgaW4gcHlwcm9qZWN0
LnRvbWwsIGZvciBtb3JlIGRldGFpbHMgSSBzcG9rZSBhYm91dCB3aGF0IHRoaXMgbWVhbnMgYW5k
IGhvdyBpdCBpbXBhY3RzIFlvY3RvIGF0IHRoZSBZb2N0byBTdW1taXQgZWFybGllciB0aGlzIHll
YXI6DQoNCmh0dHBzOi8vd3d3LnlvdXR1YmUuY29tL3dhdGNoP3Y9VG85VFNCYUlnMlEmbGlzdD1Q
TEQ0TTVGb0h6LVR3ZC1KR2N6eHpZUTAxREpfNF9zQUhnJmluZGV4PTE1DQoNCkhvd2V2ZXIsIHRo
aXMgYWxsIGxhbmRlZCBpbiBraXJrc3RvbmUgYW5kIG5vYm9keSBoYXMgYmFja3BvcnRlZCBpdCB0
byBkdW5mZWxsIGFzIGZhciBhcyBJ4oCZbSBhd2FyZS4NCg0KQWRkaW5nIHRoZSBzdHViIHNldHVw
LnB5IGxpa2VseSBkaWQgdGhlIHJpZ2h0IHRoaW5nLCBhbmQgYWxiZWl0IG91dHNpZGUgb2YgWW9j
dG8gaXQgd29ya2VkIGZvciBtZToNCg0KJCBweXRob24zIC4vc2V0dXAucHkgIGJ1aWxkDQpydW5u
aW5nIGJ1aWxkDQpydW5uaW5nIGJ1aWxkX3B5DQpjcmVhdGluZyBidWlsZA0KY3JlYXRpbmcgYnVp
bGQvbGliDQpjb3B5aW5nIG1pbmltYWxtb2RidXMucHkgLT4gYnVpbGQvbGliDQpydW5uaW5nIGVn
Z19pbmZvDQpjcmVhdGluZyBtaW5pbWFsbW9kYnVzLmVnZy1pbmZvDQp3cml0aW5nIG1pbmltYWxt
b2RidXMuZWdnLWluZm8vUEtHLUlORk8NCndyaXRpbmcgZGVwZW5kZW5jeV9saW5rcyB0byBtaW5p
bWFsbW9kYnVzLmVnZy1pbmZvL2RlcGVuZGVuY3lfbGlua3MudHh0DQp3cml0aW5nIHJlcXVpcmVt
ZW50cyB0byBtaW5pbWFsbW9kYnVzLmVnZy1pbmZvL3JlcXVpcmVzLnR4dA0Kd3JpdGluZyB0b3At
bGV2ZWwgbmFtZXMgdG8gbWluaW1hbG1vZGJ1cy5lZ2ctaW5mby90b3BfbGV2ZWwudHh0DQp3cml0
aW5nIG1hbmlmZXN0IGZpbGUgJ21pbmltYWxtb2RidXMuZWdnLWluZm8vU09VUkNFUy50eHQnDQpy
ZWFkaW5nIG1hbmlmZXN0IGZpbGUgJ21pbmltYWxtb2RidXMuZWdnLWluZm8vU09VUkNFUy50eHQn
DQpyZWFkaW5nIG1hbmlmZXN0IHRlbXBsYXRlICdNQU5JRkVTVC5pbicNCndhcm5pbmc6IG5vIHBy
ZXZpb3VzbHktaW5jbHVkZWQgZmlsZXMgbWF0Y2hpbmcgJ19fcHljYWNoZV9fJyBmb3VuZCB1bmRl
ciBkaXJlY3RvcnkgJyonDQp3YXJuaW5nOiBubyBwcmV2aW91c2x5LWluY2x1ZGVkIGZpbGVzIG1h
dGNoaW5nICcqLnB5W2NvXScgZm91bmQgdW5kZXIgZGlyZWN0b3J5ICcqJw0KYWRkaW5nIGxpY2Vu
c2UgZmlsZSAnTElDRU5TRScNCmFkZGluZyBsaWNlbnNlIGZpbGUgJ0FVVEhPUlMucnN0Jw0Kd3Jp
dGluZyBtYW5pZmVzdCBmaWxlICdtaW5pbWFsbW9kYnVzLmVnZy1pbmZvL1NPVVJDRVMudHh04oCZ
DQoNCk1heWJlIHNoYXJlIHRoZSByZWNpcGUgb3IgYXQgbGVhc3QgdGhlIGZ1bGwgbG9ncz8NCg0K
Um9zcw==

