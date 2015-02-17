Return-Path: <biannm@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CF34E0077E; Mon, 16 Feb 2015 21:07:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1909E00777
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 21:07:29 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="57850290"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 17 Feb 2015 13:03:51 +0800
Received: from G08CNEXCHPEKD03.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t1H56bKx021612
	for <yocto@yoctoproject.org>; Tue, 17 Feb 2015 13:06:37 +0800
Received: from G08CNEXMBPEKD02.g08.fujitsu.local ([10.167.33.84]) by
	G08CNEXCHPEKD03.g08.fujitsu.local ([10.167.33.85]) with mapi id
	14.03.0181.006; Tue, 17 Feb 2015 13:07:27 +0800
From: "Bian, Naimeng" <biannm@cn.fujitsu.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [Question] How to walkaround this warning
Thread-Index: AdBKb2wkPch6fWclSgWSuiJeFK0Oow==
Date: Tue, 17 Feb 2015 05:07:28 +0000
Message-ID: <30DC4EDFD798C94083F3E083754532CC73DF308E@G08CNEXMBPEKD02.g08.fujitsu.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.167.226.31]
MIME-Version: 1.0
Subject: [Question] How to walkaround this warning
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
X-List-Received-Date: Tue, 17 Feb 2015 05:07:34 -0000
Content-Language: zh-CN
Content-Type: text/plain; charset="shift_jis"
Content-Transfer-Encoding: base64

SGkgZm9sa3MNCg0KSSBidWlsdCBteSBpbWFnZSBhbmQgZ290IHRoZSBmb2xsb3dpbmcgd2Fybmlu
ZyBtZXNzYWdlIGluIGRvX3Jvb3Rmcy4NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCk91dHB1dCBmcm9tIGJ0cmZz
LXRvb2xzLTMuMTQuMitnaXQwKzI0Y2Y0ZDhjM2UtcjBAY29yZTJfNjQ6DQp3YXJuaW5nOiB1c2Vy
IHRzcyBkb2VzIG5vdCBleGlzdCAtIHVzaW5nIHJvb3QNCndhcm5pbmc6IGdyb3VwIHB1bHNlIGRv
ZXMgbm90IGV4aXN0IC0gdXNpbmcgcm9vdA0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpNeSBwb2t5IGlzIDEu
Ny4xIGFzIGJlbG93DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQpESVNUUk8gPSAicG9reSINCkRJU1RST19OQU1F
ID0gIlBva3kgKFlvY3RvIFByb2plY3QgUmVmZXJlbmNlIERpc3RybykiDQpESVNUUk9fVkVSU0lP
TiA9ICIxLjcuMSINCkRJU1RST19DT0RFTkFNRSA9ICJkaXp6eSINCi0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQpB
bnkgc3VnZ2VzdGlvbiwgdGhhbmtzLg0KDQpDaGVlcnMNCiBCaWFuDQo=

