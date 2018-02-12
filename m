Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2F6CE00DFA; Mon, 12 Feb 2018 03:40:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.17 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBB69E0097D
	for <yocto@yoctoproject.org>; Mon, 12 Feb 2018 03:40:44 -0800 (PST)
Received: from [216.82.249.147] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-17.bemta-12.messagelabs.com id AA/54-03083-B3D718A5;
	Mon, 12 Feb 2018 11:40:43 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprHKsWRWlGSWpSXmKPExsXi5LtOQNe6tjH
	K4EO7vMX/x9vYLCa9XMPmwOQx72SgR/uJPrYApijWzLyk/IoE1ozpXSdZC/azVbw594C1gXEL
	WxcjF4eQwGpGiSvLn7BAOGsYJdqWz4VyljBKrNvVxdjFyMnBJmAuMe3wQaAEB4eIQK7E6h4Dk
	LCwgIfEt7WNTCC2iICnxP9TzawQtpvEs0+zweIsAqoSB8++A7N5BXwlJrxuYgexhQQamCRm3X
	EFsTkFnCX2/nsOVsMoICux8vxpsLXMAuISt57MB4tLCAhILNlznhnCFpV4+fgfK4QtL/Hq3BE
	mkNOYBTQl1u/Sh2hVlJjS/ZAdYq2gxMmZID+CrFWTaJszgXkCo+gsJBtmIXTPQtI9C0n3AkaW
	VYwaxalFZalFuiYWeklFmekZJbmJmTm6hoZGermpxcWJ6ak5iUnFesn5uZsYgfFTz8DAuIPx0
	/7oQ4ySHExKoryMc+qihPiS8lMqMxKLM+KLSnNSiw8xynBwKEnwqtQ0RgkJFqWmp1akZeYAIx
	kmLcHBoyTC6wqS5i0uSMwtzkyHSJ1itORoW/mkjZnjxovXQHLLsjdtzEIsefl5qVLivIYgDQI
	gDRmleXDjYMnmEqOslDAvIwMDgxBPQWpRbmYJqvwrRnEORiVhXnWQKTyZeSVwW18BHcQEdJCu
	NthBJYkIKakGRgPFvurbh10e3i/Ly/lTscz8+74jf13unuFljsv2WMq4vMGx6FjUqZoHiwrPM
	DRGbLxnzc+ZZCD1yXL5lnathX38bW9fSb2vPi7/vyz188zztzbG227OVeRbmXDLndFtsuQCL6
	d1D+Qf7f76q9fgatwhW+m4RYz2r/JE1+47ILx286rLF97GL1ZiKc5INNRiLipOBACcz2MyMQM
	AAA==
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-5.tower-29.messagelabs.com!1518435642!71654585!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 8873 invoked from network); 12 Feb 2018 11:40:43 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-5.tower-29.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 12 Feb 2018 11:40:43 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 12 Feb 2018 05:40:42 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH04.digi.com
	(10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 12 Feb 2018 05:40:41 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Mon, 12 Feb 2018 12:40:40 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Postinstallation script warnings in Yocto 2.4 Rocko
Thread-Index: AdOIYQlF3trmw5fqTDOXmOVi9/TopwACpYQAAAKIhvD///msAP/I+Jmg
Date: Mon, 12 Feb 2018 11:40:39 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01C85287@dor-sms-xch01.digi.com>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
	<3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
In-Reply-To: <3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.93]
MIME-Version: 1.0
Subject: Re: Postinstallation script warnings in Yocto 2.4 Rocko
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
X-List-Received-Date: Mon, 12 Feb 2018 11:40:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBZb3UgY2FuIHNldCBzZWxmLmxvZ19jaGVja19leHBlY3RlZF9yZWdleGVzIGluIFJwbVJvb3Rm
cyBjbGFzcyBpbiBtZXRhL2xpYi9vZS9yb290ZnMucHksIGJ1dA0KPg0KPiBhKSBkZXBlbmRpbmcg
b24gaG93IGJyb2FkIHlvdXIgcmVnZXggaXMsIHlvdSBtaWdodCBzdXBwcmVzcyByZWFsIGZhaWx1
cmVzIG9mIHRoZSBzY3JpcHRsZXRzOw0KPg0KPiBiKSBpdCB3b3VsZCBiZSBvbmx5IHlvdXIgbG9j
YWwgaGFjayB1bnRpbCB0aGUgaXNzdWUgaXMgcmVzb2x2ZWQgcHJvcGVybHkuDQo+DQo+IEFsZXgN
Cg0KQ2FuIHlvdSBkZXRhaWwgaG93IHRoaXMgd291bGQgYmUgZG9uZT8NCg0KSXMgaXQgcG9zc2li
bGUgdG8gYXBwZW5kIHRvICdsb2dfY2hlY2tfZXhwZWN0ZWRfcmVnZXgnIGZyb20gdGhlIC5iYiBy
ZWNpcGUgdGhhdCBnZW5lcmF0ZXMgdGhlIHdhcm5pbmc/IE9yIHRoZSBvbmx5IG9wdGlvbiBpcyB0
byBwYXRjaCB0aGUgcG9reSBsYXllcj8NCg0KSXMgdGhlcmUgYW55IHdheSB0byByZW1vdmUgdGhl
c2Ugd2FybmluZ3MgaW4gcm9ja28gd2l0aG91dCBtb2RpZnlpbmcgdGhlIHBva3kgbGF5ZXI/IChJ
IGNhbm5vdCBtb2RpZnkgY29tbXVuaXR5IGxheWVycykNCg0KVGhhbmtzLg0K

