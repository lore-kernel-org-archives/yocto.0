Received: from mx0a-002e3701.pphosted.com (mx0a-002e3701.pphosted.com [148.163.147.86])
 by mx.groups.io with SMTP id smtpd.web10.2548.1614726634504154639
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Mar 2021 15:10:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hpe.com header.s=pps0720 header.b=I46GtgrP;
 spf=pass (domain: hpe.com, ip: 148.163.147.86, mailfrom: prvs=069564a5b6=javier.tia@hpe.com)
Received: from pps.filterd (m0148663.ppops.net [127.0.0.1])
	by mx0a-002e3701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 122N8lh8028476
	for <yocto@lists.yoctoproject.org>; Tue, 2 Mar 2021 23:10:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : subject :
 date : message-id : content-type : content-id : content-transfer-encoding
 : mime-version; s=pps0720;
 bh=f2e9plGbKPA0VBNQZjVLQeDhumIo740cMW/XUY1NBhY=;
 b=I46GtgrPFNSro4HlpjR8VC34vSofFzSoO/Qw0nN/0RxK4iS4ItltWl5WslaxEHJPECKG
 6eOfYSlvgrK+sY/brpe7Ur63cgu7FvhxZvBZYOY7bLkqNAkV+Kq/1H4GtciagQmRrj5R
 0iM18baKJyt0vcJ1Ad6yBuiEv/xz87Dtdh47e8dQB+kzMTt9f73kHdPClP2aEbzHHymS
 6t0pBwGBA7SLJiwq0jhxWcKswFNkYIJ3wsoljKkOL/Ps4jhYMy7tMM1B328OP+kTvRxY
 5+1UofvC8goagL0naprSMG64BG57m4udllHzIDuV/Gqv+Q9vKLwp99upuFU58tJc13Xk WA== 
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	by mx0a-002e3701.pphosted.com with ESMTP id 371taahvf8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 02 Mar 2021 23:10:33 +0000
Received: from G4W9119.americas.hpqcorp.net (g4w9119.houston.hp.com [16.210.20.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 641835B
	for <yocto@lists.yoctoproject.org>; Tue,  2 Mar 2021 23:10:32 +0000 (UTC)
Received: from G4W9119.americas.hpqcorp.net (2002:10d2:14d6::10d2:14d6) by
 G4W9119.americas.hpqcorp.net (2002:10d2:14d6::10d2:14d6) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 2 Mar 2021 23:10:32 +0000
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (15.241.52.10) by
 G4W9119.americas.hpqcorp.net (16.210.20.214) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Tue, 2 Mar 2021 23:10:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gl1j0JWWaPsF5wH6xozQF8FMLhQCnWY++E5dpjaUCDlL94FPgTeca7D5LKFknxQjSej6QhHZXTi6F7zso5DJH08yu9GwCLQtOsOjOpiRD97+u33RXfSbYPyAilf+QmWDt/aC/avM+GtGgIGdWNg5dtCjW5VNglVBF6cUnG1p+XxDXV/wQVTMnpPnab6/fCMtTT/3PkEZFFaQtq3wbDR6mgn7s7FVFnVdqfwxBFsM+N4IYhpbFnuaEc10M1HcJMCrUzPUhxdJ5yi2NZofpMyEdHPN2SrMGty9iG/b2qpqz3mu/5x86BxqSvRTg+26+QiKXOHX+suYGWVdDmlO/BEDgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=f2e9plGbKPA0VBNQZjVLQeDhumIo740cMW/XUY1NBhY=;
 b=Tyy7Z0Noy08rIcG6SWBH4QwI2UEL/HPovJYDhG5OPN4aYCAmQX1OJtYk9S7r4fcxJZVydEW0qOdj6ukRjg5EHiiwNh3Wnzj9kAAm+bCZ6+/Hy+AuQGMi8u3SldDGNwg4FmlXQrR5o+TKogxajNWf/HuiDuTUuGGp9CCx+QeKFg+FcEONaMkXgB3/Fo2T/l2tp8BpVXmZOiC5vugW6M6lk9wHGqU5/muVArOW3MnZ4yTQfn9tiVZAJ3BHMc+YqQedcYy4Zdhr0Jl/RnQllBm9SQ1yn8xCGuzIbaIs4C+TipW9hEEiQzO2DgHQj1GEgAj/QC6wj0ozimhxW1byd6hAJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7606::14) by DF4PR8401MB0908.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:760d::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.17; Tue, 2 Mar
 2021 23:10:30 +0000
Received: from DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::a113:1856:6da7:8a41]) by DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::a113:1856:6da7:8a41%11]) with mapi id 15.20.3912.017; Tue, 2 Mar 2021
 23:10:30 +0000
From: "Javier Tia" <javier.tia@hpe.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: How to run the recipe Go tests on Yocto
Thread-Topic: How to run the recipe Go tests on Yocto
Thread-Index: AQHXD7k8h+LO0/IJ4k6n3ilnraOdog==
Date: Tue, 2 Mar 2021 23:10:30 +0000
Message-ID: <ca9d6c8f-8e6a-f41e-aa79-d668b99cc044@hpe.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.0
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=hpe.com;
x-originating-ip: [190.171.113.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0c161cfa-bf95-4568-0320-08d8ddd06002
x-ms-traffictypediagnostic: DF4PR8401MB0908:
x-microsoft-antispam-prvs: <DF4PR8401MB09087DF27BC59C7E8F1A9F5599999@DF4PR8401MB0908.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:1122;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MltoSkSXtesyPR+YD3XkWkYyl8rurWqhGAsKA7g4dmYmIApBB37iTft3B5yz0Su/z3OPAlXTWQVyIvNuGRom3bTFyAjUQ/Nsvwpqv1UHwLrLVxIqOZWppvDgam8aEPc8I7b4r7j8uqGJc79TTON+927MjnlAxAAH7C4Qh8G3uberfoiFIHtTDv4PegMbrzXYaEHXd8HdMEN6H/4iJQWKulm6SszszqVttL2nFE4XFadoOblPR7waSt/K36AM/qYxNn1VHu9Ms55Oe/IP5eMYJ9q1p2JW8Vvisi8D+b2BFbmpG3KKjFw5tXn5qW+h2XkarWz/6IiUz0pA7rSP5YGGN4YbNuDpact9DEcyABDCrmWuBLwwoJ7MlPr/+U9GRLvMY2VFPwdPYg4/ZuC6jKTbS9xsQjGVHOQsGKQwyslUA9ZWm0I14x0uZdbTfDgvqA0fkJ1tND+3dVxn4PxfSfB4TcIAHC421AfxXYUfypUOEqemfTdpcINnfU85+WQfIxs8c4jMVyjr5rlipTxVneTU8IbhQhQxih+eTBW7m1kULBHKO2PDKoxPk6GDqmi0xjYhcyL4yP5YQxS1MFgZ0quInMLAxodqgr/b+c0ZHzqiTT4=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(396003)(376002)(366004)(39860400002)(346002)(71200400001)(66946007)(8936002)(76116006)(66446008)(66556008)(66476007)(478600001)(64756008)(4744005)(5660300002)(36756003)(6512007)(83380400001)(2906002)(6486002)(6916009)(186003)(2616005)(26005)(31696002)(86362001)(31686004)(8676002)(316002)(6506007)(43740500002)(45980500001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?VHRlVTRFejNaTFk1eXI5WHVubmE1c2MvQW9KNjFQZ3NwOUR3MnZ5Zmtjd2Ur?=
 =?utf-8?B?UER2cEFsMWhYbjhCbmhDcGFDWGlZVERaT3ZYaDkvRkcxUzYyS1UyRExmdVhr?=
 =?utf-8?B?QVluWm9RSlNrN2pseXVpL2dqWUtMWURHUEwvS3J0UzBzVlI4cTlNMmhYVC9m?=
 =?utf-8?B?YUp4a2xrdUErSFJDNjVaZmxvTEU1ajB5b1dHRDRta3NXNWZGQWZMTm54OVBL?=
 =?utf-8?B?YmtKc3lMWXI5dFVMdjRvbjl6RDJ0SzJRaDJCMkVXUno1ZkY2dTZEYzVrOUVh?=
 =?utf-8?B?YU5xVStvbzYwUVlyd2tpcHA0ZGRYOWJJYThzcUtSQ0hYYngwdkp5TUZGaEll?=
 =?utf-8?B?Q2VRUkxGK254eVZTdHNTSnBPOEZCVjhGQUNUeEN5MUhBRitsbHcwcFZhalFQ?=
 =?utf-8?B?NUEwVElSRFZwcytNZ3pUOVo1bW55VlQzM2huOElYV1VrZmM0Skl1d2g0eE80?=
 =?utf-8?B?RVM5Q0h1cEdtcG9xNGFza2tsNVdadXNIUnppOHJhaUlpbnJtUjBwQTRNSWRZ?=
 =?utf-8?B?a3EzemdqS3RleDhkaVpyMnNUN1hic0tPWkpoOXRPRFNSbGZRS3RERWZia2VZ?=
 =?utf-8?B?Ymk3YWJ4UVVONzBYSzJ1V2hIREh0bGFQWFZVRlM3RTlMdmNLajVXM1JNRjda?=
 =?utf-8?B?KzlQK0lrdlpTaDhvWDVWaHJmbWFDK3lUUk81V2ZTNEdhaU9COWxDTWVBVXZQ?=
 =?utf-8?B?K25mQ2Q2RWVXS0ljTW9hYU1xaVNEVlpMWlBkQWZyc2trc2VDakpoVWpEaWM1?=
 =?utf-8?B?bU83Vks0VE9PSVlxdkpJRGNMMktYc21GVm9MQ1dpMFU5TjQ0WW1oZ0RQbmli?=
 =?utf-8?B?M2pmcTZpenBNKzJuUE9MOFF2WStycDNxUUlmVVZVWGYvQkJmMFNaWTJQcHFX?=
 =?utf-8?B?RXZjK0U5VS9nbW00Y2FmaFhDUUh0N3hkbFE5TjY4c3VHNEluNVVhTFY4TW5N?=
 =?utf-8?B?Ujk4NGdDTGNDZHM0Z2x6Z2FpLzlIUGNLVzBqa215Z0ZEckVyY1R3OWxWSDND?=
 =?utf-8?B?TGgrczA0UytLSFkxYmpMSnlTcTNaT25ySU92eHROWFhmWVR0OHBaMzIxdGRa?=
 =?utf-8?B?YzcyQ3ZmUG5pZlNTbHJXSjFMYXNDem1wL09vdzJhTk5GUG9TSW9rcW9iYmpP?=
 =?utf-8?B?bkdwSEc5bGZWT1puWS9DeE5RNXR4SUdQUkdsaDhNZm1BZEJabDArWHphOW5x?=
 =?utf-8?B?cTNzSmtVbDdiYTJrL0N0ZGdFRERvdi9FWHlab2tWazFIT0NsTWhoM2psR0di?=
 =?utf-8?B?c2w5WE01VVorYmdjdlVQc29nZ00yemowRzlXV3pGalc5ZlNvTTZtOTNzZDNx?=
 =?utf-8?B?SlVibkVaVDg5dURiNUxta2RGYnBRYUdTY2ljbld4b09abTFzWllrMnl5aCtm?=
 =?utf-8?B?d1V1Tys0MHowbEtpdVdLN0NBUUtIeTV0M2ZHeGRHUEdoTzRiOEJKelRpb3Uw?=
 =?utf-8?B?YXpqcFgyZ1NUTjhzYm8zNHdaZjR2VmdOK3dhY2hVRHo5a0cyL1BQM1QyRVFi?=
 =?utf-8?B?bmxiVVJjMzRCWHNjU3dKVDFUcm8wcDIrQ2tXUnpHR3BzcldUT1Fzdm1FV1Zx?=
 =?utf-8?B?ZzRGdDROY2xaWm84Q3lhajlFZU05RVkvWG5mY05nRTJNTnJmUE5pdjVzS21u?=
 =?utf-8?B?NlUrek5BcnNjU0tMUE1YVElKRytnSU9oQVFLMXRNeWdVK09jeEtHQzgydHZ1?=
 =?utf-8?B?eE9LQktaS3RycXNleVdVOG5zVFVZNFNYNXdwSDUzY29Sa09BdW1aczRmQUZN?=
 =?utf-8?Q?FVAaIKTuEOBPLlTpW7pk5agGwpxilmdnxMZ20We?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DF4PR8401MB0347.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c161cfa-bf95-4568-0320-08d8ddd06002
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Mar 2021 23:10:30.5326
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n+qBqd242dRS4ZE19hQEAtiHpl7MG7DN6BgN/oErU9IQlGN2cQduKRjBnUJQhBzm8BOY2A6s/VDtMh/k47g8WA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DF4PR8401MB0908
X-OriginatorOrg: hpe.com
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.761
 definitions=2021-03-02_08:2021-03-01,2021-03-02 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 suspectscore=0 mlxscore=0 phishscore=0 priorityscore=1501
 mlxlogscore=999 clxscore=1011 adultscore=0 spamscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2009150000 definitions=main-2103020171
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <AB527F2F88D0354C886E0CA01E0CC615@NAMPRD84.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

SGksDQoNCklzIHRoZXJlIGEgd2F5IHRvIHJ1biB0aGUgcmVjaXBlIEdvIHRlc3RzIGluIFlvY3Rv
Pw0KDQpJIGhhdmUgdHJpZWQgc2V2ZXJhbCB3YXlzICgxLiBNYW51YWxseSBhbmQgMi4gcHRlc3Qp
IHdpdGggdW5zdWNjZXNzLg0KDQoxLiBNYW51YWxseSBleHBvcnRpbmcgYWxsIHRoZSB0b29sY2hh
aW4gdmFyaWFibGVzOg0KDQogICBHT0FSQ0g9IiR7QlVJTERfR09BUkNIfSINCiAgIENHT19FTkFC
TEVEPSIxIg0KICAgQ0ZMQUdTPSIke0JVSUxEX0NGTEFHU30iDQogICBMREZMQUdTPSIke0JVSUxE
X0xERkxBR1N9Ig0KICAgQ0dPX0NGTEFHUz0iJHtCVUlMRF9DRkxBR1N9Ig0KICAgQ0dPX0xERkxB
R1M9IiR7QlVJTERfTERGTEFHU30iDQogICBDQz0iJHtCVUlMRF9DQ30iDQogICBMRD0iJHtCVUlM
RF9MRH0iDQoNCmFuZCBydW4gaXQgd2l0aCB0aGUgR28gdGVzdCBuYXRpdmUgdmVyc2lvbi4NCg0K
DQoyLiBVc2luZyBwdGVzdCwgYW5kIGFkZGluZyB0byB0aGUgR28gcmVjaXBlOg0KDQogICBkb19j
b21waWxlX3B0ZXN0KCkgew0KICAgICAke0dPfSB0ZXN0IC12ZXQgb2ZmICQoZ29fbGlzdF9wYWNr
YWdlX3Rlc3RzKQ0KICAgfQ0KDQpJbiBib3RoIGNhc2VzIHRoZSBlcnJvciBtZXNzYWdlcyBhcmUg
bGlrZSB0aGlzOg0KDQpmb3JrL2V4ZWMgLi4uL3JlY2lwZV9uYW1lLzEuMC1yMC9nby10bXAvZ28t
YnVpbGQ3MTEzL2IzMzgvdXRpbC50ZXN0OiBubyANCnN1Y2ggZmlsZSBvciBkaXJlY3RvcnkNCkZB
SUwgICAgdXRpbCAgICAgIDAuMDAwcw0KDQpJdCdzIGhhcHBlbmluZyB3aXRoIFlvY3RvIFpldXMg
KHYzLjAuNCkgYW5kIEdvIHYxLjQuMTcNCg0KDQpSZWdhcmRzLA0KDQrilrcgSmF2aWVyJ3Mg8J+W
ig0K
