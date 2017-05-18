Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A71DEE00B45; Thu, 18 May 2017 07:14:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A993E00961
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 07:13:56 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 May 2017 07:13:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,359,1491289200"; d="scan'208";a="102520601"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 18 May 2017 07:13:52 -0700
To: Alan Levy <alan.levy@plextek.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <c8acbe0804cf48b589fc0672c23fcf93@PLEXTEK-EXCH1.plextek.lan>
	<b1947a14-10dd-ab29-9d60-fe9c000e7f11@linux.intel.com>
	<d0183f1a9e3742bc9dfca1a0b7a300b6@PLEXTEK-EXCH1.plextek.lan>
	<026d9904-42bf-3314-24c9-dff2acc317cb@linux.intel.com>
	<78f915ebf83d4f929690faa344e28b87@PLEXTEK-EXCH1.plextek.lan>
	<8b8f0d88-5a22-1a5a-9980-3db15edc645f@linux.intel.com>
	<91105226e0a74c429a88dfa5b89099b3@PLEXTEK-EXCH1.plextek.lan>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <80f9f672-6a5e-9259-5b30-889471168956@linux.intel.com>
Date: Thu, 18 May 2017 17:11:50 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <91105226e0a74c429a88dfa5b89099b3@PLEXTEK-EXCH1.plextek.lan>
Subject: Re: Problem using Subversion in Pyro
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
X-List-Received-Date: Thu, 18 May 2017 14:14:03 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: base64

T24gMDUvMTgvMjAxNyAwNTowMiBQTSwgQWxhbiBMZXZ5IHdyb3RlOg0KPiBIZXJlIGl0IGlz
LCBjZXJ0YWluIG5hbWVzIGhhdmUgYmVlbiBjaGFuZ2VkIHRvIHByb3RlY3QgdGhlIGd1aWx0
eS4gQXMNCj4geW91IGNhbiBzZWUgYXQgdGhlIGJvdHRvbSBzdm4gaXNuJ3Qgb24gdGhlIHBh
dGgsIHNvIGJpdGJha2UgYmxvd3MgdXANCj4gd2hlbiBpdCB0cmllcyB0byBldmFsdWF0ZSBT
UkNQVjoNCj4NCj4gRVJST1I6IEV4cGFuc2lvbkVycm9yIGR1cmluZyBwYXJzaW5nIDxwYXRo
Pi9teV9yZWNpcGUuYmINCj4gfCBFVEE6ICAwOjAwOjAxIFRyYWNlYmFjayAobW9zdCByZWNl
bnQgY2FsbCBsYXN0KToNCj4gYmIuZGF0YV9zbWFydC5FeHBhbnNpb25FcnJvcjogRmFpbHVy
ZSBleHBhbmRpbmcgdmFyaWFibGUgU1JDUFYsDQo+IGV4cHJlc3Npb24gd2FzICR7QGJiLmZl
dGNoMi5nZXRfc3JjcmV2KGQpfSB3aGljaCB0cmlnZ2VyZWQgZXhjZXB0aW9uDQo+IEZldGNo
RXJyb3I6IEZldGNoZXIgZmFpbHVyZTogRmV0Y2ggY29tbWFuZCBleHBvcnQNCj4gREJVU19T
RVNTSU9OX0JVU19BRERSRVNTPSJ1bml4OmFic3RyYWN0PS90bXAvZGJ1cy15a21zY0dGRk0x
IjsgZXhwb3J0DQo+IFNTSF9BVVRIX1NPQ0s9Ii9ydW4vdXNlci8xMDAwL2tleXJpbmcvc3No
IjsgZXhwb3J0DQo+IFBBVEg9Ii9ob21lL3VzZXIvcHJvamVjdC95b2N0by9idWlsZC90bXAv
c3lzcm9vdHMtdW5pbmF0aXZlL3g4Nl82NC1saW51eC91c3IvYmluOi9ob21lL3VzZXIvcHJv
amVjdC95b2N0by9wb2t5L3NjcmlwdHM6L2hvbWUvdXNlci9wcm9qZWN0L3lvY3RvL2J1aWxk
L3RtcC93b3JrL3BpY296ZWRfenlucTctcG9reS1saW51eC1nbnVlYWJpL215LXJlY2lwZS9m
ZXRjaGVyYXZvaWRyZWN1cnNlLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3IvYmluL2Fy
bS1wb2t5LWxpbnV4LWdudWVhYmk6L2hvbWUvdXNlci9wcm9qZWN0L3lvY3RvL2J1aWxkL3Rt
cC93b3JrL3BpY296ZWRfenlucTctcG9reS1saW51eC1nbnVlYWJpL215LXJlY2lwZS9mZXRj
aGVyYXZvaWRyZWN1cnNlLXIwL3JlY2lwZS1zeXNyb290L3Vzci9iaW4vY3Jvc3NzY3JpcHRz
Oi9ob21lL3VzZXIvcHJvamVjdC95b2N0by9idWlsZC90bXAvd29yay9waWNvemVkX3p5bnE3
LXBva3ktbGludXgtZ251ZWFiaS9teS1yZWNpcGUvZmV0Y2hlcmF2b2lkcmVjdXJzZS1yMC9y
ZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL3NiaW46L2hvbWUvdXNlci9wcm9qZWN0L3lvY3Rv
L2J1aWxkL3RtcC93b3JrL3BpY296ZWRfenlucTctcG9reS1saW51eC1nbnVlYWJpL215LXJl
Y2lwZS9mZXRjaGVyYXZvaWRyZWN1cnNlLXIwL3JlY2lwZS1zeXNyb290LW5hdGl2ZS91c3Iv
YmluOi9ob21lL3VzZXIvcHJvamVjdC95b2N0by9idWlsZC90bXAvd29yay9waWNvemVkX3p5
bnE3LXBva3ktbGludXgtZ251ZWFiaS9teS1yZWNpcGUvZmV0Y2hlcmF2b2lkcmVjdXJzZS1y
MC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvc2JpbjovaG9tZS91c2VyL3Byb2plY3QveW9jdG8v
YnVpbGQvdG1wL3dvcmsvcGljb3plZF96eW5xNy1wb2t5LWxpbnV4LWdudWVhYmkvbXktcmVj
aXBlL2ZldGNoZXJhdm9pZHJlY3Vyc2UtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZlL2Jpbjov
aG9tZS91c2VyL3Byb2plY3QveW9jdG8vcG9reS9iaXRiYWtlL2JpbjovaG9tZS91c2VyL3By
b2plY3QveW9jdG8vYnVpbGQvdG1wL2hvc3R0b29scyI7DQo+IGV4cG9ydCBIT01FPSIvaG9t
ZS91c2VyIjsgTEFORz1DIExDX0FMTD1DIC91c3IvYmluL2VudiBzdm4NCj4gLS1ub24taW50
ZXJhY3RpdmUgLS10cnVzdC1zZXJ2ZXItY2VydCBsb2cgLS1saW1pdCAxIC0tbm8tYXV0aC1j
YWNoZSAhDQo+IGh0dHA6Ly9zZXJ2ZXIvcGF0aC9teV9tb2R1bGUvIGZhaWxlZCB3aXRoIGV4
aXQgY29kZSAxMjcsIG91dHB1dDoNCj4gL3Vzci9iaW4vZW52OiAnc3ZuJzogTm8gc3VjaCBm
aWxlIG9yIGRpcmVjdG9yeQ0KPg0KDQpSaWdodC4gVGhpcyBzZWVtcyB0byBoYXBwZW4gd2F5
IGJlZm9yZSB0aGUgZmV0Y2ggdGFzayBhbmQgc28gZG9lcyANCnJlcXVpcmUgaG9zdCBzdm4s
IEkgZ3Vlc3MgeW91J2xsIG5lZWQgdG8gdGFrZSBpdCB0byBiaXRiYWtlIG1haWxpbmcgDQps
aXN0LiBJdCB3b3JrcyBmb3IgZ2l0IGJlY2F1c2Ugd2UgYXJlIHVzaW5nIGhvc3QncyBnaXQg
Zm9yIHRoZSBzYW1lIHB1cnBvc2UuDQoNCkFsZXgNCg==

