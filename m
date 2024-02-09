Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5D80C48297
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 10:47:45 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.43])
 by mx.groups.io with SMTP id smtpd.web11.8563.1707475661608244293
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Feb 2024 02:47:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Nnu8MfEJ;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=Nnu8MfEJ;
 spf=pass (domain: arm.com, ip: 40.107.21.43, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=fQpBWKuSc81vkKj7sTSs1BMQ4/i8Vc4R0x/iTi6UK4fnOdGL0C1GgYSVidRtPKZJt+ZxYuWrkaPFQfh3lnKJdJ+NSm4Wk7qSHQfLMwWG7oyJEY0NVpxwOslkqzOfENaxyr9ck7P8bRka/lSwSoqwc2Mkpb+CypleuooSUmsK44rNMQZEhsEhrnkKJDkF3GLpEr7e4JV+5krLwcjSlEL9fxqmJe5zw+7PPbpKRU/aheEPlvBE9hWjyymKS+XnQKjrmnkUa3ZVCOwRpsY72HI2pSdtHtYmtKs4MEVTiMzpEXq9eRw7mn0rDXHA35aBu4Fq0+dhgyk8ZSIkbM/ztawrYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=96OthGmDNs6EjhbdPa/LCQzzLlpAOhNIqsHcGjwfWEY=;
 b=PWatpA9ej7STeXObAy5qB9jmEfiQaRgAo7LgIWO6d1izKqjkKIX/rE+ahbHzgmo/993bgQn1PlxZfpvmJE1k8ZYwP5XKhpUrvaCoJlZmTh89XKcB4A9QAXlnZTYkMFucoUr8joLWeiiyBM2Pn3r/8jTigGy7Olcly35oDCK7AoS8b7EyocuxF9l1FTzq35X7NzWTSfZJ3Zr8550qlYq8QM4Tc2+L+CwdrKGF+NwZ+6vyA0UylinIV30Th5MAOfT8zx1CHiUM1q37CZIv499NRGZlpL4M3rppP5pKvqozfc+nPChChA0Ww50V4Vx6Gys7ZJWgXZ4K4K33Jujk60AqHQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96OthGmDNs6EjhbdPa/LCQzzLlpAOhNIqsHcGjwfWEY=;
 b=Nnu8MfEJChswavzfjEew4PDuPuGQTGSINKcK4Yi/o94SexTnOKwPdt69ijh8egwrelpFYGFiROZWkVsqIxTNNAnBn+q7ooSr2gj1WEPX6J37GE6MPSJyadcNK0RY26Lxje4qF2EyB7jwyPZBOpTYKIO/kBOgphiPckty2uGK+LE=
Received: from AM6PR04CA0032.eurprd04.prod.outlook.com (2603:10a6:20b:92::45)
 by AS8PR08MB9549.eurprd08.prod.outlook.com (2603:10a6:20b:61e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39; Fri, 9 Feb
 2024 10:47:37 +0000
Received: from AM2PEPF0001C70E.eurprd05.prod.outlook.com
 (2603:10a6:20b:92:cafe::b3) by AM6PR04CA0032.outlook.office365.com
 (2603:10a6:20b:92::45) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.39 via Frontend
 Transport; Fri, 9 Feb 2024 10:47:37 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C70E.mail.protection.outlook.com (10.167.16.202) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.19 via Frontend Transport; Fri, 9 Feb 2024 10:47:36 +0000
Received: ("Tessian outbound 67699c3f02bc:v228"); Fri, 09 Feb 2024 10:47:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6606a8aa7f7a94be
X-CR-MTA-TID: 64aa7808
Received: from efc890e76c6a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id C0B5AE69-7C8C-4335-9EF7-59EE93DD279A.1;
	Fri, 09 Feb 2024 10:47:30 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id efc890e76c6a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 09 Feb 2024 10:47:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MXvAZAyQGELfv+4jlfpZIF80qGSCjB7FRRuve64yPg4eW4oiG3rSTJdCpJOIIrdBW+BIFk9M9VhYQsFlGmvuwMwE2kPyqKNhHcuDVd/kOJ1bj6ObuUqHDqvQ6NddrSn16YripJd4PUG2Q0czXKWg0pv2Z1aTeEpsR1oD8Swf/H9kir3Co9Gx3tlpDTIJoqMiUBmUOhNQ2q347pxN1uQADz7+o8+0iYOtTt5c4Kt8uSuP1yHTGSL1EdHByISjbY8ppaqKeSWsucq57PBuSj0zROGnImxxUsKYY64xFujAtG8vMOFmoUl1d2AsVy6MmiUdGS031w24yqUJRHjefF0vbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=96OthGmDNs6EjhbdPa/LCQzzLlpAOhNIqsHcGjwfWEY=;
 b=KD76kuzcKWrtlekYdyyRZL/uBJL/eC7tfZCNJHzsSl7N9/Le8LWjzWwNvScwGZlBDFHMo7rd/DWnVfs0N0SR2CLVYbYy2UR4wCdXYzhl3wWc3hAXeoJoHiFWH0TJL439GnXQz8H1XOg/Ohbp/8OjCv8EYB3vzMmCWjEFqBn8gQ25UbnrWCOI8OkfDjPj50XcMv6g83QqEZP04a6E2zALLiJncNuHlQl+eQ8QmUnaHVNlU72g4mgqOTe3K7vZIu2l4XPqnyeV1fu4qwhWgyROf44wwjtnWqdTWxfGhdsuP//nrCVwhQUHGNNWLs2iZtGWpyryiq+YdExyshYz7FWjdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=96OthGmDNs6EjhbdPa/LCQzzLlpAOhNIqsHcGjwfWEY=;
 b=Nnu8MfEJChswavzfjEew4PDuPuGQTGSINKcK4Yi/o94SexTnOKwPdt69ijh8egwrelpFYGFiROZWkVsqIxTNNAnBn+q7ooSr2gj1WEPX6J37GE6MPSJyadcNK0RY26Lxje4qF2EyB7jwyPZBOpTYKIO/kBOgphiPckty2uGK+LE=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB8436.eurprd08.prod.outlook.com (2603:10a6:10:3d4::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.36; Fri, 9 Feb
 2024 10:47:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7270.024; Fri, 9 Feb 2024
 10:47:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"marek.belisko@gmail.com" <marek.belisko@gmail.com>
Subject: Re: [yocto] cve-check output display
Thread-Topic: [yocto] cve-check output display
Thread-Index: AQHaWzYjyV9caqj9406gkps36WMkXrEB1EaA
Date: Fri, 9 Feb 2024 10:47:28 +0000
Message-ID: <0428CEE9-BDC6-4DA4-8ED0-BAB5A3AC2F6D@arm.com>
References: 
 <CAAfyv34eGKsP-EvTxO4=ERjZL5=ahUMuDq_JHGgw3903gRP-0g@mail.gmail.com>
In-Reply-To: 
 <CAAfyv34eGKsP-EvTxO4=ERjZL5=ahUMuDq_JHGgw3903gRP-0g@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB8436:EE_|AM2PEPF0001C70E:EE_|AS8PR08MB9549:EE_
X-MS-Office365-Filtering-Correlation-Id: b561c036-c817-44a5-3702-08dc295c877b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 1kDp17rWpmE3jxvw9f3gE+thV261ZpVWegB/X+vLBjT0uDgo3dw2+/ekRyxtWd71Re6at4wGInCU/Alyh0IRbLrszyCj0IphA1Ci3qTt0FQIO0eXgEYz5A8QXF6AD1vXit9OsFcBbqyrIPdN/U8CLlQLh81a+umyhSB2ufm837T2npIYSDsNo6RewP3NeGkzW/46ThTFHvuPVai5p1ynWQ/QzXSGVa7xyJCj7E6zVMJOqbsOzqz+xtX1hb0FbP8aSQRXLq2rdJkNoarnKE1xVMxGyDQyrp1iFFuvBOTDoF7WMWkYOOlDHk6WouaBuXnul5DdqoeRtNSd2C2nOZWDedkU17zp6JPklJH/mPARUo5ojcluLK5fzpFPDZOvU1y5AaVQSWhz/ut+vflzMo/B3FAYCjdVxovotO4HdfsPO3TBBRDm3q+yRVw5TbFdqmXi9RUqMEuegVoDZxqaQvXwdVc5L6axEla8aFmpIkY982GFOptZBJQYNnHIEyZjWz7aATSSnVUuQBBhxG3WDeImL0MCOHgh749Fez8DqQoLnc6atQMamGDzx1/3K3uLUwiGwo9jEhGWvbdImR8QpF10M1ps1HbqrJoCF9WvDC7gCHMojx5X+24x97eby3yP1gpx
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39860400002)(396003)(346002)(366004)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(5660300002)(4744005)(41300700001)(86362001)(122000001)(26005)(38100700002)(2616005)(66946007)(66446008)(71200400001)(53546011)(478600001)(64756008)(36756003)(38070700009)(66556008)(76116006)(66476007)(6512007)(33656002)(6486002)(110136005)(6506007)(8676002)(8936002)(316002);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <ABBC44AF94BD9E41BFCFC50FD90F961F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB8436
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C70E.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2d3f1264-7b3d-4557-6904-08dc295c8283
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7h7PK09xbMKf2DP8AKU5YAgMOhawkrPLH+m2OQ9Pz9kgFx86OAEaJCb+pcdZ3WSrZy+ZY6jb18ow73+9cDw+B0elNl7IQFdBspPhRTV+pSpcgXE+xGWxAXf/p9oYtF59jsGfoVJDaCE7GBx9zonzw/RmXVG3yNzni6isaG0ykZcW8blC7sxz54X7kNHFizc4xve/E88uE4EqPmG3WN1L3NlCfqZ/vny1nHMozHa0B4eHQ9EGnlDFlg+4C+q90+cvjdEmBeF/NHbcJbZZLWrsVXBKP3BPcxy/HIhE+0XSdJpBBEhocCwxW0yjEKv2+HZYwv7SFmgZGyM2R0s/Dj1+n93DH2hbdJ7wxH0LPUKx/RJxgWD2I02Ssj0x0THddZwuL2juCL29++5YpvoZxohtnJn7HBtwJRaI+9E6WMsuRUesMQEJWO574TgeEl1DHPw49njYWjaOBnJt2epODslAZrQswgAH+/pmUGr+lM0iaimJZYm/6eo8ZnrK1hRxM/z7Pyf/8FyvZGtV79E/JebUIWy06csQZlMHGheklUVh7+t0ZiJHwGrHTQkYBIPFpy5bbj8r07ucQJzwOGu6r25O38cm25ZjWnJx7uqxoh+z4ns=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(396003)(136003)(346002)(376002)(39860400002)(230922051799003)(451199024)(82310400011)(64100799003)(1800799012)(186009)(46966006)(40470700004)(36840700001)(6512007)(36756003)(41300700001)(70586007)(70206006)(6486002)(316002)(53546011)(6506007)(478600001)(110136005)(33656002)(8676002)(81166007)(356005)(8936002)(82740400003)(336012)(26005)(86362001)(2616005)(5660300002)(2906002)(4744005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2024 10:47:36.6028
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b561c036-c817-44a5-3702-08dc295c877b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C70E.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9549
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 10:47:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62445

T24gOSBGZWIgMjAyNCwgYXQgMDg6NTcsIE1hcmVrIEJlbGlza28gdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPG1hcmVrLmJlbGlza289Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiBEb2VzIHRoZXJlIGV4aXN0IHNvbWUgdG9vbCBmb3Igdmlld2luZyBvdXRwdXQg
ZnJvbSBjdi1jaGVjayBmZWF0dXJlPw0KDQpUaGUgb3V0cHV0IGlzIGVpdGhlciBodW1hbi1yZWFk
YWJsZSB0ZXh0IGZpbGVzLCBvciBtYWNoaW5lLXJlYWRhYmxlIEpTT04uDQoNCklmIHlvdSB3YW50
IHNvbWV0aGluZyBwcmV0dGllciB0aGFuIHRoZSB0ZXh0IHRoZW4gSeKAmW0gbm90IGF3YXJlIG9m
IGFueSB0b29saW5nIHRvIHRyYW5zZm9ybSB0aGUgSlNPTiwgYnV0IGl0IHNob3VsZG7igJl0IHRh
a2UgbW9yZSB0aGFuIGEgbGl0dGxlIGJpdCBvZiBqaW5qYTIgdGVtcGxhdGluZyB0byBtYWtlIGEg
bmljZSBIVE1MIHBhZ2UuDQoNClJvc3M=

