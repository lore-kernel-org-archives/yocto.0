Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web10.18280.1586968411488964006
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Apr 2020 09:33:31 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=03742260b9=sean.mckay@hpe.com)
Received: from pps.filterd (m0134424.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 03FGVwBB031632;
	Wed, 15 Apr 2020 16:33:30 GMT
Received: from g4t3426.houston.hpe.com (g4t3426.houston.hpe.com [15.241.140.75])
	by mx0b-002e3701.pphosted.com with ESMTP id 30e466ru6y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 15 Apr 2020 16:33:30 +0000
Received: from G4W9120.americas.hpqcorp.net (exchangepmrr1.us.hpecorp.net [16.210.21.15])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g4t3426.houston.hpe.com (Postfix) with ESMTPS id B438667;
	Wed, 15 Apr 2020 16:33:29 +0000 (UTC)
Received: from G9W8454.americas.hpqcorp.net (2002:10d8:a104::10d8:a104) by
 G4W9120.americas.hpqcorp.net (2002:10d2:150f::10d2:150f) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Wed, 15 Apr 2020 16:33:29 +0000
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (15.241.52.12) by
 G9W8454.americas.hpqcorp.net (16.216.161.4) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Wed, 15 Apr 2020 16:33:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V9PJaIXb3LNymVg8CtpJR+f2yTw6sZFj8MwBJ7/UBhPl71mPiWYYiYAHlaar8rZggkatKLMh4rlB1cNAqI9jx8ssoj7G/X8YKvq5kFLkktHWOaj8cGnf+Kw+G+LgvnBqLZWW/3TZPmTKvLLyeM87UvoXUvwt7brwaa15UeUiK4iUySR+f/o7AFrR7D8eooRodWwCYGa1kPF49k89oB3FeqQ7K9md/oyekbh26U6XEQE1CBm6B7efKcqpyUVp/gvW9MdvfGu9TktB3QlTYRD5Y3iHF5JoT8X+4jTYCweI/b5f/sGW8XJL5kD3EJpdVdErypvziUHFOjdnAgcfFOwQhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73D2opshJsitKRW4wINUkaOeXZER6Jc1lCQce2mnXkA=;
 b=LktRzNrvvbw+wmO1H1676xgjD8BujPr7BFvfIvpK974pFzihUCmcJJBtfq+zNusf1JYjadwQD7fHpDGzI8liHKDQsiM3nzrURokl8URB4eeWVGFqmNycxLBjjQeJQUVL4w7UUjtXz645DKqi9jOs4MzXGUCO1vY6WP/CEIYu0OWqXxJhrGWIs8+rMlA+Jw7QU29ac8Fdv6PlUZ58XYKG14PS0ytJDCCFO+lDNjp1mY3P0WMaQsU7ESPuCopVJ/tvvxHxFuv9OJJ2EJVk/NqNPYGPduoPcZGiEIl3DmuRLnKA47fmAhYLQna/vR3FHS38kMRSPOMKqZQOlAJjNWCZjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB1325.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7716::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.28; Wed, 15 Apr
 2020 16:33:28 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::619e:7aed:3043:d9a3]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::619e:7aed:3043:d9a3%6]) with mapi id 15.20.2900.028; Wed, 15 Apr 2020
 16:33:28 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: akuster <akuster808@gmail.com>, MikeB <mabnhdev@gmail.com>,
        "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Guidance Downgrading Python2 in Zeus #python
Thread-Topic: [yocto] Guidance Downgrading Python2 in Zeus #python
Thread-Index: AQHWE0E7W+VqLKPgPESHOrAyTKSEVKh6XeCAgAACP5A=
Date: Wed, 15 Apr 2020 16:33:28 +0000
Message-ID: <TU4PR8401MB11510284CDD2B3644DC4788882DB0@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
References: <US9q.1586967370403874617.w9z2@lists.yoctoproject.org>
 <27a5f0a8-25db-839a-64e8-c8481dd3fea5@gmail.com>
In-Reply-To: <27a5f0a8-25db-839a-64e8-c8481dd3fea5@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [2601:204:cb03:2202:a08c:45e6:328:cde2]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f3f2f446-b1d7-49ca-47ae-08d7e15aba49
x-ms-traffictypediagnostic: TU4PR8401MB1325:
x-microsoft-antispam-prvs: <TU4PR8401MB13251C4E5F3881FA109791D982DB0@TU4PR8401MB1325.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0374433C81
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(10019020)(396003)(39860400002)(346002)(136003)(366004)(376002)(66446008)(76116006)(66946007)(2906002)(7696005)(9686003)(64756008)(186003)(53546011)(6506007)(316002)(55016002)(66476007)(66556008)(52536014)(33656002)(110136005)(8936002)(81156014)(966005)(8676002)(71200400001)(86362001)(478600001)(5660300002);DIR:OUT;SFP:1102;
received-spf: None (protection.outlook.com: hpe.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2ULQJshfXoOCmjyRTG/ChFMgyaQ2OgTGXgKsaNuSO10v+tqvJSgJrLcJsYYM35GUJAz17+IPtN8BLloFE0cocOVSHAGIso4Sba9e05eSrQt1xUn8LW7sIvpatJlmQTasnPtce1fdfFrwdypRUqauwVIR+XgStKkZOAW4WAIh/fauxDbTSmcJMxX24W4cofGXr69TgYSHguq8I/4pWxrjbprKunR3AdnuftLY6tu/bplZQiDqumQgkpOQCwAmaXkrsb69O9v/cL+NAc5EgzD/NLhF3kSKPO6JBWj9YnW/D+D5gNuu15cCxHGqKdEqTCUUSw8E0hqp1Sa226rPGzFyr+FjrdrfLCjeEGADmOJneItJXel7fGK4oQtlhO7Ag0mfPEVV94jvv33AOaLx1/5rlzYLDyjmsBDIT7/iRVM4lE0T/KrxewKBdrD5Gi/PS+LrEEL0VXOpORtBPdytWaZQCLOgKpaOJThNqB3evcjnachjJFsqy68enLk3N+anaSk8NMDRUnxL+7BBLnCdE5dVXQ==
x-ms-exchange-antispam-messagedata: 5nPGQpjw0iUQcdIuHchniGevvXYqCoVPXbwVUYVP8zEq14VwMXec7OnC21v30vadJZ8oSrL+o6HYVYEqowiFjI+zV3UvkuVLQ7CORvsOqSLcT18PKI1hhD5T9JXm7O7JjKX5gb3ksTuUGf4P4i1Ws41G6clZI38Y9RX1hmcKJk0Aik1Ri2w7kRReOX3UP7qll18L4kpzrgNWd8M0ay4QJg==
x-ms-exchange-transport-forked: True
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f2f446-b1d7-49ca-47ae-08d7e15aba49
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Apr 2020 16:33:28.3326
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oiPrcmMdbyOZaOLgLvs9THe+qKjZp+wFn4c4IouUgPT7qh5vsGbwEC6oxjRGcMkQWOdDhbPaRXANOZVWGIH6qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB1325
X-OriginatorOrg: hpe.com
X-Proofpoint-UnRewURL: 2 URL's were un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.676
 definitions=2020-04-15_06:2020-04-14,2020-04-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 spamscore=0 adultscore=0 impostorscore=0 bulkscore=0 clxscore=1011
 suspectscore=0 mlxlogscore=897 priorityscore=1501 lowpriorityscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2003020000 definitions=main-2004150119
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB11510284CDD2B3644DC4788882DB0TU4PR8401MB1151_"

--_000_TU4PR8401MB11510284CDD2B3644DC4788882DB0TU4PR8401MB1151_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RllJLCB3ZeKAmXJlIGRvaW5nIHRoZSBzYW1lIGludGVybmFsbHkgKHZlbmRvciBzdXBwbGllZCBG
SVBTIHN1cHBvcnRlZCBvcGVuc3NsIDEuMC4yKSwgYW5kIHRoZSBsYXllciBBcm1pbiBzdWdnZXN0
cyB3b3JrZWQgZm9yIHVzIG9uIHpldXMgd2l0aCBtaW5pbWFsIGFkZGl0aW9uYWwgdHdlYWtpbmcu
DQoNCkdvb2QgbHVjayENCi1TZWFuDQoNCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBha3VzdGVyDQpT
ZW50OiBXZWRuZXNkYXksIEFwcmlsIDE1LCAyMDIwIDk6MjMgQU0NClRvOiBNaWtlQiA8bWFibmhk
ZXZAZ21haWwuY29tPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6
IFt5b2N0b10gR3VpZGFuY2UgRG93bmdyYWRpbmcgUHl0aG9uMiBpbiBaZXVzICNweXRob24NCg0K
DQpPbiA0LzE1LzIwIDk6MTYgQU0sIE1pa2VCIHdyb3RlOg0KSSdtIHdvcmtpbmcgb24gYSBzZXQg
b2YgcGxhdGZvcm1zIHRoYXQgaGF2ZSBhIEZJUHMgY2VydGlmaWVkIE9wZW5TU0wuICBXZSBhcmUg
YXQgdmVyc2lvbiAxLjAuMmwuDQoNCkkndmUgZm91bmQgdGhhdCB0aGUgbmV3IHZlcnNpb24gb2Yg
cHl0aG9uIGluIFpldXMgKDIuNy4xNykgcmVxdWlyZXMgYSBuZXdlciB2ZXJzaW9uIG9mIE9wZW5T
U0wgKDEuMSkuDQoNCldlIHJlYWxseSBkb24ndCB3YW50IHRvIGdvIHRocm91Z2ggYSBuZXcgcm91
bmQgb2YgY2VydGlmaWNhdGlvbiwgc28gd2Ugd2FudCB0byBrZWVwIG91ciBjdXJyZW50IE9wZW5T
U0wgKDEuMC4ybCkuDQoNCkkgdGhpbmsgdGhlIGVhc2llc3Qgc29sdXRpb24gaXMgdG8gZG93bmdy
YWRlIHB5dGhvbiAyIGJhY2sgdG8gdGhlIHZlcnNpb24gdXNlZCBieSBTdW1vICgyLjcuMTUpLg0K
DQpJIGtub3cgaG93IHRvIGRvd25ncmFkZSBzaW1wbGUgcmVjaXBlcywgYnV0IHB5dGhvbiBpcyBm
YXIgZnJvbSBzaW1wbGUuDQoNCkNhbiBzb21lb25lIGdpdmUgbWUgc29tZSBndWlkYW5jZSBvbiBo
b3cgdG8gYXBwcm9hY2ggdGhlIGRvd25ncmFkZSBvZiBweXRob24yIGluIFpldXM/DQoNCkhhdmUg
aGFkIGEgY2hhbmNlIHRvIGxvb2sgYXQgdGhpcyBsYXllcj8NCmh0dHA6Ly9naXQueW9jdG9wcm9q
ZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL21ldGEtb3BlbnNzbDEwMi1maXBzLzxodHRwOi8vZ2l0Lnlv
Y3RvcHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9tZXRhLW9wZW5zc2wxMDItZmlwcy8+DQoNCi0g
YXJtaW4NCg0KDQpUaGFua3MsIE1pa2UNCg0KDQoNCg0K

--_000_TU4PR8401MB11510284CDD2B3644DC4788882DB0TU4PR8401MB1151_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KQGZvbnQtZmFjZQ0KCXtmb250LWZhbWlseTpDb25zb2xhczsNCglwYW5vc2UtMToyIDEx
IDYgOSAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3JtYWws
IGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0
b206LjAwMDFwdDsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixz
YW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsNCgl7bXNvLXN0eWxlLXByaW9y
aXR5Ojk5Ow0KCWNvbG9yOmJsdWU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwcmUN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJIVE1MIFByZWZvcm1h
dHRlZCBDaGFyIjsNCgltYXJnaW46MGluOw0KCW1hcmdpbi1ib3R0b206LjAwMDFwdDsNCglmb250
LXNpemU6MTAuMHB0Ow0KCWZvbnQtZmFtaWx5OiJDb3VyaWVyIE5ldyI7fQ0Kc3Bhbi5IVE1MUHJl
Zm9ybWF0dGVkQ2hhcg0KCXttc28tc3R5bGUtbmFtZToiSFRNTCBQcmVmb3JtYXR0ZWQgQ2hhciI7
DQoJbXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCW1zby1zdHlsZS1saW5rOiJIVE1MIFByZWZvcm1h
dHRlZCI7DQoJZm9udC1mYW1pbHk6Q29uc29sYXM7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0
eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJZm9udC1zaXplOjEwLjBwdDt9DQpAcGFnZSBXb3JkU2Vj
dGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEuMGluIDEuMGluIDEuMGluIDEu
MGluO30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHls
ZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlZGVmYXVsdHMgdjpleHQ9ImVkaXQi
IHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0tLT48IS0tW2lmIGd0ZSBtc28gOV0+
PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4NCjxvOmlkbWFwIHY6ZXh0PSJlZGl0
IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1sPjwhW2VuZGlmXS0tPg0KPC9oZWFk
Pg0KPGJvZHkgbGFuZz0iRU4tVVMiIGxpbms9ImJsdWUiIHZsaW5rPSJwdXJwbGUiPg0KPGRpdiBj
bGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPkZZSSwgd2XigJlyZSBk
b2luZyB0aGUgc2FtZSBpbnRlcm5hbGx5ICh2ZW5kb3Igc3VwcGxpZWQgRklQUyBzdXBwb3J0ZWQg
b3BlbnNzbCAxLjAuMiksIGFuZCB0aGUgbGF5ZXIgQXJtaW4gc3VnZ2VzdHMgd29ya2VkIGZvciB1
cyBvbiB6ZXVzIHdpdGggbWluaW1hbCBhZGRpdGlvbmFsIHR3ZWFraW5nLjxvOnA+PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8cCBjbGFzcz0i
TXNvTm9ybWFsIj5Hb29kIGx1Y2shPG86cD48L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij4tU2VhbjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8
L286cD48L3A+DQo8ZGl2Pg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xp
ZCAjRTFFMUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PGI+RnJvbTo8L2I+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgJmx0O3lv
Y3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcmZ3Q7DQo8Yj5PbiBCZWhhbGYgT2YgPC9iPmFrdXN0
ZXI8YnI+DQo8Yj5TZW50OjwvYj4gV2VkbmVzZGF5LCBBcHJpbCAxNSwgMjAyMCA5OjIzIEFNPGJy
Pg0KPGI+VG86PC9iPiBNaWtlQiAmbHQ7bWFibmhkZXZAZ21haWwuY29tJmd0OzsgeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZzxicj4NCjxiPlN1YmplY3Q6PC9iPiBSZTogW3lvY3RvXSBHdWlk
YW5jZSBEb3duZ3JhZGluZyBQeXRob24yIGluIFpldXMgI3B5dGhvbjxvOnA+PC9vOnA+PC9wPg0K
PC9kaXY+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9vOnA+PC9w
Pg0KPHAgY2xhc3M9Ik1zb05vcm1hbCIgc3R5bGU9Im1hcmdpbi1ib3R0b206MTIuMHB0Ij48bzpw
PiZuYnNwOzwvbzpwPjwvcD4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5PbiA0LzE1LzIw
IDk6MTYgQU0sIE1pa2VCIHdyb3RlOjxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8YmxvY2txdW90
ZSBzdHlsZT0ibWFyZ2luLXRvcDo1LjBwdDttYXJnaW4tYm90dG9tOjUuMHB0Ij4NCjxwIGNsYXNz
PSJNc29Ob3JtYWwiPkknbSB3b3JraW5nIG9uIGEgc2V0IG9mIHBsYXRmb3JtcyB0aGF0IGhhdmUg
YSBGSVBzIGNlcnRpZmllZCBPcGVuU1NMLiZuYnNwOyBXZSBhcmUgYXQgdmVyc2lvbiAxLjAuMmwu
PGJyPg0KPGJyPg0KSSd2ZSBmb3VuZCB0aGF0IHRoZSBuZXcgdmVyc2lvbiBvZiBweXRob24gaW4g
WmV1cyAoMi43LjE3KSByZXF1aXJlcyBhIG5ld2VyIHZlcnNpb24gb2YgT3BlblNTTCAoMS4xKS48
YnI+DQo8YnI+DQpXZSByZWFsbHkgZG9uJ3Qgd2FudCB0byBnbyB0aHJvdWdoIGEgbmV3IHJvdW5k
IG9mIGNlcnRpZmljYXRpb24sIHNvIHdlIHdhbnQgdG8ga2VlcCBvdXIgY3VycmVudCBPcGVuU1NM
ICgxLjAuMmwpLjxicj4NCjxicj4NCkkgdGhpbmsgdGhlIGVhc2llc3Qgc29sdXRpb24gaXMgdG8g
ZG93bmdyYWRlIHB5dGhvbiAyIGJhY2sgdG8gdGhlIHZlcnNpb24gdXNlZCBieSBTdW1vICgyLjcu
MTUpLjxicj4NCjxicj4NCkkga25vdyBob3cgdG8gZG93bmdyYWRlIHNpbXBsZSByZWNpcGVzLCBi
dXQgcHl0aG9uIGlzIGZhciBmcm9tIHNpbXBsZS48YnI+DQo8YnI+DQpDYW4gc29tZW9uZSBnaXZl
IG1lIHNvbWUgZ3VpZGFuY2Ugb24gaG93IHRvIGFwcHJvYWNoIHRoZSBkb3duZ3JhZGUgb2YgcHl0
aG9uMiBpbiBaZXVzPzxvOnA+PC9vOnA+PC9wPg0KPC9ibG9ja3F1b3RlPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PGJyPg0KSGF2ZSBoYWQgYSBjaGFuY2UgdG8gbG9vayBhdCB0aGlzIGxheWVyPzxi
cj4NCjxhIGhyZWY9Imh0dHA6Ly9naXQueW9jdG9wcm9qZWN0Lm9yZy9jZ2l0L2NnaXQuY2dpL21l
dGEtb3BlbnNzbDEwMi1maXBzLyI+aHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3JnL2NnaXQvY2dp
dC5jZ2kvbWV0YS1vcGVuc3NsMTAyLWZpcHMvPC9hPjxicj4NCjxicj4NCi0gYXJtaW48YnI+DQo8
YnI+DQo8bzpwPjwvbzpwPjwvcD4NCjxibG9ja3F1b3RlIHN0eWxlPSJtYXJnaW4tdG9wOjUuMHB0
O21hcmdpbi1ib3R0b206NS4wcHQiPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGJyPg0KVGhhbmtz
LCBNaWtlIDxicj4NCjxicj4NCjxvOnA+PC9vOnA+PC9wPg0KPHByZT48bzpwPiZuYnNwOzwvbzpw
PjwvcHJlPg0KPC9ibG9ja3F1b3RlPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8
L286cD48L3A+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_TU4PR8401MB11510284CDD2B3644DC4788882DB0TU4PR8401MB1151_--
