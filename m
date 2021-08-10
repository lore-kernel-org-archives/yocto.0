Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.83])
 by mx.groups.io with SMTP id smtpd.web08.2793.1628612184245028962
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Aug 2021 09:16:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sierrawireless.com header.s=selector1 header.b=Oai8vt8n;
 spf=pass (domain: sierrawireless.com, ip: 40.107.93.83, mailfrom: dwatkins@sierrawireless.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RUQLKB52Jk8fvud0KcUgMT4jSBX33rscw3C8KY7Ni5gZhEzUC1q2pyWxFXjittbo+ic141stJjkXh2RTp/fcoPKlb1edRdqqO9YisRNtDBaEhyq2HVbBF8MSCxF0Odnq6TzwdZ609avoL4zFGaLpk5V5/BoE0eolbznAydgDdFaM/y7kwUSNZfzk8kzwhybocab0BVRRkLWJXsM6lbJLe2gIpreBcfli+b/LcjaQNjeFesWcAZ0Z7/5mpFPncGwVjJClirr4egurowq94TQhp6CpjMv3unGLUoKJEaFp+xFcf5rQPZ0XNlCs30+cth6dBoZ3sSC/07lgwpMrROgOSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYAwpYjs9/lUi3yOc23JB0a9PxVQ2teDMKsa4s/cSBY=;
 b=jZA8dmOXHAIo1Ei2+qM9sCOnqMLkzCC8CmD61ArftsGtiU4IGBujgTSUldhs5BL2qMhFOf/5oWbKIrid+YxqHGSC2+rB2tUJsAda0gV05aTHvtuuXVTwFk67dhLBNO08f63cCYUZnmYkCfC/vrxuPNyewqCQJIaRolH/9q6QB5l3/9IU/HDzFDEHaE+6/H8m0vIMoekP4aLfKl3JOaGnfUFX0ZKaa80eC/Tj9kO+7ok5mOFWC7nIggp77v8LU4CSDDw+ajFbUgRnL8meB6Pgi5VB/i1ct1jQIFkwcUNar80zm+95bh/Uufs+Q3VrzJ2I4jluO/hR54Xyj9vfXajd3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=sierrawireless.com; dmarc=pass action=none
 header.from=sierrawireless.com; dkim=pass header.d=sierrawireless.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sierrawireless.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LYAwpYjs9/lUi3yOc23JB0a9PxVQ2teDMKsa4s/cSBY=;
 b=Oai8vt8nfM9yV9emm20QS6jZPmCekxE24NW7afo01rCsIcGWprtKig15h2s3YG6Fivo+CQutWlIDzhaW2NNNKIYyhpa84BWxSIGkI60dU+TeH8yD/JBSBirubzR4nVna7j2Apkz10wuG36Qrppsc2Z0p+AIG/sqzXGMZzyyuv2k=
Received: from MWHPR02MB2429.namprd02.prod.outlook.com (2603:10b6:300:40::7)
 by CO1PR02MB8604.namprd02.prod.outlook.com (2603:10b6:303:15f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16; Tue, 10 Aug
 2021 16:16:22 +0000
Received: from MWHPR02MB2429.namprd02.prod.outlook.com
 ([fe80::e92a:cd1f:3859:62dc]) by MWHPR02MB2429.namprd02.prod.outlook.com
 ([fe80::e92a:cd1f:3859:62dc%3]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 16:16:22 +0000
From: "Darcy Watkins" <dwatkins@sierrawireless.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: New Override Syntax
Thread-Topic: New Override Syntax
Thread-Index: AQHXjgMP0Uyvi3r9pkiDaq5EE8q73w==
Date: Tue, 10 Aug 2021 16:16:21 +0000
Message-ID: <E360C062-0BA9-48C7-A776-2ED9259143C8@sierrawireless.com>
Accept-Language: en-CA, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/16.51.21071101
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=sierrawireless.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ba87d055-b9c2-4053-59ee-08d95c1a31a7
x-ms-traffictypediagnostic: CO1PR02MB8604:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <CO1PR02MB860465C7E665E34FA9B462E2B2F79@CO1PR02MB8604.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 pb/sGQHs8GHlmGsynd/5w0gibCKEr54TCYW5/g4PFVS1DVKvo3o6xaSHOM+w6WtjKxcejDfRevKbrFFC+XVn2DzA1zDBWbeoukS8W4wfYV5S2hZunREZeLG6RpY7pFQ86TyZWJkwjlFxygjPsCOqV1XkQMp+nCTnv0XlYeskGA5TGcEQbfhK2kgig2CWNd//1YlhkNemLrjOR3uuQkca/5OhsUh7oIha3WzOufQP8gXSiiYw+zMJtUe1hthYiV9VpEZKnjqplmNuiSO0CGgO+PU4ZpiX3YxSxzmzPM0K6rBBwm/6zt9JC1hGBIcM3DkVvY7Q1kg7kKB1PTOxR1RaenJEoYRbtLzi8rQKQNLrYcCGeIpBkU9vhm6D70GjUVjJuhdrXq3ZPCCKE9KljL6oLbkXiIuNz+bTX0kZ+taIQas1qUxYBKr4R7JLk6K93S6ZXac2Vx9OmNTDMuq1Nww2XErNvMqKFsyar9W8rylpQtobkK3qfLO6iqWQGFc/nylGhJkG5Ub9aeynQ1IRpz5o7UfPo4QVn578kbWhtS22lvfVc+voeA6rsVeQ149FSDR3Zfdk5Lku0/O3a3azJA0xZVr/hklZIk1ef/muSt+GpMyjI58ZbVJxvo12efDtPgBXSm/59cgX9WjN0EeqXlDxDE7CRttIgSNbjAedkqeKP7eiAkxUHPu0SRKR4ZzjsQAo2RiuRKMX2cZX6Z9eMp/np/S3u8ETEoqEZLQFBcfK/6ujYDzjvLtgCJgRBB5Q6gBDET0Y0rslumnsNesTzVLxAIZ8iw4rgLVXnMOFMOUb+ow99Nqlj5OlbHCYteJr6Ia7
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MWHPR02MB2429.namprd02.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(376002)(346002)(396003)(39850400004)(136003)(66476007)(66556008)(66946007)(66446008)(64756008)(6506007)(38070700005)(76116006)(6916009)(7116003)(2906002)(5660300002)(4744005)(8936002)(3480700007)(33656002)(8676002)(186003)(9326002)(478600001)(316002)(6512007)(122000001)(2616005)(6486002)(71200400001)(86362001)(38100700002)(166002)(36756003)(45980500001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?utf-8?B?Vy9Vd2Q5aUc4RFVKOERPTERnMnZuRklrNG1wRi9yNjlFVnM5R0ptQm1uNkNh?=
 =?utf-8?B?azlwQWRqdG4zMjJnS2tqQ0E4elgvVDZ0QlFiMzdvQW1Vd0doYXpXMGtia2FG?=
 =?utf-8?B?bmRwWENhM0wxL1JheFNZZnppL0tNMVRwbWR2UnFnOVVFVmR0UzFIREdIUk44?=
 =?utf-8?B?dXpwNk1vRTgxYUswblJwRWcrS1drbHd1YXpNWUVzNWRsV0ZzRDZSa1ZlNStH?=
 =?utf-8?B?R3RUMHhpZWpxODdraVJHWkVCRXF3cGpIZGpoSHluRURvVWlZWVBuc1UzeGIx?=
 =?utf-8?B?bW5ZLzhDT0NMcmtnSkh2QUM0UjFaLytGUWI3N1BObUlKaG9JdFZUbXNDRnRX?=
 =?utf-8?B?VXpxLyswRng2RFJMMmo2bkxMcWk1Qm9SdnFqYlM1VVJmUVBJMHM3YXMxcmdp?=
 =?utf-8?B?ajY4RzNjbTVrZkZPWENSN1JXWDI5b1ZzL3hwdDFQNjByeXJ3a0NmdjFaazQr?=
 =?utf-8?B?K0VCU3dZa1VjSXBFNW93OVd3Zy8rbW5BYzA2OFd0Y1lSWkQ4QjlSdFZISlhX?=
 =?utf-8?B?eXFSeW1uZmhHZ1VwS2xkWHRkRG9qU1FrVWRwa0I0ZWt2azgrb3cxT2JwcXpm?=
 =?utf-8?B?SkxRZVQycVhoMWRsZUcycnh6bzJYV2JGWnp0TEJsT0Y4T1NhNW83c0RJT2RL?=
 =?utf-8?B?RjZOY2ZVajJLNEVzTEY1akZYeGdKYlo3VXltMU9mV2NjOUpNYjVzTGY2YlEy?=
 =?utf-8?B?T2FZZkNsVDNabmtDSWNUZlVueEdCKzlFRXo3V3ZaUHRyekpkL2dsdWtaaGJY?=
 =?utf-8?B?T3hhZEo0T1pUcEVOcnV0bEVlby8wMzgyaCtQU0g3RlZPSVRxSG11MEl1MWhq?=
 =?utf-8?B?bVpqWE4rZi9aSVJqeXc2VUNOSGhvOWZnZ3F4NlpZeXNiTk0vWHhRVzdjVmho?=
 =?utf-8?B?c2x0eUIzdzJzamhramlxd0J3aE1ZL2orWUlrNStyc0J1Z0Jtd0daS25vc0M0?=
 =?utf-8?B?cU5RMUxiaXFVVytrK1VOaWg5M0JwT053Q3k5N0RBM2xHbStacXFMb09GS0Vz?=
 =?utf-8?B?cjJldndaWDNmTlBxNDdGVmNYYnU2S3BYc3NIbk5DUE03cUNJWXJVYnFJdGts?=
 =?utf-8?B?bU54NjVlWUpsTFV3ejNKbkxOYWxZWTFJNjA5Ukl2dmtPcjdTWU05WU5ocEYr?=
 =?utf-8?B?b0tldnF0bk1kS0krSzVDMERGK0JodFp2NE4vaGZvL04wVzZ5OWNIem1YbTYw?=
 =?utf-8?B?UHZUb0x2ZTR1ZVAwMy9HMzB5NmtpaWdkRTZQZ1FramkrZm5hM1JBdzZ6WHZn?=
 =?utf-8?B?VjFiQUV3RHBpN1VDV3dTSXpqaHZlOGhxTFRjRkZPelJyWTdid1dRMHJYYmR6?=
 =?utf-8?B?dDFySVcxVkNpUzF1R1M5U0JJaVNFSjlHY3lWRUJudk9vS1lGY2RNS1pNMUho?=
 =?utf-8?B?UzJ3OS9Xa29uWGdjbDZCY3FQVy9vQWFWNTB3Qmo0RHB5OExwZHZKaXhkMXda?=
 =?utf-8?B?OEp5WEE1bTA2ZVRFbFhOT1h3OHM4amJSeUNuaEJUcXk3c3NqMXlUbXBaclBY?=
 =?utf-8?B?NlF6WU9DTmVkdFphZzZzZ0FYaUl1cDlvMkVnUkZGbzFNdGZheVJwem9sUjls?=
 =?utf-8?B?ZWJNVGpsdGtqREN1cHJtL0hSdkJLc3JHTGtJZVorVXZQNXl4NTlDU2VLQnN4?=
 =?utf-8?B?ZURZa2kyWFZ3ZThYZTJtOVc5WVd5WVREOG80a2QrRjJoNmRJQXhXOHBGMlY3?=
 =?utf-8?B?UWlqeEtCSjVmRnhkVThya09IOE5XcitjRVpYVzg3bXpQKzlIbmVRRDhzTW5W?=
 =?utf-8?B?SHJSUEUzVU54bDVPaVM3bUduSWN0TFB3SXlCdFZwYnpmTk5tUW5Gb1lZbVhB?=
 =?utf-8?B?S01jNUVBanM2WnU2VW5MNEgvRktBY1htWk1YR1QwSWZMZmN4VWR3MjErWDNl?=
 =?utf-8?Q?Bl5UZs3N77Upb?=
MIME-Version: 1.0
X-OriginatorOrg: sierrawireless.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR02MB2429.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba87d055-b9c2-4053-59ee-08d95c1a31a7
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 16:16:21.9472
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08059a4c-2486-43dd-89e3-3a747e0dcbe8
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bwyguR7n82Kl2bNZFQd5Ltt/YKIfrQ4aia4Vktu3U8k62b3huaqItvy8PXQVBIQJDoHdIDSq+bnJMewhc6RAbb9LJCRjACIeqAdiuJaxFwo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR02MB8604
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_E360C0620BA948C7A7762ED9259143C8sierrawirelesscom_"

--_000_E360C0620BA948C7A7762ED9259143C8sierrawirelesscom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkRvZXMgYW55b25lIGtub3cgaG93IGxvbmcgKG9yIGhvdyBtYW55IHJlbGVhc2VzKSB0
aGF0IHRoZSBvbGQgb3ZlcnJpZGUgc3ludGF4IHdpbGwgc3RpbGwgYmUgc3VwcG9ydGVkPyAgKExp
a2UgYSBkZXByZWNhdGlvbiBFT0wgY3ljbGUpLg0KDQpBIGNvcm9sbGFyeSBxdWVzdGlvbjogSG93
IGZhciBiYWNrIGluIG9sZCByZWxlYXNlcyBpcyB0aGUgbmV3IHN5bnRheCBzdXBwb3J0ZWQ/DQoN
ClRoaXMgcG90ZW50aWFsbHkgYWZmZWN0cyBsYXllcnMgdGhhdCBoYXZlIGEgc2luZ2xlIGJyYW5j
aCB0aGF0IHN1cHBvcnQgbXVsdGlwbGUgdmVyc2lvbnMgb2YgWW9jdG8vT0UuDQoNClRoYW5rcyEN
Cg0KDQoNClJlZ2FyZHMsDQoNCkRhcmN5DQoNCkRhcmN5IFdhdGtpbnMgOjogIFNlbmlvciBTdGFm
ZiBFbmdpbmVlciwgRmlybXdhcmUNCg0KU0lFUlJBIFdJUkVMRVNTDQpEaXJlY3QgICsxIDYwNCAy
MzMgNzk4OSAgIDo6ICBGYXggICsxIDYwNCAyMzEgMTEwOSAgOjogIE1haW4gICsxIDYwNCAyMzEg
MTEwMA0KMTM4MTEgV2lyZWxlc3MgV2F5ICA6OiBSaWNobW9uZCwgQkMgQ2FuYWRhIFY2ViAzQTQN
CltNNF0NCmR3YXRraW5zQHNpZXJyYXdpcmVsZXNzLmNvbTxtYWlsdG86ZHdhdGtpbnNAc2llcnJh
d2lyZWxlc3MuY29tPiA6OiB3d3cuc2llcnJhd2lyZWxlc3MuY29tPGh0dHA6Ly93d3cuc2llcnJh
d2lyZWxlc3MuY29tLz4NCg==

--_000_E360C0620BA948C7A7762ED9259143C8sierrawirelesscom_
Content-Type: text/html; charset="utf-8"
Content-ID: <1600F745A6EC994A958F8628B7FDDB9D@namprd02.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6bz0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6b2ZmaWNlIiB4
bWxuczp3PSJ1cm46c2NoZW1hcy1taWNyb3NvZnQtY29tOm9mZmljZTp3b3JkIiB4bWxuczptPSJo
dHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL29mZmljZS8yMDA0LzEyL29tbWwiIHhtbG5zPSJo
dHRwOi8vd3d3LnczLm9yZy9UUi9SRUMtaHRtbDQwIj4NCjxoZWFkPg0KPG1ldGEgaHR0cC1lcXVp
dj0iQ29udGVudC1UeXBlIiBjb250ZW50PSJ0ZXh0L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPg0KPG1l
dGEgbmFtZT0iR2VuZXJhdG9yIiBjb250ZW50PSJNaWNyb3NvZnQgV29yZCAxNSAoZmlsdGVyZWQg
bWVkaXVtKSI+DQo8c3R5bGU+PCEtLQ0KLyogRm9udCBEZWZpbml0aW9ucyAqLw0KQGZvbnQtZmFj
ZQ0KCXtmb250LWZhbWlseToiQ2FtYnJpYSBNYXRoIjsNCglwYW5vc2UtMToyIDQgNSAzIDUgNCA2
IDMgMiA0O30NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6Q2FsaWJyaTsNCglwYW5vc2UtMToy
IDE1IDUgMiAyIDIgNCAzIDIgNDt9DQovKiBTdHlsZSBEZWZpbml0aW9ucyAqLw0KcC5Nc29Ob3Jt
YWwsIGxpLk1zb05vcm1hbCwgZGl2Lk1zb05vcm1hbA0KCXttYXJnaW46MGNtOw0KCWZvbnQtc2l6
ZToxMS4wcHQ7DQoJZm9udC1mYW1pbHk6IkNhbGlicmkiLHNhbnMtc2VyaWY7fQ0Kc3Bhbi5FbWFp
bFN0eWxlMTcNCgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWls
eToiQ2FsaWJyaSIsc2Fucy1zZXJpZjsNCgljb2xvcjp3aW5kb3d0ZXh0O30NCi5Nc29DaHBEZWZh
dWx0DQoJe21zby1zdHlsZS10eXBlOmV4cG9ydC1vbmx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmO30NCkBwYWdlIFdvcmRTZWN0aW9uMQ0KCXtzaXplOjYxMi4wcHQgNzkyLjBw
dDsNCgltYXJnaW46NzIuMHB0IDcyLjBwdCA3Mi4wcHQgNzIuMHB0O30NCmRpdi5Xb3JkU2VjdGlv
bjENCgl7cGFnZTpXb3JkU2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT4NCjwvaGVhZD4NCjxib2R5IGxh
bmc9IkVOLUNBIiBsaW5rPSIjMDU2M0MxIiB2bGluaz0iIzk1NEY3MiIgc3R5bGU9IndvcmQtd3Jh
cDpicmVhay13b3JkIj4NCjxkaXYgY2xhc3M9IldvcmRTZWN0aW9uMSI+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj5IaSw8bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5i
c3A7PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+RG9lcyBhbnlvbmUga25vdyBob3cg
bG9uZyAob3IgaG93IG1hbnkgcmVsZWFzZXMpIHRoYXQgdGhlIG9sZCBvdmVycmlkZSBzeW50YXgg
d2lsbCBzdGlsbCBiZSBzdXBwb3J0ZWQ/Jm5ic3A7IChMaWtlIGEgZGVwcmVjYXRpb24gRU9MIGN5
Y2xlKS48bzpwPjwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxvOnA+Jm5ic3A7PC9v
OnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+QSBjb3JvbGxhcnkgcXVlc3Rpb246IEhvdyBm
YXIgYmFjayBpbiBvbGQgcmVsZWFzZXMgaXMgdGhlIG5ldyBzeW50YXggc3VwcG9ydGVkPzxvOnA+
PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGlzIHBvdGVudGlhbGx5IGFmZmVjdHMgbGF5ZXJzIHRoYXQg
aGF2ZSBhIHNpbmdsZSBicmFuY2ggdGhhdCBzdXBwb3J0IG11bHRpcGxlIHZlcnNpb25zIG9mIFlv
Y3RvL09FLjxvOnA+PC9vOnA+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8
L286cD48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj5UaGFua3MhPG86cD48L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjxwIGNsYXNzPSJNc29O
b3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4mbmJzcDs8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48c3BhbiBsYW5nPSJFTi1VUyI+Jm5ic3A7PC9zcGFuPjwv
Yj48c3BhbiBsYW5nPSJFTi1VUyI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1z
b05vcm1hbCI+PGI+PHNwYW4gbGFuZz0iRU4tVVMiPlJlZ2FyZHMsPC9zcGFuPjwvYj48c3BhbiBs
YW5nPSJFTi1VUyI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+
PGI+PHNwYW4gbGFuZz0iRU4tVVMiPiZuYnNwOzwvc3Bhbj48L2I+PHNwYW4gbGFuZz0iRU4tVVMi
PjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIGxh
bmc9IkVOLVVTIj5EYXJjeTwvc3Bhbj48L2I+PHNwYW4gbGFuZz0iRU4tVVMiPjxvOnA+PC9vOnA+
PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxiPjxzcGFuIGxhbmc9IkVOLVVTIj4m
bmJzcDs8L3NwYW4+PC9iPjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+
DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48Yj48c3BhbiBsYW5nPSJFTi1VUyI+RGFyY3kgV2F0a2lu
cyA6OiZuYnNwOyZuYnNwO1NlbmlvciBTdGFmZiBFbmdpbmVlciwgRmlybXdhcmU8L3NwYW4+PC9i
PjxzcGFuIGxhbmc9IkVOLVVTIj48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNv
Tm9ybWFsIj48Yj48c3BhbiBsYW5nPSJFTi1VUyI+Jm5ic3A7PC9zcGFuPjwvYj48c3BhbiBsYW5n
PSJFTi1VUyI+PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PGI+
PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjpyZWQiPlNJRVJSQSBXSVJFTEVTUzwvc3Bh
bj48L2I+PHNwYW4gbGFuZz0iRU4tVVMiIHN0eWxlPSJjb2xvcjpyZWQiPjxvOnA+PC9vOnA+PC9z
cGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj5EaXJlY3Qm
bmJzcDsgKzEgNjA0IDIzMyA3OTg5Jm5ic3A7ICZuYnNwOzo6Jm5ic3A7Jm5ic3A7RmF4Jm5ic3A7
Jm5ic3A7KzEgNjA0IDIzMSAxMTA5Jm5ic3A7IDo6Jm5ic3A7Jm5ic3A7TWFpbiZuYnNwOyZuYnNw
OysxIDYwNCAyMzEgMTEwMDxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIj4xMzgxMSBXaXJlbGVzcyBXYXkmbmJzcDsgOjombmJzcDtS
aWNobW9uZCwgQkMgQ2FuYWRhIFY2ViAzQTQ8bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFz
cz0iTXNvTm9ybWFsIj48c3BhbiBsYW5nPSJFTi1VUyI+W000XTxvOnA+PC9vOnA+PC9zcGFuPjwv
cD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIGxhbmc9IkVOLVVTIj48YSBocmVmPSJtYWls
dG86ZHdhdGtpbnNAc2llcnJhd2lyZWxlc3MuY29tIj48c3BhbiBzdHlsZT0iY29sb3I6IzA1NjND
MSI+ZHdhdGtpbnNAc2llcnJhd2lyZWxlc3MuY29tPC9zcGFuPjwvYT4mbmJzcDs6OiZuYnNwOzxh
IGhyZWY9Imh0dHA6Ly93d3cuc2llcnJhd2lyZWxlc3MuY29tLyI+PHNwYW4gc3R5bGU9ImNvbG9y
OiMwNTYzQzEiPnd3dy5zaWVycmF3aXJlbGVzcy5jb208L3NwYW4+PC9hPg0KPC9zcGFuPjxvOnA+
PC9vOnA+PC9wPg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_E360C0620BA948C7A7762ED9259143C8sierrawirelesscom_--
