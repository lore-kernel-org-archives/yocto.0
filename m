Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2C54E00726; Wed, 22 Aug 2018 06:58:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.153.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from esa3.dell-outbound.iphmx.com (esa3.dell-outbound.iphmx.com
	[68.232.153.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 912C1E00519
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 06:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1534946314; x=1566482314;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-transfer-encoding:mime-version;
	bh=leWD65OZFg7En+EOShb3GkIl2qYVwSmu/t5nM3H12VA=;
	b=FQlKL2NA7kkMQqV1DFXjS1j7m/1Ku6s9fEgEC7fgMrXEQxQrh83vLxmc
	uEfI9fHWpXxM3y4gOM82lZcybJfKlknUHiVd9tt2llCIzsSWXqfWC0fnw
	ymM1CP/G8Wu9itN2XrWTSaA2oQsjJ32d08Q6WXzdLx0/nNCrGe85mc1VI I=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HSBwCda31bhyeV50NaHAEBAQQBAQo?=
	=?us-ascii?q?BAYUzKAqDZohsi0aCDYM9kmGBeguEbAIXgnAhNRcBAgEBAgEBAgEBAhABAQE?=
	=?us-ascii?q?KCwkIKS+CNSKCYQEBAQMBEhERRQULAgEIGgImAgICRRABAQQOBQgagwCBegi?=
	=?us-ascii?q?YdIlXAQEBbYEuimeBC4gRgheDJn6FFSMTgjSCVwKHdJMgBwKPYB+BPocnhVe?=
	=?us-ascii?q?TFQIEAgQFAhSBQgF3gRJwgzmCM44gb44RgRwBAQ?=
X-IPAS-Result: =?us-ascii?q?A2HSBwCda31bhyeV50NaHAEBAQQBAQoBAYUzKAqDZohsi?=
	=?us-ascii?q?0aCDYM9kmGBeguEbAIXgnAhNRcBAgEBAgEBAgEBAhABAQEKCwkIKS+CNSKCY?=
	=?us-ascii?q?QEBAQMBEhERRQULAgEIGgImAgICRRABAQQOBQgagwCBegiYdIlXAQEBbYEui?=
	=?us-ascii?q?meBC4gRgheDJn6FFSMTgjSCVwKHdJMgBwKPYB+BPocnhVeTFQIEAgQFAhSBQ?=
	=?us-ascii?q?gF3gRJwgzmCM44gb44RgRwBAQ?=
Received: from mx0a-00154901.pphosted.com ([67.231.149.39])
	by esa3.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	22 Aug 2018 08:58:33 -0500
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w7MDwCtU101675
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 09:58:39 -0400
Received: from esa2.dell-outbound2.iphmx.com (esa2.dell-outbound2.iphmx.com
	[68.232.153.202])
	by mx0b-00154901.pphosted.com with ESMTP id 2m0vq13n6t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 09:58:39 -0400
From: <Jack.Fewx@dell.com>
Received: from ausxipps301.us.dell.com ([143.166.148.223])
	by esa2.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	22 Aug 2018 19:57:58 +0600
X-LoopCount0: from 10.166.132.133
X-IronPort-AV: E=Sophos;i="5.53,274,1531803600"; d="scan'208";a="213399153"
To: <alex.kanavin@gmail.com>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQBa03cAAABmVBA=
Date: Wed, 22 Aug 2018 13:58:36 +0000
Message-ID: <6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
In-Reply-To: <CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: Internal Use 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiIxYzk2M2E4Zi1lZDRmLTRlNGQtYmE3My02Y2E5NDUwZTkyYzYiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJJbnRlcm5hbCBVc2UifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W3sidmFsdWUiOiJObyJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNi4yLjExLjAiLCJUcnVzdGVkTGFiZWxIYXNoIjoiUTJGa2N6Nm9hcGh2NGZHZ05xTmZUTmo4eDI4Y2pGTitGS3kydmZNZlIrZz0ifQ==
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.18.86]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-22_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=818 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1808220143
X-Mailman-Approved-At: Wed, 22 Aug 2018 07:26:52 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo] Pseudo 1.8+ xattr sqlite corruption
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
X-List-Received-Date: Wed, 22 Aug 2018 13:58:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVsbCAtIEludGVybmFsIFVzZSAtIENvbmZpZGVudGlhbCAgDQoNCj4gMjAxOC0wOC0yMCAyMDo0
NSBHTVQrMDI6MDAgIDxKYWNrLkZld3hAZGVsbC5jb20+Og0KPj4gV2UgYXJlIGVuY291bnRlcmlu
ZyBhIGJ1aWxkIHByb2JsZW0gYWZ0ZXIgbWlncmF0aW5nIHRvIFBva3kgMi4zIGFuZCBQc2V1ZG8g
MS44LjEsIGFuZCBuZWVkIGhlbHAgdG8gcmVzb2x2ZSB0aGlzLg0KPj4gSXQgaXMgaGFtcGVyaW5n
IG91ciBkZXZlbG9wbWVudCBlZmZvcnRzLCBmb3JjaW5nIHVzIHRvIHJlYnVpbGQgaW1hZ2VzIGZy
ZXF1ZW50bHkuDQo+Pg0KPj4gQmFja2dyb3VuZDoNCj4+IE91ciBidWlsZCBhcHBsaWVzIFNFTGlu
dXggZmlsZSBjb250ZXh0cywgZHVyaW5nIGJ1aWxkIHRpbWUgc2luY2Ugb3VyIA0KPj4gcm9vdGZz
IGlzIHJlYWQtb25seSBJbiBQb2t5IDIuMCwgdXNpbmcgUHNldWRvIDEuNi4yIHRoaXMgd29ya3Mg
DQo+PiBwZXJmZWN0bHkgMTAwJSBvZiB0aGUgdGltZQ0KDQo+IFBzZXVkbyBpcyBub3QgYW4gaW50
ZWdyYWwgcGFydCBvZiBwb2t5LCBhbmQgY29tZXMgdmlhIGEgcmVjaXBlIGJ1aWxkIGxpa2UgYW55
dGhpbmcgZWxzZS4gWW91IGNhbiBwbGF5IHdpdGggdGhhdCByZWNpcGUsIGFuZCBlc3RhYmxpc2gg
d2hpY2ggY29tbWl0IGluIHBzZXVkbydzIHVwc3RyZWFtIGdpdCByZXBvIGJyb2tlIHRoaXMuIEFs
c28gMi4zIGlzIGJldHRlciB0aGFuIDIuMCBidXQgc3RpbGwga2luZCBvZiBvbGQuIERvIHRyeSB0
aGlzIG9uIHRoZSBsYXRlc3QgeW9jdG8gcmVsZWFzZSwgb3IgZXZlbiBvbiB0aGUgbWFzdGVyIGJy
YW5jaC4NCg0KPiBBbGV4DQoNCkkgc2hvdWxkIGFkZCB0aGF0IHRoZSBzYW1lIHByb2JsZW0gZXhp
c3RzIGluIFBva3kgMi41LCBhbmQgdG9wIG9mIFBzZXVkbyBnaXQgcmVwby4gIFRoZSBwcm9ibGVt
IHdhcyBpbnRyb2R1Y2VkLCBiZXN0IEkgY2FuIHRlbGwsIHdhcyB3aGVuIHRoZSBlbnRpcmUgUHNl
dWRvIGRhdGFiYXNlIHN0cnVjdHVyZSB3YXMgcmV3cml0dGVuLiAgQXMgYSByZXN1bHQgb2YgdGhl
IG1ham9yIG92ZXJoYXVsIG1lc3Npbmcgd2l0aCBwYXRjaGVzIGlzIHByb2JsZW1hdGljIHRvIGlt
cG9zc2libGUuDQoNCklmIFBzZXVkbyBpcyBub3QgYSBwYXJ0IG9mIFBva3kgcHJvcGVyLCB5ZXQg
aXMgYSBjb21wbGV0ZWx5IGludGVncmFsIHBhcnQgb2YgdGhlIGJ1aWxkLCBpcyB0aGVyZSBhIGJl
dHRlciBwbGFjZSB0byBmaWVsZCB0aGlzIHF1ZXN0aW9uPw0KDQpKYWNrDQo=

