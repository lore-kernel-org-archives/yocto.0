Return-Path: <joshua.g.lock@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3243E00CCD; Thu, 13 Oct 2016 14:29:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C7C6E00CC7
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 14:29:38 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga105.fm.intel.com with ESMTP; 13 Oct 2016 14:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,489,1473145200"; d="scan'208";a="1064511903"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by orsmga002.jf.intel.com with ESMTP; 13 Oct 2016 14:29:36 -0700
Received: from irsmsx110.ger.corp.intel.com ([169.254.15.155]) by
	IRSMSX103.ger.corp.intel.com ([169.254.3.91]) with mapi id
	14.03.0248.002; Thu, 13 Oct 2016 22:29:36 +0100
From: "Lock, Joshua G" <joshua.g.lock@intel.com>
To: "gmane@reliableembeddedsystems.com" <gmane@reliableembeddedsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-autobuilder][PATCH] PublishArtifacts.py: deal
	only with built toolchains, cp also md5 and manifests
Thread-Index: AQHSIsHmqACyYVYZS0uV3eZnG0pr36Cm23+A
Date: Thu, 13 Oct 2016 21:29:35 +0000
Message-ID: <1476394173.3034.13.camel@intel.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
In-Reply-To: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.252.27.1]
MIME-Version: 1.0
Cc: "robert.berger@reliableembeddedsystems.com"
	<robert.berger@reliableembeddedsystems.com>
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
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
X-List-Received-Date: Thu, 13 Oct 2016 21:29:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <FAD0F91E7538B644A2DA99F7E3E74A77@intel.com>
Content-Transfer-Encoding: base64

Q2FuIHlvdSBoZWxwIG1lIHVuZGVyc3RhbmQgd2h5IHlvdSBuZWVkZWQgdG8gY3JlYXRlIHRoaXMg
cGF0Y2g/DQoNCldlJ3ZlIHJ1biBpbnRvIHNvbWUgaXNzdWVzIHJlY2VudGx5IHdoZXJlIHRvb2xj
aGFpbnMgd2UgZXhwZWN0ZWQgdG8gYmUNCmJ1aWx0IHdlcmVuJ3QgYW5kIHRoZSBQdWJsaXNoQXJ0
aWZhY3RzIGJ1aWxkc3RlcCBmYWlsaW5nIGJlY2F1c2UNCnRoZXkncmUgbWlzc2luZyBpcyB1c2Vm
dWwuIFdpdGggdGhpcyBjaGFuZ2Ugd2UnbGwgbm8gbG9uZ2VyIGdldCB0aGF0LA0KcmlnaHQ/DQoN
ClRoYW5rcywNCg0KSm9zaHVhCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBDb3Jwb3JhdGlvbiAoVUspIExp
bWl0ZWQKUmVnaXN0ZXJlZCBOby4gMTEzNDk0NSAoRW5nbGFuZCkKUmVnaXN0ZXJlZCBPZmZpY2U6
IFBpcGVycyBXYXksIFN3aW5kb24gU04zIDFSSgpWQVQgTm86IDg2MCAyMTczIDQ3CgpUaGlzIGUt
bWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBjb250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlh
bCBmb3IKdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRlbmRlZCByZWNpcGllbnQocykuIEFueSByZXZp
ZXcgb3IgZGlzdHJpYnV0aW9uCmJ5IG90aGVycyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLiBJZiB5
b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQKcmVjaXBpZW50LCBwbGVhc2UgY29udGFjdCB0aGUgc2Vu
ZGVyIGFuZCBkZWxldGUgYWxsIGNvcGllcy4K


