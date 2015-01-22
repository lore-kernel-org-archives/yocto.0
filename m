Return-Path: <Neil.Wu@emerson.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9209BE00932; Thu, 22 Jan 2015 00:13:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from esa4.emerson-outbound.iphmx.com
	(esa4.emerson-outbound.iphmx.com [68.232.143.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEA95E00902
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 00:13:25 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.09,447,1418061600"; 
   d="scan'208";a="891184"
Received: from usstlz-pinfez08.extemr.org ([144.191.128.192])
	by esa4.emerson-outbound.iphmx.com with ESMTP/TLS/AES128-SHA;
	22 Jan 2015 14:13:22 +0600
Received: from USSTLZ-PMSG007.emrsn.org (10.16.72.189) by
	USSTLZ-PINFEZ08.extemr.org (10.16.8.81) with Microsoft SMTP Server
	(TLS) id 14.3.158.1; Thu, 22 Jan 2015 08:13:19 +0000
Received: from USSTLZ-PMSG012.emrsn.org ([169.254.3.242]) by
	USSTLZ-PMSG007.emrsn.org ([169.254.2.95]) with mapi id 14.03.0158.001;
	Thu, 22 Jan 2015 08:13:18 +0000
From: <Neil.Wu@Emerson.com>
To: <yocto@yoctoproject.org>
Thread-Topic: The problem of do_rootfs_append
Thread-Index: AQHQH/KS3uZ7JFVgO0yksUPrZqVfBZyf4JbwgCwT+iA=
Date: Thu, 22 Jan 2015 08:13:18 +0000
Message-ID: <3204FE6663E1F14CAF4CA6928E60C8522763E282@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
	<CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.16.75.1]
MIME-Version: 1.0
Subject: The problem of do_rootfs_append
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
X-List-Received-Date: Thu, 22 Jan 2015 08:13:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpIaSwgYWxsDQpJJ20gYnVpbGRpbmcgc3BlY2lmaWMgcm9vdGZzIGltYWdlLiBBZGQgdGhlIGRv
X3Jvb3Rmc19hcHBlbmQoKSB0YXNrICBpbiBjb3JlLWltYWdlLXNwZWNpZmljLmJiLA0KY29yZS1p
bWFnZS1zcGVjaWZpYy5iYjoNCg0KU1VNTUFSWSA9ICJjcmVhZXQgdGhlIGN1c3RvbWVyIHJvb3Rm
cyINCnJlcXVpcmUgJHtUT1BESVJ9Ly4uL21ldGEvcmVjaXBlcy1jb3JlL2ltYWdlcy9jb3JlLWlt
YWdlLW1pbmltYWwuYmINCklNQUdFX0lOU1RBTEwgPSAicmVhZGxpbmUtZGV2IGxpbnV4LWxpYmMt
aGVhZGVycy1kZXYganNvbi1nbGliIGJ1c3lib3gtdWRoY3BjICINCmRvX3Jvb3Rmc19hcHBlbmQo
KSB7DQogICAgICAgIGNwIC1yZiAke0lNQUdFX1JPT1RGU30vZGF0YS9ldGMvICR7SU1BR0VfUk9P
VEZTfS9ldGMvDQogICAgICAgIHJtIC1yZiAke0lNQUdFX1JPT1RGU30vZGF0YS9ldGMvDQp9DQoN
Ckl0IGFsd2F5cyBtZWV0IHRoZSBlcnJvciBhcyBmb2xsb3dzOg0KRVJST1I6IEV4cGFuc2lvbkVy
cm9yIGR1cmluZyBwYXJzaW5nIC9ob21lL2VjdHJzL3Bva3kvbWV0YS1lbWVyc29uLWVjb3N5cy9y
ZWNpcGVzLWNvcmUvaW1hZ2VzL2NvcmUtaW1hZ2UtZWNvc3lzLmJiOiBGYWlsdXJlIGV4cGFuZGlu
ZyB2YXJpYWJsZSBkb19yb290ZnM6IEluZGVudGF0aW9uRXJyb3I6IHVuZXhwZWN0ZWQgaW5kZW50
ICg8c3RyaW5nPiwgbGluZSAxNCkNCg0KSSdtIHBsZWFzYW50IHJlY2VpdmUgeW91ciByZXBseS4g
SWYgeW91IGtub3cgaG93IHRvIHNvbHZlIGl0ICwgcGxlYXNlIGhlbHAgbWUgLg0KVGhhbmsgeW91
IHZlcnkgbXVjaC4NCg0KTmVpbA0K

