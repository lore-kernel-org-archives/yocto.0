Return-Path: <Lukasz.Zemla@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 805ADE00D3A; Thu,  2 May 2019 13:09:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [204.27.169.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from Mail4.woodward.com (mail4.woodward.com [204.27.169.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BF25E00BAA
	for <yocto@yoctoproject.org>; Thu,  2 May 2019 13:09:53 -0700 (PDT)
Received: from pps.filterd (COIL-PMSGA1.woodward.com [127.0.0.1])
	by COIL-PMSGA1.woodward.com (8.16.0.27/8.16.0.27) with SMTP id
	x42K6isF010826
	for <yocto@yoctoproject.org>; Thu, 2 May 2019 15:09:53 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=woodward.com;
	h=from : to : date :
	subject : message-id : content-type : content-transfer-encoding :
	mime-version; s=20190114Woodward;
	bh=Mg9iUgn9CeW4+UrqrfcreOXA0GmLf3ooDbzibrkQIV4=;
	b=FSB5tTWXSEeEUz5n65QdlKcUHLR8AYDt28zDIvrroXrLUtmDWw9OHGSx0msTMDug897s
	3cS1xwuL38Pwfol9X3oXbZkEqg08YjNm1+gxBvY16F5AnGjcLz06bjXhTbuJYViJtyrw
	X8zzfk7rR7Ai99PGzqny95PcUaFFAtSSi5qf9sxxAqxzeyrYzuLCzY8qTgrlSM04MHEo
	wXr7+TgtBW2sJr3GcZf2nOjcqduJiX/eJ7CbsjUD2ywgEbhvU2DpDmb9ZUuJjDvQkqDA
	3zLZClbtg4QQYE5IF2rLFoT9oCypFmasHi7cPuyjw2EunSB69AE1nUw6/+ormwZ1x/E1
	qw== 
Received: from coil-exmb1.woodward.com ([10.51.100.64])
	by COIL-PMSGA1.woodward.com with ESMTP id 2s878080f3-15
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 02 May 2019 15:09:53 -0500
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb1.woodward.com
	(10.51.100.64) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
	Thu, 2 May 2019 15:08:09 -0500
Received: from KempMail2.woodward.com ([169.254.2.201]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Thu, 2 May 2019 22:08:07 +0200
From: Lukasz Zemla <Lukasz.Zemla@woodward.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Date: Thu, 2 May 2019 22:08:05 +0200
Thread-Topic: [yocto] System service
Thread-Index: AdUBIre0F3PDfqTHS0CuWZm8zQGYmQ==
Message-ID: <CE2E43470FE5444A811B580382FE5EDF55CB10235D@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=533 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905020126
Subject: Re: System service
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
X-List-Received-Date: Thu, 02 May 2019 20:09:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1cnNkYXksIE1heSAwMiwgMjAxOSA4OjE1IFBNLCBIZW5yaWsgTGluZGJsb20gd3JvdGU6
DQo+Pj4gRklMRVNfJHtQTn0gKz0gIiR7c3lzdGVtZF91bml0ZGlyfSINCj4NCj4gVGhpcyBsaW5l
IGlzIHJlZHVuZGFudCwgQUZBSUssIHNpbmNlIHN5c3RlbWQuYmJjbGFzcyB3aWxsIGhhbmRsZSAN
Cj4gcGFja2FnaW5nIGZvciB5b3UsIGFzc3VtaW5nIHlvdSBpbnN0YWxsIHRoZSBzZXJ2aWNlIGZp
bGVzIHRoYXQgeW91IA0KPiBhZHZlcnRpc2UgaW4gU1lTVEVNRF9TRVJWSUNFXyR7UE59LiBIb3dl
dmVyLCBhcyBJJ20gd3JpdGluZyB0aGlzIGZyb20gDQo+IG1lbW9yeSwgSSByZWNvbW1lbmQgeW91
IHNraW0gdGhyb3VnaCB0aGUgY2xhc3MgZGVmaW5pdGlvbiBhbmQgY2hlY2sgDQo+IGZvciBmdXJ0
aGVyIGRldGFpbHMgdGhlcmUuDQoNCkkgY29uZmlybSAtIHRoaXMgbGluZSBpcyBub3QgcmVxdWly
ZWQgKGF0IGxlYXN0IGF0IFlvY3RvIDIuNikuDQoNCkJlc3QgcmVnYXJkcywNCkx1a2FzeiBaZW1s
YQ0K

