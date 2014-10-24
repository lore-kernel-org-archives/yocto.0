Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6361AE008B0; Fri, 24 Oct 2014 04:21:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B66E7E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:21:33 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap4FALI1SlTGmAcV/2dsb2JhbABcgmsjgSwEgwLRbQIbcRYBAXyEAgEBAQEDEhERQAUMBAIBCA0EBAEBAwIGHQMCAgIwFAEICAEBBA4FCBqIHwGpSIpRlH8BAQEBAQEBAQEBAQEBAQEBAQEBAQEXgSyOezEHBoJxNoEeBZIFk22OF4N4bIFIgQMBAQE
X-IronPort-AV: E=Sophos;i="5.04,779,1406606400"; d="scan'208";a="77992517"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by de307622-de-outbound.net.avaya.com with ESMTP;
	24 Oct 2014 07:21:04 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	24 Oct 2014 07:21:03 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Fri, 24 Oct 2014 07:21:02 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] autotools-brokensep.bbclass not working
Thread-Index: Ac/vHUgEnrxEqTR1TxenScxnCWD+VwAaSrqAAAKBQgA=
Date: Fri, 24 Oct 2014 11:21:01 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779841147299@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377984114712F@AZ-US1EXMB03.global.avaya.com>
	<1414139495.30118.2.camel@ted>
In-Reply-To: <1414139495.30118.2.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.50]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autotools-brokensep.bbclass not working
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
X-List-Received-Date: Fri, 24 Oct 2014 11:21:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFp
bHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddDQo+IFNlbnQ6IE9jdG9iZXIg
MjQsIDIwMTQgNDozMiBBTQ0KPiBUbzogVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikNCj4gQ2M6IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gYXV0b3Rvb2xzLWJy
b2tlbnNlcC5iYmNsYXNzIG5vdCB3b3JraW5nDQo+IA0KPiA+IHNvIHNlcGVyYXRlYnVpbGRkaXIu
aW5jIGlzIG92ZXJyaWRpbmcgdGhlIHVzZSBvZiBhdXRvdG9vbHMtYnJva2Vuc2VwLg0KPiA+DQo+
ID4gSG93IGNhbiBJIG92ZXJyaWRlIHRoZSBvdmVycmlkZT8gV2hhdOKAmXMgdGhlIHBvaW50IG9m
DQo+ID4gYXV0b3Rvb2xzLWJyb2tlbnNlcD8NCj4gDQo+IFRoZSBicm9rZW5zZXAgY2xhc3Mgd2Fz
IGluIGl0cyBpbml0aWFsIHN0YWdlcyBvZiBkZXZlbG9wbWVudCBpbiAxLjYgc28gdGhlcmUNCj4g
YXJlIHR3byBtZWNoYW5pc21zIGluIGFjdGlvbiBhbmQgZGhjcCBpcyBiZWluZyBjb250cm9sbGVk
IGJ5IHRoYXQgLmluYyBmaWxlDQo+IHdoaWNoIG5vIGxvbmdlciBleGlzdHMgaW4gMS43Lg0KPiAN
Cj4gWW91IGNhbiBwcm9iYWJseSBvdmVycmlkZSBpdCBieSBTZXR0aW5nIFNFUEIgPSAiJHtTfSIg
aW4gdGhlIHJlY2lwZSAob3INCj4gU0VQQl9wbi1kaGNwID0gIiR7U30iIGluIGxvY2FsLmNvbmYp
Lg0KPiANCg0KVGhhbmtzLCBzZXR0aW5nIFNFUEIgaW4gdGhlIHJlY2lwZSBkaWQgdGhlIHRyaWNr
Lg0KDQpNVg0K

