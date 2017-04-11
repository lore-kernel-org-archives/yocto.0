Return-Path: <c.maier@geze.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E86FCE00AF0; Mon, 10 Apr 2017 23:48:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.28.48.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-relay01-geze.antispameurope.com (mx-relay01.geze.com
	[193.28.48.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDC3FE00A9B
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 23:48:21 -0700 (PDT)
Received: from unknown ([193.28.48.59]) by mx-gate01-geze.antispameurope.com; 
	Tue, 11 Apr 2017 08:48:20 +0200
Received: from mail pickup service by gc49wa60.corp.geze.com with Microsoft
	SMTPSVC; Tue, 11 Apr 2017 08:48:18 +0200
Received: from GCXCH2.corp.geze.com ([172.18.2.22]) by gc49wa60.corp.geze.com
	with Microsoft SMTPSVC(7.0.6002.18264); 
	Tue, 11 Apr 2017 08:48:18 +0200
Received: from GCXDB1.corp.geze.com ([172.18.2.24]) by GCXCH2.corp.geze.com
	([172.18.2.22]) with mapi id 14.03.0279.002;
	Tue, 11 Apr 2017 08:48:17 +0200
From: "Maier, Chris" <C.Maier@geze.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Install rootfs.tar.bz2 to ${D}/home/root/
Thread-Index: AdKusBNU98mWnCtUS3S8/SufrOG3nAD3294w
Date: Tue, 11 Apr 2017 06:48:16 +0000
Message-ID: <2AA7D088591C49498E92D6491C58159334CCF142@gcxdb1.corp.geze.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.18.8.3]
MIME-Version: 1.0
X-OriginalArrivalTime: 11 Apr 2017 06:48:18.0427 (UTC)
	FILETIME=[9A330CB0:01D2B28F]
X-GBS-PROC: bnl0h5zXbNcDn1aVsSovT8yXgKaWNO6cNisL4Dgusco=
X-GRP-TAN: GC49WA60@8A2C3AB6782D46ED97FE1D20BEEF4132
X-cloud-security-sender: c.maier@geze.com
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-gate01-geze with 2A2A91148001
X-cloud-security-connect: unknown[193.28.48.59], TLS=0, IP=193.28.48.59
X-cloud-security: scantime:.4217
Subject: Install rootfs.tar.bz2 to ${D}/home/root/
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
X-List-Received-Date: Tue, 11 Apr 2017 06:48:26 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIA0KDQpJIHdhbnQgdG8gY3JlYXRlIGEgZGVwbG95YWJsZSBTRCBjYXJkIGltYWdlLiBNeSBi
b2FyZCAoYmVhZ2xlYm9uZSBiYXNlZCkgYm9vdHMgZnJvbSBTRCBjYXJkIGFuZCBydW5zIGEgc2Ny
aXB0IHdoaWNoIGNvcGllcyB0aGUgcm9vdGZzLnRhci5iejIgdG8gdGhlIGZsYXNoIG1lbW9yeS4g
DQpTbyBob3cgY2FuIEkgZGVwbG95IGEgY29weSBvZiB0aGUgd2hvbGUgcm9vdGZzIHRvICR7RH0v
aG9tZS9yb290PyANCkEgcm9vdGZzIGluIHRoZSByb290ZnMsIGRvZXMgdGhhdCBtYWtlIHNlbnNl
PyANCg0KQW55IGhlbHAgaXMgYXBwcmVjaWF0ZWQuIA0KDQpDaHJpcw0K

