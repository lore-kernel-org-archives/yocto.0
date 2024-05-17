Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A036BC04FFE
	for <webhook@archiver.kernel.org>; Fri, 17 May 2024 10:52:44 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.87])
 by mx.groups.io with SMTP id smtpd.web11.37682.1715943160623222453
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 May 2024 03:52:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mdq7ueV+;
 dkim=pass header.i=@arm.com header.s=selector1 header.b=mdq7ueV+;
 spf=pass (domain: arm.com, ip: 40.107.105.87, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=KE70GEUSevw59RmhZq+REu+RnMpmxA5AD033umR4h/9NJQDTkM3bnvdqC7aJ0FZ0SLR3iHSKztoXh0QCDPrG9RdznpvfZ9uhDaq8cyiLuGdh4loyfuh5Pq9/Mpc1aI6IHnHmWQ0EzRCDHBnS4B0NbGHUTl05rnahY24Z1NkVjh+dkJcqUZBhvdSQqXuAFR+mSZ0ci3uzK+nMM8VB6UEAjzjKnxgdJgee7wyOMgmmz6/CEOs6dktA5uavheqgn4T8TLUwZque3xdKd6/PRZwc3c0C/lUkEqlobDx2WIMHIKUxCnT9rBWbI4vlvQlaKTc9O3B+QiDBA3l9c04cEUichQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dh6Tx0oT9Rymp54gAq+HqzPjDxp471mJUpKdYKZjr+I=;
 b=B98t9HgQ+KvRVKbhxEQ/cHJHxynR7tHevENaqFGoZNyVmmmLo21mtrM9CoylvFjFUjnlclwu+pHTe4GtnJX335dc59q6CpJmSIjB/mpJUmsawU2ELGIoch0u2Ni4EfeZ+DZ3NcaTT46MVZKqt5Qtm0nIzfU3JayFg93Die+QhWUg0mvybkQubDCFgJSBR1AtMZNwMvgP9DfD4xSBUYFkeXxRprDopHSLx/FPXHmLiQ7J3M+OM835fDLthsdWFBXHTOrwfjFUW7I3nHZkNeEu2Du/7Y0nbysZyGnfXIdkyRs+w56vZoIIE0N/c521VsdWjFOfY5YrdmY8pr6oHdH5/g==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=arm.com; arc=pass (0 oda=1 ltdi=1
 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dh6Tx0oT9Rymp54gAq+HqzPjDxp471mJUpKdYKZjr+I=;
 b=mdq7ueV+f8zr1gltSh52a8r1WnW9vJbCHHJWWk59oWy+Umy/t/J4VHVwyTKTbiLj4QbNWr7+WbJniZ/Pjgw0Ggw29yOYr7S9TW3xYt0DT874qauSn1NJjwTSCbDB7DuhT+SPWY9LB4nyVINyS/SnXjPlm7JtRiec0XTOpZnGxX0=
Received: from DBBPR09CA0010.eurprd09.prod.outlook.com (2603:10a6:10:c0::22)
 by DU5PR08MB10636.eurprd08.prod.outlook.com (2603:10a6:10:523::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 10:52:35 +0000
Received: from DB1PEPF000509EA.eurprd03.prod.outlook.com
 (2603:10a6:10:c0:cafe::bf) by DBBPR09CA0010.outlook.office365.com
 (2603:10a6:10:c0::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.30 via Frontend
 Transport; Fri, 17 May 2024 10:52:35 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=arm.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB1PEPF000509EA.mail.protection.outlook.com (10.167.242.68) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7587.21
 via Frontend Transport; Fri, 17 May 2024 10:52:35 +0000
Received: ("Tessian outbound 082664cc04c1:v315"); Fri, 17 May 2024 10:52:35 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c5cd6016af413b70
X-CR-MTA-TID: 64aa7808
Received: from 2da4b11db964.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id F6BC5FA4-94E7-441B-B6C6-9F04AD5C6D83.1;
	Fri, 17 May 2024 10:52:28 +0000
Received: from EUR03-AM7-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 2da4b11db964.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Fri, 17 May 2024 10:52:28 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NBCYx5qsZBPOALyrapFHnXeSgeFp1a3/PyWAXPv57lLmwKBWPOuECH/2Ia57FM57A/2VpMIf9BsbGDTobja2/klfmlKmw2XNp57FZIayfTm5MOhra9dsmYT7JgS1gk18V8R6QTF9eQNsEYHh7nGJB7IDBvK06SmReSYZixMzpcFTyrm8ibLXnyoeMRzoFP6TRthxBjFCDf0bNWYNfNm7KMNwX1+4Ilghg5u+LEBuawtN+hmK8f1OFJ5/hOdPlZzI0phVPM9bpDrV5vz5EFy3tlFk/z9YcksOMpCYWd0wZIwRtWxBpKZwSnueZD24kc/6PDHjN/mrEkVclHL3JB+49g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dh6Tx0oT9Rymp54gAq+HqzPjDxp471mJUpKdYKZjr+I=;
 b=hNQof9pzgwxN8BDTN3WkiBz3cClOM1SZ93kMw6hTRA6OQbcBORMiSmcS5ZqkQijMuoJyG0xbOCY/xglSOaUM7Njwo8K13zcPCie4nsisTvqd4F7uyo/5z/p4F+A46hiVKdbYJ3sKhm6tALbZV6WV25f9+tVmvvKPPCyPBQGG88fR4NIpPLMpNSjV12dIaHCV47D5s8MzNOLo1CeUPJwPuY6xQmUZv+rk03Eh5pBrlhS04fxmTBg0Dl0DQxWDixAX997MqqqAfYbwV9TzMfy7xJ0+V2mwTCzlwS+7O5CD7xmY6RHDsq+ThF9R7Y5DtWwELwbf/NO2ZWGDWSzZGKnBZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arm.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dh6Tx0oT9Rymp54gAq+HqzPjDxp471mJUpKdYKZjr+I=;
 b=mdq7ueV+f8zr1gltSh52a8r1WnW9vJbCHHJWWk59oWy+Umy/t/J4VHVwyTKTbiLj4QbNWr7+WbJniZ/Pjgw0Ggw29yOYr7S9TW3xYt0DT874qauSn1NJjwTSCbDB7DuhT+SPWY9LB4nyVINyS/SnXjPlm7JtRiec0XTOpZnGxX0=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB6603.eurprd08.prod.outlook.com (2603:10a6:10:25a::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7587.28; Fri, 17 May
 2024 10:52:26 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7587.028; Fri, 17 May 2024
 10:52:26 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
CC: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>, Quentin Schulz <quentin.schulz@cherry.de>
Subject: Re: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
Thread-Topic: [yocto] Strange errors while executing
 poky/meta/recipes-devtools/gcc/gcc-cross_13.2.bb using scarthgap release
Thread-Index: 
 AQHap48DnV+qrqTYRkGxGSlwaI24RLGZz32AgAAtiYCAAAI4AIAABVsAgAEx+4CAAArdAA==
Date: Fri, 17 May 2024 10:52:26 +0000
Message-ID: <9C837256-96C6-4B2B-8E5C-BD8CBB34AAC8@arm.com>
References: 
 <CAGAf8LwEkmPWUi+B3BotJy0g2AhfBRyVfO4jUBkhRXVtNS1aww@mail.gmail.com>
 <7a55c302-24cf-463f-831c-889c2fa0d168@cherry.de>
 <CAGAf8Ly=jt9WusiC3PEHakxZjjHHnd=gV1yYonTdQRRE5qrtZQ@mail.gmail.com>
 <35A42455-17EC-48EE-A140-6B42B23C80CB@arm.com>
 <CAMKF1sowdVbtY7ipA44GzMDcWUVY-qejW33UDB6Q75zfwh-rTg@mail.gmail.com>
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LwTKLZq00Jf16gcwkbYieKXDGoQC4BQAmH4-ZVaYRmB7Q@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.600.62)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB6603:EE_|DB1PEPF000509EA:EE_|DU5PR08MB10636:EE_
X-MS-Office365-Filtering-Correlation-Id: f99d8377-8682-4233-82ae-08dc765f7613
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230031|366007|376005|1800799015|38070700009;
X-Microsoft-Antispam-Message-Info-Original: 
 =?utf-8?B?Tlp3UUoyWG5XQXNObjVabGVSbERGelh2TGt1cXp2Q05RdWpqV2I3dHNkcmp2?=
 =?utf-8?B?MzVia2pNNCtDNi9LMHVuV0d3YnIvVXNwTjVpSTNaOStmbFFZdkdtL3J5WHNR?=
 =?utf-8?B?Q09oQ0g4SDhlVE9kYjNGVXdKWDcyWXhQTXNTQWN4U2F5UzNENW1TQVZ6S29X?=
 =?utf-8?B?NFlHYlAyMDg4bDVobWFnLzZkWUZuSmtCRG84ZmtnWkJTNTZSRmNSMitiR3RM?=
 =?utf-8?B?d00rM3RBWGZSWHlVVFB0NWR5SEY0MUZFV2xubzNvZ3hNWEl5MkYzVjBxaDht?=
 =?utf-8?B?N0ZQWmJKekcvNlFTV05mQjhFeUczRE9HMmpsckZtc0tVWmxxV1BtajQwVlpy?=
 =?utf-8?B?MzNwZUZobGViMFIxd3kvVi9GRCszdHFpMmx1TmdJc01SUjg2R21xQnNqZElo?=
 =?utf-8?B?NnozMjhrQnpnWEc5cUt1NlhsQTJScW0vVzJ2bkRvcHNQL2VGbmwyU1Y1U0xR?=
 =?utf-8?B?eHVXQ2dFeVJ5alZjWjJvdjVqL0JtSFVjL2NIcEJYT1JrUXQ2NWJMbnl6Z2xX?=
 =?utf-8?B?cWUzWEkvbnQ3VENjWlNQdFBTdE9BSTFWVEd1TUVuVDFwcUx0enlsT2FyVUUz?=
 =?utf-8?B?MEx3bUUxdGl2RnNicERxVGx1ZmliOG1CRFpXS053MjNFdnRWTjFVbHdsMjdL?=
 =?utf-8?B?YXlCazVicXBQVUhFYzVxM1h6Skc1YllsbXJxcWJxR211V1BhTEFlSFNHUzRa?=
 =?utf-8?B?bExYb0x1a2RwUE41dnp2K0pBZVE5cFdBZEI4TithcFVXRjZ1aGZsZjNxeW1s?=
 =?utf-8?B?SEhBVmVkTXQ0WUMvbEJ2d1hjNFovZ0VKcmpEdVpFaWpQZ2ZLbkVjNDBxT0JV?=
 =?utf-8?B?V09nc25DRWhESE1XRkVVTXFBMndYZFhuNTVKdzdSZE9rK1Q3ekVZY0h6YzVR?=
 =?utf-8?B?eW5RWm02NXlZVDJFK1hzRjlRTDBQL2tLVlVUNkEwVlFhZWpKR1VTVEVEQjg0?=
 =?utf-8?B?R2haMExYOWVwSnhFUnBYUk5WVGhmKzR4RDB6NUFGMEgyOWFNSG16ckhPbzYx?=
 =?utf-8?B?UnFtVDRpMFQvVXVlZS9hYTZ1S29aUEVXS3FKVE9rZ2xjMjM0M05ZdGxlZG5O?=
 =?utf-8?B?Y2lnZk5wZnZKWnFXWjJDbnE4a2RPSnZwQnllWW5JUkZuYXRJQ2liZHN4akU5?=
 =?utf-8?B?YUw3dDRZUjNldStSVTV1TzZGRmkwaWppcEdIRXQ0OVBVSmM4cVdRa0F5Skxj?=
 =?utf-8?B?YnpNdzFuQ1hEeXdzTzQvM3k4VUpna0FmVmFNbDZGY1BjbHRTRXoxVXZqbWtQ?=
 =?utf-8?B?NmNjelFzU3MzbllNSEEyV092ZkJkQnlxb1NwcVRpWUp0cml4QVdPZHhzTXZN?=
 =?utf-8?B?Y2JSV0gremY2TzlqTERqbFYzemtTNjJLNWZqTGRHQ2pzNGlmZFFlZkpBTXhy?=
 =?utf-8?B?RFVWNFZXNE9SbHZaU0RWbkJneVBqaUt6aitZV1l2QVdwMGJSa1NxaXFMMmpm?=
 =?utf-8?B?VDB4eSs5Wi9NVDExT21YRG42WFFvbHg3R1Z1RWI1ZmtiaVc2RlhIelFNTnJm?=
 =?utf-8?B?N3ZnUGdmeXF2NUJKSmdPek8wZlFVeDRQVGNrUGExVWJXdnA3NWZORXEvek0v?=
 =?utf-8?B?RlVZbThzbnFqRzN6VDdwbHQwcWErVkxNN3Y0cWt6M0ZFN0M3Mmx6UjAwU3FE?=
 =?utf-8?B?V21Za201QzR6eERDakpNRktnTmp5MDdiQUtaaTF4WlUwNkFHNjhXVTQxRG16?=
 =?utf-8?B?UzI1SDBkYVI2WTlJdUJhYmFxWk5IdkkyWmJUMFE3RmpBYlZJWGRyMDJmY2o5?=
 =?utf-8?B?d1BZN0pHTW5keUVNcVdRVkdiNWRpdFZ0c2NvMVZuOVI2enZFNzB2YjJ3ZXcv?=
 =?utf-8?B?S2NlY0Q5Y0dCTVltbzhhdz09?=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <01D7444CE097EF499771E05D251CA589@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6603
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6c7d9179-3719-45c5-9324-08dc765f70c2
X-Microsoft-Antispam: 
	BCL:0;ARA:13230031|36860700004|82310400017|376005|1800799015|35042699013;
X-Microsoft-Antispam-Message-Info: 
	=?utf-8?B?VEdkTVBGSjBQV3A4WUdYbFM0OVdsU3JMeWRBakNvQkI0RkFLbkFsY1VPS01L?=
 =?utf-8?B?V0hNc2NXdXNqTnY3WEpBZjdTTk16L2NEREJyMWtHU0huVzQzcnJMTVlObi9a?=
 =?utf-8?B?bXJublV0UWZKWHdtb3VJOEtZN3J1U2hWSStpbDlPOCs5WUdhZG0rK05nSnpM?=
 =?utf-8?B?TnNSNHY1MkVIY0o2dEpzTHIzaFdab0VJSGFkUkl3dDgrNm4rbGNBdVNDM2wy?=
 =?utf-8?B?VmRHc3FrdDA3b21iUW9zZTg0anJOa21vV0dJRXpjbVhvajBObjk2ZnlYcHVC?=
 =?utf-8?B?RlM2bUE5WERoazNrZk1NcXVkUnN0RDY5bmFrOW5lRmFBRkRWS2ZmU3VHa3dV?=
 =?utf-8?B?NHRSWXJpVEEvK1RUSXhodFJNKzBBZFlvejZza3crbmczSXBEUXZ2VU5LRHV5?=
 =?utf-8?B?UXFiL0Yzb0pxZTZpUGN2Ky9XREMya0Q5QUlDSjZZY1V5OGlvYUYydVFaZ0ds?=
 =?utf-8?B?dHVLakhmb1ExVHE2RzgxMEsrM0VlUUI4MXhMVW4xYWEvNUlxMjFRemcxNUJ2?=
 =?utf-8?B?aUM0VzNYSXhvV096dVVlcFhyOFViZ2tzVk83SFNjS3NHaTJBeDUwVml3Nk9B?=
 =?utf-8?B?b0h1UG10TGhzS205YzJpZ3NiN0lEUWRVWklPZlRmdGdCYlc5K3FjYVpvckh6?=
 =?utf-8?B?MFl1bExLRm8vZEJBcGJ2a0l4NnFmTE1uYUlmNmpUV1JIRTA0STZxaE9WMlFQ?=
 =?utf-8?B?b28xNndGSG1Mc3loNHdOQ0JzNGFXbUozV01tenpzM25ickdETGlGd1hTak1F?=
 =?utf-8?B?UjJlMS91NGQxRUVmc2VkRzZCZ0tYajR1ODlVa1pDWFM3eW9QbEhIRzI0YVgw?=
 =?utf-8?B?cGtHaFpxNGI4a2lPTFR6OTZqVzdjNEw5a3V2YTFnUUU4UmVwVGVLb3RiQlpp?=
 =?utf-8?B?MTBURW54K25nUU1mMU95aU42OUdjOG02aHBCaVFQVDF3VmVlaC9uMWt0bnJr?=
 =?utf-8?B?TS9tQ1VhR3MxTTlWb3ZRaDBxS212UUdSQ1ZsVGhZSXFaaU9GeThvZlpOc095?=
 =?utf-8?B?dk1ka29BbEJSY0tMZE9SU1JzaXRLb0JQcndUTW1WSTkwcmd2djdFM1Eycy81?=
 =?utf-8?B?RzlveDY2cUgvWVVUZGt2SVR4S29BVnZnc2I0RDJONkg1V3FXamZFUjNrZmhX?=
 =?utf-8?B?QlRoVlhsR3RYU3dWU25SUUN5T2x6aERMV0pLTERSSURSUm1uWXBDNk56RDhz?=
 =?utf-8?B?SFJDb1hGdldNbnp2RDRycG9UWjVZZWtVa2kxaWZhVlZka0lTRVBsRzZHc3hk?=
 =?utf-8?B?eVZqS0o2bVhMR2JaTzMxbWkxcStrWUZYd3BtcGNvdFlNSTYyNnpsKzRVQzRS?=
 =?utf-8?B?dDRabXgxQ3p2QUpneVcrWVRER2lxbTczVFlNcm5ZMzhoVFB4MHZSczYwY2VW?=
 =?utf-8?B?blFlZm10d2wrUmJsTnNXTUVxR2FYelFEUTlXMkFBN3pRdnh0aWJoT1ZRY3N5?=
 =?utf-8?B?RHhCT2JMVTJSTFpRTVEzMkNUNGs4ajU5aGd2OGtRaUhrbkc1cURKaXVESHlV?=
 =?utf-8?B?dzFqTTFOVFVxTjF6ZmtSdnFxK1BmWUJJWWV1NC9SYnd3WktPU2RRM0psWUxL?=
 =?utf-8?B?VjFTZVpISXJuUHJzVXFrMDNvLzN5cXo4LzVnazlIV1BxUFk3VUhnc1ZnM3pZ?=
 =?utf-8?B?cTBLZC9IVS80b2RxQTI2MzMvMnVGR2o0L1k3NjI3NFhEc1RxaTNiRWVJb3Yx?=
 =?utf-8?B?ZTNITVZYMlIvTWp4Mll0NngxeDFnbCs0UHdwM0ZJMlFpSmNHL3BoV3E4UHE1?=
 =?utf-8?B?Z1NNSzZuWS83b1k4RzBqUU53aXRhQ3d6WTlPSTl6UU96MHpFNnZiY1lSQ3ZP?=
 =?utf-8?B?WEZ5UytkYmI3TlZIOGxDVUd6clFSU0FhNzVxQTg4QlVjbjBBQ29pRlcyVkta?=
 =?utf-8?Q?VK1uzRolyT+Q+?=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(82310400017)(376005)(1800799015)(35042699013);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 May 2024 10:52:35.4728
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f99d8377-8682-4233-82ae-08dc765f7613
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB1PEPF000509EA.eurprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU5PR08MB10636
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 May 2024 10:52:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63133

T24gMTcgTWF5IDIwMjQsIGF0IDExOjEzLCBab3JhbiBTdG9qc2F2bGpldmljIDx6b3Jhbi5zdG9q
c2F2bGpldmljQGdtYWlsLmNvbT4gd3JvdGU6DQo+IEVSUk9SOiBMb2dmaWxlIG9mIGZhaWx1cmUg
c3RvcmVkIGluOg0KPiAvaG9tZS92dXNlci9wcm9qZWN0czIveW9jdG8veW9jdG9fdGVzdDIvYmJi
LXlvY3RvL3Bva3kvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L2NyYWNrbGliLW5hdGl2ZS8y
LjkuMTEvdGVtcC9sb2cuZG9fY29tcGlsZS42Mjg2OTkNCg0KSWYgeW91IGxvb2sgYXQgdGhlIGxv
ZyBmaWxlOg0KDQp8IC4uLy4uL2dpdC9zcmMvbGliL3BhY2tsaWIuYzo1NTQ6NDA6IGVycm9yOiBw
YXNzaW5nIGFyZ3VtZW50IDEgb2Yg4oCYSHdtc0hvc3RUb0JpZ0VuZGlhbuKAmSBmcm9tIGluY29t
cGF0aWJsZSBwb2ludGVyIHR5cGUgWy1XaW5jb21wYXRpYmxlLXBvaW50ZXItdHlwZXNdDQoNCg0K
UmVtZW1iZXIgaG93IEZlZG9yYSA0MCBpcyB1bnN1cHBvcnRlZD8gIElmIHlvdSB3YW50IHRvIHVz
ZSBGZWRvcmEgNDAgdGhlbiB5b3XigJlsbCBuZWVkIHRvIGpvaW4gaW4gd2l0aCB0aGUgZWZmb3J0
IHRvIHN1cHBvcnQgR0NDIDE0LjEsIHdoaWNoIGludm9sdmVzIGZpeGluZyBwcm9ibGVtcyBsaWtl
IHRoaXMuDQoNCklmIHlvdSBkb27igJl0IHdhbnQgdG8gZG8gdGhhdCwgdGhlbiB1c2UgYSBzdXBw
b3J0ZWQgaG9zdCBkaXN0cmlidXRpb24uDQoNClJvc3M=

