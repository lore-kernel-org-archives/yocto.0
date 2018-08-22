Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFE45E0079D; Wed, 22 Aug 2018 07:54:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.153.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from esa7.dell-outbound.iphmx.com (esa7.dell-outbound.iphmx.com
	[68.232.153.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EA8FE00566
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 07:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1534949672; x=1566485672;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-transfer-encoding:mime-version;
	bh=58LhKGtR1i7b9CxkDX6qaBHdC6nHTAJQvIvTNlvxIg8=;
	b=RfaIVc0C5Dc3aPcTIlevJRrUUVXccPjOHN/uTGt1fOpLSX/H671FLCEm
	n/5VNmQSOysHW0XDnREYIxCEEf+ZTYsGbRjmgZw9hZzdFIUfr6iWoE2No
	P81CXqqR2HOEx5PA95E+DvHVbdTUEYpnZnF5lhB7/RodJn17qJs+u8OGl A=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GVBwAOeX1bhyWd50NaHAEBAQQBAQo?=
	=?us-ascii?q?BAYUzKAqDZohsi0WCDYF2gUeFFo1LgXoLhGwCF4JwITYWAQIBAQIBAQIBAQI?=
	=?us-ascii?q?QAQEBCgsJCCkvgjUigmEBAQEBAgESERFFBQsCAQgaAiYCAgIfJhABAQQBDQU?=
	=?us-ascii?q?IGoMAgWoDDQiZHYlXAQEBbYEuhycNgzGBC4gRgheDJkk1glaCPyOCR4JXAod?=
	=?us-ascii?q?0EYZAjCQrBwKMWIMIH4E+hyeFV4t3hx4CBAIEBQIUgUgEboEScIM5gjOOIG+?=
	=?us-ascii?q?OFYEcAQE?=
X-IPAS-Result: =?us-ascii?q?A2GVBwAOeX1bhyWd50NaHAEBAQQBAQoBAYUzKAqDZohsi?=
	=?us-ascii?q?0WCDYF2gUeFFo1LgXoLhGwCF4JwITYWAQIBAQIBAQIBAQIQAQEBCgsJCCkvg?=
	=?us-ascii?q?jUigmEBAQEBAgESERFFBQsCAQgaAiYCAgIfJhABAQQBDQUIGoMAgWoDDQiZH?=
	=?us-ascii?q?YlXAQEBbYEuhycNgzGBC4gRgheDJkk1glaCPyOCR4JXAod0EYZAjCQrBwKMW?=
	=?us-ascii?q?IMIH4E+hyeFV4t3hx4CBAIEBQIUgUgEboEScIM5gjOOIG+OFYEcAQE?=
Received: from mx0b-00154901.pphosted.com ([67.231.157.37])
	by esa7.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	22 Aug 2018 09:54:10 -0500
Received: from pps.filterd (m0089483.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w7MEmO29131192
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 10:54:15 -0400
Received: from esa1.dell-outbound2.iphmx.com (esa1.dell-outbound2.iphmx.com
	[68.232.153.201])
	by mx0b-00154901.pphosted.com with ESMTP id 2m14hesq4v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 10:54:15 -0400
From: <Jack.Fewx@dell.com>
Received: from ausxipps310.us.dell.com ([143.166.148.211])
	by esa1.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	22 Aug 2018 20:54:12 +0600
X-LoopCount0: from 10.166.132.127
X-IronPort-AV: E=Sophos;i="5.53,274,1531803600"; d="scan'208";a="231957112"
To: <jpewhacker@gmail.com>, <alex.kanavin@gmail.com>, <seebs@seebs.net>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQBa03cAAABmVBAADCzFgAAKVFJg
Date: Wed, 22 Aug 2018 14:54:02 +0000
Message-ID: <0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
In-Reply-To: <ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: Internal Use 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiI0MTA5NWY1NC1kNGQ1LTQ4MGUtOTUwMi1jYzBmMDI0YjM1MGEiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJJbnRlcm5hbCBVc2UifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W3sidmFsdWUiOiJObyJ9XX1dfSwiU3ViamVjdExhYmVscyI6W10sIlRNQ1ZlcnNpb24iOiIxNi4yLjExLjAiLCJUcnVzdGVkTGFiZWxIYXNoIjoidlJcL2pPTytNcFNNeSs5VG9ZaWo2VVB5YVNPYU1IY2ppSHFKcnQ0cDZSK289In0=
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-22_07:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1808220152
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
X-List-Received-Date: Wed, 22 Aug 2018 14:54:43 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RGVsbCAtIEludGVybmFsIFVzZSAtIENvbmZpZGVudGlhbCAgDQoNCj4gRGVsbCAtIEludGVybmFs
IFVzZSAtIENvbmZpZGVudGlhbA0KPiANCj4gPiAyMDE4LTA4LTIwIDIwOjQ1IEdNVCswMjowMCAg
PEphY2suRmV3eEBkZWxsLmNvbT46DQo+ID4gPiBXZSBhcmUgZW5jb3VudGVyaW5nIGEgYnVpbGQg
cHJvYmxlbSBhZnRlciBtaWdyYXRpbmcgdG8gUG9reSAyLjMgDQo+ID4gPiBhbmQgUHNldWRvIDEu
OC4xLCBhbmQgbmVlZCBoZWxwIHRvIHJlc29sdmUgdGhpcy4NCj4gPiA+IEl0IGlzIGhhbXBlcmlu
ZyBvdXIgZGV2ZWxvcG1lbnQgZWZmb3J0cywgZm9yY2luZyB1cyB0byByZWJ1aWxkIA0KPiA+ID4g
aW1hZ2VzIGZyZXF1ZW50bHkuDQo+ID4gPiANCj4gPiA+IEJhY2tncm91bmQ6DQo+ID4gPiBPdXIg
YnVpbGQgYXBwbGllcyBTRUxpbnV4IGZpbGUgY29udGV4dHMsIGR1cmluZyBidWlsZCB0aW1lIHNp
bmNlIA0KPiA+ID4gb3VyIHJvb3RmcyBpcyByZWFkLW9ubHkgSW4gUG9reSAyLjAsIHVzaW5nIFBz
ZXVkbyAxLjYuMiB0aGlzIHdvcmtzIA0KPiA+ID4gcGVyZmVjdGx5IDEwMCUgb2YgdGhlIHRpbWUN
Cj4gPiBQc2V1ZG8gaXMgbm90IGFuIGludGVncmFsIHBhcnQgb2YgcG9reSwgYW5kIGNvbWVzIHZp
YSBhIHJlY2lwZSBidWlsZCANCj4gPiBsaWtlIGFueXRoaW5nIGVsc2UuIFlvdSBjYW4gcGxheSB3
aXRoIHRoYXQgcmVjaXBlLCBhbmQgZXN0YWJsaXNoIA0KPiA+IHdoaWNoIGNvbW1pdCBpbiBwc2V1
ZG8ncyB1cHN0cmVhbSBnaXQgcmVwbyBicm9rZSB0aGlzLg0KPiA+IEFsc28gMi4zIGlzIGJldHRl
ciB0aGFuIDIuMCBidXQgc3RpbGwga2luZCBvZiBvbGQuIERvIHRyeSB0aGlzIG9uIA0KPiA+IHRo
ZSBsYXRlc3QgeW9jdG8gcmVsZWFzZSwgb3IgZXZlbiBvbiB0aGUgbWFzdGVyIGJyYW5jaC4NCj4g
PiBBbGV4DQo+IA0KPiBJIHNob3VsZCBhZGQgdGhhdCB0aGUgc2FtZSBwcm9ibGVtIGV4aXN0cyBp
biBQb2t5IDIuNSwgYW5kIHRvcCBvZiANCj4gUHNldWRvIGdpdCByZXBvLiAgVGhlIHByb2JsZW0g
d2FzIGludHJvZHVjZWQsIGJlc3QgSSBjYW4gdGVsbCwgd2FzIA0KPiB3aGVuIHRoZSBlbnRpcmUg
UHNldWRvIGRhdGFiYXNlIHN0cnVjdHVyZSB3YXMgcmV3cml0dGVuLiAgQXMgYSByZXN1bHQgDQo+
IG9mIHRoZSBtYWpvciBvdmVyaGF1bCBtZXNzaW5nIHdpdGggcGF0Y2hlcyBpcyBwcm9ibGVtYXRp
YyB0byANCj4gaW1wb3NzaWJsZS4NCj4gDQo+IElmIFBzZXVkbyBpcyBub3QgYSBwYXJ0IG9mIFBv
a3kgcHJvcGVyLCB5ZXQgaXMgYSBjb21wbGV0ZWx5IGludGVncmFsIA0KPiBwYXJ0IG9mIHRoZSBi
dWlsZCwgaXMgdGhlcmUgYSBiZXR0ZXIgcGxhY2UgdG8gZmllbGQgdGhpcyBxdWVzdGlvbj8NCj4g
DQoNCj4gT3V0IG9mIGN1cmlvc2l0eSwgd2hhdCBpcyB0aGUgZmFpbHVyZSBtb2RlIGhlcmU/IEFy
ZSB0aGVyZSBhbnkgaW5kaWNhdGlvbnMgb2YgYSBmYWlsZWQgYnVpbGQgaW4gdGhlIG91dHB1dCwg
b3IgZG8geW91IGhhdmUgdG8gbG9vayBhdCB0aGUgc3FsaXRlIGRhdGFiYXNlIHRvIHRlbGwgc29t
ZXRoaW5nIGlzIHdyb25nPw0KDQo+IEphY2sNCj4gLS0NCj4gSm9zaHVhIFdhdHQgPEpQRVdoYWNr
ZXJAZ21haWwuY29tPg0KDQpTbyBmYWlsdXJlIG1vZGUgaXMgdGhlIHRhcmdldCBmaWxlc3lzdGVt
IGlzIGRldm9pZCBvZiBTRUxpbnV4IGZpbGUgY29udGV4dHMsIGFsbCBmaWxlcyBhcmUgdW5sYWJl
bGVkX3QsIHdoaWNoIHByZXR0eSBtdWNoIGJyZWFrcyBldmVyeXRoaW5nIGluIGVuZm9yY2luZyBt
b2RlLiAgU28gd2hhdGV2ZXIgdGhlIGNvcnJ1cHRpb24gY2F1c2UvZWZmZWN0IGluIHRoZSBQc3Vl
ZG8gZGF0YWJhc2UsIHRoZSBlbmQgcmVzdWx0IGlzIHdoZW4gTWtzcXVhc2hmcyBydW5zIGl0IGNh
bid0IGdldCBsYWJlbHMgZm9yIHRoZSBmaWxlcy4NCg0KVGhlcmUgaXMgbm8gb2J2aW91cyBkaWZm
ZXJlbmNlcyBpbiB0aGUgcHNldWRvLmxvZyBmaWxlcyBiZXR3ZWVuIGdvb2QgYW5kIGJhZCBydW5z
LCBzbyBpdCdzIG5vdGhpbmcgUHNldWRvIGlzIHNjcmVhbWluZyBhYm91dC4NCg0KSSBqdXN0IGZv
dW5kIHRoZSBQc2V1ZG8gZGVidWcgb3B0aW9uIGZsYWdzLCBhbmQgaG93IHRvIGluc2VydCB0aGVt
IHVzaW5nIEZBS0VST09URU5WICs9ICJQU0VVRE9fREVCVUc9RHgiLCBzbyBJJ20gcnVubmluZyBi
dWlsZHMgdHJ5aW5nIHRvIGdldCBnb29kIGFuZCBiYWQgb25lcyB3aXRoIHRoZSBkZWJ1ZyBsb2dz
Lg0KDQpKYWNrDQo=

