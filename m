Return-Path: <csmiley@icontrol.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35195E00837; Mon, 12 Jan 2015 14:54:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.107 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 90864 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Jan 2015 14:54:07 PST
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1bn0107.outbound.protection.outlook.com [157.56.110.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C561E00752
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 14:54:07 -0800 (PST)
Received: from BL2PR05MB034.namprd05.prod.outlook.com (10.255.228.147) by
	BL2PR05MB034.namprd05.prod.outlook.com (10.255.228.147) with Microsoft
	SMTP Server (TLS) id 15.1.53.17; Mon, 12 Jan 2015 22:54:04 +0000
Received: from BL2PR05MB034.namprd05.prod.outlook.com ([169.254.15.119]) by
	BL2PR05MB034.namprd05.prod.outlook.com ([169.254.15.119]) with mapi id
	15.01.0053.000; Mon, 12 Jan 2015 22:54:04 +0000
From: Colin Smiley <csmiley@icontrol.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-java: Problems creating image inside VM? openjdk-6
	build gets killed by host OOM killer.
Thread-Index: AQHQLecZtejot/Drokehcb6GA2srTpy82zOA///Zu4A=
Date: Mon, 12 Jan 2015 22:54:04 +0000
Message-ID: <D0D98207.89C2%csmiley@icontrol.com>
References: <D0D849B8.8909%csmiley@icontrol.com>
	<54B41C45.2010605@windriver.com>
In-Reply-To: <54B41C45.2010605@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.114.229.189]
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=csmiley@icontrol.com; 
x-dmarcaction-test: None
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(3005003);SRVR:BL2PR05MB034;
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa: BCL:0;PCL:0;RULEID:;SRVR:BL2PR05MB034;
x-forefront-prvs: 0454444834
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(51704005)(189002)(377454003)(24454002)(51914003)(199003)(479174004)(99286002)(107886001)(62966003)(92566002)(102836002)(66066001)(19580405001)(19580395003)(2900100001)(101416001)(2950100001)(87936001)(2656002)(77156002)(76176999)(54356999)(2501002)(97736003)(40100003)(122556002)(86362001)(50986999)(106356001)(106116001)(68736005)(46102003)(105586002)(64706001)(36756003)(94096001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL2PR05MB034;
	H:BL2PR05MB034.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: icontrol.com does not designate
	permitted sender hosts)
MIME-Version: 1.0
X-OriginatorOrg: icontrol.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2015 22:54:04.7388 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 56af53c7-f954-4c24-b63a-3d793c349485
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2PR05MB034
Subject: Re: meta-java: Problems creating image inside VM? openjdk-6 build gets killed by host OOM killer.
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
X-List-Received-Date: Mon, 12 Jan 2015 22:54:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <221F625CF300A54B846780558EC7D4EA@namprd05.prod.outlook.com>
Content-Transfer-Encoding: base64

DQpNYXJrLCB0aGFua3MgZm9yIHRoZSByZXBseS4gQ29tbWVudHMgaW4tbGluZS4NCg0KT24gMS8x
Mi8xNSwgMToxMSBQTSwgIk1hcmsgSGF0bGUiIDxtYXJrLmhhdGxlQHdpbmRyaXZlci5jb20+IHdy
b3RlOg0KDQo+T24gMS8xMS8xNSAzOjM5IFBNLCBDb2xpbiBTbWlsZXkgd3JvdGU6DQo+PiANCj4+
IEkgbmVlZCBoZWxwLg0KPj4gDQo+DQo+Li4uIGNvbW1lbnRpbmcgb24gdGhlIG9uZSBwaWVjZSBJ
J20gYXdhcmUgb2YgLi4uDQo+DQo+PiA4KSBSdW4gYGJpdGJha2UgamF2YS02LXRlc3QtaW1hZ2Vg
LiBUaGlzIHJ1bnMgdW50aWwgY29tcGlsYXRpb24gZmFpbHVyZSwNCj4+IGR1ZSB0byBhIGRhdGUg
YnVnIGludHJvZHVjZWQgaW4gbWV0YS1qYXZhIG9uIDEyLzMxLzE0LCB3aXRoOg0KPj4gDQo+PiAN
Cj4+L2hvbWUvY3NtaWxleS95YWN0by9wb2t5L2J1aWxkL3RtcC93b3JrL2k1ODYtcG9reS1saW51
eC9vcGVuamRrLTYtanJlLzZiMg0KPj40LQ0KPj4gMS4xMS45LXIyMi4xL2J1aWxkL2Jvb3RzdHJh
cC9qZGsxLjYuMC9iaW4vamF2YSAgLWNsaWVudCAtWG14ODk2bQ0KPj4tWG1zMTI4bQ0KPj4gLVhY
OlBlcm1TaXplPTMybSAtWFg6TWF4UGVybVNpemU9MTYwbSAtamFyDQo+PiANCj4+L2hvbWUvY3Nt
aWxleS95YWN0by9wb2t5L2J1aWxkL3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9vcGVuamRrLTYt
anJlLzZiMg0KPj40LQ0KPj4gMS4xMS45LXIyMi4xL2J1aWxkL29wZW5qZGsuYnVpbGQtZWNqL2J0
amFycy9nZW5lcmF0ZWN1cnJlbmN5ZGF0YS5qYXIgLW8NCj4+IA0KPj4vaG9tZS9jc21pbGV5L3lh
Y3RvL3Bva3kvYnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L29wZW5qZGstNi1qcmUvNmIy
DQo+PjQtDQo+PiAxLjExLjktcjIyLjEvYnVpbGQvb3Blbmpkay5idWlsZC1lY2ovbGliL2N1cnJl
bmN5LmRhdGEudGVtcCBcDQo+PiB8IAk8IC4uLy4uLy4uL3NyYy9zaGFyZS9jbGFzc2VzL2phdmEv
dXRpbC9DdXJyZW5jeURhdGEucHJvcGVydGllcw0KPj4gfCBFcnJvcjogdGltZSBpcyBtb3JlIHRo
YW4gMTAgeWVhcnMgZnJvbSBwcmVzZW50OiAxMTA0NTMwNDAwMDAwDQo+PiB8IGphdmEubGFuZy5S
dW50aW1lRXhjZXB0aW9uOiB0aW1lIGlzIG1vcmUgdGhhbiAxMCB5ZWFycyBmcm9tIHByZXNlbnQ6
DQo+PiAxMTA0NTMwNDAwMDAwDQo+PiB8IAlhdCANCj4+IA0KPj5idWlsZC50b29scy5nZW5lcmF0
ZWN1cnJlbmN5ZGF0YS5HZW5lcmF0ZUN1cnJlbmN5RGF0YS5tYWtlU3BlY2lhbENhc2VFbnRyDQo+
PnkoDQo+PiBHZW5lcmF0ZUN1cnJlbmN5RGF0YS5qYXZhOjI4NSkNCj4+IHwgCWF0IA0KPj4gDQo+
PmJ1aWxkLnRvb2xzLmdlbmVyYXRlY3VycmVuY3lkYXRhLkdlbmVyYXRlQ3VycmVuY3lEYXRhLmJ1
aWxkTWFpbkFuZFNwZWNpYWwNCj4+Q2ENCj4+IHNlVGFibGVzKEdlbmVyYXRlQ3VycmVuY3lEYXRh
LmphdmE6MjI1KQ0KPj4gfCAJYXQgDQo+PiANCj4+YnVpbGQudG9vbHMuZ2VuZXJhdGVjdXJyZW5j
eWRhdGEuR2VuZXJhdGVDdXJyZW5jeURhdGEubWFpbihHZW5lcmF0ZUN1cnJlbg0KPj5jeQ0KPj4g
RGF0YS5qYXZhOjE1NCkNCj4+IA0KPj4gOSkgRml4IGFib3ZlIHByb2JsZW0gYnkgZWRpdGluZyBh
bGwgaW5zdGFuY2VzIG9mDQo+PiBidWlsZC90bXAvd29yay93b3JrL8WgL0N1cnJlbmN5RGF0YS5w
cm9wZXJ0aWVzIHRvIGdldCByaWQgb2YgVHVya2lzaA0KPj4gQ3VycmVuY3kgSXNzdWUuDQo+DQo+
VGhhdCBpcyByaWdodCBhbnN3ZXIgKHdlbGwga2luZCBvZikuICBSZWFsbHkgYSBwYXRjaCBuZWVk
cyB0byBiZQ0KPnN1Ym1pdHRlZCBmb3INCj50aGlzIGxpdHRsZSBiaXQgb2YgaW5zYW5pdHkuDQoN
CkFjY29yZGluZyB0byBhbiBPcGVuSkRLIGJvYXJkL21haWxpbmcgbGlzdCBJIHNhdyBpbiBteSBn
b29nbGluZy1hYm91dCwNCnRoZXnigJlyZSBsb29raW5nIHRvd2FyZHMgYmFjay1wb3J0aW5nIHNv
bWUgb2YgdGhlIGN1cnJlbmN5IGNoYW5nZXMgZnJvbQ0KT3BlbkpESyA3LiANCg0KTXkgaW5jbGlu
YXRpb24gaXMgdG8gc3VwcGx5IGEgcGF0Y2ggaW50byB0aGUgcmVjaXBlIHRoYXQgd2lsbCBwYXRj
aA0KQ3VycmVuY3lEYXRhIHBvc3Qgc291cmNlIGNoZWNrb3V0LCBidXQgcHJlLWJ1aWxkLiBJIGFt
IG5ldyB0byBob3cgeW9jdG8NCndvcmtzLCBob3dldmVyLCBzbyBJ4oCZbSBub3Qgc3VyZSBpZiB0
aGF04oCZcyB0aGUgcmlnaHQgd2F5IHRvIGRvIGl0Lg0KDQoNCg0KPg0KPj4gMTApIFJlc3RhcnQg
YnkgcnVubmluZyBgYml0YmFrZSBqYXZhLTYtdGVzdC1pbWFnZWAuIFRoaXMgbm93IGZhaWxzIHdo
ZW4NCj4+IGRvaW5nIHRoZSBnZW5lcmF0aW9uIG9uIFNpemVzLjMyIHdpdGg6DQo+PiB8IGk1ODYt
cG9reS1saW51eC1nY2MgIC1tMzIgLW1hcmNoPWk1ODYNCj4+IC0tc3lzcm9vdD0vaG9tZS9jc21p
bGV5L3lvY3RvL3Bva3kvYnVpbGQvdG1wL3N5c3Jvb3RzL3FlbXV4ODYgIC1PMiAtcGlwZQ0KPj4g
LWcgLWZlbGltaW5hdGUtdW51c2VkLWRlYnVnLXR5cGVzICAgLWZuby1zdHJpY3QtYWxpYXNpbmcg
LWZQSUMgLVcgLVdhbGwNCj4+IC1Xbm8tdW51c2VkIC1Xbm8tcGFyZW50aGVzZXMgLW0zMiAtRF9M
SVRUTEVfRU5ESUFOIC1nICAgLURBUkNIPSciaTU4NiInDQo+PiAtRGk1ODYgLURMSU5VWCAtRFJF
TEVBU0U9JyIxLjYuMF8yNCInIC1EX0xBUkdFRklMRTY0X1NPVVJDRQ0KPj4tRF9HTlVfU09VUkNF
DQo+PiAtRF9SRUVOVFJBTlQgLUkuDQo+PiANCj4+LUkvaG9tZS9jc21pbGV5L3lvY3RvL3Bva3kv
YnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L29wZW5qZGstNi1qcmUvNg0KPj5iMg0KPj4g
DQo+PjQtMS4xMS45LXIyMi4xL2ljZWR0ZWE2LTEuMTEuOS9idWlsZC9vcGVuamRrLmJ1aWxkLWVj
ai90bXAvc3VuL3N1bi5hd3QuWDENCj4+MS8NCj4+IHhhd3QvQ0NsYXNzSGVhZGVycyAtSS4uLy4u
Ly4uL3NyYy9zb2xhcmlzL2phdmF2bS9leHBvcnQNCj4+IC1JLi4vLi4vLi4vc3JjL3NoYXJlL2ph
dmF2bS9leHBvcnQgLUkuLi8uLi8uLi9zcmMvc2hhcmUvamF2YXZtL2luY2x1ZGUNCj4+IC1JLi4v
Li4vLi4vc3JjL3NvbGFyaXMvamF2YXZtL2luY2x1ZGUgLUkuLi8uLi8uLi9zcmMvc2hhcmUvbmF0
aXZlL2NvbW1vbg0KPj4gLUkuLi8uLi8uLi9zcmMvc29sYXJpcy9uYXRpdmUvY29tbW9uDQo+PiAt
SS4uLy4uLy4uL3NyYy9zaGFyZS9uYXRpdmUvc3VuL2F3dC9YMTENCj4+IC1JLi4vLi4vLi4vc3Jj
L3NvbGFyaXMvbmF0aXZlL3N1bi9hd3QvWDExDQo+PiAtSS9ob21lL2NzbWlsZXkveW9jdG8vcG9r
eS9idWlsZC90bXAvc3lzcm9vdHMvcWVtdXg4Ni91c3IvaW5jbHVkZSAtRFhBV1QNCj4+IC1EWEFX
VF9IQUNLIA0KPj4gDQo+Pi1JL2hvbWUvY3NtaWxleS95b2N0by9wb2t5L2J1aWxkL3RtcC93b3Jr
L2k1ODYtcG9reS1saW51eC9vcGVuamRrLTYtanJlLzYNCj4+YjINCj4+IA0KPj40LTEuMTEuOS1y
MjIuMS9pY2VkdGVhNi0xLjExLjkvYnVpbGQvb3Blbmpkay5idWlsZC1lY2ovdG1wL3N1bi9zdW4u
YXd0LlgxDQo+PjEvDQo+PiB4YXd0Ly4uLy4uL3N1bi5hd3QvYXd0L0NDbGFzc0hlYWRlcnMNCj4+
LUkuLi8uLi8uLi9zcmMvc29sYXJpcy9uYXRpdmUvc3VuL2F3dA0KPj4gLUkuLi8uLi8uLi9zcmMv
c29sYXJpcy9uYXRpdmUvc3VuL3hhd3QNCj4+IC1JLi4vLi4vLi4vc3JjL3NvbGFyaXMvbmF0aXZl
L3N1bi9qZGdhDQo+PiAtSS4uLy4uLy4uL3NyYy9zaGFyZS9uYXRpdmUvc3VuL2F3dC9kZWJ1Zw0K
Pj4gLUkuLi8uLi8uLi9zcmMvc2hhcmUvbmF0aXZlL3N1bi9hd3QvaW1hZ2UvY3Z1dGlscw0KPj4g
LUkuLi8uLi8uLi9zcmMvc2hhcmUvbmF0aXZlL3N1bi9qYXZhMmQNCj4+IC1JLi4vLi4vLi4vc3Jj
L3NoYXJlL25hdGl2ZS9zdW4vamF2YTJkL2xvb3BzDQo+PiAtSS4uLy4uLy4uL3NyYy9zaGFyZS9u
YXRpdmUvc3VuL2F3dC9pbWFnZS9jdnV0aWxzDQo+PiAtSS4uLy4uLy4uL3NyYy9zaGFyZS9uYXRp
dmUvc3VuL2F3dC9pbWFnZQ0KPj4gLUkuLi8uLi8uLi9zcmMvc2hhcmUvbmF0aXZlL3N1bi9mb250
DQo+PiAtSS4uLy4uLy4uL3NyYy9zb2xhcmlzL25hdGl2ZS9zdW4vamF2YTJkDQo+PiAtSS4uLy4u
Ly4uL3NyYy9zaGFyZS9uYXRpdmUvc3VuL2phdmEyZC9waXBlDQo+PiAtSS4uLy4uLy4uL3NyYy9z
aGFyZS9uYXRpdmUvc3VuL2phdmEyZC9vcGVuZ2wNCj4+IC1JLi4vLi4vLi4vc3JjL3NvbGFyaXMv
bmF0aXZlL3N1bi9qYXZhMmQvb3BlbmdsDQo+PiAtSS4uLy4uLy4uL3NyYy9zb2xhcmlzL25hdGl2
ZS9zdW4vamF2YTJkL3gxMQ0KPj4gLUkuLi8uLi8uLi9zcmMvc2hhcmUvbmF0aXZlL3N1bi9kYy9w
YXRoDQo+PiAtSS4uLy4uLy4uL3NyYy9zaGFyZS9uYXRpdmUvc3VuL2RjL2RvZQ0KPj4gLUkuLi8u
Li8uLi9zcmMvc2hhcmUvbmF0aXZlL3N1bi9hd3QvYWxwaGFjb21wb3NpdGUNCj4+IC1JLi4vLi4v
Li4vc3JjL3NoYXJlL25hdGl2ZS9zdW4vYXd0L21lZGlhbGliDQo+PiAtSS4uLy4uLy4uL3NyYy9z
b2xhcmlzL25hdGl2ZS9zdW4vYXd0L21lZGlhbGliDQo+PiAtSS4uLy4uLy4uL3NyYy9zb2xhcmlz
L25hdGl2ZS9zdW4vZm9udA0KPj4tSS4uLy4uLy4uL3NyYy9zaGFyZS9uYXRpdmUvc3VuL2F3dA0K
Pj4gLUkuLi8uLi8uLi9zcmMvc29sYXJpcy9uYXRpdmUvc3VuL2F3dCAtbw0KPj4gDQo+Pi9ob21l
L2NzbWlsZXkveW9jdG8vcG9reS9idWlsZC90bXAvd29yay9pNTg2LXBva3ktbGludXgvb3Blbmpk
ay02LWpyZS82YjINCj4+NC0NCj4+IA0KPj4xLjExLjktcjIyLjEvaWNlZHRlYTYtMS4xMS45L2J1
aWxkL2dlbmVyYXRlZC5idWlsZC9zdW4vYXd0L1gxMS9nZW5lcmF0b3IvDQo+PnNpDQo+PiB6ZXIu
MzIgDQo+PiANCj4+L2hvbWUvY3NtaWxleS95b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL2k1ODYt
cG9reS1saW51eC9vcGVuamRrLTYtanJlLzZiMg0KPj40LQ0KPj4gDQo+PjEuMTEuOS1yMjIuMS9p
Y2VkdGVhNi0xLjExLjkvYnVpbGQvZ2VuZXJhdGVkLmJ1aWxkL3N1bi9hd3QvWDExL2dlbmVyYXRv
ci8NCj4+c2kNCj4+IHplci4zMi5jDQo+PiB8IEdFTkVSQVRJTkcgDQo+PiANCj4+L2hvbWUvY3Nt
aWxleS95b2N0by9wb2t5L2J1aWxkL3RtcC93b3JrL2k1ODYtcG9reS1saW51eC9vcGVuamRrLTYt
anJlLzZiMg0KPj40LQ0KPj4gDQo+PjEuMTEuOS1yMjIuMS9pY2VkdGVhNi0xLjExLjkvYnVpbGQv
Z2VuZXJhdGVkLmJ1aWxkL3N1bi9hd3QvWDExL2dlbmVyYXRvci8NCj4+c2kNCj4+IHplcy4zMg0K
Pj4gfCBLaWxsZWQNCj4+IHwgbWFrZVs1XTogKioqIA0KPj4gDQo+PlsvaG9tZS9jc21pbGV5L3lv
Y3RvL3Bva3kvYnVpbGQvdG1wL3dvcmsvaTU4Ni1wb2t5LWxpbnV4L29wZW5qZGstNi1qcmUvNmIN
Cj4+MjQNCj4+IA0KPj4tMS4xMS45LXIyMi4xL2ljZWR0ZWE2LTEuMTEuOS9idWlsZC9nZW5lcmF0
ZWQuYnVpbGQvc3VuL2F3dC9YMTEvZ2VuZXJhdG9yDQo+Pi9zDQo+PiBpemVzLjMyXSBFcnJvciAx
MzcNCj4+IA0KPj4gDQo+PiANCj4+IFN5c3RlbSBjb25zb2xlIGhhcyB0aGUgbWVzc2FnZToNCj4+
IEphbiAxMSAwMjowMDo0NyB5b2N0b21hdGljIGtlcm5lbDogWzU5NjAwLjU3MjU1Nl0gT3V0IG9m
IG1lbW9yeTogS2lsbA0KPj4gcHJvY2VzcyA2OTI2OCAocWVtdS1pMzg2KSBzY29yZSA5NDQgb3Ig
c2FjcmlmaWNlIGNoaWxkDQo+PiBKYW4gMTEgMDI6MDA6NDcgeW9jdG9tYXRpYyBrZXJuZWw6IFs1
OTYwMC41NzM3NTZdIEtpbGxlZCBwcm9jZXNzIDY5MjY4DQo+PiAocWVtdS1pMzg2KSB0b3RhbC12
bToxNTUxOTM5MmtCLCBhbm9uLXJzczo3Njc0MjY0a0IsIGZpbGUtcnNzOjMya0INCj4NCj5UaGUg
YWJvdmUgc2VlbXMgdG8gaW5kaWNhdGUgeW91IGhvc3Qgc3lzdGVtIHJhbiBvdXQgb2YgbWVtb3J5
IG9yIHlvdXINCj5sb2NhbA0KPnJlc291cmNlIHNwYWNlIHdhcyBoaXQuDQo+DQo+U29tZSBvZiB0
aGUgZ2VuZXJhdG9ycyBjYW4gdGFrZSBnaWdhYnl0ZXMgb2YgbWVtb3J5IGFuZCB3aGVuIGEgcGFy
YWxsZWwNCj5idWlsZCBpcw0KPmF0dGVtcHRlZCBzbWFsbGVyIHN5c3RlbXMganVzdCBhcmUgbm90
IGVub3VnaC4gIChZZXMsIDE2IEdCIG9mIGFjdHVhbCByYW0NCj5pcw0KPnN0YXJ0aW5nIHRvIGJl
IGNvbnNpZGVyZWQgInNtYWxsIiBmb3Igc29tZSBvZiB0aGVzZSBraW5kcyBvZiBidWlsZHMuKQ0K
Pg0KPkknZCByZWNvbW1lbmQgY2hlY2tpbmcgeW91IGxvY2FsIGVudmlyb25tZW50IHNldHRpbmdz
ICh1bGltaXQpLCB2ZXJpZnlpbmcNCj50aGF0DQo+eW91IGhhdmUgcGxlbnR5IG9mIHN3YW1wLi4g
YW5kIGlmIHlvdSBhcmUgc3RpbGwgaGF2aW5nIHByb2JsZW1zIGxpbWl0IHRoZQ0KPm51bWJlcg0K
Pm9mIHBhcmFsbGVsIGpvYnMuICAoUGFyYWxsZWwgdGFza3Mgc2hvdWxkIHN0aWxsIGJlIGZpbmUu
KQ0KPg0KPihCVFcgbW9zdCBvZiBteSBidWlsZGVycyBoYXZlIDE2LTI0IGNvcmVzLCAzMi02NCBH
QiBvZiByYW0sIGFuZCAyNTYrIEdCIG9mDQo+c3dhcC4uLiAgSSd2ZSBub3QgcnVuIGludG8gdGhl
c2UgbXlzZWxmLCBidXQgSSdtIG5vdCBidWlsZGluZyBqYXZhIG9uIGENCj5yZWd1bGFyDQo+YmFz
aXMgZWl0aGVyLikNCg0KRmlyc3Qgb2ZmLCB0aGF04oCZcyBhIGhlY2sgb2YgYSBidWlsZCBtYWNo
aW5lIHNldHVwLiBJIHRoaW5rIG91ciBJVCBndXkganVzdA0KZmFpbnRlZC4NCg0KU2Vjb25kLCBJ
IGhhdmUgdHJpZWQgYnVpbGRpbmcgd2l0aCBqdXN0IDEgcGFyYWxsZWwgam9iIHdpdGggdGhlIHNh
bWUNCnJlc3VsdHMuIEnigJltIGFkZGluZyBhIDMyR0Igc3dhcCBkaXNrIHRvIG15IFZNLiBJ4oCZ
bGwgc2VlIGlmIHRoYXQgd29ya3MuDQoNClRoYW5rcywNCg0KDQpDb2xpbg0KDQo=

