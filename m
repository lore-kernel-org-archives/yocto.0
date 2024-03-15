Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 24C63C54E58
	for <webhook@archiver.kernel.org>; Fri, 15 Mar 2024 12:08:30 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.89])
 by mx.groups.io with SMTP id smtpd.web10.20538.1710504503430129250
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Mar 2024 05:08:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ut76eYcq;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=ut76eYcq;
 spf=pass (domain: arm.com, ip: 40.107.20.89, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=cw4q3TGRbFjRX//FFwQUGjZ1udgc2dnn0NAO7GXLn8S0OHKX6ZHjBf6i5VirE1n+b2ZbtvZchpUSZQOpJv4MCAMGu6hHZJjpoiQvW5Jd3ijHWLab5S1FLSfxM8dhIglWi/gn7IYEY2y05PWrb5jT1o0+qm9tg8TAMsArCSgBrryrqE0SZUtE8sdDUqeTh38MsHexM2D29n8XGMR3yCsq0ow0c6VFuh2qS9ahrE+/ZOdBxfgjuDnC2rl6I6v74DJ/w8HNU/XJskMbdmj3/K+GEwmlvniO2p1+gyD8H5wx1dc6Ok3p7dijzH0HGzJ9WOLtGyAEZFBIrZQplEZupRN2Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kahk7JSKHmrKYXBsXF8wLUrV68SXpA7WJW2aDgyVumo=;
 b=mAQ4icYFJq0qxMnYQqesYnRNfhKSOssWoj4f4bkEVgx1u8kCOLzMAXT30C5D4gcaKtvGup7vIAdW6qKja9sQwTuj/+zkZcjlqBTzQ87GoZ55MCdyb4sUturpL6YqnkhhRr8mLte+D7EIw8wF6yC/iLhgDXuUV1DRnmhTUmbvaDt4ya3x0e006ReBzyqhmw+HvBeWFT9Edw2Ly3DzsfRO/mQS212sxzXrV4HVxoCA3fmIH6GlXzfJqm4LdGegeWQLk65e3TvPPZuylSAzlkU9BqyTbXHrbM8/eWkk6lK4WHsttebr4KuMPKsgUZ8hSpcDxeQYWZQC4VM/rCBlMyIF0A==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kahk7JSKHmrKYXBsXF8wLUrV68SXpA7WJW2aDgyVumo=;
 b=ut76eYcqI7eN3afErF59HCstBbpHNhCJLH84C0r/tkvrEn4ZhoC11UMCnuWagbB5FtX5ueSnpakLlc4+53ieRMcguZiMjrs+US8qE6BcmN9Bm7OnEuWhslSFTdtAie7oky6GTEMqnEAqADVZUio7n/f1/qegUuoPpn6iXiYiBtQ=
Received: from AS9PR05CA0280.eurprd05.prod.outlook.com (2603:10a6:20b:492::32)
 by AS2PR08MB9762.eurprd08.prod.outlook.com (2603:10a6:20b:605::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Fri, 15 Mar
 2024 12:08:16 +0000
Received: from AMS1EPF00000049.eurprd04.prod.outlook.com
 (2603:10a6:20b:492:cafe::8d) by AS9PR05CA0280.outlook.office365.com
 (2603:10a6:20b:492::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21 via Frontend
 Transport; Fri, 15 Mar 2024 12:08:16 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AMS1EPF00000049.mail.protection.outlook.com (10.167.16.133) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.12 via Frontend Transport; Fri, 15 Mar 2024 12:08:16 +0000
Received: ("Tessian outbound 598157ceef91:v276"); Fri, 15 Mar 2024 12:08:15 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6a441eddafce1dbf
X-CR-MTA-TID: 64aa7808
Received: from d41939b0b086.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 34CDB200-D2A1-40D3-BF4E-8F6D013F0CBF.1;
	Fri, 15 Mar 2024 12:08:09 +0000
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id d41939b0b086.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 15 Mar 2024 12:08:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ITN+XgL3Mw8gAs1iCkEjJ55dC/niir3Db8ufg+oIE76NYkSp83hDpFuInKCCym+6POaFusWg3LDBq4aG3ylc08JcAZLPm9aHoV05sUOfcHhw2qOxRbkZ4RVKxOVBSbPCBSV30f10xKI6481lvtkQGTAs6H6tcUCPDMBMpUZDmJuZWj/FeZjP6jJnCxEe4IDczZ6Y9DQlwTg0TQm+hFkBnV10FhpTwHH+7vxNAljdApjb4ERG/fLv0JbkXRAWZ1J/mYL7pttlJX3I8KpRrouIfb6B3x3l6DoUFNFtxHWvUeCoVdXGwq3atbIYE25Zz5+1Nsvljkcqs6fuQ9+sBQI68g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kahk7JSKHmrKYXBsXF8wLUrV68SXpA7WJW2aDgyVumo=;
 b=eXBDEiFQDCikZe0c3g56sGONb3ggiEumYzb/ACd1ccfOdUYW6mdXffbPNc51OagN1myN+hT3fX1rFa3/U5kDTkf8vzJcVsZ9ClP3hLEDA1ZXtUH/eQYf0YeKzN7KTzdqbiZY0f4WmZ0mdp+mN70m5DZ1R+jbYrZ9en6r+LC5DRQWot6DHNMyM56pIgDcy237DzRuwBbdotgjJM3mv8nEOtjVmfOljphBWgS+CiQruSRne00THXuEX2F2TR22GbyAW1ms2iBNQcQsx7gboyzjtOCebf1J5wnBADPV8x9tpnpo1YmoReRouzhwUVOu4BT+aV+gAAi8BUI26Jq4gry9Iw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kahk7JSKHmrKYXBsXF8wLUrV68SXpA7WJW2aDgyVumo=;
 b=ut76eYcqI7eN3afErF59HCstBbpHNhCJLH84C0r/tkvrEn4ZhoC11UMCnuWagbB5FtX5ueSnpakLlc4+53ieRMcguZiMjrs+US8qE6BcmN9Bm7OnEuWhslSFTdtAie7oky6GTEMqnEAqADVZUio7n/f1/qegUuoPpn6iXiYiBtQ=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA4PR08MB6174.eurprd08.prod.outlook.com (2603:10a6:102:e6::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Fri, 15 Mar
 2024 12:08:05 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.020; Fri, 15 Mar 2024
 12:08:04 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "ashujoshi35@gmail.com"
	<ashujoshi35@gmail.com>
Subject: Re: [yocto] No module named pkgconfig
Thread-Topic: [yocto] No module named pkgconfig
Thread-Index: AQHadh2okc2nrOjyi0eA+JzyJ3lgp7E3iyuAgAADpYCAAMadgIAAYSkA
Date: Fri, 15 Mar 2024 12:08:04 +0000
Message-ID: <8E11ED0E-B678-4D7D-9619-0C303C99BFEB@arm.com>
References: <Iba3.1710427257769217823.m2lU@lists.yoctoproject.org>
 <1AFA0CDE-F51C-4A2A-BD90-3E186C243D4C@arm.com>
 <CANx9H-AQ3i-AHzzyGGOoTqbJPCmRpCSF8a8CzqsT=fti_kpxfw@mail.gmail.com>
 <CAKjBKDOAkciZQkVV9eBEOBHSDbzbHzT2Hey_45KSnHknRVVgDw@mail.gmail.com>
In-Reply-To: 
 <CAKjBKDOAkciZQkVV9eBEOBHSDbzbHzT2Hey_45KSnHknRVVgDw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA4PR08MB6174:EE_|AMS1EPF00000049:EE_|AS2PR08MB9762:EE_
X-MS-Office365-Filtering-Correlation-Id: 718f2f57-767c-4168-fb0d-08dc44e898a2
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 xxf4CvKHQAIQl7NYMn7k+9Lt9yfcM7d4yOCWFAcMt7eazco5SX3vTxPXd88spQex1+kZy6t6Xqe3wWgRSYJAGwxQYWuyr8ZQIq4+tETESL/FzN5Rkp7fV9bc005XUxoI7R331M0Tu9/yYuCLFFYzwF9GXKmEQFkAe4JpE1OHoMd6puFc01os2BAvIgRGxixqckBI73gpqiHBgMledPSqxRguQtoiR1BSXOB0q7+YGhWRUIWC1BDgeDtln8IL5kC1aMqcRDETlOJJhrhX6w5chDoOSfdzlNiZEtPMm+nanSZIl5Re+gc7VlWvVI5DkP7KaTJEmyyoP6LmivPwSjqQdAzMKqTRQ30W9J8Kw+y3w09vfPS647zJTDf3saNe2CkTbOZW/T3sWFFAU9uEI2q4qJFKwWSbkc4DjvC788cG+AZwOnJKUfUbuPHfdCB+bR7DkyisxklB8oipIb0qswbnlP9tXd9qybfxaytMQK4J7twSxJkSLhhO6ZCDogVLgbAHX8Zthh8kyAWXk342+7ggUN0bXPCB4jQMD4YmYk2ZC49Wg1n8WyMLo111sODC7OPy7yF9aU4JYWRTaPa7ufaKmcENTljT9QJCmp7h3b7THAZl+icpeLxv9W3AHPiEySO3y/M9nLVKhegvCOxmcKKb/mZ8A0Gv3zqxAsXJ3pTYAgOh5O3UogVXNV0UdtM+KHKK+9+YnMXB1a/AglvbYPpZbhCGBuO3PMmeASd+gn9lYxs=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <101CDFB7EC484B47B1B023A4F60107F0@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB6174
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	e30d606e-aaaf-45c4-5e70-08dc44e891b4
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3raDkBwpIO47ZPdOicA79pBPNzGGZ5UaubFCuuEUyQoYZf8D2uW5V6OuN5rPxWuTM0u4USnpv3gYXVfbw0gi+3wj/q5nvmmwn+5Fwo9Y/XB0riQQYKucRfcxbC08TN0Cq1mB2KRLP1f3AbANawWdrn4H3srFklVfrR/gy2tVWR764YKTUb2g0Be2FKBxiPPVv71oMe6Uvl0RohqHYp9f162upx9QhioE0Zv5ZelgM9NkcBTLEz2h4ZIZj1zFOlqmelBkcyHh5pVyTa8RYEsBefDULtCDJDBilbahx60hnZjhyL2dGhE4rnxRpKu7D58W60FQ53tIMvt2B94ubj0+QN67xBuSfwYEn4JTSyfxP4S/besyj1qjINWPz12PXsuKXZpgPVEHaYzeTeFSj2U9JL5mChpsmKpm1UvNt5i69qhSZQQC7lwrXlOTtR2NNaa8uwkjIqzOTqx+zJOfN0Rcewrcv7mqjr13arxhkJGRHvuuKb/PLAXA/ibqcLVUlwm9rrFQslxb+M37tu5AHfPiAZFTZ149CgK5n07wXYrGBHdXMUig/HjaleW8rIA7y+oMlgC43vBIczP+dXL1eI/FIxWlt6F3LyItLV3RS3Mhl1v4vG76lV0UKbN7JD8sLrkRN9U2djkGVWsUde2CnEeziyLuvlZ3xsIzeamMNy5Ri8D4j3jNjtXsI4HX3uECpuzwn6Lkw8s5RP6i+y8+FdtIFIuUWVPvT+FoUD9A+0OJobTzP1eTsNYHkGtnKn5jn5Qn
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(1800799015)(376005)(36860700004)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Mar 2024 12:08:16.0405
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 718f2f57-767c-4168-fb0d-08dc44e898a2
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000049.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9762
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Mar 2024 12:08:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62766

T24gMTUgTWFyIDIwMjQsIGF0IDA2OjIwLCBBc2h1IEpvc2hpIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxhc2h1am9zaGkzNT1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3Jv
dGU6DQo+IA0KPiBBZGRlZCBERVBFTkRTICs9ICJweXRob24zLXBrZ2NvbmZpZyBweXRob24zIHB5
dGhvbjMtcGlwIg0KPiANCj4gYnV0IHN0aWxsIGZhY2UgdGhlIHNhbWUgZXJyb3IuIEkgY2FuIHNl
ZSBpdHMgcmVjaXBlIGluIG1ldGEtcHl0aG9uLiBBbHNvLCBpbiB0aGUgd29yayBkaXJlY3Rvcnkg
cmVjaXBlLXN5c3Jvb3QvdXNyL2xpYiBwa2djb25maWcgZGlyZWN0b3J5IGlzIHRoZXJlIHdpdGgg
bXVsdGlwbGUgLnBjIGZpbGVzLiBJIGNhbiBhbHNvIHNlZSBwa2djb25maWcgaW4gcmVjaXBlLXN5
eXNyb290L3Vzci9saWIvcHl0aG9uMy44L3NpdGUtcGFja2FnZXMvcGtnY29uZmlnLiBwa2djb25m
aWcgaGVyZSBoYXMgX3B5Y2FjaGVfICBkaXJlY3RvcnksIF9faW5pdF9fLnB5IGFuZCBwa2djb25m
aWcucHkNCj4gU3RpbGwgc2V0dXAucHkgaXMgbm90IGFibGUgdG8gZmluZCBwa2djb25maWcNCg0K
SXTigJlzIGJ1aWx0LXRpbWUgUHl0aG9uIHRyeWluZyB0byBmaW5kIGNvZGUsIHNvIHlvdSB3YW50
IHB5dGhvbjMtcGtnY29uZmlnLW5hdGl2ZS4gIEJ1aWx0LXRpbWUgUHl0aG9uIHdvbuKAmXQgcnVu
IGNvZGUgaW4gdGhlIF90YXJnZXRfIHN5c3Jvb3QuDQoNClJvc3M=

