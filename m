Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E9BCC25B08
	for <webhook@archiver.kernel.org>; Wed, 17 Aug 2022 13:54:05 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
 (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.74])
 by mx.groups.io with SMTP id smtpd.web11.28865.1660744435185656470
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Aug 2022 06:53:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=bRlYu/zi;
 spf=pass (domain: arm.com, ip: 40.107.8.74, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=Kw35E5cPievWUyIchYAwuZmNO5bGU3eegUPMd+mgwgRSNsLS5jfw2LoydgjTUfgMreKIO+KxvnYDQY/3bNhSlMHGNm2N3frfPb2xenWJq9NiSxvXBPMoKmnIj6Nke08RPybajT0kv+KhVxoNPNS+Q4A890oVQLbgGHPmPCvSTXbBaSvcnNTuxVzf+3tZACMnzL/9FanIUgmJcSSNwOY5m2Z9lThHpPBs12IJmg+puf1YrTB7agnlahSMVWOmwYw1paDgS3nfs9pvMOO8UlHgImRN3yJ33wkQ4eGI6sNPIY0jUb8U1Tr2ZT5RtxvdjCAW/3Fs3YjGrxbZsogKPrrB2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ev4zD+tsAndeX4JqOutZ+WvCgreMRZF1LUcDCzuBM48=;
 b=JQcyYZP1h09Pnl540yrIyABWPN8oY4Md6q12zGbo/y5Rnw40fkq8/ZtzCA9GTEpxawECj5Q4z3syuozDWdRm/CFs22FMe2a0Nw7q4k4MSN84CnH7PMTI0eBcXOelzwIxPmdYGU3LYHleyUoBFWKLdhKay966Ge66PXcr7GE2hLsmwQdheZ8ufoPwEIp17DUhQq/mr5rEsy8Sb/IgpALHqAAA69ZK2azV25qcmXRVeUTnpIg+3aGNqobFA4XuPCfGAtJYM/we0STPdk0wLYC2+oLBv63jycHwzvYLHrRXQgvN+78ndpP+KDPao8vqaxwGsoO8DdgGIsJYv+ompJMckg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ev4zD+tsAndeX4JqOutZ+WvCgreMRZF1LUcDCzuBM48=;
 b=bRlYu/zipNDFBzWFQNXhZfYevTlRXstbi19h7oDJwv5cwkZg8SQUtXRvpgxy45QA0fgil0oVezeBx853MaBzu+TIxbdXOCoLNMYiJHix3zfWe1DUi6UVGfiIk+Kdxwe6ph69aqipo/aryucfgouYX2k9kwN7tk8TqUHbDoPh5Ug=
Received: from DB6PR07CA0108.eurprd07.prod.outlook.com (2603:10a6:6:2c::22) by
 PAXPR08MB6687.eurprd08.prod.outlook.com (2603:10a6:102:132::6) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Wed, 17 Aug 2022 13:53:51 +0000
Received: from DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:6:2c:cafe::4f) by DB6PR07CA0108.outlook.office365.com
 (2603:10a6:6:2c::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5546.15 via Frontend
 Transport; Wed, 17 Aug 2022 13:53:51 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT053.mail.protection.outlook.com (100.127.142.121) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5546.15 via Frontend Transport; Wed, 17 Aug 2022 13:53:50 +0000
Received: ("Tessian outbound 63c09d5d38ac:v123");
 Wed, 17 Aug 2022 13:53:50 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 874bbe487fbcf6e1
X-CR-MTA-TID: 64aa7808
Received: from dea2e375c840.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 92BF3C41-AAD3-4E7C-9C82-3214C413580C.1;
	Wed, 17 Aug 2022 13:53:43 +0000
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 dea2e375c840.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 17 Aug 2022 13:53:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fep6p3kCniNwFpyDj+pHFoTmBmp5+YoFpbRlAL8/79nNBN/lhJnGX8mEkfCBlK5fu+NdQUAtEsN/LFI26C19O0LAD7LwLbWXOFJyoQUcs4aK1zOFGXHuznQeudlXfcMcsVKukkYfkYf+n8CyKuwf/sR+tiFfuN5icBovJP111HpmM3hz/fJZgPs19s1uOmcxtbLwUp754WSijTko3IInjm1bHMWLDuQOMOn+uH+xIhGR1PSVks7t51P/fk06AoMV4Zu7Uns+dngBN3CnHYRya0N8nmYwHLdaRGM2HM9QzrPOSvDICWm9myKG7fc2/z0Q/dsZ6/C8DiXHVMwLifgh2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ev4zD+tsAndeX4JqOutZ+WvCgreMRZF1LUcDCzuBM48=;
 b=KNrAr5Rm1y7Iujo970ZNhjgm/Mk1SX00613DAwfV39L6PQOmWbroz02HFDY7/Ii5ktP8HbyPxYvJTKxX/ZWLTG1wiscPvwbw+GmuCLMzR+bb5P6EhoBej75Ozg8LpVtI6Qb81Qf8MoNL2XsNPxTuDMHfWSDFe8IuMUwcZP0vOiHyIV/m87VnPFIzZvGak4kWngilOOk1Yyha9J5B6oAfXaP0T+2rPcnm+MBbtVYzrg5qyD1Qju0IVvP4/EPm4aJrZ6gD8x4tv54zj5ZQXk9YEMiFPxGD5lmhm7Jrbv6a3RadIbLrQxPMICpHPkwDyzkYbJlw3P4BCIN+JI+9Lxom0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ev4zD+tsAndeX4JqOutZ+WvCgreMRZF1LUcDCzuBM48=;
 b=bRlYu/zipNDFBzWFQNXhZfYevTlRXstbi19h7oDJwv5cwkZg8SQUtXRvpgxy45QA0fgil0oVezeBx853MaBzu+TIxbdXOCoLNMYiJHix3zfWe1DUi6UVGfiIk+Kdxwe6ph69aqipo/aryucfgouYX2k9kwN7tk8TqUHbDoPh5Ug=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DBBPR08MB6316.eurprd08.prod.outlook.com (2603:10a6:10:207::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.15; Wed, 17 Aug
 2022 13:53:41 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::5d1d:a902:c842:14ba]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::5d1d:a902:c842:14ba%4]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 13:53:41 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "pwicks86@gmail.com" <pwicks86@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Custom QA Checks
Thread-Topic: [yocto] Custom QA Checks
Thread-Index: AQHYqpL6QskMWfucoEOSfdC4keozW62zLFwA
Date: Wed, 17 Aug 2022 13:53:41 +0000
Message-ID: <B079364A-8118-4547-B098-B10FFCA7BBAB@arm.com>
References: 
 <CAOC70tue67GwmrdrJ1JduuscAyuDmctNmYaYr_Q-D=hC0A7Faw@mail.gmail.com>
In-Reply-To: 
 <CAOC70tue67GwmrdrJ1JduuscAyuDmctNmYaYr_Q-D=hC0A7Faw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.120.41.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 2370bc87-691b-4c8f-ef2c-08da8057ea64
x-ms-traffictypediagnostic: 
	DBBPR08MB6316:EE_|DBAEUR03FT053:EE_|PAXPR08MB6687:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 hZtbhIbpZUeDhqHzlhmt+pfC+R7hafh+9weLzueTMnlo1BPhh00/Fsgl0cKdfkxgAYAUtekTzp8vLwOqSUvLPKV+rl4p6NgPERoANpcrOWwyXebhxSqc8GCZFF4NhouxNt2aLM6VIdvBmFdN6BTG1QW1AIMg3h09SOp8PXKC54uIAJhNWYWUCTjzdjzFJ5pTUQ70akH4FHXktVS3EcpShtKsuyXjrIfhuKqhSQ1b2TBLmeGtF9QO2Hod2HDolxWSkfg4hXxVKAweB+xtWknt34EXnoD4tlIeG6nz9L70dCBunDK0Iu+bf3VlsU+Xz4LXEbzmSvxXLkyPzvI4iPpVsI1NTwn3MuomlWi0qYZl3Pk3lofYwJTTZOtjTyjz3epm8Jn8OkE2yyBAf7RYbozNnpScN/ichILrk/7vHdbAHbo7zYombkn0IX3VxYA4jU5KNYyKctfo8StBnicowTkbvpv634ISwVNjxOjKE/7HANC1NdkXLX8yNY53E/A0iWJ8KpbMXzcfNAjUODAUBmHxZheBcMYj809Hm916KYzW00OgCDEZlxP+dq0nKDZ/Ddy4j01LF89+u8IHKfb/kYaFRBV1huMD8YcUYDgSFVtq8DXb/gDHpVgkV1/XHz1UEtowW9vFGnsWoOjDbo1EpSvbG8F/uV2Vdwhc/IUMmGLontt3IjyhkL6YqPpjrbVg5AkqQ21oQtwi31gikR1XuvuzVi7LUc29RO1mRTOoct1P8WMQ2y/iPuD7SBUrjnXzGq5LXT/TTaGEPmdim+MqyakP8mr+Nd3cPXP9Uz2vCEXwCGzmIr1XZEcTkzEXb4sZyHrJygwAZn5ojcxLqr4+Umpg1r/DzSwwx+8PwwHkLmXM37I=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(346002)(366004)(376002)(136003)(396003)(186003)(36756003)(53546011)(33656002)(2906002)(6506007)(478600001)(86362001)(38070700005)(2616005)(26005)(6512007)(6486002)(71200400001)(41300700001)(83380400001)(966005)(64756008)(5660300002)(91956017)(316002)(6916009)(66476007)(76116006)(66556008)(8676002)(66946007)(4326008)(122000001)(38100700002)(66446008)(4744005)(8936002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <834F20E78ACA1242BE3219ABFACBC2D9@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6316
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7a26a83f-ae6c-415e-d5e7-08da8057e4bd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HzEjpF5gwHPmp2o8JvQ+4qp4OZII8pph0ImgPDyXYusSTbXGUPHzOdYXJMlcBHDsAP5meTenqPhQKfDLOwqh0QqMgh2I4yJBxQm1TUJtKsfoGAqLaqANrlOIgytyack9CtmA9NYeNbPG4jbkMiqyZz+V1+/a7vxeLVPVOU1R299kO2nqcNgVqDFbCZFJjQ7AEyk82ndUAYbsZe+gRTKb0IDWs4lMBrNmC2zRND5OmyErwJ4J1j225ExwiouTyacEavzy6qfSv8iy3Fcm5nzOitQFD/MfUaE8peQDRVBLaUNsXFzObMKB9K2s5JA+coAwGYL1SD3bPOP9nJ9R2r6aJHzU2IhKWGC2hYP8sZJe4D53ArIsIZqCf4I0nBe1p4UkzRHd3F1SLEmoSb+ojcHwA/Eq1P9uukVkWovJNcHw+Z2bbaefcxDlfDAmH8HJrbpqsf+YSpsTlFBpD9ViptieFw+NA4JYZI2Q6kU5utJtA3nj+kB5Xxdp/hocQ+33yc15ggJCMeQGTlKywOoABMOntH7Xk5zZCTXLMjXu8Evgz3YjCiBHr7Zm2UhVS7cyLBq94a4XLAfVTfqALRmlSKAeFjZezDG5d05vSJzBEfaE5DNqdiQyHq4Kgdp++10NbEbTBnJ5H0OngS/ulEy+r8yXk5eHrzpKrNC+h3rkIdQ1LWuIouOIs+ZzE8+GVgYNsemeojtZTKnUTiI29Vlrnedis9iy1bg1NT3o5/oMZyDZxjCeFrlH7fE/k+9DJcXM+3M1TXsR//NW9qHhvXwfnT5vbGNdXwJoqBCKY96/bVURBh41UYr4fLbNQUZMr5q+Q0umyTJcfpcyxcHP3a6VD6YHQw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(376002)(136003)(396003)(40470700004)(36840700001)(46966006)(356005)(186003)(82310400005)(40480700001)(36860700001)(316002)(81166007)(36756003)(26005)(2906002)(6506007)(53546011)(336012)(5660300002)(8676002)(47076005)(41300700001)(8936002)(4744005)(33656002)(4326008)(70206006)(6862004)(70586007)(2616005)(6486002)(966005)(82740400003)(6512007)(86362001)(478600001)(40460700003)(83380400001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 13:53:50.9183
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2370bc87-691b-4c8f-ef2c-08da8057ea64
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6687
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Aug 2022 13:54:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57858

T24gNyBBdWcgMjAyMiwgYXQgMjA6MjEsIFBhdWwgV2lja3MgdmlhIGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcgPHB3aWNrczg2PWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToN
Cj4gDQo+IElzIGl0IHBvc3NpYmxlIHRvIGNyZWF0ZSBhZGRpdGlvbmFsIFFBIGNoZWNrcyBzdWNo
IHRoYXQgdGhleSBhcHBseSB0byBhbGwgcmVjaXBlcyBhdXRvbWF0aWNhbGx5PyBPciBldmVuIGp1
c3QgdG8gYWxsIHJlY2lwZXMgaW4gYSBnaXZlbiBsYXllcj8NCg0KWWVzLCBhbmQgeWVzLg0KDQpG
b3IgZXhhbXBsZSwgSSBoYXZlIGh0dHBzOi8vZ2l0aHViLmNvbS9yb3NzYnVydG9uL21ldGEtcm9z
cy9ibG9iL21hc3Rlci9jbGFzc2VzL2luc2FuaXRpZXIuYmJjbGFzcw0KDQpUaGlzIGRlZmluZXMg
c29tZSBuZXcgc2FuaXR5IGNoZWNrcywgYW5kIGFkZHMgdGhlbSB0byBXQVJOX1FBIHNvIHRoYXQg
dGhleeKAmXJlIGVuYWJsZWQgYW5kIGNsYXNzaWZpZWQgYXMgd2FybmluZ3MgKHVzZSBFUlJPUl9R
QSBpZiB5b3Ugd2FudCB0aGVtIHRvIGJlIGVycm9ycykuDQoNClNpbXBseSBpbmhlcml0aW5nIHRo
ZSBjbGFzcyBpbiB5b3VyIGxvY2FsIG9yIGRpc3RybyBjb25maWd1cmF0aW9uIHdpdGggSU5IRVJJ
VCArPSBpcyBlbm91Z2ggdG8gZW5hYmxlIHRoZW0gZm9yIGFsbCByZWNpcGVzLg0KDQpSb3Nz

