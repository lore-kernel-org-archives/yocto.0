Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C4EE00E54; Mon, 22 Aug 2016 07:41:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A052E00E4C
	for <yocto@yoctoproject.org>; Mon, 22 Aug 2016 07:40:56 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga101.jf.intel.com with ESMTP; 22 Aug 2016 07:40:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,560,1464678000"; d="scan'208,217";a="548172"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by orsmga004.jf.intel.com with ESMTP; 22 Aug 2016 07:40:55 -0700
Received: from orsmsx154.amr.corp.intel.com (10.22.226.12) by
	ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server
	(TLS) id 14.3.248.2; Mon, 22 Aug 2016 07:40:55 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.2.201]) by
	ORSMSX154.amr.corp.intel.com ([169.254.11.220]) with mapi id
	14.03.0248.002; Mon, 22 Aug 2016 07:40:54 -0700
From: "Randle, William C" <william.c.randle@intel.com>
To: "joshua.g.lock@linux.intel.com" <joshua.g.lock@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto-autobuilder][PATCH] PublishArtifacts.py: fix file check
	to work under dash
Thread-Index: AQHR+zVCCh9psonGwEuvJ863CHL6rKBVPqqAgABGowA=
Date: Mon, 22 Aug 2016 14:40:54 +0000
Message-ID: <1471876854.3328.1.camel@intel.com>
References: <1471733421-27188-1-git-send-email-william.c.randle@intel.com>
	<1471861685.5256.11.camel@linux.intel.com>
In-Reply-To: <1471861685.5256.11.camel@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.7.199.154]
MIME-Version: 1.0
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: fix file check to work under dash
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
X-List-Received-Date: Mon, 22 Aug 2016 14:41:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_147187685433281camelintelcom_"

--_000_147187685433281camelintelcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gTW9uLCAyMDE2LTA4LTIyIGF0IDExOjI4ICswMTAwLCBKb3NodWEgTG9jayB3cm90ZToNCg0K
T24gU2F0LCAyMDE2LTA4LTIwIGF0IDE1OjUwIC0wNzAwLCBCaWxsIFJhbmRsZSB3cm90ZToNCg0K
DQpBbiBlYXJsaWVyIHBhdGNoIChlZDM4NTc5OTApIHRvIGNoZWNrIGZvciBleGlzdGluZyBtc2Q1
c3VtIGZpbGVzDQp3b3JrZWQNCmZpbmUgd2hlbiB0ZXN0ZWQgdW5kZXIgYmFzaCwgYnV0IGZhaWxl
ZCB3aXRoIGFuIGVycm9yIG1lc3NhZ2UgYWJvdXQNCltbDQpub3QgZm91bmQgd2hlbiBydW4gdW5k
ZXIgZGFzaC4gVXBkYXRlZCB0aGUgdGVzdCB0byBub3QgcmVseSBvbg0KYmFzaGlzbXMuDQoNClNp
Z25lZC1vZmYtYnk6IEJpbGwgUmFuZGxlIDx3aWxsaWFtLmMucmFuZGxlQGludGVsLmNvbTxtYWls
dG86d2lsbGlhbS5jLnJhbmRsZUBpbnRlbC5jb20+Pg0KLS0tDQogbGliL3B5dGhvbjIuNy9zaXRl
LQ0KcGFja2FnZXMvYXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9QdWJsaXNoQXJ0aWZhY3RzLnB5IHwg
MyArKy0NCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoN
CmRpZmYgLS1naXQgYS9saWIvcHl0aG9uMi43L3NpdGUtDQpwYWNrYWdlcy9hdXRvYnVpbGRlci9i
dWlsZHN0ZXBzL1B1Ymxpc2hBcnRpZmFjdHMucHkNCmIvbGliL3B5dGhvbjIuNy9zaXRlLQ0KcGFj
a2FnZXMvYXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9QdWJsaXNoQXJ0aWZhY3RzLnB5DQppbmRleCBk
OGI1NTRmLi41ODA0OGYwIDEwMDY0NA0KLS0tIGEvbGliL3B5dGhvbjIuNy9zaXRlLQ0KcGFja2Fn
ZXMvYXV0b2J1aWxkZXIvYnVpbGRzdGVwcy9QdWJsaXNoQXJ0aWZhY3RzLnB5DQorKysgYi9saWIv
cHl0aG9uMi43L3NpdGUtDQpwYWNrYWdlcy9hdXRvYnVpbGRlci9idWlsZHN0ZXBzL1B1Ymxpc2hB
cnRpZmFjdHMucHkNCkBAIC0yNTksOCArMjU5LDkgQEAgY2xhc3MgUHVibGlzaEFydGlmYWN0cyhT
aGVsbENvbW1hbmQpOg0KICAgICBkZWYgZ2VuZXJhdGVNRDVjbWQoc2VsZiwgYXJ0aWZhY3QsIGRl
cGxveV9kaXIpOg0KICAgICAgICAgY21kID0gIiINCiAgICAgICAgIGlmIG9zLmVudmlyb24uZ2V0
KCdHRU5fSU1HX01ENScpID09ICJUcnVlIjoNCisgICAgICAgICAgICAjIGNydWZ0eSB0ZXN0IGZv
ciBleGlzdGluZyBtZDVzdW0gZmlsZSByZXF1aXJlZCBmb3IgZGFzaA0Kc2hlbGwNCiAgICAgICAg
ICAgICBjbWQgKz0gImZvciB4IGluIGBmaW5kICIgKyBkZXBsb3lfZGlyICsgIiAtbWF4ZGVwdGgg
NQ0KLXR5cGUgZmA7Ig0KLSAgICAgICAgICAgIGNtZCArPSAiZG8gaWYgW1sgJHggIT0gKi5tZDVz
dW0gXV07IHRoZW4gbWQ1c3VtICR4ID4+ICINCisgIiR4Lm1kNXN1bTsgZmk7IGRvbmU7Ig0KKyAg
ICAgICAgICAgIGNtZCArPSAiZG8gZWNobyAke3h9IHwgZ3JlcCAtcSAnXC5tZDVzdW0nOyBpZiBb
ICQ/IC1uZSAwDQpdOyB0aGVuIG1kNXN1bSAkeCA+PiAiICsgIiR4Lm1kNXN1bTsgZmk7IGRvbmU7
Ig0KICAgICAgICAgcmV0dXJuIGNtZA0KDQoNCg0KUmF0aGVyIHRoYW4gYSAiY3J1ZnR5IiB0ZXN0
LCBob3cgYWJvdXQgdXNpbmcgUE9TSVggc2ggcGFyYW1ldGVyDQpleHBhbnNpb24sIGkuZS4NCg0K
JCBmb289ImJsYWguYmFyIg0KJCBpZiBbICR7Zm9vIyMqLn0gPT0gYmFyIF07IHRoZW4gZWNobyAi
YmFyISI7IGZpDQpiYXIhDQoNClRoZXJlZm9yZSwgdGhlIHBhdGNoIHdvdWxkIGJlIHNvbWV0aGlu
ZyBsaWtlICh1bnRlc3RlZCk6DQoNCmNtZCArPSAiaWYgWyAke3gjIyoufSA9PSAubWQ1c3VtIF07
IHRoZW4gbWQ1c3VtICR4ID4+ICR4Lm1kNXN1bTsgZmkiDQoNClJlZ2FyZHMsDQoNCkpvc2h1YQ0K
DQoNCg0KDQpHb29kIHN1Z2dlc3Rpb24hIFRoZSBjb3JyZWN0ICh0ZXN0ZWQpIHBhdGNoIHdvdWxk
IGJlOg0KICBpZiBbICR7eCMjKi59ICE9IG1kNXN1bSBdOyB0aGVuIG1kNXN1bSAkeCA+PiAkeC5t
ZDVzdW07IGZpIg0KDQpVcGRhdGVkIHBhdGNoIGNvbWluZyBzaG9ydGx5Lg0KDQogICAtQmlsbA0K

--_000_147187685433281camelintelcom_
Content-Type: text/html; charset="utf-8"
Content-ID: <B54C4AD9E3035947B43D3F4EF39DCA85@intel.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGJnY29sb3I9IiNmN2Y3
ZjciIHRleHQ9IiMyYzJjMmMiIGxpbms9IiM0YTkwZDkiIHZsaW5rPSIjNGE5MGQ5Ij4NCjxkaXY+
T24gTW9uLCAyMDE2LTA4LTIyIGF0IDExOjI4ICYjNDM7MDEwMCwgSm9zaHVhIExvY2sgd3JvdGU6
PC9kaXY+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj4NCjxwcmU+T24gU2F0LCAyMDE2LTA4LTIw
IGF0IDE1OjUwIC0wNzAwLCBCaWxsIFJhbmRsZSB3cm90ZToNCjxibG9ja3F1b3RlIHR5cGU9ImNp
dGUiPg0KQW4gZWFybGllciBwYXRjaCAoZWQzODU3OTkwKSB0byBjaGVjayBmb3IgZXhpc3Rpbmcg
bXNkNXN1bSBmaWxlcw0Kd29ya2VkDQpmaW5lIHdoZW4gdGVzdGVkIHVuZGVyIGJhc2gsIGJ1dCBm
YWlsZWQgd2l0aCBhbiBlcnJvciBtZXNzYWdlIGFib3V0DQpbWw0Kbm90IGZvdW5kIHdoZW4gcnVu
IHVuZGVyIGRhc2guIFVwZGF0ZWQgdGhlIHRlc3QgdG8gbm90IHJlbHkgb24NCmJhc2hpc21zLg0K
DQpTaWduZWQtb2ZmLWJ5OiBCaWxsIFJhbmRsZSAmbHQ7PGEgaHJlZj0ibWFpbHRvOndpbGxpYW0u
Yy5yYW5kbGVAaW50ZWwuY29tIj53aWxsaWFtLmMucmFuZGxlQGludGVsLmNvbTwvYT4mZ3Q7DQot
LS0NCiZuYnNwO2xpYi9weXRob24yLjcvc2l0ZS0NCnBhY2thZ2VzL2F1dG9idWlsZGVyL2J1aWxk
c3RlcHMvUHVibGlzaEFydGlmYWN0cy5weSB8IDMgJiM0MzsmIzQzOy0NCiZuYnNwOzEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoJiM0MzspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQg
YS9saWIvcHl0aG9uMi43L3NpdGUtDQpwYWNrYWdlcy9hdXRvYnVpbGRlci9idWlsZHN0ZXBzL1B1
Ymxpc2hBcnRpZmFjdHMucHkNCmIvbGliL3B5dGhvbjIuNy9zaXRlLQ0KcGFja2FnZXMvYXV0b2J1
aWxkZXIvYnVpbGRzdGVwcy9QdWJsaXNoQXJ0aWZhY3RzLnB5DQppbmRleCBkOGI1NTRmLi41ODA0
OGYwIDEwMDY0NA0KLS0tIGEvbGliL3B5dGhvbjIuNy9zaXRlLQ0KcGFja2FnZXMvYXV0b2J1aWxk
ZXIvYnVpbGRzdGVwcy9QdWJsaXNoQXJ0aWZhY3RzLnB5DQomIzQzOyYjNDM7JiM0MzsgYi9saWIv
cHl0aG9uMi43L3NpdGUtDQpwYWNrYWdlcy9hdXRvYnVpbGRlci9idWlsZHN0ZXBzL1B1Ymxpc2hB
cnRpZmFjdHMucHkNCkBAIC0yNTksOCAmIzQzOzI1OSw5IEBAIGNsYXNzIFB1Ymxpc2hBcnRpZmFj
dHMoU2hlbGxDb21tYW5kKToNCiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwO2RlZiBnZW5l
cmF0ZU1ENWNtZChzZWxmLCBhcnRpZmFjdCwgZGVwbG95X2Rpcik6DQombmJzcDsmbmJzcDsmbmJz
cDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDsmbmJzcDtjbWQgPSAmcXVvdDsmcXVvdDsN
CiZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwO2lm
IG9zLmVudmlyb24uZ2V0KCdHRU5fSU1HX01ENScpID09ICZxdW90O1RydWUmcXVvdDs6DQomIzQz
OyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyMgY3J1ZnR5IHRlc3QgZm9yIGV4aXN0aW5nIG1kNXN1bSBmaWxlIHJl
cXVpcmVkIGZvciBkYXNoDQpzaGVsbA0KJm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Y21kICYjNDM7PSAm
cXVvdDtmb3IgeCBpbiBgZmluZCAmcXVvdDsgJiM0MzsgZGVwbG95X2RpciAmIzQzOyAmcXVvdDsg
LW1heGRlcHRoIDUNCi10eXBlIGZgOyZxdW90Ow0KLSZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZu
YnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwOyZuYnNwO2NtZCAmIzQzOz0g
JnF1b3Q7ZG8gaWYgW1sgJHggIT0gKi5tZDVzdW0gXV07IHRoZW4gbWQ1c3VtICR4ICZndDsmZ3Q7
ICZxdW90Ow0KJiM0MzsgJnF1b3Q7JHgubWQ1c3VtOyBmaTsgZG9uZTsmcXVvdDsNCiYjNDM7Jm5i
c3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Y21kICYjNDM7PSAmcXVvdDtkbyBlY2hvICR7eH0gfCBncmVwIC1xICdcLm1k
NXN1bSc7IGlmIFsgJD8gLW5lIDANCl07IHRoZW4gbWQ1c3VtICR4ICZndDsmZ3Q7ICZxdW90OyAm
IzQzOyAmcXVvdDskeC5tZDVzdW07IGZpOyBkb25lOyZxdW90Ow0KJm5ic3A7Jm5ic3A7Jm5ic3A7
Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7Jm5ic3A7cmV0dXJuIGNtZA0KPC9ibG9ja3F1
b3RlPg0KDQpSYXRoZXIgdGhhbiBhICZxdW90O2NydWZ0eSZxdW90OyB0ZXN0LCBob3cgYWJvdXQg
dXNpbmcgUE9TSVggc2ggcGFyYW1ldGVyDQpleHBhbnNpb24sIGkuZS4NCg0KJCBmb289JnF1b3Q7
YmxhaC5iYXImcXVvdDsNCiQgaWYgWyAke2ZvbyMjKi59ID09IGJhciBdOyB0aGVuIGVjaG8gJnF1
b3Q7YmFyISZxdW90OzsgZmkNCmJhciENCg0KVGhlcmVmb3JlLCB0aGUgcGF0Y2ggd291bGQgYmUg
c29tZXRoaW5nIGxpa2UgKHVudGVzdGVkKToNCg0KY21kICYjNDM7PSAmcXVvdDtpZiBbICR7eCMj
Ki59ID09IC5tZDVzdW0gXTsgdGhlbiBtZDVzdW0gJHggJmd0OyZndDsgJHgubWQ1c3VtOyBmaSZx
dW90Ow0KDQpSZWdhcmRzLA0KDQpKb3NodWENCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0KPC9i
bG9ja3F1b3RlPjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
R29vZCBzdWdnZXN0aW9uISBUaGUgY29ycmVjdCAodGVzdGVkKSBwYXRjaCB3b3VsZCBiZTo8L2Rp
dj4NCjxkaXY+Jm5ic3A7Jm5ic3A7aWYgWyAke3gjIyoufSAhPSBtZDVzdW0gXTsgdGhlbiBtZDVz
dW0gJHggJmd0OyZndDsgJHgubWQ1c3VtOyBmaSZxdW90OzwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rp
dj4NCjxkaXY+VXBkYXRlZCBwYXRjaCBjb21pbmcgc2hvcnRseS48L2Rpdj4NCjxkaXY+PGJyPg0K
PC9kaXY+DQo8ZGl2PiZuYnNwOyAmbmJzcDstQmlsbDwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1sPg0K

--_000_147187685433281camelintelcom_--
