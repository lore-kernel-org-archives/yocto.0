Return-Path: <embedded@vivavis.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26B7BC433F5
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 10:27:43 +0000 (UTC)
Received: from mx-relay97-hz1.antispameurope.com
 (mx-relay97-hz1.antispameurope.com [94.100.132.94])
 by mx.groups.io with SMTP id smtpd.web11.5508.1643365658713912356
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 02:27:39 -0800
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: vivavis.com, ip: 94.100.132.94, mailfrom: prvs=0020fee112=embedded@vivavis.com)
Received: from unknown ([185.80.187.2]) by mx-relay97-hz1.antispameurope.com;
 Fri, 28 Jan 2022 11:27:36 +0100
Received: from grp-ex01.Vivavis.int (192.168.17.53) by grp-ex01.Vivavis.int
 (192.168.17.53) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.986.15; Fri, 28 Jan
 2022 11:27:30 +0100
Received: from grp-ex01.Vivavis.int ([::1]) by grp-ex01.Vivavis.int ([::1])
 with mapi id 15.02.0986.015; Fri, 28 Jan 2022 11:27:30 +0100
From: "embedded (VIVAVIS AG)" <embedded@vivavis.com>
To: Sourabh Hegde <hrsourabh011@gmail.com>, Nicolas Jeker <n.jeker@delisys.ch>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: AW: [yocto] Fetch private gitlab repo using ssh with Yocto recipe
 #bitbake
Thread-Topic: [yocto] Fetch private gitlab repo using ssh with Yocto recipe
 #bitbake
Thread-Index: AQHYEoStGTDvicqTsk64EfRHdhPlyqx4INsAgAABSQCAABn8kA==
Date: Fri, 28 Jan 2022 10:27:30 +0000
Message-ID: <79aff859cb334b3f83a8c5c16cea7bc8@vivavis.com>
References: <uhQ4.1643181389477081324.P09X@lists.yoctoproject.org>
 <664d7ef6f28584b0d7310774ad48660437562589.camel@delisys.ch>
 <CADYjeSsxC=LzFMLGTZy1u4m_MfNsHJ3Nq3Y+zYwY_toJYZFhMg@mail.gmail.com>
In-Reply-To: 
 <CADYjeSsxC=LzFMLGTZy1u4m_MfNsHJ3Nq3Y+zYwY_toJYZFhMg@mail.gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.0.1]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 
 61419075-592b-4c8d-b7a0-bf1d145a8b8e
x-c2processedorg: 2f045ba3-9b34-4118-a5bd-6c10d5957477
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-cloud-security-sender: embedded@vivavis.com
X-cloud-security-recipient: yocto@lists.yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
 mx-relay97-hz1.antispameurope.com with 5119FDE8547
X-cloud-security-connect: unknown[185.80.187.2], TLS=1, IP=185.80.187.2
X-cloud-security-Digest: 0a092c5e5feebe494d0cd31653599671
X-cloud-security: scantime:1.646
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 10:27:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56008

SGksDQogDQo+IFZvbjogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZz4gSW0gQXVmdHJhZyB2b24gU291cmFiaCBIZWdkZQ0KPiBHZXNlbmRl
dDogRnJlaXRhZywgMjguIEphbnVhciAyMDIyIDEwOjQ3DQo+DQo+IENhbiB5b3UgcGxlYXNlIGxl
dCBtZSBrbm93IGhvdyB0byAiZm9yd2FyZCBTU0hfQUdFTlQgaW50byBpdCB0byBiZSBhYmxlDQo+
IHRvIGZldGNoIGZyb20gaW50ZXJuYWwgcHJvamVjdHMgd2l0aG91dCB0aGUgbmVlZCB0byBtb3Vu
dCB0aGUga2V5IGludG8gdGhlIGNvbnRhaW5lci4iPyBJIG5ldmVyIGRpZCB0aGF0IGJlZm9yZS4N
Cg0KSSB1c2UgdGhlIGZvbGxvd2luZyBvcHRpb25zIHdpdGhpbiB0aGUgRG9ja2VyIHJ1biBjb21t
YW5kOg0KICAtdiAkU1NIX0FVVEhfU09DSzovc3NoLnNvY2tldCBcDQogIC1lIFNTSF9BVVRIX1NP
Q0s9L3NzaC5zb2NrZXQgXA0KDQpGdXJ0aGVybW9yZSwgSSBoYWQgdG8gbW91bnQgdGhlIC5zc2gg
Zm9sZGVyIGludG8gdGhlIGNvbnRhaW5lciB0byBtYWtlIGl0IHdvcmtpbmcgKGJlIGF3YXJlIG9m
IHNlY3VyaXR5IHJpc2spLg0KQWRkaXRpb25hbGx5LCB5b3Ugc2hvdWxkIGNoZWNrIHRoYXQgdWlk
LCBnaWQgb2YgdGhlIHVzZXIgaW4gdGhlIGNvbnRhaW5lciBpcyB0aGUgc2FtZSBvbiB0aGUgaG9z
dC4NCg0KUmVnYXJkcywNCg0KQ2Fyc3Rlbg0K

