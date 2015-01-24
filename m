Return-Path: <dwatkins@sierrawireless.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86B35E00944; Sat, 24 Jan 2015 09:12:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.169.72 listed in list.dnswl.org]
X-Greylist: delayed 916 seconds by postgrey-1.32 at yocto-www;
	Sat, 24 Jan 2015 09:12:06 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0072.outbound.protection.outlook.com [65.55.169.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8BCFDE007B7
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 09:12:06 -0800 (PST)
Received: from BY2PR02CA0036.namprd02.prod.outlook.com (10.141.216.26) by
	BY1PR0201MB1047.namprd02.prod.outlook.com (25.161.203.152) with
	Microsoft
	SMTP Server (TLS) id 15.1.65.19; Sat, 24 Jan 2015 16:56:48 +0000
Received: from BN1AFFO11FD023.protection.gbl (2a01:111:f400:7c10::170) by
	BY2PR02CA0036.outlook.office365.com (2a01:111:e400:2c40::26) with
	Microsoft
	SMTP Server (TLS) id 15.1.65.19 via Frontend Transport; Sat, 24 Jan 2015
	16:56:47 +0000
Received: from mail.sierrawireless.com (208.81.121.44) by
	BN1AFFO11FD023.mail.protection.outlook.com (10.58.52.83) with Microsoft
	SMTP Server (TLS) id 15.1.75.11 via Frontend Transport;
	Sat, 24 Jan 2015 16:56:47 +0000
Received: from carmd-exchmb01.sierrawireless.local ([10.0.6.3]) by
	CARMD-EXCHHUB01.sierrawireless.local ([::1]) with mapi; Sat, 24 Jan 2015
	08:56:46 -0800
From: Darcy Watkins <dwatkins@sierrawireless.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 24 Jan 2015 08:56:45 -0800
Thread-Topic: Two Stage Package Recipe
Thread-Index: AdA39rxgB1p/zoSAQpq0zEGo7Tsi9A==
Message-ID: <8F90F944E50427428C60E12A34A309D239F653D8D1@carmd-exchmb01.sierrawireless.local>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-EOPAttributedMessage: 0
Received-SPF: Pass (protection.outlook.com: domain of sierrawireless.com
	designates 208.81.121.44 as permitted sender)
	receiver=protection.outlook.com; client-ip=208.81.121.44;
	helo=mail.sierrawireless.com;
Authentication-Results: spf=pass (sender IP is 208.81.121.44)
	smtp.mailfrom=dwatkins@sierrawireless.com; yoctoproject.org; dkim=none
	(message not signed) header.d=none;yoctoproject.org; dmarc=permerror
	action=none header.from=sierrawireless.com;
X-Forefront-Antispam-Report: CIP:208.81.121.44; CTRY:CA; IPV:NLI; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(41574002)(51874003)(54356999)(2501002)(77156002)(110136001)(229853001)(62966003)(450100001)(15975445007)(86362001)(55846006)(2900100001)(2920100001)(2930100002)(19625215002)(46102003)(87936001)(2656002)(106466001)(512874002)(104016003)(102836002)(50986999)(77096005)(19580395003)(16601075003)(84326002)(92566002)(107886001)(2351001)(98436002)(33656002)(6806004)(7099025)(19607625011);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0201MB1047;
	H:mail.sierrawireless.com; FPR:; SPF:Pass; MLV:ovrnspm;
	PTR:spf.sierrawireless.com,carmdsmtp.sierrawireless.com; LANG:en;
X-DmarcAction-Test: None
X-Microsoft-Antispam: UriScan:;
X-Microsoft-Antispam: BCL:0;PCL:0;RULEID:(3005004);SRVR:BY1PR0201MB1047;
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0; RULEID:(601004);
	SRVR:BY1PR0201MB1047; 
X-Forefront-PRVS: 0466CA5A45
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0201MB1047; 
X-OriginatorOrg: SierraWirelessInc.onmicrosoft.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2015 16:56:47.0094 (UTC)
X-MS-Exchange-CrossTenant-Id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=08059a4c-2486-43dd-89e3-3a747e0dcbe8;
	Ip=[208.81.121.44]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0201MB1047
Subject: Two Stage Package Recipe
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
X-List-Received-Date: Sat, 24 Jan 2015 17:12:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_8F90F944E50427428C60E12A34A309D239F653D8D1carmdexchmb01_"

--_000_8F90F944E50427428C60E12A34A309D239F653D8D1carmdexchmb01_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCkkgaGF2ZSBhIHBhY2thZ2UgaW4gbXkgQlNQIGxheWVyLCBsZXTigJlzIGp1c3Qg
Y2FsbCBpdCDigJxteS1wbGF0Zm9ybeKAnS4gIEF0IHByZXNlbnQsIGl0IGJ1aWxkcyBsaWJyYXJp
ZXMgdG8gaW1wbGVtZW50IGEgSFcgYWNjZXNzIEFQSSBhbG9uZyB3aXRoIGNvbW1hbmQgbGluZSB1
dGlsaXRpZXMgdXNlZnVsIGZvciB0ZXN0aW5nIGFuZCBkaWFnbm9zdGljcyAoYW5kIHVzaW5nIHRo
ZSBBUEkgZnJvbSBzaGVsbCBzY3JpcHRzKS4gIEF0IHByZXNlbnQsIGl0IGFsc28gdXNlcyB0aGUg
aG9zdC1zd2lnIHRvIGdlbmVyYXRlIGludGVyZmFjZSBsaWJyYXJpZXMgZm9yIHB5dGhvbiBiaW5k
aW5ncyBhbmQgamF2YSBiaW5kaW5ncyB0byBhY2Nlc3MgdGhlIEhXIEFQSS4NCg0KVGhpcyBtZWFu
cyB0aGF0IOKAmG15LXBsYXRmb3Jt4oCZIGhhcyB0byBkZXBlbmQgYm90aCBvbiDigJhweXRob27i
gJkgYW5kIG9uIOKAmG9wZW5qZGstNy1qcmXigJkgdG8gYnVpbGQuDQoNCldoYXQgSSB3b3VsZCBs
aWtlIHRvIGRvIGlzIHRvIGhhdmUgdGhlIGRlZmF1bHQgYnVpbGQgdG8gdGhlIHJlY2lwZSB0byBi
dWlsZCBpdCBhbGwgRVhDRVBUIGZvciB0aGUgamF2YSBiaW5kaW5ncy4gIFNvIEkgd291bGQgd2Fu
dCB0byBidWlsZCBhbGwgdGhlIHVzdWFsIGxpYnJhcmllcyBhbmQgdXRpbGl0aWVzIGFuZCBoYXZl
IHRoaXMgTk9UIGhhdmUgZGVwZW5kZW5jeSBvbiDigJhvcGVuamRrLTctanJl4oCZLg0KDQpUaGVu
IHdpdGhvdXQgaGF2aW5nIHRvIHRyZWF0IGl0IGFzIGEgZGlmZmVyZW50IHBhY2thZ2UsIEkgd291
bGQgbGlrZSB0byBiZSBhYmxlIHRvIHJlLWludm9rZSB0aGUgYnVpbGQgdG8gYnVpbGQgdGhlIGph
dmEgYmluZGluZ3MuICBUaGlzIHBhcnRpY3VsYXIgc3RlcCB3aWxsIG5lZWQgdG8gYmUgZGVwZW5k
ZW50IG9uIOKAmG9wZW5qZGstNy1qcmXigJkgd2l0aG91dCBtYWtpbmcgZWFybGllciBzdGVwcyB0
byBiZSBkZXBlbmRlbnQgb24g4oCYb3Blbmpkay03LWpyZeKAmS4NCg0KSSBlbnZpc2lvbiB0aGF0
IHRoaXMgc2hvdWxkIHJlc3VsdCBpbiBvbmUgUlBNIG91dHB1dCB3aXRoIHRoZSBmaXJzdCBidWls
ZCBwcm9kdWN0cywgYW5kIHRoZSBzZWNvbmQgUlBNIG91dHB1dCB3aXRoIHRoZSBqYXZhIGJpbmRp
bmdzIChhZGRvbnMpLg0KDQpJbiB0aGUgZW5kLCBJIHdpbGwgd2FudCB0byBiZSBhYmxlIHRvIGhh
dmUgYSBtaW5pbWFsaXN0aWMgaW1hZ2UgaW5jbHVkZSBhbmQgZGVwZW5kIG9uIOKAmG15LXBhY2th
Z2XigJkgd2l0aG91dCBqYXZhIGJpbmRpbmdzLCBhbmQgdGhlbiBoYXZlIGEgZnVsbCBmZWF0dXJl
IGltYWdlIHRoYXQgaW5jbHVkZXMgYW5kIGRlcGVuZHMgb24gdGhlIGphdmEgYmluZGluZ3MuDQoN
Ckkgc3VwcG9zZSB0aGVyZSBpcyBub3RoaW5nIHN0b3BwaW5nIG1lIGZyb20gYnJlYWtpbmcgb3V0
IHRoZSBweXRob24gYmluZGluZ3MgaW50byB0aGUgc2FtZSBzZWNvbmQgc3RhZ2Ugc2NoZW1lIGFz
IHdlbGwganVzdCB0byBrZWVwIHRoaW5ncyBjb25zaXN0ZW50LCBidXQgaW4gdGVybXMgb2YgbmVl
ZCwgYnJlYWtpbmcgb3V0IHRoZSBqYXZhIGlzIHRoZSBwcmlvcml0eS4NCg0KQW55IHN1Z2dlc3Rp
b25zLCB0aXBzIGluIHRlcm1zIG9mIGJlc3QgcHJhY3RpY2VzPyAgIOKApiBvciBwbGVhc2UgcG9p
bnQgbWUgdG8gZ29vZCBleGFtcGxlcyB0byBzdHVkeS4gIFRoYW5rcyENCg0KSSBhbSBwcmVzZW50
bHkgd29ya2luZyBmcm9tIOKAmGRhaXN54oCZIGJyYW5jaC4NCg0KVGhhbmtzIGluIGFkdmFuY2Uu
DQoNCg0KUmVnYXJkcywNCg0KRGFyY3kNCg0KDQoNCkRhcmN5IFdhdGtpbnMNClN0YWZmIEVuZ2lu
ZWVyLCBGaXJtd2FyZQ0KDQotLS0tDQpTaWVycmEgV2lyZWxlc3MNCmh0dHA6Ly93d3cuc2llcnJh
d2lyZWxlc3MuY29tDQpbTTFdDQoNCg==

--_000_8F90F944E50427428C60E12A34A309D239F653D8D1carmdexchmb01_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

CjxodG1sPgo8aGVhZD4KPG1ldGEgbmFtZT0iZ2VuZXJhdG9yIiBjb250ZW50PSJXaW5kb3dzIE1h
aWwgMTcuNS45NjAwLjIwNjg5Ij4KPHN0eWxlIGRhdGEtZXh0ZXJuYWxzdHlsZT0idHJ1ZSI+PCEt
LQpwLk1zb0xpc3RQYXJhZ3JhcGgsIGxpLk1zb0xpc3RQYXJhZ3JhcGgsIGRpdi5Nc29MaXN0UGFy
YWdyYXBoIHsKbWFyZ2luLXRvcDowaW47Cm1hcmdpbi1yaWdodDowaW47Cm1hcmdpbi1ib3R0b206
MGluOwptYXJnaW4tbGVmdDouNWluOwptYXJnaW4tYm90dG9tOi4wMDAxcHQ7Cn0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbCB7Cm1hcmdpbjowaW47Cm1hcmdpbi1ib3R0
b206LjAwMDFwdDsKfQpwLk1zb0xpc3RQYXJhZ3JhcGhDeFNwRmlyc3QsIGxpLk1zb0xpc3RQYXJh
Z3JhcGhDeFNwRmlyc3QsIGRpdi5Nc29MaXN0UGFyYWdyYXBoQ3hTcEZpcnN0LCAKcC5Nc29MaXN0
UGFyYWdyYXBoQ3hTcE1pZGRsZSwgbGkuTXNvTGlzdFBhcmFncmFwaEN4U3BNaWRkbGUsIGRpdi5N
c29MaXN0UGFyYWdyYXBoQ3hTcE1pZGRsZSwgCnAuTXNvTGlzdFBhcmFncmFwaEN4U3BMYXN0LCBs
aS5Nc29MaXN0UGFyYWdyYXBoQ3hTcExhc3QsIGRpdi5Nc29MaXN0UGFyYWdyYXBoQ3hTcExhc3Qg
ewptYXJnaW4tdG9wOjBpbjsKbWFyZ2luLXJpZ2h0OjBpbjsKbWFyZ2luLWJvdHRvbTowaW47Cm1h
cmdpbi1sZWZ0Oi41aW47Cm1hcmdpbi1ib3R0b206LjAwMDFwdDsKbGluZS1oZWlnaHQ6MTE1JTsK
fQotLT48L3N0eWxlPjwvaGVhZD4KPGJvZHkgZGlyPSJsdHIiPgo8ZGl2IGRhdGEtZXh0ZXJuYWxz
dHlsZT0iZmFsc2UiIGRpcj0ibHRyIiBzdHlsZT0iZm9udC1mYW1pbHk6ICdDYWxpYnJpJywgJ1Nl
Z29lIFVJJywgJ01laXJ5bycsICdNaWNyb3NvZnQgWWFIZWkgVUknLCAnTWljcm9zb2Z0IEpoZW5n
SGVpIFVJJywgJ01hbGd1biBHb3RoaWMnLCAnc2Fucy1zZXJpZic7Zm9udC1zaXplOjEycHQ7Ij48
ZGl2PkhlbGxvLDwvZGl2PjxkaXY+PGJyPjwvZGl2PjxkaXY+SSBoYXZlIGEgcGFja2FnZSBpbiBt
eSBCU1AgbGF5ZXIsIGxldOKAmXMganVzdCBjYWxsIGl0Jm5ic3A74oCcbXktcGxhdGZvcm3igJ0u
Jm5ic3A7IEF0IHByZXNlbnQsIGl0IGJ1aWxkcyBsaWJyYXJpZXMgdG8gaW1wbGVtZW50IGEgSFcg
YWNjZXNzIEFQSSBhbG9uZyB3aXRoIGNvbW1hbmQgbGluZSB1dGlsaXRpZXMgdXNlZnVsIGZvciB0
ZXN0aW5nIGFuZCBkaWFnbm9zdGljcyAoYW5kIHVzaW5nIHRoZSBBUEkgZnJvbSBzaGVsbCBzY3Jp
cHRzKS4mbmJzcDsgQXQgcHJlc2VudCwgaXQgYWxzbyB1c2VzIHRoZSBob3N0LXN3aWcgdG8gZ2Vu
ZXJhdGUgaW50ZXJmYWNlJm5ic3A7bGlicmFyaWVzIGZvciBweXRob24gYmluZGluZ3MgYW5kIGph
dmEgYmluZGluZ3MgdG8gYWNjZXNzIHRoZSBIVyBBUEkuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRp
dj5UaGlzIG1lYW5zIHRoYXQmbmJzcDvigJhteS1wbGF0Zm9ybeKAmSBoYXMgdG8gZGVwZW5kIGJv
dGggb24mbmJzcDvigJhweXRob27igJkgYW5kIG9uJm5ic3A74oCYb3Blbmpkay03LWpyZeKAmSB0
byBidWlsZC48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PldoYXQgSSB3b3VsZCBsaWtlIHRvIGRv
IGlzIHRvIGhhdmUgdGhlIGRlZmF1bHQgYnVpbGQgdG8gdGhlIHJlY2lwZSB0byBidWlsZCBpdCBh
bGwgRVhDRVBUIGZvciB0aGUgamF2YSBiaW5kaW5ncy4mbmJzcDsgU28gSSB3b3VsZCB3YW50IHRv
IGJ1aWxkIGFsbCB0aGUgdXN1YWwgbGlicmFyaWVzIGFuZCB1dGlsaXRpZXMgYW5kIGhhdmUgdGhp
cyBOT1QgaGF2ZSBkZXBlbmRlbmN5IG9uJm5ic3A74oCYb3Blbmpkay03LWpyZeKAmS48L2Rpdj48
ZGl2Pjxicj48L2Rpdj48ZGl2PlRoZW4gd2l0aG91dCBoYXZpbmcgdG8gdHJlYXQgaXQgYXMgYSBk
aWZmZXJlbnQgcGFja2FnZSwgSSB3b3VsZCBsaWtlIHRvIGJlIGFibGUgdG8gcmUtaW52b2tlIHRo
ZSBidWlsZCB0byBidWlsZCB0aGUgamF2YSBiaW5kaW5ncy4mbmJzcDsgVGhpcyBwYXJ0aWN1bGFy
IHN0ZXAgd2lsbCBuZWVkIHRvIGJlIGRlcGVuZGVudCBvbiZuYnNwO+KAmG9wZW5qZGstNy1qcmXi
gJkgd2l0aG91dCBtYWtpbmcgZWFybGllciBzdGVwcyZuYnNwO3RvIGJlIGRlcGVuZGVudCBvbiZu
YnNwO+KAmG9wZW5qZGstNy1qcmXigJkuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGVudmlz
aW9uIHRoYXQgdGhpcyBzaG91bGQgcmVzdWx0IGluIG9uZSBSUE0gb3V0cHV0IHdpdGggdGhlIGZp
cnN0IGJ1aWxkIHByb2R1Y3RzLCBhbmQgdGhlIHNlY29uZCBSUE0gb3V0cHV0IHdpdGggdGhlIGph
dmEgYmluZGluZ3MgKGFkZG9ucykuPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JbiB0aGUgZW5k
LCBJIHdpbGwgd2FudCB0byBiZSBhYmxlIHRvIGhhdmUgYSBtaW5pbWFsaXN0aWMgaW1hZ2UgaW5j
bHVkZSBhbmQgZGVwZW5kIG9uJm5ic3A74oCYbXktcGFja2FnZeKAmSB3aXRob3V0IGphdmEgYmlu
ZGluZ3MsIGFuZCB0aGVuIGhhdmUgYSBmdWxsIGZlYXR1cmUgaW1hZ2UgdGhhdCBpbmNsdWRlcyBh
bmQgZGVwZW5kcyBvbiB0aGUgamF2YSBiaW5kaW5ncy48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2
Pkkgc3VwcG9zZSB0aGVyZSBpcyBub3RoaW5nIHN0b3BwaW5nIG1lIGZyb20gYnJlYWtpbmcgb3V0
IHRoZSBweXRob24gYmluZGluZ3MgaW50byB0aGUgc2FtZSBzZWNvbmQgc3RhZ2Ugc2NoZW1lIGFz
IHdlbGwganVzdCB0byBrZWVwIHRoaW5ncyBjb25zaXN0ZW50LCBidXQgaW4gdGVybXMgb2YgbmVl
ZCwgYnJlYWtpbmcgb3V0IHRoZSBqYXZhIGlzIHRoZSBwcmlvcml0eS48L2Rpdj48ZGl2Pjxicj48
L2Rpdj48ZGl2PkFueSBzdWdnZXN0aW9ucywgdGlwcyBpbiB0ZXJtcyBvZiBiZXN0IHByYWN0aWNl
cz8mbmJzcDsmbmJzcDsg4oCmIG9yIHBsZWFzZSBwb2ludCBtZSB0byBnb29kIGV4YW1wbGVzIHRv
IHN0dWR5LiZuYnNwOyBUaGFua3MhPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5JIGFtIHByZXNl
bnRseSB3b3JraW5nIGZyb20mbmJzcDvigJhkYWlzeeKAmSBicmFuY2guPC9kaXY+PGRpdj48YnI+
PC9kaXY+PGRpdj5UaGFua3MgaW4gYWR2YW5jZS48L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2IGRh
dGEtc2lnbmF0dXJlYmxvY2s9InRydWUiPjxkaXY+PGJyPjwvZGl2PjxkaXY+UmVnYXJkcyw8YnI+
Jm5ic3A7PGJyPkRhcmN5PGJyPiZuYnNwOzxicj48YnI+Jm5ic3A7PGJyPkRhcmN5IFdhdGtpbnM8
YnI+U3RhZmYgRW5naW5lZXIsIEZpcm13YXJlPGJyPjxicj4tLS0tPGJyPlNpZXJyYSBXaXJlbGVz
czxicj5odHRwOi8vd3d3LnNpZXJyYXdpcmVsZXNzLmNvbTxicj5bTTFdPC9kaXY+PGRpdj48YnI+
PC9kaXY+PC9kaXY+PC9kaXY+CjwvYm9keT4KPC9odG1sPgo=

--_000_8F90F944E50427428C60E12A34A309D239F653D8D1carmdexchmb01_--
