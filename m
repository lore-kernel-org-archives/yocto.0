Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 33EB6CD98C9
	for <webhook@archiver.kernel.org>; Tue, 10 Oct 2023 21:47:56 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.41])
 by mx.groups.io with SMTP id smtpd.web10.2375.1696974473557670562
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Oct 2023 14:47:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Q9sCPopO;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Q9sCPopO;
 spf=pass (domain: arm.com, ip: 40.107.15.41, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hC062gUCQuHB07oiKsa9tV27I0wJXve0Ele25qBJuOA=;
 b=Q9sCPopOvH5MZ6IGOuUvyqo9xl/Y4g7NrVk888nRYLN+Z6QNN77x9OKmtqNnDt+sbGDEu3xEv84ZBmhEUUUIlD2CQ5AWkBbY4pz8dZlggWVitHK/wX4AQi+clwpaJuXZkm4MGiAfK5L+wuFQnsGQdgAsLwlqUdRQZlKapqJJn3w=
Received: from AS9P250CA0001.EURP250.PROD.OUTLOOK.COM (2603:10a6:20b:532::7)
 by AS8PR08MB5957.eurprd08.prod.outlook.com (2603:10a6:20b:290::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36; Tue, 10 Oct
 2023 21:47:45 +0000
Received: from AM7EUR03FT048.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:532:cafe::be) by AS9P250CA0001.outlook.office365.com
 (2603:10a6:20b:532::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.36 via Frontend
 Transport; Tue, 10 Oct 2023 21:47:45 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT048.mail.protection.outlook.com (100.127.140.86) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6886.23 via Frontend Transport; Tue, 10 Oct 2023 21:47:45 +0000
Received: ("Tessian outbound fb5c0777b309:v211"); Tue, 10 Oct 2023 21:47:45 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8a676c516f41342e
X-CR-MTA-TID: 64aa7808
Received: from bfe7ddd06d38.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 25F983C7-527E-47BF-BE29-C2C447B53285.1;
	Tue, 10 Oct 2023 21:47:38 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id bfe7ddd06d38.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 10 Oct 2023 21:47:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TxxnZcPtTpvMzFMRVA7CnbZCTr94LexIROoBNZBFPu50isaCyLaJFepXl2utYNBXWqkR3lbUjiRaolx5Ili5+66D3Ev2MWIlqL5N/rSLHKs7fqzTK0gHRcSCoWoPCjnDpENa3hC4Wa3h9lR5crj5iXiL9NclQb0jN5x6SN/PQHwelzvkZvIzNTb6DdJyJXPxp6kJK/Aqhm/ZBrol10wB6Qa0Y8Lvsbe9Yp6geaaZYqp55j1f4oCcHGU4ma/UeC/GSZgj3pHuQgwhx+R/tW88+EwQ+w+HD4Gpz4CdUWyosEsiDgEutT1G2ix5x3H5dJMnt6JKY6DUiAVEtpZioPG6eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hC062gUCQuHB07oiKsa9tV27I0wJXve0Ele25qBJuOA=;
 b=fkprgFwrvAl5O42plai0rwGegtEC8ouI07q+YWKOUGtkGDh+8BWtJlqK7jhX4NvqtcsClDpR20v1KmmyJhKm1oBbOAS9DLJFtEZ5EESoP/utkH17nmoRvikhQBKSlPX/aokKQPwLZNb4PQjND46G2clUNxSLghPXtaaKm/I9z5lwbQe8WEmBW6SeIq+MVgVCGWi5847Y9G8Hvb8MyQDKDl9OGYPLv3UsIz6cP6zzJLlmDAEUXEc6oQlwXLA/HxTIYvV3SYon3fdpXpEKURuWj0XlXaCND1uvMkqrTzTROgwLjZ8LSMEnAVnOp+kcVZ9zxNxPso0f+0pCwL9Ayd8vxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hC062gUCQuHB07oiKsa9tV27I0wJXve0Ele25qBJuOA=;
 b=Q9sCPopOvH5MZ6IGOuUvyqo9xl/Y4g7NrVk888nRYLN+Z6QNN77x9OKmtqNnDt+sbGDEu3xEv84ZBmhEUUUIlD2CQ5AWkBbY4pz8dZlggWVitHK/wX4AQi+clwpaJuXZkm4MGiAfK5L+wuFQnsGQdgAsLwlqUdRQZlKapqJJn3w=
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com (2603:10a6:20b:4e1::9)
 by AS8PR08MB8969.eurprd08.prod.outlook.com (2603:10a6:20b:5b4::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 21:47:36 +0000
Received: from AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8a16:1a83:f86c:dff0]) by AS4PR08MB7429.eurprd08.prod.outlook.com
 ([fe80::8a16:1a83:f86c:dff0%6]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 21:47:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "gary@missionsecure.com" <gary@missionsecure.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] adjtimex #kirkstone
Thread-Topic: [yocto] adjtimex #kirkstone
Thread-Index: AQHZ+5+0jmzT7eW1vk2Zm/gw5zTjy7BDj3gA
Date: Tue, 10 Oct 2023 21:47:33 +0000
Message-ID: <091A4DB3-98F0-4B97-A7D8-B496FDE38DEF@arm.com>
References: <lfKb.1696959113393378486.xJHM@lists.yoctoproject.org>
In-Reply-To: <lfKb.1696959113393378486.xJHM@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.100.2.1.4)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	AS4PR08MB7429:EE_|AS8PR08MB8969:EE_|AM7EUR03FT048:EE_|AS8PR08MB5957:EE_
X-MS-Office365-Filtering-Correlation-Id: ff98e279-475f-4613-32c1-08dbc9da89c1
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 kJx3MIkIESojkT8Ll7Stw3Z7lRrzCV9WuCWRdavam1T2rpXrZq7Xllz83jUpPxbodx+ONGRjIvKHQ1ThoN75k1+BJZiinnlvnSe911iw7eAYJ1RaiXgK/mLSEb+hqQIfYSYEYm/WcOUyDlHJqv5nHSjH1BJWiFSGysovRwv3r8cz//HgOVYlf8gC+kh7pCslcDcNNconEWT0m2rDq05B9Gfcfvs6NBfLBS07U0bTd2BtKto9kiQB38IzEahU6hbcAJ19BP2xUcZp27hMcGmtgB9Q0cWQsEkgkuD+hNb8/XgVHRpORliL0bmTqmomEMS/g+u0dWuGOSJOxg03os0WqCA2Nr0ueajCSD2HHH5qeMYcN2par1NDsdNsXO/Ew0nFTc+y7IpNqaPQ1kQeteogSC64cbcXPEAVpZIqEGeo6IEEJclNEYIIsAmwkKCIV9vYuyJ4WEHBrfRxQ/uWvcZzqqMOsVfBgnQTZMy3ht8kzrgihCI/nwhBK1Uf+t27FIz3CkU5IE91jjaUVcGKpcyVbMTHDUnT1f49piyynDvv2O66kRiFSBSe8yocSzbKmL8A36cHg4DBb5JaTWwj5bWfZGSX8zW5mQQ75Zsc8JzU+Xa5SE9taehyCipTZUDTSPiS3LP8TJaAaCWkVnSdsBHRLA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS4PR08MB7429.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(366004)(346002)(376002)(136003)(230922051799003)(1800799009)(186009)(64100799003)(451199024)(4744005)(53546011)(86362001)(8676002)(8936002)(26005)(4326008)(6666004)(478600001)(5660300002)(6486002)(2906002)(71200400001)(122000001)(41300700001)(2616005)(91956017)(6506007)(33656002)(66556008)(66946007)(66446008)(64756008)(6916009)(66476007)(76116006)(316002)(38070700005)(38100700002)(36756003)(6512007)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <1E0338D2FE59304CB4A0C423E1293933@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8969
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT048.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	162cea15-5cbd-4877-14fd-08dbc9da829e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	vKQzjCFS+rMIhqkRYawSAMrDK4bvILpMMa/LK8BDfIC+fxQT7B4WWy/zgmdpTbkW47eKpTsmfv5Lmk7Fb3URe3xwsh4meAmEN35o2Vg0gwdDQ5O6hr1bk27y9WCVgBm1FXob1ooizxEB9AY1z5M9k7YlxF/YjCTYgqM6uKe3B6S7ujIepE+9YolNv/XCIHY235dNYXldh2aq2SbVqpnsYHcZTJrBzj/QoOVfr9wBq5d6AqRJcFG5InRk5kJHYEyiCIhIRVZIeG9NRPo5Cvddt+k1Q6zEN33+O59wGhqu0rBrVIvuWqSH6iNMcyhnnaJZ/SGt6e188KJY7LZyWA5r/GK8k2YpRuKnJORhBJWBKVxiL1N40KjhfVyzKdcCaks7t0W5KEUIpWCmMetUsbVLsIJgX1PHUCrA6BbeCHxDDbvWr3HS0+6qC7VMW2KO10DgUKjtelSBvQRgaBhAIEn3d8SEYqkr1mgnv22V/sJ1oiGe4jSBsS8R9axGznWpz7TmwPlH2PxhZb5UmQ3UClrheIOigOia11J3wxVFdgP5hEht49lNRcEH70GGpNBxDcjxvI8sxa4v0ZebE455PRUq1M1gLL9r2WW90Rcmq+lvkQyfsjvaANRsT/JN28o00bhdBzmVJvNIgiThnhm6zEXHzgL9wwyl9gUYHu+mVpJAQ68YnZU/U45dyGNOn2Sba3hf+7whFiH0voePMbd0McysV0znp936wT4BT+Rmrllwp5A=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(136003)(376002)(346002)(396003)(230922051799003)(64100799003)(1800799009)(451199024)(82310400011)(186009)(40470700004)(36840700001)(46966006)(53546011)(2616005)(336012)(26005)(6506007)(81166007)(40460700003)(8936002)(86362001)(82740400003)(33656002)(36756003)(40480700001)(356005)(4326008)(4744005)(6862004)(478600001)(8676002)(2906002)(36860700001)(6512007)(6666004)(41300700001)(47076005)(5660300002)(6486002)(316002)(70206006)(70586007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2023 21:47:45.3625
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff98e279-475f-4613-32c1-08dbc9da89c1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT048.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB5957
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Oct 2023 21:47:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61312

T24gMTAgT2N0IDIwMjMsIGF0IDE4OjMxLCBHYXJ5IEh1YmFuZCB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8Z2FyeT1taXNzaW9uc2VjdXJlLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3
cm90ZToNCj4gDQo+IEknbSBvbiBLaXJrc3RvbmUgdXNpbmcgY29yZS1pbWFnZS1mdWxsLWNtZGxp
bmUgaW1hZ2UuICBJcyB0aGVyZSBhIHdheSB0byBhZGQgYWRqdGltZXggYmVzaWRlcyBidXN5Ym94
PyAgSSBkaWQgbm90IHNlZSBhbiBhZGp0aW1leCByZWNpcGUgaW4ga2lya3N0b25lLg0KDQpJcyB0
aGVyZSBhIHJlYXNvbiB5b3UgZG9u4oCZdCB3YW50IHRvIHVzZSB0aGUgYnVzeWJveCBhcHBsZXQ/
DQoNClRoZXJlIGRvZXNu4oCZdCBhcHBlYXIgdG8gYmUgYSByZWNpcGUgZm9yIGFkanRpbWV4IGlu
IHRoZSBsYXllciBpbmRleCBlaXRoZXIsIGJ1dCBjb25zaWRlcmluZyB0aGUgbGFzdCByZWxlYXNl
IHdhcyBpbiAyMDEwIGl04oCZcyBwcmV0dHkgZGVhZCB1cHN0cmVhbS4gV3JpdGluZyBhIHJlY2lw
ZSBzaG91bGQgYmUgYSB0cml2aWFsIHRhc2sgaWYgeW91IHJlYWxseSBkb27igJl0IHdhbnQgdG8g
dXNlIGJ1c3lib3guDQoNClJvc3M=

