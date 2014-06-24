Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0656DE00509; Tue, 24 Jun 2014 10:16:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.12 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
X-Greylist: delayed 415 seconds by postgrey-1.32 at yocto-www;
	Tue, 24 Jun 2014 10:16:29 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF1CE00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 10:16:29 -0700 (PDT)
Received: from [216.82.249.131:53087] by server-12.bemta-12.messagelabs.com id
	95/98-29721-CC0B9A35; Tue, 24 Jun 2014 17:09:32 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-16.tower-28.messagelabs.com!1403629771!32730500!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 4992 invoked from network); 24 Jun 2014 17:09:32 -0000
Received: from mail.mx4.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-16.tower-28.messagelabs.com with RC4-SHA encrypted SMTP;
	24 Jun 2014 17:09:32 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Tue, 24 Jun 2014 12:09:27 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MTK-SMS-XCH03.digi.com ([fe80::484d:c326:e7f1:a9fd%25]) with mapi id
	14.03.0174.001; Tue, 24 Jun 2014 12:09:30 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: =?euc-kr?B?U6mqcmVuIEhvbG0=?= <sgh@sgh.dk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] File system for alternate partition
Thread-Index: AQHPjtqWRmuyvuyvDkCgHEP3jjXJpZt+9h4A///bqoCAAa6fAA==
Date: Tue, 24 Jun 2014 17:09:29 +0000
Message-ID: <CFCF191E.9615%seth.bollinger@digi.com>
References: <CFCD80D1.95CB%seth.bollinger@digi.com>
	<1786383.3DlYgSqWZF@koontz> <CFCDB10A.95E3%seth.bollinger@digi.com>
In-Reply-To: <CFCDB10A.95E3%seth.bollinger@digi.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [10.10.32.62]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Subject: Re: File system for alternate partition
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
X-List-Received-Date: Tue, 24 Jun 2014 17:16:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="euc-kr"
Content-ID: <F876AC8DFCC7FB4C86C9D653D20E772F@digi.com>
Content-Transfer-Encoding: base64

DQo+SSBndWVzcyBJIGRpZG6p9nQgdGhpbmsgYWJvdXQgdXNpbmcgYSBmdWxsIGltYWdlIGFzIEkg
d291bGQgbmVlZCB0byByZW1vdmUNCj5hIGJ1bmNoIG9mIHN0dWZmLCBidXQgbWF5YmUgdGhhdCBp
cyB0aGUgYmVzdCB3YXkuICBUaGF0IHdheSBJIGNhbiBrZWVwIHRoZQ0KPmZsZXhpYmlsaXR5IG9m
IGRlZmluaW5nIHJlY2lwZXMgdGhhdCB3b3VsZCBiZSBpbnN0YWxsZWQgdG8gbXkgZGF0YQ0KPnBh
cnRpdGlvbiBpbWFnZS4gIEkgd2lsbCBnaXZlIGl0IGEgdHJ5Lg0KDQpTbyBJIGNyZWF0ZWQgYW4g
ZW1wdHkgaW1hZ2Ugd2l0aG91dCBhbnkgcGFja2FnZXMgYmVpbmcgYWRkZWQuICBBcyBJDQpzdXNw
ZWN0ZWQsIHRoZXJloa9zIGNydWZ0IHRoYXQgSSBkb26hr3QgcmVhbGx5IG5lZWQgaW4gdGhlIEZT
LiAgV2hhdKGvcyB0aGUNCmJlc3Qgd2F5IHRvIHJlbW92ZSB0aGVzZSwgcG9zdCBwcm9jZXNzaW5n
Pw0KDQpkYXRhLWltYWdlLWJhc2UvMS4wLXIwL3Jvb3Rmcy8NCqanpqGmoSBldGMNCqaiICAgpqam
oaahIHJjUy5kDQqmp6ahpqEgbGliDQqmoiAgIKampqGmoSBtb2R1bGVzDQqmoiAgICAgICCmpqah
pqEgMy4xMC4xNi1kZXkrZ2YxNjc2NDANCqampqGmoSB2YXINCiAgICCmpqahpqEgbGliDQogICAg
ICAgIKampqGmoSBvcGtnDQoNClRoYW5rcywNCg0KU2V0aA0KDQoNCg0K

