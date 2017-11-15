Return-Path: <zhenlw@msn.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 333FDE00C45; Wed, 15 Nov 2017 11:54:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.92.253.29 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zhenlw[at]msn.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 18076 seconds by postgrey-1.32 at yocto-www;
	Wed, 15 Nov 2017 11:54:24 PST
Received: from APC01-SG2-obe.outbound.protection.outlook.com
	(mail-oln040092253029.outbound.protection.outlook.com [40.92.253.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C28EE009B4
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 11:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=siReKv5aEibcIz2/fAtkb4X/W38qh2b0g+WuaZ5cn9A=;
	b=WufwbYdt+dvEq+MM4rGrOsH0I3JDhsU6E8YRMK76vYec8A59ByXTW5Bew0nllUMCJtaVHAAgKje2KhAeqHaTOrSxGbPxPppZWDlvyAS070J673dFhGzEFms+/2um+9jtOBPqjPVjEfhRVEd69SdfZh+RESSlr4vxD/stInKMvqyTMSmZ76L/FnN0qs53WTVUez79EAj+N/Rd4yfse+oOwx+k/guWZXdDrmeb/7MyTUPThhNpvfYCroBm9Z1AoLiAh1kJ0SX5e9WJ7+Qg2//tKEC5c+A/PRL1vdq9xVGzYkbcERguefglhWxvvvRqlW3IIA92+GlqTGIJVUeMRep2Ug==
Received: from HK2APC01FT005.eop-APC01.prod.protection.outlook.com
	(10.152.248.60) by HK2APC01HT202.eop-APC01.prod.protection.outlook.com
	(10.152.249.81) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.156.4;
	Wed, 15 Nov 2017 12:19:44 +0000
Received: from KL1PR04MB0982.apcprd04.prod.outlook.com (10.152.248.59) by
	HK2APC01FT005.mail.protection.outlook.com (10.152.248.148) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.178.5 via
	Frontend Transport; Wed, 15 Nov 2017 12:19:44 +0000
Received: from KL1PR04MB0982.apcprd04.prod.outlook.com
	([fe80::e8d2:3d4d:2df4:4b4b]) by
	KL1PR04MB0982.apcprd04.prod.outlook.com
	([fe80::e8d2:3d4d:2df4:4b4b%13]) with mapi id 15.20.0218.015;
	Wed, 15 Nov 2017 12:19:44 +0000
From: Zhen LiWei <zhenlw@msn.com>
To: ChenQi <Qi.Chen@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: =?gb2312?B?tPC4tDogW3lvY3RvXSB1c2UgbmF0aXZlIChjcm9zcykgdG9vbGNoYWluIGlu?=
	=?gb2312?B?c3RlYWQgb2YgYSBwb3B1bGF0ZWQgbmF0aXZlc2RrIChjcm9zcy1jYW5hZGlh?=
	=?gb2312?Q?n)_toolchain?=
Thread-Index: AQHTV9pnzH17ANxPqUOFgosuPP1aOqMLWsuAgAYyzvuAAEbYAIADj3C0
Date: Wed, 15 Nov 2017 12:19:43 +0000
Message-ID: <KL1PR04MB098266282D2F0B6B17C5DCA2C7290@KL1PR04MB0982.apcprd04.prod.outlook.com>
References: <PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com>
	<69b58a42-f0dd-e6a0-d13a-0ae5fc3ee6ab@windriver.com>
	<KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB0982.apcprd04.prod.outlook.com>,
	<83429dd1-12f0-8b79-56cb-3f4933edf1c5@windriver.com>
In-Reply-To: <83429dd1-12f0-8b79-56cb-3f4933edf1c5@windriver.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
	header.d=none; windriver.com; dmarc=none action=none header.from=msn.com;
x-incomingtopheadermarker: OriginalChecksum:66697BC2DC7D73C23C4E5EF01B5B8DB5C0C5EBBD7D975442301D9584B82AEFF3;
	UpperCasedChecksum:15C8E1967E059638982933C860CB0EFB986CA190FCEB2CCAFC98698F33356FE1;
	SizeAsReceived:7552; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [YTqvq4/c2JPCWnNmJXJ1X2xwcbxZ63D5]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HK2APC01HT202;
	6:doIN5cmZAbQlqyHcJho1b4TndAZe6t/kFlcHS8teISQkmmwgSzPC5wBD/g+lovzjxVoVP2nn/MLD7ZVq5+WKxlBKmpJUlm+J9cHo6dfsi1jcQfuw3IYP4jtRn4thm9wXKSFVa2ZJyvIbq6LF4lrNuXYWt1HZmdjD9k9pQ1PGXn4BDpHpDknXnsUUz+o+H8UWx6NDFlNNEL+XLoFe6AglhtElIGATSrwh2Aex0hXy+2bXM5OT3F9RrrHskcZIGr5GnhT1FyXMJNkJ95DMObe6utFlESelvhMhRe8XTrhsU//8pXmYpScaIOG9VN8LSz5Tpp0nBJ8qKryNwxwV2m79fg==;
	5:pSb4J2EopLLotfDqzmtNLP1PZtYizoBLfT6ZQxF1YlIn76ODS0vHvSDrwis0+0FkMgmcar9zQfxhqcVuCAdTsxWLz4bTHbQ+X1FJv82z4C55PB6+DeoJUvm9zdINhMXnYnMqkXv7ANnzhBMG5M6l1g==;
	24:kHOfqrLsLXzZLO+lzCAHWeIJd6lYUzhm/ZIpp5TnBQgTSUeudgo16usL3p8ShSv2n93o4Jil+HUNY4cw6hxvi480sCATShVmq5Yhs6tOljk=;
	7:vJjiNDjN785isQmF5n7t8cyo2WJdLRMNZkZPcSYcLBZ9qymADCbb0qgOi4Ai2Tl513NxlEwwMQLbzPDl7egmdegy8RUXHt9tAVSD4XQ3X5+N3NYiCGH8EKFEEr9vxuNv1yiu34jfmpEXieYqBSVwS54P3/uGcohYNhVpkxwBFYJGpaE6uII2ofQ9E0d824l8S5728cT/iGOMyjeNLKRaoTWoldLeyK8hdLptToGUP3s=
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 821f5d86-cff8-4474-d91e-08d52c23279b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:HK2APC01HT202; 
x-ms-traffictypediagnostic: HK2APC01HT202:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:HK2APC01HT202; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:HK2APC01HT202; 
x-forefront-prvs: 0492FD61DD
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:HK2APC01HT202;
	H:KL1PR04MB0982.apcprd04.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 821f5d86-cff8-4474-d91e-08d52c23279b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Nov 2017 12:19:44.0139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2APC01HT202
Subject: =?UTF-8?B?562U5aSNOiDnrZTlpI06IHVzZSBuYXRpdmUgKGNyb3NzKSB0b29sY2hhaW4gaW5zdGVhZCBvZiBhIHBvcHVsYXRlZCBuYXRpdmVzZGsgKGNyb3NzLWNhbmFkaWFuKSB0b29sY2hhaW4=?=
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
X-List-Received-Date: Wed, 15 Nov 2017 19:54:28 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_KL1PR04MB098266282D2F0B6B17C5DCA2C7290KL1PR04MB0982apcp_"

--_000_KL1PR04MB098266282D2F0B6B17C5DCA2C7290KL1PR04MB0982apcp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

WWVzLCBJIHRoaW5rIHlvdSBhcmUgcmlnaHQsIHRoZSAtbmF0aXZlIHN5c3Jvb3QgaXMgbm90IGRl
c2lnbmVkIGZvciBwZW9wbGUgdG8gZGV2ZWxvcCBuYXRpdmUgcHJvZ3JhbSB1cG9uLiBDdXJyZW50
bHkgbXkgbGl0dGxlIHNldHVwIHJ1bnMgd2VsbCwgYnV0IHRvIG1haW50YWluL2ltcHJvdmUgaXQg
d2lsbCBiZSBoYXJkLg0KDQplU0RLIG1heSBub3QgYmUgYW4gb3B0aW9uIGZvciBub3cuIFNvIGxh
dGVyIEkgdGhpbmsgSSB3aWxsIHRyeSB0aGUgcWVtdS14ODYtNjQgdGFyZ2V0IHRvIGtlZXAgYSBt
b3JlIG1haW50YWluYWJsZSBpZGVudGljYWwgKHRvIHJlYWwgdGFyZ2V0KSBFTlYgZm9yIHRoZSCh
sG5hdGl2ZaGxIHByb2dyYW1zLS0tYnV0IHN0aWxsIG5lZWQgc29tZSB0cmlja3Mgc2luY2UgcGVv
cGxlIGFyZSB1c2VkIHRvIHJ1bm5pbmcgZW11bGF0ZWQgdGVzdCBkaXJlY3RseS4gU28gSSB3aWxs
IG1hbmFnZSB0byBydW4gb3VyIHFlbXUgYmFzZWQgYXBwcyBkaXJlY3RseSBmcm9tIHRoZSBidWls
ZCBtYWNoaW5lOiBtYW5pcHVsYXRpbmcgLmludGVycCBhbmQgcnBhdGgvTERfTElCQVJBUllfUEFU
SCBzaG91bGQgZG8sIGFuZCBJIGhhZCBzb21lIHBvc2l0aXZlIHJlc3VsdCBiZWZvcmUuIFNvIHRo
aXMgc2hvdWxkIGJlIGEgbW9yZSByZWxpYWJsZSBpZGVhIHRoYW4gdGhlIG5hdGl2ZSChsHg4Ni02
NF9saW51eKGxIHN5c3Jvb3QuDQoNClRoYW5rcyBhZ2FpbiwNCkxpd2VpDQoNCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fDQq3orz+yMs6IENoZW5RaSA8UWkuQ2hlbkB3aW5kcml2ZXIu
Y29tPg0Kt6LLzcqxvOQ6IE1vbmRheSwgTm92ZW1iZXIgMTMsIDIwMTcgMTo0MTozOCBQTQ0KytW8
/sjLOiBaaGVuIExpV2VpOyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQrW98ziOiBSZTogtPC4tDog
W3lvY3RvXSB1c2UgbmF0aXZlIChjcm9zcykgdG9vbGNoYWluIGluc3RlYWQgb2YgYSBwb3B1bGF0
ZWQgbmF0aXZlc2RrIChjcm9zcy1jYW5hZGlhbikgdG9vbGNoYWluDQoNCk9uIDExLzEzLzIwMTcg
MDk6NDQgQU0sIFpoZW4gTGlXZWkgd3JvdGU6DQpUaGFuayB5b3UuIFRoZSBTREsgaW5zdGFsbGlu
ZyBob3N0IGJlaW5nIGRpZmZlcmVudCBpcyBhY3R1YWxseSBub3Qgb3VyIGNvbmNlcm46IHdlIGhh
dmUgc29tZSBzdHJpY3QgZGVmaW5pdGlvbiBvZiB3aGF0IGhvc3QgZGlzdHJvIHdlIHNob3VsZCB1
c2Ugd2hlbiB1c2luZyB0aGUgU0RLLg0KDQpBbmQgYmFzaWNhbGx5IHRoZSBuYXRpdmUgdG9vbGNo
YWluIHdvcmtzIHJhdGhlciBmaW5lLiBBbmQgSSBjYW4gKEkgdGhpbmspIHVzZSBpdCB3aXRoIHNv
bWUgY29uZmlkZW5jZS4NCg0KVGhlIG90aGVyIGdvYWwgb2YgbWluZS0tLXVzaW5nIHRoZSB4ODZf
NjRfbGludXggc3lzcm9vdCB0byBkZXZlbG9wIHg4NiBuYXRpdmUgcHJvZ3JhbXMtLS1ob3dldmVy
LCBpcyBkaWZmaWN1bHQuIEZvciAxKSBRdWl0ZSBzb21lIHBhdGNoZXMgbmVlZGVkIGZvciBhdXRv
dG9vbHMsIHBrZy1jb25maWcsIGV0Y6GtLiAyKSBiYXNpYyBsaWJyYXJpZXMgbGlrZSBvcGVuc3Ns
IG5lZWQgdG8gY28tZXhpc3Qgd2l0aCB0aGUgaG9zdC1kaXN0cm8tbmF0aXZlIG9uZXMsIHNvIHdo
ZW4gYnVpbGRpbmcgYmluYXJpZXMgdXBvbiB0aGVtIEkgbmVlZCB0byBiZSB2ZXJ5IGNhcmVmdWwg
KGx5IG1hbmlwdWxhdGluZyB0aGUgcGtnLWNvbmZpZywgeHh4LWNvbmZpZywgYW5kIHJwYXRoZXMp
LiAzKSB2YXJpb3VzIGluLWhvdXNlIGFuZCAzcmRwYXJ0eSBiaW5hcmllcyBuZWVkIHRvIGJlIGJ1
aWx0IG9uIHRoaXMgY29tcGxleCBzZXR1cCwgd2hpY2ggdXNlIGRpZmZlcmVudCBjb25maWcvYnVp
bGQgaW5mcmFzdHJ1Y3R1cmVzLg0KDQpTbyBiYXNpY2FsbHkgdGhpcyBpcyBub3QgaG93IHRoZSBu
YXRpdmUgc3lzcm9vdCBpcyBpbnRlbmRlZCB0byBiZSB1c2VkIChidXQgaW4gdGhlIEJCIGVudiBp
dCBpcyBjb250cm9sZWQgdmVyeSB3ZWxsOiBldmVyeSBuYXRpdmUgcGFja2FnZSBjYW4gYmUgYnVp
bHQgaW4gaXQpLiBTbyBJIG5lZWQgdG8gY29udGludWUgdG8gaW1wcm92ZSBteSBwcm9jZWR1cmUs
IG9yIGp1c3QgZ2l2ZSBpdCB1cCBhbmQgdXNlIGEgcWVtdSBpbWFnZSBpbnN0ZWFkLg0KDQpMaXdl
aQ0KDQoNCkZyb20gcHJldmlvdXMgZW1haWxzLCBJIGNhbiBzZWUgdGhhdCB5b3VyIG1ham9yIGNv
bmNlcm4gaXMgYWJvdXQgU0RLIGFuZCBhcHBsaWNhdGlvbiBkZXZlbG9wbWVudC4gQW5kIHlvdSB3
YW50IHRvIGtlZXAgU0RLIGluIHN5bmMgYWNyb3NzIGRpZmZlcmVudCBob3N0cy4NCmVTREsgYW5k
IGRldnRvb2wgaW4gbmV3IFlvY3RvIHJlbGVhc2VzIGFyZSBkZXNpZ25lZCB0byBzb2x2ZSBzdWNo
IHByb2JsZW1zLg0KSSdkIHN1Z2dlc3QgeW91IHRha2UgYSBsb29rIGF0IHRoZXNlIHRvb2xzIGlm
IHlvdSBhcmUgaW50ZXJlc3RlZC4NCg0KUC5TLiBGcm9tIG15IGV4cGVyaWVuY2UsIGlmIHlvdSBt
YWtlIGN1c3RvbSBzY3JpcHRzIHRvIHdyYXBwZXIgeW9jdG8gcHJvamVjdHMsIHlvdSBzaG91bGQg
a2VlcCB0aGluZ3MgYXMgc2ltcGxlIGFzIHBvc3NpYmxlLiBPdGhlcndpc2UsIHRoZXJlIHdvdWxk
IGJlIGEgbG90IG9mIHdvcmsgd2hlbiB5b3Ugd2FudCB0byB1c2UgbmV3IHlvY3RvIHJlbGVhc2Vz
Lg0KDQpCZXN0IFJlZ2FyZHMsDQpDaGVuIFFpDQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fDQq3orz+yMs6IENoZW5RaSA8UWkuQ2hlbkB3aW5kcml2ZXIuY29tPjxtYWlsdG86UWku
Q2hlbkB3aW5kcml2ZXIuY29tPg0Kt6LLzcqxvOQ6IFRodXJzZGF5LCBOb3ZlbWJlciA5LCAyMDE3
IDEwOjQ4OjQxIEFNDQrK1bz+yMs6IFpoZW4gTGlXZWk7IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc8
bWFpbHRvOnlvY3RvQHlvY3RvcHJvamVjdC5vcmc+DQrW98ziOiBSZTogW3lvY3RvXSB1c2UgbmF0
aXZlIChjcm9zcykgdG9vbGNoYWluIGluc3RlYWQgb2YgYSBwb3B1bGF0ZWQgbmF0aXZlc2RrIChj
cm9zcy1jYW5hZGlhbikgdG9vbGNoYWluDQoNCklmIEkgdW5kZXJzdGFuZCBpdCBjb3JyZWN0bHks
IHlvdSBhcmUgdGFsa2luZyBhYm91dCB1c2luZyBuYXRpdmUgY29tcG9uZW50cyBkaXJlY3RseSBm
b3IgU0RLLg0KSWYgeW91IGFyZSB1c2luZyBhbGwgdGhlIHNhbWUgbWFjaGluZSB3aXRoIHRoZSBz
YW1lIE9TLCB5b3UgY291bGQgdXNlIG5hdGl2ZSBjb21wb25lbnRzIGRpcmVjdGx5LCBtYXliZSB3
aXRoIGEgbGl0dGxlIG1vZGlmaWNhdGlvbi4NCkJ1dCBpbiBmYWN0LCB0aGUgaG9zdCB3aGVyZSBT
REsgaXMgaW5zdGFsbGVkIG1pZ2h0IGJlIGRpZmZlcmVudCBmcm9tIHRoZSBob3N0IHdoZXJlIFNE
SyBpcyBidWlsdC4NCkNoZWNrIHRoZSBTREtNQUNISU5FIHZhcmlhYmxlLg0KDQpCZXN0IFJlZ2Fy
ZHMsDQpDaGVuIFFpDQoNCk9uIDExLzA3LzIwMTcgMTE6MDkgUE0sIFpoZW4gTGlXZWkgd3JvdGU6
DQoNCkhpLCBJIGFtIHdvcmtpbmcgb24gYSB5b2N0byAyLjAgYmFzZWQgZGlzdHJvIGFuZCB3ZSB1
c3VhbGx5IHBvcHVsYXRlX3NkayBhbmQgdXNlIHRoZSB0b29sY2hhaW4gaW5jbHVkZWQgaW4gU0RL
Lg0KDQoNCg0KQnV0IHdlIGFsc28gbGlrZSB0byBjaGVjayB0aGUgU0RLIGludG8gYSBTVk4gcmVw
bywgYW5kIGNoZWNrb3V0IGl0IGFueXdoZXJlLCBhbmQgdXNlIGl0IGF3YXkgcmlnaHQgd2hlcmUg
aXQgaXMgY2hlY2tlZCBvdXQuIEFuZCBzaW5jZSB0aGUgbmF0aXZlc2RrIGJpbmFyaWVzIGFyZSBi
YXNlZCBvbiBhIGRpZmZlcmVudCBnbGliYyB0aGFuIG5hdGl2ZSwgYW5kIGhhdmUgdGhlIKGwZHlu
YW1pYyBsb2FkZXKhsSBwYXRoIGhhcmRjb2RlZCBpbiB0aGVtLCBJIGhhdmUgdG8gcGF0Y2ggdGhl
IHRvb2xjaGFpbiBiaW5hcmllc6GvIC5pbnRlcnAgc2VjaW9uIHRvIHBvaW50IHRvIGEgY29tbW9u
IHBsYWNlLCBhbmQgdXBkYXRlIHRoZSBsb2FkZXIgaW50byB0aGF0IGNvbW1vbiBwbGFjZSBhdXRv
bWF0aWNhbGx5IGluIHNvbWUgd2F5LiBPdGhlciB0aGFuIHRoaXMsIHRoaW5ncyB3b3JrIHZlcnkg
Z29vZCBmb3IgdXMuDQoNCg0KDQpUaGVuIEkgd2FzIHRoaW5raW5nOiBpcyBpdCBhIGdvb2QgcHJh
Y3RpY2UsIHRvIHVzZSB0aGUgbmF0aXZlL2Nyb3NzIHRvb2xjaGFpbiBkaXJlY3RseSBmcm9tIHRo
ZSB0bXAvc3lzcm9vdHMveDg2XzY0LW5hdGl2ZSBmb2xkZXIuIEkgdHJpZWQgYW5kIHN1Y2NlZWRl
ZCwgYnkganVzdCBtb3ZpbmcgdGhlIHN5c3Jvb3QgdG8gd2hlcmUgdGhlIGNoZWNrZWQtb3V0IG5h
dGl2ZXNkayB0b29sY2hhaW4gd2FzLg0KDQoNCg0KQW4gZXh0cmEgYm9udXMgYWJvdXQgdGhpcyBp
cyB0aGF0IHdlIGdvdCBhIG1vcmUgcG9wdWxhdGVkIHN5c3Jvb3QgZm9yIG5hdGl2ZSBwbGF0Zm9y
bSB0b28sIGZvciBleGFtcGxlIGEgb3BlbnNzbCBkZXYgcGFja2FnZSBhdCB0aGUgc2FtZSB2ZXJz
aW9uIGFzIHRoYXQgb24gdGFyZ2V0LCB0aGF0IHdlIGNhbiBhY3R1YWxseSB1c2UgdG8gbWFrZSB0
aGUgbmF0aXZlIHBsYXRmb3JtIGEgY2xvc2VyLXRvLXRhcmdldCBkZXYgZW52IGZvciBzb21lIKGw
d29ya2JlbmNoobEgYnVpbGQuDQoNCg0KDQpIb3dldmVyIEmhr20gc3RpbGwgd29uZGVyaW5nOiBp
cyB0aGVyZSBhbnkgdGhpbmcgbmVnYXRpdmUgYWJvdXQgdGhpcyBzdHlsZT8gT25lIHRoaW5nIGtu
b3duIGlzIHRoYXQgdGhlIFNESy11c2luZyBob3N0IG5lZWQgdG8gYmUgc2ltaWxhciB0byB0aGUg
U0RLLWJ1aWxkaW5nIGhvc3QsIGJ1dCB0aGF0IGlzIG5vdCBhbiBpc3N1ZSBmb3IgdXMuIEJ1dCBh
bnl0aGluZyBlbHNlLCBndXlzPw0KDQoNCg0KDQo=

--_000_KL1PR04MB098266282D2F0B6B17C5DCA2C7290KL1PR04MB0982apcp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
</head>
<body bgcolor=3D"#FFFFFF" text=3D"#000000">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;
	color:windowtext;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Yes, I think you are right, the=
 -native sysroot is not designed for people to develop native program upon.=
 Currently my little setup runs well, but to maintain/improve it will be ha=
rd.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">eSDK may not be an option for n=
ow. So later I think I will try the qemu-x86-64 target to keep a more maint=
ainable identical (to real target) ENV for the =A1=B0native=A1=B1 programs-=
--but still need some tricks since people are
 used to running emulated test directly. So I will manage to run our qemu b=
ased apps directly from the build machine: manipulating .interp and rpath/L=
D_LIBARARY_PATH should do, and I had some positive result before. So this s=
hould be a more reliable idea than
 the native =A1=B0x86-64_linux=A1=B1 sysroot.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thanks again,</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Liwei</span><span lang=3D"EN-US=
" style=3D"font-size:12.0pt"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:12.0pt;font-=
family:SimSun"><o:p>&nbsp;</o:p></span></p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> ChenQi =
&lt;Qi.Chen@windriver.com&gt;<br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Monday, November 13, 2017 1:41:38 PM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Zhen LiWei; yocto@yoctoproject.org<br>
<b>=D6=F7=CC=E2:</b> Re: =B4=F0=B8=B4: [yocto] use native (cross) toolchain=
 instead of a populated nativesdk (cross-canadian) toolchain</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">On 11/13/2017 09:44 AM, Zhen LiWei wrote:<br=
>
</div>
<blockquote cite=3D"mid:KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB098=
2.apcprd04.prod.outlook.com" type=3D"cite">
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered
        medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	text-align:justify;
	text-justify:inter-ideograph;
	font-size:10.5pt;
	font-family:DengXian;
	color:windowtext;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
.MsoChpDefault
	{mso-style-type:export-only;}
/* Page Definitions */
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style>
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span lang=3D"EN-US">Thank you. The SDK installing h=
ost being different is actually not our concern: we have some strict defini=
tion of what host distro we should use when using the SDK.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">And basically the native toolch=
ain works rather fine. And I can (I think) use it with some confidence.</sp=
an></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">The other goal of mine---using =
the x86_64_linux sysroot to develop x86 native programs---however, is diffi=
cult. For 1) Quite some patches needed for autotools, pkg-config, etc=A1=AD=
. 2) basic libraries like openssl need to
 co-exist with the host-distro-native ones, so when building binaries upon =
them I need to be very careful (ly manipulating the pkg-config, xxx-config,=
 and rpathes). 3) various in-house and 3rdparty binaries need to be built o=
n this complex setup, which use
 different config/build infrastructures.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">So basically this is not how th=
e native sysroot is intended to be used (but in the BB env it is controled =
very well: every native package can be built in it). So I need to continue =
to improve my procedure, or just give
 it up and use a qemu image instead.</span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Liwei</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:12.0pt;font-family:SimSun" =
lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
</div>
</blockquote>
<br>
From previous emails, I can see that your major concern is about SDK and ap=
plication development. And you want to keep SDK in sync across different ho=
sts.<br>
eSDK and devtool in new Yocto releases are designed to solve such problems.=
<br>
I'd suggest you take a look at these tools if you are interested.<br>
<br>
P.S. From my experience, if you make custom scripts to wrapper yocto projec=
ts, you should keep things as simple as possible. Otherwise, there would be=
 a lot of work when you want to use new yocto releases.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
<blockquote cite=3D"mid:KL1PR04MB0982E76D636525E2692A7AF2C72B0@KL1PR04MB098=
2.apcprd04.prod.outlook.com" type=3D"cite">
<div class=3D"WordSection1"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font style=3D"font-size:11pt" face=
=3D"Calibri, sans-serif" color=3D"#000000"><b>=B7=A2=BC=FE=C8=CB:</b> ChenQ=
i
<a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:Qi.Chen@windriver.com">&l=
t;Qi.Chen@windriver.com&gt;</a><br>
<b>=B7=A2=CB=CD=CA=B1=BC=E4:</b> Thursday, November 9, 2017 10:48:41 AM<br>
<b>=CA=D5=BC=FE=C8=CB:</b> Zhen LiWei; <a class=3D"moz-txt-link-abbreviated=
" href=3D"mailto:yocto@yoctoproject.org">
yocto@yoctoproject.org</a><br>
<b>=D6=F7=CC=E2:</b> Re: [yocto] use native (cross) toolchain instead of a =
populated nativesdk (cross-canadian) toolchain</font>
<div>&nbsp;</div>
</div>
<div>
<div class=3D"moz-cite-prefix">If I understand it correctly, you are talkin=
g about using native components directly for SDK.<br>
If you are using all the same machine with the same OS, you could use nativ=
e components directly, maybe with a little modification.<br>
But in fact, the host where SDK is installed might be different from the ho=
st where SDK is built.<br>
Check the SDKMACHINE variable.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 11/07/2017 11:09 PM, Zhen LiWei wrote:<br>
</div>
<blockquote cite=3D"mid:PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB100=
1.apcprd04.prod.outlook.com" type=3D"cite">
<div dir=3D"auto">
<div class=3D"gmail_extra" dir=3D"auto">
<div class=3D"gmail_quote">
<p style=3D"font-family: sans-serif; font-size: 18.048px;">Hi, I am working=
 on a yocto 2.0 based distro and we usually populate_sdk and use the toolch=
ain included in SDK.</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">But we also like=
 to check the SDK into a SVN repo, and checkout it anywhere, and use it awa=
y right where it is checked out. And since the nativesdk binaries are based=
 on a different glibc than native,
 and have the =A1=B0dynamic loader=A1=B1 path hardcoded in them, I have to =
patch the toolchain binaries=A1=AF .interp secion to point to a common plac=
e, and update the loader into that common place automatically in some way. =
Other than this, things work very good for us.</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">Then I was think=
ing: is it a good practice, to use the native/cross toolchain directly from=
 the tmp/sysroots/x86_64-native folder. I tried and succeeded, by just movi=
ng the sysroot to where the checked-out
 nativesdk toolchain was.</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">An extra bonus a=
bout this is that we got a more populated sysroot for native platform too, =
for example a openssl dev package at the same version as that on target, th=
at we can actually use to make the
 native platform a closer-to-target dev env for some =A1=B0workbench=A1=B1 =
build.<span style=3D"font-size:12pt"></span></p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">&nbsp;</p>
<p style=3D"font-family: sans-serif; font-size: 18.048px;">However I=A1=AFm=
 still wondering: is there any thing negative about this style? One thing k=
nown is that the SDK-using host need to be similar to the SDK-building host=
, but that is not an issue for us. But
 anything else, guys?</p>
</div>
</div>
</div>
<br>
<fieldset class=3D"mimeAttachmentHeader"></fieldset> <br>
</blockquote>
<p><br>
</p>
</div>
</blockquote>
<p><br>
</p>
</div>
</body>
</html>

--_000_KL1PR04MB098266282D2F0B6B17C5DCA2C7290KL1PR04MB0982apcp_--
