Return-Path: <aaron.solochek@sri.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED4B4E0097D; Fri,  1 Nov 2019 11:09:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.89.49 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from GCC02-BL0-obe.outbound.protection.outlook.com
	(mail-bl2gcc02on2049.outbound.protection.outlook.com [40.107.89.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29B27E007AE
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 11:09:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=YEbjd6izz6tbwFpUbHTNN2tdaHrptNBzz3182s/yBn1Osqvt96zQPnyZbqqdLXVuAyFmZ602U8461Blxoers4GKltHCh62OOnh88Vfz631zOv50yxY2zHP+SwL2lkIOIA6PZstftFPZHGXmJtX2m4qe333JiszCmEfvBIUYfNiGY5/sIbVy017iD8q9uccsAJPrbYaZ7NQjqV1CBmE9dP5nTDGnIZUco1+OG3ts5KhqNjLPRJ0u67TtttULrlbUzDtEpYCpifoDKqOS0qwrlo4+4Y4RaAq7lgIhAjajPq2PIHA474EcR/g5x1hmLD1Xw0tR20fbfnc1uQ78nMhI8fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eORe6jP0VTkBKMY6QEWO/aIthtl1aoYlm5QvjGyQEek=;
	b=HOUfzlYoqBTXL5G95KeU46+IOiGvTORUmp7EdqDOEVTtnzBRpHP9Fa63tvu5iHc5zBzVrHFirXpD/5L5kdEsEoUdIVXJRVQvlSoYXDo0shjoTmUiazPvwVHFC4y/C3Uv/k8/ZwFpgAqsf9XaqZ4ShUaqahp2rT4uaL7E4iQal0ShjoTCdPFnVeZ0p1+ALVRpHA+L3W6Ycy6ctJAm+4s71Kf7vTPMjbW1rutDqH/bZ72EpOlgZBUFt9UR+z5ouZq7DNMqJsM+LRy4G2jvm8L1B3seSOs0nTbFBCqXtFVknEOFpmuSUTevQZcB1DDfJc3pIwLUVxmafSGNK+ZeTx26vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=sri.com; dmarc=pass action=none header.from=sri.com;
	dkim=pass header.d=sri.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sri.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=eORe6jP0VTkBKMY6QEWO/aIthtl1aoYlm5QvjGyQEek=;
	b=E4XC6Rzy/CXWGMFCOo/p0E90JKD5DJSTFe+ohu7/RjjXHW7I7/f+OUmoONMc0cC0DkM1WvNDUwLQRKuEuB43v49Rf5hzmBaTJXUyjB2ggm/AwKpBU9HdArvNW+ts8xOgZuTjO5ilVqbDEhAsng9bnTJXRHLqDfacRtNnKPfjQtA=
Received: from CY4PR09MB1207.namprd09.prod.outlook.com (10.172.67.9) by
	CY4PR09MB2277.namprd09.prod.outlook.com (10.172.140.148) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.24; Fri, 1 Nov 2019 18:08:59 +0000
Received: from CY4PR09MB1207.namprd09.prod.outlook.com
	([fe80::f5b3:800b:7d27:a182]) by
	CY4PR09MB1207.namprd09.prod.outlook.com
	([fe80::f5b3:800b:7d27:a182%9]) with mapi id 15.20.2408.024;
	Fri, 1 Nov 2019 18:08:59 +0000
From: Aaron Solochek <aaron.solochek@sri.com>
To: Ross Burton <ross.burton@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] visual studio code packages or building instructions?
Thread-Index: AQHVkNJxq60l0pshNUiBBjrXMXQ9D6d2h6mAgAAHf6CAAAyJgIAAARjA
Date: Fri, 1 Nov 2019 18:08:59 +0000
Message-ID: <CY4PR09MB1207E95902769AA47D3B0F419A620@CY4PR09MB1207.namprd09.prod.outlook.com>
References: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
	<b796ff6c-a14c-ece3-40f5-713241386cda@intel.com>
	<CY4PR09MB1207D3F1962AADEB9D57E25C9A620@CY4PR09MB1207.namprd09.prod.outlook.com>
	<35d49b26-1c8f-1cf6-5be5-9b62ffd861ee@intel.com>
In-Reply-To: <35d49b26-1c8f-1cf6-5be5-9b62ffd861ee@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aaron.solochek@sri.com; 
x-originating-ip: [130.33.8.249]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 647fb799-9cec-4d78-fbd2-08d75ef691cb
x-ms-traffictypediagnostic: CY4PR09MB2277:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <CY4PR09MB2277CB82E8D1BBDEF3EC4D809A620@CY4PR09MB2277.namprd09.prod.outlook.com>
x-safelist: Domain-whitelisted
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(396003)(39850400004)(366004)(136003)(376002)(346002)(13464003)(189003)(199004)(316002)(64756008)(44832011)(71190400001)(14454004)(305945005)(45080400002)(486006)(966005)(7736002)(25786009)(8676002)(478600001)(2501003)(81156014)(71200400001)(2906002)(74316002)(33656002)(76176011)(53546011)(6506007)(446003)(81166006)(8936002)(99286004)(66556008)(66946007)(66476007)(76116006)(66446008)(110136005)(476003)(102836004)(26005)(186003)(66066001)(9686003)(7696005)(11346002)(6116002)(86362001)(5660300002)(55016002)(3846002)(6306002)(6436002)(229853002)(52536014)(6246003)(256004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR09MB2277;
	H:CY4PR09MB1207.namprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sri.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eGXd/7i0Qihx5U3zQErnVDeoDn69ZoQUQ4jbhuPKvFcUjru2hb4eguE0ATDu1YlRQ99zVqgBMOtS69uvIxXy9PH9ROP7yWUP1ACx8IFSxzKBg+KmtbmPCQubX6n6t4iq1a2r+uzTaTJ5lF4dzqqxR2CiToJV1XD81tH6QJG2RT5Kt0QM2RQkwDv3EWQo6zkZNrrneY5RFr7V15zoFI2gPppHzlV5PidCyEsxso2qXsh6SEZNi4nKrIcarMf9m45U+/xklDRpAjbSPJsi9MsDCtoRDPbUxSkdEdrkgRHaM+duN/BEq6apDbKKgBEx5vqKfXUQdGgbS3FgDkG35bNVR1Lpjuf5a16agB1edkRZ23Bp7F3R9utbUttxCz59o2U5pbM72aShysbHJP2z3ai1p7wQJgvuMiKPZLtYweyQkhD3b0MdvbrncDZPRbgmdR7+ub2vVfBf0VB6z+cDtTnnaP5dyNYjlTiM7O9T91kZrTo=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sri.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 647fb799-9cec-4d78-fbd2-08d75ef691cb
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 18:08:59.6235 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40779d33-79c4-4626-b8bf-140c4d5e9075
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JBCbAQUOS8A+AHl36p9mx9NTER9oDkNSonJPe/+gbvcu1QRUENDIH7WbNu5SFZhM5fgTMUDbDhd48l9kBEIHfQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR09MB2277
Subject: Re: visual studio code packages or building instructions?
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
X-List-Received-Date: Fri, 01 Nov 2019 18:09:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBSb3NzIEJ1cnRvbiA8cm9zcy5i
dXJ0b25AaW50ZWwuY29tPiANClNlbnQ6IEZyaWRheSwgTm92ZW1iZXIgMSwgMjAxOSAyOjA0IFBN
DQpUbzogQWFyb24gU29sb2NoZWsgPGFhcm9uLnNvbG9jaGVrQHNyaS5jb20+OyB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSB2aXN1YWwgc3R1ZGlvIGNvZGUgcGFj
a2FnZXMgb3IgYnVpbGRpbmcgaW5zdHJ1Y3Rpb25zPw0KDQpPbiAwMS8xMS8yMDE5IDE3OjUxLCBB
YXJvbiBTb2xvY2hlayB3cm90ZToNCj4gV2VsbCBJIGdyYWJiZWQgdGhlIC5kZWIgdGhhdCBvbmUg
b2YgdGhvc2UgbGlua3MgbWVudGlvbmVkIGFuZCBjb252ZXJ0ZWQgaXQgdG8gYW4gcnBtLCBidXQg
b2YgY291cnNlIHRoZXJlIGFyZSBhIHRvbiBvZiB1bm1ldCBkZXBlbmRlbmNpZXMsIHNvIEkgbWln
aHQgaGF2ZSB0byBidWlsZCBpdCBhbnl3YXkuDQo+IA0KPiBJIGZvdW5kIHRoZXNlIGluc3RydWN0
aW9ucyBmb3IgYnVpbGRpbmcgaXQsIHdoaWNoIGFyZSBwaW5uZWQgdG8gYW4gDQo+IG9sZGVyIHZl
cnNpb24gKHdoaWNoIGlzIHByb2JhYmx5IGZpbmUpDQo+IA0KPiBodHRwczovL2djYzAyLnNhZmVs
aW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRoDQo+IHVi
LmNvbSUyRmZ1dHVyZWpvbmVzJTJGY29kZS1vc3MtYWFyY2g2NCZhbXA7ZGF0YT0wMSU3QzAxJTdD
YWFyb24uc29sb2MNCj4gaGVrJTQwc3JpLmNvbSU3QzY2MGU5YmM2Y2FkYTQ2ZjkyZDg2MDhkNzVl
ZjVkMDM4JTdDNDA3NzlkMzM3OWM0NDYyNmI4Yg0KPiBmMTQwYzRkNWU5MDc1JTdDMSZhbXA7c2Rh
dGE9Q0xoZ0c0bVpaMkVVdWlKbEo1RWJxYzN4QXBxc3BPNFJ4TXZrYUVKWng0DQo+IHMlM0QmYW1w
O3Jlc2VydmVkPTANCj4gDQo+IEkgaGF2ZSBnb3R0ZW4gbW9zdCBvZiB0aGUgZGVwZW5kZW5jaWVz
IGJ1aWx0IHdpdGggYml0YmFrZSwgZXhjZXB0IGZvciB0aGUgIHgxMSBzdHVmZjoNCj4gDQo+IEVS
Uk9SOiBOb3RoaW5nIFJQUk9WSURFUyAncGFja2FnZWdyb3VwLWNvcmUteDExJyAoYnV0IA0KPiAv
aG9tZS9hYXJvbnMvc3JpL2J1bGxpdHQvbnhwL2lteC15b2N0by1ic3Avc291cmNlcy9tZXRhLWZz
bC1ic3AtcmVsZWFzDQo+IGUvaW14L21ldGEtc2RrL2R5bmFtaWMtbGF5ZXJzL3F0NS1sYXllci9y
ZWNpcGVzLWZzbC9pbWFnZXMvZnNsLWltYWdlLXENCj4gdDUtdmFsaWRhdGlvbi1pbXguYmIgUkRF
UEVORFMgb24gb3Igb3RoZXJ3aXNlIHJlcXVpcmVzIGl0KQ0KPiBwYWNrYWdlZ3JvdXAtY29yZS14
MTEgd2FzIHNraXBwZWQ6IG1pc3NpbmcgcmVxdWlyZWQgZGlzdHJvIGZlYXR1cmUgDQo+ICd4MTEn
IChub3QgaW4gRElTVFJPX0ZFQVRVUkVTKQ0KPiBOT1RFOiBSdW50aW1lIHRhcmdldCAncGFja2Fn
ZWdyb3VwLWNvcmUteDExJyBpcyB1bmJ1aWxkYWJsZSwgcmVtb3ZpbmcuLi4NCj4gTWlzc2luZyBv
ciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydwYWNrYWdlZ3JvdXAtY29yZS14
MTEnXQ0KPiBFUlJPUjogUmVxdWlyZWQgYnVpbGQgdGFyZ2V0ICdmc2wtaW1hZ2UtcXQ1LXZhbGlk
YXRpb24taW14JyBoYXMgbm8gYnVpbGRhYmxlIHByb3ZpZGVycy4NCj4gTWlzc2luZyBvciB1bmJ1
aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogDQo+IFsnZnNsLWltYWdlLXF0NS12YWxpZGF0
aW9uLWlteCcsICdwYWNrYWdlZ3JvdXAtY29yZS14MTEnXQ0KPiANCj4gQnV0IHRoaXMgaXMgbXkg
bG9jYWwuY29uZjoNCj4gDQo+IE1BQ0hJTkUgPz89ICdpbXg4bXFldmsnDQo+IERJU1RSTyA/PSAn
ZnNsLWlteC13YXlsYW5kJw0KPiBQQUNLQUdFX0NMQVNTRVMgPz0gInBhY2thZ2VfcnBtIg0KPiBF
WFRSQV9JTUFHRV9GRUFUVVJFUyA/PSAiZGVidWctdHdlYWtzIg0KPiBVU0VSX0NMQVNTRVMgPz0g
ImJ1aWxkc3RhdHMgaW1hZ2UtbWtsaWJzIGltYWdlLXByZWxpbmsiDQo+IFBBVENIUkVTT0xWRSA9
ICJub29wIg0KPiBCQl9ESVNLTU9OX0RJUlMgPz89ICJcDQo+ICAgICAgU1RPUFRBU0tTLCR7VE1Q
RElSfSwxRywxMDBLIFwNCj4gICAgICBTVE9QVEFTS1MsJHtETF9ESVJ9LDFHLDEwMEsgXA0KPiAg
ICAgIFNUT1BUQVNLUywke1NTVEFURV9ESVJ9LDFHLDEwMEsgXA0KPiAgICAgIFNUT1BUQVNLUywv
dG1wLDEwME0sMTAwSyBcDQo+ICAgICAgQUJPUlQsJHtUTVBESVJ9LDEwME0sMUsgXA0KPiAgICAg
IEFCT1JULCR7RExfRElSfSwxMDBNLDFLIFwNCj4gICAgICBBQk9SVCwke1NTVEFURV9ESVJ9LDEw
ME0sMUsgXA0KPiAgICAgIEFCT1JULC90bXAsMTBNLDFLIg0KPiBQQUNLQUdFQ09ORklHX2FwcGVu
ZF9wbi1xZW11LW5hdGl2ZSA9ICIgc2RsIg0KPiBQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi1uYXRp
dmVzZGstcWVtdSA9ICIgc2RsIg0KPiBDT05GX1ZFUlNJT04gPSAiMSINCj4gI0lNQUdFX0ZFQVRV
UkVTX2FwcGVuZCA9ICIgcGFja2FnZS1tYW5hZ2VtZW50IHRvb2xzLXNkayAgeDExLWJhc2UgeDEx
Ig0KPiBJTUFHRV9GRUFUVVJFUyArPSAicGFja2FnZS1tYW5hZ2VtZW50Ig0KPiBJTUFHRV9GRUFU
VVJFUyArPSAidG9vbHMtc2RrIg0KPiBJTUFHRV9GRUFUVVJFUyArPSAieDExLWJhc2UiDQo+IElN
QUdFX0ZFQVRVUkVTICs9ICJ4MTEiDQo+IA0KPiANCj4gQXMgeW91IGNhbiBzZWUsIEkgdHJpZWQg
YWRkaW5nIHgxMSBib3RoIHVzaW5nIElNQUdFX0ZFQVRVUkVTICs9IGFzIA0KPiB3ZWxsIGFzIElN
QUdFX0ZFQVRVUkVTX2FwcGVuZCAod2hlcmUgSSB3b3VsZCB0aGVuIGNvbW1lbnQgb3V0IHRoZSAr
PSBsaW5lcykgV2h5IGlzIHgxMSBuZXZlciBnZXR0aW5nIGFkZGVkIHRvIHRoZSBESVNUUk9fRkVB
VFVSRVM/IEkgYWxzbyB0cmllZCBwdXR0aW5nIHgxMSBpbiBESVNUUk9fRkVBVFVSRVMgYW5kIERJ
U1RST19GRUFUVVJFU19hcHBlbmQuDQo+IA0KPiBXaGF0IGlzIHRoZSBjb3JyZWN0IHRoaW5nIGhl
cmU/DQoNCkFkZGluZyB4MTEgdG8gSU1BR0VfRkVBVFVSRVMgZG9lc24ndCBhY2hpZXZlIGFueXRo
aW5nLCBhcyB4MTEgaXNuJ3QgYW4gSU1BR0VfRkVBVFVSRS4gIEl0J3MgYSBESVNUUk9fRkVBVFVS
RS4NCg0KRElTVFJPID89ICdmc2wtaW14LXdheWxhbmQnDQoNCmh0dHBzOi8vZ2NjMDIuc2FmZWxp
bmtzLnByb3RlY3Rpb24ub3V0bG9vay5jb20vP3VybD1odHRwcyUzQSUyRiUyRmdpdGh1Yi5jb20l
MkZGcmVlc2NhbGUlMkZtZXRhLWZyZWVzY2FsZS1kaXN0cm8lMkZibG9iJTJGbWFzdGVyJTJGY29u
ZiUyRmRpc3RybyUyRmZzbC13YXlsYW5kLmNvbmYmYW1wO2RhdGE9MDElN0MwMSU3Q2Fhcm9uLnNv
bG9jaGVrJTQwc3JpLmNvbSU3QzY2MGU5YmM2Y2FkYTQ2ZjkyZDg2MDhkNzVlZjVkMDM4JTdDNDA3
NzlkMzM3OWM0NDYyNmI4YmYxNDBjNGQ1ZTkwNzUlN0MxJmFtcDtzZGF0YT1pN0Rwc1k5MHRDbTRW
SmhlTzNkMFQlMkJacUZoOGc3WndCWHB4N1hTM3hvREUlM0QmYW1wO3Jlc2VydmVkPTANCnNheXMg
dGhhdCB0aGlzIGV4cGxpY2l0bHkgZG9lcyBESVNUUk9fRkVBVFVSRVNfcmVtb3ZlID0gIngxMSIg
c28geW91IGNhbid0IGFkZCBpdCBiYWNrLg0KDQpJIHN1Z2dlc3QgeW91IHVzZSBhIERJU1RSTyB0
aGF0IHN1cHBvcnRzIFgxMS4NCg0KT2gsIGR1aC4gSSBuZWVkIGZzbC1pbXgteHdheWxhbmQuIA0K
DQpUaGFuayB5b3UhDQoNCi1BYXJvbg0K

