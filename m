Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84D9CE00D79; Thu, 27 Oct 2016 06:02:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.251.8 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 410 seconds by postgrey-1.32 at yocto-www;
	Thu, 27 Oct 2016 06:02:38 PDT
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.8])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A69E00D73
	for <yocto@yoctoproject.org>; Thu, 27 Oct 2016 06:02:38 -0700 (PDT)
Received: from [216.82.250.83] by server-8.bemta-12.messagelabs.com id
	A9/3C-02205-159F1185; Thu, 27 Oct 2016 12:55:45 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrJKsWRWlGSWpSXmKPExsVySpdNUzfgp2C
	EwfWPchazDu1ks5j0cg2bA5PHvJOBHu0n+tgCmKJYM/OS8isSWDNOv+hkL1ivXNE3czZjA+MX
	pS5GLg4hga2MElcWbGWEcLYwShzavg3KOcgoMePeYdYuRk4ONgFDiSs9dxlBbBGBVIlLz4+yg
	djCAmkSXz8uZIWIp0u8WvkdqsZIYsO2dqYuRg4OFgFViY27RUHCvALuEtt6e5hAbCGBYokdHW
	1gYzgFzCX+dD4GizMKyEp8aVzNDGIzC4hL3HoyHywuISAgsWTPeWYIW1Ti5eN/rBC2gcTWpft
	YIGwFiZXdDWwQtrXE/nlLWUFOYBbQlFi/Sx9ipKLElO6H7BDnCEqcnPmEBeIcVYktC3+zTGAU
	n4Vk8yyE7llIumch6V7AyLKKUb04tagstUjXUC+pKDM9oyQ3MTNH19DQSC83tbg4MT01JzGpW
	C85P3cTIzDaGIBgB+PxTudDjJIcTEqivA9vC0YI8SXlp1RmJBZnxBeV5qQWH2LU4OAQuHLwyG
	xGKZa8/LxUJQnesh9AdYJFqempFWmZOcB0AFMqwcGjJMK7DiTNW1yQmFucmQ6ROsWoKCXOqwG
	SEABJZJTmwbXBUtAlRlkpYV5GoKOEeApSi3IzS1DlXzGKczAqCfPWgEzhycwrgZv+CmgxE9Di
	6ekCIItLEhFSUg2MZete2e3q4Hr4RJlvjuAWkXihU28OpCyYsLDoYbiTXtLMVuFijVN3/u6/9
	FahdaVOEOcLeQ3unasnXslh/V/btDW2t8XF5MCZ3f+3XnzetdqLWfeDccqqH9Gey++K9cy7O/
	PP7qk+1+4dPL74TVeV28maE7u25nV4Vs/4yL7tg8o/m4nO7kfeFiuxFGckGmoxFxUnAgCR9h+
	6PAMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-8.tower-120.messagelabs.com!1477572942!82001991!1
X-Originating-IP: [202.45.6.41]
X-StarScan-Received: 
X-StarScan-Version: 9.0.13; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 17803 invoked from network); 27 Oct 2016 12:55:44 -0000
Received: from unknown (HELO HIBDWSMB10.ad.harman.com) (202.45.6.41)
	by server-8.tower-120.messagelabs.com with DHE-RSA-AES256-GCM-SHA384
	encrypted SMTP; 27 Oct 2016 12:55:44 -0000
Received: from HIBDWSMB07.ad.harman.com (10.99.236.97) by
	HIBDWSMB10.ad.harman.com (10.99.236.101) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 27 Oct 2016 18:25:40 +0530
Received: from HIBDWSMB02.ad.harman.com (10.99.236.92) by
	HIBDWSMB07.ad.harman.com (10.99.236.97) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Thu, 27 Oct 2016 18:25:40 +0530
Received: from HIBDWSMB02.ad.harman.com ([fe80::3834:9ec5:559f:10c2]) by
	HIBDWSMB02.ad.harman.com ([fe80::3834:9ec5:559f:10c2%16]) with mapi id
	15.00.1130.005; Thu, 27 Oct 2016 18:25:40 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Access Control List (ACL) permissions attributes not
	getting preserved in rootfs
Thread-Index: AQHR9KDlAw1Mgmic4E2ORVjDTkQ6JKC8tL9A
Date: Thu, 27 Oct 2016 12:55:40 +0000
Message-ID: <a4674febc1cd4c73ba150b4332802122@HIBDWSMB02.ad.harman.com>
References: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
	<1471009925.19073.6.camel@linux.intel.com>
In-Reply-To: <1471009925.19073.6.camel@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
x-exclaimer-md-config: 4a26c407-9f7b-4db1-94e4-bcbc87a799a8
MIME-Version: 1.0
Subject: Re: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Thu, 27 Oct 2016 13:02:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gQWxsLA0KDQpGdXJ0aGVyIHVwZGF0ZSBvbiB0aGlzIGlzc3VlICwgbWlncmF0ZWQgdG8g
ImUyZnNwcm9nc18xLjQzLmJiIiAgZnJvbSAiZTJmc3Byb2dzXzEuNDIuOS5iYiIgLiBJdCBpcyBv
YnNlcnZlZCB0aGF0IHRoZSBBQ0wgcGVybWlzc2lvbiBzZXQgYXJlIHZpc2libGUgb24gZGV2LXNo
ZWxsICBidXQgd2hlbiBxZW11IGlzIGxhdW5jaGVkIHdlIGdldCBiZWxvdyBlcnJvciA6DQoNCnJv
b3RAcWVtdXg4NjojZ2V0ZmFjbCAvdXNyL2Jpbi9oZWxsb3dvcmxkDQpnZXRmYWNsOiAvdXNyL2Jp
bi9oZWxsb3dvcmxkOiBJbnZhbGlkIGFyZ3VtZW50DQoNCg0KQWxzbywNCiANCnJvb3RAcWVtdXg4
NjojIHNldGZhY2wgLW0gdTp1c2VyMjpyLS0gL3Vzci9iaW4vaGVsbG93b3JsZCANCiAgICAgICAg
ICAgICAgIHNldGZhY2w6IC91c3IvYmluL2hlbGxvd29ybGQ6IEludmFsaWQgYXJndW1lbnQNCg0K
DQpJcyB0aGlzIGtub3duIGFuZCBmaXhlZCBhbHJlYWR5ICA/DQoNCkdvb2dsZSBzaG93cyB0aGF0
IHNpbWlsYXIgb2JzZXJ2YXRpb25zIGFyZSBzZWVuICwgYXJlIHRoZXkgcmVsYXRlZCA/DQpodHRw
czovL3d3dy5zdXNlLmNvbS9zdXBwb3J0L2tiL2RvYz9pZD03MDAzMDY0DQpodHRwczovL2Jicy5h
cmNobGludXgub3JnL3ZpZXd0b3BpYy5waHA/aWQ9MjExNDYzDQpodHRwczovL2FjY2Vzcy5yZWRo
YXQuY29tL3NvbHV0aW9ucy83NTI1MjMNCg0KDQoNClRoYW5rcyBhbmQgUmVnYXJkcw0KU2hyYXdh
bg0KDQoNCg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogSm9zaHVhIEcgTG9j
ayBbbWFpbHRvOmpvc2h1YS5nLmxvY2tAbGludXguaW50ZWwuY29tXSANClNlbnQ6IEZyaWRheSwg
QXVndXN0IDEyLCAyMDE2IDc6MjIgUE0NClRvOiBLdW1hciwgU2hyYXdhbjsgeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gQWNjZXNzIENvbnRyb2wgTGlzdCAoQUNM
KSBwZXJtaXNzaW9ucyBhdHRyaWJ1dGVzIG5vdCBnZXR0aW5nIHByZXNlcnZlZCBpbiByb290ZnMN
Cg0KT24gRnJpLCAyMDE2LTA4LTEyIGF0IDEyOjMzICswMDAwLCBLdW1hciwgU2hyYXdhbiB3cm90
ZToNCj4gSGVsbG8gQWxsLA0KPiDCoA0KPiBJIGFtIMKgdXNpbmcgwqBwb2t5IOKAnCBqZXRocm/i
gJ0gwqAsIGFuZCDCoHRob3VnaCDCoG9uZSBvZiBteSByZWNpcGUsIEkgaGF2ZSANCj4gY3JlYXRl
ZCB1c2VyMSAmIHVzZXIyIGFuZCB0aGVuIHRyeWluZyB0byBzZXQgQUNMIHJ1bGVzIMKgb24gDQo+
IOKAnGhlbGxvd29ybGTigJ0gYmluIGFzIGJlbG93IDoNCj4gwqANCj4gwqANCj4gZG9faW5zdGFs
bCgpIHsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCBpbnN0YWxsIC1k
ICR7RH0ke2JpbmRpcn0NCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCBp
bnN0YWxsIC1tIDA3MDAgaGVsbG93b3JsZCAke0R9JHtiaW5kaXJ9DQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAtZCAke0R9L2xpYi9zeXN0ZW1kL3N5c3Rl
bQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgIGluc3RhbGwgLW0gMDcw
MCBoZWxsby5zZXJ2aWNlIA0KPiAke0R9L2xpYi9zeXN0ZW1kL3N5c3RlbS8NCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCBjaG93bsKgwqDCoCB1c2VyMTpncm91cDEgJHtE
fSR7YmluZGlyfS9oZWxsb3dvcmxkDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqDC
oMKgwqBzZXRmYWNsIC1tIHU6dXNlcjI6ci0tICR7RH0ke2JpbmRpcn0vaGVsbG93b3JsZCB9DQo+
IMKgDQo+IMKgDQo+IMOoIFdoZW4gSSBzZWXCoCDCoG9uIHRoZSBkZXZzaGVsbCAoIGJpdGJha2Ug
SGVsbG9Xb3JsZCDigJNjIGRldnNoZWxsKSDCoDoNCj4gcG9reS9idWlsZF9xZW11eDg2L3RtcC93
b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLQ0KPiBtaW5pbWFsLzEuMC1yMC9yb290
ZnMvdXNyL2JpbiMgZ2V0ZmFjbCBoZWxsb3dvcmxkwqDCoMKgICwgSSBjb3VsZCBzZWUgDQo+IHRo
YXQgQUNMIHBlcm1pc3Npb25zIGFyZSBzZXQgY29ycmVjdGx5IGFzIGJlbG93IDoNCj4gLcKgwqDC
oMKgwqDCoMKgICMgZmlsZTogaGVsbG93b3JsZA0KPiAtwqDCoMKgwqDCoMKgwqAgIyBvd25lcjog
dXNlcjENCj4gLcKgwqDCoMKgwqDCoMKgICMgZ3JvdXA6IGdyb3VwMQ0KPiAtwqDCoMKgwqDCoMKg
wqAgdXNlcjo6cnd4DQo+IC3CoMKgwqDCoMKgwqDCoCB1c2VyOnVzZXIyOnItLQ0KPiAtwqDCoMKg
wqDCoMKgwqAgZ3JvdXA6Oi0tLQ0KPiAtwqDCoMKgwqDCoMKgwqAgbWFzazo6ci0tDQo+IC3CoMKg
wqDCoMKgwqDCoCBvdGhlcjo6LS0tDQo+IMKgDQo+IEhvd2V2ZXIsIEl0IGRvZXMgbm90IHNlZW1z
IHRvIGJlIGdldHRpbmcgcHJlc2VydmVkIGluIHJvb3Rmcy4gOg0KPiAvcG9reS9idWlsZF9xZW11
eDg2L3RtcC93b3JrL3FlbXV4ODYtcG9reS1saW51eC9jb3JlLWltYWdlLQ0KPiBtaW5pbWFsLzEu
MC1yMC9yb290ZnMvdXNyL2JpbiMgZ2V0ZmFjbCBoZWxsb3dvcmxkICMgZmlsZTogaGVsbG93b3Js
ZCAjIA0KPiBvd25lcjogdXNlcjEgIyBncm91cDogZ3JvdXAxIHVzZXI6OnJ3eA0KPiBncm91cDo6
LS0tDQo+IG90aGVyOjotLS0NCj4gwqANCj4gcXVpY2sgaGVscCDCoGhlcmUgd291bGQgYmUgaGln
aGx5IGFwcHJlY2lhdGVkDQoNClRoaXMgaXMgZHVlIHRvIHRoZSBmYWN0IHRoYXQgd2UgZG9uJ3Qg
Y3VycmVudGx5IGhhdmUgYSBtZWNoYW5pc20gdG8gcHJlc2VydmUgeGF0dHIgdGhyb3VnaCB0byBp
bWFnZSBjb25zdHJ1Y3Rpb25bMV0uDQoNClRoZSBsYXJnZXN0IGJhcnJpZXIgZm9yIGRvaWcgc28g
aXMgdGhhdCB0aGUgcGFja2FnZSBtYW5hZ2VycyAoY2VydGFpbmx5IGRwa2cgYW5kIHJwbSkgZG9u
J3QgaGF2ZSBhbnkgc3VwcG9ydCBmb3IgeGF0dHJzIGluIHBhY2thZ2VzIChhbiBpbWFnZSBpcyBw
b3B1bGF0ZWQgdmlhIHRoZSBwYWNrYWdlIG1hbmFnZXIpLg0KDQpUbyB0aGUgYmVzdCBvZiBteSBr
bm93bGVkZ2UgdGhlIG9ubHkgb3B0aW9uIGZvciBhZGRpbmcgc29tZSB4YXR0ci9BQ0wgaXMgdG8g
dXNlIGEgcG9zdGluc3RbMl0gdG8gc2V0IHRoZSBhdHRyaWJ1dGVzIGFmdGVyIHRoZSBwYWNrYWdl
IGhhcyBiZWVuIGluc3RhbGxlZC4NCg0KUmVnYXJkcywNCg0KSm9zaHVhDQoNCjEuwqBodHRwczov
L2J1Z3ppbGxhLnlvY3RvcHJvamVjdC5vcmcvc2hvd19idWcuY2dpP2lkPTk4NTgNCjIuwqBodHRw
Oi8vd3d3LnlvY3RvcHJvamVjdC5vcmcvZG9jcy8yLjEvZGV2LW1hbnVhbC9kZXYtbWFudWFsLmh0
bWwjbmV3LQ0KcmVjaXBlLXBvc3QtaW5zdGFsbGF0aW9uLXNjcmlwdHMNCg0K

