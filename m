Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83270E00BA3; Tue, 18 Sep 2018 13:28:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.149.218 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Sep 2018 13:28:05 PDT
Received: from esa8.dell-outbound.iphmx.com (esa8.dell-outbound.iphmx.com
	[68.232.149.218])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78D04E00B6F
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 13:28:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1537302485; x=1568838485;
	h=from:to:cc:subject:date:message-id:references:
	content-transfer-encoding:mime-version;
	bh=DzdHKCM3fsQLFAnk62TiWjh3afqJbnH2q4uWQJrwxKU=;
	b=TFnJfzuZ6IlBVh3tAThJzMPqsUAUIexAcxs0yvhAPiXvpxsyV9gypOq7
	NKs7BFctUXgaS5IC0r1BUkPdrV2Fk4GMfeDdrhoFS7/DFmoCih8o3np6h
	0my/oxugwfyCA8unjlw9eJOfWjBtHXYH6LiKhkeJ8T55oGQBRqfjFUPKT E=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2GOAADQXqFbhyeV50NcGwEBAQEDAQE?=
	=?us-ascii?q?BCQEBAYFRgV2CDigKg2iIdItQgg2DPZMPgXoLhGwZgxAhNRcBAwEBAgEBAgE?=
	=?us-ascii?q?BAhABAQEVCQgpL4I1IoJiAQEBAQIBEhERRRACAQgYAgImAgICRRACBAENBQg?=
	=?us-ascii?q?agn+BegiaVYlXAQEBbYEuig6BC4ligheDbzWEWBkkBoJkglcCjWiOaQcCkBk?=
	=?us-ascii?q?fgUOHT4YCiGWLXgIEAgQFAhSBQwE1Q4EUcFCCbIIiEQl6AQiNFG+LAQEkgQi?=
	=?us-ascii?q?BHgEB?=
X-IPAS-Result: =?us-ascii?q?A2GOAADQXqFbhyeV50NcGwEBAQEDAQEBCQEBAYFRgV2CD?=
	=?us-ascii?q?igKg2iIdItQgg2DPZMPgXoLhGwZgxAhNRcBAwEBAgEBAgEBAhABAQEVCQgpL?=
	=?us-ascii?q?4I1IoJiAQEBAQIBEhERRRACAQgYAgImAgICRRACBAENBQgagn+BegiaVYlXA?=
	=?us-ascii?q?QEBbYEuig6BC4ligheDbzWEWBkkBoJkglcCjWiOaQcCkBkfgUOHT4YCiGWLX?=
	=?us-ascii?q?gIEAgQFAhSBQwE1Q4EUcFCCbIIiEQl6AQiNFG+LAQEkgQiBHgEB?=
Received: from mx0a-00154901.pphosted.com ([67.231.149.39])
	by esa8.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	18 Sep 2018 15:27:02 -0500
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w8IKMugw009758
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 16:27:02 -0400
Received: from esa3.dell-outbound2.iphmx.com (esa3.dell-outbound2.iphmx.com
	[68.232.154.63])
	by mx0b-00154901.pphosted.com with ESMTP id 2mk2ftt96g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 16:27:02 -0400
From: <Jack.Fewx@dell.com>
Received: from ausc60ps301.us.dell.com ([143.166.148.206])
	by esa3.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	19 Sep 2018 02:26:53 +0600
X-LoopCount0: from 10.166.132.131
X-IronPort-AV: E=Sophos;i="5.53,391,1531803600"; d="scan'208";a="1195750872"
To: <richard.purdie@linuxfoundation.org>, <jpewhacker@gmail.com>,
	<alex.kanavin@gmail.com>, <seebs@seebs.net>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQBa03cAAABmVBAADCzFgAAKVFJg//+1TICAAE9nsP/V3zaw
Date: Tue, 18 Sep 2018 20:26:59 +0000
Message-ID: <767f0527074648f48702fedcdb928152@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: No Restrictions 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiJjYzQ5NmRhZC03NGRiLTRlZWEtYmI0Ni05ZDRlYmJkZGJlNTIiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJObyBSZXN0cmljdGlvbnMifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W119XX0sIlN1YmplY3RMYWJlbHMiOltdLCJUTUNWZXJzaW9uIjoiMTYuMi4xMS4wIiwiVHJ1c3RlZExhYmVsSGFzaCI6IkxwbVBaWkdQaG9Lak85Q1FKQzY0bU4wWmlRWDFGRStiTEdLbjJkUDhkUlk9In0=
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-09-18_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1809180200
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
X-List-Received-Date: Tue, 18 Sep 2018 20:28:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiA+IE9uIFdlZCwgMjAxOC0wOC0yMiBhdCAxNDo1NCArMDAwMCwgSmFjay5GZXd4QGRlbGwuY29t
IHdyb3RlOg0KPiA+ID4gU28gZmFpbHVyZSBtb2RlIGlzIHRoZSB0YXJnZXQgZmlsZXN5c3RlbSBp
cyBkZXZvaWQgb2YgU0VMaW51eCBmaWxlIA0KPiA+ID4gY29udGV4dHMsIGFsbCBmaWxlcyBhcmUg
dW5sYWJlbGVkX3QsIHdoaWNoIHByZXR0eSBtdWNoIGJyZWFrcyANCj4gPiA+IGV2ZXJ5dGhpbmcg
aW4gZW5mb3JjaW5nIG1vZGUuICBTbyB3aGF0ZXZlciB0aGUgY29ycnVwdGlvbiANCj4gPiA+IGNh
dXNlL2VmZmVjdCBpbiB0aGUgUHN1ZWRvIGRhdGFiYXNlLCB0aGUgZW5kIHJlc3VsdCBpcyB3aGVu
IA0KPiA+ID4gTWtzcXVhc2hmcyBydW5zIGl0IGNhbid0IGdldCBsYWJlbHMgZm9yIHRoZSBmaWxl
cy4NCj4gPiA+IA0KPiA+ID4gVGhlcmUgaXMgbm8gb2J2aW91cyBkaWZmZXJlbmNlcyBpbiB0aGUg
cHNldWRvLmxvZyBmaWxlcyBiZXR3ZWVuIGdvb2QgDQo+ID4gPiBhbmQgYmFkIHJ1bnMsIHNvIGl0
J3Mgbm90aGluZyBQc2V1ZG8gaXMgc2NyZWFtaW5nIGFib3V0Lg0KPiA+ID4gDQo+ID4gPiBJIGp1
c3QgZm91bmQgdGhlIFBzZXVkbyBkZWJ1ZyBvcHRpb24gZmxhZ3MsIGFuZCBob3cgdG8gaW5zZXJ0
IHRoZW0gDQo+ID4gPiB1c2luZyBGQUtFUk9PVEVOViArPSAiUFNFVURPX0RFQlVHPUR4Iiwgc28g
SSdtIHJ1bm5pbmcgYnVpbGRzIHRyeWluZyANCj4gPiA+IHRvIGdldCBnb29kIGFuZCBiYWQgb25l
cyB3aXRoIHRoZSBkZWJ1ZyBsb2dzLg0KPiA+DQo+ID4gSXRzIG5vdCBjbGVhciBpZiB5b3UgYWxy
ZWFkeSB0cmllZCB0aGlzIGJ1dCBpZiBub3QsIGl0J2QgcHJvYmFibHkgYmUgd29ydGggdXBkYXRp
bmcgcHNldWRvIHRvIHRoZSBsYXRlc3QgdmVyc2lvbiB0b28sIHNlZSBpZiBpdCB3YXMgc29tZSBi
dWcgd2UgYWxyZWFkeSBhZGRyZXNzZWQgaW4gcHNldWRvLiBJIGtub3cgd2UndmUgaGFkIGEgZmV3
IGNoYWxsZW5nZXMgc3VwcG9ydGluZyB4YXR0cnMgaW4gdGhlcmUuLi4NCj4gPg0KPiA+IENoZWVy
cywNCj4gPg0KPiA+IFJpY2hhcmQNCj4gDQo+IFdlIGhhdmUgYSAiYmxlZWRpbmcgZWRnZSIgdGVz
dCBlbnZpcm9ubWVudCBmb3Igc3RhZ2luZyBvdXIgbmV4dCB1cGdyYWRlcywgYW5kIEkgc2VlIFBv
a3kgMi41LjEganVzdCBkcm9wcGVkLCBzbyBJJ2xsIHNldCB0aGF0IHVwIGFuZCBnaXZlIGl0IGEg
d2hpcmwuIEFuZCBwdWxsIGRvd24gdGhlIHRvcCBvZiB0aGUgUHNldWRvIGdpdCB0cmVlIGFzIHdl
bGwuIFRoZSBvbmx5IGlzc3VlIGlzIHdoYXRldmVyIHBhdGNoIGZpeGVzIHRoaXMsIEkgd2lsbCBu
ZWVkIHRvIGJhY2twb3J0ZWQgaW50byBvdXIgMi4zIGVudmlyb25tZW50LiBUaGUgbmV4dCByZWxl
YXNlIGlzIHN0YWJpbGl6ZWQgb24gMi4zIGZvciBzaGlwbWVudCBzb29uLCBzbyBJIGNhbid0IHlh
bmsgdGhlIHJ1ZyBvdXQgZnJvbSB1bmRlciB0aGF0IG9uZS4gSWYgd2UganVzdCBoYXZlIHRvIGxp
bXAgYWxvbmcgaXQnbGwgYmUgYW5ub3lpbmcsIGJ1dCBub3QgdGhlIGVuZCBvZiB0aGUgd29ybGQg
YXMgd2UgY2FuIGdldCBzb21lIGdvb2QgYnVpbGRzIG91dC4NCj4gDQo+IE91ciAyLjMgZW52aXJv
bm1lbnQgaXMgYmVoYXZpbmcgaXRzZWxmIGFnYWluIGZvciB0aGUgbW9tZW50LCBzbyBpdCB3aWxs
IHRha2UgYSBiaXQgdG8gZ2V0IGRlYnVnIGxvZ3MuIFNvdW5kcyBsaWtlIEkgaGF2ZSBzb21lIGhv
bWV3b3JrIHRvIGRvLCBJJ2xsIGtlZXAgZXZlcnlvbmUgcG9zdGVkLg0KPiANCj4gQW5kIHRoYW5r
cyB0byBhbGwgZm9yIHlvdXIgcXVpY2sgcmVzcG9uc2VzLg0KPiANCj4gSmFjayBGZXd4DQoNClVw
ZGF0ZSEgQWZ0ZXIgcnVubmluZyBhIG51bWJlciBvZiB0ZXN0IGJ1aWxkcyBhbmQgc2VlaW5nIHBh
c3NlcyBhbmQgZmFpbHVyZXMsIEkgZm91bmQgdGhlIHJvb3QgY2F1c2Ugb2Ygb3VyIGlzc3VlLiAg
VGhpcyBvbmUgdG9vayBhIHdoaWxlLg0KDQpUaGUgaW5vZGUgdmFsdWVzIGluIG91ciBidWlsZCBz
eXN0ZW0gZ2V0IHRvbyBsYXJnZS4gIE1lYW5pbmcgdGhleSBleGNlZWQgdGhlIE1BWCB2YWx1ZSBv
ZiBhIFNJR05FRCA2NC1iaXQgaW50ZWdlci4gIEFzIGxvbmcgYXMgdGhleSBhcmUgdW5kZXIgdGhh
dCBsaW1pdCB0aGUgYnVpbGQgaXMgZmluZSwgYXMgc29vbiBhcyB0aGUgc2lnbmVkIHZhbHVlcyBi
ZWNvbWUgIm5lZ2F0aXZlIiBpdCBhbGwgZ2V0cyBzY3Jld2VkIHVwLg0KDQpHb29kIGJ1aWxkIChw
YXRocyByZWRhY3RlZCk6IA0KDQpnZXQteGF0dHI6IHBhdGggJy4uLmltYWdlLzEuMC4wLXIwLjAv
cm9vdGZzL3Zhci9iYWNrdXBzJywgb2xkcGF0aCAnc2VjdXJpdHkuc2VsaW51eCcgWzE2LzE4OV0N
CnJlcXVlc3RlZCB4YXR0ciBuYW1lZCAnc2VjdXJpdHkuc2VsaW51eCcgZm9yIGlubyAxNTczMTA0
NDk2DQpzZXQteGF0dHI6IHBhdGggJy4uLmltYWdlLzEuMC4wLXIwLjAvcm9vdGZzL3Zhci9iYWNr
dXBzJywgb2xkcGF0aCAnc2VjdXJpdHkuc2VsaW51eCcgWzUwLzIyM10NCnRyeWluZyB0byBzZXQg
YSB2YWx1ZSBmb3IgaW5vIDE1NzMxMDQ0OTY6IG5hbWUgaXMgJ3NlY3VyaXR5LnNlbGludXgnIFsx
Ni81MCBieXRlc10sIHZhbHVlIGlzICdzeXN0ZW1fdTpvYmplY3RfcjpiYWNrdXBfc3RvcmVfdCcg
WzMzIGJ5dGVzXS4gRXhpc3Rpbmcgcm93IC0xLg0KDQpnZXQteGF0dHI6IHBhdGggJy4uLmltYWdl
LzEuMC4wLXIwLjAvcm9vdGZzL3Zhci9iYWNrdXBzJywgb2xkcGF0aCAnc2VjdXJpdHkuc2VsaW51
eCcgWzE2LzE4OV0NCnJlcXVlc3RlZCB4YXR0ciBuYW1lZCAnc2VjdXJpdHkuc2VsaW51eCcgZm9y
IGlubyAxNTczMTA0NDk2DQpnb3QgMzMtYnl0ZSByZXN1bHRzOiAnc3lzdGVtX3U6b2JqZWN0X3I6
YmFja3VwX3N0b3JlX3QnDQpnZXQgcmVzdWx0czogJ3N5c3RlbV91Om9iamVjdF9yOmJhY2t1cF9z
dG9yZV90JyAoMzMgYnl0ZXMpDQoNCmxpc3QteGF0dHI6IHBhdGggJy4uLmltYWdlLzEuMC4wLXIw
LjAvcm9vdGZzL3Zhci9iYWNrdXBzJywgb2xkcGF0aCAnJyBbLTEvMTcyXQ0KZ290IDE3IGJ5dGVz
IG9mIHhhdHRycyB0byBsaXN0OiBzZWN1cml0eS5zZWxpbnV4DQoNCkJhZCBidWlsZDoNCg0KZ2V0
LXhhdHRyOiBwYXRoICcuLi5pbWFnZS8xLjAuMC1yMC4wL3Jvb3Rmcy92YXIvYmFja3VwcycsIG9s
ZHBhdGggJ3NlY3VyaXR5LnNlbGludXgnIFsxNi8xODldDQpyZXF1ZXN0ZWQgeGF0dHIgbmFtZWQg
J3NlY3VyaXR5LnNlbGludXgnIGZvciBpbm8gMjk4MzU3MDk0OA0Kc2V0LXhhdHRyOiBwYXRoICcu
Li5pbWFnZS8xLjAuMC1yMC4wL3Jvb3Rmcy92YXIvYmFja3VwcycsIG9sZHBhdGggJ3NlY3VyaXR5
LnNlbGludXgnIFs1MC8yMjNdDQp0cnlpbmcgdG8gc2V0IGEgdmFsdWUgZm9yIGlubyAyOTgzNTcw
OTQ4OiBuYW1lIGlzICdzZWN1cml0eS5zZWxpbnV4JyBbMTYvNTAgYnl0ZXNdLCB2YWx1ZSBpcyAn
c3lzdGVtX3U6b2JqZWN0X3I6YmFja3VwX3N0b3JlX3QnIFszMyBieXRlc10uIEV4aXN0aW5nIHJv
dyAtMS4JDQoNCmdldC14YXR0cjogcGF0aCAnLi4uaW1hZ2UvMS4wLjAtcjAuMC9yb290ZnMvdmFy
L2JhY2t1cHMnLCBvbGRwYXRoICdzZWN1cml0eS5zZWxpbnV4JyBbMTYvMTg5XQ0KcmVxdWVzdGVk
IHhhdHRyIG5hbWVkICdzZWN1cml0eS5zZWxpbnV4JyBmb3IgaW5vIDI5ODM1NzA5NDgNCg0KbGlz
dC14YXR0cjogcGF0aCAnLi4uaW1hZ2UvMS4wLjAtcjAuMC9yb290ZnMvdmFyL2JhY2t1cHMnLCBv
bGRwYXRoICcnIFstMS8xNzJdDQpnb3QgMCBieXRlcyBvZiB4YXR0cnMgdG8gbGlzdDoNCg0KVGhl
IGlub2RlIGNvdW50IGlzIHRoZSBsYXRlciBleGFtcGxlIGlzIHRvbyBncmVhdCwgc28gZXZlcnkg
bG9va3VwIGZhaWxzLCBhbmQgdGhlIHhhdHRyIGlzIHNldCBtdWx0aXBsZSB0aW1lcyBpbiB0aGUg
ZGF0YWJhc2UsIHlldCBjYW4ndCBiZSByZWFkIG91dCBkdXJpbmcgbWtmcy4NCg0KU08uLi4gYW55
IHN1Z2dlc3Rpb25zIGhvdyB0byBtYWtlIHRoZSBpbm9kZXMgaW4gdGhlIGRhdGFiYXNlIGFuIFVO
U0lHTkVEIHZhbHVlPw0K

