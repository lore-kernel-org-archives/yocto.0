Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D50EE00718; Thu, 26 Feb 2015 05:41:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 826B7E00546
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 05:41:31 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="58429856"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 26 Feb 2015 21:37:46 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t1QDeWXa031993
	for <yocto@yoctoproject.org>; Thu, 26 Feb 2015 21:40:32 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD02.g08.fujitsu.local ([10.167.33.83]) with mapi id
	14.03.0181.006; Thu, 26 Feb 2015 21:41:23 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Question] How to walkaround this build warning
Thread-Index: AdBRydF/DqsNAhq+QViRFqAccUHTvg==
Date: Thu, 26 Feb 2015 13:41:22 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CC73DF4A22@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Subject: [Question] How to walkaround this build warning
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
X-List-Received-Date: Thu, 26 Feb 2015 13:41:34 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkgZm9sa3MNCg0KSSBidWlsdCBteSBpbWFnZSBhbmQgZ290IHRoZSBmb2xsb3dpbmcgd2Fybmlu
ZyBtZXNzYWdlIGluIGRvX3Jvb3Rmcy4NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCk91dHB1dCBmcm9tIGdkay1w
aXhidWYtbG9hZGVyLXBuZy0yLjMwLjgtcjBAY29yZTJfNjQ6DQpzZWQ6IHdhcm5pbmc6IGZhaWxl
ZCB0byBnZXQgc2VjdXJpdHkgY29udGV4dCBvZiAveW9jdG8vYnVpbGQveDg2XzY0L3RtcC93b3Jr
L3h4eHgvaW50ZXJjZXB0X3NjcmlwdHMvdXBkYXRlX3BpeGJ1Zl9jYWNoZTogTm8gZGF0YSBhdmFp
bGFibGUNCk91dHB1dCBmcm9tIGdkay1waXhidWYtbG9hZGVyLWdpZi0yLjMwLjgtcjBAY29yZTJf
NjQ6DQpzZWQ6IHdhcm5pbmc6IGZhaWxlZCB0byBnZXQgc2VjdXJpdHkgY29udGV4dCBvZiAveW9j
dG8vYnVpbGQveDg2XzY0L3RtcC93b3JrL3h4eHgvaW50ZXJjZXB0X3NjcmlwdHMgL3VwZGF0ZV9w
aXhidWZfY2FjaGU6IE5vIGRhdGEgYXZhaWxhYmxlDQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCk15IHBva3kg
aXMgMS43LjEgYXMgYmVsb3cNCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCkRJU1RSTyA9ICJwb2t5Ig0KRElTVFJP
X05BTUUgPSAiUG9reSAoWW9jdG8gUHJvamVjdCBSZWZlcmVuY2UgRGlzdHJvKSINCkRJU1RST19W
RVJTSU9OID0gIjEuNy4xIg0KRElTVFJPX0NPREVOQU1FID0gImRpenp5Ig0KLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
DQoNCkFueSBzdWdnZXN0aW9uLCB0aGFua3MuDQoNCkNoZWVycw0KIEJpYW4NCg==

