Received: from mx0b-002e3701.pphosted.com (mx0b-002e3701.pphosted.com [148.163.143.35])
 by mx.groups.io with SMTP id smtpd.web08.6074.1612844844238950366
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 Feb 2021 20:27:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@hpe.com header.s=pps0720 header.b=FpZZTsfa;
 spf=pass (domain: hpe.com, ip: 148.163.143.35, mailfrom: prvs=0674fa9277=sean.mckay@hpe.com)
Received: from pps.filterd (m0148664.ppops.net [127.0.0.1])
	by mx0b-002e3701.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 1194NiKV001051;
	Tue, 9 Feb 2021 04:27:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hpe.com; h=from : to : subject :
 date : message-id : references : in-reply-to : content-type :
 mime-version; s=pps0720; bh=LObGu9lNuZQjabP63/7yhLtyNeuit5I1+IRvXSd3Chk=;
 b=FpZZTsfago5O4eIaIAxw1OWQAVETQMM4aFbSLC58czgHOgpZ/sVlmTfYkNoI+4d62jqM
 ikzd2YB7j1O3V4us+WQVqE/gg48Hq2gng38zwIy8s7BV2f1/JbJnkcAHg8TUE5uKQIW0
 sAvkEEi/IJ/JdTNFw3fxjYL4fYyftj1B5fRrqyeVW74GUS7aSD7oKnIcyOuuYV58sfYM
 r39URabnm10U9AujnI+qONYIHXmcY6V4z1SwpWm9IDMp2O/cy1IejiSrUxvj84yilDVt
 9/oyv0RRCgjYD9rdLzbySPxGdLjR6J/wlFldUq3m58SRGIn+hDUmwqINJaJbnto486xX Fg== 
Received: from g9t5009.houston.hpe.com (g9t5009.houston.hpe.com [15.241.48.73])
	by mx0b-002e3701.pphosted.com with ESMTP id 36kea79rd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 09 Feb 2021 04:27:22 +0000
Received: from G4W9119.americas.hpqcorp.net (g4w9119.houston.hp.com [16.210.20.214])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by g9t5009.houston.hpe.com (Postfix) with ESMTPS id 671A06B;
	Tue,  9 Feb 2021 04:27:22 +0000 (UTC)
Received: from G4W9121.americas.hpqcorp.net (2002:10d2:1510::10d2:1510) by
 G4W9119.americas.hpqcorp.net (2002:10d2:14d6::10d2:14d6) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 9 Feb 2021 04:27:22 +0000
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (15.241.52.12) by
 G4W9121.americas.hpqcorp.net (16.210.21.16) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2 via Frontend Transport; Tue, 9 Feb 2021 04:27:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NoMWjasVXDPLySgFgqbRKdNeczvLnb5ifbGlUx5Q3h5ft8WT29Uq2Ejd2bU020AwZg8l8ZaiokeZdXJtax9Gn2Kjk1VdAfEGw7ikkJuRRnBynKuUkVa28LDteExXKiDoMfgiNQ441RolfKrUIDN+ffuf8zoLE7oE/tAFE9NxdxUqGLOFIy2CLIH2cNAKGwb2vdwEd8NLXkMCG582LIG9RP/GfTd0seQ5nmAWdrolASQKFc0w8lVTfSjwFmmTQqUcDcSquMGZgT7FP6PN8RiMJ1VPTfWF0EIQTco/ZeUB66vWWnard2cVWbesi2+vlGH6/kn9pmSbD9s4ssidfW2qQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LObGu9lNuZQjabP63/7yhLtyNeuit5I1+IRvXSd3Chk=;
 b=H1L2jquGTiHRh2iehIHy3w2WFzycWXCBOlrW88WpUEJLhesAhptUNs+wEPS32sVZCkk3qri9k+TRp+G8OZLDgbfraXOOxMa9o0O/zcFqIPpQUFB1ogf1329o29ECZTzkFODzLaK2Q+9WXcd0w27PwUtbskDhcara6toMtCHA7bHlyyn+DE2djND+3VRsP2QWxO6lWZTsKJKel6M2RTK0G0cLQFZinS3zY14C/biJz43HVwF4OwZAMt5LXrvvIm1FDd0GjCKUk3v3mUFiLGh9ZgFLGJoQevgTUC73hYeQcpxaMmDCHDNbMfZbJJYJGn5MamHE9uMAAKhzqy3OhISDwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=hpe.com; dmarc=pass action=none header.from=hpe.com; dkim=pass
 header.d=hpe.com; arc=none
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:7712::19) by TU4PR8401MB0688.NAMPRD84.PROD.OUTLOOK.COM
 (2a01:111:e400:770f::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3825.30; Tue, 9 Feb
 2021 04:27:20 +0000
Received: from TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::206e:3855:660a:4b4b]) by TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
 ([fe80::206e:3855:660a:4b4b%12]) with mapi id 15.20.3825.030; Tue, 9 Feb 2021
 04:27:20 +0000
From: "Sean McKay" <sean.mckay@hpe.com>
To: Paul Wicks <pwicks86@gmail.com>,
        "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Install systemd unit file into image from source?
Thread-Topic: [yocto] Install systemd unit file into image from source?
Thread-Index: AQHW/oUveufACc9EZUeOGUrF4576P6pPOVZg
Date: Tue, 9 Feb 2021 04:27:20 +0000
Message-ID: <TU4PR8401MB115129566A42CFB31AAA2700828E9@TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM>
References: <CAOC70tueSmmwFXr6p3Y4oqqNUH7cDMHWj0QiHdjbPqhpOcK3LA@mail.gmail.com>
In-Reply-To: <CAOC70tueSmmwFXr6p3Y4oqqNUH7cDMHWj0QiHdjbPqhpOcK3LA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=hpe.com;
x-originating-ip: [2601:204:e081:4321:c55c:e0b5:70fc:7dd1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1778a774-bbe3-4441-b28d-08d8ccb2fde5
x-ms-traffictypediagnostic: TU4PR8401MB0688:
x-microsoft-antispam-prvs: <TU4PR8401MB0688B69D64D674095E728A00828E9@TU4PR8401MB0688.NAMPRD84.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nwCI5EsMXlk38QlrEpqbdDLtc4utwEUmnf4MFPq25GoTrmSRpB/+iGI2wV/aqJctGkVB1OPA134VRLhe2l2FxkgX3e1ZcJzUj54+f/ACNWV6BrOlWXlqkRFgJBlpxWBedQ9rURhtgIfaWB+8AnRhuB+0V9uHGWgxmCCcqEEgbt4siSqay/sU+M414dbbgrAdroDYCOnTVvWANy85hMr9dB2OGYGtcijVjdcSgTc60iYr0lc+yQv6risuMl+OeIL5B1/leNLgRxSS86lhwKvaqaQQGVN8c/xoXdhoXbiF/2WkQwlLSAZC3tMW8QsASkYMfYsLgU4KU4WhhlSTr4+nB6HL6XiJEhNDRL2E5DZFul0MghjotpsHRomyortaakvz2RasNPe/GkZCVrZXXBL6ksHderlPHmKicUKVv87zwwQ1at/MkuDTSpxbcYBHq98QHolWaFyEbzBM5OKVmpDUSi3yIr6K8skfL+U95TqDrXBR5/OuzHYPQ5bhI/FsHpyG1A2ChyFOPeKXDABufqx2Dw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(396003)(376002)(39860400002)(346002)(136003)(366004)(186003)(8676002)(2906002)(8936002)(71200400001)(33656002)(55016002)(5660300002)(9686003)(52536014)(64756008)(66446008)(66556008)(66476007)(66946007)(478600001)(316002)(110136005)(53546011)(6506007)(7696005)(86362001)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: =?utf-8?B?cXNQYTFhUmROaWFjWVJqSkprZlB4WmlYS0kvTHVhcE9RVDl0anMwd2lPQ3Nk?=
 =?utf-8?B?TWN2aWc2WkhKUjc0V2FXa2RGdVAwSzNNbDJYaVhhUXhlODJoaXVMdzlhelJy?=
 =?utf-8?B?cit3WGRMbUxzWElrYzk2M3ZoYytabVVBTy9taVoxVHg5VzVieGdqQzduR0xY?=
 =?utf-8?B?U0N6NXZPSGpPSWdQd2krTEJ6dHNKUFNibzlsc09CN1NYMURYNS9rZEtTcGpT?=
 =?utf-8?B?R1JtYmdiaWRnZjR4OEo0NGU2NnhRZDlVWGw4ajdJelJTalA1Z0dCMjJ4VURi?=
 =?utf-8?B?eTBRc0dEaTFXYXVidUNpMm1CNGJHWXpBUHFoRHFQdE00aHN5bU4vWmdlbnY1?=
 =?utf-8?B?V0ZhT1FRV3M3bFd2OHhxS3VUTFd3L252TmY1L0xpeVZZM2h6eFd2a3czYVA3?=
 =?utf-8?B?dG1LTW1sa2VZVTZuZzhKMGRCaHo1N3RIbTlucTJISTRGR0k4Tm9RUllQdnpX?=
 =?utf-8?B?bzhQdGhGNy9MWGlvMS9HQWdHNWs1MEQ3U2hHRDVOY3g0TzdWU3kvNk52UWpk?=
 =?utf-8?B?WEV2RzFMQlovcFY3OWswR20rRGJpYjNhNEl5RERMMk5QcUJxTkR1dEZIVEpN?=
 =?utf-8?B?OHRRRjFkd1VMN2tFT1I3Zk1WZGhjalhYRVdqaWRxOTRERkxBTWtJNVJZSjhD?=
 =?utf-8?B?TnFqWXduc1FKSXhObFMzZ2dHQ282czE2N2FmaGd2Y3BGS2daS205bFVyZkMy?=
 =?utf-8?B?UERYUzBRTy9wSUkyNHpVZWVWZWQ2dmN1dHVxdXdNdW9JOVBTWkJwM3pmLytw?=
 =?utf-8?B?QnYrSlRINEZQVVpoS29VRmlycVd6NGl6MVdiSVpXTUVYVnlrNDFXRDJjT3ow?=
 =?utf-8?B?Zlc5cGx2RFpkc2NZWHh5akN3TUEycThMUGg1c1U5QUtNSTNRQW5NcVA3Y2Yr?=
 =?utf-8?B?cy9nbVNSRnZYL3Bja0RiUmNsMDFSSHFFZFVaNk5tYUtHZzR1ekZQWCsvYlJ2?=
 =?utf-8?B?blYwaThXR3VySkFYZ3FLbzVpQUh5a3ArMThvMEVpMGVmR2lQa2M5ZFNXTkVy?=
 =?utf-8?B?aDBTMnN5cXJPejAzNVJ5S05CUk9EQzAweHJua2FrRGU2aU9vdTFXQWo2OEVo?=
 =?utf-8?B?YjFZK0RHRkkvUXptbGdmYkoreW4zMXNKZUtlclZXRjk3WTFtazF6dWNpU3FL?=
 =?utf-8?B?WGRCRkNjejhvcElvaVRsaUNXUWtBVWExV0FjbkUwOS9IcXdDM3Y4VmxaNUxv?=
 =?utf-8?B?aTJMR3BHZ1k0aXZJOWREYzAvbWRibEZXSytnMitnbjYzNXJIMnVNUnloY3VO?=
 =?utf-8?B?ekt1Y3NmMkQ2NnJIb0tIMDNRb3NoOVdydHNrVGV0WGRRYVdTK1A5QjBmamZT?=
 =?utf-8?B?Vm5HZkF3QzE2N3pMenVhbVVsUmlZaVlBbXJDajNWdGNyQ1hDWUxEVmlNTWpV?=
 =?utf-8?B?M0pWa0U2K2tkTGhiYVUzbmZseFVpYjF3Z1BOTDZMMEhNNEpVVWcyMnQ0NXRp?=
 =?utf-8?B?TWYrWWZRbk1ubWxBQXZNcE02NFZkUlVVU29MOU4yZG0wMFdyNWloaDd4RVcw?=
 =?utf-8?B?WkRQRDFTMCt6aHZObXdsRHZZWlM5TGEwWDVXbDJLR3N2cmg2TGhkUkRJenJq?=
 =?utf-8?B?dS9VQytLZHZ1dkZRYVFTc0pGVEtaSVBpTHFhN3UwT3Vxa2lHQ1duRHA3V1J3?=
 =?utf-8?B?T2dUVytuOEM1Y2tQbjN5MUpYeU1WUS9henpWWk5JY0NXQlhFdzVqZnZwdlpF?=
 =?utf-8?B?SDgwV243dXNDUWxlcHVETUhLY3hkUkNLOHJuaXBDL2p5ckl4SVpmUy9rcWd0?=
 =?utf-8?B?L1FYWDBoSm1ITnlGWkJYYW1DK3loMVN6LzFCbyswTG9HMFg0b2VMelBWUjly?=
 =?utf-8?B?RkNXOC8zRmowTkY3Qm4wcEpDYlRtL0Y2b3h0alZBUzRqUTJEVmJCcXhDZEcy?=
 =?utf-8?Q?ls2TO0pAlvejI?=
x-ms-exchange-transport-forked: True
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TU4PR8401MB1151.NAMPRD84.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 1778a774-bbe3-4441-b28d-08d8ccb2fde5
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2021 04:27:20.7959
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 105b2061-b669-4b31-92ac-24d304d195dc
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6AJHTh/iEbsOqdPvSo1rJWlzA9hsamlKgIUwmMrR6UyOU9atF1EgZ6kTa+JVRf9KZE7RJhWhXcgW4GYmDwFQMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TU4PR8401MB0688
X-OriginatorOrg: hpe.com
X-Proofpoint-UnRewURL: 0 URL was un-rewritten
MIME-Version: 1.0
X-HPE-SCL: -1
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.369,18.0.737
 definitions=2021-02-09_02:2021-02-08,2021-02-09 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 adultscore=0 mlxlogscore=999 spamscore=0 lowpriorityscore=0 clxscore=1011
 priorityscore=1501 suspectscore=0 mlxscore=0 impostorscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2009150000
 definitions=main-2102090011
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_TU4PR8401MB115129566A42CFB31AAA2700828E9TU4PR8401MB1151_"

--_000_TU4PR8401MB115129566A42CFB31AAA2700828E9TU4PR8401MB1151_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U1lTVEVNRF9TRVJWSUNFXyR7UE59IHNob3VsZCBqdXN0IGJlIHNldCB0byB0aGUgc2VydmljZSBu
YW1lLCBub3QgdGhlIGZ1bGwgcGF0aC4gU2/igKYNClNZU1RFTURfU0VSVklDRV8ke1BOfSA9ICJ0
ZXN0YXBwLWV4dHJhQC5zZXJ2aWNlIg0KDQpBbHNvLCBjb25zaWRlciB1c2luZyAke3N5c3RlbWRf
c3lzdGVtX3VuaXRkaXJ9IGluc3RlYWQgb2YgJHtzeXN0ZW1kX3VuaXRkaXJ9L3N5c3RlbQ0KDQpD
aGVlcnMhDQotU2VhbiBNY0theQ0KDQpGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IDx5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnPiBPbiBCZWhhbGYgT2YgUGF1bCBXaWNrcw0K
U2VudDogTW9uZGF5LCBGZWJydWFyeSA4LCAyMDIxIDU6NDQgUE0NClRvOiB5b2N0b0BsaXN0cy55
b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBbeW9jdG9dIEluc3RhbGwgc3lzdGVtZCB1bml0IGZp
bGUgaW50byBpbWFnZSBmcm9tIHNvdXJjZT8NCg0KSSd2ZSBnb3QgYW4gYXBwbGljYXRpb24gdGhh
dCBJJ2QgbGlrZSB0byBpbnN0YWxsIGludG8gbXkgY3VzdG9tIGltYWdlIGFuZCB0aGF0IGFwcGxp
Y2F0aW9uIGhhcyBhIGNvdXBsZSBvZiBhc3NvY2lhdGVkIHN5c3RlbWQgdW5pdCBmaWxlcyB0aGF0
IHNob3VsZCBiZSBpbnN0YWxsZWQgYXMgd2VsbC4gVGhlIGFwcGxpY2F0aW9uIGl0c2VsZiBpcyBh
IHZlcnkgc2ltcGxlIGNtYWtlIHByb2plY3QuIFRoZSByZWxldmFudCBiaXRzIG9mIHRoZSByZWNp
cGUgZmlsZSBsb29rIHNvbWV0aGluZyBsaWtlIHRoaXM6DQpgYGANCjxzdGFuZGFyZCB2YXJpYWJs
ZXMgZ28gaGVyZT4NCg0KU1JDX1VSSSA9ICI8Z2l0IGFkZHJlc3MgZ29lcyBoZXJlPiINCg0KUyA9
ICIke1dPUktESVJ9L2dpdCINCg0KaW5oZXJpdCBzeXN0ZW1kDQpTWVNURU1EX0FVVE9fRU5BQkxF
ID0gImVuYWJsZSINCiMgdGhlIHNlcnZpY2UgZmlsZXMgYXJlIHN0b3JlZCBpbiB0aGUgZ2l0IHJl
cG9zaXRvcnkgaW4gdGhlIG1pc2MgZm9sZGVyDQpTWVNURU1EX1NFUlZJQ0VfJHtQTn0gPSAiJHtT
fS9taXNjL3Rlc3RhcHBALnNlcnZpY2UgJHtTfS9taXNjL3Rlc3RhcHAtZXh0cmFALnNlcnZpY2U8
bWFpbHRvOiQlN2JTJTdkL21pc2MvdGVzdGFwcEAuc2VydmljZSUyMCQlN2JTJTdkL21pc2MvdGVz
dGFwcC1leHRyYUAuc2VydmljZT4iDQoNCmRvX2luc3RhbGxfYXBwZW5kKCkgew0KICAgIGluc3Rh
bGwgLWQgJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0NCiAgICBpbnN0YWxsIC1tIDA2NDQg
JHtTfS9taXNjL3Rlc3RhcHBALnNlcnZpY2U8bWFpbHRvOiQlN2JTJTdkL21pc2MvdGVzdGFwcEAu
c2VydmljZT4gJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0vDQogICAgaW5zdGFsbCAtbSAw
NjQ0ICR7U30vbWlzYy90ZXN0YXBwLWV4dHJhQC5zZXJ2aWNlPG1haWx0bzokJTdiUyU3ZC9taXNj
L3Rlc3RhcHAtZXh0cmFALnNlcnZpY2U+ICR7RH0ke3N5c3RlbWRfdW5pdGRpcn0vc3lzdGVtLw0K
fQ0KDQppbmhlcml0IGNtYWtlDQpgYGANCg0KV2hlbiBpIHRyeSB0byBkbyBkbyBgYml0YmFrZSB0
ZXN0YXBwYCB0byB0cnkgb3V0IHRoZSByZWNpcGUsIEkgZ2V0IGFuIGVycm9yIHRlbGxpbmcgbWUg
dGhhdDogU1lTVEVNRF9TRVJWSUNFX3Rlc3RhcHAgdmFsdWUgL3Byb2plY3RzL3Bva3kvYnVpbGQv
dG1wL3dvcmsvY29yZTItNjQtcG9reS1saW51eC90ZXN0YXBwLzAuMS1yMC9naXQvbWlzYy90ZXN0
YXBwQC5zZXJ2aWNlIGRvZXMgbm90IGV4aXN0Lg0KDQpJJ20gdXNpbmcgeW9jdG8gMy4yLjEgaWYg
dGhhdCBtYXR0ZXJzLg0KLVBhdWwgV2lja3MNCg==

--_000_TU4PR8401MB115129566A42CFB31AAA2700828E9TU4PR8401MB1151_
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
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCglmb250LXNpemU6MTEuMHB0Ow0KCWZvbnQt
ZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCmE6bGluaywgc3Bhbi5Nc29IeXBlcmxpbmsN
Cgl7bXNvLXN0eWxlLXByaW9yaXR5Ojk5Ow0KCWNvbG9yOiMwNTYzQzE7DQoJdGV4dC1kZWNvcmF0
aW9uOnVuZGVybGluZTt9DQpzcGFuLkVtYWlsU3R5bGUxOQ0KCXttc28tc3R5bGUtdHlwZTpwZXJz
b25hbC1yZXBseTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3
aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZhdWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5
Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJpIixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9u
MQ0KCXtzaXplOjguNWluIDExLjBpbjsNCgltYXJnaW46MS4waW4gMS4waW4gMS4waW4gMS4waW47
fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRTZWN0aW9uMTt9DQotLT48L3N0eWxlPjwh
LS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVkZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3Bp
ZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0tPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1s
Pg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0KPG86aWRtYXAgdjpleHQ9ImVkaXQiIGRh
dGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8
Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIgdmxpbms9IiM5NTRGNzIiIHN0eWxlPSJ3
b3JkLXdyYXA6YnJlYWstd29yZCI+DQo8ZGl2IGNsYXNzPSJXb3JkU2VjdGlvbjEiPg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+U1lTVEVNRF9TRVJWSUNFXyR7UE59IHNob3VsZCBqdXN0IGJlIHNldCB0
byB0aGUgc2VydmljZSBuYW1lLCBub3QgdGhlIGZ1bGwgcGF0aC4gU2/igKY8YnI+DQpTWVNURU1E
X1NFUlZJQ0VfJHtQTn0gPSAmcXVvdDt0ZXN0YXBwLWV4dHJhQC5zZXJ2aWNlJnF1b3Q7PGJyPg0K
PGJyPg0KQWxzbywgY29uc2lkZXIgdXNpbmcgJHtzeXN0ZW1kX3N5c3RlbV91bml0ZGlyfSBpbnN0
ZWFkIG9mICR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW08YnI+DQo8YnI+DQpDaGVlcnMhPGJyPg0K
LVNlYW4gTWNLYXk8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPGRpdiBzdHlsZT0iYm9yZGVyOm5vbmU7Ym9yZGVyLXRvcDpzb2xpZCAj
RTFFMUUxIDEuMHB0O3BhZGRpbmc6My4wcHQgMGluIDBpbiAwaW4iPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PGI+RnJvbTo8L2I+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgJmx0O3lvY3Rv
QGxpc3RzLnlvY3RvcHJvamVjdC5vcmcmZ3Q7DQo8Yj5PbiBCZWhhbGYgT2YgPC9iPlBhdWwgV2lj
a3M8YnI+DQo8Yj5TZW50OjwvYj4gTW9uZGF5LCBGZWJydWFyeSA4LCAyMDIxIDU6NDQgUE08YnI+
DQo8Yj5Ubzo8L2I+IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc8YnI+DQo8Yj5TdWJqZWN0
OjwvYj4gW3lvY3RvXSBJbnN0YWxsIHN5c3RlbWQgdW5pdCBmaWxlIGludG8gaW1hZ2UgZnJvbSBz
b3VyY2U/PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+
Jm5ic3A7PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiIHN0eWxlPSJtYXJn
aW4tYm90dG9tOjEyLjBwdCI+SSd2ZSBnb3QgYW4gYXBwbGljYXRpb24gdGhhdCBJJ2QgbGlrZSB0
byBpbnN0YWxsIGludG8gbXkgY3VzdG9tIGltYWdlIGFuZCB0aGF0IGFwcGxpY2F0aW9uJm5ic3A7
aGFzIGEgY291cGxlIG9mIGFzc29jaWF0ZWQgc3lzdGVtZCB1bml0IGZpbGVzIHRoYXQgc2hvdWxk
IGJlIGluc3RhbGxlZCBhcyB3ZWxsLiBUaGUgYXBwbGljYXRpb24gaXRzZWxmIGlzIGEgdmVyeSBz
aW1wbGUNCiBjbWFrZSBwcm9qZWN0LiBUaGUgcmVsZXZhbnQgYml0cyBvZiB0aGUgcmVjaXBlIGZp
bGUgbG9vayBzb21ldGhpbmcgbGlrZSB0aGlzOjxvOnA+PC9vOnA+PC9wPg0KPGRpdj4NCjxwIGNs
YXNzPSJNc29Ob3JtYWwiPmBgYDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xh
c3M9Ik1zb05vcm1hbCI+Jmx0O3N0YW5kYXJkIHZhcmlhYmxlcyBnbyBoZXJlJmd0Ozxicj4NCjxi
cj4NClNSQ19VUkkgPSAmcXVvdDsmbHQ7Z2l0IGFkZHJlc3MgZ29lcyBoZXJlJmd0OyZxdW90Ozxi
cj4NCjxicj4NClMgPSAmcXVvdDske1dPUktESVJ9L2dpdCZxdW90Ozxicj4NCjxicj4NCmluaGVy
aXQgc3lzdGVtZDxicj4NClNZU1RFTURfQVVUT19FTkFCTEUgPSAmcXVvdDtlbmFibGUmcXVvdDs8
bzpwPjwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPiMgdGhl
IHNlcnZpY2UgZmlsZXMgYXJlIHN0b3JlZCBpbiB0aGUgZ2l0IHJlcG9zaXRvcnkmbmJzcDtpbiB0
aGUgbWlzYyBmb2xkZXI8YnI+DQpTWVNURU1EX1NFUlZJQ0VfJHtQTn0gPSAmcXVvdDs8YSBocmVm
PSJtYWlsdG86JCU3YlMlN2QvbWlzYy90ZXN0YXBwQC5zZXJ2aWNlJTIwJCU3YlMlN2QvbWlzYy90
ZXN0YXBwLWV4dHJhQC5zZXJ2aWNlIj4ke1N9L21pc2MvdGVzdGFwcEAuc2VydmljZSAke1N9L21p
c2MvdGVzdGFwcC1leHRyYUAuc2VydmljZTwvYT4mcXVvdDs8YnI+DQo8YnI+DQpkb19pbnN0YWxs
X2FwcGVuZCgpIHs8YnI+DQombmJzcDsgJm5ic3A7IGluc3RhbGwgLWQgJHtEfSR7c3lzdGVtZF91
bml0ZGlyfS9zeXN0ZW08YnI+DQombmJzcDsgJm5ic3A7IGluc3RhbGwgLW0gMDY0NCA8YSBocmVm
PSJtYWlsdG86JCU3YlMlN2QvbWlzYy90ZXN0YXBwQC5zZXJ2aWNlIj4ke1N9L21pc2MvdGVzdGFw
cEAuc2VydmljZTwvYT4gJHtEfSR7c3lzdGVtZF91bml0ZGlyfS9zeXN0ZW0vPG86cD48L286cD48
L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj4mbmJzcDsgJm5ic3A7IGlu
c3RhbGwgLW0gMDY0NCA8YSBocmVmPSJtYWlsdG86JCU3YlMlN2QvbWlzYy90ZXN0YXBwLWV4dHJh
QC5zZXJ2aWNlIj4NCiR7U30vbWlzYy90ZXN0YXBwLWV4dHJhQC5zZXJ2aWNlPC9hPiAke0R9JHtz
eXN0ZW1kX3VuaXRkaXJ9L3N5c3RlbS88YnI+DQp9PGJyPg0KPGJyPg0KaW5oZXJpdCBjbWFrZTxi
cj4NCmBgYDxvOnA+PC9vOnA+PC9wPg0KPC9kaXY+DQo8ZGl2Pg0KPHAgY2xhc3M9Ik1zb05vcm1h
bCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9y
bWFsIj5XaGVuIGkgdHJ5IHRvIGRvIGRvIGBiaXRiYWtlIHRlc3RhcHBgIHRvIHRyeSBvdXQgdGhl
IHJlY2lwZSwgSSBnZXQgYW4gZXJyb3IgdGVsbGluZyBtZSB0aGF0OiBTWVNURU1EX1NFUlZJQ0Vf
dGVzdGFwcCB2YWx1ZSAvcHJvamVjdHMvcG9reS9idWlsZC90bXAvd29yay9jb3JlMi02NC1wb2t5
LWxpbnV4L3Rlc3RhcHAvMC4xLXIwL2dpdC9taXNjL3Rlc3RhcHBALnNlcnZpY2UgZG9lcyBub3Qg
ZXhpc3QuPG86cD48L286cD48L3A+DQo8L2Rpdj4NCjxkaXY+DQo8cCBjbGFzcz0iTXNvTm9ybWFs
Ij48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPkknbSB1c2luZyB5b2N0byAzLjIuMSBpZiB0aGF0IG1hdHRlcnMuJm5ic3A7PG86cD48L286
cD48L3A+DQo8ZGl2Pg0KPGRpdj4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPi1QYXVsIFdpY2tzPG86
cD48L286cD48L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9i
b2R5Pg0KPC9odG1sPg0K

--_000_TU4PR8401MB115129566A42CFB31AAA2700828E9TU4PR8401MB1151_--
