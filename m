Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BAFC6E00D84; Sat,  6 Jan 2018 10:16:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.44 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 927 seconds by postgrey-1.32 at yocto-www;
	Sat, 06 Jan 2018 10:16:06 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0044.outbound.protection.outlook.com [104.47.32.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F171DE0056D
	for <yocto@yoctoproject.org>; Sat,  6 Jan 2018 10:16:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=tw3E3013tHJawuH9gHRdZkDaIsAQqlX1/UQ5TDUoMa8=;
	b=zC/K+XY9GpEMREtjepV+8/A5ys4oEGFEzccFocIQgLXE7QOggst53qIDvMcwHf6Us4vQ3SB3sNTeBYukDTlhLmnFM0XZDuK8fgZIOqnribgWGQrVSfH2G8vs+K5GmbwZRjQcgxe7UrtO5sUOMwpcApyR7InSGtZYnBincYNIC1U=
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com (10.161.213.20) by
	CY1PR0401MB1339.namprd04.prod.outlook.com (10.161.213.19) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.386.5; Sat, 6 Jan 2018 18:00:37 +0000
Received: from CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) by
	CY1PR0401MB1340.namprd04.prod.outlook.com ([10.161.213.20]) with
	mapi id 15.20.0386.006; Sat, 6 Jan 2018 18:00:37 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Thread-Topic: [yocto] rdepends = "python3-modules" in recipe does not install
	python3-modules in image
Thread-Index: AQHThkNHEfNse791uk6L+QtsR952xqNlnByAgAGH36Y=
Date: Sat, 6 Jan 2018 18:00:36 +0000
Message-ID: <63A4BEEE-D99F-4B1F-A18F-9D5085B4917E@telspandata.com>
References: <CY1PR0401MB1340EE57B6571F238B64B7DFB01C0@CY1PR0401MB1340.namprd04.prod.outlook.com>,
	<51e6ac82-e6f3-2bc4-8758-ac1c0fdcaacf@linux.intel.com>
In-Reply-To: <51e6ac82-e6f3-2bc4-8758-ac1c0fdcaacf@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [24.9.221.164]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1PR0401MB1339;
	7:5SWGq5DajMQZ78m/evEMBiDTXK/l9B0/kxISuLryWyWTWDYhOa6zHHU8wvno2vp6TFA6Af8JHNvQ2mVznbwh/Yia4WrZNNsavubENJ5Fv+LQnVUKBqr7xO7scLLQ5MhEOCZ27CYH79gODGTYtPE6wQboIT0jdD4DNm0/keXDqtrlAi+vZdgsGALHqMJwvFQSBlIUHneKmUT5FNCaGjcqXZJ+z+1Y/ykVMSZK/KOJBCgxvmwTCaQrk9LMeDnAVQf9
x-ms-exchange-antispam-srfa-diagnostics: SSOS;SSOR;
x-forefront-antispam-report: SFV:SKI; SCL:-1; SFV:NSPM;
	SFS:(10009020)(39380400002)(366004)(39830400003)(346002)(376002)(396003)(199004)(189003)(24454002)(6436002)(229853002)(7736002)(68736007)(77096006)(25786009)(6486002)(478600001)(6246003)(4326008)(2906002)(86362001)(36756003)(6116002)(54896002)(6512007)(236005)(3846002)(6506007)(66066001)(2900100001)(53936002)(53546011)(33656002)(2950100002)(83716003)(14454004)(3280700002)(6916009)(8936002)(99286004)(76176011)(316002)(106356001)(3660700001)(8676002)(5660300001)(105586002)(81156014)(97736004)(82746002)(102836004)(81166006);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY1PR0401MB1339;
	H:CY1PR0401MB1340.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
x-ms-office365-filtering-correlation-id: aa214525-6ca6-47e6-3da5-08d5552f63f3
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(4534020)(4602075)(4603075)(4627115)(201702281549075)(5600026)(4604075)(3008032)(2017052603307)(7153060)(7193020);
	SRVR:CY1PR0401MB1339; 
x-ms-traffictypediagnostic: CY1PR0401MB1339:
x-microsoft-antispam-prvs: <CY1PR0401MB1339935D24B601009227493EB01D0@CY1PR0401MB1339.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040470)(2401047)(5005006)(8121501046)(93006095)(93001095)(10201501046)(3002001)(3231023)(944501075)(6041268)(20161123564045)(20161123562045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(2016111802025)(6043046)(6072148)(201708071742011);
	SRVR:CY1PR0401MB1339; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CY1PR0401MB1339; 
x-forefront-prvs: 0544D934E1
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: nrIfrS4kQavSK1s7IInp4zNWzHjwhloUb6UJH5Z/PxYIiTak2pQKeKnQ4l7z75C3hpo4CfUxIxAtW8/e7ZfAKg==
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: aa214525-6ca6-47e6-3da5-08d5552f63f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jan 2018 18:00:37.0096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1PR0401MB1339
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: rdepends = "python3-modules" in recipe does not install python3-modules in image
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
X-List-Received-Date: Sat, 06 Jan 2018 18:16:08 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63A4BEEED99F4B1FA18F9D5085B4917Etelspandatacom_"

--_000_63A4BEEED99F4B1FA18F9D5085B4917Etelspandatacom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93IGRvIEkgY2hlY2sgd2hhdCBQTiBpcyBzZXQgdG8/IEkgY2FuIHNlZSB1c2Vycy1kYmcucnBt
IGFuZCB1c2Vycy1kb2MucnBtIGluIHRoZSBycG0gZm9sZGVyLiBUaGUgcmVjaXBlIG5hbWUgaXMg
dXNlcnMuYmINCg0KDQpUaGFua3MsDQpNYXR0DQoNCk9uIEphbiA1LCAyMDE4LCBhdCAxMTozOCBB
TSwgQWxleGFuZGVyIEthbmF2aW4gPGFsZXhhbmRlci5rYW5hdmluQGxpbnV4LmludGVsLmNvbTxt
YWlsdG86YWxleGFuZGVyLmthbmF2aW5AbGludXguaW50ZWwuY29tPj4gd3JvdGU6DQoNCk9uIDAx
LzA1LzIwMTggMDY6NDEgUE0sIE1hdHQgU2NoZXBlcnMgd3JvdGU6DQpUaGlzIGRvZXMgbm90IGlu
c3RhbGwgInB5dGhvbjMtbW9kdWxlcyIgdG8gdGhlIGltYWdlLiBXaGVuIHRoaXMgYnVpbGRzLCBt
eSBweXRob24gcHJvZ3JhbSBkb2VzIG5vdCB3b3JrIGJlY2F1c2Ugb2YgbWlzc2luZyBkZXBlbmRl
bmNpZXMgb24gdGhlIHN0YW5kYXJkIGxpYnJhcnkuDQpUbyBnZXQgdGhpcyB0byB3b3JrIEkgaGF2
ZSB0byBnbyBpbiBhbmQgYXBwZW5kICJweXRob24zLW1vZHVsZXMiIHRvIElNQUdFX0lOU1RBTEwg
aW4gbXkgdG9wIGxldmVsIGltYWdlIHJlY2lwZS4NCkkgdGhvdWdodCB0aGF0IHRoZSBwdXJwb3Nl
IFJERVBFTkRTIHdhcyB0byBpbnN0YWxsIHRoZSBjb3JyZWN0IHJ1bnRpbWUgZGVwZW5kZW5jaWVz
IHRvIHRoZSBpbWFnZT8gV2h5IGRvZXNuJ3QgdGhpcyB3b3JrPw0KDQpQcm9iYWJseSBiZWNhdXNl
IHRoZSBiaW5hcnkgcGFja2FnZSBpcyBjYWxsZWQgc29tZXRoaW5nIGVsc2UgdGhhbiBQTj8NCg0K
QWxleA0K

--_000_63A4BEEED99F4B1FA18F9D5085B4917Etelspandatacom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IGRpcj0iYXV0byI+DQpI
b3cgZG8gSSBjaGVjayB3aGF0IFBOIGlzIHNldCB0bz8gSSBjYW4gc2VlIHVzZXJzLWRiZy5ycG0g
YW5kIHVzZXJzLWRvYy5ycG0gaW4gdGhlIHJwbSBmb2xkZXIuIFRoZSByZWNpcGUgbmFtZSBpcyB1
c2Vycy5iYg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPGRpdj5UaGFua3MsDQo8ZGl2
Pk1hdHQ8L2Rpdj4NCjwvZGl2Pg0KPGRpdj48YnI+DQpPbiBKYW4gNSwgMjAxOCwgYXQgMTE6Mzgg
QU0sIEFsZXhhbmRlciBLYW5hdmluICZsdDs8YSBocmVmPSJtYWlsdG86YWxleGFuZGVyLmthbmF2
aW5AbGludXguaW50ZWwuY29tIj5hbGV4YW5kZXIua2FuYXZpbkBsaW51eC5pbnRlbC5jb208L2E+
Jmd0OyB3cm90ZTo8YnI+DQo8YnI+DQo8L2Rpdj4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPg0K
PGRpdj48c3Bhbj5PbiAwMS8wNS8yMDE4IDA2OjQxIFBNLCBNYXR0IFNjaGVwZXJzIHdyb3RlOjwv
c3Bhbj48YnI+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj5UaGlzIGRvZXMgbm90IGlu
c3RhbGwgJnF1b3Q7cHl0aG9uMy1tb2R1bGVzJnF1b3Q7IHRvIHRoZSBpbWFnZS4gV2hlbiB0aGlz
IGJ1aWxkcywgbXkgcHl0aG9uIHByb2dyYW0gZG9lcyBub3Qgd29yayBiZWNhdXNlIG9mIG1pc3Np
bmcgZGVwZW5kZW5jaWVzIG9uIHRoZSBzdGFuZGFyZCBsaWJyYXJ5Ljwvc3Bhbj48YnI+DQo8L2Js
b2NrcXVvdGU+DQo8YmxvY2txdW90ZSB0eXBlPSJjaXRlIj48c3Bhbj5UbyBnZXQgdGhpcyB0byB3
b3JrIEkgaGF2ZSB0byBnbyBpbiBhbmQgYXBwZW5kICZxdW90O3B5dGhvbjMtbW9kdWxlcyZxdW90
OyB0byBJTUFHRV9JTlNUQUxMIGluIG15IHRvcCBsZXZlbCBpbWFnZSByZWNpcGUuPC9zcGFuPjxi
cj4NCjwvYmxvY2txdW90ZT4NCjxibG9ja3F1b3RlIHR5cGU9ImNpdGUiPjxzcGFuPkkgdGhvdWdo
dCB0aGF0IHRoZSBwdXJwb3NlIFJERVBFTkRTIHdhcyB0byBpbnN0YWxsIHRoZSBjb3JyZWN0IHJ1
bnRpbWUgZGVwZW5kZW5jaWVzIHRvIHRoZSBpbWFnZT8gV2h5IGRvZXNuJ3QgdGhpcyB3b3JrPzwv
c3Bhbj48YnI+DQo8L2Jsb2NrcXVvdGU+DQo8c3Bhbj48L3NwYW4+PGJyPg0KPHNwYW4+UHJvYmFi
bHkgYmVjYXVzZSB0aGUgYmluYXJ5IHBhY2thZ2UgaXMgY2FsbGVkIHNvbWV0aGluZyBlbHNlIHRo
YW4gUE4/PC9zcGFuPjxicj4NCjxzcGFuPjwvc3Bhbj48YnI+DQo8c3Bhbj5BbGV4PC9zcGFuPjxi
cj4NCjwvZGl2Pg0KPC9ibG9ja3F1b3RlPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_63A4BEEED99F4B1FA18F9D5085B4917Etelspandatacom_--
