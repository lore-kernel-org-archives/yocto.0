Return-Path: <prvs=7053f1e62a=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2880EE00D48; Thu, 30 May 2019 10:01:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [148.163.158.57 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
X-Greylist: delayed 1659 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 May 2019 10:01:53 PDT
Received: from mx0b-00010702.pphosted.com (mx0b-00010702.pphosted.com
	[148.163.158.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 335F1E00BAA
	for <yocto@yoctoproject.org>; Thu, 30 May 2019 10:01:52 -0700 (PDT)
Received: from pps.filterd (m0098778.ppops.net [127.0.0.1])
	by mx0b-00010702.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x4UGXrwE019637; Thu, 30 May 2019 11:34:10 -0500
Received: from nam01-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam01lp2053.outbound.protection.outlook.com [104.47.33.53])
	by mx0b-00010702.pphosted.com with ESMTP id 2stcjq110x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Thu, 30 May 2019 11:34:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-nio365-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=SONaFjlYHZ20KZLT4pwiF3dmOnpiZbRI9Z12itrvfP4=;
	b=NsyB1Ucn/LUG5yYH7irBuGRhGcldHHF2Zhn5Wmhx4XUmyaM1SfkTQjEt880xNxgqY1Ayvf/nXjDSBVfhN7uu+nEBfU1j5G0O90qSemGsHwNkHbtwISvqOFgxQ1vBh+JM6ZEk51idUrPWEtgRaX4y7P3knQCIF1VN99VGZF1zdtU=
Received: from SN6PR04MB4221.namprd04.prod.outlook.com (52.135.71.147) by
	SN6PR04MB4222.namprd04.prod.outlook.com (52.135.71.148) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1922.17; Thu, 30 May 2019 16:34:09 +0000
Received: from SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::70d5:e6a1:16e0:110a]) by
	SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::70d5:e6a1:16e0:110a%5]) with mapi id 15.20.1922.021;
	Thu, 30 May 2019 16:34:09 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>, Josh Deweese
	<JDeWeese@hennypenny.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [EXTERNAL] [opkg-devel] [opkg-utils PATCH] Makefile: fixed
	for-loop in install receipe
Thread-Index: AQHVFlBkr2q7z6FWJUC/mFBPfyj2VqaD3l+A
Date: Thu, 30 May 2019 16:34:09 +0000
Message-ID: <002cfbf2-3c92-7994-d99a-01287bff26dd@ni.com>
References: <1559156195-16281-1-git-send-email-jdeweese@hennypenny.com>
In-Reply-To: <1559156195-16281-1-git-send-email-jdeweese@hennypenny.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN4PR0401CA0028.namprd04.prod.outlook.com
	(2603:10b6:803:2a::14) To SN6PR04MB4221.namprd04.prod.outlook.com
	(2603:10b6:805:30::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.198]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba69eba3-abc6-4fdc-e250-08d6e51ca3a8
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:SN6PR04MB4222; 
x-ms-traffictypediagnostic: SN6PR04MB4222:
x-ms-exchange-purlcount: 6
x-microsoft-antispam-prvs: <SN6PR04MB42220AA5BD2C4C16D6DD565386180@SN6PR04MB4222.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:446;
x-forefront-prvs: 00531FAC2C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(376002)(346002)(366004)(39860400002)(136003)(189003)(199004)(51914003)(71200400001)(66946007)(186003)(966005)(110136005)(6436002)(66066001)(25786009)(6512007)(31696002)(14444005)(256004)(66556008)(66476007)(6306002)(2501003)(31686004)(6486002)(64756008)(73956011)(53936002)(66446008)(478600001)(36756003)(316002)(52116002)(229853002)(68736007)(53386004)(99286004)(8676002)(53546011)(71190400001)(14454004)(6246003)(76176011)(386003)(81166006)(8936002)(81156014)(305945005)(11346002)(476003)(2616005)(446003)(26005)(102836004)(486006)(7736002)(3846002)(6506007)(5660300002)(6116002)(2906002)(86362001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4222;
	H:SN6PR04MB4221.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: qOh72wyfodxq9jDx7BcAchveU1dd4fIKVzv5t2PJXna+J7STHNYU4wymsOIWcXJZgM4qi/c8oONmM2ip+Wzd5i/P6W8681EiHL2zSGnX00WbU4IjTTulQ6OhZcPrvnZzLUfEzGWiI/YMQxC7UsajJF9yRSYgmcwYQBj3tH4c2fizqhrGFpdPKOvctNNuFQnWyff0P6vDiXIjPPvXh8TAXW2GZdG1bHaOtnza7gLQEPapcsJbcAzn/Lhy8s7C3MXf/SLvz0o+P5QbQ8sb6NRz2NlDy9dYNssnd7LDi2sPjjpHoAZWLbg+/ncwbzZIvC8guXbo2J1DSmAQa4gVe4jSVx+oxH6+EvhEhFVknFTx2KgK0wBWtqGcG+DeVH9Qa5vKq/sO8QRynqRRSO0qv/+Gqk6PFfayeByAqhygTHq0gTs=
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba69eba3-abc6-4fdc-e250-08d6e51ca3a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2019 16:34:09.0671 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: alejandro.delcastillo@ni.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4222
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-05-30_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1810050000 definitions=main-1905300117
Subject: Re: [opkg-devel] [opkg-utils PATCH] Makefile: fixed for-loop in install receipe
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
X-List-Received-Date: Thu, 30 May 2019 17:01:54 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <842E52C4BC41514C88E6C44BF30CD57F@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

aW5kZWVkLCB0aGFua3MgZm9yIHRoZSBmaXghDQoNCm1lcmdlZA0KDQpPbiA1LzI5LzE5IDE6NTcg
UE0sIEpvc2ggRGV3ZWVzZSB3cm90ZToNCj4gVGhlIGluc3RhbGwgcmVjZWlwZSB3b3VsZCBoYXZl
IGNvcGllZCBhbGwgdGhlIG1hbnBhZ2VzIHRvIGVhY2ggb2YgdGhlDQo+IHNlY3Rpb24gZm9sZGVy
cy4gVGhpcyBjaGFuZ2Ugd2lsbCBkbyB3aGF0IEkgYmVsaWV2ZSB0aGUgb3JpZ2luYWwNCj4gYXV0
aG9yIGhhZCBpbnRlbmRlZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvc2h1YSBEZVdlZXNlIDxq
ZGV3ZWVzZUBoZW5ueXBlbm55LmNvbT4NCj4gLS0tDQo+IE1ha2VmaWxlIHwgMiArLQ0KPiAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1n
aXQgYS9NYWtlZmlsZSBiL01ha2VmaWxlDQo+IGluZGV4IDY5YTFjNWEuLjgxN2E4YzEgMTAwNjQ0
DQo+IC0tLSBhL01ha2VmaWxlDQo+ICsrKyBiL01ha2VmaWxlDQo+IEBAIC0yMyw3ICsyMyw3IEBA
IGluc3RhbGw6IGFsbA0KPiBmb3IgbSBpbiAkKE1BTlBBR0VTKTsgXA0KPiBkbyBcDQo+IGluc3Rh
bGwgLWQgJChERVNURElSKSQobWFuZGlyKS9tYW4kJHttIyMqLn07IFwNCj4gLSBpbnN0YWxsIC1t
IDY0NCAkKE1BTlBBR0VTKSAkKERFU1RESVIpJChtYW5kaXIpL21hbiQke20jIyoufTsgXA0KPiAr
IGluc3RhbGwgLW0gNjQ0ICIkJG0iICQoREVTVERJUikkKG1hbmRpcikvbWFuJCR7bSMjKi59OyBc
DQo+IGRvbmUNCj4gDQo+IC5QSE9OWTogaW5zdGFsbCBhbGwNCj4gLS0gDQo+IDIuNy40DQo+IA0K
PiANCj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IFRoaXMgZW1haWwgaGFzIGJlZW4gc2Nhbm5lZCBmb3Ig
ZW1haWwgcmVsYXRlZCB0aHJlYXRzIGFuZCBkZWxpdmVyZWQgDQo+IHNhZmVseSBieSBNaW1lY2Fz
dC4NCj4gRm9yIG1vcmUgaW5mb3JtYXRpb24gcGxlYXNlIHZpc2l0IGh0dHA6Ly93d3cubWltZWNh
c3QuY29tIA0KPiA8aHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91PWh0
dHAtM0FfX3d3dy5taW1lY2FzdC5jb20mZD1Ed01GYVEmYz1JXzBZd29LeTd6NUxNVFZkeU82WUNp
RTJ1ekkxampaWnVJUGVsY1NqaXhBJnI9d05jckwyYWtSbjZqZnhoSGFLYXZVckpCX0M5SkFNWHR5
bmpMZDhaemdYUSZtPTRDcFM2RkpjOE0yMk5nZ2NFUG9ieGJkR01nVnFTdTJDaWRwM1Z1NVR2V2cm
cz01TTMxMlBnb1l5bFdkQkZsTGdLSm9KUThmMEczd3lJTFB1NGdhbzdzUlRNJmU9PiANCj4gDQo+
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQ0KPiANCj4gLS0gDQo+IFlvdSByZWNlaXZlZCB0aGlzIG1lc3NhZ2Ug
YmVjYXVzZSB5b3UgYXJlIHN1YnNjcmliZWQgdG8gdGhlIEdvb2dsZSANCj4gR3JvdXBzICJvcGtn
LWRldmVsIiBncm91cC4NCj4gVG8gdW5zdWJzY3JpYmUgZnJvbSB0aGlzIGdyb3VwIGFuZCBzdG9w
IHJlY2VpdmluZyBlbWFpbHMgZnJvbSBpdCwgc2VuZCANCj4gYW4gZW1haWwgdG8gb3BrZy1kZXZl
bCt1bnN1YnNjcmliZUBnb29nbGVncm91cHMuY29tIA0KPiA8bWFpbHRvOm9wa2ctZGV2ZWwrdW5z
dWJzY3JpYmVAZ29vZ2xlZ3JvdXBzLmNvbT4uDQo+IFRvIHZpZXcgdGhpcyBkaXNjdXNzaW9uIG9u
IHRoZSB3ZWIgdmlzaXQgDQo+IGh0dHBzOi8vZ3JvdXBzLmdvb2dsZS5jb20vZC9tc2dpZC9vcGtn
LWRldmVsLzE1NTkxNTYxOTUtMTYyODEtMS1naXQtc2VuZC1lbWFpbC1qZGV3ZWVzZSU0MGhlbm55
cGVubnkuY29tIA0KPiA8aHR0cHM6Ly91cmxkZWZlbnNlLnByb29mcG9pbnQuY29tL3YyL3VybD91
PWh0dHBzLTNBX19ncm91cHMuZ29vZ2xlLmNvbV9kX21zZ2lkX29wa2ctMkRkZXZlbF8xNTU5MTU2
MTk1LTJEMTYyODEtMkQxLTJEZ2l0LTJEc2VuZC0yRGVtYWlsLTJEamRld2Vlc2UtMjU0MGhlbm55
cGVubnkuY29tLTNGdXRtLTVGbWVkaXVtLTNEZW1haWwtMjZ1dG0tNUZzb3VyY2UtM0Rmb290ZXIm
ZD1Ed01GYVEmYz1JXzBZd29LeTd6NUxNVFZkeU82WUNpRTJ1ekkxampaWnVJUGVsY1NqaXhBJnI9
d05jckwyYWtSbjZqZnhoSGFLYXZVckpCX0M5SkFNWHR5bmpMZDhaemdYUSZtPTRDcFM2RkpjOE0y
Mk5nZ2NFUG9ieGJkR01nVnFTdTJDaWRwM1Z1NVR2V2cmcz1RZVhNNXRKcWV3UFVqc044RFI0dWlz
WHdKbTBXUmxGMFlYbG1qTHFlTGZRJmU9Pi4NCj4gRm9yIG1vcmUgb3B0aW9ucywgdmlzaXQgaHR0
cHM6Ly9ncm91cHMuZ29vZ2xlLmNvbS9kL29wdG91dCANCj4gPGh0dHBzOi8vdXJsZGVmZW5zZS5w
cm9vZnBvaW50LmNvbS92Mi91cmw/dT1odHRwcy0zQV9fZ3JvdXBzLmdvb2dsZS5jb21fZF9vcHRv
dXQmZD1Ed01GYVEmYz1JXzBZd29LeTd6NUxNVFZkeU82WUNpRTJ1ekkxampaWnVJUGVsY1NqaXhB
JnI9d05jckwyYWtSbjZqZnhoSGFLYXZVckpCX0M5SkFNWHR5bmpMZDhaemdYUSZtPTRDcFM2Rkpj
OE0yMk5nZ2NFUG9ieGJkR01nVnFTdTJDaWRwM1Z1NVR2V2cmcz1jUUlIaUFJUFdzczEyOHNXcnN3
b1Bpb0NOZ041b1hEMVVWN3JRU2xtbjRvJmU9Pi4NCg0KLS0gDQpDaGVlcnMsDQoNCkFsZWphbmRy
bw0K

