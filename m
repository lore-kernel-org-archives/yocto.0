Return-Path: <sipke.vriend@xilinx.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0185.outbound.messaging.microsoft.com [213.199.154.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FBDDE014DE;
	Wed, 29 May 2013 17:14:35 -0700 (PDT)
Received: from mail59-db8-R.bigfish.com (10.174.8.227) by
	DB8EHSOBE022.bigfish.com (10.174.4.85) with Microsoft SMTP Server id
	14.1.225.23; Thu, 30 May 2013 00:14:33 +0000
Received: from mail59-db8 (localhost [127.0.0.1])	by mail59-db8-R.bigfish.com
	(Postfix) with ESMTP id 8E1A8680161;
	Thu, 30 May 2013 00:14:33 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: 5
X-BigFish: VPS5(zz9371I542Izz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzz17326ah18602eh8275bh8275dhz2fh95h668h839h93fhd24hf0ah119dh1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh906i192cn1155h)
Received-SPF: pass (mail59-db8: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=sipke.vriend@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail59-db8 (localhost.localdomain [127.0.0.1]) by mail59-db8
	(MessageSwitch) id 136987287295645_10052;
	Thu, 30 May 2013 00:14:32 +0000 (UTC)
Received: from DB8EHSMHS008.bigfish.com (unknown [10.174.8.237])	by
	mail59-db8.bigfish.com (Postfix) with ESMTP id 0A483980049;
	Thu, 30 May 2013 00:14:32 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by DB8EHSMHS008.bigfish.com
	(10.174.4.18) with Microsoft SMTP Server id 14.1.225.23;
	Thu, 30 May 2013 00:14:28 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]
	helo=xsj-smtp1.xilinx.com)	by xsj-gw1 with esmtp (Exim
	4.63)	(envelope-from <sipke.vriend@xilinx.com>)	id 1UhqVf-0006yT-Pi;
	Wed, 29 May 2013 17:14:27 -0700
From: Sipke Vriend <sipke.vriend@xilinx.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>, OpenEmbedded
	Developer Mailing List <openembedded-devel@lists.openembedded.org>,
	OpenEmbedded Core Mailing List <openembedded-core@lists.openembedded.org>, 
	meta-xilinx Mailing List <meta-xilinx@yoctoproject.org>
Thread-Topic: meta-xilinx moved to meta-xilinx-community
Thread-Index: AQHOWDI9x11MlMDWW0qqXxbu7StZTZkc2Nkg
Date: Thu, 30 May 2013 00:14:25 +0000
References: <F001008B-B137-40CA-B102-2FFBC49C2302@gmail.com>
In-Reply-To: <F001008B-B137-40CA-B102-2FFBC49C2302@gmail.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.162.128]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <e349520e-8fb7-4ad6-b588-535dc997e6d5@DB8EHSMHS008.ehs.local>
X-OriginatorOrg: xilinx.com
Cc: Nathan Rossi <nrossi@xilinx.com>, David Holsgrove <dholsgrove@xilinx.com>,
	Mike Matera <matera@xilinx.com>, John Williams <jwilliams@xilinx.com>
Subject: Re: meta-xilinx moved to meta-xilinx-community
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
X-List-Received-Date: Thu, 30 May 2013 00:14:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCnlvY3RvcHJvamVjdC5vcmcgaXMgbm93IGhvc3RpbmcgbWV0YS14aWxpbnggZnJvbSBY
aWxpbnguDQpodHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9tZXRhLXhp
bGlueC8NClRoaXMgcmVwb3NpdG9yeSB3YXMgcHJldmlvdXNseSBhdCB3d3cuZ2l0aHViLmNvbS9Y
aWxpbngvbWV0YS14aWxpbnguZ2l0LCBhbmQgd2lsbCByZW1haW4gdGhlcmUgYXMgYSBtaXJyb3Iu
DQoNClRoaXMgbGF5ZXIgY29udGFpbnMgWGlsaW54IGhhcmR3YXJlIHN1cHBvcnQgbWV0YWRhdGEg
Zm9yIFp5bnEgYW5kIE1pY3JvYmxhemUgYXJjaGl0ZWN0dXJlLCBjdXJyZW50bHkgd2l0aCBic3Ag
bGF5ZXJzIHRhcmdldGluZyB0aGUgZXZhbHVhdGlvbiBib2FyZHMgemM3MDIsIHplZGJvYXJkIGFu
ZCBrYzcwNS4gVGhlIGxheWVyIGlzIHVuZGVyIGRldmVsb3BtZW50IGFuZCBmdXJ0aGVyIGluZm9y
bWF0aW9uIGlzIGF2YWlsYWJsZSBpbiBSRUFETUUgZmlsZXMgd2l0aGluIHRoZSBsYXllci4NCg0K
UmVnYXJkcw0KU2lwa2UgVnJpZW5kDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9t
OiBFbHZpcyBEb3dzb24gW21haWx0bzplbHZpcy5kb3dzb25AZ21haWwuY29tXSANClNlbnQ6IEZy
aWRheSwgMjQgTWF5IDIwMTMgMTo1MyBQTQ0KVG86IFlvY3RvIERpc2N1c3Npb24gTWFpbGluZyBM
aXN0OyBPcGVuRW1iZWRkZWQgRGV2ZWxvcGVyIE1haWxpbmcgTGlzdDsgT3BlbkVtYmVkZGVkIENv
cmUgTWFpbGluZyBMaXN0OyBtZXRhLXhpbGlueCBNYWlsaW5nIExpc3QNCkNjOiBTaXBrZSBWcmll
bmQ7IE5hdGhhbiBSb3NzaQ0KU3ViamVjdDogbWV0YS14aWxpbnggbW92ZWQgdG8gbWV0YS14aWxp
bngtY29tbXVuaXR5DQoNCkhpLA0KICAgICAgVGhlIGV4aXN0aW5nIG1ldGEteGlsaW54IHJlcG8g
aGFzIG1vdmVkIHRvIG1ldGEteGlsaW54LWNvbW11bml0eQ0KDQpodHRwOi8vZ2l0LnlvY3RvcHJv
amVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9tZXRhLXhpbGlueC1jb21tdW5pdHkvDQoNClRoaXMgbGF5
ZXIgd2lsbCBjb250YWluIGNvbW11bml0eSBzdXBwb3J0IGZvciB0aGUgWGlsaW54IHBsYXRmb3Jt
cywgaW5jbHVkaW5nIGxlZ2FjeSBib2FyZHMgKE1MNTA3KSBhbmQgb3RoZXIgc29mdC1wcm9jZXNz
b3IgYXJjaGl0ZWN0dXJlcy4NCg0KVGhpcyBwYXZlcyB0aGUgd2F5IGZvciBhbiBvZmZpY2lhbGx5
IHN1cHBvcnRlZCBtZXRhLXhpbGlueCBsYXllciwgdGhlIGRldGFpbHMgb2Ygd2hpY2ggd2lsbCBi
ZSBvZmZpY2lhbGx5IGFubm91bmNlZCBieSBYaWxpbnguDQoNCkJlc3QgcmVnYXJkcywNCg0KRWx2
aXMgRG93c29uDQoKCg==



