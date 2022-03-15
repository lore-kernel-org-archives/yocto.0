Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC9BC433EF
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 18:48:24 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.15104.1647370091282966485
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 11:48:12 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com
 header.s=trusted01 header.b=Pq9Y1olZ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1647370091; x=1805050091;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=dNBz0tZUpQbVCKqQb8AO71OKzn3LiROT5uJXg0Wli18=;
  b=Pq9Y1olZTgeA9AlGi1D/48JpcQNhwI/xrASI5oLwehJvtmogWByW9Nok
   Afmjgyauo6XcZoZeFjuKbokCds1MdRGH619WJhevo+v1X0ehnuwsMZjXp
   qeLMafbgJhKnaY3oPLrZhzQ1szKLl8sGalA7ppMxe4CtxVi9+wM8/LVOU
   g=;
IronPort-SDR: 
 RMHEzrdwtLRA2TDkfTbS2etHW7YQi+qqpUnlDezHhUMO36hD8zPkFNQT+xqnuywmQnEp6nCOON
 0TnlJszUcfmw==
IronPort-PHdr: =?us-ascii?q?A9a23=3AGmbXqh+LXR5UOP9uWXW7ngc9DxPPW53KNwIYo?=
 =?us-ascii?q?qAql6hJOvz6uci4ZgqGvq0m1QaUFazgqNt8w9LMtK7hXWFSqb2gi1slNKJ2a?=
 =?us-ascii?q?hkelM8NlBYhCsPWQWfyLfrtcjBoVJ8aDAwt8H60K1VaF9jjbFPOvHKy8SQSG?=
 =?us-ascii?q?hLiPgZpO+j5AIHfg9qp2+yo5pHebRlEiDWgbb9vLBi9sBncuNQRjYZ+MKg61?=
 =?us-ascii?q?wHHomFPe+RYxGNoIUyckhPh7cqu/5Bt7jpdtes5+8FPTav1caI4TadFDDs9K?=
 =?us-ascii?q?GA6+NfrtRjYQgSR4HYXT3gbnQBJAwjB6xH6Q4vxvy7nvedzxCWWIcv7Rq0vV?=
 =?us-ascii?q?D+886lkVgPniCYfNz447m7XjNBwjLlGqx6lvhBz3pLYbJ2QOPd4Y6jTf84VR?=
 =?us-ascii?q?XBZU8hRSSJPH5+8YYUMAeoPP+lYrpXyqVQBohalGQmjH+HvxiNUinPq36A31?=
 =?us-ascii?q?fkqHwHc3AwnGtIDqHrYotLyNKcUSuC60rfHzS7bY/hLxDn99JbHcg4/rvGKQ?=
 =?us-ascii?q?Ll9b9faxU0hGA3Yi1mcp5HuMjSO1uQRrWeb8fRvVeS1h24irAFxpCOvydkyh?=
 =?us-ascii?q?YnSnY8a0UrL+jtiwIc1Pt24VFB0Ydu/EJdKqy6aMI52T9okTmp1tyk01qcIt?=
 =?us-ascii?q?oSnfCgW1psn3RjfZuSaf4aG/x7uUPidLSl8iX95fL+zmRW//EuuxOPySMW5z?=
 =?us-ascii?q?EtHozZKnNfMsn0A1RLd5tabR/Z94Eus1iuC2Q/X5+xGJ00/iKTVK5kkwrEql?=
 =?us-ascii?q?5oTt1zOHy/xmErqkK+WcV0k+vKv6+TlfLrpuoOcO5VzigHkPaQjnNG0D+cgM?=
 =?us-ascii?q?gUWQmSX5f6w2b/t8EHjQ7hHgec6nrTBvJzHOcgXvKG0DgBP3oss8RqzEjer3?=
 =?us-ascii?q?dIFlncdNl1FYgiIj43xNlHLJ/D3EOmwjky3kDdu2/DGJrrhAojRLnTbkLfuY?=
 =?us-ascii?q?7J960lExQovwtFQ/ZRUCrQaIP/3RkP9qMDUAgIjPwyp2ObrEs5y2ZkAVmKUA?=
 =?us-ascii?q?q6ZK7/SvkGN5uI0OeWDeIgVuDPlJ/gk4f7hk2M5lEcAcaW1x5caan61Eu5lL?=
 =?us-ascii?q?kiWe3bgn88NEWIQsQo/SOzqhkeCUTlWZ3uqRKI8+i80CJy4AofFXIythbuB3?=
 =?us-ascii?q?CGgHpJIeG9GEUuBHmzyeIqaQPcNaDmSItN/nTwBTritUZMu1RartAPizbpoN?=
 =?us-ascii?q?fLb+jcEupL7yNh1++rTmAkv+TBsFcSSz3mNT31onmMPXzI33Kd/rlBhyleEy?=
 =?us-ascii?q?qV4h/1YFcdP5/NSSAs7NZncwPBmC9D1QgLBZNCJSFS4Tdq6HTE9VNUxw8UBY?=
 =?us-ascii?q?xU1J9L3rRDO2mKQCr1dw6aCBto38q/Z93f0Lsd5jX3B0f9yoUMhR54FEGqgn?=
 =?us-ascii?q?aNy7EybPJLEjUif343iNZknnWSFoHyfwHSDugddVwhrXKjedXoWa1DHtsj04?=
 =?us-ascii?q?1iERLirX+d0ejBdwNKPf/MZIubiik9LEbK6YIy2Xg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ADAADp3jBi/wFUSQpaGgEBAQEBAQE?=
 =?us-ascii?q?BAQEDAQEBARIBAQEBAgIBAQEBQAmBPQUBAQEBCwGDJYFVF4Q9iCaIBW0Dhgy?=
 =?us-ascii?q?FBIUvjCIUgWgLAQEBAQEBAQEBCAEqBxAEAQGFBwIXhBEmNAkOAQIEAQEBEgE?=
 =?us-ascii?q?BBgEBAQEBBgQBgRuFaA2CNSkBg2MBAQEBAwEiEUUMBAIBCA0EAQMBAQECAhE?=
 =?us-ascii?q?VAgICHwcKFQIGCAEBBA4FCIJ4BYJlA64cNXqBMRoCZYRrgjgNgksJAYEGLAG?=
 =?us-ascii?q?BZYQrgSWHEoINQ4Q/PoIhQgQBgRYICgESATgogluCZQSWTRsUgTgaAXtBB2s?=
 =?us-ascii?q?6OpI+gx+pXGsHA4NJiwyMc4F0hWgwFYNzgU6KX4ZCA4t4hVyWV5BkkDYNBze?=
 =?us-ascii?q?EbgIEAgQFAhaBYUlccHCDOQlIFwKOPBWCK4Y5hUp1AgE1AgYBCgEBAwmOOIE?=
 =?us-ascii?q?SAQE?=
X-IPAS-Result: =?us-ascii?q?A2ADAADp3jBi/wFUSQpaGgEBAQEBAQEBAQEDAQEBARIBA?=
 =?us-ascii?q?QEBAgIBAQEBQAmBPQUBAQEBCwGDJYFVF4Q9iCaIBW0DhgyFBIUvjCIUgWgLA?=
 =?us-ascii?q?QEBAQEBAQEBCAEqBxAEAQGFBwIXhBEmNAkOAQIEAQEBEgEBBgEBAQEBBgQBg?=
 =?us-ascii?q?RuFaA2CNSkBg2MBAQEBAwEiEUUMBAIBCA0EAQMBAQECAhEVAgICHwcKFQIGC?=
 =?us-ascii?q?AEBBA4FCIJ4BYJlA64cNXqBMRoCZYRrgjgNgksJAYEGLAGBZYQrgSWHEoINQ?=
 =?us-ascii?q?4Q/PoIhQgQBgRYICgESATgogluCZQSWTRsUgTgaAXtBB2s6OpI+gx+pXGsHA?=
 =?us-ascii?q?4NJiwyMc4F0hWgwFYNzgU6KX4ZCA4t4hVyWV5BkkDYNBzeEbgIEAgQFAhaBY?=
 =?us-ascii?q?UlccHCDOQlIFwKOPBWCK4Y5hUp1AgE1AgYBCgEBAwmOOIESAQE?=
X-IronPort-AV: E=Sophos;i="5.90,184,1643673600";
   d="scan'208";a="460723014"
IronPort-SDR: 
 sJH4xHL80T5zenFg6OPK/IEFOll6UT6vxQPakMCGGXwAJyun9jRoOsjmM5wmOl6dRctxFHMBCs
 Us6xQmtnm5b0kVhJJC1RF2qE3ym40yf8RraTsQrmLuxlFnBtCxXVqodwG4T5EERSrD0ggMoyBR
 QyCueDvkq4I8vgQtoIouAOSFMPkecGh1Pe0qi3sK01acJukXp2Fnkl1W/mAzUYSEXm0EbMRxH3
 OFD6sb4l37W0Ol92Lu8847ZKUiQhESnruGQPqPxJBJnAcVBKdjVM+FKI7b7SHHu7wvS9SAXJpG
 hQ0=
IronPort-Data: =?us-ascii?q?A9a23=3AQpmAYq7SFLBrjOFcTky7DAxRtN7FchMFZxGqf?=
 =?us-ascii?q?qrLsTDasY5as4F+vjQcW2GBPPyMYWShfY1xO4njoU8D65XTm4dkS1ZvqHo1Q?=
 =?us-ascii?q?iMRo6IpJ/zAdR6oYHn6wu4v7a5fAk53huDodKjYdVeB4Eb1WlTdhSMkj/vQH?=
 =?us-ascii?q?eOhULWs1h1ZHmeIdg9w0HqPpMZp2uaEsfDha++8kYuaT//3YTdJ6BYoWo4g0?=
 =?us-ascii?q?J9vnTs01BjEVJL0iXRlDRxDlAe2e3D4l/vzL4npR5fzatE88uJX248vZVxkl?=
 =?us-ascii?q?1418SvBCvv9+lr6WmIubpvpbVXW1yoQVK+mjhxEpWoo1aEnMPwfYAFRhinhc?=
 =?us-ascii?q?9JZkY0L7sP2EFlwePSQwIzxUDEBe816FbZa9aHKJz66tsqIwkDdW3Hlzu5/F?=
 =?us-ascii?q?107OJZe8eFyaY1L3aVCeWtcM0zS14pax5r+EIGAnP8LNsDpeoAft3RIwjTQD?=
 =?us-ascii?q?PJgSpfGK43b4tRE2x80h9tSBrDPYMEFbiJ1axbNaAEJPU0YYK/SNs/AamLXf?=
 =?us-ascii?q?DlUrUnF+PJqsy7cywh91L7udsDSfcCOQ8Zc2ECVugr7E63CKklyHLSiJfCtq?=
 =?us-ascii?q?xpAXtPyoB4=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Av5h+HKqC3j0c9U3NZECIRW4aV5pCeYIsim?=
 =?us-ascii?q?QD101hICG9E/b3qynDpp8mPHzP5wr5OktMpTnoAsDpfZq2z/JICOcqV4ufYA?=
 =?us-ascii?q?=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.90,184,1643673600";
   d="scan'208";a="129395498"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] configuration fragments
Thread-Topic: [yocto] configuration fragments
Thread-Index: Adg323G35nDYBUppTrC2/G5Du45+9gAJfZgAABZxESAAEprJgAACGfrg
Date: Tue, 15 Mar 2022 18:48:07 +0000
In-Reply-To: 
 <CAMKF1soUhSpRsLMeMfE6G-BNQjLMPEcNeJ7YawAo_ML7x0o6JA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 18:48:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56452
Message-Id: <20220315184824.CEC9BC433EF@smtp.lore.kernel.org>

DQpUaGFua3MgYWdhaW4uLi4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IE9uIEJlaGFsZiBPZiBLaGVtIFJhag0KU2VudDogVHVlc2RheSwgTWFyY2ggMTUsIDIwMjIgMTE6
NDggQU0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0
ZW1zLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTog
W3lvY3RvXSBjb25maWd1cmF0aW9uIGZyYWdtZW50cw0KDQpFeHRlcm5hbCBFbWFpbCBBbGVydA0K
DQpUaGlzIGVtYWlsIGhhcyBiZWVuIHNlbnQgZnJvbSBhbiBhY2NvdW50IG91dHNpZGUgb2YgdGhl
IEJBRSBTeXN0ZW1zIG5ldHdvcmsuDQoNClBsZWFzZSB0cmVhdCB0aGUgZW1haWwgd2l0aCBjYXV0
aW9uLCBlc3BlY2lhbGx5IGlmIHlvdSBhcmUgcmVxdWVzdGVkIHRvIGNsaWNrIG9uIGEgbGluaywg
ZGVjcnlwdC9vcGVuIGFuIGF0dGFjaG1lbnQsIG9yIGVuYWJsZSBtYWNyb3MuICBGb3IgZnVydGhl
ciBpbmZvcm1hdGlvbiBvbiBob3cgdG8gc3BvdCBwaGlzaGluZywgYWNjZXNzIOKAnEN5YmVyc2Vj
dXJpdHkgT25lU3BhY2UgUGFnZeKAnSBhbmQgcmVwb3J0IHBoaXNoaW5nIGJ5IGNsaWNraW5nIHRo
ZSBidXR0b24g4oCcUmVwb3J0IFBoaXNoaW5n4oCdIG9uIHRoZSBPdXRsb29rIHRvb2xiYXIuDQoN
Cg0KaWYgeW91IGFyZSB1c2luZyBsaW51eC15b2N0byBmb3Iga2VybmVsIHRoZW4gaXQgaXMgc3Vy
ZWx5IHN1cHBvcnRlZCAsIHNvIGFzIGxvbmcgYXMgaXQgaXMgYWRkZWQgdG8ga2VybmVsIHJlY2lw
ZSBpdCBzaG91bGQgd29yayBvay4NCg0KT24gVHVlLCBNYXIgMTUsIDIwMjIgYXQgMzo1OCBBTSBN
b25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4u
bW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4N
Cj4NCj4gV2hlbiB5b3Ugc2F5Og0KPg0KPiAiIHlvdSBtaWdodCBoYXZlIHRvIGxvb2sgaW50byB0
aGlzIGtlcm5lbCByZWNpcGUgYW5kIGVuc3VyZSB0aGF0IGl0IGhhcyBlbmFibGVkIG1lcmdpbmcg
Y29uZmlncyBmZWF0dXJlIGZyb20ga2VybmVsIg0KPg0KPiBBcmUgeW91IHRhbGtpbmcgYWJvdXQg
aW5oZXJpdGluZyBmcm9tICJrZXJuZWwteW9jdG8iIGluIG9yZGVyIHRvIHdvcmsgd2l0aCBjb25m
aWd1cmF0aW9uIGZyYWdtZW50cyA/DQo+DQo+IFRoYW5rcywNCj4gU3RldmUNCj4NCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNv
bT4NCj4gU2VudDogTW9uZGF5LCBNYXJjaCAxNCwgMjAyMiA0OjEzIFBNDQo+IFRvOiBNb25zZWVz
LCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT4NCj4gQ2M6IHlv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gY29uZmln
dXJhdGlvbiBmcmFnbWVudHMNCj4NCj4gRXh0ZXJuYWwgRW1haWwgQWxlcnQNCj4NCj4gVGhpcyBl
bWFpbCBoYXMgYmVlbiBzZW50IGZyb20gYW4gYWNjb3VudCBvdXRzaWRlIG9mIHRoZSBCQUUgU3lz
dGVtcyBuZXR3b3JrLg0KPg0KPiBQbGVhc2UgdHJlYXQgdGhlIGVtYWlsIHdpdGggY2F1dGlvbiwg
ZXNwZWNpYWxseSBpZiB5b3UgYXJlIHJlcXVlc3RlZCB0byBjbGljayBvbiBhIGxpbmssIGRlY3J5
cHQvb3BlbiBhbiBhdHRhY2htZW50LCBvciBlbmFibGUgbWFjcm9zLiAgRm9yIGZ1cnRoZXIgaW5m
b3JtYXRpb24gb24gaG93IHRvIHNwb3QgcGhpc2hpbmcsIGFjY2VzcyDigJxDeWJlcnNlY3VyaXR5
IE9uZVNwYWNlIFBhZ2XigJ0gYW5kIHJlcG9ydCBwaGlzaGluZyBieSBjbGlja2luZyB0aGUgYnV0
dG9uIOKAnFJlcG9ydCBQaGlzaGluZ+KAnSBvbiB0aGUgT3V0bG9vayB0b29sYmFyLg0KPg0KPg0K
PiBPbiBNb24sIE1hciAxNCwgMjAyMiBhdCAxMjo1NyBQTSBNb25zZWVzLCBTdGV2ZW4gQyAoVVMp
IHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNv
bUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4gPg0KPiA+DQo+ID4NCj4gPiBVbmRl
ciBteSBhYXJtNjQgcGxhdGZvcm0gLi4vcmVjaXBlcy1jb3JlL2ltYWdlcyBJIGhhdmUgYSBmaWxl
IOKAnGFpb3gtc3dkZWJ1Z2ZzLmluY+KAnQ0KPiA+DQo+ID4NCj4gPg0KPiA+IFdoaWNoIGJhc2lj
YWxseSBjb250YWluczoNCj4gPg0KPiA+DQo+ID4NCj4gPiBFWFRSQVBBVEhTX3ByZXBlbmQgOj0g
IiQoVEhJU0RJUn0vZmlsZXM6Ig0KPiA+DQo+ID4gTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8v
JHtDT01NT05fTElDRU5TRV9ESVJ9L01JVDttZDU9MDgzNWFkZTY5OGUwYmNmODUwNmVjZGEyZjdi
NGYzMDIiDQo+ID4NCj4gPiBTUkNfVVJJICs9IGZpbGU6Ly9haW94LXN3ZGVidWdmcy5jZmcNCj4g
Pg0KPiA+DQo+ID4NCj4gPiBJIGluY2x1ZGUgdGhpcyBpbiBteSBhaW94LXN3ZGVidWdmcy5iYiBs
aWtlIHNvOiDigJxyZXF1aXJlIGFpb3gtc3dkZWJ1Z2ZzLmluY+KAnQ0KPiA+DQo+ID4NCj4gPg0K
PiA+IEl0IGRvZXMgbm90IGFwcGVhciB0byBhcHBseSBteSBjb25maWd1cmF0aW9uIGZyYWdtZW50
c+KApg0KPiA+DQo+ID4gKENPTkZJR19TQ0hFRF9UUkFDRVIsIENPTkZJR19UUkFDRVIsIGV0Yy4g
Zm9yIGFkZGl0aW9uYWwgcGVyZiANCj4gPiBzdXBwb3J0KQ0KPiA+DQo+ID4NCj4NCj4gdGhlc2Ug
YXJlIHNvbWUgY29uZmlnIGZpbGVzIGZvciBkb2luZyB3aGF0ID8gZnJvbSB3aGF0IGl0IGxvb2tz
IGxpa2UsIHRoaXMgaW5jIGZpbGUgaXMgYWRkaW5nIGEga2VybmVsIGNvbmZpZyBmcmFnbWVudCBp
ZiBzbyB0aGVuIGl0IHNob3VsZCBiZSBhcHBlbmRlZCB0b28ga2VybmVsIHJlY2lwZSBzbyBpZiBh
aW94LXN3ZGVidWdmcy5iYiBpcyBrZXJuZWwgcmVjaXBlIHRoZW4geW91IGFyZSBkb2luZyBpdCBy
aWdodCwgYnV0IHRoZW4geW91IG1pZ2h0IGhhdmUgdG8gbG9vayBpbnRvIHRoaXMga2VybmVsIHJl
Y2lwZSBhbmQgZW5zdXJlIHRoYXQgaXQgaGFzIGVuYWJsZWQgbWVyZ2luZyBjb25maWdzIGZlYXR1
cmUgZnJvbSBrZXJuZWwuIE90aGVyd2lzZSB0aGVzZSBjZmdzIHdvbnQgYmUgcHJvY2Vzc2VkLg0K
Pg0KPiA+DQo+ID4gSSBoYXZlIHRoZSBleGFjdCBzYW1lIGltcGxlbWVudGF0aW9uIHdvcmtpbmcg
dW5kZXIgbXkgaW50ZWwgcGxhdGZvcm0uDQo+ID4NCj4gPg0KPiA+DQo+ID4gQ2FuIHNvbWVvbmUg
dGVsbCBtZSB3aGF0IEkgbWlnaHQgYmUgZG9pbmcgd3JvbmcsIG9yIGhvdyBJIGNhbiBnZXQgbXkg
Y29uZmlndXJhdGlvbiBmcmFnbWVudHMgdG8gYmUgYXBwbGllZCBwcm9wZXJseSA/DQo+ID4NCj4g
PiBBbnkgaWRlYXMgd2h5IGl0IG1pZ2h0IHdvcmsgcHJvcGVybHkgdW5kZXIgb25lIGFyY2hpdGVj
dHVyZSBhbmQgbm90IG9uIHRoZSBvdGhlciA/DQo+ID4NCj4gPg0KPiA+DQo+ID4gVGhhbmtzLA0K
PiA+DQo+ID4gU3RldmUNCj4gPg0KPiA+DQo+ID4NCj4gPg0KPg0KPiANCj4NCg==

