Return-Path: <leimaohui@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3FC1E0090E; Thu, 22 Jan 2015 18:36:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71FDAE0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 18:36:32 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56504501"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 23 Jan 2015 10:33:02 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0N2Zqv3002145
	for <yocto@yoctoproject.org>; Fri, 23 Jan 2015 10:35:52 +0800
Received: from G08CNEXMBPEKD01.g08.fujitsu.local ([10.167.33.81]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Fri, 23 Jan 2015 10:36:31 +0800
From: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: When I build kernel with toolchain comes from yocto, I met an
	issue
Thread-Index: AdA2tU0l1qhs1koNTQqCHmZax6Ag0Q==
Date: Fri, 23 Jan 2015 02:36:30 +0000
Message-ID: <1B56A49860EB2D45ADE3731B15C959FDAE6AD2@G08CNEXMBPEKD01.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.48]
MIME-Version: 1.0
Subject: When I build kernel with toolchain comes from yocto, I met an issue
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
X-List-Received-Date: Fri, 23 Jan 2015 02:36:38 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQpJIGNvbXBpbGVkIG15IGtlcm5lbCBieSB0b29sY2hhaW4gdGhhdCBzdXBwb3J0
ZWQgYnkgeW9jdG8gMS43Lg0KVGhlIGZvbGxvd2luZyBpcyBteSBzdGVwczoNCjEuIFJ1biB0aGUg
Zm9sbG93aW5nIGNvbW1hbmQgdG8gaW5zdGFsbCB0aGUgdG9vbGNoYWluLg0KICAgIyAuL3Bva3kt
bHNiLWdsaWJjLXg4Nl82NC1tZXRhLXRvb2xjaGFpbi1wcGNlNTAwdjItdG9vbGNoYWluLTEuNy5z
aA0KDQoyLiBTZXQgdXAgdGhlIGNyb3NzLWRldmVsb3BtZW50IGVudmlyb25tZW50Og0KICAgIyAu
IC9vcHQvcG9reS1sc2IvMS43L2Vudmlyb25tZW50LXNldHVwLXBwY2U1MDB2Mi1wb2t5LWxpbnV4
LWdudXNwZQ0KDQpBbmQgdGhlbiwgSSBjb21waWxlZCB0aGUga2VybmVsIHNvdXJjZS4gQnV0IGFu
IGVycm9yIG9jY3VycmVkOg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KcG93ZXJwYy1wb2t5LWxpbnV4
LWdudXNwZS1sZDogdW5yZWNvZ25pemVkIG9wdGlvbiAnLVdsLC1PMScNCnBvd2VycGMtcG9reS1s
aW51eC1nbnVzcGUtbGQ6IHVzZSB0aGUgLS1oZWxwIG9wdGlvbiBmb3IgdXNhZ2UgaW5mb3JtYXRp
b24NCm1ha2VbMV06ICoqKiBbaW5pdC9tb3VudHMub10gRXJyb3IgMQ0KbWFrZTogKioqIFtpbml0
XSBFcnJvciAyDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCkkgaGF2ZSB0byB1bnNldCAiTERGTEFH
UyIgdG8gY29udGludWUgdGhlIGJ1aWxkLg0KDQpJcyB0aGVyZSBzb21lIHdyb25nIHdpdGggbXkg
c3RlcD8gSXMgdGhlcmUgc29tZSBnb29kIG1ldGhvZCB0byBidWlsZCBhIGtlcm5lbCBzb3VyY2Ug
YnkgdGhlIHRvb2xjaGFpbj8NCg0KQ2hlZXJzDQoNCkxlaSBNYW9odWkNCg==

