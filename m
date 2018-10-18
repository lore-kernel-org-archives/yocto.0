Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68E3BE00CC1; Thu, 18 Oct 2018 12:34:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,KHOP_DYNAMIC,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.147.191 listed in list.dnswl.org]
	*  2.0 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 909 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Oct 2018 12:34:33 PDT
Received: from mx0a-000e8d01.pphosted.com (mx0a-000e8d01.pphosted.com
	[148.163.147.191])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93BAFE00971
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 12:34:33 -0700 (PDT)
Received: from pps.filterd (m0136172.ppops.net [127.0.0.1])
	by mx0b-000e8d01.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w9IJEYka013934
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 12:19:23 -0700
Received: from edison.ad.selinc.com (edison.selinc.com [74.117.212.50])
	by mx0b-000e8d01.pphosted.com with ESMTP id 2n5n8b16pp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO)
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 12:19:23 -0700
In-Reply-To: <57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
References: <OF38E74854.80860B87-ON88258329.0081F4B2-8825832A.0060D044@selinc.com>
	<57ADD8B0-DA93-4895-95E5-FD13C6597D89@gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
MIME-Version: 1.0
X-KeepSent: DA9F137A:0C8CC68D-8825832A:006940DD;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP5 Octobe4, 2013
Message-ID: <OFDA9F137A.0C8CC68D-ON8825832A.006940DD-8825832A.006A24D7@selinc.com>
From: Aaron_Wright@selinc.com
Date: Thu, 18 Oct 2018 12:19:22 -0700
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 10/18/2018 12:19:23 PM,
	Serialize complete at 10/18/2018 12:19:23 PM
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-18_08:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810180161
Cc: yocto@yoctoproject.org
Subject: Re: Working on Dependent Recipes in eSDK
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
X-List-Received-Date: Thu, 18 Oct 2018 19:34:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: base64

PiBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4gd3JvdGUgb24gMTAv
MTgvMjAxOCAxMTozMDoxNyANCkFNOg0KPg0KPiBJIGRvbuKAmXQgdGhpbmsgZXNkayBpcyBkZXNp
Z25lZCBmb3IgdGhpcyBraW5kIG9mIOKAmGZ1bGwgc3RhY2vigJkgDQo+IGRldmVsb3BtZW50LiBZ
b3UgY2FuIGdvIGJhY2sgdG8gd29ya2luZyBkaXJlY3RseSB3aXRoIHlvY3RvIGxheWVycywgDQo+
IGFuZCBza2lwIHRoZSBlc2RrIGFsdG9nZXRoZXIuIERldnRvb2wgd2lsbCB3b3JrIGV4YWN0bHkg
c2FtZSAobWludXMgDQo+IHRoZSBzZGsgc3BlY2lmaWMgY29tbWFuZHMpLg0KPiANCj4gQWxleA0K
DQpJJ20gdHJ5aW5nIHRvIGdldCB0aGUgZGV2ZWxvcGVycyBhd2F5IGZyb20gdXNpbmcgYml0YmFr
ZSBhbmQgZGV2dG9vbCB0byANCmJ1aWxkIHRoZWlyIGNvZGUsIGFzIHRob3NlIHRvb2xzIGhhdmUg
b3ZlcmhlYWQgYW5kIGRvbid0IGVhc2lseSBhbGxvdyB0aGUgDQpkZXZlbG9wZXJzIHRvIGl0ZXJh
dGUgcXVpY2tseSBvciBhbGxvdyB0aGVtIHRvIHJ1biBvdGhlciBtYWtlIHRhcmdldHMgZm9yIA0K
dW5pdCB0ZXN0aW5nLCBldGMuIEkgcmVhbGx5IHdhbnQgdGhlIGRldmVsb3BlcnMgYXQgdGhlICJt
YWtlIiBsZXZlbCBmb3IgDQp0aGUgbWFqb3JpdHkgb2YgdGhlaXIgdGltZS4gV2hlbiBpdCBjb21l
cyB0aW1lIGZvciByZWNpcGVzIGFuZCBpbWFnZSANCmNyZWF0aW9uLCB0aGVuIHRoZXknbGwgdXNl
IGRldnRvb2wuDQoNCj4gPiBPbiAxOCBPY3QgMjAxOCwgYXQgMTkuMzcsIEFhcm9uX1dyaWdodEBz
ZWxpbmMuY29tIHdyb3RlOg0KPiA+IA0KPiA+IE15IHRlYW0gcmVjZW50bHkgc3RhcnRlZCB1c2lu
ZyB0aGUgZVNESyBmb3IgZGF5LXRvLWRheSBkZXZlbG9wbWVudC4gDQo+ID4gUHJldmlvdXNseSwg
dGhleSB3ZXJlIHVzaW5nIHRoZSBiaXRiYWtlIGNvbW1hbmQgdG8gYnVpbGQsIHdoaWNoIHdvcmtz
LCANCmJ1dCANCj4gPiBoYXMgb3ZlcmhlYWQuIFllc3RlcmRheSB0aHJlZSBkaWZmZXJlbnQgcGVv
cGxlIGNhbWUgdXAgdG8gbWUgYSANCnF1ZXN0aW9uIA0KPiA+IGFib3V0IHdvcmtmbG93IHdpdGgg
dGhlIGVTREssIGFuZCB0aGV5IGFsbCBoYWQgdG8gZG8gd2l0aCBkZXBlbmRlbnQgDQo+ID4gcmVj
aXBlcyBpbiB0aGUgZVNESy4NCj4gPiANCj4gPiBGb3IgZXhhbXBsZSwgYSBkZXZlbG9wZXIgd291
bGQgc2l0IGRvd24gdG8gbWFrZSBzb21ldGhpbmcgbmV3IHRoYXQgDQpyZWxpZXMgDQo+ID4gb24g
YSBsaWJyYXJ5IHByb3ZpZGVkIGJ5IGEgcmVjaXBlIGluIHRoZSBlU0RLLiBTbyB0aGV5ICJkZXZ0
b29sIA0KPiA+IHNkay1pbnN0YWxsIG5lZWRlZC1saWJyYXJ5IiwgYW5kIGdldCB0byB3b3JrLiBX
aGlsZSB3b3JraW5nLCB0aGV5IA0KPiA+IGRpc2NvdmVyLCBJIG5lZWQgdG8gYWRkIHNvbWV0aGlu
ZyB0byB0aGlzIGxpYnJhcnkgSSBkZXBlbmQgb24gc28gdGhhdCANCml0IA0KPiA+IGRvZXMgd2hh
dCBJIHdhbnQgaW4gdGhlIHdheSBJIHdhbnQuIFNvIHRoZXkgImRldnRvb2wgbW9kaWZ5IA0KPiA+
IG5lZWRlZC1saWJyYXJ5IiBhbmQgY2hhbmdlIHRoZSBzb3VyY2Ugb2YgdGhhdCBsaWJyYXJ5IHRv
IGRvIHdoYXQgdGhleSANCj4gPiB3YW50LCBhbmQgYnVpbGQgdGhhdCBsaWJyYXJ5IHVzaW5nIGl0
cyBidWlsZCBzeXN0ZW0gKENNYWtlIG9yIA0KQXV0b3Rvb2xzKS4gDQo+ID4gVGhlbiB0aGV5IHJl
dHVybiB0byB3b3JraW5nIG9uIHRoZSBuZXcgc29tZXRoaW5nIGFuZCBmaW5kIHRoYXQgbm9uZSBv
ZiANCg0KPiA+IHRoZWlyIGNoYW5nZXMgdG8gdGhlIGxpYnJhcnkgdGhleSBkZXBlbmQgb24gYXJl
IGF2YWlsYWJsZS4gDQo+ID4gDQo+ID4gQXQgdGhpcyBwb2ludCwgdGhleSBhcmUgbG9zdC4gVGhl
eSBqdXN0IHN0YXJ0IHRyeWluZyB0aGluZ3MgdG8gbWFrZSBpdCANCg0KPiA+IHdvcmssIGxpa2Ug
ImRldnRvb2wgYnVpbGQgbmVlZGVkLWxpYnJhcnkiLCB3aGljaCBzdWNjZXNzZnVsbHkgDQpjb21w
bGV0ZXMsIA0KPiA+IGJ1dCBkb2Vzbid0IGhlbHAuIFNvbWUgcGVvcGxlIGFsc28gdHJ5IHRvIHVz
ZSB0aGUgYnVpbGQgc3lzdGVtIG9mIHRoZSANCj4gPiBsaWJyYXJ5IHRoZXkgbW9kaWZpZWQgdG8g
aW5zdGFsbCBpdCBpbnRvIHRoZSBtYWNoaW5lIHN5c3Jvb3Qgb2YgdGhlIA0KZVNESyANCj4gPiB3
aXRoIGEgY29tbWFuZCBsaWtlLCAibWFrZSBpbnN0YWxsIA0KPiA+IERFU1RESVI9PEVTREtfUEFU
SD4vdG1wL3N5c3Jvb3RzLzxNQUNISU5FPiIsIGFuZCB0aGF0IGFjdHVhbGx5IGRvZXMgDQpoZWxw
LiANCj4gPiBUaGV5IGNhbiBub3cgdXNlIHRoZSBjaGFuZ2VzIHRoZXkgbWFkZSB0byB0aGUgbGli
cmFyeSBpbiB0aGUgbmV3IA0Kc29tZXRoaW5nIA0KPiA+IHRoZXkgYXJlIHdvcmtpbmcgb24uIEhv
d2V2ZXIsIHdoZW4gdGhleSB1c2UgdGhlICJkZXZ0b29sIHNkay1pbnN0YWxsIiANCj4gPiBjb21t
YW5kIGFnYWluLCB0aGVpciBjaGFuZ2VzIHRvIHRoZSBuZWVkZWQgbGlicmFyeSB0aGF0IHRoZXkg
aW5zdGFsbGVkIA0KDQo+ID4gaW50byB0aGUgbWFjaGluZSBzeXNyb290IGFyZSByZXZlcnRlZC4N
Cj4gPiANCj4gPiBTby0td2hhdCBpcyB0aGUgd29ya2Zsb3cgdGhleSBhcmUgc3VwcG9zZWQgdG8g
dXNlPyANCj4gPiANCj4gPiBQdXNoaW5nIHRoZSBjaGFuZ2VzIHRvIHRoZSBsaWJyYXJ5IHVwc3Ry
ZWFtLCB1cGRhdGluZyB0aGUgcmVjaXBlLCBhbmQgDQo+ID4gd2FpdGluZyBmb3IgYSBuZXcgZVNE
SyBpcyBub3QgcHJhY3RpY2FsIGdpdmVuIHRoYXQgdGhlIGRldmVsb3BlcnMgbWF5IA0KaGF2ZSAN
Cj4gPiB0byBpdGVyYXRlIG9uIHRoZSBjaGFuZ2VzIHRvIHRoZSBsaWJyYXJ5IHF1aXRlIGEgYml0
IGJlZm9yZSB0aGV5IGdldCANCml0IA0KPiA+IGp1c3QgcmlnaHQgZm9yIHRoZWlyIG5ldyBzb21l
dGhpbmcuDQo+ID4gDQo+ID4gSXMgdGhlcmUgYSB3YXkgdG8gdXBkYXRlIHRoZSBlU0RLIHN5c3Jv
b3RzIHdpdGggcmVjaXBlcyB0aGF0IGFyZSBpbiANCnRoZSANCj4gPiB3b3Jrc3BhY2U/IENvdWxk
ICJkZXZ0b29sIGJ1aWxkIiBhbHNvIHVwZGF0ZSB0aGUgZVNESyBzeXNyb290cz8gT3IgaXMgDQo+
ID4gdGhlcmUgYSBkaWZmZXJlbnQgd2F5IHRvIGdldCB0aGlzIGRvbmU/DQo+ID4gLS0gDQo+ID4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gPiB5b2N0
byBtYWlsaW5nIGxpc3QNCj4gPiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+ID4gaHR0cHM6Ly91
cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD8NCj4gdT1odHRwcy0zQV9fbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZ19saXN0aW5mb195b2N0byZkPUR3SUZhUSZjPS0NCj4gX3VSU3NycEpza1pn
RWtHd2RXLQ0KPiBzWHZobl9GWFZhRUdzbTBFSTQ2cWlsayZyPUdCSnVibUpVd3dycjFCNFRKRlJx
RVNNclJzRGlwdlk2NnZQd200LQ0KPiBndE5RJm09LQ0KPiANCkMtNzByam5Ha3Nhb2d6SWtnRTVN
ZG9ZM0lmQTN4NjJNWlZPd2JabXc0YyZzPVQ1UHhaM2JOQjQyOU03NnNXd0JxZ3J0TXNNaEItDQo+
IGt6MUJYa2RZOGhPSVJZJmU9DQoNCg==

