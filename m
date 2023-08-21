Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9175EE4993
	for <webhook@archiver.kernel.org>; Mon, 21 Aug 2023 10:07:48 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.73])
 by mx.groups.io with SMTP id smtpd.web11.7703.1692612460151774634
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 03:07:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=v7HzA44S;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=v7HzA44S;
 spf=pass (domain: arm.com, ip: 40.107.20.73, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x0HHwf//QztUHtRyK2fqe/8vX+W74dpDc/fod+/yXiQ=;
 b=v7HzA44Ssv2eTidISyuSmGDHb/hT+9hJ75upXw6w0fFmcpvCOG98gkOEfAgFrkCnoAC2ZwYkHKwUFkn3qxjFNOZmYBy78U4cdn+KaJkcIpuwuQHiIB49Qd8OihTtcNxpTsDqOhtpJ5Uo0czSW4+liC91FEUCLZJM2BnHmBiJARA=
Received: from DUZPR01CA0052.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::8) by DB9PR08MB6412.eurprd08.prod.outlook.com
 (2603:10a6:10:23d::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 10:07:36 +0000
Received: from DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:469:cafe::36) by DUZPR01CA0052.outlook.office365.com
 (2603:10a6:10:469::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20 via Frontend
 Transport; Mon, 21 Aug 2023 10:07:36 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT018.mail.protection.outlook.com (100.127.142.74) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6723.11 via Frontend Transport; Mon, 21 Aug 2023 10:07:36 +0000
Received: ("Tessian outbound 0b7d6027328f:v175"); Mon, 21 Aug 2023 10:07:36 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: a0c989797430672e
X-CR-MTA-TID: 64aa7808
Received: from 75179de45b95.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 2B21CEC2-44EF-4C90-8728-EFD8DD762D26.1;
	Mon, 21 Aug 2023 10:07:30 +0000
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 75179de45b95.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 21 Aug 2023 10:07:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RkczaYyVE0KqiIytSok9bjJfpPmbQH+TnhdECfzz2IwfIeIgyU5Z0CqddujAsYocaLrJgejfQlFE7jARxN4YjCHTMp77ySs7sTKY0yi5CD5t+n3BSaHa0ZLdTEfOQZke9XjCINojBGw5x3rgYMaTio9AbuTlXKY4wVq8MAH/uXEHPvKDBQCDE3cxCvNuOrVfdLTheNaKscil41p0Tq4nghb4qQi+BZkqcUHqLWKTyLUWHZzQ7BEFDkeOQovhxm21hhTCDDbpFwW0S0UjKBaq0iB26QEiwrb3Gwhixwo4UFi80AuqgRjMUMNmpVBQ4Cm1zCu50oTb9QklotkG9nsQ9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x0HHwf//QztUHtRyK2fqe/8vX+W74dpDc/fod+/yXiQ=;
 b=CTnsu4WUAJF0SRWLtQUYWUhMoZHCMpnpVsdeMR61IzjBaZRYQfGuiJG30O0UxggujTexOOIgIXuTemMAPesNgTQmlwW36mLHZPTX6pc6KJYL3Mwjgwg+gegfRT7ADqH3K90nb1cuIgG+PiI5KmDvmqLm5zvdC+bZ/wuOQCvxS72kpoLtuy8152bUZ57Tvh7FFW9+DIaKlzFVqj9m4TjMjYS5o02Xs+OGVsM1/Gpe/1+OYR8DAThDd7UxWKEGEMkiDna+T4QNyY9dzOP18X8T4UpGxmpOzSqP73xuP3zczHr8SScPoYZ53pKP1ie1AU6dZnBc/p7ar2XONoyo2uI1ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x0HHwf//QztUHtRyK2fqe/8vX+W74dpDc/fod+/yXiQ=;
 b=v7HzA44Ssv2eTidISyuSmGDHb/hT+9hJ75upXw6w0fFmcpvCOG98gkOEfAgFrkCnoAC2ZwYkHKwUFkn3qxjFNOZmYBy78U4cdn+KaJkcIpuwuQHiIB49Qd8OihTtcNxpTsDqOhtpJ5Uo0czSW4+liC91FEUCLZJM2BnHmBiJARA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AS8PR08MB6279.eurprd08.prod.outlook.com (2603:10a6:20b:294::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 10:07:28 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::4b8a:7518:c642:5727%7]) with mapi id 15.20.6699.020; Mon, 21 Aug 2023
 10:07:28 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "tyrocjl@gmail.com" <tyrocjl@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to build a specified recipe every bitbake
Thread-Topic: [yocto] How to build a specified recipe every bitbake
Thread-Index: AQHZy/p/UyDV8MMB/UmJUZ6r22JbsK/kuCSAgAGLxQCADlKpgA==
Date: Mon, 21 Aug 2023 10:07:28 +0000
Message-ID: <2E57D8A4-B39E-449C-945D-BF0DEBF8D280@arm.com>
References: <256B8647-FC14-49FD-87A5-661B60162FF8@arm.com>
 <19617.1691825028908505347@lists.yoctoproject.org>
In-Reply-To: <19617.1691825028908505347@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.700.6)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AS8PR08MB6279:EE_|DBAEUR03FT018:EE_|DB9PR08MB6412:EE_
X-MS-Office365-Filtering-Correlation-Id: 2de13c0c-f704-4565-b4ae-08dba22e718f
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 HyenyKi3o9MwnSsX40k2hkmnSvuIGHE8YgCb3r0I9kKrka3qg2nLpy3VEft6jegArW7Ip51dItUs9Klg+HJ0FkVG8BaSMrhXNvNMYlpCWtk4kPc0dyLbgzolgWWQzdPtNTonVP9Q4EImy3wphjfvd6DjWf3byG5Czi3KVT6wdq3XkNPoxej7mXOx667jygloU7iRWFerjXzC0sMXrxZJIZCloebmNz2/mlePRrqmfbOjyKrE5DBZgR3Kfo6lWaOUulOK57yzVtFSuzXgtulNsLdRDMmfSAG9ii6oB9BMTb1ZHplho0pAVR8FGWJZsB14WBr4E/YJwQ9D/lJEJ2CxUuNm59tsctilaCH7Jb4rEeLqKKuToRgPWZRIPhmiJ2LnjDgVLwQHdcOzzMXoDPw14EMkf0LeKy66MbgvoVW/7LG840yasZjpHaCPHUeBFqGwGLRsnrBdKbr6TqetUykDy1+L4QiYKPTHryawH1CCw4oedn+EzZa+NqJkAIH3mNXXBk0gK8g0XUuynDs/tVVcitgG6b1dbCYlUhSTfas7oySf4uycqdmbVnTKHWmA/91AkfLofMnbedTFP+VcauUmMiM6tDG89NTqCNf9v3Mq6qQ91q+7NiPY6OzlQ3/6pVz0mBbEZD6SY2/FtlprroGc5w==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(39860400002)(136003)(346002)(366004)(376002)(186009)(1800799009)(451199024)(66446008)(6916009)(66476007)(76116006)(66556008)(64756008)(6512007)(316002)(66946007)(91956017)(8676002)(2616005)(8936002)(4326008)(36756003)(41300700001)(122000001)(478600001)(71200400001)(38100700002)(38070700005)(53546011)(6506007)(6486002)(83380400001)(2906002)(86362001)(5660300002)(33656002)(26005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <1363179E1145354E9EDD9E54945575C1@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6279
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	7679c4b1-66df-49d0-9cd1-08dba22e6cf6
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TYC3UK7bU4KUgqB14gvGt8uaGxALi5y9nI5rUCCbava0XNr6b8w6Wb14ex88wj7EzRb+ngrT9fbaRMNxCWJNwbZi7O+owy0zLkoJxReGQyQ+/MWSPnEJfOkGkjcjUoEzk3WbDfeKcESHUOPnK/XVxK9qPiX/quE/OOIvf2jbDYixSLTuVioPz1PIDcBqh4sV+efJCed7zUGX+1rQ/Y6XjbosFd85s0gP66dD6gICOVj23kGUNBGUJGfyfQeZKagljgaqJXw728C9K5ZLROLuzCJrKzeM509Kpz5aKh6YZlX2xuUlAREYpEE8uV03Iak6oiGXeYyT1g93KZAgaukDlGttKpuZzYbU5SHhbo54zqaOWwsmI1kwR+/QXXqFhA1G4nO7gaKRaGhKFluXuDc7hnmS1gwraRzdS355kjXmgEQUugRHF5Ozcl61cozXgbn7szwG2CrjL8A339R4U8yOVddifAnLH4fIroFuy6S76jix9jFy4yKEL+kFNwUV3hTN+jGsxY/kYFnzLdp/vAVE+uqws/DjtsFI4LhNZvWvcmT8ld7OZmyqroeQjvrVDIG6zKAsxaqO8RyT/RMQkFt1iRI82poQcQ/69sPuTQjcJN0ele2yDpXgTCo7ilj34zvy879XuQjs6th2UhyY0xAxrwze0LovnSarttvsSYGRwZyUuJFxRDxi1U0aaRcVWm8wu9hO2UFmVXHFQxYF68xeSsKDLzEKeAJ1iSGvlqY0bc4=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(376002)(346002)(136003)(39860400002)(396003)(82310400011)(451199024)(186009)(1800799009)(36840700001)(40470700004)(46966006)(2906002)(83380400001)(53546011)(6506007)(6486002)(40480700001)(5660300002)(336012)(33656002)(26005)(86362001)(36860700001)(47076005)(8676002)(2616005)(8936002)(6862004)(4326008)(70206006)(316002)(6512007)(70586007)(478600001)(82740400003)(356005)(81166007)(40460700003)(41300700001)(36756003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 10:07:36.0339
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2de13c0c-f704-4565-b4ae-08dba22e718f
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT018.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6412
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 10:07:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60837

T24gMTIgQXVnIDIwMjMsIGF0IDA4OjIzLCBKaWxpYW5nIENhaSB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8dHlyb2NqbD1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gd3JvdGU6
DQo+IA0KPiBPbiBGcmksIEF1ZyAxMSwgMjAyMyBhdCAxMjo0NyBBTSwgUm9zcyBCdXJ0b24gd3Jv
dGU6DQo+IE9uIDExIEF1ZyAyMDIzLCBhdCAwMzoyMSwgSmlsaWFuZyBDYWkgdmlhIGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcgPHR5cm9jamw9Z21haWwuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiBJIGhhdmUgYSByZWNpcGUgYWJjXzEuMC5iYi4gSXQgZ2VuZXJhdGVzIGEgdHh0
IGNvbnRhaW5zIGFsbCBsYXllcnMgZ2l0IGNvbW1pdA0KPiBJRCBpbnRvIC9ldGMuIEl0IGlzIGlu
c3RhbGxlZCBpbnRvIGltYWdlIGJ5IElNQUdFX0lOU1RBTEw6YXBwZW5kID0gIiBhYmMiLiBJZiB5
b3Ugd2FudCBhIGxpc3Qgb2YgbGF5ZXJzL1NIQXMgaW4geW91ciBpbWFnZSwgbG9vayBhdCB0aGUg
aW1hZ2UtYnVpbGRpbmZvIGNsYXNzLiBJIHVzZSB0aGlzIGJiY2xhc3MsIGJ1dCBpdCBzb21ldGlt
ZXMgcmVjb3JkcyBpbmFjY3VyYXRlIFNIQXMuDQo+IEZvciBleGFtcGxlLCB3aGVuIEkgZmlyc3Qg
Yml0YmFrZSBiYXNlZCBhIGRpcnR5IGxheWVyIG1ldGEtYWFhLCB0aGUgU0hBIHdvcmtzDQo+IGFz
IGV4cGVjdGVkLCBmb2xsb3dlZCBieSBhICdtb2RpZmllZCcuIEJ1dCB3aGVuIEkgc3VibWl0dGVk
IHRoZSBtZXRhLWFhYQ0KPiBtb2RpZmljYXRpb24gYW5kIHJhbiBiaXRiYWtlIGFnYWluLCBub3Ro
aW5nIGhhcHBlbmVkLCBhbmQgdGhlIGZpbGUgL2V0Yy9idWlsZA0KPiB3YXMgbm90IHJlZ2VuZXJh
dGVkLg0KPiBBbHRob3VnaCBtZXRhLWFhYSBpcyBhbHJlYWR5IGNsZWFuIGF0IHRoaXMgdGltZSwg
dGhlIG9sZCBTSEEgYW5kICdtb2RpZmllZCcgYXJlDQo+IHN0aWxsIGRpc3BsYXllZCBpbiB0aGUg
cm9vdGZzIGJ1aWxkIGZpbGUuDQoNCkkgc3VzcGVjdCB0aGUgcHJvYmxlbSBpcyB0aGF0IHlvdSBk
aWRu4oCZdCBhY3R1YWxseSBjaGFuZ2UgdGhlIGNvbnRlbnQgb2YgdGhlIGZpbGVzLCBzbyB0aGUg
aW1hZ2UgZGlkbuKAmXQgcmVidWlsZC4NCg0KSeKAmWQgY2FsbCB0aGlzIGEgYnktZGVzaWduIHF1
aXJrOiBpZiBJIHdhcyB1c2luZyBpbWFnZS1idWlsZGluZm8gSSB3b3VsZG7igJl0IHdhbnQgdGhl
IGltYWdlIHRvIHJlYnVpbGQganVzdCBiZWNhdXNlIEkgZml4ZWQgYSB0eXBvIGluIGEgY29tbWl0
IG1lc3NhZ2UuDQoNClJvc3M=

