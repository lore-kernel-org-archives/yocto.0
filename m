Return-Path: <Archana.c727@toshiba-tsip.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52F94E00BAF; Fri, 24 May 2019 06:42:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from peak.toshiba-tesi.com (unknown [202.56.254.199])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15CBAE00B5F
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 06:42:10 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2CaAAC68+dc/xlVdAplHgEGBwaBUQkLA?=
	=?us-ascii?q?YJoEYEsCoQJmkyTJBSBZwkBAQEBAQEBAQEnEAEBhFmCSjQJDgEDAQEFAQEBAQS?=
	=?us-ascii?q?BCQELhXQRVwEVDQImAgQwFRIEgzamVIEmgS8aAoUrgymBQAaBDCgBgWCMCIhog?=
	=?us-ascii?q?0eCWASBLQEBAYxVjQONPgEGAQEBgg8DW4VVjHqMbwOJT4xol2SCD3BQgR6BTos?=
	=?us-ascii?q?ThT9yjSmBIQEB?=
X-IPAS-Result: =?us-ascii?q?A2CaAAC68+dc/xlVdAplHgEGBwaBUQkLAYJoEYEsCoQJmky?=
	=?us-ascii?q?TJBSBZwkBAQEBAQEBAQEnEAEBhFmCSjQJDgEDAQEFAQEBAQSBCQELhXQRVwEVD?=
	=?us-ascii?q?QImAgQwFRIEgzamVIEmgS8aAoUrgymBQAaBDCgBgWCMCIhog0eCWASBLQEBAYx?=
	=?us-ascii?q?VjQONPgEGAQEBgg8DW4VVjHqMbwOJT4xol2SCD3BQgR6BTosThT9yjSmBIQEB?=
X-IronPort-AV: E=Sophos;i="5.60,507,1549909800"; d="scan'208";a="21078796"
Received: from unknown (HELO tosblrmbx04.TOSHIBA-TSIP.COM) ([10.116.85.25])
	by peak.toshiba-tesi.com with ESMTP; 24 May 2019 18:56:07 +0530
Received: from TOSBLRMBX03.TOSHIBA-TSIP.COM ([fe80::2cbe:1e2b:a655:7224]) by
	tosblrmbx04.TOSHIBA-TSIP.COM ([fe80::2089:5e37:936d:8fb9%18]) with mapi
	id 14.02.0247.003; Fri, 24 May 2019 19:10:01 +0530
From: Archana Polampalli <Archana.c727@toshiba-tsip.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Difference between DEPENDS and BUILD-DEPENDS
Thread-Index: AQHVEjYvPxzbKcK7jEKAOo738+voAw==
Date: Fri, 24 May 2019 13:40:00 +0000
Message-ID: <1558705171.9936.16.camel@toshiba-tsip.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.28.80.64]
MIME-Version: 1.0
X-Mailman-Approved-At: Sat, 25 May 2019 06:27:04 -0700
Subject: Difference between DEPENDS and BUILD-DEPENDS
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
X-List-Received-Date: Fri, 24 May 2019 13:42:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <EDAE384087641645B6A45F498DA86BDB@TOSHIBA-TSIP.COM>
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQppIGFtIHdvcmtpbmcgb24gb25lIG9wZW4gc291cmNlIHByb2plY3QsZm9yIHRo
aXMgaSBoYXZlIHRvIGFkZCBzb21lDQpkZWJpYW4gcGFja2FnZXMgYXMgeW9jdG8gcmVjaXBpZXMu
DQppIGFtIHRyeWluZyB0byBhZGQgImF1ZGl0IiByZWNpcGUsc28gaWFtIHRyeWluZyB0byB1bmRl
cnN0YW5kIHRoZSBhdWRpdA0KZGViaWFuIHBhY2thZ2UgLGkgZ290IHN0cnVjayBiZXR3ZWVuICJk
ZXBlbmRzIiBhbmQgImJ1aWxkLWRlcGVuZHMiDQoNCmF1ZGl0IGNvbnRhaW5ncyBtYW55IHBhY2th
Z2VzIGxpa2XCoA0KYXVkaXRkDQpsaWJhdWRpdC1jb21tb24NCmxpYmF1ZGl0LWRldg0KbGliYXVw
YXJzZTAgwqBldGMuLi4NCg0KaWYgaSBjbGljayBvbiBpbmRpdmlkdWFsIHBhY2thZ2VzIGluIGh0
dHBzOi8vcGFja2FnZXMuZGViaWFuLm9yZ8KgaXQgaXMNCmdpdmluZyAiZGVwZW5kcyIgbGlzdCxp
ZiBpIGNsaWNrIG9uIHNvdXJjZSBpdCBpcyBnaXZpbmcgImJ1aWxkLQ0KZGVwZW5kcyIuDQoNCm5v
dyBteSBjb25mdXNpb24gaXMgd2hhdCBpIGhhdmUgdG8gcHJlZmVyIGVpdGhlciAiZGVwZW5kcyIg
b3IgImJ1aWxkLQ0KZGVwZW5kcyIgZm9yIHdyaXRpbmcgImF1ZGl0IiByZWNpcGUgYW5kIHdoYXQg
aXMgdGhlIGRpZmZlcmVuY2UgYmV0d2Vlbg0KdGhlcyAiZGVwZW5kIiBhbmQgImJ1aWxkLWRlcGVu
ZHMiLg0KDQpUaGFua3MgaW4gYWR2YW5jZS4NCg0KDQpSZWdhcmRzDQpBcmNoYW5hClRoZSBpbmZv
cm1hdGlvbiBjb250YWluZWQgaW4gdGhpcyBlLW1haWwgbWVzc2FnZSBhbmQgaW4gYW55DQphdHRh
Y2htZW50cy9hbm5leHVyZS9hcHBlbmRpY2VzIGlzIGNvbmZpZGVudGlhbCB0byB0aGUgDQpyZWNp
cGllbnQgYW5kIG1heSBjb250YWluIHByaXZpbGVnZWQgaW5mb3JtYXRpb24uIA0KSWYgeW91IGFy
ZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIG5vdGlmeSB0aGUNCnNlbmRlciBh
bmQgZGVsZXRlIHRoZSBtZXNzYWdlIGFsb25nIHdpdGggYW55IA0KYXR0YWNobWVudHMvYW5uZXh1
cmUvYXBwZW5kaWNlcy4gWW91IHNob3VsZCBub3QgZGlzY2xvc2UsDQpjb3B5IG9yIG90aGVyd2lz
ZSB1c2UgdGhlIGluZm9ybWF0aW9uIGNvbnRhaW5lZCBpbiB0aGUNCm1lc3NhZ2Ugb3IgYW55IGFu
bmV4dXJlLiBBbnkgdmlld3MgZXhwcmVzc2VkIGluIHRoaXMgZS1tYWlsIA0KYXJlIHRob3NlIG9m
IHRoZSBpbmRpdmlkdWFsIHNlbmRlciBleGNlcHQgd2hlcmUgdGhlIHNlbmRlciANCnNwZWNpZmlj
YWxseSBzdGF0ZXMgdGhlbSB0byBiZSB0aGUgdmlld3Mgb2YgDQpUb3NoaWJhIFNvZnR3YXJlIElu
ZGlhIFB2dC4gTHRkLiAoVFNJUCksQmFuZ2Fsb3JlLg0KDQpBbHRob3VnaCB0aGlzIHRyYW5zbWlz
c2lvbiBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBiZWxpZXZlZCB0byBiZQ0KZnJlZSBvZiBhbnkg
dmlydXMgb3Igb3RoZXIgZGVmZWN0IHRoYXQgbWlnaHQgYWZmZWN0IGFueSBjb21wdXRlciANCnN5
c3RlbSBpbnRvIHdoaWNoIGl0IGlzIHJlY2VpdmVkIGFuZCBvcGVuZWQsIGl0IGlzIHRoZSByZXNw
b25zaWJpbGl0eQ0Kb2YgdGhlIHJlY2lwaWVudCB0byBlbnN1cmUgdGhhdCBpdCBpcyB2aXJ1cyBm
cmVlIGFuZCBubyByZXNwb25zaWJpbGl0eSANCmlzIGFjY2VwdGVkIGJ5IFRvc2hpYmEgRW1iZWRk
ZWQgU29mdHdhcmUgSW5kaWEgUHZ0LiBMdGQsIGZvciBhbnkgbG9zcyBvcg0KZGFtYWdlIGFyaXNp
bmcgaW4gYW55IHdheSBmcm9tIGl0cyB1c2UuCg==


