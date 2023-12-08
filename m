Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26F3C4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 10:28:42 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.58])
 by mx.groups.io with SMTP id smtpd.web11.17441.1702031317796543109
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 02:28:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=InHGGq6k;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=InHGGq6k;
 spf=pass (domain: arm.com, ip: 40.107.6.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=BlSedMVY0+kn9A8RQnHnIwmxk4mhnOQTVzCFuIu+66vJBJIjE3Jg2LysSo9rftxkp/5ZqMssqE7p8TKqXDOqh46svCGIiUMxWIWDb5UKmK85mEz+nmqjs/xXhtD7wr1eUDonnyR2ZpLNHp/UapHFY65Sh1mNZUhN5M5OwO2My5oPRffwlBJfInA6XntwQQa/NW2RtEXbz/OHWQP3bU3gqATOLmbNUVLw3/E6UnDfqNWeeVlF5yFGrUxEPs9Ti7UKTEq+epT5exmR4LyJeB2rwIC+bc0cTGRQruPY0ujfisG7H0mmdFh9nRWdm5Yh1eVGdt55s8spDNBzEsQu9TN17g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6nPlH+wNDitggiP7Aw44SmPKBkOxeXzFu3Z8MW/5xUY=;
 b=noE13HIL1ccKxjZHPIWZSAO4s5wANFEmfGz3woAW0Lw/87Lbj6AhizEpyNsPUgtu9BGL9uFCU0692A0ASNhj9/7bD88J3Pz+ntlbfjyMTfBfbQxSS1J4T4xbNdbYMnGf99vx6oV4ByVttT+vVhY3cegijEsW62q/8eoyyNfDAn1To7Poo+NI84FGF607Y2TA7MiUWm/USE77UfEJXBbPk2+bZXQ9OjokSn4CTOEHvHxfbkx8E2XzTCl4OJw3pyx7QnY3UhpcV1W4HDc5LT6y4fVdKsI92XdRt4iRDSuPcwZPKzsyT+UzYc2rwCKXmasLDbr8MXAT5jIELPWGQtJMlg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6nPlH+wNDitggiP7Aw44SmPKBkOxeXzFu3Z8MW/5xUY=;
 b=InHGGq6kW/DB+CHjHCMdG2u1IBXXEVyV7M47ymIu8nFr7C8Va91h1pYsCkaXZlCGYzCR7rb/H+MTfBo54UPrEfQA50KiVSA1JilYgIGk4eoaPS5HZyG70+tf/VahOowsV/8mnUamcg1l2wp0EE9ElJGST/jiVOIy3amj23N9uDU=
Received: from AS9PR06CA0279.eurprd06.prod.outlook.com (2603:10a6:20b:45a::11)
 by GV1PR08MB7729.eurprd08.prod.outlook.com (2603:10a6:150:50::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.27; Fri, 8 Dec
 2023 10:28:33 +0000
Received: from AM3PEPF0000A79B.eurprd04.prod.outlook.com
 (2603:10a6:20b:45a:cafe::8b) by AS9PR06CA0279.outlook.office365.com
 (2603:10a6:20b:45a::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28 via Frontend
 Transport; Fri, 8 Dec 2023 10:28:33 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A79B.mail.protection.outlook.com (10.167.16.106) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7068.20 via Frontend Transport; Fri, 8 Dec 2023 10:28:32 +0000
Received: ("Tessian outbound 26ee1d40577c:v228"); Fri, 08 Dec 2023 10:28:32 +0000
X-CR-MTA-TID: 64aa7808
Received: from 05a306100b36.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 7B58E246-9A35-48BB-BB1A-52271E06E534.1;
	Fri, 08 Dec 2023 10:28:04 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 05a306100b36.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 08 Dec 2023 10:28:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGs2v7RoIhMHQ2Fr7CYTpt660MzdUPduBAy39esX5WL3MuwBf9HC7OftXtx8NX96T4x04OEekSXWe38ukqFZHq6dzjIrOWA8dU8Zqbha0wRly+bCXp+jO18znBIhKbI85348VV8j2PxG3vsotdTVazlzh5qvbLqmk/0r7hYGSmIlPW+BdX7P/pNHUkxqVZmbHamDref27k5atZttITtiHmK8LIB4sXumFkTSnfJH8+6EskDHfSuAS0zmnqxduR0bjxYBGINSvqhtEvroyhJa67od/aCCEzuRGrP3MHDLhHtATeW3Wt2NnKWjNPsXJVdAPoEUVoGmL5R5jL3XX14OfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6nPlH+wNDitggiP7Aw44SmPKBkOxeXzFu3Z8MW/5xUY=;
 b=A65gaNo2AJWWj84hRZPqL9Mcrsjfppd9eCtEilnFhfpCpY92nWipN8ViofHMr0ms1jyEMerow6r635FY8C+rBNrDBPl8DMbHcB7H6EggDjafbrw4CP5IhkoXYZCxeJ82tvezedhnzWm3bd6nCsGRJBqnbhwLJW6c5ZhQ6JYfnG5u3P4WM5TJo+CDNcziBE+AepgOeavqueWbe+85i4lavTmaTzkeGN11JwZ3AOLxvkh13dl/ojaxYRjj1XoC0ODEDFNU7J8RkYED1OjEQnKWZ8WsrfrboU6QMv/+PYXcejK1IAE7ans04WlePRxuuKNRC1eHe1S8r1CzOlJYuYuXnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6nPlH+wNDitggiP7Aw44SmPKBkOxeXzFu3Z8MW/5xUY=;
 b=InHGGq6kW/DB+CHjHCMdG2u1IBXXEVyV7M47ymIu8nFr7C8Va91h1pYsCkaXZlCGYzCR7rb/H+MTfBo54UPrEfQA50KiVSA1JilYgIGk4eoaPS5HZyG70+tf/VahOowsV/8mnUamcg1l2wp0EE9ElJGST/jiVOIy3amj23N9uDU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM0PR08MB5521.eurprd08.prod.outlook.com (2603:10a6:208:18a::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 10:28:02 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::ef47:2c42:1ef6:fe5c%6]) with mapi id 15.20.7068.027; Fri, 8 Dec 2023
 10:28:02 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"srivijayjain94@gmail.com" <srivijayjain94@gmail.com>
Subject: Re: [yocto] bitbake error need help #kernel #yocto
Thread-Topic: [yocto] bitbake error need help #kernel #yocto
Thread-Index: AQHaKZ3b3zczv3hK/UGZb+I9StpSJbCfLycA
Date: Fri, 8 Dec 2023 10:28:02 +0000
Message-ID: <528ACA28-EE2E-4BE2-B75E-C2357FEB9E5D@arm.com>
References: <v1zo.1702016041207076678.wq4D@lists.yoctoproject.org>
In-Reply-To: <v1zo.1702016041207076678.wq4D@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.200.91.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM0PR08MB5521:EE_|AM3PEPF0000A79B:EE_|GV1PR08MB7729:EE_
X-MS-Office365-Filtering-Correlation-Id: 5763b312-9976-4599-3da8-08dbf7d86d9d
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 LvHYZfSu5ERMZiePPuhOK0ucKW/GGItyrKnQSRENu8UNnrnFHyoLJNWgulIqcH6oUnDWe4F92sgG1JHiRmTZTxSnlRFdOduqeYCKoq865Co83A0EbkbUCKtCV6lY4hd4QlKQOPHr0lUlb9DxhqRQrK+LvHDcVHYDe8mMDkyHh2hJRo9q9pOkmIay2nh1vodNWevDobpFrP/ay7eMpmAWHyv8diUYENGcVB2CTJlI4ELyCyJ3nRW1kcPU2ANmRDNkcDOYKufBLSkSPF6bcMLQArEy/5d9A3hDfD27auqWNJvL1ebiayK/Qs3ByzjJ7brbKBl12yVcsKWR48ebCzAOXv9g412sG1zakzpp3GPN1dUeeCoNN2mYL4URisE05hij43AN3KTpIA3GJlm/kuf6M7o0NJ4rwfPce6WLUnhkJH9262s/dPq/drS6Vtn4K4rxJpC3f4WUGTUSObYKJTRKIp615QoGuKURZIlHbflWxB5/bxVkZscY/CTRNF+zgyk1nI3yAe8RAvHUn59aYXd9v6esjzHwsuN9aheiwXc9WLcKHe8Wekl9rokobIsQKXkGLuJnGRkQ00EB4oAcscMGW3qePm0WDjsikCtMfALFwNZ8KHVaHqJ+sHgmj88M+VXTR3O6MZR2i5NwjMJkXBt4NQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(376002)(136003)(366004)(396003)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(110136005)(76116006)(91956017)(4744005)(64756008)(66446008)(66476007)(66946007)(66556008)(316002)(2906002)(83380400001)(86362001)(6512007)(122000001)(2616005)(36756003)(26005)(38070700009)(71200400001)(8676002)(478600001)(8936002)(38100700002)(6486002)(53546011)(6506007)(41300700001)(33656002)(5660300002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B6495175CB28B343810B62059138696D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR08MB5521
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A79B.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	174ca9ec-bc11-4194-8d38-08dbf7d85bb5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xFajvPP5e3YXIVZG8yXrEqdORUOiU3YgpQ+3JNnqFy2GkMbVh68LTC5S63L2tmYPQGj8vaZzUOyDT4k39Y/4kyrMjyjKv0Rh+q8FSBYmmp1FFJQSMcLGOjlWP8C9hyHzG+oqOtEpn554PQdtv6E5UBstomyE/GFtPtmmgO0KFZhyM+NYfiN7L+XDopj5+i5zCIsAd1dTDXZnr/CDbZ9bgpGYNOb0rd35XPYM4mrlbsZHsTwW5LQ5e9CbByaSqRzXm260I8OwH7cuoh/jsN67RaHzxrxF6B4MdCPCRhOJdv8TwIT5a2WDb8GYDOs7nPMXLd7Zlpn0Tr8LSKsV0m/xCz0XLFNH3hSj4gBK7MZqD5Z9tTBt8SEYGOZ3afBcse+3f4tfOLHTRVb7IF6o5QQ+EGQ6pfDixGywxNNC4LLtKDI+/xOn3INf+WLanqK6+1qTPUjKK1qlPHKHzelE47M+GvMnzX1vE1BWENeE2yW4oT6sEHERxDhK3H+2oXX43pmiIWjzTUhN4I5/U0Hc2QKpuEfoEfJA1XAA2WXUYb6pus+JTEP5Lh3+2ZnD2AF2KdoexeZcmA81tOqs2wXJDeM9Z4ETrTnHhtxSHgDCNv4bbbpLLZdx4/+y4ctTArlNV0Kdwzb/6APFLcMswH93tTAT+mfgDY5XBiOBcC7VdlMbHQw4IB7YuOsF1AlPUws4d1Z6/HJp7n/u5npHLaBOni+st4Y16m1494dnz4XVkJyYTmA=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(396003)(346002)(39860400002)(136003)(230922051799003)(186009)(1800799012)(451199024)(82310400011)(64100799003)(36840700001)(40470700004)(46966006)(70586007)(70206006)(36860700001)(40480700001)(110136005)(6486002)(478600001)(356005)(53546011)(82740400003)(26005)(8936002)(316002)(336012)(2616005)(6512007)(6506007)(8676002)(81166007)(5660300002)(40460700003)(86362001)(4744005)(2906002)(83380400001)(36756003)(47076005)(33656002)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 10:28:32.6450
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5763b312-9976-4599-3da8-08dbf7d86d9d
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A79B.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB7729
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 10:28:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61842

T24gOCBEZWMgMjAyMywgYXQgMDY6MTQsIHNyaXZpamF5amFpbjk0IHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxzcml2aWpheWphaW45ND1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zz4gd3JvdGU6DQo+IA0KPiBFUlJPUjogRmV0Y2hlciBmYWlsdXJlOiBGZXRjaCBjb21tYW5kIGV4
cG9ydCBQU0VVRE9fRElTQUJMRUQ9MTsgZXhwb3J0IERCVVNfU0VTU0lPTl9CVVNfQUREUkVTUz0i
dW5peDpwYXRoPS9ydW4vdXNlci8xMDAwL2J1cyI7IGV4cG9ydCBTU0hfQVVUSF9TT0NLPSIvcnVu
L3VzZXIvMTAwMC9rZXlyaW5nL3NzaCI7IGV4cG9ydCBQQVRIPSIvaG9tZS92aWpheS9Xb3Jrc3Bh
Y2UvWW9jdG9fQkIvcG9reS9zY3JpcHRzOiR7c291cmNlc30vdG1wL3dvcmsvY29ydGV4YThoZi1u
ZW9uLXBva3ktbGludXgtZ251ZWFiaS9kZWZhdWx0cGtnbmFtZS8xLjAvcmVjaXBlLXN5c3Jvb3Qt
bmF0aXZlL3Vzci9iaW4vYXJtLXBva3ktbGludXgtZ251ZWFiaQ0KDQpUaGVyZeKAmXMgbG90IG9m
IHVzZXMgb2YgJHtzb3VyY2VzfSBkcm9wcGVkIGFsbCBvdmVyIHlvdXIgZXJyb3IgbG9nLCB3aGlj
aCB3b3VsZCBsaWtlbHkgYmUgdGhlIGNhdXNlIG9mIGJpbmFyaWVzIGxpa2Ug4oCccm3igJ0gbm90
IGJlaW5nIGZvdW5kLg0KDQpIYXZlIGEgbG9vayBhdCB5b3VyIGxvY2FsLmNvbmYgKGFuZCBhbnkg
b3RoZXIgbG9jYWwgY2hhbmdlcykgYW5kIGZpZ3VyZSBvdXQgd2hlcmUg4oCcJHtzb3VyY2VzfeKA
nSBpcyBiZWluZyB1c2VkLCBiZWNhdXNlIHRoYXTigJlzIG5vdCBhIHN0YW5kYXJkIHZhcmlhYmxl
IGluIHlvY3RvIHRoYXQgeW914oCZcmUgdXNpbmcgYnV0IG5vdCBzZXR0aW5nLg0KDQpSb3Nz

