Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E88DDE00B37; Tue, 19 Jan 2016 13:11:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80E7E00AAF
	for <yocto@yoctoproject.org>; Tue, 19 Jan 2016 13:11:32 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2AnBQAjpp5W/xUHmMZeGQEBAQEPAQEBAYJfK4E/BohQsn2BY4YPAhyBKTkTAQEBAQEBAYEKhDQBAQEBAgESERFFBQsCAQgNCAEEAgYdAwICAh8RFAEQAQEEDgUIFwOHZAMKCAGlY4pJjAkNg0wBAQEBAQEBAQIBAQEBAQEBAQEBARV7hT+EdIJOggODFy6BGwWXGgGIPAWDJAGLOYVARIY7h10kAT+ECXKFZgGBBwEBAQ
X-IPAS-Result: A2AnBQAjpp5W/xUHmMZeGQEBAQEPAQEBAYJfK4E/BohQsn2BY4YPAhyBKTkTAQEBAQEBAYEKhDQBAQEBAgESERFFBQsCAQgNCAEEAgYdAwICAh8RFAEQAQEEDgUIFwOHZAMKCAGlY4pJjAkNg0wBAQEBAQEBAQIBAQEBAQEBAQEBARV7hT+EdIJOggODFy6BGwWXGgGIPAWDJAGLOYVARIY7h10kAT+ECXKFZgGBBwEBAQ
X-IronPort-AV: E=Sophos;i="5.22,319,1449550800"; d="scan'208";a="156695479"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	19 Jan 2016 16:11:32 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES256-SHA;
	19 Jan 2016 16:11:26 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Tue, 19 Jan 2016 16:11:25 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] PREFERRED_VERSION for native package
Thread-Index: AdFSuvAjF8AY1tHSR/WPd8DxJrhhfQAGL/NwABBhRwAABeCeQA==
Date: Tue, 19 Jan 2016 21:11:24 +0000
Message-ID: <30C2D590D16A5C46ADFE65219103779853AC8868@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779853AC8364@AZ-US1EXMB03.global.avaya.com>
	<30C2D590D16A5C46ADFE65219103779853AC84D6@AZ-US1EXMB03.global.avaya.com>
	<3F03BD7D-5DD6-413D-A8F7-7ED84E7A491A@gmail.com>
In-Reply-To: <3F03BD7D-5DD6-413D-A8F7-7ED84E7A491A@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PREFERRED_VERSION for native package
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
X-List-Received-Date: Tue, 19 Jan 2016 21:11:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0gDQo+IFNlbnQ6IEph
bnVhcnkgMTksIDIwMTYgMTo1OCBQTQ0KPg0KPiBpdHMgYSBkaXN0cm8gcG9saWN5IGJhc2VkIHVw
b24gbGljZW5zaW5nIGlmIHdlYWsgYXNzaWdubWVudCBpcyB1c2VkIHRoZW4gdGhlIGxpY2Vuc2lu
ZyDCoHdvbuKAmXQgYmUgYWJsZSB0byBlbmZvcmNlIHRoZSBkZWNpc2lvbg0KPiBpZiBzb21lb25l
IG92ZXJyaWRlcyBpdC7CoA0KDQpUaGFua3MsIHRoYXQgbWFrZXMgc2Vuc2UuwqANCk1WDQrCoA0K

