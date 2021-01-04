Received: from EUR06-DB8-obe.outbound.protection.outlook.com (EUR06-DB8-obe.outbound.protection.outlook.com [40.92.51.80])
 by mx.groups.io with SMTP id smtpd.web08.11919.1609757447411085797
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 02:50:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=d2VAQs1d;
 spf=pass (domain: outlook.com, ip: 40.92.51.80, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D9dtspwy3ntpz+x9h9PA87S6Acy7shXTyQ5xJhcVzH1TISKf/wp4DH7DlNm5h6iQApeznmecVYZ0okIJo7jTSGoCDRspqroYjqKhnSYIzNZBvJUjH0lNHAoUeY6/2oCqxEYfFiF7gNmgN4QVLzejfNy5uwLwa6A0hInZnmKcQVa2MhcvVFGwnmw7sUdHKEAoiq3C2wmjd/b87Pw/1WpLsyr8eTaQSKzP87jMoK92lrNwyULQBsWg++Uzk1rIex4Swfrkv4+EYvwEc8ZF7JtzK/1qv7rtgcUfMpaTX39C5KCngszniKfcbSVlu6zKOngnjCRYpXCB7QDwqFOIGx5yTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lKxrWYfHbqfiNBv47iyDm0Y0gKJ9VLjdFrLZUDesrg0=;
 b=iSmx28jvp63e6+R+43JffZw8FN5WKsqPyGj9i4NRrZDQzDLCbqzqrFuGZ1zZ8GsJAhBYAPai+GPVXnYkNfKgLtT8xeMnTgXbkV0QtLqdJyFU3oJbyBQtBwKLqMLplksuuN4f/+Wv0Hjt8+zO/Uhw6PNM+VWMiBjxPdMFfW5h+y1fPlq4SikBiosmaBWVeDLTpvjGVD6eAzHF8gMo0nbypk+fAtMb0kS4t/FOuH5muf1yypd0xrqkjFIO49R2taizoLe0l5Af0c03XwbXSl+qTBSNZkeexsurEf8hgqiDwEmhSRw0ciwKgazK9ypAlSIqaR/d/HJukgx5YCZzLA/U2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lKxrWYfHbqfiNBv47iyDm0Y0gKJ9VLjdFrLZUDesrg0=;
 b=d2VAQs1dSjqeCNyNrbJZj6tG9jfMpw+r1+z2g5RoOU724A0G9dTfxCDWoZCzau6hz7roHFqUwRQzXk5Sdkv4ZJJtSr559di9k24umnjSP28e/ZPQlvOnsLQs/syaLEkiWS33rfM54yfw3OcgGWPZUV5ZdOsN0WRQvyLHJ53t0k842udAcvohqQnqagssh2ceIUsKvZE7mrUI9ac5UC+V5ZCwWh/KhB3Bg0tmHFL311kP3lVoQfe8mKGFbpW4l+y0WFxM1nH9qSh3NDkun65zRZV156NPP5p3SkEqtTzPq1N8O44ZnHr7j1bwW1AuUPlzwzSerm0GW9x0w5l3qq7oiw==
Received: from VI1EUR06FT004.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc37::41) by
 VI1EUR06HT226.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc37::208)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20; Mon, 4 Jan
 2021 10:50:45 +0000
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 (2a01:111:e400:fc37::4b) by VI1EUR06FT004.mail.protection.outlook.com
 (2a01:111:e400:fc37::111) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20 via Frontend
 Transport; Mon, 4 Jan 2021 10:50:45 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:1790D7D88C38D40D6DA8985440AE0D8CEEE16EA5AF8F46531BCA2D4C8B0B906E;UpperCasedChecksum:190B2EC908EB75D771A67EE17D86D1C860913A9AB5EDBB36F9A7E1A5E43347D8;SizeAsReceived:8509;Count:45
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::404f:17dc:be86:de0b]) by AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::404f:17dc:be86:de0b%6]) with mapi id 15.20.3721.024; Mon, 4 Jan 2021
 10:50:45 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Subject: oeqa: test cases at the end of the test suite
Message-ID: 
 <AM9PR09MB47399E93D60FF11A88E243ADA8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
Date: Mon, 4 Jan 2021 11:50:44 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
X-TMN: [7q5Emg3hNuXuXxr7CUxdaCDUP+HLI0EG]
X-ClientProxiedBy: BE0P281CA0031.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:14::18) To AM9PR09MB4739.eurprd09.prod.outlook.com
 (2603:10a6:20b:282::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <6c0a577d-aee2-126b-e571-707a6c339b45@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.91.222) by BE0P281CA0031.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10:14::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.2 via Frontend Transport; Mon, 4 Jan 2021 10:50:45 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 45
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 70dd11cc-a4f1-409c-7c09-08d8b09e96cb
X-MS-TrafficTypeDiagnostic: VI1EUR06HT226:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	b3giIZIDpz23iYKr9vsc0Y3g105aaPAmzTiaYcvsnOhKIRafjPuIV2sP3cXcQF/S7FvL/Dtjo9uby5gorXT5KkifGt25jQxMmGJjErQvYz6uweMrJXRidWsHvPRKy/9R6wjken6IzVLaHMWgoIMVvBGy0YYx2rx2f6bgWb3WEhmrKveDcekoDIXL+uKXNJahT/5bHhtOzkVb+SdSf4Vc5ruIowZsfrjOPW/RjmfMKIlSJIxu6kZWUi0LDqht1xDU
X-MS-Exchange-AntiSpam-MessageData: 
	Yu2oQx/vRqYRcjkQhdjhw/yTQA0YvhL7gCDwgsLWLdpzq1wZDM7c2lcbU60nrmcX+3b9/ubsM4sOi9Za0gELimlnkuXF+K25h9jr32SapB9NvgNOMZ0IVah5RMg9zly18DpDQ/VSdHQU56Mxc1e9Gw==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2021 10:50:45.3587
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-Network-Message-Id: 70dd11cc-a4f1-409c-7c09-08d8b09e96cb
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR06FT004.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR06HT226
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all,

I have a few oeqa test cases, which always should run last in a test 
suite (log and file collectors for instance).
Due to the ordering of the test case discovery I had to name all those 
tests like "zzz_<name>" to move them to the end of the computed list.

Unfortunately this is very error prone, as the OETestDepends tag does 
have major influence on the ordering (just a single misplaced tag in any 
test case can make it past those "zzz" cases).
Also it makes things hard to read IMO.

That brings me to my question, is there any way to ensure that test 
cases are run at the end of the complete list of test suites?

If not does anyone have an idea how to create such a feature (maybe a 
new decorator or something like that)?

Regards
Konrad
