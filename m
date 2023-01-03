Return-Path: <janne.kiiskila@izumanetworks.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3279C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 15:04:01 +0000 (UTC)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.82])
 by mx.groups.io with SMTP id smtpd.web10.65771.1672758240666942331
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Jan 2023 07:04:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: izumanetworks.com, ip: 40.107.243.82, mailfrom: janne.kiiskila@izumanetworks.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MVU/c6A7wC0qtCEmzEsmRoJU8x3B2mDKLFr985VejSBeHcuJKBOAfu46RphnRp0aAEKlSIxNQDWTfevOh26RQDSOamWE0AqAO+idrSaeFGl4GgJmddqa5b+vMRrFCr1ja4x/deo1npnpwfiNcauHBGFEAjZE+1fIJDzF91VIJlow6dhC+KJ1gW7Hvv2cvKAuBBOTbBsVMPtXptiXMLq+sAaBb5rwUQTdzbJ08Ix4lXM8aEf/3hFYrv7ixhjTRwqV5k3pbV3vx6o5eVF9azsZWG81r7KoxUNnwY5oOx8XZj9i4IxDNwMUYtCpSnRZptG5+OjynYh1z868nWsj0AFDGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9p2QiJHPQk7FH+4xuQTT56PwkpewPtdNXV09fFbTgk0=;
 b=oMa6wp44ruac1TeaeGWAm4pzYRhjeqgftpBGM/EMUKqI+fAgCuCCL2AUU+MQpI4UWvuMgxMEEXpaVEElemfbE3+8YmIz3oVEmEzKlbYqtpkfd6BqSUAJ/bs2T/umhkiRHikAVAe2doJsuPbDn3KlOZF4DHLuK/4EhHz40CeJhHeG6OcraYt51uTjrTIkkwN9P1Q3Cq2keTlA+Fjw3+IWHhQn2Zf1ntUgccg97e2wU4iqkyogKWOdbEzFhxJAtxiscy78ZXe5DYQJMTTjtqNwPnaUR6qYPykt1PE3dGIVjTqBMXbL+wf2vW21pbQV9ATCkqRAJ8lnnkET4x4xpCcXgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=izumanetworks.com; dmarc=pass action=none
 header.from=izumanetworks.com; dkim=pass header.d=izumanetworks.com; arc=none
Received: from BN7PR14MB2420.namprd14.prod.outlook.com (2603:10b6:406:c2::28)
 by CO6PR14MB4370.namprd14.prod.outlook.com (2603:10b6:5:346::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.9; Tue, 3 Jan
 2023 15:03:58 +0000
Received: from BN7PR14MB2420.namprd14.prod.outlook.com
 ([fe80::9f56:68c1:f932:c19]) by BN7PR14MB2420.namprd14.prod.outlook.com
 ([fe80::9f56:68c1:f932:c19%3]) with mapi id 15.20.5986.009; Tue, 3 Jan 2023
 15:03:58 +0000
From: Janne Kiiskila <janne.kiiskila@izumanetworks.com>
To: "fntoth@gmail.com" <fntoth@gmail.com>, Quentin Schulz
	<quentin.schulz@theobroma-systems.com>, Alexander Kanavin
	<alex.kanavin@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] bitbake controlling memory use
Thread-Topic: [yocto] bitbake controlling memory use
Thread-Index: AQHZH33bN1/1JVkYGEizJTZ18fcIX66MvXoAgAADDYCAAAHkgIAAAYEAgAAFZNA=
Date: Tue, 3 Jan 2023 15:03:58 +0000
Message-ID: 
 <BN7PR14MB2420DC3CA660334614825E4A85F49@BN7PR14MB2420.namprd14.prod.outlook.com>
References: <5a37c855-943a-7ae2-b481-e030ebb69de8@gmail.com>
 <10280.1623316977582274550@lists.yoctoproject.org>
 <829bf26e-b882-d479-aa0c-f22998071fa7@windriver.com>
 <a760fbd1-f76c-598f-a802-f4e6207f9720@gmail.com>
 <43af6b3b-a2c5-b937-93a4-fec8ab2e1fcd@gmail.com>
 <26729316-8d42-3ec9-d6b5-f77002a85c74@windriver.com>
 <89e0c314-86ca-6fb4-642c-7493116b467f@gmail.com>
 <CANNYZj80qvYk5=OXDhGr78=pmzsBdxD1EbHDNrfKDf9_gUQyPA@mail.gmail.com>
 <3ffc9740-b8a5-358b-8e56-4103d4d0f0cb@gmail.com>
 <e36d4afd-235a-a2f2-7272-9d9b49c02698@theobroma-systems.com>
 <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
In-Reply-To: <41754798-a1f2-05a7-93d8-799907ed988b@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=izumanetworks.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN7PR14MB2420:EE_|CO6PR14MB4370:EE_
x-ms-office365-filtering-correlation-id: e60f285d-5b1b-4a3e-c33a-08daed9bbda7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 +nRhXYSg6MXSzBjxysUReQy7OXnxzymxx29cQzEuDdS2JJDqTgY3DLMD+Mh/UvjnBhtSqZVvuCwcxWYQZYzk6GGzRqTLFpoRxu25OC7nucBJ7PqTDevbTARI6C8ojVwrsO6+kjanx62q0tbVw6RJs17VGA5XeGTkXIEv+6+a6bqUEZjWwNNI6zIWrpVlptL8sm7lQUH+yL/pAqoSweDFJqM99OD/r8kciZCC3J7Olb9d8dk6LojSSb1OTdPD1AgE/yZ9pyCSQbKEZK8TJvnAAgIf49J1hGW2RkfnAmrWQ3JJUZG5v56MQwUbsn5JcUNc3Hr4yrRXIOjFfjeYAQ/NvCpq7roYSZtyE1H7/vhNzChAW3MA3VGQxKissZhvNROyRGoKQXOyEJUY7EEmSBQUNJtka0PB965yxAE1nTVSAh90OYRwdku7f2CkNvAJKf2rTZLIDerTKN4KuMmpSVSQ3G/XEP/bQDnjquWadkQtDymNO5Ugt9YpE/iBbJAu2N0kj4SfY/6LbN+/rDZ6NpFd+P4zNBMXBa5kWJ7Qk1ts0Mbns2/y+1cqAbS6T3oHmGQGQ5ozrQ7ilBUuQu+Hts9RV/XBsmDDRTLxwBHVAQUv9Zw2k6aczxjkF28MdT9y3q5RvFGL6MZQHCF7XXDQiorh1FcX7s7GODSKtSRDOzUTs8ls1LaSUvyIsbKUoMmIUz9ZPsvwVZrraJ7xrTdYd+ubob6HYxIVmeikiRtRSMiglWq2Adt4sM9LY/dJb1eqaY2S
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR14MB2420.namprd14.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(396003)(136003)(39830400003)(366004)(451199015)(83380400001)(55016003)(86362001)(33656002)(38070700005)(38100700002)(122000001)(44832011)(110136005)(316002)(2906002)(64756008)(52536014)(41300700001)(66446008)(5660300002)(66476007)(66556008)(66946007)(4326008)(76116006)(8676002)(8936002)(186003)(53546011)(478600001)(9686003)(966005)(6506007)(7696005)(71200400001)(22166006);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?b0Fhb00yTEM0d0V4ZXh2ZTR6d3hIUWV2SW9CTXlrNkRPalFJdTIvWTVVb2RG?=
 =?utf-8?B?Nks0WHE1aWF2eG4rSWNZWXIyNklrRkpwWmhvbTh5aFdKTm1YbHMxK2VSdjJ1?=
 =?utf-8?B?TlpQN0FqMHkyQ0w5L1JZa1Q4RlBHdE51clFiMDg4UFBEbzFBUVNsMnYvSXpr?=
 =?utf-8?B?eFd3NUIzVWVJQkpBUmdtcFhOVm5NVDZsaklMS2RqMU5kVHoyaFBtNjlHVlN3?=
 =?utf-8?B?a01xamdxUGlrRTcxdjdadTMwcEFnZmovYjF2ajhhRnFBS0VlelVQTTczQWgx?=
 =?utf-8?B?UlBXb0hxT2lCSGFZbHdkZjBIQjZ2S25DQkxWS2IvTjU3UWU3VHp3dWsvRGxS?=
 =?utf-8?B?UE1oMW9PWnJJZGpsaG1heC9iOUs0Wk9HYlBrcXozRTI4TXVVSWRmL0pTcVpk?=
 =?utf-8?B?NHZET3l4WU9OZHhpSnk3Y1c2TEJkK0tVN3c1bTB3TlJaRFdIS0hzOTJpaWJl?=
 =?utf-8?B?K2xub2IzMG5jSi9lN0szazY0ZnJtcFNZekJVSlkxVFRNTmRMK0J1OWFvVEJy?=
 =?utf-8?B?MGJYQi8xY2JKTTJNTDhzNzZiVHRLZ3dMNTRMRXppQW5zVnA5S1JaNmJSZE5o?=
 =?utf-8?B?OFRaMWdRRk04SG5BU0tDeU5zWDA2UFJaNjkzMlJLQXQyb3ZiSzdWRVY0MFBa?=
 =?utf-8?B?ZWJxRldONi9XWjRmQk1sZG03SHFNQVFwOXd2aEE5REVPbDE3TnVuZlFDb0xB?=
 =?utf-8?B?RU1KaTZUSVdIb1pkcTJaczIrai9yNEM1RC9JL25zL2RNWGdxOVhZdi9qQ2Zk?=
 =?utf-8?B?SzlFTkY2NGcyV1hwcGU3WUpXR1hSKytWL3cwd2NlL1R5N2RtUTRhdEdrZU4r?=
 =?utf-8?B?cTFONnF2bytlY2pKaUs3eUdvVTlZTXhSMjVDRFBrWWF4OEhZTmtRMzhLaWV2?=
 =?utf-8?B?RnF0MzVWZWxWbDRCREFYb0xZVHFKakppTi9kbHFETnJhcWJGVHVxWlUxQmNq?=
 =?utf-8?B?U3luTWUxajY1RjVLU3QvZFhsdVpneGYxeTI4VVM3UHJMQ1d5Z1h3bUdkTzVB?=
 =?utf-8?B?blhHSFBVMnJ4K1Rwb3Bwb1Qyd2pkNi8ycE44SmtuaFZiSFpkYndiVU12eUVw?=
 =?utf-8?B?bkVJVkJnclJVUkhBcjlyOEdoT05pVlR3eVRIa3NUa28vZ3g2eWlkdnlCVzdH?=
 =?utf-8?B?d1hPWFVMZ0VZc3ZIRjRYMkZsT2lGYVpsQWlOYkhFWlBSOFhmMlBuOXJWbDJC?=
 =?utf-8?B?Ung3TzY0clBMbExDY2x4YWR1bTYzTENKdlU0N3FwT1FHZW9GYlJhTExYamZU?=
 =?utf-8?B?SHlOZFVBOXg5L0VxS1hPZkZLbjZBR0pucllLZmwzNWdNMEdBRkFjYW1PTE5Q?=
 =?utf-8?B?c1c5RS92L1BtU0NJNTdVVi9aM1BvditNQU16K2lEREptOEJCUlNlZXdOdjNt?=
 =?utf-8?B?M3d3RGtLZnVjVy9HR0xKNFh6OG5TV2k2ZEZmZGx6My9jaHVIY000RWZseEtv?=
 =?utf-8?B?TENNS1VFR3prNmRuTUx4dnY1UXVrNENwb1ZmSVZrNlloazB3MUorai9WM1dL?=
 =?utf-8?B?WUZGeGNzcjlITWFxa1lISDVycUlXR2FvWmtQbGJPcFRJWUN0eE5xRmFkZ0dW?=
 =?utf-8?B?bWlRVGI3ZjhqY2JJMVVPRGJiVU5pK1NPSW1VWlpvODk4SVE2bW83UkJaTVhR?=
 =?utf-8?B?RjFyM0JlT3hYWGFqbXpIekhBa2RVQmQvMWdYM0pQbGRocGN3WU9qd0ljQmhD?=
 =?utf-8?B?N3ExU0huS24vcnltS1FSbnozUmplMFBHTXBWRjUvcUVVSG55YnJTWStTK2lE?=
 =?utf-8?B?MGphS1BGanZNM3RtMmFVL2xmcVBCdGs5bTVFQ3hVT3A4SlJ1YWdYRThuRW42?=
 =?utf-8?B?NmY2VkVMOHlJdXduampJZlN3YzlBejhocFVqVDhiT0RoeWNYQzdWOUhCams1?=
 =?utf-8?B?MGlmRlJNZUQ1aVdLQ0xJWGlnNzYxamwzMjZDemRBS0tuRXVmeXF6RWh6OUcr?=
 =?utf-8?B?T3E3TU9Ib1RDZzRhb3NPZXd6S3JOeEdTWXRYRzZmUTZ1VXFsL1FlV2FuUkFj?=
 =?utf-8?B?cC9McWw1dzNuRSs5M2JIaTBLd2RPc0lsQ0RueDd5OXU5Rks1c2VsclI5Rncz?=
 =?utf-8?B?Q1ZtcFc0QXQ4Yjc2Q09mTFNhYUtXNjQ2MTh5dUtUd21UL3pmdmJmVVB5S2F4?=
 =?utf-8?B?NWExQ05oWGFzM3NWR0tlNlJKWVpvZ0V4S1QxdU9kYkxUUytyOXpZMzBRZm5Y?=
 =?utf-8?B?YlZGT1ZaOFdjVExHbkd3QUhlNWN2RllxOTFkckdtTDJ1alJmaW5YNDJXOWhY?=
 =?utf-8?Q?xPpDppDg/Eb3nFkFwq2sfHPb0FmNDRYjhnFjWggscM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-OriginatorOrg: izumanetworks.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN7PR14MB2420.namprd14.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e60f285d-5b1b-4a3e-c33a-08daed9bbda7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jan 2023 15:03:58.3636
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b75ac1ab-4ecf-4491-a62d-9087b0c0cf30
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +zRH9BkAmTbYIiQU7AaYpbzP/oNsi1Q3HSR6irJHaD0yMjHr1812XcM4bMLTtqqNEkGyQ3hXCWMTlxmRN3Qm4xLVy/zab3Dms3dE+1J/O65hBmvYAeYFEmOCRtlziI4r
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO6PR14MB4370
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 15:04:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58902

SGVpLA0KDQpJcyBub3QgdGhlIGVhc2llc3Qgc29sdXRpb24gdG8gYnVpbGQgdGhlIGFjdHVhbCBm
dWxsIGJ1aWxkIGluIHN0ZXBzLCByYXRoZXIgdGhhbiBidWlsZCB0aGUgd2hvbGUgdGhpbmc/DQpT
bywgaW5zdGVhZCBvZiBkb2luZyBhIA0KDQpmdWxsIGJpdGJha2UgPGltYWdlPiANCg0KRG8NCg0K
Yml0YmFrZSBub2RlanMNCmJpdGJha2UgYmludXRpbHMNCmJpdGJha2UgcnVzdCAoaWYgeW91IGhh
cHBlbiB0byBuZWVkIGl0KQ0KDQphbmQgb25seSBhZnRlciB0aGF0IGRvDQoNCmJpdGJha2UgPGlt
YWdlPg0KDQpUaGF0IHdheSB5b3UgY2FuIGNvbnRyb2wgdGhlIG1lbW9yeSBsb2FkIGFuZCBidWls
ZCBpdCBwaWVjZW1lYWwgdG8gYXZvaWQgb3V0LW9mLW1lbW9yeSBzaXR1YXRpb25zLg0KDQpGb3Ig
Y2hlYXBuZXNzIG9mIG1lbW9yeSAtIGl0J3Mgbm90IGFsd2F5cyB0aGF0IHN0cmFpZ2h0IGZvcndh
cmQsDQphKSBzb21lIGNsb3VkIGJ1aWxkIG1hY2hpbmVzIG1pZ2h0IGdvIGluc2FuZWx5IHVwIGlu
IHByaWNlLCBpZiB5b3UgYWRkIG1lbW9yeSAoaXQgdXN1YWxseSB0aGVuIGFkZHMgYWxzbyBjb3Jl
cykgT1INCmIpIHNvbWUgbGFwdG9wcyBldGMuIG1pZ2h0IHNpbXBseSBub3QgaGF2ZSBhbnkgbWVt
b3J5IHNsb3RzIGF2YWlsYWJsZSwgc28geW91IGNhbid0IGV4cGFuZCBldmVuIGlmIHlvdSB3YW50
Lg0KDQpCZXN0IFJlZ2FyZHMsDQoNCg0KSmFubmUgS2lpc2tpbMOkDQoNCg0KLS0tLS1PcmlnaW5h
bCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBGZXJyeSBUb3RoIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnDQpTZW50OiB0aWlzdGFpIDMuIHRhbW1pa3V1dGEgMjAyMyAxNi40
MQ0KVG86IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5j
b20+OyBBbGV4YW5kZXIgS2FuYXZpbiA8YWxleC5rYW5hdmluQGdtYWlsLmNvbT4NCkNjOiB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBiaXRiYWtlIGNv
bnRyb2xsaW5nIG1lbW9yeSB1c2UNCg0KSGkgUXVlbnRpbiwNCg0KT3AgMDMtMDEtMjAyMyBvbSAx
NTozNiBzY2hyZWVmIFF1ZW50aW4gU2NodWx6Og0KPiBIaSBGZXJyeSwNCj4NCj4gT24gMS8zLzIz
IDE1OjI5LCBGZXJyeSBUb3RoIHdyb3RlOg0KPj4gSGkgQWxleCwNCj4+DQo+PiBPcCAwMy0wMS0y
MDIzIG9tIDE1OjE4IHNjaHJlZWYgQWxleGFuZGVyIEthbmF2aW46DQo+Pj4gSSBoYXZlIHRvIG5v
dGUgdGhhdCBldmVuIHRoZSBtb3N0IGV4cGVuc2l2ZSAxNiBHYiBSQU0gbW9kdWxlIGlzIGxlc3Mg
DQo+Pj4gdGhhbiAxMDAgRXVybywgYW5kIGNhbiBiZSBvYnRhaW5lZCBmb3IgaGFsZiB0aGF0IG11
Y2guIFN1cmVseSB5b3UgDQo+Pj4gdmFsdWUgeW91ciB0aW1lIG1vcmUgdGhhbiB0aGF0Pw0KPj4N
Cj4+IE9mIGNvdXJzZS4gQW5kIGlmIEkgZGlkbid0IEkgY291bGQgcmVkdWNlIHRoZSBudW1iZXIg
b2YgYFBBUkFMTEVMX01BS0VgLg0KPj4NCj4+IEJ1dCBJIGhhdmUgYWxzbyBzZWVuIGJpdGJha2Ug
YXR0ZW1wdGluZyB0byBidWlsZCBub2RlanMsIA0KPj4gbm9kZWpzLW5hdGl2ZSBhbmQgYmludXRp
bHMgaW4gcGFyYWxsZWwuDQo+Pg0KPj4gSSB0aGluayBieSBkZWZhdWx0IHRoZXJlIGFyZSA0IHRh
c2tzLCB3aXRoIDE2IHRocmVhZHMsIGVhY2ggY291bGQgDQo+PiByZXF1aXJlIDFHQiBSQU0uIFdv
dWxkIHlvdSBzYXksIGluIHN1Y2ggYSBjYXNlIFlvY3RvIHJlcXVpcmVzIDY0R0IgUkFNPw0KPj4N
Cj4+IEFuZCB3aXRoIGluY3JlYXNpbmcgI2NvcmVzIGl0IGdldHMgd29yc2UuDQo+Pg0KPj4gTm90
IHRoYXQgaXQgaXMgdG9vIGV4cGVuc2l2ZSB0byB0aHJvdyBoYXJkd2FyZSBhdCBpdCwgYnV0IGl0
IHNlZW1zIHRvIA0KPj4gYmUgYSBmdW5kYW1lbnRhbCBwcm9ibGVtIHRoYXQgSSB3b3VsZCBsaWtl
IHRvIHJlc29sdmUuIEluIG15IHNwYXJlIA0KPj4gdGltZSBvZiBjb3Vyc2UuDQo+Pg0KPg0KPiBK
dXN0IHRvIGFkZCB0aGF0IGJpdGJha2Ugbm93IHN1cHBvcnRzIHByZXNzdXJlIHRocmVzaG9sZHMg
KHNpbmNlIA0KPiBLaXJrc3RvbmUgcmVsZWFzZSBJIGJlbGlldmUpOg0KPiBodHRwczovL2RvY3Mu
eW9jdG9wcm9qZWN0Lm9yZy9iaXRiYWtlL2JpdGJha2UtdXNlci1tYW51YWwvYml0YmFrZS11c2Vy
DQo+IC1tYW51YWwtcmVmLXZhcmlhYmxlcy5odG1sI3Rlcm0tQkJfUFJFU1NVUkVfTUFYX01FTU9S
WQ0KPg0KPiBJZiB5b3VyIHJlY2lwZXMgcHV0IGVub3VnaCBwcmVzc3VyZSBvbiBSQU0gYmVmb3Jl
IG9uZSBvciB0d28gb2YgDQo+IG5vZGVqcywgbm9kZWpzLW5hdGl2ZSBhbmQgYmludXRpbHMgZ2V0
cyBzY2hlZHVsZWQsIGl0IHdvdWxkIHByZXZlbnQgDQo+IHRoYXQuIEhvd2V2ZXIgSSBiZWxpZXZl
IGlmIHRoZSB0aW1pbmcgaXMganVzdCByaWdodCAodW5mb3J0dW5hdGUpIGFuZCANCj4gdGhlcmUn
cyBub3QgZW5vdWdoIHByZXNzdXJlIHdoZW4gYWxsIHRocmVlIHJlY2lwZXMgZG9fY29tcGlsZSBz
dGFydCwgDQo+IHRoZXkgd291bGQgYWxsIHN0YXJ0IGFuZCB5b3Ugd291bGQgaGF2ZSB0aGUgc2Ft
ZSBpc3N1ZS4NCj4NCkV4YWN0bHkNCj4gQ2hlZXJzLA0KPiBRdWVudGluDQo=

