Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.92.91.27])
 by mx.groups.io with SMTP id smtpd.web12.174811.1598194920337385211
 for <yocto@lists.yoctoproject.org>;
 Sun, 23 Aug 2020 08:02:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=lFNo2DE4;
 spf=pass (domain: outlook.com, ip: 40.92.91.27, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IkfzN5taIL7znWXDaNRR5wOQB/Z8pjoJyjAildQm2uK+k0zrkz8jQGamywPxv1xQfdEfgA8VOLIlcj+whMCrJuSwbC4KTnFFw0LeD9ZO6C4qorjuU2B14KPwbCRuS2EJBYZBOhKwC+c9DvC7O+dEPlSmfbIekZz3DGOxRIXoPkq34uMyCBeaEqRpf8szwogP7ri8uBsuHztOEOdOLvPPQjVP2Y4bOATqvkT2JJs+Wio8roLZjWmi0g+G+cqDMgmbmmqcV8BqZm+hG2auF0W38sBpjmWsAl3yJ5+W0q86wXkT48BpGmvzX54mtAR2A3iZvD1DeGIKef3i1hM/M1AQ/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwRzsEBnSaK5Lg3tWGADDl62cFbeyLuiMeAqBdG7rWs=;
 b=Wgm8ykIOUC+z28Ui7NMnhaah5lFzxjrasD+WvDiAjRQQMTVffxfbi8lASxcZBwuz3jG8jeYeTgDH4D4CLc+SPni6odZM45B9Lcy5AejbxF8B/BmB+qCu76VATgTIjOFXIt9X08jsM8WNoE8wKYmQvyfzZ91nzV1MPUOChJqR5RikBR0PS1+OW01ikMbQGe6e2QwDeW9FLriinHvjEBmWy0FcMaJZLRD8DSbuV6JhfzaLKIckl9zB9LtRct643n0Jjowf8SB+SN4Jj+Ago3g8q4cr0zCBO/QbIrVg6/Hy5llfOmhtz9ZopBWYRGYgH6bktDw6ceAhcapUrU7sLbOTGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LwRzsEBnSaK5Lg3tWGADDl62cFbeyLuiMeAqBdG7rWs=;
 b=lFNo2DE4/+iF73RTDB5xVXf43mmB28S/ADEUkcNbNIKHrmf28dW0Wme+2OJMlxVvtHh8PLrtLUkV6vCWlDN/pW/RYqKNr/Cmt26iljsMMBvWeH0HqH3+IeTt0oUW2LE59G+RKMxQoCAY+GIgy++YYS3aXkhUwhf1qSydLSN0QH1y5tXJNl3zj2Uc8IPe8un55BzPnIgoS8o83vCbSzZw/SazaWFlZdJtP+ejZhg7RNM5CiKA9S9mPaRDzH2Dv7DyE/RCr34sulESMNR9xC/qz7qc0Imk0CgKFyhMNCMlh2Gc/LY/V2+Yxzsj8A7wzYp6Bk0ulkl0eW3rxowAYcSTvQ==
Received: from VI1EUR05FT020.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc12::4c) by
 VI1EUR05HT124.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc12::71)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24; Sun, 23 Aug
 2020 15:01:58 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:fc12::53) by VI1EUR05FT020.mail.protection.outlook.com
 (2a01:111:e400:fc12::192) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend
 Transport; Sun, 23 Aug 2020 15:01:58 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:6823E827099E81981B4C5FE5C4B8BBADDE1A609B0EBAAD3A394F98B882621887;UpperCasedChecksum:D57484CE7321C4A9653F47CB3F7E57778156805BBB623FC8B5096F744B52845E;SizeAsReceived:8575;Count:46
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::6c2d:49b3:994:890e%7]) with mapi id 15.20.3305.026; Sun, 23 Aug 2020
 15:01:58 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Subject: Additional log handler
Message-ID: 
 <AM7PR05MB6881DD773BB8FDC78B4470E1A8590@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Sun, 23 Aug 2020 17:01:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
X-ClientProxiedBy: AM6P195CA0037.EURP195.PROD.OUTLOOK.COM
 (2603:10a6:209:87::14) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <48dba44e-888c-a635-a1ee-5a0db96e905e@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.150.42.139) by AM6P195CA0037.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:87::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3305.24 via Frontend Transport; Sun, 23 Aug 2020 15:01:57 +0000
X-Microsoft-Original-Message-ID: 
 <48dba44e-888c-a635-a1ee-5a0db96e905e@outlook.com>
X-TMN: [wEfCk6H2osSctI3GO6ghwvOkxmNyqbw5]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 46
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: a16937db-9679-435d-dd62-08d847757b62
X-MS-TrafficTypeDiagnostic: VI1EUR05HT124:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TOaV22fXhsQdnHDSn4Cq9znoSeEerAIydVPa9YLBwZ3lAfq1jNb4QgZWhQRJuuggn5nkQWOekzX4PY5uo43TAMfs7OP/onbDQjWcmDA1LDUFAREqhpOu/E1ocMSe+efOify6mH+eMkDzr3RmOT9VYOb7U0AxAitdLFvLQ+wL/H/xpLV61KMoXEy3OXq0fIS6NPHxnFjdrUEi1i2Bvu0uKw==
X-MS-Exchange-AntiSpam-MessageData: 
	mxfAHS3/QnjAWQ4vSk6DMx8z6xHQxrPoFuhI8OYHKJ81j4SKNLZTKqwzdigl3+eKr097LNmtzoXYZ79XQZ7aJFD75cJ//IIAiqe1bWUhzyX689ihiVdEP8EnujGtzseFbrtv3aBz8+c0QRkbQvo4hg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a16937db-9679-435d-dd62-08d847757b62
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2020 15:01:58.3068
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR05FT020.eop-eur05.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR05HT124
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all,

when running bitbake in CI I would like to add an additional log handler 
to used python logging to catch *ALL* (task warnings, dangling append, 
qa issues, a.s.o.), instead of manually grepping through the console log.
The information coming from this should be ideally be written to a file, 
which can then serve as some sort of report.

Is there a way to do that?

In theory it should be possible to hook to an (obviously non-existing) 
event and handle it from there, right?

Or am I thinking in the wrong direction?

Any pointers are appreciated from my side...

Regards
Konrad
