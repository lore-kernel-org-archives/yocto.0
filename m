Return-Path: <richard_allen@keysight.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AC0FE0050B; Mon,  9 Jan 2017 17:17:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.25.5.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from cos-us-iron01k.cos.keysight.com
	(cos-us-iron01k.cos.keysight.com [192.25.5.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21E35E00443
	for <yocto@yoctoproject.org>; Mon,  9 Jan 2017 17:17:50 -0800 (PST)
X-IPAS-Result: =?us-ascii?q?A2ATBABvNXRYfRYYjJxdGwEBAQMBAQEJAQEBgnFJAQEBAQF?=
	=?us-ascii?q?+gQwHg0iKepE1kFSEU4IKhiICGoIPEwECAQEBAQEBARMBARYwMIRoAQEBAQMjC?=
	=?us-ascii?q?kwQAgEIEQQBAQsdAwICAjAUCQgCBA4FCIhosCGCJYokAQEBAQEBAQEBAQEBAQE?=
	=?us-ascii?q?BAQEBAQEBHYsmhEg0FoI8LYIxBZscoilIkg0hAjOBQYZ3cwGHWAGBDAEBAQ?=
X-IronPort-AV: E=Sophos;i="5.33,341,1477980000"; d="scan'208,217";a="44445855"
Received: from wcosexch03k.cos.is.keysight.com (HELO 2k10hubs.keysight.com)
	([156.140.24.22]) by cos-us-iron01k.cos.keysight.com with
	ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Jan 2017 18:17:49 -0700
Received: from wcosexch01k.cos.is.keysight.com ([169.254.3.33]) by
	wcosexch03k.cos.is.keysight.com ([169.254.1.40]) with mapi id
	14.03.0279.002; Mon, 9 Jan 2017 18:17:40 -0700
From: <richard_allen@keysight.com>
To: <ross.burton@intel.com>
Thread-Topic: [yocto] morty populate_sdk_ext fails for recipes inherit
	bin_package
Thread-Index: AdJmrdhZ9pbqzvy0R9qZ/7zxjaZvSQAd+EaAAA4nawAAr1iBgAAa4qLAABESIYAABM+p8A==
Date: Tue, 10 Jan 2017 01:17:39 +0000
Message-ID: <BC774F321B0EF24DBF41FE7457B2B7862D17E58A@wcosexch01k.cos.is.keysight.com>
References: <BC774F321B0EF24DBF41FE7457B2B7862D17D5A2@wcosexch01k.cos.is.keysight.com>
	<20170105003127.GA87812@daswan-mobl5.amr.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17D8A9@wcosexch01k.cos.is.keysight.com>
	<2244309.YxLLuVC5TP@peggleto-mobl.ger.corp.intel.com>
	<BC774F321B0EF24DBF41FE7457B2B7862D17E285@wcosexch01k.cos.is.keysight.com>
	<CAJTo0LZj8OC-pUtvVGfXJLpHg3Ph5N5Lia25yMY4zsdgrZojQg@mail.gmail.com>
In-Reply-To: <CAJTo0LZj8OC-pUtvVGfXJLpHg3Ph5N5Lia25yMY4zsdgrZojQg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [156.140.13.71]
x-tm-as-product-ver: SMEX-12.0.0.1220-8.000.1202-22814.004
x-tm-as-result: No--20.235200-8.000000-31
x-tm-as-matchedid: 144069-150567-139704-113220-708196-111604-700362-705718-7
	00345-701827-700264-702497-704425-700732-701012-701306-702638-700758-703223
	-709859-700450-111605-700074-303242-700107-705861-188124-703788-702016-7120
	58-121270-705388-701960-700648-106660-111610-700075-700109-188057-701461-70
	0472-702358-702020-188093-148004-148133-42000
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com, yocto@yoctoproject.org
Subject: Re: morty populate_sdk_ext fails for recipes inherit bin_package
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
X-List-Received-Date: Tue, 10 Jan 2017 01:17:53 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BC774F321B0EF24DBF41FE7457B2B7862D17E58Awcosexch01kcosi_"

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17E58Awcosexch01kcosi_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIFJvc3MsIG15IFRPT0xDSEFJTl9UQVJHRVRfVEFTS19hcHBlbmQgPSAgIiBoYWxzIGhh
bHMtZG9jIiBkb2VzIGhhdmUgdGhlIOKAmHNwYWNl4oCZLCBzbyB0aGF0IGlzIG5vdCB0aGUgaXNz
dWUuDQooIHdoZW4gSSBmb3Jnb3QgaXQsIGdvdCBlcnJvcnMgd2hpY2ggaGFkIHRoZSDigJhoYWzi
gJkgb24gdGhlIHByZXZpb3VzIHBhY2thZ2UsIGkuZSBndGVzdGhhbCDigJwsIHNvIGl0IHdhcyBh
cHBhcmVudCBhYm91dCB0aGUgbWlzc2luZyBzcGFjZS4NCg0Kbm8gcmVhbCBpZGVhIGhvdyB0byDi
gJhkZWJ1Z+KAmSB0aGUgcG9wdWxhdGVfc2RrX2V4dCAgICggZXNwZWNpYWxseSBzaW5jZSB0aGUg
c2FtZSByZWNpcGVzIHdvcmsvYnVpbGQgZmluZSB3aXRoIEtyb2dvdGgsIGp1c3QgbW9ydHkgaXMg
aGF2aW5nIGlzc3VlcykNCg0KDQoNCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVy
dG9uQGludGVsLmNvbV0NClNlbnQ6IE1vbmRheSwgSmFudWFyeSAwOSwgMjAxNyA3OjU2IEFNDQpU
bzogQUxMRU4sUklDSEFSRCAoSy1TYW50YUNsYXJhLGV4MSkgPHJpY2hhcmRfYWxsZW5Aa2V5c2ln
aHQuY29tPg0KQ2M6IFBhdWwgRWdnbGV0b24gPHBhdWwuZWdnbGV0b25AbGludXguaW50ZWwuY29t
PjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gbW9ydHkgcG9w
dWxhdGVfc2RrX2V4dCBmYWlscyBmb3IgcmVjaXBlcyBpbmhlcml0IGJpbl9wYWNrYWdlDQoNCg0K
T24gOSBKYW51YXJ5IDIwMTcgYXQgMTU6NTEsIDxyaWNoYXJkX2FsbGVuQGtleXNpZ2h0LmNvbTxt
YWlsdG86cmljaGFyZF9hbGxlbkBrZXlzaWdodC5jb20+PiB3cm90ZToNClRPT0xDSEFJTl9UQVJH
RVRfVEFTS19hcHBlbmQgPSAgImhhbHMgaGFscy1kb2MiDQoNCl9hcHBlbmQgZG9lc24ndCBpbnNl
cnQgd2hpdGVzcGFjZSwgc28geW91IG5lZWQgdG8gZG8gaXQuICBVc2UgVE9PTENIQUlOX1RBUkdF
VF9UQVNLX2FwcGVuZCA9ICAiIGhhbHMgaGFscy1kb2MiIGluIHlvdXIgaW1hZ2UgcmVjaXBlIGlu
c3RlYWQgb2YgY2hhbmdpbmcgaXQgZ2xvYmFsbHkuDQoNClJvc3MNCg==

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17E58Awcosexch01kcosi_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6ZHQ9InV1aWQ6QzJGNDEwMTAtNjVC
My0xMWQxLUEyOUYtMDBBQTAwQzE0ODgyIiB4bWxuczptPSJodHRwOi8vc2NoZW1hcy5taWNyb3Nv
ZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy9UUi9S
RUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVpdj0iQ29udGVudC1UeXBlIiBjb250
ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1ldGEgbmFtZT0iR2VuZXJhdG9yIiBj
b250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQgbWVkaXVtKSI+DQo8c3R5bGU+PCEt
LQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseToiQ2Ft
YnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMgMiA0O30NCkBmb250LWZhY2UN
Cgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1IDUgMiAyIDIgNCAzIDIgNDt9
DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWwsIGxpLk1zb05vcm1hbCwgZGl2
Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250
LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCmE6
bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9y
OmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQphOnZpc2l0ZWQsIHNwYW4uTXNv
SHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOnB1cnBs
ZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnAubXNvbm9ybWFsMCwgbGkubXNvbm9y
bWFsMCwgZGl2Lm1zb25vcm1hbDANCgl7bXNvLXN0eWxlLW5hbWU6bXNvbm9ybWFsOw0KCW1zby1t
YXJnaW4tdG9wLWFsdDphdXRvOw0KCW1hcmdpbi1yaWdodDowaW47DQoJbXNvLW1hcmdpbi1ib3R0
b20tYWx0OmF1dG87DQoJbWFyZ2luLWxlZnQ6MGluOw0KCWZvbnQtc2l6ZToxMi4wcHQ7DQoJZm9u
dC1mYW1pbHk6IlRpbWVzIE5ldyBSb21hbiIsc2VyaWY7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTgNCgl7
bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtcmVwbHk7DQoJY29sb3I6YmxhY2s7fQ0KLk1zb0NocERl
ZmF1bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGli
cmkiLHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGlu
Ow0KCW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJ
e3BhZ2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+
DQo8bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+
PCFbZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4
dD0iZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxh
eW91dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5r
PSJibHVlIiB2bGluaz0icHVycGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBj
bGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2siPlRoYW5rcyBSb3NzLCBt
eSA8L3NwYW4+VE9PTENIQUlOX1RBUkdFVF9UQVNLX2FwcGVuZCA9Jm5ic3A7ICZxdW90OyBoYWxz
IGhhbHMtZG9jJnF1b3Q7IGRvZXMgaGF2ZSB0aGUg4oCYc3BhY2XigJksIHNvIHRoYXQgaXMgbm90
IHRoZSBpc3N1ZS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiggd2hlbiBJ
IGZvcmdvdCBpdCwgZ290IGVycm9ycyB3aGljaCBoYWQgdGhlIOKAmGhhbOKAmSBvbiB0aGUgcHJl
dmlvdXMgcGFja2FnZSwgaS5lIGd0ZXN0aGFsIOKAnCwgc28gaXQgd2FzIGFwcGFyZW50IGFib3V0
IHRoZSBtaXNzaW5nIHNwYWNlLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5ubyByZWFsIGlkZWEg
aG93IHRvIOKAmGRlYnVn4oCZIHRoZSBwb3B1bGF0ZV9zZGtfZXh0Jm5ic3A7Jm5ic3A7ICggZXNw
ZWNpYWxseSBzaW5jZSB0aGUgc2FtZSByZWNpcGVzIHdvcmsvYnVpbGQgZmluZSB3aXRoIEtyb2dv
dGgsIGp1c3QgbW9ydHkgaXMgaGF2aW5nIGlzc3Vlcyk8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PHNwYW4gc3R5bGU9ImNvbG9yOmJsYWNrIj48bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iY29sb3I6YmxhY2siPjxvOnA+Jm5ic3A7
PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIHN0eWxlPSJm
b250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJp
ZiI+RnJvbTo8L3NwYW4+PC9iPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFt
aWx5OiZxdW90O0NhbGlicmkmcXVvdDssc2Fucy1zZXJpZiI+IEJ1cnRvbiwgUm9zcyBbbWFpbHRv
OnJvc3MuYnVydG9uQGludGVsLmNvbV0NCjxicj4NCjxiPlNlbnQ6PC9iPiBNb25kYXksIEphbnVh
cnkgMDksIDIwMTcgNzo1NiBBTTxicj4NCjxiPlRvOjwvYj4gQUxMRU4sUklDSEFSRCAoSy1TYW50
YUNsYXJhLGV4MSkgJmx0O3JpY2hhcmRfYWxsZW5Aa2V5c2lnaHQuY29tJmd0Ozxicj4NCjxiPkNj
OjwvYj4gUGF1bCBFZ2dsZXRvbiAmbHQ7cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20mZ3Q7
OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnPGJyPg0KPGI+U3ViamVjdDo8L2I+IFJlOiBbeW9jdG9d
IG1vcnR5IHBvcHVsYXRlX3Nka19leHQgZmFpbHMgZm9yIHJlY2lwZXMgaW5oZXJpdCBiaW5fcGFj
a2FnZTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZu
YnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiA5IEphbnVhcnkg
MjAxNyBhdCAxNTo1MSwgJmx0OzxhIGhyZWY9Im1haWx0bzpyaWNoYXJkX2FsbGVuQGtleXNpZ2h0
LmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnJpY2hhcmRfYWxsZW5Aa2V5c2lnaHQuY29tPC9hPiZndDsg
d3JvdGU6PG86cD48L286cD48L3A+DQo8YmxvY2txdW90ZSBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9y
ZGVyLWxlZnQ6c29saWQgI0NDQ0NDQyAxLjBwdDtwYWRkaW5nOjBpbiAwaW4gMGluIDYuMHB0O21h
cmdpbi1sZWZ0OjQuOHB0O21hcmdpbi1yaWdodDowaW4iPg0KPGRpdiBpZD0iZ21haWwtOjhqIj4N
CjxwIGNsYXNzPSJNc29Ob3JtYWwiPlRPT0xDSEFJTl9UQVJHRVRfVEFTS19hcHBlbmQgPSZuYnNw
OyAmcXVvdDtoYWxzIGhhbHMtZG9jJnF1b3Q7PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvYmxv
Y2txdW90ZT4NCjwvZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGJyPg0KX2FwcGVuZCBkb2Vz
bid0IGluc2VydCB3aGl0ZXNwYWNlLCBzbyB5b3UgbmVlZCB0byBkbyBpdC4mbmJzcDsgVXNlIFRP
T0xDSEFJTl9UQVJHRVRfVEFTS19hcHBlbmQgPSZuYnNwOyAmcXVvdDsgaGFscyBoYWxzLWRvYyZx
dW90OyBpbiB5b3VyIGltYWdlIHJlY2lwZSBpbnN0ZWFkIG9mIGNoYW5naW5nIGl0IGdsb2JhbGx5
LjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86
cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5S
b3NzPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0
bWw+DQo=

--_000_BC774F321B0EF24DBF41FE7457B2B7862D17E58Awcosexch01kcosi_--
