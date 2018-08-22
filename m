Return-Path: <Jack.Fewx@dell.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85FD0E00460; Wed, 22 Aug 2018 08:32:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [68.232.153.90 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from esa1.dell-outbound.iphmx.com (esa1.dell-outbound.iphmx.com
	[68.232.153.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1116BE003C1
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 08:32:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=dell.com; i=@dell.com; q=dns/txt; s=smtpout;
	t=1534951969; x=1566487969;
	h=from:to:cc:subject:date:message-id:references:
	in-reply-to:content-transfer-encoding:mime-version;
	bh=MfMYChRJbUjclzBQ4/d6niU/Zmm+aY28P5p1MePUhTM=;
	b=j7qFP1OUQVvRhksUTwuM8qiRy/H1R/pKDw7xHcjaq+tZslCxeSlBjPKm
	r6eG8LzF5U+n3iRbNObW7s6fe2JR4uk2cF7rEkqR3P/d0+Q36dB2cZYCs
	dFlIIKFf5E1X5Ss0xj2UED5kCqlBcslk24VVMlqK7EHt0qlWFRlC9pyzM A=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2HoAwCwgX1bhyWd50NaGgEBAQEBAgE?=
	=?us-ascii?q?BAQEIAQEBAYMlgg4oCoNmiGyLRIINgXaBR5RbC4RsAheCcCE4FAECAQECAQE?=
	=?us-ascii?q?CAQECEAEBAQoLCQgpL4I1IoJhAQEBAQIBEhERRQULAgEIGAICJgICAkUQAgQ?=
	=?us-ascii?q?BDQUIGoMAgXoImTWJVwEBAW2BLoplgQuIEYIXg281hHGDDoJXApsUBwKPYB+?=
	=?us-ascii?q?OPJMVAgQCBAUCFIFYYoEScIM5gjOBAwEIjRRvjGmBLIEcAQE?=
X-IPAS-Result: =?us-ascii?q?A2HoAwCwgX1bhyWd50NaGgEBAQEBAgEBAQEIAQEBAYMlg?=
	=?us-ascii?q?g4oCoNmiGyLRIINgXaBR5RbC4RsAheCcCE4FAECAQECAQECAQECEAEBAQoLC?=
	=?us-ascii?q?QgpL4I1IoJhAQEBAQIBEhERRQULAgEIGAICJgICAkUQAgQBDQUIGoMAgXoIm?=
	=?us-ascii?q?TWJVwEBAW2BLoplgQuIEYIXg281hHGDDoJXApsUBwKPYB+OPJMVAgQCBAUCF?=
	=?us-ascii?q?IFYYoEScIM5gjOBAwEIjRRvjGmBLIEcAQE?=
Received: from mx0b-00154901.pphosted.com ([67.231.157.37])
	by esa1.dell-outbound.iphmx.com with ESMTP/TLS/AES256-SHA256;
	22 Aug 2018 10:32:49 -0500
Received: from pps.filterd (m0144103.ppops.net [127.0.0.1])
	by mx0b-00154901.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w7MFTQFQ140867
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:32:51 -0400
Received: from esa1.dell-outbound2.iphmx.com (esa1.dell-outbound2.iphmx.com
	[68.232.153.201])
	by mx0b-00154901.pphosted.com with ESMTP id 2m0qun54rj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:32:51 -0400
From: <Jack.Fewx@dell.com>
Received: from ausxipps301.us.dell.com ([143.166.148.223])
	by esa1.dell-outbound2.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA256;
	22 Aug 2018 21:32:40 +0600
X-LoopCount0: from 10.166.132.131
X-IronPort-AV: E=Sophos;i="5.53,274,1531803600"; d="scan'208";a="213479504"
To: <richard.purdie@linuxfoundation.org>, <jpewhacker@gmail.com>,
	<alex.kanavin@gmail.com>, <seebs@seebs.net>
Thread-Topic: [yocto] [pseudo] Pseudo 1.8+ xattr sqlite corruption
Thread-Index: AdQ4sn6k0pB0JFSoSnqNizqd3RyNYQBa03cAAABmVBAADCzFgAAKVFJg//+1TICAAE9nsA==
Date: Wed, 22 Aug 2018 15:32:39 +0000
Message-ID: <e6317183c1834c37b8285f74b47e56cd@AUSX13MPC104.AMER.DELL.COM>
References: <6a084eda5fcb4423a647bb998471e26d@AUSX13MPC104.AMER.DELL.COM>
	<CANNYZj8A22yL9VU0Wp3OOXwZU6yR=fQXqeWSfKykDp_kkL6ZGQ@mail.gmail.com>
	<6bdfdff49ca04924979eba1da729d7e1@AUSX13MPC104.AMER.DELL.COM>
	<ca06666cf0377fda72a45581f14a2ba48591dc9b.camel@gmail.com>
	<0c3dff3db46a4a83a73a4ffe1c83535d@AUSX13MPC104.AMER.DELL.COM>
	<340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
In-Reply-To: <340e2fcca899a6691605df89eb89f0e7e7802916.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titusconfig: No Restrictions 04051212
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvIiwiaWQiOiJjYzQ5NmRhZC03NGRiLTRlZWEtYmI0Ni05ZDRlYmJkZGJlNTIiLCJwcm9wcyI6W3sibiI6IkNsYXNzaWZpY2F0aW9uIiwidmFscyI6W3sidmFsdWUiOiJObyBSZXN0cmljdGlvbnMifV19LHsibiI6IlN1YmxhYmVscyIsInZhbHMiOltdfSx7Im4iOiJFeHRlcm5hbENvcnJlc3BvbmRlbmNlIiwidmFscyI6W119XX0sIlN1YmplY3RMYWJlbHMiOltdLCJUTUNWZXJzaW9uIjoiMTYuMi4xMS4wIiwiVHJ1c3RlZExhYmVsSGFzaCI6IkxwbVBaWkdQaG9Lak85Q1FKQzY0bU4wWmlRWDFGRStiTEdLbjJkUDhkUlk9In0=
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.143.242.75]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-08-22_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1808220156
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
X-List-Received-Date: Wed, 22 Aug 2018 15:32:53 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBXZWQsIDIwMTgtMDgtMjIgYXQgMTQ6NTQgKzAwMDAsIEphY2suRmV3eEBkZWxsLmNvbSB3
cm90ZToNCj4gPiBTbyBmYWlsdXJlIG1vZGUgaXMgdGhlIHRhcmdldCBmaWxlc3lzdGVtIGlzIGRl
dm9pZCBvZiBTRUxpbnV4IGZpbGUgDQo+ID4gY29udGV4dHMsIGFsbCBmaWxlcyBhcmUgdW5sYWJl
bGVkX3QsIHdoaWNoIHByZXR0eSBtdWNoIGJyZWFrcyANCj4gPiBldmVyeXRoaW5nIGluIGVuZm9y
Y2luZyBtb2RlLiAgU28gd2hhdGV2ZXIgdGhlIGNvcnJ1cHRpb24gY2F1c2UvZWZmZWN0IA0KPiA+
IGluIHRoZSBQc3VlZG8gZGF0YWJhc2UsIHRoZSBlbmQgcmVzdWx0IGlzIHdoZW4gTWtzcXVhc2hm
cyBydW5zIGl0IA0KPiA+IGNhbid0IGdldCBsYWJlbHMgZm9yIHRoZSBmaWxlcy4NCj4gPiANCj4g
PiBUaGVyZSBpcyBubyBvYnZpb3VzIGRpZmZlcmVuY2VzIGluIHRoZSBwc2V1ZG8ubG9nIGZpbGVz
IGJldHdlZW4gZ29vZCANCj4gPiBhbmQgYmFkIHJ1bnMsIHNvIGl0J3Mgbm90aGluZyBQc2V1ZG8g
aXMgc2NyZWFtaW5nIGFib3V0Lg0KPiA+IA0KPiA+IEkganVzdCBmb3VuZCB0aGUgUHNldWRvIGRl
YnVnIG9wdGlvbiBmbGFncywgYW5kIGhvdyB0byBpbnNlcnQgdGhlbSANCj4gPiB1c2luZyBGQUtF
Uk9PVEVOViArPSAiUFNFVURPX0RFQlVHPUR4Iiwgc28gSSdtIHJ1bm5pbmcgYnVpbGRzIHRyeWlu
ZyANCj4gPiB0byBnZXQgZ29vZCBhbmQgYmFkIG9uZXMgd2l0aCB0aGUgZGVidWcgbG9ncy4NCj4N
Cj4gSXRzIG5vdCBjbGVhciBpZiB5b3UgYWxyZWFkeSB0cmllZCB0aGlzIGJ1dCBpZiBub3QsIGl0
J2QgcHJvYmFibHkgYmUgd29ydGggdXBkYXRpbmcgcHNldWRvIHRvIHRoZSBsYXRlc3QgdmVyc2lv
biB0b28sIHNlZSBpZiBpdCB3YXMgc29tZSBidWcgd2UgYWxyZWFkeSBhZGRyZXNzZWQgaW4gcHNl
dWRvLiBJIGtub3cgd2UndmUgaGFkIGEgZmV3IGNoYWxsZW5nZXMgc3VwcG9ydGluZyB4YXR0cnMg
aW4gdGhlcmUuLi4NCj4NCj4gQ2hlZXJzLA0KPg0KPiBSaWNoYXJkDQoNCldlIGhhdmUgYSAiYmxl
ZWRpbmcgZWRnZSIgdGVzdCBlbnZpcm9ubWVudCBmb3Igc3RhZ2luZyBvdXIgbmV4dCB1cGdyYWRl
cywgYW5kIEkgc2VlIFBva3kgMi41LjEganVzdCBkcm9wcGVkLCBzbyBJJ2xsIHNldCB0aGF0IHVw
IGFuZCBnaXZlIGl0IGEgd2hpcmwuIEFuZCBwdWxsIGRvd24gdGhlIHRvcCBvZiB0aGUgUHNldWRv
IGdpdCB0cmVlIGFzIHdlbGwuIFRoZSBvbmx5IGlzc3VlIGlzIHdoYXRldmVyIHBhdGNoIGZpeGVz
IHRoaXMsIEkgd2lsbCBuZWVkIHRvIGJhY2twb3J0ZWQgaW50byBvdXIgMi4zIGVudmlyb25tZW50
LiBUaGUgbmV4dCByZWxlYXNlIGlzIHN0YWJpbGl6ZWQgb24gMi4zIGZvciBzaGlwbWVudCBzb29u
LCBzbyBJIGNhbid0IHlhbmsgdGhlIHJ1ZyBvdXQgZnJvbSB1bmRlciB0aGF0IG9uZS4gSWYgd2Ug
anVzdCBoYXZlIHRvIGxpbXAgYWxvbmcgaXQnbGwgYmUgYW5ub3lpbmcsIGJ1dCBub3QgdGhlIGVu
ZCBvZiB0aGUgd29ybGQgYXMgd2UgY2FuIGdldCBzb21lIGdvb2QgYnVpbGRzIG91dC4NCg0KT3Vy
IDIuMyBlbnZpcm9ubWVudCBpcyBiZWhhdmluZyBpdHNlbGYgYWdhaW4gZm9yIHRoZSBtb21lbnQs
IHNvIGl0IHdpbGwgdGFrZSBhIGJpdCB0byBnZXQgZGVidWcgbG9ncy4gU291bmRzIGxpa2UgSSBo
YXZlIHNvbWUgaG9tZXdvcmsgdG8gZG8sIEknbGwga2VlcCBldmVyeW9uZSBwb3N0ZWQuDQoNCkFu
ZCB0aGFua3MgdG8gYWxsIGZvciB5b3VyIHF1aWNrIHJlc3BvbnNlcy4NCg0KSmFjayBGZXd4CQ0K

