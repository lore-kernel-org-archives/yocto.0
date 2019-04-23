Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94B08E00994; Tue, 23 Apr 2019 04:13:36 -0700 (PDT)
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
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F34E00950
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 04:13:35 -0700 (PDT)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x3NBCTe5024922
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:13:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-type : content-transfer-encoding :
	mime-version; s=20190114Woodward;
	bh=d2Q0pNIKFRGuo+oBCckS60Inr58nZQKJiPIju9kZ+Ds=;
	b=AbTzFIqZb8UlzzJzo3PDgCz08Vohd6k9qW34sdMAxTE7QMxG7bFvclRvkmmK0dlSa1xr
	srwTSgdgjGekwPdLs274tOOLVest0tfz07GE5EIVRwLVyxNgN+eh2dGqRjrzJxM9fHrU
	LMtvSABFtu1Dt4y9AGEuVpp3Rz1zFoH26KHpj6HcS/SsFfIpyqj2qtagBFk5mGNSDoYZ
	YdGeKc2/VdGUGBr7np9UcvbvkmEhJQuKvLxZtT5SfsTHGbAACbilPsaIk2qXIMjX/IGa
	CkjR8VhXXnNyYezyWXzTsSJ+adQ/vxhVErRySzwBAOD0fvQqj/smij+OIK1FM/qLIM1b
	bQ== 
Received: from coil-exmb3.woodward.com ([10.51.100.66])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2ryyn064ct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 06:13:34 -0500
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb3.woodward.com
	(10.51.100.66) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
	Tue, 23 Apr 2019 06:13:32 -0500
Received: from KempMail2.woodward.com ([169.254.2.201]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Tue, 23 Apr 2019 13:13:31 +0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 23 Apr 2019 13:13:29 +0200
Thread-Topic: [yocto] How to remove packages from Image coming because of
	RDEPENDS
Thread-Index: AdT5xZQOClmJt5zQRN2CBa4n1g1cHw==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55CABBC869@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=576 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1904230080
Subject: Re: How to remove packages from Image coming because of RDEPENDS
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
X-List-Received-Date: Tue, 23 Apr 2019 11:13:36 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVHVlc2RheSwgQXByaWwgMjMsIDIwMTkgMTI6MDggUE0sIFByaXlhbnNodSBTaGFybWEgd3Jv
dGU6DQo+IEhvdyBjYW4gd2UgcmVtb3ZlIGluY2x1c2lvbiBvZiBhbnkgcGFja2FnZSB3aGljaCBj
b21lcyBiZWNhdXNlIHNvbWUgb3RoZXIgcGFja2FnZSBSRFBFTkRTIG9uIGl0Pw0KPiBGb3IgZXhh
bXBsZSwgcnBjYmluZCByZWNpcGUgUkRFUEVORFMgb24gc2hhZG93IGFuZCBsaWJwYW0gcGFja2Fn
ZXMsIA0KPiBiZWNhdXNlIG9mIHdoaWNoIGlmIElNQUdFX0lOU1RBTEwrPSJycGNiaW5kIiBpcyBt
ZW50aW9uZWQgaW4gcmVjaXBlICggDQo+IGV2ZW4gdGhvdWdoIHNoYWRvdyBhbmQgbGlicGFtIGFy
ZSBub3QgYWRkZWQgbGlrZSB0aGlzIGV4cGxpY2lsdHkpICwgc2hhZG93IGFuZCBsaWJwYW0gcGFj
a2FnZXMgZ2V0IHBhY2thZ2VkIGluIEltYWdlIHJvb3Rmcy4NCj4gVGhpcyBldmVuIGluY2x1ZGVz
IGFueSBiaW4vc2JpbiBwcm92aWRlZCBieSBzaGFkb3cvbGlicGFtLCBldmVuIHdoZW4gdGhleSBh
cmUgbm90IG5lZWRlZCBpbiByb290ZnMuDQoNCj4gSXMgdGhlcmUgYW4gb3B0aW11bSB3YXkgdG8g
Y29udHJvbCBpbmNsdXNpb24gb2YgUkRFUEVORFMgcGFja2FnZXM/IE9uZSANCj4gd2F5IGlzIHRv
IHVzZSBST09URlNfUE9TVF9QUk9DRVNTIGFuZCByZW1vdmUgc3BlY2lmaWMgZmlsZXMgYWZ0ZXIg
ZG9fcm9vdGZzIHRhc2sgaXMgZG9uZS4NCj4gQnV0IGlzIHRoZXJlIGEgd2F5IHRvIHJlbW92ZSBl
bnRpcmUgcGFja2FnZSwgaW5zdGVhZCBvZiByZW1vdmluZyBlYWNoIGZpbGUgPw0KDQpUeXBpY2Fs
bHkgSSBjcmVhdGUgLmJiYXBwZW5kIHdpdGggZm9sbG93aW5nOg0KUkRFUEVORFNfJHtQTn1fcmVt
b3ZlID0gImxpYnBhbSINCg0KQnV0IGJlIGNhcmVmdWwgd2hhdCBkZXBlbmRlbmNpZXMgeW91IHJl
bW92ZS4gU29tZXRpbWVzIFlvY3RvIHNldHMgdG9vIHdpZGUgbGlzdCBvZiBkZXBlbmRlbmNpZXMg
YW5kIGluIHNvbWUgY29uZmlndXJhdGlvbnMgaXQgaXMgcG9zc2libGUgdG8gcmVtb3ZlIHRoZW0s
IGJ1dCBzb21ldGltZXMgeW91IG1heSBicmVhayBzb21lIHRoaW5ncy4gDQoNCkJlc3QgcmVnYXJk
cywNCkx1a2FzeiBaZW1sYQ0K

