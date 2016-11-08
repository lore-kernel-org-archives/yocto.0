Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 007F4E00724; Tue,  8 Nov 2016 06:09:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_HI,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -7.5 USER_IN_DEF_DKIM_WL From: address is in the default
	DKIM white-list
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.142.95 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from alln-iport-8.cisco.com (alln-iport-8.cisco.com [173.37.142.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6494E00571
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 06:09:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=7396; q=dns/txt; s=iport;
	t=1478614160; x=1479823760;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:mime-version;
	bh=WTn02XV2Zjoryj4upBco57pxRLlwR1eFAa6GKKp1dbs=;
	b=HCvI6nlopL0oXtOI+I18O/u9m06Oy+aBalSQ0WAlq10667mHuDrbJ4k0
	H56paHmAy4svHWQ9CMKMOuzI5K4f9uIGjlMwYpvsN6LYMLlF5Gj4RyK25
	J2ipg778kV1uusbhELnfuQUWTZoFbjfYWLF9QvaIOv91rvUmDcDbGaIoL w=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0BtAQD32yFY/4YNJK1dGgEBAQECAQEBA?=
	=?us-ascii?q?QgBAQEBgnM8AQEBAQEfWH8HjTKXBo85hRqCCCmFewIagW4/FAECAQEBAQEBAWI?=
	=?us-ascii?q?ohGEBAQEDASNWBQsCAQgRAwECKAMCAgIwFAgBCAIEDgWIVAgOsWSCQItKAQEBA?=
	=?us-ascii?q?QEBAQEBAQEBAQEBAQEBAQEBHIY+gX2CWoRoHoJGglwFmi8BhjWKEgqBZIRyiTS?=
	=?us-ascii?q?NMIQFAQ8PN3qDMRyBXXKGLoEMAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,462,1473120000"; 
	d="scan'208,217";a="345718413"
Received: from alln-core-12.cisco.com ([173.36.13.134])
	by alln-iport-8.cisco.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
	08 Nov 2016 14:09:19 +0000
Received: from XCH-RTP-002.cisco.com (xch-rtp-002.cisco.com [64.101.220.142])
	by alln-core-12.cisco.com (8.14.5/8.14.5) with ESMTP id
	uA8E9Igd008757
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Tue, 8 Nov 2016 14:09:18 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-002.cisco.com
	(64.101.220.142) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Tue, 8 Nov 2016 09:09:17 -0500
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Tue, 8 Nov 2016 09:09:17 -0500
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] FW: cmake version 3.0.0 or greater
Thread-Index: AQHSOacLotCC4u2UnUqqAQ2YxxYD1qDO0JSAgACI9wD//3y2AIAAhvyA//+Q94A=
Date: Tue, 8 Nov 2016 14:09:17 +0000
Message-ID: <E096AD43-2EE6-4F8E-823C-269448795819@cisco.com>
References: <3B7E27B6-76D5-460D-BE78-33E49D04BED0@cisco.com>
	<CAJTo0LYtibhhgeSAC27yHzNL8hYu6HpBzKZDvB+k4nv26V+FKw@mail.gmail.com>
	<9C7FDD6C-4BD2-449B-96A1-6540B53D23A8@cisco.com>
	<CAJTo0LYXd=9bDWk_TB_ioZ96GY2gt31AxHR4w47sPdwPSo7VEA@mail.gmail.com>
	<D01FE3D2-B0DF-413E-BED4-DD4CE1AE1E11@cisco.com>
	<CAJTo0LY5xqyow8J5WgeweohaWw82ug9Uh7pOXMHbHnLDKqXXNw@mail.gmail.com>
In-Reply-To: <CAJTo0LY5xqyow8J5WgeweohaWw82ug9Uh7pOXMHbHnLDKqXXNw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.4.69]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: cmake version 3.0.0 or greater
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
X-List-Received-Date: Tue, 08 Nov 2016 14:09:22 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E096AD432EE64F8E823C269448795819ciscocom_"

--_000_E096AD432EE64F8E823C269448795819ciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQo+Pj4gSSBmb3VuZCAgZ2l0Oi8vZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNv
cmU8aHR0cDovL2dpdC5vcGVuZW1iZWRkZWQub3JnL29wZW5lbWJlZGRlZC1jb3JlPiBoYXMgdmVy
c2lvbiAgMy42LngNCj4+PiBTbyBJIHRyaWVkIHRvIHB1bGwgaXQgaW4uIEJ1dCB0aGlzIHZlcnNp
b24gZ290IGEgdHJhY2UgYmFjayB3aGVuIGludGVncmF0ZWQgdG8gb3VyIFNESyBZb2N0byBEaXp6
eS4NCg0KPlRha2UgdGhlIHJlY2lwZXMgZnJvbSBtYXN0ZXIsIGNvcHkgdGhlIGNoYW5nZXMgdG8g
ZGl6enksIHRoZW4gZml4IGFueSBwcm9ibGVtcyBjYXVzZWQgYnkgdGFraW5nIHJlY2lwZXMgZnJv
bSBub3cgYW5kIGFwcGx5aW5nIHRoZW0gdG8gYSB0d28geWVhciBvbGQgcmVsZWFzZS4NCg0KVGhh
bmtzIFJvc3MsDQoNCkkgYW0gdHJ5aW5nIHRvIHRha2UgdGhlIGNtYWtlIHJlY2lwZSBmcm9tIHRo
ZSBtYXN0ZXIgbm93LiBIb3BlIGl0IHdpbGwgd29yay4NCg0KSSB3YXMgaG9waW5nIHRvIHNlZSBp
ZiB0aGVyZSBpcyBhbnkgIGV4aXN0aW5nIDMueCB2ZXJzaW9uIGZvciBEaXp6eS4gT0ssICBsZXQg
c2VlIGhvdyBpdCBnb2VzIHdpdGggdGhlIGxhdGVzdCBmcm9tIHRoZSBtYXN0ZXIuDQoNCuKAlERp
bmgNCg0KRnJvbTogIkJ1cnRvbiwgUm9zcyIgPHJvc3MuYnVydG9uQGludGVsLmNvbTxtYWlsdG86
cm9zcy5idXJ0b25AaW50ZWwuY29tPj4NCkRhdGU6IFR1ZXNkYXksIE5vdmVtYmVyIDgsIDIwMTYg
YXQgNDo0OCBBTQ0KVG86IGRpbmhuIDxkaW5obkBjaXNjby5jb208bWFpbHRvOmRpbmhuQGNpc2Nv
LmNvbT4+DQpDYzogInlvY3RvQHlvY3RvcHJvamVjdC5vcmc8bWFpbHRvOnlvY3RvQHlvY3RvcHJv
amVjdC5vcmc+IiA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzxtYWlsdG86eW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZz4+DQpTdWJqZWN0OiBSZTogW3lvY3RvXSBGVzogY21ha2UgdmVyc2lvbiAzLjAuMCBv
ciBncmVhdGVyDQoNCg0KT24gOCBOb3ZlbWJlciAyMDE2IGF0IDEyOjQzLCBEaW5oIE5ndXllbiAo
ZGluaG4pIDxkaW5obkBjaXNjby5jb208bWFpbHRvOmRpbmhuQGNpc2NvLmNvbT4+IHdyb3RlOg0K
UmlnaHQsIGFuZCBJIGFtIHRyeWluZyB0byB1cGdyYWRlIHRvIDN4IHZlcnNpb24uICBXb3VsZCB5
b3UgcGxlYXNlIHRlbGwgbWUgd2hpY2ggY21ha2UgcGF0Y2ggb3IgcmVjaXBlICB0aGF0IEkgY2Fu
IHVzZSB0byB1cGdyYWRlIHRvIDMueCB2ZXJzaW9uIGZvciBEaXp6eT8NCg0KV2hhdCB5b3Ugc2Fp
ZDoNCg0KPiBJIGZvdW5kICBnaXQ6Ly9naXQub3BlbmVtYmVkZGVkLm9yZy9vcGVuZW1iZWRkZWQt
Y29yZTxodHRwOi8vZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmU+IGhhcyB2
ZXJzaW9uICAzLjYueA0KPiBTbyBJIHRyaWVkIHRvIHB1bGwgaXQgaW4uIEJ1dCB0aGlzIHZlcnNp
b24gZ290IGEgdHJhY2UgYmFjayB3aGVuIGludGVncmF0ZWQgdG8gb3VyIFNESyBZb2N0byBEaXp6
eS4NCg0KVGFrZSB0aGUgcmVjaXBlcyBmcm9tIG1hc3RlciwgY29weSB0aGUgY2hhbmdlcyB0byBk
aXp6eSwgdGhlbiBmaXggYW55IHByb2JsZW1zIGNhdXNlZCBieSB0YWtpbmcgcmVjaXBlcyBmcm9t
IG5vdyBhbmQgYXBwbHlpbmcgdGhlbSB0byBhIHR3byB5ZWFyIG9sZCByZWxlYXNlLg0KDQpSb3Nz
DQo=

--_000_E096AD432EE64F8E823C269448795819ciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <C70458418D56A9419BA79439A2DD3D51@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgY29sb3I6IHJnYigwLCAwLCAwKTsgZm9udC1zaXplOiAx
NHB4OyBmb250LWZhbWlseTogQ2FsaWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdj4NCjxkaXY+DQo8
ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj4mZ3Q7Jmd0OyZndDsgSSBmb3VuZCAmbmJzcDtnaXQ6Ly88
YSBocmVmPSJodHRwOi8vZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUiPmdp
dC5vcGVuZW1iZWRkZWQub3JnL29wZW5lbWJlZGRlZC1jb3JlPC9hPiZuYnNwO2hhcyB2ZXJzaW9u
ICZuYnNwOzMuNi54Jm5ic3A7PGJyPg0KJmd0OyZndDsmZ3Q7IFNvIEkgdHJpZWQgdG8gcHVsbCBp
dCBpbi4gQnV0IHRoaXMgdmVyc2lvbiBnb3QgYSB0cmFjZSBiYWNrIHdoZW4gaW50ZWdyYXRlZCB0
byBvdXIgU0RLIFlvY3RvIERpenp5Ljxicj4NCjxicj4NCjxkaXY+Jmd0O1Rha2UgdGhlIHJlY2lw
ZXMgZnJvbSBtYXN0ZXIsIGNvcHkgdGhlIGNoYW5nZXMgdG8gZGl6enksIHRoZW4gZml4IGFueSBw
cm9ibGVtcyBjYXVzZWQgYnkgdGFraW5nIHJlY2lwZXMgZnJvbSBub3cgYW5kIGFwcGx5aW5nIHRo
ZW0gdG8gYSB0d28geWVhciBvbGQgcmVsZWFzZS48L2Rpdj4NCjwvZGl2Pg0KPGRpdj48YnI+DQo8
L2Rpdj4NCjxkaXY+VGhhbmtzIFJvc3MsPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5J
IGFtIHRyeWluZyB0byB0YWtlIHRoZSBjbWFrZSByZWNpcGUgZnJvbSB0aGUgbWFzdGVyIG5vdy4g
SG9wZSBpdCB3aWxsIHdvcmsuJm5ic3A7PC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5J
IHdhcyBob3BpbmcgdG8gc2VlIGlmIHRoZXJlIGlzIGFueSAmbmJzcDtleGlzdGluZyAzLnggdmVy
c2lvbiBmb3IgRGl6enkuIE9LLCAmbmJzcDtsZXQgc2VlIGhvdyBpdCBnb2VzIHdpdGggdGhlIGxh
dGVzdCBmcm9tIHRoZSBtYXN0ZXIuPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj7igJRE
aW5oPC9kaXY+DQo8ZGl2Pg0KPGRpdiBpZD0iTUFDX09VVExPT0tfU0lHTkFUVVJFIj48L2Rpdj4N
CjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8c3BhbiBpZD0iT0xL
X1NSQ19CT0RZX1NFQ1RJT04iPg0KPGRpdiBzdHlsZT0iZm9udC1mYW1pbHk6Q2FsaWJyaTsgZm9u
dC1zaXplOjEycHQ7IHRleHQtYWxpZ246bGVmdDsgY29sb3I6YmxhY2s7IEJPUkRFUi1CT1RUT006
IG1lZGl1bSBub25lOyBCT1JERVItTEVGVDogbWVkaXVtIG5vbmU7IFBBRERJTkctQk9UVE9NOiAw
aW47IFBBRERJTkctTEVGVDogMGluOyBQQURESU5HLVJJR0hUOiAwaW47IEJPUkRFUi1UT1A6ICNi
NWM0ZGYgMXB0IHNvbGlkOyBCT1JERVItUklHSFQ6IG1lZGl1bSBub25lOyBQQURESU5HLVRPUDog
M3B0Ij4NCjxzcGFuIHN0eWxlPSJmb250LXdlaWdodDpib2xkIj5Gcm9tOiA8L3NwYW4+JnF1b3Q7
QnVydG9uLCBSb3NzJnF1b3Q7ICZsdDs8YSBocmVmPSJtYWlsdG86cm9zcy5idXJ0b25AaW50ZWwu
Y29tIj5yb3NzLmJ1cnRvbkBpbnRlbC5jb208L2E+Jmd0Ozxicj4NCjxzcGFuIHN0eWxlPSJmb250
LXdlaWdodDpib2xkIj5EYXRlOiA8L3NwYW4+VHVlc2RheSwgTm92ZW1iZXIgOCwgMjAxNiBhdCA0
OjQ4IEFNPGJyPg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OmJvbGQiPlRvOiA8L3NwYW4+ZGlu
aG4gJmx0OzxhIGhyZWY9Im1haWx0bzpkaW5obkBjaXNjby5jb20iPmRpbmhuQGNpc2NvLmNvbTwv
YT4mZ3Q7PGJyPg0KPHNwYW4gc3R5bGU9ImZvbnQtd2VpZ2h0OmJvbGQiPkNjOiA8L3NwYW4+JnF1
b3Q7PGEgaHJlZj0ibWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmciPnlvY3RvQHlvY3RvcHJv
amVjdC5vcmc8L2E+JnF1b3Q7ICZsdDs8YSBocmVmPSJtYWlsdG86eW9jdG9AeW9jdG9wcm9qZWN0
Lm9yZyI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT4mZ3Q7PGJyPg0KPHNwYW4gc3R5bGU9ImZv
bnQtd2VpZ2h0OmJvbGQiPlN1YmplY3Q6IDwvc3Bhbj5SZTogW3lvY3RvXSBGVzogY21ha2UgdmVy
c2lvbiAzLjAuMCBvciBncmVhdGVyPGJyPg0KPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPHNw
YW4gc3R5bGU9Im1zby1ib29rbWFyazpfTWFpbE9yaWdpbmFsQm9keSI+DQo8ZGl2Pg0KPGRpdj4N
CjxkaXYgZGlyPSJsdHIiPg0KPGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiPjxicj4NCjxkaXYgY2xh
c3M9ImdtYWlsX3F1b3RlIj5PbiA4IE5vdmVtYmVyIDIwMTYgYXQgMTI6NDMsIERpbmggTmd1eWVu
IChkaW5obikgPHNwYW4gZGlyPSJsdHIiPg0KJmx0OzxhIGhyZWY9Im1haWx0bzpkaW5obkBjaXNj
by5jb20iIHRhcmdldD0iX2JsYW5rIj5kaW5obkBjaXNjby5jb208L2E+Jmd0Ozwvc3Bhbj4gd3Jv
dGU6PGJyPg0KPGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHlsZT0ibWFyZ2luOjBw
eCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0LXdpZHRoOjFweDtib3JkZXItbGVmdC1jb2xvcjpy
Z2IoMjA0LDIwNCwyMDQpO2JvcmRlci1sZWZ0LXN0eWxlOnNvbGlkO3BhZGRpbmctbGVmdDoxZXgi
Pg0KPGRpdj5SaWdodCwgYW5kJm5ic3A7SSBhbSB0cnlpbmcgdG8gdXBncmFkZSB0byAzeCB2ZXJz
aW9uLiZuYnNwOyBXb3VsZCB5b3UgcGxlYXNlIHRlbGwgbWUgd2hpY2ggY21ha2UgcGF0Y2ggb3Ig
cmVjaXBlICZuYnNwO3RoYXQgSSBjYW4gdXNlIHRvIHVwZ3JhZGUgdG8gMy54IHZlcnNpb24gZm9y
IERpenp5PzwvZGl2Pg0KPGRpdj48L2Rpdj4NCjwvYmxvY2txdW90ZT4NCjwvZGl2Pg0KPGJyPg0K
V2hhdCB5b3Ugc2FpZDo8L2Rpdj4NCjxicj4NCiZndDsgSSBmb3VuZCAmbmJzcDtnaXQ6Ly88YSBo
cmVmPSJodHRwOi8vZ2l0Lm9wZW5lbWJlZGRlZC5vcmcvb3BlbmVtYmVkZGVkLWNvcmUiPmdpdC5v
cGVuZW1iZWRkZWQub3JnL29wZW5lbWJlZGRlZC1jb3JlPC9hPiBoYXMgdmVyc2lvbiAmbmJzcDsz
LjYueA0KPGJyPg0KJmd0OyBTbyBJIHRyaWVkIHRvIHB1bGwgaXQgaW4uIEJ1dCB0aGlzIHZlcnNp
b24gZ290IGEgdHJhY2UgYmFjayB3aGVuIGludGVncmF0ZWQgdG8gb3VyIFNESyBZb2N0byBEaXp6
eS48YnI+DQo8YnI+DQo8ZGl2PlRha2UgdGhlIHJlY2lwZXMgZnJvbSBtYXN0ZXIsIGNvcHkgdGhl
IGNoYW5nZXMgdG8gZGl6enksIHRoZW4gZml4IGFueSBwcm9ibGVtcyBjYXVzZWQgYnkgdGFraW5n
IHJlY2lwZXMgZnJvbSBub3cgYW5kIGFwcGx5aW5nIHRoZW0gdG8gYSB0d28geWVhciBvbGQgcmVs
ZWFzZS48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8ZGl2PlJvc3M8L2Rpdj4NCjwvZGl2Pg0K
PC9kaXY+DQo8L2Rpdj4NCjwvc3Bhbj48L3NwYW4+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_E096AD432EE64F8E823C269448795819ciscocom_--
