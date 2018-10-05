Return-Path: <prvs=981663fd6f=alejandro.delcastillo@ni.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 512A8E00A0A; Fri,  5 Oct 2018 14:24:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,KHOP_DYNAMIC,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [148.163.156.75 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
X-Greylist: delayed 3205 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Oct 2018 14:24:46 PDT
Received: from mx0b-00010702.pphosted.com (mx0a-00010702.pphosted.com
	[148.163.156.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD12BE0053F
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 14:24:46 -0700 (PDT)
Received: from pps.filterd (m0098781.ppops.net [127.0.0.1])
	by mx0a-00010702.pphosted.com (8.16.0.22/8.16.0.22) with SMTP id
	w95KQYfA014698; Fri, 5 Oct 2018 15:31:10 -0500
Authentication-Results: ppops.net;
	dkim=pass header.d=nio365.onmicrosoft.com header.s=selector1-ni-com
Received: from nam04-bn3-obe.outbound.protection.outlook.com
	(mail-bn3nam04lp0115.outbound.protection.outlook.com
	[216.32.180.115])
	by mx0a-00010702.pphosted.com with ESMTP id 2mx6671tdd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
	Fri, 05 Oct 2018 15:31:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nio365.onmicrosoft.com; s=selector1-ni-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=h/4Xt2yLru0oT8K1HRKA9sClV5HBSHZLlfbY6Q8Hpwc=;
	b=fjtFx3Gcaioaj3Bh8E7CpIZKh3qUMb/uTsih2/uDvaA/EkCL336+nFsNh0T9Yws+yGsjR/clfndlcwCzWhKR6rUlCFIO2yUgOyEnB7hWZuReS23gC2aGozQQG9OeEHSNfH6d6QgyinnL9zqPWe4WD+u422tn8LlyJ4Whs1XwrAQ=
Received: from SN6PR04MB4221.namprd04.prod.outlook.com (52.135.71.147) by
	SN6PR04MB4909.namprd04.prod.outlook.com (52.135.114.78) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1185.23; Fri, 5 Oct 2018 20:31:07 +0000
Received: from SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::50a8:51df:6522:f81d]) by
	SN6PR04MB4221.namprd04.prod.outlook.com
	([fe80::50a8:51df:6522:f81d%6]) with mapi id 15.20.1207.022;
	Fri, 5 Oct 2018 20:31:07 +0000
From: Alejandro Del Castillo <alejandro.delcastillo@ni.com>
To: "opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>, Mike Crowe
	<mac@mcrowe.com>, "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [opkg-devel] [opkg-utils PATCH] opkg-build: Add support for
	explicit pigz
Thread-Index: AQHUXALSHhH9lvcJE02g79RfheJQKKURHR+A
Date: Fri, 5 Oct 2018 20:31:07 +0000
Message-ID: <ccd19714-2cec-b43f-78de-cfb740df3134@ni.com>
References: <20181004165330.26732-1-mac@mcrowe.com>
In-Reply-To: <20181004165330.26732-1-mac@mcrowe.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BN6PR2001CA0016.namprd20.prod.outlook.com
	(2603:10b6:404:b4::26) To SN6PR04MB4221.namprd04.prod.outlook.com
	(2603:10b6:805:30::19)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [130.164.62.135]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN6PR04MB4909;
	6:GiNk8CoOLw1ZGFv7UztZniQdmW34hABnZ16Zg5CTznUi+g8BmHh6Btx4Tx78KhcHBmYLCfCEd/E49drAcN+AyaSW66gKUDANGg5N+/z/MHjc817wUCAvOUxctnVt9teJ/UVAlwaPYbnfq4AS59rAxAixzAoDiTLm491nzq66y/6iHfBcfPUTFczTLtI7sfWLjfVVdPcTbFpodgXC2ws9ajYpMU7PA52DY+3tyYVMmAm2XIONkt0yIMMVmtabfErQQS+veNrxVm6sBblSdmRSm0th+pO52Lvp2jLV4e2BQYiIXBHOBqOqf0kMm5eyBM6FK31q8fmNKjScXHGihlGAvR+inMrR+NSRGmPdJMh/yrZyGGCHPyjrIuKHXGOJsX7Z9KCVHRvtGhbmx95rGIDXm3YQZ98iFUxM6aIhGgdJv6L7sCJmaxTmCLzgxsaYMXKCd8jpUEyqPw4q/ns9G6CYhw==;
	5:DQIbyAvp8K/+r2WIVqgIRef/jsXas4kgptWjB33vX3mC90tnuxfhyQOrGTFJ1Dl4x0pLVBChYvGCzjSlQBttPXVm689Zr6oG7vrleJ9Y1tOHa/FDlSE9VQan0OGPZbE3IywJaugwixVhVUONpDOhroUOq//Zj7DN1Iqsy+Uz+1Y=;
	7:oISEjkrFryI4dY9JrDhhpSbDzm7zIUMl1Ed3/bv80lad7nMhPAcx8XYXtXFemQNuRfk4hFvwTppQ1dU3clgktcfW8Kvkib1YY6WjtPSSy0gb8B6au54SAC88vcqT2Ytrtq/301WqHOScqZGaBnvujSVPBrOaaTxRDJW2NaJ/GBJ/YzcmBYcyzhqiTGYGXSEwaValNLM7wQ7LUH5bMcVd+bgV4eD8AzPOlh5m+aDDVIghh5yHV1WfICZe77CEsgp3
x-ms-office365-filtering-correlation-id: f19008e8-f50f-4aa0-6d6a-08d62b0179ff
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:SN6PR04MB4909; 
x-ms-traffictypediagnostic: SN6PR04MB4909:
x-microsoft-antispam-prvs: <SN6PR04MB4909BB8409EF103342387A3886EB0@SN6PR04MB4909.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(3231355)(944501410)(52105095)(93006095)(93001095)(10201501046)(149066)(150057)(6041310)(20161123562045)(20161123560045)(20161123558120)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(201708071742011)(7699051);
	SRVR:SN6PR04MB4909; BCL:0; PCL:0; RULEID:; SRVR:SN6PR04MB4909; 
x-forefront-prvs: 0816F1D86E
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(366004)(136003)(376002)(346002)(39860400002)(189003)(199004)(51914003)(8676002)(86362001)(81166006)(446003)(97736004)(386003)(486006)(6246003)(6116002)(25786009)(7736002)(2906002)(305945005)(71190400001)(2616005)(5250100002)(476003)(186003)(11346002)(26005)(71200400001)(4326008)(2501003)(3846002)(68736007)(31696002)(102836004)(6436002)(53546011)(14444005)(5660300001)(229853002)(6512007)(53936002)(52116002)(6506007)(105586002)(31686004)(316002)(256004)(110136005)(106356001)(99286004)(2900100001)(81156014)(36756003)(8936002)(6486002)(478600001)(14454004)(66066001)(76176011);
	DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR04MB4909;
	H:SN6PR04MB4221.namprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: ni.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: am1Vtiz0hofAL3cwBxrxEncnxz7ADnaYMfiI6Jn12EI14N8hwdPT2PgWuSM/5ZOVgHBMWneUxMgTQhgoe5Gt9S5jgURd7XyRyTZT9SrrZkfl3cPHzVCFCGkE386YvlYLqniPRsgqxjFetdbct8qEpySWri/NEA2yysZrF4rzr0ir9YoAN66DMQFoBpALEng6kyre0FSwdKKpZzntfWpgCzyTCzFBKCr5R6vIhEIjJttXEWyAJUs2MeCP7TyZ//aihybp8zYbYFPu0qEHS8kMZvraAm71pCOCzkH1TvuEaktLIjaNGMboAslEznGBm3x6PRj5IzaRqyMUHtntDdWz+KAQqCdROikhHg2C7SKPmUQ=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: ni.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f19008e8-f50f-4aa0-6d6a-08d62b0179ff
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2018 20:31:07.4847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 87ba1f9a-44cd-43a6-b008-6fdb45a5204e
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR04MB4909
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2018-10-05_10:, , signatures=0
X-Proofpoint-Spam-Details: rule=inbound_policy_notspam policy=inbound_policy
	score=30
	priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0
	bulkscore=0
	spamscore=0 clxscore=1011 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=30 reason=mlx
	scancount=1 engine=8.0.1-1807170000 definitions=main-1810050196
Cc: Mike Crowe <mcrowe@brightsign.biz>
Subject: Re: [opkg-devel] [opkg-utils PATCH] opkg-build: Add support for explicit pigz
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
X-List-Received-Date: Fri, 05 Oct 2018 21:24:47 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <7D3AA06A309F6245A6563754E4E4C238@namprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgTWlrZSwNCg0KVGhhbmtzIGZvciB0aGUgcGF0Y2ghIEp1c3QgbWVyZ2VkIGl0IGludG8gbWFz
dGVyIChJIHVwZGF0ZWQgdGhlIG1hbiBwYWdlIA0KdG8gcmVmbGVjdCB0aGUgbmV3IG9wdGlvbikN
Cg0KDQpPbiAxMC80LzE4IDExOjUzIEFNLCBNaWtlIENyb3dlIHdyb3RlOg0KPiBGcm9tOiBNaWtl
IENyb3dlIDxtY3Jvd2VAYnJpZ2h0c2lnbi5iaXo+DQo+IA0KPiBvZS1jb3JlIGhhcyBzdG9wcGVk
WzFdIGluc3RhbGxpbmcgcGlneiBhcyBnemlwLiBUaGlzIG1lYW5zIHRoYXQgaW4gb3JkZXIgdG8N
Cj4gcGVyc3VhZGUgb3BrZy1idWlsZCB0byB1c2UgcGlneiBpdCBtdXN0IGJlIHNwZWNpZmllZCBl
eHBsaWNpdGx5LiBMZXQncw0KPiB0ZWFjaCBvcGtnLWJ1aWxkIHRvIGRlYWwgd2l0aCBiZWluZyBw
YXNzZWQgcGlneiBhcyBhIGNvbXByZXNzb3IuIFdlIGNhbid0DQo+IGNvbWJpbmUgdGhlIGNoZWNr
IGZvciB3aGV0aGVyIC1UIGlzIHJlcXVpcmVkIGJlY2F1c2Ugb3BrZy1idWlsZCBjYWxscyBib3Ro
DQo+ICRjb21wcmVzc29yIGFuZCBnemlwIGV4cGxpY2l0bHkuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5
OiBNaWtlIENyb3dlIDxtYWNAbWNyb3dlLmNvbT4NCj4gLS0tDQo+ICAgb3BrZy1idWlsZCB8IDYg
KysrKystDQo+ICAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL29wa2ctYnVpbGQgYi9vcGtnLWJ1aWxkDQo+IGluZGV4IDAw
NTBjMmIuLmQ1ZjViOGYgMTAwNzU1DQo+IC0tLSBhL29wa2ctYnVpbGQNCj4gKysrIGIvb3BrZy1i
dWlsZA0KPiBAQCAtMTcwLDcgKzE3MCw3IEBAIGZpDQo+ICAgDQo+ICAgY29tcHJlc3Nvcl9leHQo
KSB7DQo+ICAgICAgIGNhc2UgJDEgaW4NCj4gLQlnemlwKQ0KPiArCWd6aXB8cGlneikNCj4gICAJ
ICAgIGVjaG8gZ3oNCj4gICAJICAgIDs7DQo+ICAgCWJ6aXAyKQ0KPiBAQCAtMjMwLDYgKzIzMCwx
MCBAQCBpZiBnemlwIC0taGVscCAyPiYxIHwgZ3JlcCAtLSAiLVQiID4gL2Rldi9udWxsOyB0aGVu
DQo+ICAgZmkNCj4gICBpZiBbICRjb21wcmVzc29yID0gImd6aXAiIF0gOyB0aGVuDQo+ICAgCWNv
bXByZXNzb3JhcmdzPSR6aXBhcmdzDQo+ICtlbGlmIFsgJGNvbXByZXNzb3IgPSAicGlneiIgXSA7
IHRoZW4NCj4gKwlpZiAkY29tcHJlc3NvciAtLWhlbHAgMj4mMSB8IGdyZXAgLS0gIi1UIiA+IC9k
ZXYvbnVsbDsgdGhlbg0KPiArCQljb21wcmVzc29yYXJncz0iLTluVCINCj4gKwlmaQ0KPiAgIGZp
DQo+ICAgDQo+ICAgdHNvcnRhcmdzPQ0KPiANCg0KLS0gDQpDaGVlcnMsDQoNCkFsZWphbmRybw0K

