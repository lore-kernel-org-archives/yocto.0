Return-Path: <hernan_gutierrez@hp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0500CE00CA2; Wed, 11 Oct 2017 15:15:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.41.110 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-DM3-obe.outbound.protection.outlook.com
	(mail-dm3nam03on0110.outbound.protection.outlook.com [104.47.41.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70EA9E00C7B
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 15:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=HP.onmicrosoft.com;
	s=selector1-hp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=c5DPO6zBBqkSj8OSyPZj9YlDFXLXg+gQHIegsCcafMk=;
	b=CLxZpyX8QYv7nCdm+a9NLtbAZJKVJbgZoAsQmF9LCH5kIyIzW0cf9azL7RkZGZAN4y3FWnr83OhwuL0okkux6wFei20DT7c/eLBqM0cLk5PpN0juvgyw1h+cxSz+9mPW4zz06YGPRS2B3Ec14HkR8juK+ROiDSpYN4ow4AmdeLo=
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.144) by
	TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM (10.169.47.144) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.77.7; Wed, 11 Oct 2017 22:15:30 +0000
Received: from TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b]) by
	TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM
	([fe80::899b:ab4b:d42e:5e3b%18]) with mapi id 15.20.0077.020;
	Wed, 11 Oct 2017 22:15:30 +0000
From: "Gutierrez, Hernan Ildefonso (Boise R&D, FW)" <hernan_gutierrez@hp.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: How to use two recipes to satisfy different PROVIDES -- gpu
	support
Thread-Index: AdNC22ZV8TpVY/p+Rj+GscF2Iu86HQ==
Date: Wed, 11 Oct 2017 22:15:30 +0000
Message-ID: <TU4PR8401MB104097E5404DDCE3959D9401994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=hernan_gutierrez@hp.com; 
x-originating-ip: [15.65.244.15]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; TU4PR8401MB1040;
	6:4uUEUi76uoWgrZmhipl11xpf4hdh5yvhMv5bQ1VYijzputsnooG5ajH2MGX52NOfj6EA5Kz/k497cjWXI2fpbSv1WsMLZo1BOnJ96pGpwzv1MMKOGxmIlkpBQ7pUtdi5lfdInXcJGaXGXyZWNhfqqYWJ33Kfaiul85nvVmPDk4MtJAh8rIXrUGzNddnuiA1vfzYNNFZYCH0/4kx9bi+t1Qwkuvtdbc+f7hEgDC9S5R2VmIMLhY9NYptdMFrUxPVynFDQRCWnJXfSfh0JI2qpFHCD+VG0Eeen6PDfKq3QV/CA1keMz9yXSZQZiMv+53HdAn/yKpFQhZOXtHJojdN5Cg==;
	5:GTiVh+IYjEP2CJ9yU4a5P7amHScIPMqBxkKrEPsMQKfnoe2gCIY2zVMN/YQCerTQQj1jh1601YbyMHShOiwfLmgduddUG0vFZVQ/TkS4cTrevbW4g9yiHyYd8thLuGt1vp9PezWNt9QrdJxMH+YoXA==;
	24:95izaaGFl3XkB/Wypqywr8dPPwU/M17h7XtLMoaEoor5BjaUWn5r2V3DbSWN9AnjJhGjkOYhUEPFottm9hC1RZ2j9wj7A2EGdBC4D7WfXnE=;
	7:WBqTPxIHwCgPzMHr/w4awXufCII5JQn53YvtJMRj7gZMtY94XEJuyM0qLnjRT3v3ELRxa631wiyuxdpTQZegRacSc45cPtlpf0BAvY/jTb5xwsUSRVqY5ShY6Ijn6OeXJOc/Kwci6FicA06XIZXkFWqzXX55tRoEVX6COCJEA1SDds8GFmSWZPuCNrra9d6isX6p1lxzAnqMSptG1kWp7za79nG0cxxnqULOHtvSoGA=
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 84d30dd9-4726-4e5e-91e9-08d510f5957a
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(2017030254152)(2017052603199)(201703131423075)(201703031133081)(201702281549075);
	SRVR:TU4PR8401MB1040; 
x-ms-traffictypediagnostic: TU4PR8401MB1040:
x-exchange-antispam-report-test: UriScan:;
x-microsoft-antispam-prvs: <TU4PR8401MB104028EF7B7A6E36920DEE4C994A0@TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM>
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(3002001)(100000703101)(100105400095)(93006095)(93001095)(6041248)(20161123562025)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123564025)(20161123558100)(20161123560025)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:TU4PR8401MB1040; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:TU4PR8401MB1040; 
x-forefront-prvs: 0457F11EAF
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(39860400002)(346002)(376002)(6602003)(199003)(189002)(478600001)(5250100002)(2900100001)(101416001)(316002)(106356001)(33656002)(105586002)(5660300001)(6916009)(81166006)(6506006)(50986999)(102836003)(3846002)(54356999)(6116002)(8676002)(81156014)(6436002)(7696004)(66066001)(7736002)(9686003)(97736004)(3660700001)(74316002)(25786009)(14454004)(305945005)(55016002)(86362001)(68736007)(53936002)(2906002)(3280700002)(189998001)(8936002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:TU4PR8401MB1040;
	H:TU4PR8401MB1040.NAMPRD84.PROD.OUTLOOK.COM; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: hp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2017 22:15:30.2256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: ca7981a2-785a-463d-b82a-3db87dfc3ce6
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1040
Subject: How to use two recipes to satisfy different PROVIDES -- gpu support
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
X-List-Received-Date: Wed, 11 Oct 2017 22:15:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCldlIGhhdmUgYSBHUFUgaW4gb3VyIHN5c3RlbS4gV2UgY3JlYXRlZCBhIHJlY2lwZSB0
byBzYXRpc2Z5IGFsbCB0aGUgZGVwZW5kZW5jaWVzIGZvciBjb3JlLWltYWdlLXdlc3RvbiAodmly
dHVhbC9lZ2wsIHZpcnR1YWwvbGliZ2wsIGV0Yy4pLCBleGNlcHQgdmlydHVhbC9tZXNhLCB3aGlj
aCBpcyBub3QgcHJvdmlkZWQgYnkgb3VyIEdQVSByZWNpcGUuDQoNCldoZW4gb25lIGJ1aWxkcyBj
b3JlLWltYWdlLXdlc3RvbiwgdGhlIGltYWdlIHJlcXVpcmVzIG1lc2EgdG8gYnVpbGQgYXMgd2Vs
bC4NCg0KT3VyIGFwcHJvYWNoIHRvIHNhdGlzZnkgZGVwZW5kZW5jaWVzIGlzIHZlcnkgc2ltaWxh
ciB0byB3aGF0IEZyZWVzY2FsZSBhbmQgb3RoZXIgdmVuZG9ycyB3aXRoIE1hbGkgR1BVIHN1cHBv
cnQgdXNlLCB3aGljaCBpcyB0aHJvdWdoIHRoZSBmb2xsb3dpbmcgc3RhdGVtZW50czoNCg0KUFJF
RkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwvZWdsID0gIm15LWdwdS1yZWNpcGUiDQpQUkVGRVJSRURf
UFJPVklERVJfdmlydHVhbC9saWJnbGVzMSA9ICIgbXktZ3B1LXJlY2lwZSAiDQpQUkVGRVJSRURf
UFJPVklERVJfdmlydHVhbC9saWJnbGVzMiA9ICIgbXktZ3B1LXJlY2lwZSAiDQpQUkVGRVJSRURf
UFJPVklERVJfdmlydHVhbC9saWJnbCA9ICJteS1ncHUtcmVjaXBlIg0KUFJFRkVSUkVEX1BST1ZJ
REVSX3ZpcnR1YWwvbWVzYSA9ICJtZXNhIg0KDQpUaGUgd2F5IHRvIHJlbW92ZSBtZXNhIHN1cHBv
cnQgZm9yIHZpcnR1YWwvZWdsLCB2aXJ0dWFsL2xpYmdsZXMxLCBldGMuIGlzIGJ5IGFkZGluZyBh
IG1lc2FfJS5iYmFwcGVuZCB3aGVyZSBpdCBzdGF0ZXMgZXhwbGljaXRseSB0byByZW1vdmUgdGhv
c2UgcHJvdmlkZXMgZnJvbSBtZXNhIHJlY2lwZS4NCg0KZS5nLg0KUFJPVklERVNfcmVtb3ZlID0g
InZpcnR1YWwvbGliZ2xlczEgdmlydHVhbC9saWJnbGVzMiB2aXJ0dWFsL2xpYm9wZW52ZyB2aXJ0
dWFsL2VnbCINCg0KDQpUaGUgcHJvYmxlbSBJIGFtIHJ1bm5pbmcgaW50byBpcyB0aGF0IGJpdGJh
a2UgY29tcGxhaW5zIHN0YXRpbmcgdGhhdCB2aXJ0dWFsL21lc2EgaXMgbm90IHNhdGlzZmllZCAo
Tm90aGluZyBQUk9WSURFUyAndmlydHVhbC9tZXNhJykNCg0KV2hlbiBJIGRvIGJpdGJha2UtbGF5
ZXJzIHNob3ctcmVjaXBlcywgSSBzZWUgdGhhdCBtZXNhIHJlY2lwZSBpcyBza2lwcGVkIGJlY2F1
c2UgaXQgZ2F2ZSBwcmlvcml0eSB0byBteS1ncHUtcmVjaXBlLg0KDQpIb3cgY2FuIHR3byByZWNp
cGVzIGJlIHVzZWQgYW5kIGxldCBiaXRiYWtlIHNhdGlzZnkgcGFydHMgb2YgZWFjaCByZWNpcGU/
DQoNCkFueSBoaW50cyB3aWxsIGJlIGFwcHJlY2lhdGVkLg0KDQpUaGFua3MsDQoNCi0tSGVybmFu
DQo=

