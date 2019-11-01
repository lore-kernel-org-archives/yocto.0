Return-Path: <aaron.solochek@sri.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C435E00D94; Fri,  1 Nov 2019 10:51:09 -0700 (PDT)
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
	*      [40.107.91.60 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from GCC02-DM3-obe.outbound.protection.outlook.com
	(mail-dm3gcc02on2060.outbound.protection.outlook.com [40.107.91.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44594E0084E
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 10:51:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=LiUYFEvKhPEBlIG6tpHjqVbrsbXWqva/rwvSQrUhDqPimlTcv2Fgm65PBFWycWFHUTW/D4H8sIeJq28zfq19N6RZTJcTwmkRwGgSTb3qZApzbIBeQ2iW/Id62PkdkE9uSM6FgIUgOgjUKkAm9NnX9MMPoOqmqJ/rupYC+Sk0hEWwn2VK3OdLW7Rle8lnPT458x2/a1CC8KLT5vaOrXZLAxFjtP81f7RvYfiR14bPc+84XubU/T/zelb+UBcAqytq7LyIxUj2lvCsSRKHBn5jbR9XlV5CFiCKs1rl1GbZV1Kq964CLYKwVz/lm6vp4u0/3nPgKm1XNh2GR1nzVPxiyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=C1KkpkVH39a8sfFLTrtGqiPXw1oF0KrwfyiFPs8k128=;
	b=mxAPcxyXZa4i6tW/IoTk9WHl8dRfKCtJpsoS11tHGbCyjbcDpy5YYTn62qtZG/O3s+DuT22yqWJHgIlW6EU0R8FiSlU4bjmaUwEBHfJzI4JlDWkqtSp8Ux0OFmdACjGjD0JWJtdqVGQTRLI/pm0ce4eDujK+nF5Ln8lkDmsSPR0LRlmeUtMCg3pfpREp2U4e8L/51hZ6ib6Oz8MXoHPPz+ZO66ev6TqtLi++jnnefRfBnUM/YrNV06ei2af4O0atZR1y0cUXbcU8ojLWa9ANtp8RQm1Py51vxllT6DO5dh0txKlXdoZR71JU6PPtzkZoikGwgb0COMK6kw/+n3V0CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=sri.com; dmarc=pass action=none header.from=sri.com;
	dkim=pass header.d=sri.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sri.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=C1KkpkVH39a8sfFLTrtGqiPXw1oF0KrwfyiFPs8k128=;
	b=vCunnbMXCHeil2LlySCi5E45w0ZOWGAKZzbL6oZryBkNEylnOFL1u117DT3iLGyHNYzZCGqiMW87myjDWeQlGS5RszaFVP/lz5JH27Np4AQAkQWr7cQppk4uG3MhCfsmmZROereB/hWT/jik5PPfzmf2wcSqzX1xE84vm9E09IU=
Received: from CY4PR09MB1207.namprd09.prod.outlook.com (10.172.67.9) by
	CY4PR09MB1813.namprd09.prod.outlook.com (10.172.139.22) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.20; Fri, 1 Nov 2019 17:51:04 +0000
Received: from CY4PR09MB1207.namprd09.prod.outlook.com
	([fe80::f5b3:800b:7d27:a182]) by
	CY4PR09MB1207.namprd09.prod.outlook.com
	([fe80::f5b3:800b:7d27:a182%9]) with mapi id 15.20.2408.024;
	Fri, 1 Nov 2019 17:51:04 +0000
From: Aaron Solochek <aaron.solochek@sri.com>
To: Ross Burton <ross.burton@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] visual studio code packages or building instructions?
Thread-Index: AQHVkNJxq60l0pshNUiBBjrXMXQ9D6d2h6mAgAAHf6A=
Date: Fri, 1 Nov 2019 17:51:04 +0000
Message-ID: <CY4PR09MB1207D3F1962AADEB9D57E25C9A620@CY4PR09MB1207.namprd09.prod.outlook.com>
References: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
	<b796ff6c-a14c-ece3-40f5-713241386cda@intel.com>
In-Reply-To: <b796ff6c-a14c-ece3-40f5-713241386cda@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=aaron.solochek@sri.com; 
x-originating-ip: [130.33.8.249]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d557fa6f-d82d-486c-1cb0-08d75ef41113
x-ms-traffictypediagnostic: CY4PR09MB1813:
x-ms-exchange-purlcount: 4
x-microsoft-antispam-prvs: <CY4PR09MB18137FE233A2419BF68956C89A620@CY4PR09MB1813.namprd09.prod.outlook.com>
x-safelist: Domain-whitelisted
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(396003)(376002)(39850400004)(346002)(366004)(13464003)(189003)(199004)(110136005)(5660300002)(2501003)(316002)(81166006)(33656002)(8936002)(99286004)(305945005)(81156014)(7736002)(2906002)(66066001)(74316002)(8676002)(52536014)(76116006)(966005)(66556008)(64756008)(66946007)(6506007)(7696005)(102836004)(478600001)(486006)(6246003)(3846002)(66476007)(55016002)(53546011)(256004)(86362001)(26005)(9686003)(45080400002)(6306002)(6116002)(76176011)(66446008)(25786009)(446003)(476003)(6436002)(11346002)(44832011)(14454004)(71200400001)(229853002)(71190400001)(186003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR09MB1813;
	H:CY4PR09MB1207.namprd09.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: sri.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ood2IgnCw7mabrJ5hqa5WJ+pmPqGgXIKf8msz/WK6fqGsKVY4x7JTZLF3qGyN1FL7nudTpPxFxyeCAHOMODgQrx63laE3UmMZolIy2Rqh9+BXGwsIMczZZXnePE8XLID010vewe+A0PQdQzf9XEUiVxqCD5VzxT3iYmpRJP4Vd8t6lx0fxcCbawleKn0r26GgPc+1vmMC3HVgz9IWxAfcU8fJpf+CEm6SegoOvpvzpJWEtHbjjb4rrpOEEJVBPTZ6ySqTgQWH5PO8zvaC9n8CjQDqEEA8uYQZ1CJjWAtkEeyfXk70AuN6yVIubflu6VzifuTYShmN/8mcWZZPqrXOMcn90QSoUIDVobrj2kNy+UEWGsS8e3gQesuEfWMa9xYtttuH6DOCeKS58tppItWlhlHvoTv440/+p66sChxEXFKOYepSCDgJi7k3qIxTi1MDA/vBABe4Hont9Q5wfTOMDUeOguHWdEYojPhBuR/nQ8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: sri.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d557fa6f-d82d-486c-1cb0-08d75ef41113
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 17:51:04.6721 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 40779d33-79c4-4626-b8bf-140c4d5e9075
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vbyKoqsPGVTHmCVU+HH6NTmse8ZikN25Zm5MBchOJhi9lZbH6ZjfoMulJ7rS1pprhRV5L/gQ7+RyfU+lAKgcow==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR09MB1813
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
X-List-Received-Date: Fri, 01 Nov 2019 17:51:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

V2VsbCBJIGdyYWJiZWQgdGhlIC5kZWIgdGhhdCBvbmUgb2YgdGhvc2UgbGlua3MgbWVudGlvbmVk
IGFuZCBjb252ZXJ0ZWQgaXQgdG8gYW4gcnBtLCBidXQgb2YgY291cnNlIHRoZXJlIGFyZSBhIHRv
biBvZiB1bm1ldCBkZXBlbmRlbmNpZXMsIHNvIEkgbWlnaHQgaGF2ZSB0byBidWlsZCBpdCBhbnl3
YXkuDQoNCkkgZm91bmQgdGhlc2UgaW5zdHJ1Y3Rpb25zIGZvciBidWlsZGluZyBpdCwgd2hpY2gg
YXJlIHBpbm5lZCB0byBhbiBvbGRlciB2ZXJzaW9uICh3aGljaCBpcyBwcm9iYWJseSBmaW5lKQ0K
DQpodHRwczovL2dpdGh1Yi5jb20vZnV0dXJlam9uZXMvY29kZS1vc3MtYWFyY2g2NA0KDQpJIGhh
dmUgZ290dGVuIG1vc3Qgb2YgdGhlIGRlcGVuZGVuY2llcyBidWlsdCB3aXRoIGJpdGJha2UsIGV4
Y2VwdCBmb3IgdGhlICB4MTEgc3R1ZmY6IA0KDQpFUlJPUjogTm90aGluZyBSUFJPVklERVMgJ3Bh
Y2thZ2Vncm91cC1jb3JlLXgxMScgKGJ1dCAvaG9tZS9hYXJvbnMvc3JpL2J1bGxpdHQvbnhwL2lt
eC15b2N0by1ic3Avc291cmNlcy9tZXRhLWZzbC1ic3AtcmVsZWFzZS9pbXgvbWV0YS1zZGsvZHlu
YW1pYy1sYXllcnMvcXQ1LWxheWVyL3JlY2lwZXMtZnNsL2ltYWdlcy9mc2wtaW1hZ2UtcXQ1LXZh
bGlkYXRpb24taW14LmJiIFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCnBh
Y2thZ2Vncm91cC1jb3JlLXgxMSB3YXMgc2tpcHBlZDogbWlzc2luZyByZXF1aXJlZCBkaXN0cm8g
ZmVhdHVyZSAneDExJyAobm90IGluIERJU1RST19GRUFUVVJFUykNCk5PVEU6IFJ1bnRpbWUgdGFy
Z2V0ICdwYWNrYWdlZ3JvdXAtY29yZS14MTEnIGlzIHVuYnVpbGRhYmxlLCByZW1vdmluZy4uLg0K
TWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydwYWNrYWdlZ3Jv
dXAtY29yZS14MTEnXQ0KRVJST1I6IFJlcXVpcmVkIGJ1aWxkIHRhcmdldCAnZnNsLWltYWdlLXF0
NS12YWxpZGF0aW9uLWlteCcgaGFzIG5vIGJ1aWxkYWJsZSBwcm92aWRlcnMuDQpNaXNzaW5nIG9y
IHVuYnVpbGRhYmxlIGRlcGVuZGVuY3kgY2hhaW4gd2FzOiBbJ2ZzbC1pbWFnZS1xdDUtdmFsaWRh
dGlvbi1pbXgnLCAncGFja2FnZWdyb3VwLWNvcmUteDExJ10NCg0KQnV0IHRoaXMgaXMgbXkgbG9j
YWwuY29uZjoNCg0KTUFDSElORSA/Pz0gJ2lteDhtcWV2aycNCkRJU1RSTyA/PSAnZnNsLWlteC13
YXlsYW5kJw0KUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSINCkVYVFJBX0lNQUdFX0ZF
QVRVUkVTID89ICJkZWJ1Zy10d2Vha3MiDQpVU0VSX0NMQVNTRVMgPz0gImJ1aWxkc3RhdHMgaW1h
Z2UtbWtsaWJzIGltYWdlLXByZWxpbmsiDQpQQVRDSFJFU09MVkUgPSAibm9vcCINCkJCX0RJU0tN
T05fRElSUyA/Pz0gIlwNCiAgICBTVE9QVEFTS1MsJHtUTVBESVJ9LDFHLDEwMEsgXA0KICAgIFNU
T1BUQVNLUywke0RMX0RJUn0sMUcsMTAwSyBcDQogICAgU1RPUFRBU0tTLCR7U1NUQVRFX0RJUn0s
MUcsMTAwSyBcDQogICAgU1RPUFRBU0tTLC90bXAsMTAwTSwxMDBLIFwNCiAgICBBQk9SVCwke1RN
UERJUn0sMTAwTSwxSyBcDQogICAgQUJPUlQsJHtETF9ESVJ9LDEwME0sMUsgXA0KICAgIEFCT1JU
LCR7U1NUQVRFX0RJUn0sMTAwTSwxSyBcDQogICAgQUJPUlQsL3RtcCwxME0sMUsiDQpQQUNLQUdF
Q09ORklHX2FwcGVuZF9wbi1xZW11LW5hdGl2ZSA9ICIgc2RsIg0KUEFDS0FHRUNPTkZJR19hcHBl
bmRfcG4tbmF0aXZlc2RrLXFlbXUgPSAiIHNkbCINCkNPTkZfVkVSU0lPTiA9ICIxIg0KI0lNQUdF
X0ZFQVRVUkVTX2FwcGVuZCA9ICIgcGFja2FnZS1tYW5hZ2VtZW50IHRvb2xzLXNkayAgeDExLWJh
c2UgeDExIg0KSU1BR0VfRkVBVFVSRVMgKz0gInBhY2thZ2UtbWFuYWdlbWVudCINCklNQUdFX0ZF
QVRVUkVTICs9ICJ0b29scy1zZGsiDQpJTUFHRV9GRUFUVVJFUyArPSAieDExLWJhc2UiDQpJTUFH
RV9GRUFUVVJFUyArPSAieDExIg0KDQoNCkFzIHlvdSBjYW4gc2VlLCBJIHRyaWVkIGFkZGluZyB4
MTEgYm90aCB1c2luZyBJTUFHRV9GRUFUVVJFUyArPSBhcyB3ZWxsIGFzIElNQUdFX0ZFQVRVUkVT
X2FwcGVuZCAod2hlcmUgSSB3b3VsZCB0aGVuIGNvbW1lbnQgb3V0IHRoZSArPSBsaW5lcykNCldo
eSBpcyB4MTEgbmV2ZXIgZ2V0dGluZyBhZGRlZCB0byB0aGUgRElTVFJPX0ZFQVRVUkVTPyBJIGFs
c28gdHJpZWQgcHV0dGluZyB4MTEgaW4gRElTVFJPX0ZFQVRVUkVTIGFuZCBESVNUUk9fRkVBVFVS
RVNfYXBwZW5kLiANCg0KV2hhdCBpcyB0aGUgY29ycmVjdCB0aGluZyBoZXJlPw0KDQpJIGFsc28g
aW5zdGFsbGVkIHlhcm4gYWNjb3JkaW5nIHRvIHRob3NlIGluc3RydWN0aW9ucywgd2hpY2ggd29y
a2VkIChpdCBzYWlkIGl0IHdhcyBzdWNjZXNzZnVsbHkgaW5zdGFsbGVkKSBob3dldmVyIHdoZW4g
SSB0cmllZCB0byB1c2UgaXQgSSBnb3QgYW4gZXJyb3IgYWJvdXQgbm90IGZpbmRpbmcgZ3VscDoN
Cg0KIyB5YXJuIHdhdGNoDQp5YXJuIHJ1biB2MS4xOS4xDQokIGd1bHAgd2F0Y2ggLS1tYXhfb2xk
X3NwYWNlX3NpemU9NDA5NQ0KL2Jpbi9zaDogZ3VscDogY29tbWFuZCBub3QgZm91bmQNCmVycm9y
IENvbW1hbmQgZmFpbGVkIHdpdGggZXhpdCBjb2RlIDEyNy4NCg0KSSBkb24ndCBrbm93IGFueXRo
aW5nIGFib3V0IHlhcm4uIElzIGd1bHAgYW5vdGhlciBwYWNrYWdlIEkgbmVlZCB0byBpbnN0YWxs
LCBvciBzaG91bGQgaXQgYmUgcGFydCBvZiB5YXJuPyANCg0KVGhhbmsgeW91Lg0KDQotQWFyb24N
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFJvc3MgQnVydG9uIDxyb3NzLmJ1
cnRvbkBpbnRlbC5jb20+IA0KU2VudDogRnJpZGF5LCBOb3ZlbWJlciAxLCAyMDE5IDEyOjUyIFBN
DQpUbzogQWFyb24gU29sb2NoZWsgPGFhcm9uLnNvbG9jaGVrQHNyaS5jb20+OyB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSB2aXN1YWwgc3R1ZGlvIGNvZGUgcGFj
a2FnZXMgb3IgYnVpbGRpbmcgaW5zdHJ1Y3Rpb25zPw0KDQpPbiAwMS8xMS8yMDE5IDE2OjM1LCBB
YXJvbiBTb2xvY2hlayB3cm90ZToNCj4gSSB3b3VsZCBsaWtlIHRvIGdldCB2aXN1YWwgc3R1ZGlv
IGNvZGUgb24gbXkgTlhQIGkuTVg4LiBJZiBzb21lb25lIGlzIA0KPiBhd2FyZSBvZiBhIGFhcmNo
NjQgcnBtIG9mIGl0LCB0aGF0IHdvdWxkIGJlIHRoZSBlYXNpZXN0LiANCj4gQWx0ZXJuYXRpdmVs
eSwgaWYgYW55b25lIGtub3dzIGhvdyB0byBidWlsZCBpdCB1c2luZyBiaXRiYWtlLCBJIGNhbiBi
dWlsZCBpdCBteXNlbGYuDQoNCldlbGwgTWljcm9zb2Z0IG9ubHkgbWFrZSB4ODYgYmluYXJpZXMg
YXZhaWxhYmxlOg0KDQpodHRwczovL2djYzAyLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2su
Y29tLz91cmw9aHR0cHMlM0ElMkYlMkZjb2RlLnZpc3VhbHN0dWRpby5jb20lMkYlMjNhbHQtZG93
bmxvYWRzJmFtcDtkYXRhPTAxJTdDMDElN0NhYXJvbi5zb2xvY2hlayU0MHNyaS5jb20lN0NhOWVj
YzhlY2JmNGU0YWViNmJmMjA4ZDc1ZWViZDE0OCU3QzQwNzc5ZDMzNzljNDQ2MjZiOGJmMTQwYzRk
NWU5MDc1JTdDMSZhbXA7c2RhdGE9bVNXREtSb1N3RWZ5MlNpR0FnT2RjS1p2Y3J2b2ZWUHFyaURu
dTVQZDNiSSUzRCZhbXA7cmVzZXJ2ZWQ9MA0KDQpTbyB5b3UnbGwgaGF2ZSB0byBmb2xsb3cgdGhl
IGluc3RydWN0aW9ucyBhdA0KaHR0cHM6Ly9nY2MwMi5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRs
b29rLmNvbS8/dXJsPWh0dHBzJTNBJTJGJTJGZ2l0aHViLmNvbSUyRk1pY3Jvc29mdCUyRnZzY29k
ZSUyRndpa2klMkZIb3ctdG8tQ29udHJpYnV0ZSUyM2J1aWxkLWFuZC1ydW4mYW1wO2RhdGE9MDEl
N0MwMSU3Q2Fhcm9uLnNvbG9jaGVrJTQwc3JpLmNvbSU3Q2E5ZWNjOGVjYmY0ZTRhZWI2YmYyMDhk
NzVlZWJkMTQ4JTdDNDA3NzlkMzM3OWM0NDYyNmI4YmYxNDBjNGQ1ZTkwNzUlN0MxJmFtcDtzZGF0
YT0zV0h1V051OW5nUCUyRmJ5bWl0MVVnbnVCYXdPMWIxMjNGMUxkd1R1SG90MFUlM0QmYW1wO3Jl
c2VydmVkPTANCg0KVGhleSB1c2UgWWFybiwgc28geW91J2xsIGhhdmUgdG8gcGFja2FnZSB0aGF0
IGZpcnN0Lg0KDQpDb21tZW50cyBsaWtlDQpodHRwczovL2djYzAyLnNhZmVsaW5rcy5wcm90ZWN0
aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZnaXRodWIuY29tJTJGbWljcm9zb2Z0
JTJGdnNjb2RlJTJGaXNzdWVzJTJGNjQ0MiUyM2lzc3VlY29tbWVudC01MDk2MDUyOTImYW1wO2Rh
dGE9MDElN0MwMSU3Q2Fhcm9uLnNvbG9jaGVrJTQwc3JpLmNvbSU3Q2E5ZWNjOGVjYmY0ZTRhZWI2
YmYyMDhkNzVlZWJkMTQ4JTdDNDA3NzlkMzM3OWM0NDYyNmI4YmYxNDBjNGQ1ZTkwNzUlN0MxJmFt
cDtzZGF0YT1GMFhYOWIlMkZBRFdqUEpiZWlzJTJGZ0lseVJ1bkhiYjR6cGo2TXczYWMxQ3MlMkZ3
JTNEJmFtcDtyZXNlcnZlZD0wDQpvbiB0aGUgYnVnIGFza2luZyBmb3IgUlBpIHN1cHBvcnQgaXNu
J3QgZXhhY3RseSBlbmNvdXJhZ2luZyB0aG91Z2guDQoNClJvc3MNCg==

