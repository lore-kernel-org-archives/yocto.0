Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEBFC4707B
	for <webhook@archiver.kernel.org>; Thu, 11 Jan 2024 12:18:10 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.55])
 by mx.groups.io with SMTP id smtpd.web10.10116.1704975485418242042
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Jan 2024 04:18:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=RTxLKTkC;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=RTxLKTkC;
 spf=pass (domain: arm.com, ip: 40.107.249.55, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=gG2OtU/wN5C8fvCNfHZANJ8Yd6iPGO+D6kQgqZwNCU8O8T1kKQDtYeOqFdpvI+4V140wzKHRf7tXC6Y8HoVXj/QJRxOGh2BmqQ8YImE+N3kJWCM+a5Id9EmzMD4fEKM2P4inlrxIBEWizpEjRqcMqikaZclLobJQid/lbXwvF14GJJk7t9l+Ge9YLdM5PwEpPh6gMQStTfoCk//nXWcsS6jRnIFTTBaHtQ1oahs5SK5Oof2Ev6QDCTFwUE9U5w1f/T2jCBBU3Rk0ub3JuUMiXsPTHl97zQbISoAsjptJIBZKjR34zuYyjHV3S9QZrJo3RfZpbMFxMOVsOMqo9zE/MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXDYwrJ4Ih8/ebUnTweT8cwjeRYZsfa5wmKTMcqfmRs=;
 b=ZSfhGLcYf8880tiOCXo561qwMWje0A4xQR6NzEi4bkq6aQMYAZAkpXd9gErHj/p1Yfy4Uc+PVmF4bSKhYGrcjKRizcIpS2RanR1bnopdG6Nyz/6AoGsHIypvIDZnsX7a/eJn9lWEUzo5slG4+bp6ZSy22Oy4ZN50OsaAYyNI2GinwAIln5sJ6AzquVnGjvSnRZsqbI4JlrYBsJ3ZKo0RzC/nS67aT8VLpi2J/DHZ4rXxkMpI85SNJ8l3g+nureuUqrXiumrCQ4K3fro6fEV3yz3xRmVL8Pyh8hZYiQfivXW7lOX7128fv7FVA004u5tplUHOnurH0mtcdV+r/ldFlw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXDYwrJ4Ih8/ebUnTweT8cwjeRYZsfa5wmKTMcqfmRs=;
 b=RTxLKTkCvi+BYJeryLah7HdWZb7l+9gakTzz3pXwa1o+3ruLLR1czOUaOaWX89jFH9DopLfIQIKhzxjnkcgVa0zjIXnq4YNwR9E0DCkafsApxwmgXJP0MZbr84zBW4F4cKoWUyjOam1fBygvN790qWBYUeSwckxZ31DCylFTUp4=
Received: from AS4P190CA0052.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:656::24)
 by AM7PR08MB5367.eurprd08.prod.outlook.com (2603:10a6:20b:dd::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Thu, 11 Jan
 2024 12:18:01 +0000
Received: from AM3PEPF0000A79A.eurprd04.prod.outlook.com
 (2603:10a6:20b:656:cafe::1b) by AS4P190CA0052.outlook.office365.com
 (2603:10a6:20b:656::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19 via Frontend
 Transport; Thu, 11 Jan 2024 12:18:01 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF0000A79A.mail.protection.outlook.com (10.167.16.105) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.14 via Frontend Transport; Thu, 11 Jan 2024 12:18:00 +0000
Received: ("Tessian outbound 31df1b57f90c:v228"); Thu, 11 Jan 2024 12:18:00 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dca0ef2e6e470cfe
X-CR-MTA-TID: 64aa7808
Received: from dfc23d489400.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id D9596746-961C-4036-A1D5-001E9A9CA414.1;
	Thu, 11 Jan 2024 12:17:53 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id dfc23d489400.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 11 Jan 2024 12:17:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y0e6x21/Q0yra9Ys1uOoIhSbjgkAoiiomN5zzn3ht1nY2H0/AnWFoFQRF1uUTuHFRiU/BPfyDO9jfyGIkW9/SuyWKEOPaPaMz4FtclBCv0C7z4hOAuEXyrqun4b8MQBe00LkP58xw/ft4Vi8H4HwXQK0SlYT4QC5rN8AQdSg2QsU7vKIflgOR9SnoKpF9+eNt9Bs+ObnZ/Dz6BVpaUv7RZKcr+e20MWzzLNcupFeloQg+wf0SIsnk+0PX2ogVl19j7jqbFv1atQgvkfAyH26rdj+qcP5QoR6o6r7LVJ2E7rX124kLe8/TohRO4Hd6KgsF63kpw4nh6HDNmPBz5Yuog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZXDYwrJ4Ih8/ebUnTweT8cwjeRYZsfa5wmKTMcqfmRs=;
 b=HImfQyp+9nscfj3swsfeEfMmn8C4iVMwjdh7tJFk0A3KHkcQr9ijj0AFK0zl0XvpiVbq9rUPh21lXxNFCKAeUQd/SF7thVlHQzJbWuehnfKgSaTOONRUEET7m3z5A9WE4QFXlvqbF8vJPur6UpdbVU4E5uacAHUSN1Ho2U6dLeCuAEi0Fma14gct0XiXa4RqwHYZcAWRqbIKZbgVwArddpyp4AJYOp2yedtr5b4JwAe1M6FIQyQ1YtRH6iS1/Mxat1Zn/II7LMY6sS3KEmMz/OXMa8II2s0duHNP3/EIxmmlrsuvRp/3ZoAgrvbjx0Er57DxtNPfpy9d2gZYg3o00g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZXDYwrJ4Ih8/ebUnTweT8cwjeRYZsfa5wmKTMcqfmRs=;
 b=RTxLKTkCvi+BYJeryLah7HdWZb7l+9gakTzz3pXwa1o+3ruLLR1czOUaOaWX89jFH9DopLfIQIKhzxjnkcgVa0zjIXnq4YNwR9E0DCkafsApxwmgXJP0MZbr84zBW4F4cKoWUyjOam1fBygvN790qWBYUeSwckxZ31DCylFTUp4=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PR3PR08MB5641.eurprd08.prod.outlook.com (2603:10a6:102:91::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Thu, 11 Jan
 2024 12:17:51 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9f34:f165:4c51:be06%3]) with mapi id 15.20.7181.019; Thu, 11 Jan 2024
 12:17:51 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"ashujoshi35@gmail.com" <ashujoshi35@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>
Subject: Re: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
Thread-Topic: [yocto] sd-bus.h not found even with DEPENDS += "systemd"
Thread-Index: 
 AQHaMlKf6KJDe1K7BUahs+H4BLYwKbCw1vuAgCCNMICAAFl2gIABrdIAgAApboCAANtDgIAAO44A
Date: Thu, 11 Jan 2024 12:17:51 +0000
Message-ID: <CAEA4A72-2B38-4014-B258-20CA75958495@arm.com>
References: 
 <CAMKF1spVwmeRRw+bhDMBYc7ckzUFZ+-_Hfjz4xvRsQgSDYFxVg@mail.gmail.com>
 <12528.1704962671502041182@lists.yoctoproject.org>
In-Reply-To: <12528.1704962671502041182@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.300.61.1.2)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PR3PR08MB5641:EE_|AM3PEPF0000A79A:EE_|AM7PR08MB5367:EE_
X-MS-Office365-Filtering-Correlation-Id: 03150309-a09b-41dd-bda2-08dc129f5a74
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 9hcravClD4HGPKv+mBSSwOOuhym49SmwvzG1rr7HcwlpV9140blPLhshMkLHGN1YDyDyA0r8Jeyy8ehetD2Wv9F1an90tV7+JPBwW3SvmpTvkcE9icQEDaT5aGfKnCiEuxUknIU45JN9FernPSauKqllDJwk00435iqhqMFRMQdKVKNFBGWb3UtWol4X/PBIO7pEOy4cq5TiqJzd2VxyXjwGp8vIYD/Pyqp2c5InME3dj6K1/0hPqw9DSq299gYb/QWKu/hXiJZetKXG20Bo4kcdBAmM1V4zDlkHBcbh/ZC9GTo3oU8QJu/lYstmXh1XyxJ8g7GqK+02pUySDP24qCgyy44S0G/Qc62JxfDlzhZq//TpdM/fAQS8TFTKT0hrHHesPMpsgVIFBAFUdZxGekYJcfGHfdv56NjD3YdmOQV8w/QIKh9LYFrapCMf0YYyRlwDeHD/W8EgyKrIjjeckXpaczRS63cJueQCUl4/TpsUUgWKFsny/DmqsuJLQ4XLLAgCYTl8dBw0tp9oLtScXmjL5NfkDu97T26RKaf9LjvbUrEvCac+ZryIoZ4ECtqFW7X8wM+hO0irtCQT+IkZOKWvAv+IL01uramCEoUhQb1YgvoDFo2yjqAaPVo5XS+dVkN+uGTD8iXvcK6UciYMLw==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(136003)(39860400002)(376002)(396003)(230922051799003)(1800799012)(186009)(64100799003)(451199024)(86362001)(26005)(91956017)(6512007)(8676002)(8936002)(478600001)(64756008)(66946007)(66476007)(6506007)(66556008)(66446008)(76116006)(71200400001)(6486002)(316002)(53546011)(110136005)(2616005)(4326008)(33656002)(2906002)(38100700002)(36756003)(38070700009)(41300700001)(4744005)(122000001)(5660300002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <69CD888D5DED02498DF25D92207ED72E@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5641
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF0000A79A.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	eb50d863-3d82-457c-84b6-08dc129f5500
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oJ0/8by2GDEhInDIBi+cBevi+PVJRAyZVjRapDg8ZtMMCufhMZCjlSgYr7oIbWbM4AyIVOkWTbMvfvaVCDR45iAidfE9L5WOfjAelhKIF8s/UgxMrPpiVKh+Zp5VA2R7EL4MIsGIr8GavMxfkvEQNaYV57Mp05pNlCC44A/FbnpehLtN1OXmQ/23Uv0GBe04T8wauvQ4XSitKVZJ/xNqUCIN5HNRW2QwrCWoCQvSRcGmKXB9r7SBRrFDGE06fDU+OHcqhR4XnJfbq3KmyLIDv/G++D8kROmUZDXo/IoYlqeWnEgZWdel8G1xLz/LU4Ed2g9prxNADpuDI6vDY8nNRydmMud31zB5Kjq1nHPX0/R+nQPd7aubM847xH13hK8j2AOCSO4xmVqXA0FialnxC8XNWTvScAzjDU/Q4URyZVNwx4AqIpO39EqVcZh3xne3+ftFPwMa8EC7wVtLjJGIIYpu6GvQQ/3sF4qhDeJTiUyVs6MfhYeQrF5SBWZlQhZNrlUTbXyTUk5mK3j/+MCI/cl0q7zZDXc9Pq1DdVL4/hFuZ3lxaW6DS6lsIdGIDk0vKflJlS6VLYAlqFLGvt1DX07QVY4eBsGNt1wFqJel5N77PeosHntJjDZbJI3KXG5NffMclFAymrsCdjhR37qng7J+CH2Nt8kwqx52A25fDM3zj6yhFEX5vpr1vCTWS7rJhswCVwpKxBYITPXdlfFYeQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(39850400004)(346002)(136003)(396003)(230922051799003)(186009)(82310400011)(1800799012)(64100799003)(451199024)(46966006)(36840700001)(53546011)(107886003)(6506007)(2616005)(26005)(6512007)(336012)(41300700001)(86362001)(6486002)(33656002)(4326008)(316002)(110136005)(8676002)(8936002)(5660300002)(4744005)(2906002)(36756003)(70206006)(70586007)(478600001)(40480700001)(82740400003)(36860700001)(81166007)(47076005)(356005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2024 12:18:00.5999
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 03150309-a09b-41dd-bda2-08dc129f5a74
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF0000A79A.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5367
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jan 2024 12:18:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62131

T24gMTEgSmFuIDIwMjQsIGF0IDA4OjQ0LCBhc2h1am9zaGkzNSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8YXNodWpvc2hpMzU9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IHdy
b3RlOg0KPiANCj4gSSB0cmllZCB0byBldmVuIG92ZXJyaWRlIHRoZSBsaW5rZXIgdXNpbmcgTERG
TEFHUyBidXQgc3RpbGwgbGlua2VyIGVtYmVkZGVkIGlzIC9saWI2NC9sZC1saW51eC14ODZfNjQu
c28uMiBvbmx5LiBCZWxvdyBpcyBob3cgaSB0cmllZCB0byBleHBsaWNpdGx5IHNldCBsaWIvbGQt
bGludXgteDg2LTY0LnNvLjINCj4gDQo+IEVYVFJBX09FTUFLRSArPSAiTERfTElCUkFSWV9QQVRI
PSR7Q09NUE9ORU5UU19ESVJ9L2NvcmUyLTY0L2dsaWJjL2xpYi9sZC1saW51eC14ODYtNjQuc28u
Mjoke0xEX0xJQlJBUllfUEFUSH0iDQo+IExERkxBR1MgKz0gIiAtZHluYW1pYy1saW5rZXIgJHtD
T01QT05FTlRTX0RJUn0vY29yZTItNjQvZ2xpYmMvbGliL2xkLWxpbnV4LXg4Ni02NC5zby4y4oCd
DQoNCldoYXQgcGFja2FnZSBhcmUgeW91IGJ1aWxkaW5nIGFuZCBjYW4geW91IHNoYXJlIHRoZSBy
ZWNpcGU/IEl0IHNvdW5kcyBsaWtlIHRoZSBtYWtlZmlsZXMgYXJlIGJyb2tlbi4NCg0KUm9zcw0K
DQo=

