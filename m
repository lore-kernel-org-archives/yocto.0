Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B383AE007AD; Tue, 19 Aug 2014 05:44:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [207.46.163.236 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from na01-by2-obe.outbound.protection.outlook.com
	(mail-by2lp0236.outbound.protection.outlook.com [207.46.163.236])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95505E0079B
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 05:44:20 -0700 (PDT)
Received: from BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) by
	BLUPR05MB037.namprd05.prod.outlook.com (10.255.210.145) with Microsoft
	SMTP Server (TLS) id 15.0.1010.18; Tue, 19 Aug 2014 12:44:18 +0000
Received: from BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.108]) by
	BLUPR05MB037.namprd05.prod.outlook.com ([169.254.15.108]) with mapi id
	15.00.1010.016; Tue, 19 Aug 2014 12:44:18 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: PR Server import/export questions
Thread-Index: Ac+7povszG91Ae4LSwGumf5C0EZUkA==
Date: Tue, 19 Aug 2014 12:44:18 +0000
Message-ID: <b94dbb0d1ada45da9ed5241147573c3e@BLUPR05MB037.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-vipre-scanned: 0036C16B007E5E0036C2B8
x-originating-ip: [98.100.91.242]
x-microsoft-antispam: BCL:0;PCL:0;RULEID:;UriScan:;
x-forefront-prvs: 0308EE423E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019006)(6009001)(164054003)(189002)(199003)(66066001)(74316001)(81342001)(80022001)(46102001)(85852003)(76482001)(87936001)(81542001)(76576001)(31966008)(33646002)(105586002)(2351001)(95666004)(21056001)(86362001)(108616004)(229853001)(77982001)(99396002)(85306004)(50986999)(79102001)(2656002)(107886001)(4396001)(107046002)(77096002)(110136001)(83322001)(101416001)(83072002)(20776003)(54356999)(64706001)(92566001)(74662001)(99286002)(74502001)(106356001)(2501001)(24736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BLUPR05MB037;
	H:BLUPR05MB037.namprd05.prod.outlook.com; FPR:; MLV:sfv;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
Subject: PR Server import/export questions
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
X-List-Received-Date: Tue, 19 Aug 2014 12:44:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QWxsLA0KDQpJJ20gbWFraW5nIHRoZSB0cmFuc2l0aW9uIGZyb20gdGhlIGR5bGFuIHRvIGRhaXN5
IGJyYW5jaCwgYW5kIGluIG15IGZpcnN0IGF0dGVtcHQgSSBnb3QgYSBidW5jaCBvZiBRQSB3YXJu
aW5ncyBhYm91dCBQUklOQyBiZWluZyBkZXByZWNhdGVkIGFuZCB0aGF0IEkgc2hvdWxkIHN0YXJ0
IHVzaW5nIGEgUFIgc2VydmljZS4gIEkgdG9vayBhIGxvb2sgdGhyb3VnaCB0aGUgbWFudWFsIGFu
ZCB0aGUgUFIgc2VydmVyIHdpa2kgYW5kIEkgc3RpbGwgaGF2ZSBzb21lIGNvbmNlcm5zIGFib3V0
IHRoZSBQUiBzZXJ2ZXIuICBJIG1heSBiZSBhYmxlIHRvIGZpZ3VyZSBvdXQgc29tZSBvZiB0aGVz
ZSB0aGluZ3Mgd2l0aCB0cmlhbCBhbmQgZXJyb3IsIGJ1dCBnaXZlbiB3aGF0IGNvdWxkIGdvIHdy
b25nIGlmIEkgbWVzcyB0aGlzIHVwIEkgdGhvdWdodCBpdCdkIGJlIHBydWRlbnQgdG8gYXNrIGEg
ZmV3IHF1ZXN0aW9ucyBmaXJzdC4NCg0KTXkgYmlnIGNvbmNlcm4gZm9yIHVzaW5nIGEgUFIgc2Vy
dmVyIGZvciBjb25zaXN0ZW50bHkgZ2VuZXJhdGluZyBhIHBhY2thZ2UgZmVlZCBmb3IgZmlybXdh
cmUgdXBncmFkZXMuICBPdXIgYmlnIGNvbmNlcm4gaXMgaWYgc29tZXRoaW5nIHdlcmUgdG8gaGFw
cGVuIHRvIHRoZSBQUiBzZXJ2ZXIgYW5kIHdlIHdvdWxkIGxvc2UgdGhlIGxhc3QgUFIgc3RhdGUu
ICBJIGJlbGlldmUgdGhpcyBpcyB3aGVyZSB0aGUgYml0YmFrZS1wcnNlcnYtdG9vbCBpbXBvcnQg
YW5kIGV4cG9ydCBjb21lIGluIGFzIGRlc2NyaWJlZCBvbiB0aGUgUFIgU2VydmljZSB3aWtpLiAg
SG93ZXZlciwgdGhlIGRldGFpbHMgb24gdGhlIGltcG9ydCBhbmQgZXhwb3J0IGFyZSBhIGxpdHRs
ZSBsaWdodC4NCg0KQ291bGQgc29tZW9uZSBkZXNjcmliZSBhIGJhc2ljIHdvcmtmbG93IHVzaW5n
IHRoZSBQUiBzZXJ2ZXIgYW5kIGJhY2tpbmcgdXAgdGhlIFBSIGRhdGE/ICBJJ20gYXNzdW1pbmcg
dGhhdCB0aGUgZXhwb3J0ZWQgUFIgZmlsZSBjYW4gYmUgc3RvcmVkIGluIGEgbG9jYWwgR2l0IHJl
cG9zaXRvcnksIGJ1dCBoYXZpbmcgbmV2ZXIgc2VlbiB0aGUgZXhwb3J0ZWQgZGF0YSBJIGRpZG4n
dCBrbm93IGlmIHRoZXJlIHdlcmUgYW55IGlzc3VlcyBpbiBiYWNraW5nIHVwIHRoZSBleHBvcnRl
ZCBQUnMgaW4gdGhpcyBtYW5uZXIuICBJZiB0aGlzIHdvdWxkIHdvcmssIHRoZW4gSSdtIGFzc3Vt
aW5nIGEgd29ya2Zsb3cgY291bGQgYmU6DQoxLiBQdWxsIGxhdGVzdCBmcm9tIGxvY2FsIEdpdCBz
ZXJ2ZXIgYW5kIGltcG9ydCBQUnMgdG8gdGhlIFBSIHNlcnZlci4NCjIuIERvIHdvcmsgZm9yIG5l
eHQgc3lzdGVtIHZlcnNpb24uDQozLiBQdXNoIHVwZGF0ZXMgYmFjayB0byBsb2NhbCBHaXQgc2Vy
dmVyLg0KNC4gUHVsbCBsYXRlc3QgR2l0IHNlcnZlciBhbmQgdGVzdCBmb3IgY2FuZGlkYXRlIHJl
bGVhc2UuDQo1LiBQZXJmb3JtIG1pbm9yIGJ1ZyBmaXhlcyBhbmQgcHVzaCBiYWNrIHRvIGxvY2Fs
IEdpdCBzZXJ2ZXIuDQo2LiBSZXBlYXQgc3RlcHMgNCBhbmQgNSB1bnRpbCB0aGVyZSBhcmUgbm8g
bW9yZSBidWcgZml4ZXMgcHVzaGVkIGJhY2sgdG8gdGhlIGxvY2FsIEdpdCBzZXJ2ZXIuDQo3LiBF
eHBvcnQgUFJzIGZyb20gdGhlIFBSIHNlcnZlciwgcHVzaCBQUnMgdG8gbG9jYWwgR2l0IHNlcnZl
ciBhbmQgdGFnIHRoZSByZWxlYXNlLg0KDQpBbnlvbmUgc2VlIGFueSBpc3N1ZXMgd2l0aCB0aGlz
IHdvcmtmbG93PyAgSWYgc28sIGhvdyBoYXZlIHlvdSBiZWVuIGhhbmRsaW5nIHdvcmtpbmcgd2l0
aCB0aGUgUFIgc2VydmVyIGF0IHlvdXIgb3JnYW5pemF0aW9uPyAgSGFzIGFueW9uZSBlbHNlIGhh
ZCBhbnkgb3RoZXIgaXNzdWVzIHVzaW5nIGEgUFIgc2VydmVyPw0KDQpUaGFua3MsDQpCcnlhbg0K

