Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D91A7E008A6; Mon,  2 Feb 2015 09:48:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [207.46.100.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 943 seconds by postgrey-1.32 at yocto-www;
	Mon, 02 Feb 2015 09:48:23 PST
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2on0083.outbound.protection.outlook.com [207.46.100.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50986E00824
	for <yocto@yoctoproject.org>; Mon,  2 Feb 2015 09:48:23 -0800 (PST)
Received: from BY2PR02CA0035.namprd02.prod.outlook.com (10.141.216.25) by
	DM2PR02MB477.namprd02.prod.outlook.com (10.141.84.143) with Microsoft
	SMTP Server (TLS) id 15.1.65.19; Mon, 2 Feb 2015 17:32:36 +0000
Received: from BY2FFO11FD052.protection.gbl (2a01:111:f400:7c0c::123) by
	BY2PR02CA0035.outlook.office365.com (2a01:111:e400:2c40::25) with
	Microsoft
	SMTP Server (TLS) id 15.1.75.20 via Frontend Transport; Mon, 2 Feb 2015
	17:32:36 +0000
Received: from mail.sierrawireless.com (208.81.121.47) by
	BY2FFO11FD052.mail.protection.outlook.com (10.1.15.189) with Microsoft
	SMTP Server (TLS) id 15.1.75.11 via Frontend Transport;
	Mon, 2 Feb 2015 17:32:35 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	carmd-exchhub02.sierrawireless.local ([::1]) with mapi; Mon, 2 Feb 2015
	09:32:35 -0800
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Mon, 2 Feb 2015 09:32:40 -0800
Thread-Topic: Two Stage Package Recipe
Thread-Index: AdA/Djqn0HOXIPBrSoGcPq81WDsmDw==
Message-ID: <1422898360.3754.1.camel@caimt-galileo.sierrawireless.local>
References: <8F90F944E50427428C60E12A34A309D239F653D8D1@carmd-exchmb01.sierrawireless.local>
In-Reply-To: <8F90F944E50427428C60E12A34A309D239F653D8D1@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.47 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.47;
	helo=mail.sierrawireless.com;
Authentication-Results: spf=pass (sender IP is 208.81.121.47)
	smtp.mailfrom=dwatkins@sierrawireless.com; yoctoproject.org; dkim=none
	(message not signed) header.d=none;
X-Forefront-Antispam-Report: CIP:208.81.121.47; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(377424004)(51704005)(24454002)(19580395003)(6806004)(450100001)(77156002)(23676002)(87936001)(50466002)(47776003)(2656002)(15974865002)(107886001)(86362001)(62966003)(102836002)(2950100001)(2900100001)(92566002)(50986999)(33646002)(110136001)(98436002)(106466001)(77096005)(2501002)(54356999)(46102003)(103116003)(104016003)(19580405001)(76176999)(2351001)(7099025);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM2PR02MB477;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:ovrnspm;
	PTR:spf.sierrawireless.com; LANG:en; 
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:;SRVR:DM2PR02MB477;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0; RULEID:(601004);
	SRVR:DM2PR02MB477; 
X-Forefront-PRVS: 0475418F50
X-Exchange-Antispam-Report-CFA-Test: BCL:0;PCL:0;RULEID:;SRVR:DM2PR02MB477;
X-OriginatorOrg: SierraWirelessInc.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2015 17:32:35.7947 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.47]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM2PR02MB477
Subject: Re: Two Stage Package Recipe
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
X-List-Received-Date: Mon, 02 Feb 2015 17:48:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB0b29rIGEgc3RhYiBhdCB0aGlzIGFuZCBmb3VuZCB0aGF0IHRoZSBvbmx5IHdheSBJIGNvdWxk
IGhhbmRsZSB0aGlzIGlzDQp0byBzcGxpdCB0aGUgcGFja2FnZSB1cC4NCg0KU2VlIGludGVyc3Bl
cnNlZCB3aXRoIG15IG9yaWdpbmFsIGVtYWlsLg0KDQpUaGUgc2hvcnQgYW5zd2VyIGlzIHRoYXQg
SSBoYWQgdG8gc3BsaXQgaXQgaW50byB0aHJlZSBwYWNrYWdlLCBlYWNoIHdpdGgNCml0cyBvd24g
cmVjaXBlLg0KDQooSSBtYXkgcmV2aXNpdCB0aGlzIGRvd24gdGhlIHJvYWQgdXNpbmcgY2xhc3Nl
cyBzdWNoIGFzIHRob3NlIHRoYXQgYXJlDQp1c2VkIGZvciBoYXZpbmcgYSBzaW5nbGUgcGFja2Fn
ZSBidWlsZCBmb3IgdGFyZ2V0LCBidWlsZCBhICctbmF0aXZlJyBmb3INCnRoZSBidWlsZCBob3N0
IGFuZCBpbiBzb21lIGNhc2VzLCBmb3IgdGhlIFNESykuDQoNCg0KDQotLSANCg0KUmVnYXJkcywN
Cg0KRGFyY3kNCg0KRGFyY3kgV2F0a2lucyA6OiAgU3RhZmYgRW5naW5lZXIsIEZpcm13YXJlDQoN
ClNJRVJSQSBXSVJFTEVTUw0KRGlyZWN0ICsxIDYwNCAyMzMgNzk4OSA6OiBGYXggKzEgNjA0IDIz
MSAxMTA5IDo6IE1haW4gKzEgNjA0IDIzMSAxMTAwDQoxMzgxMSBXaXJlbGVzcyBXYXkgIDo6IFJp
Y2htb25kLCBCQyBDYW5hZGEgVjZWIDNBNA0KW1A0XQ0KZHdhdGtpbnNAc2llcnJhd2lyZWxlc3Mu
Y29tIDo6IHd3dy5zaWVycmF3aXJlbGVzcy5jb20gOjogd3d3LmlubW90aW9udGVjaG5vbG9neS5j
b20NCg0KDQoNCg0KT24gU2F0LCAyMDE1LTAxLTI0IGF0IDA4OjU2IC0wODAwLCBEYXJjeSBXYXRr
aW5zIHdyb3RlOg0KPiBIZWxsbywNCj4gDQo+IA0KPiBJIGhhdmUgYSBwYWNrYWdlIGluIG15IEJT
UCBsYXllciwgbGV04oCZcyBqdXN0IGNhbGwgaXQg4oCcbXktcGxhdGZvcm3igJ0uDQo+IEF0IHBy
ZXNlbnQsIGl0IGJ1aWxkcyBsaWJyYXJpZXMgdG8gaW1wbGVtZW50IGEgSFcgYWNjZXNzIEFQSSBh
bG9uZw0KPiB3aXRoIGNvbW1hbmQgbGluZSB1dGlsaXRpZXMgdXNlZnVsIGZvciB0ZXN0aW5nIGFu
ZCBkaWFnbm9zdGljcyAoYW5kDQo+IHVzaW5nIHRoZSBBUEkgZnJvbSBzaGVsbCBzY3JpcHRzKS4g
IEF0IHByZXNlbnQsIGl0IGFsc28gdXNlcyB0aGUNCj4gaG9zdC1zd2lnIHRvIGdlbmVyYXRlIGlu
dGVyZmFjZSBsaWJyYXJpZXMgZm9yIHB5dGhvbiBiaW5kaW5ncyBhbmQgamF2YQ0KPiBiaW5kaW5n
cyB0byBhY2Nlc3MgdGhlIEhXIEFQSS4NCj4gDQo+IA0KPiBUaGlzIG1lYW5zIHRoYXQg4oCYbXkt
cGxhdGZvcm3igJkgaGFzIHRvIGRlcGVuZCBib3RoIG9uIOKAmHB5dGhvbuKAmSBhbmQNCj4gb24g
4oCYb3Blbmpkay03LWpyZeKAmSB0byBidWlsZC4NCj4gDQoNClRoZSBpc3N1ZSB0aGF0IHRyaWdn
ZXJlZCB0aGUgbmVlZCBpcyB0aGF0IG9wZW5qZGstNy1qcmUgaGFzIGJlZW4gYnJva2VuDQpkdWUg
dG8gc29tZXRoaW5nIHRoYXQgY2hhbmdlZCBpbiBRRU1VIHNvIEkgd2FudCB0byBiZSBhYmxlIHRv
IGJ1aWxkIHRoZQ0KYmFzZSBwYWNrYWdlLCB0aGVuIGEgcGFja2FnZSBmb3IgdGhlIHB5dGhvbiBi
aW5kaW5ncyBhbmQgdGhlbiBhIHBhY2thZ2UNCmZvciB0aGUgamF2YSBiaW5kaW5ncyAodGhhdCBJ
IGNhbiBkaXNhYmxlIHVudGlsIEkgaGF2ZSB0aGUgamF2YSBidWlsZA0KYmFjayB1cCBhZ2Fpbiku
DQoNClRoZSBvYmplY3RpdmUgaXMgdG8gaGF2ZSB0aGVzZSBoYW5kbGVkIHVzaW5nIGRlcGVuZGVu
Y2llcyBiYXNlZCBvbiB3aGF0DQppbWFnZXMgYW5kL29yIGRpc3RybyBsYXllcnMgY2FsbCB1cC4N
Cg0KRm9yIGV4YW1wbGUsIG15LWltYWdlLWZ1bGwgYnVpbGQgZXZlcnl0aGluZ3MgYnV0IG15LWlt
YWdlLW5vamF2YQ0KZXhjbHVkZXMgdGhlIGphdmEgY29tcG9uZW50cy4NCg0KPiANCj4gV2hhdCBJ
IHdvdWxkIGxpa2UgdG8gZG8gaXMgdG8gaGF2ZSB0aGUgZGVmYXVsdCBidWlsZCB0byB0aGUgcmVj
aXBlIHRvDQo+IGJ1aWxkIGl0IGFsbCBFWENFUFQgZm9yIHRoZSBqYXZhIGJpbmRpbmdzLiAgU28g
SSB3b3VsZCB3YW50IHRvIGJ1aWxkDQo+IGFsbCB0aGUgdXN1YWwgbGlicmFyaWVzIGFuZCB1dGls
aXRpZXMgYW5kIGhhdmUgdGhpcyBOT1QgaGF2ZQ0KPiBkZXBlbmRlbmN5IG9uIOKAmG9wZW5qZGst
Ny1qcmXigJkuDQo+IA0KDQpJIHRyaWVkIHRvIHBsYWNlIHRoZXNlIGludG8gc2VwYXJhdGUgUEFD
S0FHRXMgKGkuZS4gc2VwYXJhdGUgUlBNDQpvdXRwdXRzKS4gIFRoYXQgd29ya3MgZ3JlYXQsIGhv
d2V2ZXIgSSB3YXMgbm90IGFibGUgdG8gaGF2ZSBvdXRzaWRlDQpkZXBlbmRlbmNpZXMgc2VsZWN0
IHRoZXNlIG9uIGluZGl2aWR1YWwgYmFzaXMuICBUaGUgYnVpbGQgc2VlbXMgdG8gYmUNCmZvciBh
bGwgb3Igbm9uZS4gIEl0IGlzIGxpa2UgSSBuZWVkIHRvIGJlIGFibGUgdG8gaGF2ZSBkb19jb21w
aWxlLA0KZG9faW5zdGFsbCBldGMuIHBoYXNlcyBmb3IgbXVsdGlwbGUgaXRlbXMgaW5zaWRlIHRo
ZSBwYWNrYWdlLCB3aXRoIGVhY2gNCmNoYWluIGFjY2Vzc2libGUgZm9yIGRlcGVuZGVuY3kgcnVs
ZXMuDQoNCj4gDQo+IFRoZW4gd2l0aG91dCBoYXZpbmcgdG8gdHJlYXQgaXQgYXMgYSBkaWZmZXJl
bnQgcGFja2FnZSwgSSB3b3VsZCBsaWtlDQo+IHRvIGJlIGFibGUgdG8gcmUtaW52b2tlIHRoZSBi
dWlsZCB0byBidWlsZCB0aGUgamF2YSBiaW5kaW5ncy4gIFRoaXMNCj4gcGFydGljdWxhciBzdGVw
IHdpbGwgbmVlZCB0byBiZSBkZXBlbmRlbnQgb24g4oCYb3Blbmpkay03LWpyZeKAmSB3aXRob3V0
DQo+IG1ha2luZyBlYXJsaWVyIHN0ZXBzIHRvIGJlIGRlcGVuZGVudCBvbiDigJhvcGVuamRrLTct
anJl4oCZLg0KPiANCg0KSGFkIHRvIG1ha2Ugc2VwYXJhdGUgcGFja2FnZXM6DQoNCiAgbXktcGxh
dGZvcm0gICAgICAgICAgLSBmb3IgYmFzZSBpdGVtcw0KICBweXRob24tbXktcGxhdGZvcm0gICAt
IGZvciBweXRob24gYmluZGluZ3MgdG8gdGhlIGxpYnJhcmllcw0KICBteS1wbGF0Zm9ybS1qYXZh
ICAgICAtIGZvciBqYXZhIGJpbmRpbmdzIHRvIHRoZSBsaWJyYXJpZXMNCg0KVGhlIG9uZS10by1t
YW55IHJlbGF0aW9uc2hpcCBmcm9tIHNvdXJjZSB0byBnZW5lcmF0ZWQgb3V0cHV0cyBpcyBoYW5k
bGVkDQpieSBhbGwgdGhyZWUgcmVjaXBlcyByZXRyaWV2aW5nIGNvbW1vbiBzb3VyY2UuDQoNCj4g
DQo+IEkgZW52aXNpb24gdGhhdCB0aGlzIHNob3VsZCByZXN1bHQgaW4gb25lIFJQTSBvdXRwdXQg
d2l0aCB0aGUgZmlyc3QNCj4gYnVpbGQgcHJvZHVjdHMsIGFuZCB0aGUgc2Vjb25kIFJQTSBvdXRw
dXQgd2l0aCB0aGUgamF2YSBiaW5kaW5ncw0KPiAoYWRkb25zKS4NCj4gDQoNCkkgaGFkIGhvcGVk
IHRoYXQgdGhpcyBjb3VsZCBiZSBoYW5kbGVkIHVzaW5nIGEgc2luZ2xlIHJlY2lwZSBiYXNlZCBv
bg0Kb25lIHNvdXJjZSByZXRyaWV2YWwgYW5kIHRocmVlIGdlbmVyYXRlZCBvdXRwdXRzLCBidXQg
aXQgYXBwZWFycyBJIG5lZWQNCnRvIGltcGxlbWVudCBpdCBhcyB0aHJlZSByZWNpcGVzLg0KDQo+
IA0KPiBJbiB0aGUgZW5kLCBJIHdpbGwgd2FudCB0byBiZSBhYmxlIHRvIGhhdmUgYSBtaW5pbWFs
aXN0aWMgaW1hZ2UNCj4gaW5jbHVkZSBhbmQgZGVwZW5kIG9uIOKAmG15LXBhY2thZ2XigJkgd2l0
aG91dCBqYXZhIGJpbmRpbmdzLCBhbmQgdGhlbg0KPiBoYXZlIGEgZnVsbCBmZWF0dXJlIGltYWdl
IHRoYXQgaW5jbHVkZXMgYW5kIGRlcGVuZHMgb24gdGhlIGphdmENCj4gYmluZGluZ3MuDQo+IA0K
DQpBbHRob3VnaCBub3QgYXMgZWxlZ2FudCBhcyBJIGhvcGVkLCBJIHdhcyBhYmxlIHRvIGdldCB0
aGlzIHRvIGhhcHBlbi4NCg0K

