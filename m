Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 240F7E00C78; Fri, 10 May 2019 08:33:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [204.27.169.35 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48FDBE00963
	for <yocto@yoctoproject.org>; Fri, 10 May 2019 08:32:59 -0700 (PDT)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x4AFPPfT030162; Fri, 10 May 2019 10:32:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : cc :
	date : subject : message-id : content-transfer-encoding : mime-version
	: content-type; s=20190114Woodward;
	bh=SBvKmYZx2Mw69Rfh1RhQbTVFihZnPLvCbjlwuImI900=;
	b=vtolS3wlNShPOM9w/vbOsbNnof2IEoG7gsS1Txuj9SA9anm/cCnmOqEH+oIpKs6n4nLR
	2Q41U4Yw+nYzCriHKQIQcMSdiHZ0gF/qWCkQbSpiLZ0ANAqmqXFHTzzN0/6yrlzT/xXt
	RCOiKmRem9uxY6j8G1/e5/zj1JWMTgFWBvHjv033ZMkviIYXxh0j7VshHFnT05TOGBcu
	8OfZ0ZjaHViD5fmMACdCh/zOQmLTqEKaCWA9gJTgO86UY/HmfQpr8arCNkz9idcBAZ+b
	tWRuE6WsvaTupa3wiijxuNiNkcjNvclw3R1sIoAZxL3VY/D0HEkJ4c/UNsq2nPiCM6GY
	Ig== 
Received: from rkfdhc1.woodward.com ([10.1.100.158])
	by COIL-PMSGA1.woodward.com with ESMTP id 2sdbtb81gd-11
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT);
	Fri, 10 May 2019 10:32:57 -0500
Received: from KempHC2.woodward.com (10.25.100.52) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Fri, 10 May 2019 10:32:19 -0500
Received: from KempMail2.woodward.com ([169.254.2.201]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Fri, 10 May 2019 17:32:18
	+0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: JH <jupiter.hce@gmail.com>
Date: Fri, 10 May 2019 17:32:17 +0200
Thread-Topic: [yocto] Yocto image systemd debugging
Thread-Index: AdUHRYwd1BRRQ6RCTByLwoNUSv9DHQ==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55CB317A74@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905100106
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto image systemd debugging
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
X-List-Received-Date: Fri, 10 May 2019 15:33:00 -0000
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

T24gRnJpZGF5LCBNYXkgMTAsIDIwMTkgMTA6MDkgQU0sIEpIIHdyb3RlOg0KPiA+IFdoYXQgZG8g
eW91IG1lYW4gYnkgZGVidWc/DQo+ID4gSW4gbW9zdCBjYXNlcyAnc3lzdGVtY3RsIHN0YXR1cyA8
c2VydmljZT4nLCAnc3lzdGVtY3RsIC0tZmFpbGVkJywgDQo+ID4gc3lzdGVtLWFuYWx5emUgYW5k
IGpvdXJuYWxjdGwgYXJlIGVmZmljaWVudC4gU29tZXRpbWVzIEkgc2V0IA0KPiA+ICdTdGFuZGFy
ZE91dHB1dD1qb3VybmFsK2NvbnNvbGUnDQo+ID4gaW4gc2VydmljZSBmaWxlIHRvIGp1c3Qgc2Vl
IG91dHB1dCBkdXJpbmcgYm9vdGluZy4NCj4gDQo+IFRoZXJlIGlzIGFuIG9mb25vLnNlcnZpY2Ug
d2hpY2ggZmFpbGVkIGJ5IHN5c3RlbWQgc2VydmljZSwgYnV0IHRoZXJlIHdlcmUgDQo+IG5vIHBy
b2JsZW1zIGlmIEkgc3RhcnQgaXQgbWFudWFsbHksIHRoZSBzeXN0ZW1jdGwgc3RhdHVzIDxzZXJ2
aWNlPicsIA0KPiAnc3lzdGVtY3RsIC0tZmFpbGVkJyB0b2xkIG1lIGl0IGZhaWxlZCBidXQgZGlk
IG5vdCB0ZWxsIG1lIHdoeSBpdCB3YXMgZmFpbGVkIA0KPiBhbmQgd2hhdCB3YXMgdGhlIGNhdXNl
LiBIZW5jZSBJIGFza2VkIGhvdyB0byBkZWJ1ZyBpdCwgSSBndWVzcyB5b3VyIGFkdmljZSANCj4g
aXMgdG8gY2hhbmdlIGZvbGxvd2luZyBvZm9uby5zZXJ2aWNlIFN0YW5kYXJkRXJyb3I9J2pvdXJu
YWwrY29uc29sZScsIGNvcnJlY3Q/DQo+IA0KPiBjYXQgL2xpYi9zeXN0ZW1kL3N5c3RlbS9vZm9u
by5zZXJ2aWNlDQo+IFtVbml0XQ0KPiBEZXNjcmlwdGlvbj1UZWxlcGhvbnkgc2VydmljZQ0KPiBB
ZnRlcj1zeXNsb2cudGFyZ2V0DQo+IA0KPiBbU2VydmljZV0NCj4gVHlwZT1kYnVzDQo+IEJ1c05h
bWU9b3JnLm9mb25vDQo+IEV4ZWNTdGFydD0vdXNyL3NiaW4vb2Zvbm9kIC1uDQo+IFN0YW5kYXJk
RXJyb3I9bnVsbA0KPiANCj4gW0luc3RhbGxdDQo+IFdhbnRlZEJ5PW11bHRpLXVzZXIudGFyZ2V0
DQo+IA0KDQpZZXMsIHBsZWFzZSBzZXQ6DQpTdGFuZGFyZEVycm9yPWpvdXJuYWwrY29uc29sZQ0K
DQpCZXN0IHJlZ2FyZHMsDQpMdWthc3ogWmVtbGENCgoqKioKVGhlIGluZm9ybWF0aW9uIGluIHRo
aXMgZW1haWwgaXMgY29uZmlkZW50aWFsIGFuZCBpbnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBpbmRp
dmlkdWFsIG9yIGVudGl0eSB0byB3aG9tIGl0IGlzIGFkZHJlc3NlZC7CoMKgSWYgeW91IGhhdmUg
cmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIgYnkg
cmV0dXJuIGUtbWFpbCwgZGVsZXRlIHRoaXMgZW1haWwsIGFuZCByZWZyYWluIGZyb20gYW55IGRp
c2Nsb3N1cmUgb3IgYWN0aW9uIGJhc2VkIG9uIHRoZSBpbmZvcm1hdGlvbi4KKioqCg==

