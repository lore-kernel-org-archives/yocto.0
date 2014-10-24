Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23375E00848; Fri, 24 Oct 2014 08:24:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [157.56.110.116 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-bn1-obe.outbound.protection.outlook.com
	(mail-bn1on0116.outbound.protection.outlook.com [157.56.110.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48400E00796
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 08:24:33 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB038.namprd05.prod.outlook.com (10.255.210.147) with Microsoft
	SMTP Server (TLS) id 15.1.6.9; Fri, 24 Oct 2014 15:24:29 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.93]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.7.93]) with mapi id
	15.01.0006.000; Fri, 24 Oct 2014 15:24:29 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Questions on transition to PR service
Thread-Index: Ac/vnA3TCpZl3w7fQXSOhKlf/GZ6dA==
Date: Fri, 24 Oct 2014 15:24:28 +0000
Message-ID: <76210ac2936a4783a4a6eccff3825363@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 00C67F9E0085A000C680EB
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;SRVR:BLUPR05MB038;
x-exchange-antispam-report-test: UriScan:;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(164054003)(199003)(189002)(97736003)(77096002)(76576001)(95666004)(76482002)(2501002)(120916001)(50986999)(54356999)(99396003)(40100003)(21056001)(108616004)(85306004)(85852003)(122556002)(101416001)(87936001)(2656002)(92566001)(33646002)(107046002)(2351001)(107886001)(66066001)(110136001)(31966008)(64706001)(106356001)(4396001)(80022003)(86362001)(46102003)(105586002)(229853001)(20776003)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB038;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: Questions on transition to PR service
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
X-List-Received-Date: Fri, 24 Oct 2014 15:24:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsLA0KDQpJIGFtIGN1cnJlbnRseSBvbiB0aGUgZHlsYW4gYnJhbmNoIGFuZCBJIGFtIHdvcmtp
bmcgdG93YXJkIHRyYW5zaXRpb25pbmcgdG8gdGhlIGRhaXN5IGJyYW5jaC4gIE92ZXJhbGwgaXQg
aXMgYnVpbGRpbmcgb2theSBidXQgbm93IG9uIHRoZSBkYWlzeSBicmFuY2ggSSBhbSBnZXR0aW5n
IHRoZSB3YXJuaW5ncyBhYm91dCB1c2luZyBQUklOQyBiZWluZyBkZXByZWNhdGVkIGFuZCBJIHNo
b3VsZCBiZSB1c2luZyB0aGUgUFIgc2VydmljZS4gIEJlZm9yZSBJIG1ha2UgdGhlIHRyYW5zaXRp
b24sIEkgaGF2ZSBzb21lIHF1ZXN0aW9ucyBhYm91dCBpdHMgb3BlcmF0aW9uIHRoYXQgSSBjb3Vs
ZG4ndCBmaW5kIGFuc3dlcnMgdG8gaW4gdGhlIGRvY3VtZW50YXRpb24uDQoNCjEuIERvZXMgdGhl
IFBSIHNlcnZpY2UgZG8gYW4gaW5pdGlhbCBQUiBhcHBlbmQgd2hlbiBmaXJzdCBlbmFibGVkPyAg
Rm9yIGV4YW1wbGUsIGxldCdzIHNheSBJIGp1c3QgYnVpbHQgY29yZS1pbWFnZS1taW5pbWFsLiAg
SWYgSSB0aGVuIGVuYWJsZSB0aGUgUFIgc2VydmljZSBhbmQgcmUtaXNzdWUgImJpdGJha2UgY29y
ZS1pbWFnZS1taW5pbWFsIiwgZG9lcyB0aGUgUFIgc2VydmljZSBhcHBlbmQgYSAiLjEiIHRvIGV2
ZXJ5IHBhY2thZ2UgdGhhdCBpcyBidWlsdCBieSBjb3JlLWltYWdlLW1pbmltYWwgb3Igd2lsbCBp
dCBvbmx5IGFwcGVuZCB0aGUgIi4xIiB0byBhIHBhY2thZ2UgdGhlIGZpcnN0IHRpbWUgdGhlIG1l
dGFkYXRhIGNoYW5nZXMgZm9yIHRoZSBwYWNrYWdlIGFuZCBpdCBpcyByZWJ1aWx0PyAgSSB3YW50
IHRvIG1ha2Ugc3VyZSB0aGF0IA0KMi4gSWYgYSByZWNpcGUgZ2V0cyB1cGdyYWRlZCwgZG9lcyB0
aGUgUFIgYXBwZW5kZWQgdmFsdWUgZ2V0IHJlc2V0PyAgRm9yIGV4YW1wbGUsIGlmIEkgdXBncmFk
ZSByZWNpcGUgZm9vXzEuMC4wLmJiIHRvIGZvb18yLjAuMC5iYiwgZG9lcyB0aGUgUFIgc2Vydmlj
ZSByZXNldCBpdHMgYXBwZW5kZWQgdmFsdWUgdG8gIi4xIj8NCjMuIEkgc2VlIHRoYXQgdGhlIGJp
dGJha2UtcHJzZXJ2LXRvb2wgc2NyaXB0IGhhcyBhIG1ldGhvZCBmb3IgaW1wb3J0aW5nIGFuZCBl
eHBvcnRpbmcgdGhlIFBScy4gIE15IGdvYWwgaXMgdG8gYmUgYWJsZSB0byByZS1nZW5lcmF0ZSBh
IHNwZWNpZmljIHJlbGVhc2Ugd2l0aCB0aGUgc2FtZSBQUnMgaWYgbmVlZGVkLCBidXQgSSB3YW50
IHRvIHZlcmlmeSBob3cgdGhpcyB3b3VsZCB3b3JrIHdpdGggdGhlIFBSIHNlcnZpY2UuICBJZiBJ
IHdlcmUgdG8gZG8gdGhlIGZvbGxvd2luZzoNCglhLiBCdWlsZCBhIHZlcnNpb24gb2YgY29yZS1p
bWFnZS1taW5pbWFsIG9uIG1hY2hpbmUgQSB3aXRoIHRoZSBsYXRlc3QgdXBzdHJlYW0gY2hhbmdl
cyBhbmQgYSBmZXcgY2hhbmdlcyB0byBvdXIgb3duIGFwcGxpY2F0aW9ucy4NCgliLiBDb21taXQg
dGhlIGxhdGVzdCBsYXllcnMgdG8gb3VyIGxvY2FsIEdpdCByZXBvc2l0b3J5Lg0KCWMuIEV4cG9y
dCB0aGUgUFJzIGFuZCBjb21taXQgdGhlIG91dHB1dCBmaWxlIHRvIG91ciBsb2NhbCBHaXQgcmVw
b3NpdG9yeS4NCglkLiBUYWcgb3VyIGxvY2FsIEdpdCByZXBvc2l0b3JpZXMgYXMgInYxLjAiLg0K
CWUuIE9uIG1hY2hpbmUgQiwgY2hlY2tvdXQgInYxLjAiLCBpbXBvcnQgdGhlIFBScyBhbmQgcmVi
dWlsZCBjb3JlLWltYWdlIG1pbmltYWwuDQpXb3VsZCB0aGUgcmVzdWx0aW5nIFBScyBmb3IgZWFj
aCBwYWNrYWdlIGJlIHRoZSBzYW1lIG9uIG1hY2hpbmUgQSBhbmQgbWFjaGluZSBCPyAgSWYgbm90
LCBpcyB0aGVyZSBhIGRpZmZlcmVudCBvcmRlciBvZiBvcGVyYXRpb25zL21ldGhvZCB0byBnZXQg
dGhlIHNhbWUgUFJzPw0KDQpUaGFua3MsDQpCcnlhbg0K

