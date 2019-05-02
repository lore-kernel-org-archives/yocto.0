Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F702E00D3F; Thu,  2 May 2019 13:06:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7219BE00D3A
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 13:06:08 -0700 (PDT)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x42K2pXf008104
	for <yocto@yoctoproject.org>; Thu, 2 May 2019 15:06:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : references : in-reply-to :
	content-transfer-encoding : mime-version : content-type;
	s=20190114Woodward; bh=htlGEvE3amnIekr6+9l+fQHuzWvQFkiFoziT311wqrM=;
	b=yy9A/bdlIUKkpGka7SsE16kWwuWDM+R0R+F1VO4eEjBaVOjtC39vCFFRGjiMCMlYHRQq
	DznKTT+vwbXZx0FCsD93IlRsLsCJAMdHLL0NghGTKhpHGo1KAbJna79c2zyrUnbaeplX
	GG21lj+nxVZ/Q/dzoa1K7vggKC0lsdokMkdwqjuE4vTivbs9QQBAngtMOnDNAbuXyCnS
	B3dX8/YYZ4udNJwRPoOTH3HAee4TYDX/yr3jHUbbKzEpAsDQ17ZsLPVIV3KtbzaMZ6/2
	F05MMXrYQAIf/TYYEpHsfx1gPl8ZH4qnZUSLTQoolY/epPMx0W7vm37MD+DAAflWP5Iv
	4g== 
Received: from rkfdhc1.woodward.com ([10.1.100.158])
	by COIL-PMSGA1.woodward.com with ESMTP id 2s8780807n-25
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 15:06:07 -0500
Received: from KempHC2.woodward.com (10.25.100.52) by RKFDHC1.woodward.com
	(10.1.100.158) with Microsoft SMTP Server (TLS) id 8.3.485.1;
	Thu, 2 May 2019 15:02:47 -0500
Received: from KempMail2.woodward.com ([169.254.2.201]) by
	KempHC2.woodward.com ([172.20.1.2]) with mapi;
	Thu, 2 May 2019 22:02:46 +0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Date: Thu, 2 May 2019 22:02:43 +0200
Thread-Topic: [EXTERNAL] Re: [yocto] System service
Thread-Index: AdUBEyAA/0jdp9TFSbCYeQRlsJJVEQADmTXA
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55CB10235C@KEMPMAIL2.woodward.com>
References: <CAA=hcWS8L-dByznaDUALrZ2_Qt_Q0mXJ6uuGoEyQ=EoC2HiHUA@mail.gmail.com>
	<CAHSUxjR=gitPU=663Df+3=wZ2gqU1vDbt1viKmLCrA7Q9MWxUA@mail.gmail.com>
	<CAOgGgERZz36zceTjoNUShi-vjn9VC+Mvjw339xzVtTDHMp2MCA@mail.gmail.com>
In-Reply-To: <CAOgGgERZz36zceTjoNUShi-vjn9VC+Mvjw339xzVtTDHMp2MCA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=634 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905020125
Subject: Re: [EXTERNAL] Re: System service
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
X-List-Received-Date: Thu, 02 May 2019 20:06:09 -0000
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"

T24gVGh1cnNkYXksIE1heSAwMiwgMjAxOSA4OjE1IFBNLCBIZW5yaWsgTGluZGJsb20gd3JvdGU6
DQo+Pj4gRklMRVNfJHtQTn0gKz0gIiR7c3lzdGVtZF91bml0ZGlyfSINCj4NCj4gVGhpcyBsaW5l
IGlzIHJlZHVuZGFudCwgQUZBSUssIHNpbmNlIHN5c3RlbWQuYmJjbGFzcyB3aWxsIGhhbmRsZQ0K
PiBwYWNrYWdpbmcgZm9yIHlvdSwgYXNzdW1pbmcgeW91IGluc3RhbGwgdGhlIHNlcnZpY2UgZmls
ZXMgdGhhdCB5b3UNCj4gYWR2ZXJ0aXNlIGluIFNZU1RFTURfU0VSVklDRV8ke1BOfS4gSG93ZXZl
ciwgYXMgSSdtIHdyaXRpbmcgdGhpcyBmcm9tDQo+IG1lbW9yeSwgSSByZWNvbW1lbmQgeW91IHNr
aW0gdGhyb3VnaCB0aGUgY2xhc3MgZGVmaW5pdGlvbiBhbmQgY2hlY2sNCj4gZm9yIGZ1cnRoZXIg
ZGV0YWlscyB0aGVyZS4NCg0KSSBjb25maXJtIC0gdGhpcyBsaW5lIGlzIG5vdCByZXF1aXJlZCAo
YXQgbGVhc3QgYXQgWW9jdG8gMi42KS4NCg0KQmVzdCByZWdhcmRzLA0KTHVrYXN6IFplbWxhDQoK
KioqClRoZSBpbmZvcm1hdGlvbiBpbiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQgaW50
ZW5kZWQgc29sZWx5IGZvciB0aGUgaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hvbSBpdCBpcyBh
ZGRyZXNzZWQuwqDCoElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4gZXJyb3IgcGxl
YXNlIG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJldHVybiBlLW1haWwsIGRlbGV0ZSB0aGlzIGVtYWls
LCBhbmQgcmVmcmFpbiBmcm9tIGFueSBkaXNjbG9zdXJlIG9yIGFjdGlvbiBiYXNlZCBvbiB0aGUg
aW5mb3JtYXRpb24uCioqKgo=

