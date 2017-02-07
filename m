Return-Path: <donaldx.wilde@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D01EE008D0; Tue,  7 Feb 2017 09:49:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2425E006C6
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 09:49:00 -0800 (PST)
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga101.jf.intel.com with ESMTP; 07 Feb 2017 09:48:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.33,346,1477983600"; d="scan'208,217";a="62937959"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
	by fmsmga006.fm.intel.com with ESMTP; 07 Feb 2017 09:48:59 -0800
Received: from fmsmsx106.amr.corp.intel.com ([169.254.5.63]) by
	fmsmsx104.amr.corp.intel.com ([169.254.3.29]) with mapi id
	14.03.0248.002; Tue, 7 Feb 2017 09:48:59 -0800
From: "Wilde, DonaldX" <donaldx.wilde@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Installing iperf3 causes strange image corruption
Thread-Index: AdJ8xzXqXI6BrB6TQ+qOEs+rjz9rxgE5EGCAABCFbxD//35ogIAAhXAw
Date: Tue, 7 Feb 2017 17:48:58 +0000
Message-ID: <6CE91E52E49AA047A2349BA2FF8E4BCA1546B2F7@FMSMSX106.amr.corp.intel.com>
References: <6CE91E52E49AA047A2349BA2FF8E4BCA1546AA31@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LZ6PsPyW1ahJqikBucqFyhvRz_tXZa=2+R5NjiTu9CMvg@mail.gmail.com>
	<6CE91E52E49AA047A2349BA2FF8E4BCA1546B2CC@FMSMSX106.amr.corp.intel.com>
	<CAJTo0La=7jGV0inVF6P+XtqJy-qdjS-yHvh-Cb-KnJwRO-Y8zA@mail.gmail.com>
In-Reply-To: <CAJTo0La=7jGV0inVF6P+XtqJy-qdjS-yHvh-Cb-KnJwRO-Y8zA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.107]
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 07 Feb 2017 11:56:06 -0800
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing iperf3 causes strange image corruption
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
X-List-Received-Date: Tue, 07 Feb 2017 17:49:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546B2F7FMSMSX106amrcor_"

--_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546B2F7FMSMSX106amrcor_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QXMgaXQgaGFwcGVucywgSSBsZWFybmVkIHRvIGdlbmVyYXRlIGEgc3RhdGljYWxseSBsaW5rZWQg
YmluYXJ5IHRoYXQgSSBjb3VsZCBsb2FkIGludG8gTlZSQU0gb24gb3VyIGJvYXJkIHNvIEkgY291
bGQgbW92ZSBmb3J3YXJkIGFuZCBhY2NvbXBsaXNoIG15IHdvcmssIGJ1dCBJIHdpbGwgdGFrZSB5
b3VyIGFkdmljZSBhbmQgSSBiZWxpZXZlIHlvdeKAmXZlIHRvbGQgbWUgZW5vdWdoIHRoYXQgSSBj
YW4gbGVhcm4gdG8gZG8gd2hhdCB5b3Ugc2F5IHRvIGRvIGZvciB0aGUgZnV0dXJlIHdvcmsgdGhh
dCBJIGRvLiBPbmNlIGl0IHdvcmtzIEnigJlsbCBzcHJlYWQgdGhlIGtub3dsZWRnZSBpbiBDSEQu
DQoNCkZyb206IEJ1cnRvbiwgUm9zcyBbbWFpbHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NClNl
bnQ6IFR1ZXNkYXksIEZlYnJ1YXJ5IDcsIDIwMTcgMTA6NDQgQU0NClRvOiBXaWxkZSwgRG9uYWxk
WCA8ZG9uYWxkeC53aWxkZUBpbnRlbC5jb20+DQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0K
U3ViamVjdDogUmU6IFt5b2N0b10gSW5zdGFsbGluZyBpcGVyZjMgY2F1c2VzIHN0cmFuZ2UgaW1h
Z2UgY29ycnVwdGlvbg0KDQoNCk9uIDcgRmVicnVhcnkgMjAxNyBhdCAxNzo0MiwgV2lsZGUsIERv
bmFsZFggPGRvbmFsZHgud2lsZGVAaW50ZWwuY29tPG1haWx0bzpkb25hbGR4LndpbGRlQGludGVs
LmNvbT4+IHdyb3RlOg0KTXkgYmFkLCBSb3NzLiBJIG1lYW50IElNQUdFX0lOU1RBTEwuIE11c3Qg
aGF2ZSBiZWVuIGxleGR5c2ljIHRoZSBvdGhlciBkYXkuIOKYug0KDQpJbiB0aGF0IGNhc2UgbXkg
Z3Vlc3Mgd2FzIHJpZ2h0OiBkb24ndCArPSBpdCBmcm9tIHlvdXIgbG9jYWwuY29uZiBhcyB5b3Un
bGwgd2lwZSB0aGUgZGVmYXVsdCB2YWx1ZSBhd2F5LiAgVXNlIF9hcHBlbmQgKGFuZCByZW1lbWJl
ciB0aGUgbGVhZGluZyB3aGl0ZXNwYWNlIGFzIGFwcGVuZCBkb2Vzbid0IGFkZCBpdCBmb3IgeW91
KS4NCg0KUm9zcw0K

--_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546B2F7FMSMSX106amrcor_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
V2luZ2RpbmdzOw0KCXBhbm9zZS0xOjUgMCAwIDAgMCAwIDAgMCAwIDA7fQ0KQGZvbnQtZmFjZQ0K
CXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2IDMg
MiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToyIDE1
IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0
b206LjAwMDFwdDsNCglmb250LXNpemU6MTIuMHB0Ow0KCWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcg
Um9tYW4iLHNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXBy
aW9yaXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQph
OnZpc2l0ZWQsIHNwYW4uTXNvSHlwZXJsaW5rRm9sbG93ZWQNCgl7bXNvLXN0eWxlLXByaW9yaXR5
Ojk5Ow0KCWNvbG9yOnB1cnBsZTsNCgl0ZXh0LWRlY29yYXRpb246dW5kZXJsaW5lO30NCnNwYW4u
RW1haWxTdHlsZTE3DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFt
aWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmOw0KCWNvbG9yOiMxRjQ5N0Q7fQ0KLk1zb0NocERlZmF1
bHQNCgl7bXNvLXN0eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1mYW1pbHk6IkNhbGlicmki
LHNhbnMtc2VyaWY7fQ0KQHBhZ2UgV29yZFNlY3Rpb24xDQoJe3NpemU6OC41aW4gMTEuMGluOw0K
CW1hcmdpbjoxLjBpbiAxLjBpbiAxLjBpbiAxLjBpbjt9DQpkaXYuV29yZFNlY3Rpb24xDQoJe3Bh
Z2U6V29yZFNlY3Rpb24xO30NCi0tPjwvc3R5bGU+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8
bzpzaGFwZWRlZmF1bHRzIHY6ZXh0PSJlZGl0IiBzcGlkbWF4PSIxMDI2IiAvPg0KPC94bWw+PCFb
ZW5kaWZdLS0+PCEtLVtpZiBndGUgbXNvIDldPjx4bWw+DQo8bzpzaGFwZWxheW91dCB2OmV4dD0i
ZWRpdCI+DQo8bzppZG1hcCB2OmV4dD0iZWRpdCIgZGF0YT0iMSIgLz4NCjwvbzpzaGFwZWxheW91
dD48L3htbD48IVtlbmRpZl0tLT4NCjwvaGVhZD4NCjxib2R5IGxhbmc9IkVOLVVTIiBsaW5rPSJi
bHVlIiB2bGluaz0icHVycGxlIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWlseTom
cXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RCI+QXMgaXQgaGFwcGVu
cywgSSBsZWFybmVkIHRvIGdlbmVyYXRlIGEgc3RhdGljYWxseSBsaW5rZWQgYmluYXJ5IHRoYXQg
SSBjb3VsZCBsb2FkIGludG8gTlZSQU0gb24gb3VyIGJvYXJkIHNvIEkgY291bGQgbW92ZSBmb3J3
YXJkIGFuZCBhY2NvbXBsaXNoIG15IHdvcmssIGJ1dA0KIEkgd2lsbCB0YWtlIHlvdXIgYWR2aWNl
IGFuZCBJIGJlbGlldmUgeW914oCZdmUgdG9sZCBtZSBlbm91Z2ggdGhhdCBJIGNhbiBsZWFybiB0
byBkbyB3aGF0IHlvdSBzYXkgdG8gZG8gZm9yIHRoZSBmdXR1cmUgd29yayB0aGF0IEkgZG8uIE9u
Y2UgaXQgd29ya3MgSeKAmWxsIHNwcmVhZCB0aGUga25vd2xlZGdlIGluIENIRC48bzpwPjwvbzpw
Pjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0iZm9udC1zaXpl
OjExLjBwdDtmb250LWZhbWlseTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6
IzFGNDk3RCI+PG86cD4mbmJzcDs8L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PGI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2Fs
aWJyaSZxdW90OyxzYW5zLXNlcmlmIj5Gcm9tOjwvc3Bhbj48L2I+PHNwYW4gc3R5bGU9ImZvbnQt
c2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2FsaWJyaSZxdW90OyxzYW5zLXNlcmlmIj4g
QnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwuY29tXQ0KPGJyPg0KPGI+U2Vu
dDo8L2I+IFR1ZXNkYXksIEZlYnJ1YXJ5IDcsIDIwMTcgMTA6NDQgQU08YnI+DQo8Yj5Ubzo8L2I+
IFdpbGRlLCBEb25hbGRYICZsdDtkb25hbGR4LndpbGRlQGludGVsLmNvbSZndDs8YnI+DQo8Yj5D
Yzo8L2I+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0OjwvYj4gUmU6IFt5
b2N0b10gSW5zdGFsbGluZyBpcGVyZjMgY2F1c2VzIHN0cmFuZ2UgaW1hZ2UgY29ycnVwdGlvbjxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPGRpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwv
bzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiA3IEZlYnJ1YXJ5IDIwMTcg
YXQgMTc6NDIsIFdpbGRlLCBEb25hbGRYICZsdDs8YSBocmVmPSJtYWlsdG86ZG9uYWxkeC53aWxk
ZUBpbnRlbC5jb20iIHRhcmdldD0iX2JsYW5rIj5kb25hbGR4LndpbGRlQGludGVsLmNvbTwvYT4m
Z3Q7IHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPGJsb2NrcXVvdGUgc3R5bGU9ImJvcmRlcjpub25l
O2JvcmRlci1sZWZ0OnNvbGlkICNDQ0NDQ0MgMS4wcHQ7cGFkZGluZzowaW4gMGluIDBpbiA2LjBw
dDttYXJnaW4tbGVmdDo0LjhwdDttYXJnaW4tcmlnaHQ6MGluIj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiIHN0eWxlPSJtc28tbWFyZ2luLXRvcC1hbHQ6YXV0bzttc28tbWFyZ2luLWJvdHRvbS1hbHQ6
YXV0byI+PHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2Fs
aWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0QiPk15IGJhZCwgUm9zcy4gSSBtZWFu
dCBJTUFHRV9JTlNUQUxMLiBNdXN0IGhhdmUgYmVlbiBsZXhkeXNpYyB0aGUgb3RoZXIgZGF5Lg0K
PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LXNpemU6MTEuMHB0O2ZvbnQtZmFtaWx5OldpbmdkaW5n
cztjb2xvcjojMUY0OTdEIj5KPC9zcGFuPjxvOnA+PC9vOnA+PC9wPg0KPC9ibG9ja3F1b3RlPg0K
PC9kaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48YnI+DQpJbiB0aGF0IGNhc2UgbXkgZ3Vlc3Mg
d2FzIHJpZ2h0OiBkb24ndCAmIzQzOz0gaXQgZnJvbSB5b3VyIGxvY2FsLmNvbmYgYXMgeW91J2xs
IHdpcGUgdGhlIGRlZmF1bHQgdmFsdWUgYXdheS4mbmJzcDsgVXNlIF9hcHBlbmQgKGFuZCByZW1l
bWJlciB0aGUgbGVhZGluZyB3aGl0ZXNwYWNlIGFzIGFwcGVuZCBkb2Vzbid0IGFkZCBpdCBmb3Ig
eW91KS48bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxvOnA+Jm5ic3A7PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+Um9zczxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0K
PC9odG1sPg0K

--_000_6CE91E52E49AA047A2349BA2FF8E4BCA1546B2F7FMSMSX106amrcor_--
