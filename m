Return-Path: <fknorr@neuroloop.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4E5C43217
	for <webhook@archiver.kernel.org>; Mon, 28 Nov 2022 14:41:50 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.118])
 by mx.groups.io with SMTP id smtpd.web10.119419.1669646503056664761
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Nov 2022 06:41:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@neuroloop.onmicrosoft.com header.s=selector2-neuroloop-onmicrosoft-com header.b=btJFIA8N;
 spf=pass (domain: neuroloop.de, ip: 40.107.7.118, mailfrom: fknorr@neuroloop.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DzvYPm9iZPWCCOuL3UrUQKpdAk6Vtsxzkxtt9FdS6dXOWOXoNhlaaTYMxvV9MavmgbLKtjv26/YwJAk3HooaavDghYNKKZ53yEI8SwfsQDS3z582GfvmCvL7bRKLpoOc7MQ2xfWO3c390Yp1QKk6vAre4LQlyfr6CLcOLj39xh8Shtx4LP/BEwNtDiRgSIoFeDdGpZe5L63nd6eg/nVJLlogJ/dE2qQr7MR7peVyu4zPJbY2aZeA0ny0w2PE7vPpvxwOgOXPc/5beOTa7KQ1fpP7WIKDqva+cElwPKZdJ1TO1QONWjHYEqjAvRDH5wtm4hAPkV9UCGXuQCovrQD52A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Badk+zIQSOo2hU53sfs7M8TAt33Ns6j4VKcVSrNdSjU=;
 b=Kv7X5xkfRFyT2y/oTjcq1+TcKA67XtfqqzZvglV62Fyb+rKZJNxI96IQ6hR2KGHWa46nDRn9rFRqcbdUjY4qjpMgQMqGLUpmV/EanSXz6QXBwADBbC41BKvwmtD7Ct4mNfRB0MU+2lDxHpyHnwUeJQjMkQ/At/jJYcb38xRQOSB9xjCojrsHu4AEl7my8B//uWGXcr38lqE5TrmFymTeFASHZ3CHk1IUZFm5rZD5DnkAlTkKlBN+tCvCeLN+jF6fJVbK6UNQ5lOR2YhAoMZMG7Q4uUal0Rcm9v333JtrA/gi/7r94GoJ880SwkbSQvD44bEEF0qXMzAlG8wtZCOr4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 213.164.76.146) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=neuroloop.de; dmarc=bestguesspass action=none
 header.from=neuroloop.de; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=neuroloop.onmicrosoft.com; s=selector2-neuroloop-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Badk+zIQSOo2hU53sfs7M8TAt33Ns6j4VKcVSrNdSjU=;
 b=btJFIA8N2xAFEjizzYSO2kFFjJAGyZcO2LB1DIrD5UWV7079hFX0HQSqctzZY1GlVG2cYNhyHqe+GLSJ0tFYYxZEVdOVPoncblWk1Tqe18rwo2EaM9ZUlpKDBz/m80+F0JIKSoefEbvDiIFKYiFEOAOCO1U+jzMaHlxe++aKxhk=
Received: from ZR0P278CA0057.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:21::8) by
 PR3PR04MB7369.eurprd04.prod.outlook.com (2603:10a6:102:89::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.19; Mon, 28 Nov 2022 14:41:39 +0000
Received: from VI1EUR02FT032.eop-EUR02.prod.protection.outlook.com
 (2603:10a6:910:21:cafe::3a) by ZR0P278CA0057.outlook.office365.com
 (2603:10a6:910:21::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23 via Frontend
 Transport; Mon, 28 Nov 2022 14:41:39 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 213.164.76.146)
 smtp.mailfrom=neuroloop.de; dkim=none (message not signed)
 header.d=none;dmarc=bestguesspass action=none header.from=neuroloop.de;
Received-SPF: Pass (protection.outlook.com: domain of neuroloop.de designates
 213.164.76.146 as permitted sender) receiver=protection.outlook.com;
 client-ip=213.164.76.146; helo=mail.neuroloop.de; pr=C
Received: from mail.neuroloop.de (213.164.76.146) by
 VI1EUR02FT032.mail.protection.outlook.com (10.13.61.53) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.20 via Frontend Transport; Mon, 28 Nov 2022 14:41:39 +0000
Received: from srvexc1.neuroloop.local (10.136.17.20) by
 srvexc1.neuroloop.local (10.136.17.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.12; Mon, 28 Nov 2022 15:41:37 +0100
Received: from srvexc1.neuroloop.local ([fe80::10ec:631:7447:2833]) by
 srvexc1.neuroloop.local ([fe80::10ec:631:7447:2833%10]) with mapi id
 15.02.1118.012; Mon, 28 Nov 2022 15:41:37 +0100
From: Felix Knorr <FKnorr@neuroloop.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Systemd-logind HandlePowerKeyLongPress does'nt trigger
Thread-Topic: Systemd-logind HandlePowerKeyLongPress does'nt trigger
Thread-Index: AQHZAzeFL0iK141yl0ueZLQVEUvjmg==
Date: Mon, 28 Nov 2022 14:41:37 +0000
Message-ID: <811ce2d3-9248-954a-95a0-22f42992d546@neuroloop.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [213.164.93.30]
Content-Type: text/plain; charset="utf-8"
Content-ID: <DAD19737F9521F4E82F2101750477FE3@neuroloop.local>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1EUR02FT032:EE_|PR3PR04MB7369:EE_
X-MS-Office365-Filtering-Correlation-Id: d2c352dd-0f60-4a68-f523-08dad14ea87d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	3Av1npzOqadJfuzVxbc7wxwUp7sSaXBTu6KCG3KlEHh9NscP38YLddoOBrH/Z7cN+pUhslg1DK4NKIOHB2SeRk2o+yYgdX5Ykabg3Re8w+7whLjMWSam0eSGzhrgXPQV2HaA7SHTXX3eNLWMshAGc7UVubyaGN+aNK/cBKQ6mRB/bqx67iXrt40lyQ+5Uu5ImRGpkHsaK383Rt6G8LTteTx8Xwm1Y4GeVDxi4bO3nj67JrXLCe4kMD7LP9tHr3inUl0aid1T0ebdx01IzaK4zAOxJYNS5k69q1HofWK2TTSJ2WC7Xtx+93af8FHcpZM+bpurLm+lkFq9PuAfKdSxyRRFVmt09H5uxc+0FqYg3BrcV2nX+kFI9q61jUUItiYKPl/sRm83CV4zvvHNcQXxk7FxmavrVBC0WIz07evjnVwUACLgf66+VXlBdUgrCBMEZpZyWIobeQOC6pRaX+r+bCTan7cmw9fAbPEG1oDprkaFQPsnrF1l0jGdBno/h1sOfjSGA27ry2kFWNsOMunfxkzdDgjyQbZvTtoknpj+u06uiK9yr+UaR81zJ+h9rgooiECklrLm3Ak3ldnY/cFq5ireSl4CNHfmDKPQ9da+8WH9ehXV0MINXH09+RLTuXBtEjFbQn/40MNKmOTgHiJOaTdfsulMNRjE2Wj01axJrzqywQCJO1Sde+niDzSwbkWqPCZMkfhJuHcevyHpC1OZA21/XzO98OE2mp7/Jz5LcE+zcNwZfMx0/WXW0vEAPZAT
X-Forefront-Antispam-Report: 
	CIP:213.164.76.146;CTRY:DE;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:mail.neuroloop.de;PTR:InfoDomainNonexistent;CAT:NONE;SFS:(13230022)(39840400004)(346002)(376002)(396003)(136003)(451199015)(46966006)(36840700001)(478600001)(70206006)(70586007)(36756003)(8676002)(6916009)(316002)(36860700001)(83380400001)(356005)(81166007)(82310400005)(40480700001)(26005)(31696002)(86362001)(47076005)(66574015)(3480700007)(336012)(2616005)(186003)(41300700001)(8936002)(2906002)(5660300002)(31686004)(213903007)(36900700001);DIR:OUT;SFP:1102;
X-OriginatorOrg: neuroloop.de
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2022 14:41:39.0359
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d2c352dd-0f60-4a68-f523-08dad14ea87d
X-MS-Exchange-CrossTenant-Id: 7ccfa2e6-da67-443f-b0dd-3ff5292e0ffa
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=7ccfa2e6-da67-443f-b0dd-3ff5292e0ffa;Ip=[213.164.76.146];Helo=[mail.neuroloop.de]
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR02FT032.eop-EUR02.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR04MB7369
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Nov 2022 14:41:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58645

SGV5LA0KDQpJJ20gdHJ5aW5nIHRvIGNvbmZpZ3VyZSBteSB5b2N0byBpbWFnZSB0aGF0IHJ1bnMg
b24gYW4gTVMgU3VyZmFjZSBHbyAyDQp0byBzdXNwZW5kIHdoZW4gcHJlc3NpbmcgdGhlIHBvd2Vy
IGtleSBzaG9ydGx5LCBhbmQgdG8gcG93ZXJvZmYgaWYgdGhlDQprZXkgaXMgaGVsZCBsb25nZXIu
DQoNClN5c3RlbWQgdGhlb3JldGljYWxseSBzdXBwb3J0cyB0aGF0IGJ5IGNyZWF0aW5nIHRoZSBm
b2xsb3dpbmcgZmlsZToNCg0KICAgICBjYXQgPiAke0R9L2V0Yy9zeXN0ZW1kL2xvZ2luZC5jb25m
LmQvNTAtaWdub3JlLXBvd2VyYnV0dG9uLmNvbmYNCjw8LSdFT0YnDQogICAgICAgICBbTG9naW5d
DQogICAgICAgICBIYW5kbGVQb3dlcktleT1zdXNwZW5kDQogICAgICAgICBIYW5kbGVQb3dlcktl
eUxvbmdQcmVzcz1wb3dlcm9mZg0KICAgICBFT0YNCg0KSG93ZXZlciwgd2hpbGUgdGhlIHN1c3Bl
bmQgd29ya3MsIHRoZSBwb3dlcm9mZiBkb2VzIG5vdC4gRm9yIHRlc3RpbmcgSQ0KYWx3YXlzIHNl
dCBIYW5kbGVQb3dlcktleSB0byBpZ25vcmUsDQoNCnN5c3RlbWN0bCBzdGF0dXMgc3lzdGVtZC1s
b2dpbmQNCg0Kc2hvd3MgdGhhdCB0aGUgc2hvcnQgcHJlc3NlcyBhcmUgcmVnaXN0ZXJlZCwgYnV0
IHRoZSBsb25nIG9uZXMgYXJlIG5vdC4NClRoZSBldmVudCBmaWxlIHdoaWNoIGNvcnJlc3BvbmRz
IHRvIHRoZSBwb3dlciBidXR0b24gKGluIC9kZXYvaW5wdXQvKQ0Kc2hvdyBjcnlwdGljIGJ5dGUg
c2VxdWVuY2VzIG9uIGJ1dHRvbiBkb3duLCBidXQgbm90aGluZyBvbiBidXR0b24gdXAuDQpUaGUg
b3V0cHV0IGlzIG5vdCBhbHdheXMgdGhlIHNhbWUsIGFuZCB0aGUgbnVtYmVyIG9mIHRoZSBldmVu
dCBmaWxlIGFsc28NCmNoYW5nZXMgKEknbSBub3QgZW50aXJlbHkgc3VyZSBpZiBpdCBjaGFuZ2Vz
IGJldHdlZW4gcmVib290cyBvciBvbmx5DQpiZXR3ZWVuIHJlaW5zdGFsbHMpDQoNCkkgbm90aWNl
ZCB0aGF0IHRoZSBidXR0b24gbW9kdWxlIHdhcyBub3QgaW5jbHVkZWQsIHNvIEkgYWRkZWQNCkNP
TkZJR19BQ1BJX0JVVFRPTj1tIHRvIHRoZSBrZXJuZWwgY29uZmlnLCBidXQgdGhhdCBkaWRuJ3Qg
aGVscCBlaXRoZXIuDQpUbyBtYWtlIHRoZSBwb3dlciBidXR0b24gd29yayBhdCBhbGwgSSBoYWQg
dG8gaW5jbHVkZSB0aGUga2VybmVsIGNvbmZpZzoNCkNPTkZJR19JTlRFTF9ISURfRVZFTlQ9bSwg
SSBhbHNvIGhhdmUgQ09ORklHX1NVUkZBQ0VfQUNQSV9OT1RJRlk9bSBhbmQNCkNPTkZJR19JMkNf
SElEX0FDUEk9eS4NCg0KSSBzdXNwZWN0IHRoYXQgSSdtIG1pc3Npbmcgc29tZSBjb25maWcsIGJ1
dCBJJ20gbm90IHN1cmUgd2hhdCBleGFjdGx5Lg0KRG9lcyBhbnlvbmUgaGF2ZSBhbiBpZGVhPw0K
DQotLQ0KRmVsaXggS25vcnIsIERpcGwuIEluZi4gU29mdHdhcmUgRW5naW5lZXINCg0KDQpuZXVy
b2xvb3AgR21iSA0KQnJlaXNhY2hlciBTdHJhw59lIDg2LCA3OTExMCBGcmVpYnVyZywgR2VybWFu
eQ0KDQpIYW5kZWxzcmVnaXN0ZXIgSSBSZWdpc3RlcmVkIHBsYWNlIG9mIGJ1c2luZXNzOiBGcmVp
YnVyZy9HZXJtYW55OyBIUkIgNzEzOTM1DQpHZXNjaMOkZnRzZsO8aHJlciBJIE1hbmFnaW5nIGRp
cmVjdG9yOiBNaWNoYWVsIExhdWsNCg0KSW5mb3JtYXRpb25lbiB6dXIgRVUtRGF0ZW5zY2h1dHpn
cnVuZHZlcm9yZG51bmcgZmluZGVuIFNpZSB1bnRlcjogbmV1cm9sb29wLmRlL2RhdGVuc2NodXR6
LTIvPGh0dHBzOi8vbmV1cm9sb29wLmRlL2RhdGVuc2NodXR6LTIvPg0KDQpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXw0KVGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGlzIGNv
bW11bmljYXRpb24gaXMgY29uZmlkZW50aWFsLCBtYXkgYmUgYXR0b3JuZXktY2xpZW50IHByaXZp
bGVnZWQsIG1heSBjb25zdGl0dXRlIGluc2lkZSBpbmZvcm1hdGlvbiwgYW5kIGlzIGludGVuZGVk
IG9ubHkgZm9yIHRoZSB1c2Ugb2YgdGhlIGFkZHJlc3NlZS4gSXQgaXMgdGhlIHByb3BlcnR5IG9m
IHRoZSBjb21wYW55IG9mIHRoZSBzZW5kZXIgb2YgdGhpcyBlLW1haWwuIFVuYXV0aG9yaXplZCB1
c2UsIGRpc2Nsb3N1cmUsIG9yIGNvcHlpbmcgb2YgdGhpcyBjb21tdW5pY2F0aW9uIG9yIGFueSBw
YXJ0IHRoZXJlb2YgaXMgc3RyaWN0bHkgcHJvaGliaXRlZCBhbmQgbWF5IGJlIHVubGF3ZnVsLiBJ
ZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGNvbW11bmljYXRpb24gaW4gZXJyb3IsIHBsZWFzZSBu
b3RpZnkgdXMgaW1tZWRpYXRlbHkgYnkgcmV0dXJuIGUtbWFpbCBhbmQgZGVzdHJveSB0aGlzIGNv
bW11bmljYXRpb24gYW5kIGFsbCBjb3BpZXMgdGhlcmVvZiwgaW5jbHVkaW5nIGFsbCBhdHRhY2ht
ZW50cy4NCg==

