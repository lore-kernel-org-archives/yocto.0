Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79921C07548
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 11:59:59 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.47])
 by mx.groups.io with SMTP id smtpd.web10.11304.1700049592417929202
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 03:59:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=UCLJp6F/;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=UCLJp6F/;
 spf=pass (domain: arm.com, ip: 40.107.247.47, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=JHj2AiQ1SUdPz3OHwRa5LI6xCXGSAo1S6A56Taw5abnOoXDUnqjs/gJ36UFaONza2/LwmGrEi801XyB3zpTeaoVl3f++JeoiGdPI1xObwazeMeqoAOzmlYdyIonUGfiK7awg3HYQkTuSaTbO4WFG0Z4kliJcahmo1wuBS/wIzKbxtA4/A04jzCtAuh59VXm/dWl7yfbRJu1qTTahd7dKCuDDV3PFlSFTAKnLWI15DobUw045B+SMw6O+lSZ3zTaqzB4jS/Z8DGbt1RjCLe4/v4MVmlwzWz2tVy6GjgWbGai8789J/cC2gmYKchAr4GEDXpIYqkM5qCuKtIigbYFiUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSJxkjx0HRO27/ghv2xeKUucByPcJf0uRrNB4EggnOY=;
 b=SYHdrdPUN+/7oTsH2/dezomlnvGbFYX3tnR0rlzuvmqcYOo3sDZQti4sa4PYZ68ci/ka31KcXJVDqIV0Bm31bX84GODCVG81wVxG0FXuD3VR8Rp1OmZ7E4YRoF665zaJARn7MugjDXHfgCxREoDGlnmq/ypuTvAaOMCPb+vtVaebS9QQPknt8xCR23tjTJHBo6OyJaF/idbooaeVpw+92F29Xr807fN33CnUoQw7cMM2eVMVjxjh/Fai3osNsivWcBXlLHk6o+/vHClCercujfVVdmVPob5foWo++3uSyEO8oDy9t+A/oZvxeHKxqc7hoIphQbnKr5VVcDQM9RlQyw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hSJxkjx0HRO27/ghv2xeKUucByPcJf0uRrNB4EggnOY=;
 b=UCLJp6F/IN9vMapq3K6Jox48AT9mmX/JxqJJax93jyX8UPEsrl5hizm4D31F8BxirPlg6Bi2a2RrqiMRCy80i6H9RT+R6bXE5H3XnEEVOG5qks7pcl9lkgQVjm+TfntZqECwUcZa/16Vk7y5mUTKG4Qfak02nf09rTe4o5hXQEU=
Received: from DU6P191CA0059.EURP191.PROD.OUTLOOK.COM (2603:10a6:10:53e::16)
 by DU0PR08MB8020.eurprd08.prod.outlook.com (2603:10a6:10:3e7::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.18; Wed, 15 Nov
 2023 11:59:47 +0000
Received: from DU2PEPF0001E9C3.eurprd03.prod.outlook.com
 (2603:10a6:10:53e:cafe::12) by DU6P191CA0059.outlook.office365.com
 (2603:10a6:10:53e::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.18 via Frontend
 Transport; Wed, 15 Nov 2023 11:59:47 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU2PEPF0001E9C3.mail.protection.outlook.com (10.167.8.72) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7002.19 via Frontend Transport; Wed, 15 Nov 2023 11:59:47 +0000
Received: ("Tessian outbound 26ee1d40577c:v228"); Wed, 15 Nov 2023 11:59:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ecd3a7120deabf40
X-CR-MTA-TID: 64aa7808
Received: from 78dd712220ef.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id BBA3E19D-06AE-43F7-8A5C-6262DC8A29B6.1;
	Wed, 15 Nov 2023 11:59:39 +0000
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 78dd712220ef.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 15 Nov 2023 11:59:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RWaX+hTlxjBslQ6N3fBHbtG5f6bJnKhDcFcbvcReKq0pNnauKVrVTL51TxBQZs1jqB/tIWM7WhaD4uA+rJ25PcFpG2XePNUF05OGZTQG6dDzVp++3t1W8IJl9a6MHQY1uTvqKpsSNxWbIsNl9IgtL3hS7Ev3sc7EYJTzkTd3ElcNW1dt2KkXI7YHgsKFaeZtdgA0Koc6mHsyscgEF9jv3t9Gu8riRv1WArWoqZoRrGONHruMXLkDNDAY3wVOULGESM8kuX+Xk9wLZiGeiHoC3O4xYHaIihvRPFFwMOM/aOWCUfyqEIlvdZXpXlJ8+gzjdMGG9UsDW/G0rBXXib+Rcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hSJxkjx0HRO27/ghv2xeKUucByPcJf0uRrNB4EggnOY=;
 b=SzzQLn/KCG2I73aHI9Fse8hR/uIshAmqqO1RFP+aycqnVtHWVKsdfvGdSRTcbtA3aHXJKCOhpjSnCb+kLzOXm0riC/AYMIdBgAhxzsVFswmmNanh4VQ91FsL1tZZgSZOvrFVlGn8tSd8zWUrV0MszXKm6rYfvqKq17a5ZeDoTa0KpRq6h6kreYlvqRLriahQdld4nqO+mftRNrJKlOMEn1pKu/hdxwFA2w6B1Rb05OzdmJFt53X+BKyZ49D46lirRQSJsvjyyYc1VbZb1P8YQRFpjrTGajTZe1eWfwoQGVirKqxOj3DfUeqI1yMWlXbUcIBUSAbsjYm3afegJK8/jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hSJxkjx0HRO27/ghv2xeKUucByPcJf0uRrNB4EggnOY=;
 b=UCLJp6F/IN9vMapq3K6Jox48AT9mmX/JxqJJax93jyX8UPEsrl5hizm4D31F8BxirPlg6Bi2a2RrqiMRCy80i6H9RT+R6bXE5H3XnEEVOG5qks7pcl9lkgQVjm+TfntZqECwUcZa/16Vk7y5mUTKG4Qfak02nf09rTe4o5hXQEU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DU0PR08MB7517.eurprd08.prod.outlook.com (2603:10a6:10:322::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Wed, 15 Nov
 2023 11:59:37 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.6977.029; Wed, 15 Nov 2023
 11:59:37 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "j.casas@falconelectronica.com" <j.casas@falconelectronica.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Files copied to /usr/local during installation get
 removed misteriously
Thread-Topic: [yocto] Files copied to /usr/local during installation get
 removed misteriously
Thread-Index: AQHaE5t0T2Vi5tDswE2zDM4E6udkOLB5ajOAgAHjbQCAAAGMAA==
Date: Wed, 15 Nov 2023 11:59:37 +0000
Message-ID: <EC3AC9ED-7360-4446-9D86-C219A859EF55@arm.com>
References: 
 <CAMKF1srQnfQtFTpdfrbtEp2=FURE-Bq=R-Ek56+Xcm-VpPHcxA@mail.gmail.com>
 <2967.1700049240535395269@lists.yoctoproject.org>
In-Reply-To: <2967.1700049240535395269@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DU0PR08MB7517:EE_|DU2PEPF0001E9C3:EE_|DU0PR08MB8020:EE_
X-MS-Office365-Filtering-Correlation-Id: af958395-8389-4bee-ed3d-08dbe5d25d3b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 1GagKWemUcimtxYEIT07apLyIBN2RwIgWg26mRJ4gvIVGicgsI9lN7n4C7aOIePsUSdCjy5wrFlwHo9DwwtZ6qG0i+RMMita75BzCEB/M1rHY5wVrbZ7cxpxKynZibG9DfcIgniDA3HGOUdD4sF8J3W9LFyadledreU1yQNZN/PcPPRyk01ygPqnNiCfdh1FJph2zztCA0Cw9wzcHcT82I1iWgIn9R2dIT1YvaAuDsN7kG1E3RPS54Q7icganiyyIA4cLR9UVZ8DCAh1cdZ4twiJSKDVUESJInVItMU0zRdiAm+WsDJLgIdwdQgBG40XqaYB7qgDX7uBiB8IwfdlAUAwepoQBygHdWalFGrNWgoQy5NdYIaZXHCN03GRLPR2PzHLhamy39BbQ0/DQqH88GRlQ5f79TF/W0h2bfNPFCfMGQCaheQrJdWTHm0WJRgPG/VaNoYS+woHTx2YDMm+Qjf1cpDOcDm3NzWp4KZItxPXCNdoKzMRyZ5SDAAOeuRv94YOiivvVKDXuSlArtc2mqZyR533IRg0UBdXmMSX+F6jSZY61R90JjnM5t0utR8hwuJ5iBDvfFiBrAEz6HTxIIb6syYHqlaZCx31ChRFjGGNNkHpflGdRg/RTw2W8dp3lQDUzpU9baxf7YU7FkZ4MQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(376002)(396003)(366004)(136003)(346002)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(26005)(122000001)(38100700002)(83380400001)(86362001)(5660300002)(2616005)(38070700009)(6512007)(6506007)(53546011)(478600001)(71200400001)(6486002)(36756003)(66946007)(76116006)(316002)(8676002)(66446008)(6916009)(4326008)(66556008)(64756008)(66476007)(91956017)(8936002)(4744005)(33656002)(2906002)(41300700001)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <87EA6418702B4F4D92CF9771F385046F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7517
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU2PEPF0001E9C3.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	29b94157-2ebb-4f92-19a0-08dbe5d2577f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7IY0r5stWZ7THHYWx20U4GSZRgu5oQfJ93Gwi16ywe+t9y8Xgra0dPL1llM1tEglKyksgauTXmHsRfXNytqSTpuF2BbYigZZ+JJqfFkRkSXUc7Ap2QCBI2HU884TZkWqTmF8+xu+iEbQ1Nn0tqMajPUN8Rf17PAO6Bdsq+cQbNNScBcxyB4NcUESIaSnz2qd5UyrNlidHxpjkI9DbKKfKoEohhJzlu4pTlWvuQBOXRbsDUSCDhY4yp6Qk2+kYA99D9zgxJDA/J/JkQDpe8IfcW65FxmTnr5CNBfaAbf159glPFFZnylSrt0p5W0Oj0DVSlaxbuDpp/CUvYBQ0vZ+6aDV8hCg+6Kt3b+d4ByWhz5h0eVP7OZu1raauRv+Fg0KZ+dXb5kkUfxs90iCnIcztB+A8NT44ew5AvRLmXxPjh/I+AuC2Pq7A9Ela8rE0I/EYPOHxFVym5EvdTwG9wQ1kaxtLLHpNm3iA9nwSUDPnOdtrreOfqRlWEFMYoLFjJt5knFPVREx824lWFxPx4OO/ancB4cxdGtAg0ZwjAx8nhtrUHaBwpHDm2NkUB4/AoRQSP8Fv8Do2VPGj3LPm8wPDQz0Vf2ZlkpfNBkeWDko2Nf5/gfacQ6c2sJ1RdpRYHF4Fv5qRATSRW7+oKXU69v/k5+TS3V9WktQywYFnp+ydAC6xh8Mw/r6u0+05ECzokvQbu7Dvk/4qUnnALrkJWB5dr7RrcEXeNlAFj3G5ik5BM0=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(396003)(136003)(346002)(39860400002)(230922051799003)(186009)(1800799009)(451199024)(82310400011)(64100799003)(46966006)(36840700001)(40470700004)(81166007)(36756003)(356005)(2906002)(4744005)(36860700001)(40460700003)(47076005)(5660300002)(41300700001)(83380400001)(478600001)(40480700001)(6486002)(6506007)(8936002)(8676002)(6862004)(4326008)(86362001)(70206006)(70586007)(316002)(336012)(33656002)(2616005)(26005)(82740400003)(6512007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Nov 2023 11:59:47.3158
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: af958395-8389-4bee-ed3d-08dbe5d25d3b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU2PEPF0001E9C3.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB8020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 11:59:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61696

T24gMTUgTm92IDIwMjMsIGF0IDExOjU0LCBKYXZpZXIgQ2FzYXMgTWFyw61uIHZpYSBsaXN0cy55
b2N0b3Byb2plY3Qub3JnIDxqLmNhc2FzPWZhbGNvbmVsZWN0cm9uaWNhLmNvbUBsaXN0cy55b2N0
b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gDQo+IEp1c3QgaW4gY2FzZSBzb21lb25lIGhhcyB0aGUg
c2FtZSBwcm9ibGVtLCBpdCBpcyB0aGUgZG9fdXNlcmZzIGZ1bmN0aW9uIHRoZSBvbmUgdGhhdCBk
ZWxldGVzIC91c3IvbG9jYWwgZGlyZWN0b3JpZXMgYW5kIGZpbGVzIGFmdGVyIGNvcHlpbmcgdGhl
bSB0byAke2ltYWdlX3VzZXJmc306DQo+IA0KPiBjcCAtciAvYnVpbGQvdG1wL3dvcmsva29udHJv
bl9teDhtbS1rZWQtbGludXgvaW1hZ2Uta2VkLXF0LzEuMC1yMC9yb290ZnMke2ltYWdlX3VzZXJm
c19kaXJ9LyogJHtpbWFnZV91c2VyZnN9DQo+IHJtIC1yZiAvYnVpbGQvdG1wL3dvcmsva29udHJv
bl9teDhtbS1rZWQtbGludXgvaW1hZ2Uta2VkLXF0LzEuMC1yMC9yb290ZnMke2ltYWdlX3VzZXJm
c19kaXJ9LyoNCg0KV2hlcmUgaXMgZG9fdXNlcmZzIGRlZmluZWQ/ICBJdOKAmXMgbm90IHBhcnQg
b2Ygb2UtY29yZeKApg0KDQpSb3Nz

