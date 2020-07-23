Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.75])
 by mx.groups.io with SMTP id smtpd.web10.7977.1595492737663276266
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jul 2020 01:25:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@phoenixcontact.onmicrosoft.com header.s=selector1-phoenixcontact-onmicrosoft-com header.b=EPrf8OgY;
 spf=pass (domain: phoenixcontact.com, ip: 40.107.22.75, mailfrom: jhannig@phoenixcontact.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phoenixcontact.onmicrosoft.com; s=selector1-phoenixcontact-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8upAgN33L4xMWDapkdD7fH6r7k+84QvUz4MPfHcqya4=;
 b=EPrf8OgY9X1kzWC8Oahwyk48smbk32Apw39L7HP2b/EuJsU6cJEUHtOCwVt3ZUJNYTYPd651zvlIo2SjLRHGytVlzJsf9frHOLv2hWfIr8+aRf5O2YG9diwk2dcvcXqiIOE11wohRHytSdlbvXUKKFaXhYuWSfVTfETg8iCnJTU=
Received: from AM6PR08CA0003.eurprd08.prod.outlook.com (2603:10a6:20b:b2::15)
 by VI1PR05MB4880.eurprd05.prod.outlook.com (2603:10a6:803:60::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Thu, 23 Jul
 2020 08:25:35 +0000
Received: from VI1EUR04FT061.eop-eur04.prod.protection.outlook.com
 (2603:10a6:20b:b2:cafe::79) by AM6PR08CA0003.outlook.office365.com
 (2603:10a6:20b:b2::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20 via Frontend
 Transport; Thu, 23 Jul 2020 08:25:35 +0000
X-MS-Exchange-Authentication-Results: spf=neutral (sender IP is 51.136.18.164)
 smtp.mailfrom=phoenixcontact.com; lists.yoctoproject.org; dkim=fail (body
 hash did not verify)
 header.d=phoenixcontact.onmicrosoft.com;lists.yoctoproject.org; dmarc=none
 action=none header.from=phoenixcontact.com;
Received-SPF: Neutral (protection.outlook.com: 51.136.18.164 is neither
 permitted nor denied by domain of phoenixcontact.com)
Received: from azr-iqsuite12 (51.136.18.164) by
 VI1EUR04FT061.mail.protection.outlook.com (10.152.28.106) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.10 via Frontend Transport; Thu, 23 Jul 2020 08:25:34 +0000
Received: from mail pickup service by azr-iqsuite12 with Microsoft SMTPSVC;
	 Thu, 23 Jul 2020 10:25:34 +0200
Received: from EUR04-VI1-obe.outbound.protection.outlook.com ([104.47.14.59]) by azr-iqsuite12 over TLS secured channel with Microsoft SMTPSVC(10.0.14393.2608);
	 Thu, 23 Jul 2020 10:25:32 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TMi8AQuQ4kEnJMIznTMSeHXSkeHlfAWS4Ibdzraewgj/7W85X8C6OFgO1tZUWXAi3vjK7lzuYfnvK4jTC8yk/cMeI0qkRpLd5c3QUiZRlC4uDxHjxSOONIBev8ZXsq8vJQsxiSvR4eJY7dxv0jvjJ6IC18nikyih62LfGN2gt8vtaFssW49mSeD6cCMzCMXJNjFWEs1+Mk4lIloPia9oEDycLh45NNh7ynvolIzwUTlQm20UGkd4E2BLyG+Ty+N8xoGAcUEtMcInaNBZE+Brt7sw0iJnhx1o5UgkQcNAGwdhhriy3lmoDCaElmbB6AZg1NxU9GX34Luj9sj7iRXVIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qPuUrHm0mhPrzg2JaNG5lq9WP8oXyLlAp87m9qXKJ0=;
 b=PRygVOj+n65p5STqRyQqCUS8uR7lgQI5Azjhi/T8mzgcOpXQgT506hUAjzk3bchxY5HB+cRuX8aqsqkwI2w6p5zH67xLL0Sh0bbQBEdgEuz8KzxFz5ca9uuCBUmJzZrAghLT+ZjBHMNEbVwp89eYdXsb2PftAICb0tRTp5iZn9f9s0O2pN681/UBmd9C55BMDwSqFO5XCVZtEB8a0vQtLcKHn2hiYN8Xk8XynvpfbOgT6DC7qInC7boqjmv1FYx/30uHdDEEj8ESRb3oSPKefeqI97YbvL6j8NTLuCCHY6WBYSEKDzvulCmR6kz5Ry3RPqUHZbsdiQ/ROBQeMsMGpA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phoenixcontact.com; dmarc=pass action=none
 header.from=phoenixcontact.com; dkim=pass header.d=phoenixcontact.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phoenixcontact.onmicrosoft.com; s=selector1-phoenixcontact-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5qPuUrHm0mhPrzg2JaNG5lq9WP8oXyLlAp87m9qXKJ0=;
 b=er4O9pXr/39yov9ipUbVhTZih6mvm7qb95K5RppJZ3oaAhT7i96MFMbDJJGh/2f58weDHzEPaZdY+JYqI1iIirNC+8vdlZ7ndl5HMAM+Opa0QqZw6dxVH3+IGMXYcEopheNFmkchd+N/Xfw4VRRciBckaaJcFuSylOVMr+gRbYc=
Received: from AM0PR05MB5058.eurprd05.prod.outlook.com (2603:10a6:208:c7::18)
 by AM0PR05MB5905.eurprd05.prod.outlook.com (2603:10a6:208:131::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.20; Thu, 23 Jul
 2020 08:25:32 +0000
Received: from AM0PR05MB5058.eurprd05.prod.outlook.com
 ([fe80::e4d2:c6da:51cf:3c6c]) by AM0PR05MB5058.eurprd05.prod.outlook.com
 ([fe80::e4d2:c6da:51cf:3c6c%5]) with mapi id 15.20.3216.021; Thu, 23 Jul 2020
 08:25:32 +0000
From: "Jan Hannig" <jhannig@phoenixcontact.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto] Yocto Dunfell: package.class --> dwarfsrcfiles
Thread-Topic: [yocto] Yocto Dunfell: package.class --> dwarfsrcfiles
Thread-Index: AdZfTBkySyp6EXNwTj2GJrsNOgIBDwAOFmUAAC0UuxAAJE+S0A==
Date: Thu, 23 Jul 2020 08:25:32 +0000
Message-ID: 
 <AM0PR05MB5058696FB950A56CC01BA82AD5760@AM0PR05MB5058.eurprd05.prod.outlook.com>
References: 
 <AM0PR05MB5058061461A3E61A57263A41D5780@AM0PR05MB5058.eurprd05.prod.outlook.com>
 <738d2e96-4934-8420-5ba8-b6fdb3253df4@gmail.com>
 <AM0PR05MB5058978D9A70F8EC2C9340EFD5790@AM0PR05MB5058.eurprd05.prod.outlook.com>
In-Reply-To: 
 <AM0PR05MB5058978D9A70F8EC2C9340EFD5790@AM0PR05MB5058.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=phoenixcontact.com;
x-originating-ip: [62.157.123.151]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: 43098946-64cf-48b9-aad5-08d82ee1f8a8
x-ms-traffictypediagnostic: AM0PR05MB5905:|VI1PR05MB4880:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: 
	<VI1PR05MB4880542F69783C2A4FDD0B58D5760@VI1PR05MB4880.eurprd05.prod.outlook.com>
x-ld-processed: 6868843b-f012-4c95-a18e-bab826cca9ac,ExtAddr
x-ms-oob-tlc-oobclassifiers: OLM:5516;OLM:5516;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 +oVaRTBdapIXJSiwPjxX3P1RnjeiuQaJrK/x0nMtIA7aWeuJAevcSuFbp21eUr5gfjAVa9V5p+eUzrGzA9TgarY7K1fcCWKGo68eykCsOgwwB003ucIAq9Nd1uM3gme/yHmLdpCm4Vax+eT5T5SNW6YPeWMU9jOgh8SaFjpz6+L5F2OgqH9TcrpFdowqvqXdS1ABfV0/gCsTk4EsA6ef7YI18KORp1SXst400sUS2hCZMg4MkSMJq7an+vTXrU31jSUY87sjk0qLgoD144zJjhkzdg15Jr9csIT1FZg40mZADZ706t60x/b1p6Vi/NRaDAf+5h9MMbfpP8/4z6f6+ID80PfVKdL0cs/8aW8cghxDbBbt5zBW+4HW5ROqrr3CtSDFjDUKEQ9fLtoqtaNvHVHTYdF+B3hUv6EurqrgzBdVh4rDBQREyI0c9IRUNOLGc3w5b+MKp6FoQeYR/s24G9QliP/9PXWsKy8KUgfLbNI=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR05MB5058.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(136003)(346002)(39860400002)(366004)(376002)(396003)(9686003)(55016002)(15974865002)(7696005)(478600001)(76116006)(8936002)(186003)(8676002)(26005)(66946007)(6506007)(66446008)(64756008)(66476007)(66556008)(86362001)(33656002)(316002)(71200400001)(5660300002)(83380400001)(2906002)(6916009)(4744005)(52536014)(156123004)(18886075002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 iZylnbLvHrfV9UXPaoV+Cyt4+hCRR3sI2cqphyNdW+GvAmf8Gm7+JD3zyMGhFJZ/9upoRnDTOLZRwUA9M4mDc52foSm964A5YZmgChlBKs1od6BhkJ06ruS7dXnI7Z3AK/kpve5p0+Nps8a5F5sakYtxwJNswiiqU44u97N0RQSnPUcx/5vRsf4IOYssqcXld25t1aa+xFxzyUbHqDZeuA1RIMln5/CoWJFHJCN7OnQHQrl42hb5C3oceSxP/NZNEEGdA5xqrcXLUeWj4xEj/oQZC9A/o8k5kmJ3UJXNqRhW6mZC5yHpRnUOCfEtySXZgM/W/LE9Yl2h/0SJ9iqsgnLKaQZ1pSxHY6S7LpnKbT/DX+XGElY/+2fUOBYT0DV6TTyRkHdWMpHrdaC0xbozNbcAZkM0kiIbdJW9tjiUEOMKOfbTIxy9ofHGudsYVLXjfg5HDmugwJjCQbML58eQZ986Un4wn3FdiBLpSznlC4c7ZhRaYetJPcK/NW2+jWxH
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR05MB5905
Return-Path: jhannig@phoenixcontact.com
X-OriginalArrivalTime: 23 Jul 2020 08:25:32.0992 (UTC) FILETIME=[D5294400:01D660CA]
X-GBS-PROC: wH5/Q9YdK2SSOBYJVsQzpGZJeWfZdw7MZz0nk5nPG/jMs0qEExh4vraY/SBLYrlP
X-GRP-TAN: azr-iqsuite12@741A77DEF4B54FF789C4FE68782E73FD
X-iqsuite-process: processed
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VI1EUR04FT061.eop-eur04.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7d01d253-ee4b-4820-2de7-08d82ee1f72c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	H+6oEMY6HXOEwwt+6dWfQuHnFbyAEYELyr8kBpWdAlsUfGs5iPPs0gdAWOBq7js6ejCsNmHd0Jt2Wf1FRVEbKw5H1asAl9SIL+PFVViIB0GsDZa92K6s/1mH2yThlozPgN5IPvfSPB2MUwVisfZ2MNGvpB/z94VgmDUe314K2UJNTodzjHAGQLlHaHrW/th6XzXW0MKwclpbKA4qhBn7/OQXZzVfOjAtYtxmZkiFDph8oD6i5dkc4/5CVVPENz7s09fbUlxX7kCAlslOSmtPd0ej9/0EKWnxDODXaNE9uDArUFw1Ar8VDLAg11Z6WQSCq7HZ/Av2LvISg0QNybkb++VeQDg/13kdTzDMevwgse+2LXGL8S2NKicoRlS0NH7iVJ+QK5o4cm9nHs6PEzuVDC7jvgKN3OsdAgprBS4Mrwk82EBq9EYzzIDxvJUoZEGcYYXTLTy4bstbSpWliEXd9ptWd/u5Zw3YgIUcJVztyPfALei+Hyik7IESmq03yRPE
X-Forefront-Antispam-Report: 
	CIP:51.136.18.164;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:azr-iqsuite12;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(346002)(376002)(396003)(136003)(46966005)(6916009)(36906005)(316002)(4744005)(2906002)(5660300002)(52536014)(336012)(70206006)(70586007)(86362001)(33656002)(8936002)(8676002)(26005)(478600001)(7696005)(186003)(6506007)(15974865002)(9686003)(66574015)(55016002)(356005)(82310400002)(83380400001)(47076004)(82740400003)(81166007)(156123004);DIR:OUT;SFP:1101;
X-OriginatorOrg: phoenixcontact.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jul 2020 08:25:34.6718
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 43098946-64cf-48b9-aad5-08d82ee1f8a8
X-MS-Exchange-CrossTenant-Id: 6868843b-f012-4c95-a18e-bab826cca9ac
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=6868843b-f012-4c95-a18e-bab826cca9ac;Ip=[51.136.18.164];Helo=[azr-iqsuite12]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR04FT061.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4880
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sIA0KDQp0aGFua3MgZm9yIHRoZSByZXBseSBhbmQgdGhlIHVzZWZ1bCBoaW50cyBj
b25jZXJuaW5nIG91ciBxdWVzdGlvbnMhDQoNCkFmdGVyIGEgZGVidWcgc2Vzc2lvbiwgaXQg
Y2FtZSBvdXQsIHRoYXQgdGhlICouYSBhcmNoaXZlIGRvZXNuJ3QgY29udGFpbiBvbmx5ICou
byBmaWxlcywgYnV0IGFsc28gb25lICouYyBmaWxlLg0KVGhhdCB3YXMgbWlzc2VkIGR1cmlu
ZyB0aGUgZmlyc3QgYW5hbHlzaXMuDQpJbnRlcmVzdGluZ2x5IGVub3VnaCwgdGhlIGVycm9y
IGNhbWUgb3V0IG9ubHkgd2l0aCB0aGUgRHVuZmVsbCBVcGdyYWRlLg0KRGVsZXRpbmcgdGhl
ICouYyBmaWxlIGluIHRoZSBhcmNoaXZlIGNvcnJlY3RlZCB0aGUgZXJyb3IgbWVzc2FnZS4N
Cg0KSmFuIEhhbm5pZw0KUmVhc2VhcmNoIGFuZCBEZXZlbG9wbWVudA0Kamhhbm5pZ0BwaG9l
bml4Y29udGFjdC5jb20NCnd3dy5waG9lbml4Y29udGFjdC5jb20NCg0KDQoNCi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4u
Li4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLg0KUEhPRU5JWCBDT05UQUNUIEN5YmVyIFNlY3Vy
aXR5IEdtYkggDQpSaWNoYXJkLVdpbGxzdMOkdHRlci1TdHJhw59lIDYgIA0KRC0xMjQ4OSBC
ZXJsaW4gIA0KIA0KUmVnaXN0ZXIgQ291cnQ6IEFHIENoYXJsb3R0ZW5idXJnLCBIUiBCIDIw
MjkwOCANCkdlc2Now6RmdHNmw7xocmVyL0dlbmVyYWwgTWFuYWdlcjogS2lsaWFuIEdvbG0N
Cg==
