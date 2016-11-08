Return-Path: <teemu.keskinarkaus@crosscontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8966CE009FA; Tue,  8 Nov 2016 03:06:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [148.163.159.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx0a-001ea001.pphosted.com (mx0b-001ea001.pphosted.com
	[148.163.159.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4244E007E8
	for <yocto@yoctoproject.org>; Tue,  8 Nov 2016 03:05:54 -0800 (PST)
Received: from pps.filterd (m0088396.ppops.net [127.0.0.1])
	by mx0b-001ea001.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id
	uA8B2Zcw020578; Tue, 8 Nov 2016 05:05:49 -0600
Received: from ammail.actuant.com ([207.250.73.121])
	by mx0b-001ea001.pphosted.com with ESMTP id 26hat92njp-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
	Tue, 08 Nov 2016 05:05:49 -0600
Received: from AMDTCEX14.actuant.pri ([169.254.6.193]) by
	AMDTCEX13.actuant.pri ([169.254.5.198]) with mapi id 14.03.0301.000;
	Tue, 8 Nov 2016 05:05:48 -0600
From: "Keskinarkaus, Teemu" <teemu.keskinarkaus@crosscontrol.com>
To: Khem Raj <raj.khem@gmail.com>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] UTF-89 support
Thread-Index: AdI47OQA8U9YBjORT3iuPgKVfOownQAYSukAAAUHUIAAANNyAAASleKw
Date: Tue, 8 Nov 2016 11:05:47 +0000
Message-ID: <83DB4EC8FADD45428E3CC4E3664761FD4241853D@AMDTCEX14.actuant.pri>
References: <83DB4EC8FADD45428E3CC4E3664761FD4241815C@AMDTCEX14.actuant.pri>
	<b7805230-409c-96cf-1562-28bf6a8f81dd@gmail.com>
	<1589087.fjKFOckh16@peggleto-mobl.ger.corp.intel.com>
	<CAMKF1sq42NJztUn5D9pvHUw2FrOv=K54VYvS7Limgq2dO0TOzQ@mail.gmail.com>
In-Reply-To: <CAMKF1sq42NJztUn5D9pvHUw2FrOv=K54VYvS7Limgq2dO0TOzQ@mail.gmail.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.116]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:, ,
	definitions=2016-11-08_04:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 impostorscore=0 adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1609300000
	definitions=main-1611080204
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: UTF-89 support
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
X-List-Received-Date: Tue, 08 Nov 2016 11:06:01 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgdHJpZWQgdGhhdC4gSSBoYXZlIG5vdyB0aGVzZSBsaW5lcyBpbiB0aGUgbG9jYWwu
Y29uZg0KDQpHTElCQ19HRU5FUkFURV9MT0NBTEVTID0gImVuX0dCIGVuX1VTIGVuX0dCLlVURi04
IGVuX1VTLlVURi04Ig0KSU1BR0VfTElOR1VBUyA9ICJlbi1nYiBlbi11cyINCg0KSSBoYWQgdG8g
YWRkIHRoZSAiZW4tdXMiIHRvIElNQUdFX0xJTkdVQVMgb3IgSSB3b3VsZCBvbmx5IGdldCBlbl9H
QiBsb2NhbGUgYW5kIG5vdCBlbl9VUyBhdCBhbGwuIFN0aWxsIG1pc3NpbmcgdGhlIFVURi04IGxv
Y2FsZXMgdGhvdWdoLg0KDQpUZWVtdSBLZXNraW5hcmthdXMNClNvZnR3YXJlIHN5c3RlbSBlbmdp
bmVlcg0KQ3Jvc3NDb250cm9sDQptYWtpbmcgbWFjaGluZXMgc21hcnQsIHNhZmUgYW5kIHByb2R1
Y3RpdmUNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21h
aWx0bzpyYWoua2hlbUBnbWFpbC5jb21dDQpTZW50OiA3LiBtYXJyYXNrdXV0YSAyMDE2IDIyOjEy
DQpUbzogUGF1bCBFZ2dsZXRvbg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IEtlc2tpbmFy
a2F1cywgVGVlbXUNClN1YmplY3Q6IFJlOiBbeW9jdG9dIFVURi04OSBzdXBwb3J0DQoNCk9uIE1v
biwgTm92IDcsIDIwMTYgYXQgMTE6NDggQU0sIFBhdWwgRWdnbGV0b24gPHBhdWwuZWdnbGV0b25A
bGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gT24gTW9uLCAwNyBOb3YgMjAxNiAwOToyNDoxOCBL
aGVtIFJhaiB3cm90ZToNCj4+IE9uIDExLzcvMTYgMzo0OCBBTSwgS2Vza2luYXJrYXVzLCBUZWVt
dSB3cm90ZToNCj4+ID4gSGksDQo+PiA+DQo+PiA+DQo+PiA+DQo+PiA+IEkgdHJpZWQgZ29vZ2xp
bmcgdGhpcyBhbmQgcmVhZGluZyB0aGUgbWFudWFsLCBidXQgSSBndWVzcyB0aGlzIGlzDQo+PiA+
IHRvbyB0cml2aWFsIG9yIEnigJltIGRvaW5nIHNvbWV0aGluZyB3cm9uZy4NCj4+ID4NCj4+ID4N
Cj4+ID4NCj4+ID4gSeKAmW0gdHJ5aW5nIHRvIGdldCBVVEYtOCBzdXBwb3J0IHRvIG15IGltYWdl
LiBVVEYtOCBsb2NhbGUgbW9yZSBzcGVjaWZpYy4NCj4+ID4gSWYgSSBydW4gbG9jYWxlIOKAk2Eg
Y29tbWFuZCBJIGdldCB0aGVzZSBsb2NhbGVzIGxpc3RlZDoNCj4+ID4NCj4+ID4gQw0KPj4gPg0K
Pj4gPiBQT1NJWA0KPj4gPg0KPj4gPiBlbl9HQg0KPj4gPg0KPj4gPiBlbl9VUw0KPj4gPg0KPj4g
Pg0KPj4gPg0KPj4gPiBJIGFkZGVkIHRoaXMgbGluZSB0byBteSBsb2NhbC5jb25mOg0KPj4gPg0K
Pj4gPiBHTElCQ19HRU5FUkFURV9MT0NBTEVTID0gImVuX0dCLlVURi04IGVuX1VTLlVURi04IGVu
X0dCIGVuX1VTIg0KPj4NCj4+IHlvdSBhbHNvIG5lZWQgdG8gc2V0IElNQUdFX0xJTkdVQVMgdG8g
aW5jbHVkZSBpdCBpbnRvIGltYWdlIGUuZy4NCj4+DQo+PiBHTElCQ19HRU5FUkFURV9MT0NBTEVT
ID0gImVuLWdiIg0KPg0KPiBJIGd1ZXNzIHlvdSBtZWFudCBJTUFHRV9MSU5HVUFTID0gImVuLWdi
Ig0KDQp5ZXMgdGhhbmtzIGZvciBub3RpbmcNCg0KPg0KPiBDaGVlcnMsDQo+IFBhdWwNCj4NCj4g
LS0NCj4NCj4gUGF1bCBFZ2dsZXRvbg0KPiBJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENl
bnRyZQ0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KDQpBY3R1YW50IENvcnBv
cmF0aW9uIEVtYWlsIE5vdGljZQ0KDQpUaGlzIG1lc3NhZ2UgaXMgaW50ZW5kZWQgb25seSBmb3Ig
dGhlIHVzZSBvZiB0aGUgQWRkcmVzc2VlIGFuZCBtYXkgY29udGFpbiBpbmZvcm1hdGlvbiB0aGF0
IGlzIFBSSVZJTEVHRUQgYW5kL29yIENPTkZJREVOVElBTC4NClRoaXMgZW1haWwgaXMgaW50ZW5k
ZWQgb25seSBmb3IgdGhlIHBlcnNvbmFsIGFuZCBjb25maWRlbnRpYWwgdXNlIG9mIHRoZSByZWNp
cGllbnQocykgbmFtZWQgYWJvdmUuIElmIHRoZSByZWFkZXIgb2YgdGhpcyBlbWFpbCBpcyBub3Qg
YW4gaW50ZW5kZWQgcmVjaXBpZW50LCB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGluIGVy
cm9yIGFuZCBhbnkgcmV2aWV3LCBkaXNzZW1pbmF0aW9uLCBkaXN0cmlidXRpb24gb3IgY29weWlu
ZyBpcyBzdHJpY3RseSBwcm9oaWJpdGVkLg0KSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyBlbWFp
bCBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGJ5IHJldHVy
biBtYWlsIGFuZCBwZXJtYW5lbnRseSBkZWxldGUgdGhlIGNvcHkgeW91IHJlY2VpdmVkLg0KDQpU
aGFuayB5b3UuDQo=

