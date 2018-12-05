Return-Path: <Georgi.Georgiev@woodward.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE535E00C91; Wed,  5 Dec 2018 02:36:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from Mail1.woodward.com (mail1.woodward.com [216.17.208.201])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65BFAE00C75
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 02:36:29 -0800 (PST)
Received: from pps.filterd (CoCo-PMSGA1.woodward.com [127.0.0.1])
	by CoCo-PMSGA1.woodward.com (8.16.0.22/8.16.0.22) with SMTP id
	wB5AVuwS024306; Wed, 5 Dec 2018 04:36:22 -0600
Received: from coil-exmb1.woodward.com ([10.51.100.64])
	by CoCo-PMSGA1.woodward.com with ESMTP id 2p5y3g9cuj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Wed, 05 Dec 2018 04:36:22 -0600
Received: from KempHC1.woodward.com (10.25.100.51) by COIL-ExMb1.woodward.com
	(10.51.100.64) with Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Wed, 5 Dec 2018 04:36:21 -0600
Received: from KempMail2.woodward.com ([169.254.2.232]) by
	KempHC1.woodward.com ([172.20.1.103]) with mapi;
	Wed, 5 Dec 2018 11:36:20 +0100
From: Georgi Georgiev <Georgi.Georgiev@woodward.com>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 5 Dec 2018 11:36:18 +0100
Thread-Topic: Missing headers in /usr/inlcude for software developers
Thread-Index: AdSMhfNmMKSX3QNkTGCD7BNWaU+F3A==
Message-ID: <B4ED84A4DCF0D84FB25CE972E5CF346A5D185E27AC@KEMPMAIL2.woodward.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	suspectscore=0 malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1810050000 definitions=main-1812050097
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Missing headers in /usr/inlcude for software developers
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
X-List-Received-Date: Wed, 05 Dec 2018 10:36:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmsgeW91IFJvc3MuIA0KRXZlcnl0aGluZyB3ZW50IGZpbmUgd2l0aCBtYWtlZmlsZS4gSXQg
d29ya3MgaW4geW9jdG8gYW5kIGZyb20gY2wNCk5vdyBhbm90aGVyIGlzc3VlIGFyaXNlLiBUaGUg
c29mdHdhcmUgZ3V5cyB3aWxsIG5lZWQgdGhlIGhlYWRlcnMgYW5kIHdoZW4gSSAicG9wdWxhdGVk
IiBzZGsgdGhleSB3ZXJlIG5vdCBpbiB0aGUgcm9vdGZzLiBUaGUgc3ltYm9saWMgbGlua3MgYWxz
byB3ZXJlIG5vdCB0aGVyZS4gVGhlIHN5bWxpbmsgKHNvLjApIGFuZCB0aGUgbGlicmFyeSBpcyBw
cmVzZW50IGluIHRoZSBpbWFnZSByb290ZnMuIEhlcmUgaXMgbXkgcmVjaXBlIGxpYmFueWJ1cy1t
NDAuc29fMC4wLjEuYmI6DQpERVNDUklQVElPTiA9ICJBbnlidXMgTTQwIExpYnJhcnkiDQpMSUNF
TlNFID0gIkdQTHYyIg0KTElDX0ZJTEVTX0NIS1NVTSA9ICAiZmlsZTovLyR7VEhJU0RJUn0vZmls
ZXMvTElDRU5TRTttZDU9NTk1OWU1MDJjYjQ0YmFmYzUzYjJjYzk0MDBlM2Q0Y2QiDQpQUiA9ICJy
MCINClNSQ19VUkkgPSAiZ2l0Oi8vL2hvbWUvdzIzNjk4L3Byb2plY3RzL2FueWJ1cy9HZW5lcmlj
O2JyYW5jaD1hbnlidXMtbGliLTAuMC4xIg0KU1JDUkVWID0gIjg1OTRiODEyNDFlOTUzOGQyYWQ0
ZDAxMDQxZTMwZDk3YTIwYjVhNDMiDQpTID0gIiR7V09SS0RJUn0vZ2l0Ig0KUEFDS0FHRVMgPSAi
JHtQTn0gJHtQTn0tZGV2ICR7UE59LWRiZyINCkRFUEVORFMgPSAibGliZ3Bpb2QiDQoNCiMgVGhp
cyBpcyB0byBzYXRpc2Z5IHlvY3RvIFFBIA0KVEFSR0VUX0NDX0FSQ0ggKz0gIiR7TERGTEFHU30i
DQoNCmRvX2NvbXBpbGUoKSB7DQogICAgb2VfcnVubWFrZQ0KfQ0KDQpkb19pbnN0YWxsKCkgew0K
ICAgIGluc3RhbGwgLWQgJHtEfSR7bGliZGlyfQ0KICAgIGluc3RhbGwgLW0gMDY0NCAke1BOfS4k
e1BWfSAke0R9JHtsaWJkaXJ9DQp9DQpPYnZvdXNseSBJIGFtIG1pc3Npbmcgc29tZXRoaW5nIGVs
c2UuLi4uDQpDb3JkaWFsbHkNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0
b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dIA0KU2VudDogVHVlc2RheSwg
RGVjZW1iZXIgMDQsIDIwMTggNTo0NCBQTQ0KVG86IEdlb3JnaSBHZW9yZ2lldiA8R2VvcmdpLkdl
b3JnaWV2QHdvb2R3YXJkLmNvbT4NCkNjOiBZb2N0by1tYWlsaW5nLWxpc3QgPHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmc+DQpTdWJqZWN0OiBSZTogW0VYVEVSTkFMXSBSZTogW3lvY3RvXSBNaXNzaW5n
IGRlcGVuZGVuY2llcyBpbiByZWNpcGUtc3lzcm9vdA0KDQpObywgeW91IGp1c3QgbmVlZCB0byB3
cml0ZSB5b3VyIG1ha2VmaWxlIGNvcnJlY3RseS4gIGxpYmdwaW9kIGhhcyBhIHBrZy1jb25maWcg
ZmlsZSwgc28gaW5zdGVhZCBvZiBoYXJkLWNvZGluZyBwYXRocyBsaWtlIC91c3IvbGliIChiZWNh
dXNlIHlvdSBkb24ndCBrbm93IHRoYXQncyB3aGVyZSBpdCBpcyBpbnN0YWxsZWQpIGp1c3QgdXNl
IHBrZy1jb25maWcgdG8gZ2V0IHRoZSBmbGFnOg0KDQpnY2MgJChwa2ctY29uZmlnIC0tY2ZsYWdz
IC0tbGlicyBsaWJncGlvZCkgLi4uDQoNClJvc3MNCk9uIFR1ZSwgNCBEZWMgMjAxOCBhdCAxNTox
NCwgR2VvcmdpIEdlb3JnaWV2IDxHZW9yZ2kuR2VvcmdpZXZAd29vZHdhcmQuY29tPiB3cm90ZToN
Cj4NCj4gT0sgYnV0LiBJIGNhbiB1c2UgU0RLVEFSR0VUU1lTUk9PVCBpbiBteSBtYWtlZmlsZSBi
dXQgdGhlbiBpdCB3aWxsIGZhaWwgaW4geW9jdG8uLi5TbyBJIGNhbid0IGhhdmUgb25lIG1ha2Vm
aWxlIGZvciB5b2N0byBhbmQgY29tbWFuZCBsaW5lIGJ1aWxkLi4uSSBmb3VuZCBvbmUgdHJlYWQg
Zm9yIHNpbWlsYXIgaXNzdWUgYW5kIEkgd2lsbCB0YWtlIGEgbG9vayBpbiBwb2t5L21ldGEvY29u
Zi9iaXRiYWtlLmNvbmYgdG9tb3Jyb3cuDQo+DQo+IEdlb3JnaQ0KPg0KPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBp
bnRlbC5jb21dDQo+IFNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDA0LCAyMDE4IDQ6MTMgUE0NCj4g
VG86IEdlb3JnaSBHZW9yZ2lldiA8R2VvcmdpLkdlb3JnaWV2QHdvb2R3YXJkLmNvbT4NCj4gQ2M6
IFlvY3RvLW1haWxpbmctbGlzdCA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NCj4gU3ViamVjdDog
UmU6IFtFWFRFUk5BTF0gUmU6IFt5b2N0b10gTWlzc2luZyBkZXBlbmRlbmNpZXMgaW4gDQo+IHJl
Y2lwZS1zeXNyb290DQo+DQo+IE9uIFR1ZSwgNCBEZWMgMjAxOCBhdCAxNDowMiwgR2VvcmdpIEdl
b3JnaWV2IDxHZW9yZ2kuR2VvcmdpZXZAd29vZHdhcmQuY29tPiB3cm90ZToNCj4gPiBMSUIgOj0g
LUwvdXNyL2xpYg0KPg0KPiBeIGRvbid0IGRvIHRoYXQuICBUaGF0J3Mgbm90IHdoZXJlIHRoZSBs
aWJyYXJpZXMgYXJlLg0KPg0KPiBSb3NzDQo=

