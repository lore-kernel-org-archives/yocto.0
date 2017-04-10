Return-Path: <c.maier@geze.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26DB7E009AA; Mon, 10 Apr 2017 04:28:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [193.28.48.46 listed in list.dnswl.org]
Received: from mx-relay02-geze.antispameurope.com (mx-relay02.geze.com
	[193.28.48.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41AEAE00546
	for <yocto@yoctoproject.org>; Mon, 10 Apr 2017 04:28:36 -0700 (PDT)
Received: from unknown ([193.28.48.59]) by mx-gate02-geze.antispameurope.com; 
	Mon, 10 Apr 2017 13:28:31 +0200
Received: from mail pickup service by gc49wa60.corp.geze.com with Microsoft
	SMTPSVC; Mon, 10 Apr 2017 13:28:31 +0200
Received: from gcxch1.corp.geze.com ([172.18.2.21]) by gc49wa60.corp.geze.com
	with Microsoft SMTPSVC(7.0.6002.18264); 
	Mon, 10 Apr 2017 13:28:30 +0200
Received: from GCXDB1.corp.geze.com ([172.18.2.24]) by gcxch1.corp.geze.com
	([172.18.2.21]) with mapi id 14.03.0279.002;
	Mon, 10 Apr 2017 13:28:29 +0200
From: "Maier, Chris" <C.Maier@geze.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Install rootfs.tar.bz2 to ${D}/home/root/
Thread-Index: AdKusBNU98mWnCtUS3S8/SufrOG3nADPUuew
Date: Mon, 10 Apr 2017 11:28:29 +0000
Message-ID: <2AA7D088591C49498E92D6491C58159334CCEFDD@gcxdb1.corp.geze.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.18.8.3]
MIME-Version: 1.0
X-OriginalArrivalTime: 10 Apr 2017 11:28:30.0795 (UTC)
	FILETIME=[94BD11B0:01D2B1ED]
X-GBS-PROC: bnl0h5zXbNcDn1aVsSovTwjdF2HmITIjEvuXkM5qNNE=
X-GRP-TAN: GC49WA60@E5F7A19BE4C040AF9422DC3556BCC8DF
X-cloud-security-sender: c.maier@geze.com
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-gate02-geze with CF4CA1148001
X-cloud-security-connect: unknown[193.28.48.59], TLS=0, IP=193.28.48.59
X-cloud-security: scantime:.3255
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
X-List-Received-Date: Mon, 10 Apr 2017 11:28:40 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIA0KDQpJIHdhbnQgdG8gY3JlYXRlIGEgZGVwbG95YWJsZSBTRCBjYXJkIGltYWdlLiBNeSBi
b2FyZCAoYmVhZ2xlYm9uZSBiYXNlZCkgYm9vdHMgZnJvbSBTRCBjYXJkIGFuZCBydW5zIGEgc2Ny
aXB0IHdoaWNoIGNvcGllcyB0aGUgcm9vdGZzLnRhci5iejIgdG8gdGhlIGZsYXNoIG1lbW9yeS4g
DQpTbyBob3cgY2FuIEkgZGVwbG95IGEgY29weSBvZiB0aGUgd2hvbGUgcm9vdGZzIHRvICR7RH0v
aG9tZS9yb290PyANCkEgcm9vdGZzIGluIHRoZSByb290ZnMsIGRvZXMgdGhhdCBtYWtlIHNlbnNl
PyANCg0KQW55IGhlbHAgaXMgYXBwcmVjaWF0ZWQuIA0KDQpDaHJpcyBNYWllcg0KDQoNCg0KR2Vz
Y2jDpGZ0c2bDvGhydW5nOiBCcmlnaXR0ZSBWw7ZzdGVyLUFsYmVyIChWb3JzaXR6ZW5kZSksIEFu
ZHJlYSBBbGV4YW5kcmEgQWxiZXIsIE1hcmMgQWxiZXIsIEZsb3JpYW4gQmlya2VubWF5ZXINClZv
cnNpdHplbmRlciBkZXMgQXVmc2ljaHRzcmF0ZXM6IFByb2YuIERyLiBEci4gVWxsaSBBcm5vbGQs
IEFtdHNnZXJpY2h0IFN0dXR0Z2FydCBIUkIgMjUwMzI5LCBUZWw6ICs0OSA3MTUyIDIwMyAwDQpH
RVpFIEdtYkgsIFJlaW5ob2xkLVbDtnN0ZXItU3RyYcOfZSAyMS0yOSwgNzEyMjkgTGVvbmJlcmcs
IEdlcm1hbnkNCg0KDQoNCg==

