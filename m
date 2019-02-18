Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49D82E00BBC; Tue, 19 Feb 2019 15:45:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.65.76 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 73945 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Feb 2019 15:45:18 PST
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065076.outbound.protection.outlook.com [40.92.65.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C457E007B3
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 15:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=dVKRLk+SF2Tz3PUTslURaCvwN7OT9NoZw6XyLcxFtbI=;
	b=cJPHBVFEKZjB3O+lbDw+ZrU3PFGkjNBqj39LV2qr9ICovcEqBtqsYWUFdZJctsNk2lxXYKxx5PsDym1alkkC3S/Jzbl0KvRHndeY8wtggbxTLYMUWc7KywvC+C5K2tIklsBvnIGNn30xrmaTTcD0m+c9Fa9oZ0y9rTAfVFiOnPgFQR+dTqG+E12cUJjMwh+FjNRIOoL09FNlK7gZetwNSay9F15h7LiZ+M2IVUHg5XQVp4OaPlm6SYETBKqqixE6POZC3By9wVDl5A2BS5ESAgAff3WaZeYMQJeahHEs19q77uduWskhSO5hmPgSczRUiFhIO6nxm6A7jj3uqar03g==
Received: from DB5EUR01FT045.eop-EUR01.prod.protection.outlook.com
	(10.152.4.56) by DB5EUR01HT075.eop-EUR01.prod.protection.outlook.com
	(10.152.5.158) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1580.10;
	Mon, 18 Feb 2019 12:37:38 +0000
Received: from DB6PR0701MB2629.eurprd07.prod.outlook.com (10.152.4.57) by
	DB5EUR01FT045.mail.protection.outlook.com (10.152.4.180) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.1580.10 via Frontend Transport; Mon, 18 Feb 2019 12:37:38 +0000
Received: from DB6PR0701MB2629.eurprd07.prod.outlook.com
	([fe80::144e:b63:a36e:e218]) by
	DB6PR0701MB2629.eurprd07.prod.outlook.com
	([fe80::144e:b63:a36e:e218%10]) with mapi id 15.20.1643.012;
	Mon, 18 Feb 2019 12:37:38 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-java] How to include sound support?
Thread-Index: AQHUx4a7akGQBtNAYUKaOxZUhapVZQ==
Date: Mon, 18 Feb 2019 12:37:38 +0000
Message-ID: <DB6PR0701MB26294C515A9F61B3A4C2630B95630@DB6PR0701MB2629.eurprd07.prod.outlook.com>
References: <9bba1adc-5dfa-4a19-8629-7626e927f533@Spark>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6PR0502CA0017.eurprd05.prod.outlook.com
	(2603:10a6:209:1::30) To DB6PR0701MB2629.eurprd07.prod.outlook.com
	(2603:10a6:4:22::17)
x-incomingtopheadermarker: OriginalChecksum:C0AEE7215CFF9C1C6FBCD73153BCB5E88D46014B5B2FB32D56AEC4B997B096DB;
	UpperCasedChecksum:2D5FC6232302DB2C62F05858091FD4B137E7905234AF467DA88BBC7BD960F455;
	SizeAsReceived:8295; Count:62
x-ms-exchange-messagesentrepresentingtype: 1
x-readdle-message-id: 0aa743d3-fa3b-4123-a6d2-9e4834da2521@Spark
x-tmn: [KKlInze+483tuZ4wZrKumFY9qatDsCj3]
x-microsoft-original-message-id: <0aa743d3-fa3b-4123-a6d2-9e4834da2521@Spark>
x-ms-publictraffictype: Email
x-incomingheadercount: 62
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1603101475)(1601125500)(1701031045);
	SRVR:DB5EUR01HT075; 
X-MS-TrafficTypeDiagnostic: DB5EUR01HT075:|DB5EUR01HT075:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:DB5EUR01HT075; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT075; 
x-microsoft-antispam-message-info: YQZEm4Z/OaT7q1Zn/w7ioLy7NzfUv2vLGFTl4/eKy2/kNC30dt8M0yKh0msvLzqW
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ca185e-4965-4677-198c-08d6959ddda6
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Feb 2019 12:37:37.9767 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT075
X-OriginatorOrg: outlook.com
Subject: [meta-java] How to include sound support?
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
X-List-Received-Date: Tue, 19 Feb 2019 23:45:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0701MB26294C515A9F61B3A4C2630B95630DB6PR0701MB2629_"

--_000_DB6PR0701MB26294C515A9F61B3A4C2630B95630DB6PR0701MB2629_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCknigJltIHR5aW5nIHRvIGluc3RhbGwgb3BlbmpyZS04IGluIG15IGJ1aWxkIGZvciBh
IHJhc3BiZXJyeSBwaSBjbTMuIEnigJltIHVzaW5nIHRoZSB0aHVkIGJyYW5jaCBvbiBhbGwgbGF5
ZXJzLg0KSW4gbXkgbG9jYWwuY29uZiBJIGhhdmUgZGlzdHJvIGZlYXR1cmVzIGxpa2Ugc286DQoN
CkRJU1RST19GRUFUVVJFU19hcHBlbmQgPSAiIGFsc2EgYmx1ZXRvb3RoIGJsdWV6NSBzeXN0ZW1k
IHdpZmnigJ0NCg0KTXkgZGV2aWNlIGxheWVyIGhhcyBhIGJiYXBwZW5kIGZpbGUgInJlY2lwZXMt
Y29yZS9vcGVuamRrL29wZW5qcmUtOF8lLmJiYXBwZW5k4oCdIHdpdGggY29udGVudHM6DQoNClBB
Q0tBR0VDT05GSUcgPSAiIFwNCnJlcGFjayBcDQphbHNhIFwNCmdpZiBcDQpqcGVnIFwNCnBuZyBc
DQp6bGliIFwNCuKAnA0KDQpJIHdvdWxkIGV4cGVjdCB0aGlzIHRvIGVuYWJsZSBzb3VuZCBpbiB0
aGUgYnVpbGQuIEJ1dCBpbiAidG1wL3dvcmsvY29ydGV4YTd0MmhmLW5lb24tdmZwdjQtcG9reS1s
aW51eC1nbnVlYWJpL29wZW5qcmUtOC8xNzJiMTEtcjAvdGVtcC9sb2cuZG9fY29tcGlsZeKAnSBp
dCBrZWVwcyB0ZWxsaW5nIG1lLg0KDQpOT1RFOiBtYWtlIEJVSUxEX0hFQURMRVNTX09OTFk9MSBC
VUlMRF9IRUFETEVTUz10cnVlIEJVSUxEX1NPVU5ETEVTU19PTkxZPTEgWDExX05PVF9ORUVERUQ9
MSBDVVBTX05PVF9ORUVERUQ9MSBQVUxTRV9OT1RfTkVFREVEPTENCg0KQW5kIHN1cmUgZW5vdWdo
IG9uIHRoZSBkZXZpY2UgSSBnZXQgYSBKVk0gdGhhdCBkb2VzIG5vdCBnaXZlIG1lIGFueSBhdWRp
byBzdXBwb3J0Lg0KDQpJIHdlbnQgdGhyb3VnaCB0aGUgcmVjaXBlIGZpbGVzIHRvIG15IGJlc3Qg
YWJpbGl0eSBidXQgSSBjYW4ndCB1bmRlcnN0YW5kIHdoeSBJIGNhbuKAmXQgZ2V0IGl0IHRvIG9t
aXQgIkJVSUxEX1NPVU5ETEVTU19PTkxZPTEg4oCcIHdoZW4gYnVpbGRpbmcuIEFzIGZhciBhcyBJ
IGNhbiB0ZWxsIGl0IHNob3VsZCBlbmFibGUgc291bmQgd2hlbiBhbHNhIGlzIGJvdGggaW4gUEFD
S0FHRUNPTkZJRyBhbmQgRElTVFJPX0ZFQVRVUkVTLg0KDQpBbnkgaGludHMgYXMgdG8gd2hhdCBJ
4oCZbSBvdmVybG9va2luZz8gVGhhbmtzIQ0KDQpLaW5kIHJlZ2FyZHMsDQpFcmlrIEhvb2dldmVl
bg0K

--_000_DB6PR0701MB26294C515A9F61B3A4C2630B95630DB6PR0701MB2629_
Content-Type: text/html; charset="utf-8"
Content-ID: <21BC954C1F68D748B1807C496C9CAC18@eurprd07.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAtYXBw
bGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsIHNhbnMtc2VyaWY7Ij4NCkhpLA0KPGRpdj48
YnI+DQo8L2Rpdj4NCjxkaXY+SeKAmW0gdHlpbmcgdG8gaW5zdGFsbCBvcGVuanJlLTggaW4gbXkg
YnVpbGQgZm9yIGEgcmFzcGJlcnJ5IHBpIGNtMy4gSeKAmW0gdXNpbmcgdGhlIHRodWQgYnJhbmNo
IG9uIGFsbCBsYXllcnMuPC9kaXY+DQo8ZGl2PkluIG15IGxvY2FsLmNvbmYgSSBoYXZlIGRpc3Ry
byBmZWF0dXJlcyBsaWtlIHNvOjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+RElTVFJP
X0ZFQVRVUkVTX2FwcGVuZCA9ICZxdW90OyBhbHNhIGJsdWV0b290aCBibHVlejUgc3lzdGVtZCB3
aWZp4oCdPC9kaXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5NeSBkZXZpY2UgbGF5ZXIgaGFz
IGEgYmJhcHBlbmQgZmlsZSAmcXVvdDtyZWNpcGVzLWNvcmUvb3Blbmpkay9vcGVuanJlLThfJS5i
YmFwcGVuZOKAnSB3aXRoIGNvbnRlbnRzOjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+
UEFDS0FHRUNPTkZJRyA9ICZxdW90OyBcPGJyPg0KcmVwYWNrIFw8YnI+DQphbHNhIFw8YnI+DQpn
aWYgXDxicj4NCmpwZWcgXDxicj4NCnBuZyBcPGJyPg0KemxpYiBcPGJyPg0K4oCcPGJyPg0KPC9k
aXY+DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5JIHdvdWxkIGV4cGVjdCB0aGlzIHRvIGVuYWJs
ZSBzb3VuZCBpbiB0aGUgYnVpbGQuIEJ1dCBpbiAmcXVvdDt0bXAvd29yay9jb3J0ZXhhN3QyaGYt
bmVvbi12ZnB2NC1wb2t5LWxpbnV4LWdudWVhYmkvb3BlbmpyZS04LzE3MmIxMS1yMC90ZW1wL2xv
Zy5kb19jb21waWxl4oCdIGl0IGtlZXBzIHRlbGxpbmcgbWUuPC9kaXY+DQo8ZGl2Pjxicj4NCjwv
ZGl2Pg0KPGRpdj5OT1RFOiBtYWtlIEJVSUxEX0hFQURMRVNTX09OTFk9MSBCVUlMRF9IRUFETEVT
Uz10cnVlIEJVSUxEX1NPVU5ETEVTU19PTkxZPTEgWDExX05PVF9ORUVERUQ9MSBDVVBTX05PVF9O
RUVERUQ9MSBQVUxTRV9OT1RfTkVFREVEPTE8YnI+DQo8L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+
DQo8ZGl2PkFuZCBzdXJlIGVub3VnaCBvbiB0aGUgZGV2aWNlIEkgZ2V0IGEgSlZNIHRoYXQgZG9l
cyBub3QgZ2l2ZSBtZSBhbnkgYXVkaW8gc3VwcG9ydC48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+
DQo8ZGl2Pkkgd2VudCB0aHJvdWdoIHRoZSByZWNpcGUgZmlsZXMgdG8gbXkgYmVzdCBhYmlsaXR5
IGJ1dCBJIGNhbid0IHVuZGVyc3RhbmQgd2h5IEkgY2Fu4oCZdCBnZXQgaXQgdG8gb21pdCAmcXVv
dDtCVUlMRF9TT1VORExFU1NfT05MWT0xIOKAnCB3aGVuIGJ1aWxkaW5nLiBBcyBmYXIgYXMgSSBj
YW4gdGVsbCBpdCBzaG91bGQgZW5hYmxlIHNvdW5kIHdoZW4gYWxzYSBpcyBib3RoIGluIFBBQ0tB
R0VDT05GSUcgYW5kIERJU1RST19GRUFUVVJFUy48L2Rpdj4NCjxkaXY+PGJyPg0KPC9kaXY+DQo8
ZGl2PkFueSBoaW50cyBhcyB0byB3aGF0IEnigJltIG92ZXJsb29raW5nPyBUaGFua3MhPC9kaXY+
DQo8ZGl2Pjxicj4NCjwvZGl2Pg0KPGRpdj5LaW5kIHJlZ2FyZHMsPC9kaXY+DQo8ZGl2PkVyaWsg
SG9vZ2V2ZWVuPC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_DB6PR0701MB26294C515A9F61B3A4C2630B95630DB6PR0701MB2629_--
