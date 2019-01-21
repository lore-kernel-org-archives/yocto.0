Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 610E9E009A0; Mon, 21 Jan 2019 09:58:20 -0800 (PST)
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
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8F0DE006D8
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 09:58:19 -0800 (PST)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x0LHqEuu021722
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 11:58:19 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-transfer-encoding : mime-version :
	content-type; s=20190114Woodward;
	bh=CTq7Ck3HJxSB7Hb4QSVkDMwaQVzYQlvfQAf9ITgggVQ=;
	b=OfopvwmGOd1TVwjmiuEsHDeHSuPAbc3EV+3Gg3t5Xrf+fho2oiHyTFfYi1XiBRwaV0ja
	jIAZRhDiRe7G/uL9vlfambm/Lz4MqVhWlDd+nEAqzZwqz96057Hk6S3FtBJ1tpXIjXmX
	ciBYnAZY0qGD4ZQIkCLWcwAEWqxk4q8uBug5SrWa8D2EquSADnySre/K1/JjVrK76PRH
	wvPIMISVpGOj8zwoWSxh4Sv/TnaSE1TWOjdiCn+Dzdteheaq5ZSbOErD4ec0PLbvQnev
	bHzj4NtUFRK6yfg10YnlNDL4q01PrSjmsJchOjsUMHYwxMmM9faPDOyYkLsvOJDn93jd
	qA== 
Received: from rkfdhc2.woodward.com ([10.1.100.159])
	by COIL-PMSGA1.woodward.com with ESMTP id 2q4105ksfs-1
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 11:58:19 -0600
Received: from KempHC2.woodward.com (10.25.100.52) by rkfdhc2.woodward.com
	(10.1.100.159) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Mon, 21 Jan 2019 11:58:03 -0600
Received: from KempMail2.woodward.com ([169.254.2.151]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi; Mon, 21 Jan 2019 18:58:02
	+0100
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 18:58:00 +0100
Thread-Topic: [yocto] Community support for any Yocto release
Thread-Index: AdSxstjV1kgYXCh0R1+jFybsvgf2ag==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF524776C280@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=982 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1901210140
Subject: Re: Community support for any Yocto release
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
X-List-Received-Date: Mon, 21 Jan 2019 17:58:20 -0000
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

PiBIaSBBbGwsDQo+IEZvciBob3cgbWFueSB5ZWFycyB5b2N0byBjb21tdW5pdHkgb2ZmaWNpYWxs
eSBzdXBwb3J0IGFueSBZb2N0byANCj4gcmVsZWFzZT8gKFRoaXMgaW5jbHVkZXMgbGlrZSBidWcg
Zml4ZXMsIENWRSBmaXhlcywgZW5oYW5jZW1lbnRzLCBldGMgZXRjKSBGb3IgZXhhbXBsZSwgdGhl
IGxhdGVzdCByZWxlYXNlIGhhcHBlbmVkIG9uIDExLzE1LzIwMTggKFlvY3RvIDIuNiksIHNvIGhv
dyBsb25nIHRoaXMgd2lsbCBiZSBzdXBwb3J0ZWQgYnkgY29tbXVuaXR5Pw0KPiBTb3JyeSwgaWYg
dGhpcyBpbmZvcm1hdGlvbiBpcyBhbHJlYWR5IHByZXNlbnQgb24gc29tZSB3aWtpIHBhZ2UsIGJ1
dCBJIGFtIG5vdCBhYmxlIHRvIGZpbmQgaXQuIFNvIHBvaW50ZXIgdG8gdGhhdCB3aWtpIHBhZ2Ug
d2lsbCByZWFsbHkgaGVscC4NCj4gUmVnYXJkcywNCj4gR2F1cmFuZyBTaGFzdHJpDQoNCmh0dHBz
Oi8vd2lraS55b2N0b3Byb2plY3Qub3JnL3dpa2kvRnJlcXVlbnRseV9Bc2tlZF9SZWxlYXNlX0Vu
Z2luZWVyaW5nX1F1ZXN0aW9ucyNIb3dfbG9uZ19hcmVfcG9pbnRfcmVsZWFzZXNfc3VwcG9ydGVk
IA0KDQpCZXN0IHJlZ2FyZHMsDQpMdWthc3ogWmVtbGENCgoqKioKVGhlIGluZm9ybWF0aW9uIGlu
IHRoaXMgZW1haWwgaXMgY29uZmlkZW50aWFsIGFuZCBpbnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBp
bmRpdmlkdWFsIG9yIGVudGl0eSB0byB3aG9tIGl0IGlzIGFkZHJlc3NlZC7CoMKgSWYgeW91IGhh
dmUgcmVjZWl2ZWQgdGhpcyBlbWFpbCBpbiBlcnJvciBwbGVhc2Ugbm90aWZ5IHRoZSBzZW5kZXIg
YnkgcmV0dXJuIGUtbWFpbCwgZGVsZXRlIHRoaXMgZW1haWwsIGFuZCByZWZyYWluIGZyb20gYW55
IGRpc2Nsb3N1cmUgb3IgYWN0aW9uIGJhc2VkIG9uIHRoZSBpbmZvcm1hdGlvbi4KKioqCg==

