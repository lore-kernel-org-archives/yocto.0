Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 837CEEB64DA
	for <webhook@archiver.kernel.org>; Fri, 14 Jul 2023 12:21:53 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.87])
 by mx.groups.io with SMTP id smtpd.web11.17568.1689337311609442349
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jul 2023 05:21:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=awkkN+op;
 spf=pass (domain: arm.com, ip: 40.107.105.87, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QehQvsQqzqGZDsoRYP0Ajj0F75u3xGX98C12yqdBHbg=;
 b=awkkN+opcJddXfuIQy0XE2hX06uWB1DbKtjKCEQkMh92pJSi/3383Yy9WPfOQd5VRGHhjhKBBSsSXpiUFEQug0XjMS2g2GAgo8oCtS6r9Y+oNrlmH+Tc5Mf9OImwq3NOYLJx+FI0tzZumpAJtezizoVUwKIx4NT4aGinJ0tHeKM=
Received: from DUZPR01CA0243.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b5::11) by AS8PR08MB9410.eurprd08.prod.outlook.com
 (2603:10a6:20b:5a9::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 12:21:48 +0000
Received: from DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:4b5:cafe::90) by DUZPR01CA0243.outlook.office365.com
 (2603:10a6:10:4b5::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27 via Frontend
 Transport; Fri, 14 Jul 2023 12:21:48 +0000
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
 15.20.6588.27 via Frontend Transport; Fri, 14 Jul 2023 12:21:48 +0000
Received: ("Tessian outbound f1e964b3a9be:v145"); Fri, 14 Jul 2023 12:21:47 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 5e65bc834eba7ce6
X-CR-MTA-TID: 64aa7808
Received: from a0eb93bb7ef5.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 015FC1F0-CF8C-4F2E-8806-3EA99C0F3CD7.1;
	Fri, 14 Jul 2023 12:21:42 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id a0eb93bb7ef5.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 14 Jul 2023 12:21:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BO5NzdMWh3kk7Hyw5b2+KnpfP0RumrJsdCPRwraE6sATCwbgSiNYyO8h2LQiPd/R+KEOQwHvnTkL65hbj1V4fOqUperbE0eQJulKQIYx8uJTcnX2cYYzOxdsip5weywUgEEG29YQK2kYUcojVZbPNMlbxpXa1Z00+AW58KSo0I8xR0ZpXhfFML+BPLlEcaMvUBzCWk22NapmqAmrnZ0zf2kWSz6qaWHC3Ow5mQftNJbWfoFbQ+hynVXGgSV/SLd4pnFv+FyjUUZM6omr7s0v91YRSX93NPrvYeyYnMlxZ43LUSpXgOJKMY8xwc//tU95fJRFFS7UmUzBZtgy9r2TXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QehQvsQqzqGZDsoRYP0Ajj0F75u3xGX98C12yqdBHbg=;
 b=I263ZfMXoKSWorVOnZOEVPST0Bmky2aLijNj0Aqz9UDJRbewqX1Tw0VHNLs9dWnSxuJkWkW4DHZtATW7lO0wwSGXZJcIcy95i4UjZuNOI6HPiGAmoV4LV//qhgWEmJvCXR28YfAl1MMsZINJeEr5snFvjd5V6O/mWdsthjo4Bm21ClaIam3NAZ74pdwmMUlvyYb0pi7CHAudF5lXbtD532Etu0uC+FTfrPqEvZF8mq1VyPnAro0AMYiOFOX6LN/fgJ9ppI8ZSQ0/7ivvbCA7uXMZLkew/QTIh9VxagAkEnvRmSbvMxjPiWSu609/eVugWM+l/atTqoS6CyLRe6wkQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QehQvsQqzqGZDsoRYP0Ajj0F75u3xGX98C12yqdBHbg=;
 b=awkkN+opcJddXfuIQy0XE2hX06uWB1DbKtjKCEQkMh92pJSi/3383Yy9WPfOQd5VRGHhjhKBBSsSXpiUFEQug0XjMS2g2GAgo8oCtS6r9Y+oNrlmH+Tc5Mf9OImwq3NOYLJx+FI0tzZumpAJtezizoVUwKIx4NT4aGinJ0tHeKM=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB6618.eurprd08.prod.outlook.com (2603:10a6:10:263::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.27; Fri, 14 Jul
 2023 12:21:39 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%7]) with mapi id 15.20.6588.027; Fri, 14 Jul 2023
 12:21:39 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "ltg_tony@163.com" <ltg_tony@163.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to use "mkfs.ext4 -d" in my custom recipe?
Thread-Topic: [yocto] How to use "mkfs.ext4 -d" in my custom recipe?
Thread-Index: AQHZtjXIAlFVWn4kcEqu/9m5lPDQxK+5LwOA
Date: Fri, 14 Jul 2023 12:21:39 +0000
Message-ID: <719B3CA8-1BBC-4FFF-854B-71F0A8098CDA@arm.com>
References: <BLwA.1689326994683518678.YP8r@lists.yoctoproject.org>
In-Reply-To: <BLwA.1689326994683518678.YP8r@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB6618:EE_|DBAEUR03FT053:EE_|AS8PR08MB9410:EE_
X-MS-Office365-Filtering-Correlation-Id: 9446cf56-4dea-4b66-8aa6-08db8464e536
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 F/mfNjmP7ofE+zvU/gf/gBWSSNV63pUubvdb9mvY9M6i6y8IUcFK/APZYe7Q5d7akiLdKBvNN+YJp2i+pJ1ApdVcYK8hMi3/EGgZdtRM2HevS/SknmRBt8jCkiYqDSYuQLZ5oZT02ke8YRvc2lCPmXcG8jKb3a0gKCI2hKRgA5O+ZqYtX7jDqthk0hyaHK7q5qc+/PB0EXF+dJgUZnPscsGs2GmHYPzVbc03pvbW/AtQNWfYR0Fr0T+KXD1GqJCqjTR1AIjDbkjWYPTdj+fl7O28qKrw+WpyWsz+Hobp53LX1WxbaP5VCcgsAb2rbDLux3I5nhmWhfAAWG05dTKw/ec6aFnG59f1/5XR6G8SEpv6KqgoHW8fHQ7el2w5FOsXPuiLgvdVri1U+n4I4FwN3SgpnlHdY7DfHA2S81x5nx0+aYb+2Aprp6bQcW+W+Ca3GJef73Yd5ozO9d4a5+SQxedNFI69q3m3BHLzflHJxtIqvQBIzr9tq5uB77+Phshp4b9V41sBmUZLenNBqnk5y0jtTBhh9xdLNKBgaXXj9l61m0nkyIEsKWEvpsFkz5EPW+SU21BHNnSajLcTobMIoizSs9Z3UWYTmtEKYkyB3KDIwoLN+KjDORKqG73yhdJTyG24M8x+KGm58thwZYH0wA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(136003)(346002)(39860400002)(376002)(396003)(451199021)(6486002)(478600001)(91956017)(71200400001)(6506007)(53546011)(186003)(33656002)(26005)(6512007)(76116006)(2906002)(4744005)(41300700001)(66446008)(4326008)(316002)(64756008)(66946007)(6916009)(66476007)(8676002)(5660300002)(66556008)(8936002)(38100700002)(122000001)(86362001)(36756003)(38070700005)(2616005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C96E3D210AAB7540B2091115132B9E2D@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6618
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ceab39cf-25c1-4614-014a-08db8464e025
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+JbwoXMQHoMSmFdfi6EpxcCXvvMXwR0LcOugYf10jRKxHiTp0NpaSmSZnFweEe5+FC8PTda9up+XoKaphX0OYivhK9twAJNL5NFgH2Er+IqKB24SlDEr4lTtDbzA5Z+ApjBP0V0JwAktNVToKt8lBkYYlPshuVAz/77TYbZLDH4teh7uIuZ4HtITZtOGP/5k3q/VkaWLRua3RNYKNFG/GbJJscpwGkOLyImLsu5Fo+WpGMyg2Y8CRAbmxFy436JzsvdQKeu4NnXGt2iK/wQ/fQVdnWlRKeF/e77a7k/gFytfLSXL27lYP99jSj5AQ7Ktw1sRnepV2aSaw26nAab8nOfe/7ZNMK/HoJga1HldU2paGXR+GXmpZQsD8g0yW6yJEsEFFsJgpjW8jH96nzx+JRqTKwS2sxV6KJOqzuj81tFtBso3n9PBqQ8W1ct0CvwyqtkyU/Qp6MdfzpKZyKd7jzdFDa90Mchh/dg5QQTBEAeeCJO8ExU9lR2NUEXCKzBYcB+lq9leESNIWto0FlMt+lgAWsTXy8VS/rRWwSCw9dvGfmo4qSilA1czGMnHN0cySkdjfBXAftIpmV8kbNGQE+TthH93uOW2ax9ha83qeMFJ2NtRQ3oLEaHcSRi7GQ81KG3D4diE7TuTAe04iQTgUqPmmW0mrkYILbeNkQzl+V02eAPlLswDk2nqeMAcPX6wV6GikjzddwjrdRA/U0MuMZvZzQQqhs1XmLBMCCWNWck=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(136003)(396003)(376002)(346002)(39860400002)(451199021)(36840700001)(46966006)(40470700004)(41300700001)(40480700001)(4326008)(70586007)(70206006)(478600001)(4744005)(5660300002)(6862004)(8936002)(2906002)(8676002)(316002)(6486002)(40460700003)(6512007)(82740400003)(356005)(86362001)(26005)(6506007)(53546011)(186003)(336012)(33656002)(47076005)(36860700001)(2616005)(82310400005)(36756003)(81166007);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jul 2023 12:21:48.0053
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9446cf56-4dea-4b66-8aa6-08db8464e536
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9410
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jul 2023 12:21:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60579

T24gMTQgSnVsIDIwMjMsIGF0IDEwOjI5LCBsdGdfdG9ueSB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8bHRnX3Rvbnk9MTYzLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4g
DQo+IEhpLg0KPiANCj4gSSB3YW50IHRvIHVzZSBta2ZzLmV4dDQgaW4gbXkgcmVjaXBlLiBJIGZv
dW5kIHRoYXQgaW4gbWV0YS9jbGFzc2VzLXJlY2lwZS9pbWFnZV90eXBlcy5iYmNsYXNzLCBsaW5l
IDk2IGNvbnRhaW5zICJta2ZzLmV4dDQgLWQiIG9wdGlvbiB0byBjcmVhdGUgZXh0NCBpbWFnZSBm
cm9tIGEgZGlyZWN0b3J5ICgkSU1BR0VfUk9PVEZTKS4gDQo+IA0KPiBJJ2QgbGlrZSB0byBrbm93
IGlmIGl0J3MgcG9zc2libGUgdG8gdXNlIHRoaXMgIi1kIiBvcHRpb24gaW4gbXkgcmVjaXBlLiBJ
IGNhbiBjYWxsICIvc2Jpbi9ta2ZzLmV4dDQiLCBidXQgaXQgZG9lcyBub3Qgc3VwcG9ydCAiLWTi
gJ0uDQoNCllvdXIgaG9zdOKAmXMgbWtmcy5leHQ0IGlzIHRvbyBvbGQsIGRlcGVuZCBvbiBlMmZz
cHJvZ3MtbmF0aXZlIGFuZCB5b3UgY2FuIHVzZSB0aGUgbmV3ZXIgbWtmcy5leHQ0IHRoYXQgd2Ug
YnVpbGQuDQoNClJvc3M=

