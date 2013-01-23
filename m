Return-Path: <Holger.Behrens@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBB2E0045D
	for <yocto@yoctoproject.org>; Tue, 22 Jan 2013 23:09:51 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r0N79pMI007843
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 22 Jan 2013 23:09:51 -0800 (PST)
Received: from ALA-MBB.corp.ad.wrs.com ([169.254.1.158]) by
	ALA-HCB.corp.ad.wrs.com ([147.11.189.41]) with mapi id 14.02.0318.004;
	Tue, 22 Jan 2013 23:09:49 -0800
From: "Behrens, Holger" <Holger.Behrens@windriver.com>
To: Adrian Alonso <aalonso00@gmail.com>, "Sarbu, Florin-Ionut (Florin)"
	<Florin.Sarbu@windriver.com>
Thread-Topic: [meta-ivi][meta-fsl-arm] Kernel AF_BUS dependency?
Thread-Index: AQHN+Qifc5/MoILp+0yve7D6xM/2FJhWfipw
Date: Wed, 23 Jan 2013 07:09:47 +0000
Message-ID: <7A688B48FC95D148BFE83E098348BE5036F7A72B@ALA-MBB.corp.ad.wrs.com>
References: <CAAB-1yz86Q4u0+2T-QBM6SMwT32WDLUw1Jw-dN3H7X4L6e2ikQ@mail.gmail.com>
In-Reply-To: <CAAB-1yz86Q4u0+2T-QBM6SMwT32WDLUw1Jw-dN3H7X4L6e2ikQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [128.224.204.207]
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-ivi][meta-fsl-arm] Kernel AF_BUS dependency?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Jan 2013 07:09:51 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQWRyaWFuLA0KDQo+IEhpIEhvbGdlciwgRmxvcmluDQo+IA0KPiBJJ20gYnVpbGRpbmcgZXhj
YWxpYnVyLWltYWdlIGZyb20gbWV0YS1pdmkgYW5kIEkgY2FuJ3QgbG9naW4gdG8gdGhlIHN5c3Rl
bQ0KPiBTZWU6IGh0dHA6Ly9wYXN0ZWJpbi5jb20vZlJVSnNhYWUNCj4gDQo+IFR3byBpc3N1ZXM6
DQo+IA0KPiBzeXN0ZW1kLXJhbmRvbS1zZWVkLWxvYWQgc2VydmljZSwgaGVyZSBwcm9iYWJseSBJ
J20gbWlzc2luZyBpbiBteSBrZXJuZWwNCj4gY29uZmlnIHRvIGVuYWJsZQ0KPiByYW5kb20gbnVt
YmVyIHN1cHBvcnQuDQo+IA0KPiB0aGUgc2Vjb25kIGlzIGFib3V0IEQtQnVzDQo+IA0KPiAiRmFp
bGVkIHRvIGxpc3RlbiBvbiBELUJ1cyBTeXN0ZW0gTWVzc2FnZSBCdXMgU29ja2V0Ig0KPiANCj4g
TXkgcXVlc3Rpb24NCj4gDQo+IERvIEkgbmVlZCBBRiBCVVMga2VybmVsIHBhdGNoID8NCj4gDQo+
IDAwMDEtbmV0LWJ1cy1hZGQtdGhlLUFGX0JVUy1zb2NrZXQtYWRkcmVzcy1mYW1pbHkucGF0Y2gN
Cj4gDQo+IFRoZSBrZXJuZWwgdGhhdCBJJ20gdXNpbmcgaXMga2VybmVsIHZlcnNpb24gMy4wLjM1
Lg0KDQpZb3UgbWF5IGxvb2sgaW50byB0aGUgKHN5c3RlbWQpIGpvdXJuYWwsIGl0IG1heSBwb2lu
dCB0byB0aGUgcHJvYmxlbSBhdCBoYW5kLCBsaWtlIGEgbWlzc2luZyBmaWxlLCBhY2Nlc3Mgcmln
aHRzLCBvciBrZXJuZWwgY29uZmlndXJhdGlvbiByZXF1aXJlZC4NCg0KRm9yIEQtQnVzIHRvIHdv
cmsgeW91IHdvbid0IG5lZWQgdGhlIEFGX0JVUyBwYXRjaCBzZXJpZXMsIGl0IHNob3VsZCB3b3Jr
IHdpdGhvdXQuICBJdCBpcyBub3QgR0VOSVZJIGNvbXBsaWFudCwgYnV0IGl0IG11c3Qgd29yayB3
aXRob3V0Lg0KDQpSZWdhcmRzLA0KSG9sZ2VyDQoNCj4gQmVzdCByZWdhcmRzLg0KPiANCj4gLS0N
Cj4gU2FsdWRvcw0KPiBBZHJpYW4gQWxvbnNvDQo+IGh0dHA6Ly9hYWxvbnNvLndvcmRwcmVzcy5j
b20NCg0K

