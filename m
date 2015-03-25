Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A2C8E008EC; Wed, 25 Mar 2015 07:48:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFDCCE008CE
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 07:48:37 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AngFADPKElWHCzIm/2dsb2JhbABcgmQigSwEgw7HdAIcgThMAQEBAQEBfYQUAQEBAQIBEhERQAUFCwIBCA0IAQQCBh0DAgICMBQBEAEBBA4FCBqIBQgBpC2KTJoiAQEBAQEBAQMBAQEBAQEBAQEBAReBIYoAhEUxB4JoL4EWBZBQkQiEHIh3IoNub4FEfwEBAQ
X-IronPort-AV: E=Sophos;i="5.11,465,1422939600"; d="scan'208";a="96206221"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	25 Mar 2015 10:48:35 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC02.global.avaya.com) ([135.11.85.13])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	25 Mar 2015 10:48:35 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC02.global.avaya.com ([::1]) with mapi id 14.03.0174.001;
	Wed, 25 Mar 2015 10:48:34 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] populate_sysroot and sstate question
Thread-Index: AdBmf347nCMmxSZUS4q3p2qvUDMa3gAntgqAAAf2POD//8w9AIAAMzmA
Date: Wed, 25 Mar 2015 14:48:33 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798538ED629@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798538ED24E@AZ-US1EXMB03.global.avaya.com>
	<1427288919.14020.41.camel@linuxfoundation.org>
	<30C2D590D16A5C46ADFE652191037798538ED580@AZ-US1EXMB03.global.avaya.com>
	<1427291482.14020.42.camel@linuxfoundation.org>
In-Reply-To: <1427291482.14020.42.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sysroot and sstate question
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
X-List-Received-Date: Wed, 25 Mar 2015 14:48:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRh
dGlvbi5vcmddDQo+IFNlbnQ6IE1hcmNoIDI1LCAyMDE1IDk6NTEgQU0NCj4gDQo+IEp1c3QgZGVm
aW5lIHRoZSBlbXB0eSBzeXNyb290X3N0YWdlX2RpcnMsIG5vdCBwb3B1bGF0ZV9zeXNyb290LiBU
aGUNCj4gc3RhZ2VfZGlycyBmdW5jdGlvbiBoYW5kbGVzIGNvcHlpbmcgZmlsZXMgc28gaWYgaXRz
IGVtcHR5LCBubyBmaWxlcyB3aWxsIGJlDQo+IGNvcGllZCBpbi4NCj4gDQoNClRoYW5rcywgUmlj
aGFyZCwgd29ya3MgZmluZSENCk1WDQo=

