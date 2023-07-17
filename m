Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98A83EB64DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 15:02:47 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.87])
 by mx.groups.io with SMTP id smtpd.web11.10657.1689606157445405303
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 08:02:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=d6eTBb37;
 spf=pass (domain: arm.com, ip: 40.107.22.87, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJNtAVAo7uhdjpzJENXUDGGBn2v6RmZmaM1ga2gFarI=;
 b=d6eTBb37utoZnKM2oTYQLb2vufZbyENhL6uiM9sAc4uo2k7Dc5GWne5EjP0QHpoFUWb1LjV8F1/jlPW4c011776YmcCf6xNJJ0SdE/PsKiW3GQCiZUPzwsqOeUbkILm/Ucll7+cMLlHYSofM56KyuCObz9OHsvRqRldp5BjLsCo=
Received: from AS9PR05CA0359.eurprd05.prod.outlook.com (2603:10a6:20b:490::20)
 by AS8PR08MB6197.eurprd08.prod.outlook.com (2603:10a6:20b:294::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 15:02:29 +0000
Received: from AM7EUR03FT064.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:490:cafe::6a) by AS9PR05CA0359.outlook.office365.com
 (2603:10a6:20b:490::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32 via Frontend
 Transport; Mon, 17 Jul 2023 15:02:29 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT064.mail.protection.outlook.com (100.127.140.127) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.32 via Frontend Transport; Mon, 17 Jul 2023 15:02:28 +0000
Received: ("Tessian outbound ba2f3d95109c:v145"); Mon, 17 Jul 2023 15:02:28 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ff18e14d82f5dc3d
X-CR-MTA-TID: 64aa7808
Received: from 9e857aa0888c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B0FA3C99-B274-4F96-8307-E4A5C9CE29FE.1;
	Mon, 17 Jul 2023 15:02:21 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9e857aa0888c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 17 Jul 2023 15:02:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ImLWcOU7zTbVCts3/r/I+OErRqm+Ky3v9CkgGTwIIRfabXNHHsY1ZaJYiVrOrPYAjREduDFwI7rro8zsNKFlH3e6LcxWqpSkMrQjMwhOOeuHAHeM9Wd6K+xJGgNn4h9vdL3hEAdVzvo1Tij0Nje7qCvGbtKZI2AYOdk1fSoMhuq7PAOOb1v7E+iNWvIkajoT8pFo0nUmcB/zxlru9qoVX5K6VPYHFw1TG+xHXYBSGhuBRlStJD1nxKqQKx3jNg+xHSVGNuXIDPGbRqtSBWSkB55zTNC9xwkWV73PckMKrjbDHJmk4c1Vpm/3AifuChAaLpz4kJosURjrzw8eAnSmWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aJNtAVAo7uhdjpzJENXUDGGBn2v6RmZmaM1ga2gFarI=;
 b=cVqaVdb90l8H+m4VLWPU1gOVNvyb34fmfpp48K/NlM7av3p7EE9Fvnd4BPTacoWoc7zm20jV2yEFa96fxVldAhJm3QbU6AdGcOGgOE+m6w2hNW2YP/+ZYRhj+7wtdMCi31sB2NFhmxYHuJUdHtludxh3KMzF5yqVuraCnBiPPn+G7mPULdk00Z4jY91nIDFRudfNeXxHH/LXYtpOJEJoNZB6lgGJtWoWdeEtXYQnGgEhmnv7PUZf1L+BfbO+jc4l+bDP6QUm9GadncHxFNaOqjONtBl+SVjXYfXLg5OJaVQcCDXI45tExWp24/PrvBlAUBepDHpSWNfkhCewmYMQZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aJNtAVAo7uhdjpzJENXUDGGBn2v6RmZmaM1ga2gFarI=;
 b=d6eTBb37utoZnKM2oTYQLb2vufZbyENhL6uiM9sAc4uo2k7Dc5GWne5EjP0QHpoFUWb1LjV8F1/jlPW4c011776YmcCf6xNJJ0SdE/PsKiW3GQCiZUPzwsqOeUbkILm/Ucll7+cMLlHYSofM56KyuCObz9OHsvRqRldp5BjLsCo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM7PR08MB5336.eurprd08.prod.outlook.com (2603:10a6:20b:105::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.31; Mon, 17 Jul
 2023 15:02:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::67ae:749a:f0aa:f239%4]) with mapi id 15.20.6588.031; Mon, 17 Jul 2023
 15:02:19 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "mtownsend1973@gmail.com" <mtownsend1973@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] libgcc dependency
Thread-Topic: [yocto] libgcc dependency
Thread-Index: AQHZuLP4de+G0EduBk+JO+ydNzhW3K++DemA
Date: Mon, 17 Jul 2023 15:02:19 +0000
Message-ID: <4AA960B2-C800-42E9-A195-7E003796334C@arm.com>
References: 
 <CABatt_zAugR2unmSVA=L7HmPxe9W11r0LEDkCPs7+drMtOApDA@mail.gmail.com>
In-Reply-To: 
 <CABatt_zAugR2unmSVA=L7HmPxe9W11r0LEDkCPs7+drMtOApDA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM7PR08MB5336:EE_|AM7EUR03FT064:EE_|AS8PR08MB6197:EE_
X-MS-Office365-Filtering-Correlation-Id: e1b149df-8e32-4e51-10a7-08db86d6d687
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 zSszNJF3+3LIXc1k72XsCGlLtI1Hb48OuIhjlno0qsMRDZW/+Uj+ezbKZa64IocPy1p6wqnMoi1hFiTNhBtXmu2pySUlSR19qHHRgoaWzuuTOEoHqfzoQtpuXxd7PL70wnwzQZKCjS91YYcjCFMPXqlfKTQTtlNKxI3gRXBsWYVNGtfHQQy0hlRmVi+t+poLDR3N464JIwk+J/y3VU8b7g1+PPbeI5lkRXvBOTw65x3s9sv0ewmmWmBSSniL2jRKH4JZRXnYkfpttmN1AzOwnSGNW/hvWDLwTp1UM545uOvmQg5+Vs6oslA/jS+U3iOGoA6dpxMj4+0movOq0IsKrVEBRCHr5axYkk7ORhMXEl6ejt6n7bAMA5SdqB+kbrHr64tCJIJDCwOOl4JMh2K/jEDO5LcRp2U1tftOKA/DAJZxHu5aMYbeNAwByIb44IdPF0VPXxvtsCEEjn1DF4DejFkANc3TMsycu8mrQEi8D+qeN6v46odYcBDMvodEc7otXqhjONabH53UcebEdE7LGxpkwkC+5vx3gDrQZ5emFKAG3jDPNyaXNGVcXJPHz0afxADQzWxFYAci2saV09FtltO50UFnohsQsPSWvdpzMQwhmEQDO530NTbMnWcq9OXhU4lqiKu94EUIgSfWDWXuXw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(396003)(366004)(39860400002)(346002)(376002)(136003)(451199021)(91956017)(478600001)(66556008)(66946007)(66446008)(66476007)(5660300002)(4326008)(64756008)(76116006)(316002)(6916009)(8936002)(2906002)(41300700001)(8676002)(71200400001)(6512007)(26005)(6506007)(53546011)(6486002)(33656002)(38100700002)(186003)(2616005)(36756003)(122000001)(38070700005)(86362001)(558084003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <CA76CF54DF8F014798E9AF8992515435@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5336
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT064.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ca8c1023-7cfa-42ff-afb3-08db86d6d13f
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xpnzltzKh7iN/Fts5z7NK7n5WmuofejojLW4lTrCxxCqfE51sPaV6YLDR7EygbqOIElMzsc9vdz+NfO3FtLnGlyvko6OOG7AF3wvnhMI9m8JPL8JDvU5xuZKzlYrs3ZqnMCcTe7cs6pD4xW6m1aAzzEgrp93OGhjY8jx9X6oTvMkqdqmb36m1wAO/hNZ5CtvH1VfA580ACFgR+yuJP1G8ctz85vwF+Lh4QSCj7zgBRU+z73Aw+q1cCXz0PiL1vDVgWiKW0kZrWD3AVS4YoIrL2acVG3oI2T9ghWdGggEY/QSWZCt8oRdu7lEiY67Q2gaaPX1ivkEHwQ2QYxFK4nk93xqsBaWA/y72xUArTjLviqKT1u+Jv6pd/cCHc9w1sOCIYnaRNDHTMbki0wsk16HNv1cXrP6e9w6bGDm1rosnlpWZSChxI88dsxFzwjtDi/m3zCbsGlkV7ub3MgHlDbmCf88/KAgvmoNeKf6jg8chDnJ3rxuaPPTmoo8v+0A1q/8jjGn6wN4aMF/8lQwo1kA0ZIappXrucWvC+Cwu15rZMTbvO3qpUXHK38bkO9ruIVZ5h0dCqYUrw4aZCKJdZVsNnDBuWZt6y6aa6Jx89aQ92f5AxbdqQxeHE63gnfU2MDeyQSyrAXnwyqyFbVBgupSgoLvSl3l4WW1OPy711Cmvsv6C2TjDN1zw+LFTwCt/teHFTj1Ak4J8F9hGHcw1myv+h+tiWM2TlBDgeSry6P8RFk8PrmGFK6aYhKw7JfvKHut
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(39860400002)(346002)(396003)(136003)(376002)(82310400008)(451199021)(36840700001)(40470700004)(46966006)(47076005)(478600001)(4744005)(336012)(186003)(36860700001)(2616005)(6486002)(86362001)(26005)(6512007)(6506007)(40460700003)(40480700001)(53546011)(70206006)(70586007)(41300700001)(2906002)(36756003)(82740400003)(356005)(4326008)(8676002)(6862004)(33656002)(316002)(8936002)(5660300002)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2023 15:02:28.2731
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b149df-8e32-4e51-10a7-08db86d6d687
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT064.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6197
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 15:02:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60593

T24gMTcgSnVsIDIwMjMsIGF0IDE0OjM3LCBNYXJ0aW4gVG93bnNlbmQgdmlhIGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgPG10b3duc2VuZDE5NzM9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+IHdyb3RlOg0KPiBJIGFtIHRyeWluZyB0byByZW1vdmUgYWxsIEdQTHYzIHBhY2thZ2VzIGZy
b20gbXkgaW1hZ2UuIA0KDQpJ4oCZdmUgbmV2ZXIgZW5jb3VudGVyZWQgYW55b25lIGNvbnNpZGVy
IHRoZSBsaWNlbnNlIG9mIGxpYmdjYyB0byBiZSBhbiBpc3N1ZSBoZXJlIGJlY2F1c2UgaXQgaGFz
IHRoZSDigJhHQ0MgZXhjZXB0aW9u4oCZIGNsYXVzZXMuICBJIHN1Z2dlc3QgeW91IHNwZWFrIHRv
IHlvdXIgbGF3eWVycy4NCg0KUm9zcw==

