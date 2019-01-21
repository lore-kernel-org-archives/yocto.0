Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3084DE00CBC; Mon, 21 Jan 2019 00:36:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 1717 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Jan 2019 00:36:10 PST
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE05DE00D20
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 00:36:10 -0800 (PST)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x0L87KML023039; Mon, 21 Jan 2019 02:07:32 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=+OEc5jVWe6ewdas2Oq+daQ0x2bZhiinw/ZjGuSSzyHQ=;
	b=h6UYnBLi4XQsuNKhK1+IwreM/UybKJO1b0o11sbOkLuD7T0N55Q7/xyZadI27LQNbtEQ
	ptvGKSkz7YX51ZjcUQX7xk24K12oz8K/qYgOtZ3YVwVjmoi6c1s4MYuw5OtQk4cidT4W
	bMqZi5st4JsOXiL6YM5GRxiPVsuuWPq2523T6nSufzAFTrN1pXu2Gmd9w4dCcq2IvfCt
	psT2kqQuy1wCWNc6n/MwM2Hbw8WUdxS1R0VUVNU3GmTh3hGrcY3gPBWy+/DJqY7XxoBP
	tGVGR90tGXaHM02snFameWCx1AHlpsyArSQcAH3DkVlL+nmEhoutbqzHVXl1RypmUuDN
	yg== 
Received: from rkfdhc2.woodward.com ([10.1.100.159])
	by COIL-PMSGA1.woodward.com with ESMTP id 2q4105jst3-1
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT);
	Mon, 21 Jan 2019 02:07:32 -0600
Received: from KempHC2.woodward.com (10.25.100.52) by rkfdhc2.woodward.com
	(10.1.100.159) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Mon, 21 Jan 2019 02:07:31 -0600
Received: from KempMail2.woodward.com ([169.254.2.151]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Mon, 21 Jan 2019 09:07:30
	+0100
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 09:07:28 +0100
Thread-Topic: [yocto] Systemd service recipe fails while booting from initramfs
Thread-Index: AdSxXurF/l/PQzDeTpa0bx+HJilHJA==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF524776BD8C@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1901210066
Subject: Re: Systemd service recipe fails while booting from initramfs
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
X-List-Received-Date: Mon, 21 Jan 2019 08:36:23 -0000
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

RnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgWm9yYW4gU3RvanNhdmxqZXZpYw0KU2Vu
dDogTW9uZGF5LCBKYW51YXJ5IDIxLCAyMDE5IDc6NTYgQU0NCg0KWy4uLl0NCg0KPiBXaGlsZSBk
b3dubG9hZGluZyBpbml0cmFtZnMgb24gdGhlIHRhcmdldCBzeXN0ZW0sIHdoaWxlIGJyaW5naW5n
IGtlcm5lbCB1cCwgdGhlIGZvbGxvd2luZw0KPiBoYXBwZW5lZCAoYWN0dWFsIGxvZyk6DQo+IFvC
oMKgwqAgMC4wMDAwMDBdIEtlcm5lbCBjb21tYW5kIGxpbmU6IGNvbnNvbGU9dHR5TzAsMTE1MjAw
bjggcm9vdD0vZGV2L3JhbTAgaXA9ZGhjcA0KPiAuLi4gW3NuYXBdLi4uDQo+IFvCoCAxMTQuMDY0
MDMyXSBTZW5kaW5nIERIQ1AgcmVxdWVzdHMgLi4uLi4uIHRpbWVkIG91dCENCj4gW8KgIDE5MC42
NTI1NzFdIElQLUNvbmZpZzogQXV0by1jb25maWd1cmF0aW9uIG9mIG5ldHdvcmsgZmFpbGVkDQo+
IFvCoCAxOTAuNjYzMTU4XSBGcmVlaW5nIHVudXNlZCBrZXJuZWwgbWVtb3J5OiAxMDI0Sw0KPiBb
wqAgMTkwLjY2ODY2MV0gUnVuIC9pbml0IGFzIGluaXQgcHJvY2Vzcw0KPiBTeXN0ZW0gdGltZSBi
ZWZvcmUgYnVpbGQgdGltZSwgYWR2YW5jaW5nIGNsb2NrLg0KPiBGYWlsZWQgdG8gbW91bnQgdG1w
ZnMgYXQgL3N5cy9mcy9jZ3JvdXA6IE5vIHN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCj4gRmFpbGVk
IHRvIG1vdW50IGNncm91cCBhdCAvc3lzL2ZzL2Nncm91cC9zeXN0ZW1kOiBObyBzdWNoIGZpbGUg
b3IgZGlyZWN0b3J5DQo+IFshISEhISFdIEZhaWxlZCB0byBtb3VudCBBUEkgZmlsZXN5c3RlbXMs
IGZyZWV6aW5nLg0KPiBGcmVlemluZyBleGVjdXRpb24uDQo+IFvCoCAxOTIuOTg0NDQyXSByYW5k
b206IGNybmcgaW5pdCBkb25lDQo+IEkgaGF2ZSB0d28gcXVlc3Rpb25zIChwbGVhc2UsIGNvdWxk
IHlvdSBwcm92aWRlIHRvIG1lIHNvbWUgaGVscCBoZXJlKToNCj4gWzFdIEhvdyB0byBmaXggdGhp
cyBydW4tdGltZSBidWcgKHdoYXQgSSBzaG91bGQgZG8gaW4gdGhlIGNvbmZpZ3VyYXRpb24pPw0K
PsKgwqDCoMKgIEkgZm91bmQgc29tZSBpbnRlcmVzdGluZyBleHBsYW5hdGlvbiBhYm91dCBwb3Nz
aWJsZSBzb2x1dGlvbiAoUEFDS0FHRUNPTkZJRyk6DQo+wqDCoMKgwqAgaHR0cHM6Ly9saXN0cy55
b2N0b3Byb2plY3Qub3JnL3BpcGVybWFpbC95b2N0by8yMDEzLU5vdmVtYmVyLzAxNjk2NS5odG1s
DQoNClByb2JhYmx5IHlvdSBhcmUgbWlzc2luZyBDT05GSUdfQ0dST1VQUyBpbiB5b3VyIGtlcm5l
bCBjb25maWd1cmF0aW9uLg0KUGxlYXNlIHJlYWQgUkVBRE1FIGZpbGUgaW4gdGhlIHN5c3RlbWQg
c291cmNlcyBmb2xkZXIgLSBpdCBkZXNjcmliZXMgYWxsIG9wdGlvbnMNCnJlcXVpcmVkIHRvIGJl
IGVuYWJsZWQgaW4ga2VybmVsIGNvbmZpZ3VyYXRpb24uDQoNCj4gWzJdIEkgd291bGQgbGlrZSBh
bHNvIHRvIGluY2x1ZGUgbmV0d29ya2N0bCBzZXJ2aWNlIChzaG91bGQgSSBkbyBzb21ldGhpbmcg
c3BlY2lmaWMgdG8NCj7CoMKgwqDCoCBlbmFibGUgaXQsIG9yIHRoaXMgaXMgZG9uZSBieSBkZWZh
dWx0IGVuYWJsaW5nIHN5c3RlbWQpPw0KDQpQbGVhc2UgYWRkIGZvbGxvd2luZyB0byB5b3VyIGNv
bmYvbG9jYWwuY29uZiBmaWxlOg0KUEFDS0FHRUNPTkZJR19hcHBlbmRfcG4tc3lzdGVtZCA9ICIg
bmV0d29ya2QiDQoNCkJlc3QgcmVnYXJkcywNCkx1a2FzeiBaZW1sYQ0KCioqKgpUaGUgaW5mb3Jt
YXRpb24gaW4gdGhpcyBlbWFpbCBpcyBjb25maWRlbnRpYWwgYW5kIGludGVuZGVkIHNvbGVseSBm
b3IgdGhlIGluZGl2aWR1YWwgb3IgZW50aXR5IHRvIHdob20gaXQgaXMgYWRkcmVzc2VkLsKgwqBJ
ZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGluIGVycm9yIHBsZWFzZSBub3RpZnkgdGhl
IHNlbmRlciBieSByZXR1cm4gZS1tYWlsLCBkZWxldGUgdGhpcyBlbWFpbCwgYW5kIHJlZnJhaW4g
ZnJvbSBhbnkgZGlzY2xvc3VyZSBvciBhY3Rpb24gYmFzZWQgb24gdGhlIGluZm9ybWF0aW9uLgoq
KioK

