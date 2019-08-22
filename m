Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BC67E00DAF; Thu, 22 Aug 2019 04:55:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.68.58 listed in list.dnswl.org]
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068058.outbound.protection.outlook.com [40.92.68.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A31B2E0082A
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 04:55:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=XzFLYzbeodemfdkZFID22quuczYhrieIvTotQ6Ql4MmF+urxAwn8+k8RDuHPbbvKfGvO5RAcLlL4RvQJq46xFKCciQzYDiij4EV5cjndN86/78TDsWAbeRq29s58ylQ2ccRGcCpbecmSvyoox99s/8iUR58R0kI7CDr0cV6kSjSnUak/q28iuIZYH2+ROEQAcFOptzInlddccQBC18Ew9ZbbwW+hjB9EUgOSn2ZlqWjS2IPQNUeILqUvV5aL2Ywo7AaFbtQsoyix0W3rNnvFy/MfWlDmkaLGgnWHKXelx/Gq4v9rZDTiUJFt8RfWCcMcJQVTkCSPvv6/4FtQqg2XUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=V7r8K3MfyU9MLlEBEUhCZX2fEuddPjpIDNlNSyLJ2TI=;
	b=kx1IPfaM/bZvFa4HbLf4Ucafw2cAt0ud33o63pADGuFdIMOG0aMLa3YKasPapDIbkF6XDTRNVlkgixfFvxgfZFR41wHi1qMT0/aBaQAREWfINqgN1o7MnNsAL63G0EGABigXpQDFPzU3Rs7Re++36G31cnIVZq2iiz6Uiqf3BPI8mloT6sjIMi2lK+pmymQq2tj4W4+UhNtoeNZW/cJFXAHcOYSFYBx3Le4thjZu+8TVx/PVFUJOwUmfpXs4BcWUJuxl+lYswmpv1O7iLL3mVqppu6JfiYC51cc2oz9lE7o5EEzxWG456RfaKIKnhwouqRrBfdnr5jz5f9GgZWsEKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=V7r8K3MfyU9MLlEBEUhCZX2fEuddPjpIDNlNSyLJ2TI=;
	b=qJ9rqlQD9iahl+EBS4FfMFqfwDGW5+qoWLC5tzL27sIt/Zpu/wNSXQfs1FF2gT/IkHbFoWJLjupciVwTX1qMTj1MqbTOwcbNBH0rNrEIJsU6Oc/bWhwGcnR2BtBUgS94fYz+kEHPOCZGhU+QU/80wBuqdhFhc6CY3/D8k5VZi69xxcEcuO5hmb4ASurBw1rSsDPV/L88enCXq2ek7UQp8nBfflrfg33yiTZaDppg1uqULKYHGcDZvsoaZVKPXUqs3p9gJ5VIgVAzriJQHhFUbPqbWJNcFkLc9z86S12RnColp5M45x8x8MEQygj8BuaghVTJC0Wn2fauKmBZdTLV+w==
Received: from HE1EUR02FT062.eop-EUR02.prod.protection.outlook.com
	(10.152.10.51) by HE1EUR02HT240.eop-EUR02.prod.protection.outlook.com
	(10.152.10.240) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2199.13;
	Thu, 22 Aug 2019 11:55:25 +0000
Received: from VI1PR08MB3456.eurprd08.prod.outlook.com (10.152.10.54) by
	HE1EUR02FT062.mail.protection.outlook.com (10.152.11.96) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.2199.13 via Frontend Transport; Thu, 22 Aug 2019 11:55:24 +0000
Received: from VI1PR08MB3456.eurprd08.prod.outlook.com
	([fe80::1dfb:4709:3f1c:80d1]) by
	VI1PR08MB3456.eurprd08.prod.outlook.com
	([fe80::1dfb:4709:3f1c:80d1%7]) with mapi id 15.20.2178.020;
	Thu, 22 Aug 2019 11:55:24 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: Yocto discussion list <yocto@yoctoproject.org>, Mauro Ziliani
	<mauro@faresoftware.it>
Thread-Topic: [yocto] libGL missing. Which packages bring it?
Thread-Index: AQHVWABm/lJWewtYH0aoYUWMY6tQx6cHEO4A
Date: Thu, 22 Aug 2019 11:55:24 +0000
Message-ID: <VI1PR08MB345604D3C577BE673DAFFF7E95A50@VI1PR08MB3456.eurprd08.prod.outlook.com>
References: <4899567d-add8-eb6f-23bc-9db23bd9196f@faresoftware.it>
In-Reply-To: <4899567d-add8-eb6f-23bc-9db23bd9196f@faresoftware.it>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR08CA0015.eurprd08.prod.outlook.com (20.179.4.91) To
	VI1PR08MB3456.eurprd08.prod.outlook.com (20.177.59.22)
x-incomingtopheadermarker: OriginalChecksum:396AB07D96F7A51FB981DDC55CD9926EFA6DBB794B185A6AF90FE6B1ED3B37FF;
	UpperCasedChecksum:1EE22BA4239D2ACD137D3236645EDB53EB27649FBF9793E115A99ECB3E7B0CD4;
	SizeAsReceived:7383; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-readdle-message-id: 2fa71a40-9eb8-4f98-82f9-69b1341e120b@Spark
x-tmn: [h1kKLOCfOXZ80wMthUdFUBuz66HMRDsB]
x-microsoft-original-message-id: <2fa71a40-9eb8-4f98-82f9-69b1341e120b@Spark>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);
	SRVR:HE1EUR02HT240; 
x-ms-traffictypediagnostic: HE1EUR02HT240:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-message-info: b+nxZwaxT4NbD9W9yubb6YRFrLOxDYn6s5gdlNdahKWTyuyABEFDUb+yHeDX/ff96X8iucMHIJghnWA1lGaT+ZxBZ88NQSf5YW8lT8Atm7HRAP0DO+y87+ITt8qnE67nAFDl6NuNxYOXlBBvz1Lp35mLviMdRJvzDr3Ewm5DCbpUEeCL86LXEiXTkOoDAgaG
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 117b2721-4db1-4222-cb2a-08d726f79da5
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Aug 2019 11:55:24.8355 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR02HT240
Subject: Re: libGL missing. Which packages bring it?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 22 Aug 2019 11:55:28 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR08MB345604D3C577BE673DAFFF7E95A50VI1PR08MB3456eurp_"

--_000_VI1PR08MB345604D3C577BE673DAFFF7E95A50VI1PR08MB3456eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWF1cm8sDQoNCkhhdmUgeW91IHRyaWVkIHNlYXJjaGluZyB0aGUgbGF5ZXIgaW5kZXg/DQpo
dHRwczovL2xheWVycy5vcGVuZW1iZWRkZWQub3JnLw0KDQpDaGVlcnMsDQpFcmlrDQpPbiAyMSBB
dWcgMjAxOSwgMTE6MTEgKzAyMDAsIE1hdXJvIFppbGlhbmkgPG1hdXJvQGZhcmVzb2Z0d2FyZS5p
dD4sIHdyb3RlOg0KSGkgYWxsDQoNCkkgdHJ5IHRvIGNvbXBpbGUga2l2eSBmb3IgUHlybyBhbmQg
UHl0aG9uMyBmb3IgZnJhbWVidWZmZXIgY29uIFJQaTMuDQoNClRoZSBidWlsZGVyIGNhbm5vdCBm
aW5kIGxpYkdMIGFuZCAtbEdMIGxpbmtlciBmYWlscy4NCg0KV2hpY2ggYXJlIHRoZSBwYWNrYWdl
cyB0aGF0IGdpdmUgbGliR0w/DQoNCg0KQmVzdCByZWdhcmRzDQoNCiAgICBNYXVybw0KDQotLQ0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnlvY3RvIG1h
aWxpbmcgbGlzdA0KeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KaHR0cHM6Ly9uYW0wNC5zYWZlbGlu
a3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyUyRmxpc3RpbmZvJTJGeW9jdG8mYW1wO2RhdGE9MDIlN0MwMSU3QyU3Q2M1NTli
ODc4YmIzZTRhNjFlMzU5MDhkNzI2MTc4N2IwJTdDODRkZjllN2ZlOWY2NDBhZmI0MzVhYWFhYWFh
YWFhYWElN0MxJTdDMCU3QzYzNzAxOTc1NDgxMDA4MzI1NSZhbXA7c2RhdGE9Z2dlRzZMbGlJRllU
NTNNRUdEdWMyTFQlMkZ1eHRHR0NJQWdwdnNrUzc2cm84JTNEJmFtcDtyZXNlcnZlZD0wDQo=

--_000_VI1PR08MB345604D3C577BE673DAFFF7E95A50VI1PR08MB3456eurp_
Content-Type: text/html; charset="utf-8"
Content-ID: <E6B8979B96E77243A8B243225D5FC7C6@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iPg0KPGRpdiBkaXI9ImF1dG8iPkhpIE1hdXJvLA0KPGRpdiBkaXI9ImF1
dG8iPjxicj4NCjwvZGl2Pg0KPGRpdiBkaXI9ImF1dG8iPkhhdmUgeW91IHRyaWVkIHNlYXJjaGlu
ZyB0aGUgbGF5ZXIgaW5kZXg/PC9kaXY+DQo8ZGl2IGRpcj0iYXV0byI+PGEgaHJlZj0iaHR0cHM6
Ly9sYXllcnMub3BlbmVtYmVkZGVkLm9yZy8iPmh0dHBzOi8vbGF5ZXJzLm9wZW5lbWJlZGRlZC5v
cmcvPC9hPjxicj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjxkaXYgbmFtZT0ibWVzc2FnZVNp
Z25hdHVyZVNlY3Rpb24iPjxicj4NCjxkaXYgZGlyPSJhdXRvIj5DaGVlcnMsDQo8ZGl2IGRpcj0i
YXV0byI+RXJpazwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjxkaXYgbmFtZT0ibWVzc2FnZVJlcGx5
U2VjdGlvbiI+T24gMjEgQXVnIDIwMTksIDExOjExICYjNDM7MDIwMCwgTWF1cm8gWmlsaWFuaSAm
bHQ7bWF1cm9AZmFyZXNvZnR3YXJlLml0Jmd0Oywgd3JvdGU6PGJyPg0KPGJsb2NrcXVvdGUgdHlw
ZT0iY2l0ZSIgY2xhc3M9InNwYXJrX3F1b3RlIiBzdHlsZT0ibWFyZ2luOiA1cHggNXB4OyBwYWRk
aW5nLWxlZnQ6IDEwcHg7IGJvcmRlci1sZWZ0OiB0aGluIHNvbGlkICMxYWJjOWM7Ij4NCkhpIGFs
bDxicj4NCjxicj4NCkkgdHJ5IHRvIGNvbXBpbGUga2l2eSBmb3IgUHlybyBhbmQgUHl0aG9uMyBm
b3IgZnJhbWVidWZmZXIgY29uIFJQaTMuPGJyPg0KPGJyPg0KVGhlIGJ1aWxkZXIgY2Fubm90IGZp
bmQgbGliR0wgYW5kIC1sR0wgbGlua2VyIGZhaWxzLjxicj4NCjxicj4NCldoaWNoIGFyZSB0aGUg
cGFja2FnZXMgdGhhdCBnaXZlIGxpYkdMPzxicj4NCjxicj4NCjxicj4NCkJlc3QgcmVnYXJkczxi
cj4NCjxicj4NCiZuYnNwOyZuYnNwOyZuYnNwOyBNYXVybzxicj4NCjxicj4NCi0tPGJyPg0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX188YnI+DQp5b2N0byBt
YWlsaW5nIGxpc3Q8YnI+DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KaHR0cHM6Ly9uYW0w
NC5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZyUyRmxpc3RpbmZvJTJGeW9jdG8mYW1wO2FtcDtkYXRhPTAyJTdD
MDElN0MlN0NjNTU5Yjg3OGJiM2U0YTYxZTM1OTA4ZDcyNjE3ODdiMCU3Qzg0ZGY5ZTdmZTlmNjQw
YWZiNDM1YWFhYWFhYWFhYWFhJTdDMSU3QzAlN0M2MzcwMTk3NTQ4MTAwODMyNTUmYW1wO2FtcDtz
ZGF0YT1nZ2VHNkxsaUlGWVQ1M01FR0R1YzJMVCUyRnV4dEdHQ0lBZ3B2c2tTNzZybzglM0QmYW1w
O2FtcDtyZXNlcnZlZD0wPGJyPg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_VI1PR08MB345604D3C577BE673DAFFF7E95A50VI1PR08MB3456eurp_--
