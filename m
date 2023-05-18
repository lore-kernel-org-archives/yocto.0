Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BE93C77B7A
	for <webhook@archiver.kernel.org>; Thu, 18 May 2023 10:18:06 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.50])
 by mx.groups.io with SMTP id smtpd.web10.13586.1684405079192069454
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 May 2023 03:18:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=azL6j9Kw;
 spf=pass (domain: arm.com, ip: 40.107.20.50, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WIB78YvYl+eaPbRoFeg5aqPtDYT13w/WhrioBwSg2Ac=;
 b=azL6j9KwmNcUGjnjfLu2k28oID9/paUkfqeEInvMXBwepXL8/zogUVS3ldFNq504HEmskyJm6ckjIzwMjEanDA5QOeBShwjFasbPKsL8INRjGDRidXya5pymlHoLSVwvrKP9SnKS3Ns5zyFlSVfCgvjG4sJtueEcqo3MJU6SD2E=
Received: from DB8PR06CA0046.eurprd06.prod.outlook.com (2603:10a6:10:120::20)
 by AM8PR08MB5652.eurprd08.prod.outlook.com (2603:10a6:20b:1d8::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.17; Thu, 18 May
 2023 10:17:55 +0000
Received: from DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:120:cafe::bd) by DB8PR06CA0046.outlook.office365.com
 (2603:10a6:10:120::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19 via Frontend
 Transport; Thu, 18 May 2023 10:17:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT057.mail.protection.outlook.com (100.127.142.182) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6411.19 via Frontend Transport; Thu, 18 May 2023 10:17:55 +0000
Received: ("Tessian outbound 3570909035da:v136"); Thu, 18 May 2023 10:17:55 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 226e3f4422af45ed
X-CR-MTA-TID: 64aa7808
Received: from 1434d35bab77.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id CBD27789-5FF4-4BF8-8AE9-E55D32DB5482.1;
	Thu, 18 May 2023 10:17:48 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 1434d35bab77.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 18 May 2023 10:17:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxg7yeQiYLkOXuaADjks5AmRSmNKFWgA3q+8aSB5c6O5/XX+d2LKturlTHQeXmf8qMmwVlg3Oikzek+cm0T78GVnaHz+30BRYxXttlLruXeiX+gs1jiNPnaM1OuANbFAYxa0A5ACCq1npkYZNhwffm1IWxqap4Lxw/rUSLIvSMTDJxtj5JFxbQv0E4iOvCYIgyUhg5qSRIVWrAILJrH/oLOpheuYIKi+TsvpQA7aFxOKPEYhOil6gZczFo7PmLAqBo+xY6syHPIHznwbkH4iz2N7xUMuFywal4+9Sy8EkZy5TF1+3eNkPJThPsDFyRHi/n4v/cREubUWgZZ41S4DdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WIB78YvYl+eaPbRoFeg5aqPtDYT13w/WhrioBwSg2Ac=;
 b=Lf6VZFloEba6+2ONgbKTL+quPUVKYb1tAMJJ26zNOwWckb5npEHr0cbewsk/egh8cI1n63Yw+KvXS+JiIdpNsK4AvzgbhCoLnQZO+p/KqOoYZMJtFFWJbSs/sET9Dwm7yU+DBp8JxlbfSKVre+BwU4xWNwKCZoDtA98WUm5BULqDD0YMkMfmg+UiVXkxB7N7B2vm5/y/28mXe9gDlzje+X5CzQvUoWFnrCPhmATBk13t4/0hjt6rNSYLlGsME5xYXT85Tp+/c+NsEQRMSKjSltGreBrACVyx8x506jM3y9UTZm1JNpP/hXATDfCBXMywSL1MFvKwQJ220/4VWlefPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WIB78YvYl+eaPbRoFeg5aqPtDYT13w/WhrioBwSg2Ac=;
 b=azL6j9KwmNcUGjnjfLu2k28oID9/paUkfqeEInvMXBwepXL8/zogUVS3ldFNq504HEmskyJm6ckjIzwMjEanDA5QOeBShwjFasbPKsL8INRjGDRidXya5pymlHoLSVwvrKP9SnKS3Ns5zyFlSVfCgvjG4sJtueEcqo3MJU6SD2E=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB10001.eurprd08.prod.outlook.com (2603:10a6:20b:632::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.33; Thu, 18 May
 2023 10:17:45 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::eb3c:9b42:21c9:494e%7]) with mapi id 15.20.6387.029; Thu, 18 May 2023
 10:17:45 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "lorenzo.ruffati+yoctoforums@unikie.com"
	<lorenzo.ruffati+yoctoforums@unikie.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to get yocto to export python wheels
Thread-Topic: [yocto] How to get yocto to export python wheels
Thread-Index: AQHZiNZzcBoPAdqLIE6mhlM4iT4d/K9f0kCA
Date: Thu, 18 May 2023 10:17:45 +0000
Message-ID: <6AE3312E-9B40-403D-B990-51CAFB4BFDB7@arm.com>
References: <ulRM.1684331197817955249.thUf@lists.yoctoproject.org>
In-Reply-To: <ulRM.1684331197817955249.thUf@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.500.231)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB10001:EE_|DBAEUR03FT057:EE_|AM8PR08MB5652:EE_
X-MS-Office365-Filtering-Correlation-Id: b7f69965-4816-43e8-9dad-08db5789256b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 DwNcjbW6/cqcAkFZKe0s66xm+PKv/eNjYOLcLDiIM+VVJCvQk9e6pQfkCI8z1u3rVuWjTcM/vVMe8i90K5wYIhC/ZFNqxAuAfJ0/M3/O6Tzl0BYws69Rsq2wYXFJZ2Dfyvt7izOm8+3XVOI/ZhQqxUoZjwpLibFLcDzq2PPmQT54Mbe14fUyb3P/TSYbAObDhMIGPslO4K7TJE9EPFWk0ixJ12Za1Ef00W8rL3P9NW6g/uN5mYP9Ku1EEQSq+ZX04yaF5vBZXa3V4kvEvSD9YbAERDpJYA6HtQAlEicw8Rv6ICxXabu4n1tZTbRuFoXdM8LwpI7Fl33rFHUOSVzdRy98YIayrtQM730UoYmPiX7DvfCssfEVj3oCCeSxUbnJ5Lb7pkpsYm4xgyYpgYz7wBrWvLkvpqGIMNBglV/CCz3XV5n7o+TuB/ONHW67AbeuOebHsKTRVs2cC8G5yiERP/UON+uK+4q0WYEPG4ZLou4KTRd7hoKU8hzDQG9vrnUEjxZH1pCrHgbRcRcODvRLXstG2BI5B62wbZqA/K6Um7C395NGa0MRaCvlmccygh8D5nvnCrZOPCvYwUcstZ6taZuSGtjpFxUjR2j5FfZrboxmPadxBYWxqeqJtRjBCLIK3Sypyr8mxbOucIjL9n0qdA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(136003)(376002)(39860400002)(346002)(396003)(366004)(451199021)(41300700001)(86362001)(66946007)(316002)(91956017)(5660300002)(38070700005)(38100700002)(122000001)(478600001)(4744005)(4326008)(2906002)(64756008)(8936002)(66446008)(66556008)(76116006)(66476007)(33656002)(8676002)(6486002)(71200400001)(36756003)(6506007)(26005)(53546011)(6512007)(186003)(2616005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5D6A47F2DDB49348BBE503071EA66A85@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB10001
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	46ff22ca-2e8c-40c9-8b19-08db57891fb8
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jlErGk4E+9zlypYHPvJMLqsQtMcDMoFRS4AFuug8I9ROJOba+HJZKfSdgjB5Wy8vffgLkOJwEItmLLsQDnpYoyFO+Tq4xpteSy8AB/008KG+KMEDo4myWRS+DOy0XaaYxCIogC5U4zJX+ePzePTPFkM7pL3BUSFMmPs4CUKE0sYHEu5bNMK+WjvO0L9/y9E2GytZbaKsxAT2Rmd3j0WLnecPIvQkxeOA8uZgG4qntfd2J3ro4+niKPSYFrI0G0WCyYmDzzuSewPWLMxIz7DcgrFsXKHpWJhDwbUkEbTZ3R3KvT7xAAjBHlWB+7CUtxYlJm6w8GmscB6PqoN1hb7mk7t4Wuh/G3mDTHoUtDbth/Lxsos5nfWCfDOdhD9+dZZHqxcRt7UkcVJMr9nUt363DLcTpiPBEMB6JxzHao6yQQHyU5Vq7IafTGH0fDjX9qiwDnfSIaMvxZPzFVRqxMfFcChCQSSq+qDQRXtRkDBWzfQdWqjMXc9UFhbgY9TmURbX21YAva5lMScgil5ktOKQ7OAKcKu4o1EPcy3KSlSxnxA0VzpYasrvocrB0G8dklqNvbKFO/tTc2qWLrpMJcQUsQpSg6kN26lqHo/9djZEJlTZD9UVD5vpijd9CBFRomAnWyCo4wIi8AvYPftzpwxDbiGL7VE4fY5tmX4oVWmtBLW+vvbrYiCs0xR8ekKCG1Pus2Meg1KXoYYtwuW78OEYd395wa8aKlz9LV5265zFQfWiAobRKzk6Z8N9x9vwyY+/
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(396003)(376002)(136003)(39860400002)(346002)(451199021)(36840700001)(46966006)(40470700004)(36860700001)(47076005)(336012)(186003)(6486002)(2616005)(478600001)(6512007)(6506007)(26005)(8936002)(36756003)(5660300002)(8676002)(6862004)(41300700001)(33656002)(82740400003)(40460700003)(40480700001)(81166007)(356005)(82310400005)(70206006)(70586007)(4326008)(2906002)(316002)(4744005)(86362001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 10:17:55.2846
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b7f69965-4816-43e8-9dad-08db5789256b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT057.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5652
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 May 2023 10:18:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60072

On 17 May 2023, at 14:46, lorenzo.ruffati+yoctoforums via lists.yoctoprojec=
t.org <lorenzo.ruffati+yoctoforums=3Dunikie.com@lists.yoctoproject.org> wro=
te:
>=20
> Hi, is there a way to get yocto to "deploy" the wheels for python package=
s?
>=20
> At the moment I can only find .deb artifacts, I would like to have "tmp/d=
eploy/whl" (or some other)
> folder in which to find all wheels for python packages generated in the b=
uild.
>=20
> Is there some standard way to do this? Is it even possible without writin=
g a custom recipe for each
> package?=20

You can write a class to do that, and inherit it in all the recipes that yo=
u want to have wheels.

Ross=

