Received: from FRA01-MR2-obe.outbound.protection.outlook.com (FRA01-MR2-obe.outbound.protection.outlook.com [40.107.9.54])
 by mx.groups.io with SMTP id smtpd.web10.31133.1590412842946027110
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 May 2020 06:20:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ext.actia.fr header.s=selector1 header.b=Vl5Ck4a7;
 spf=pass (domain: ext.actia.fr, ip: 40.107.9.54, mailfrom: jean-francois.darocha@ext.actia.fr)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDeOs4bcD1jdH2dY/xfeBphP0RePs90wNQQvuxD8lYFRAe6xdy4rf1yKSKgGfKxZiwKl9GvUwJi+jTRi/GkIxYnRamRePjtqPo9/mR32BolZVcF+qeR512qY+oQjrxSf0ds6HUWqx/vGPgnFxp6UILSrWC1sH09tZ4p/NE5oJWqcXcUStDM2pSl50oLaauRfLr67CiovkNgDakVSpACf0qshAb57QLN4EdAbTpnv3W78ibuHDcefDjWc/wmhs2Vk6+W5MLLU2HZtMxvVXycsGL9yNhBueWWcBXgjYLK155cgRjz2eKWLX7IVnE2l2mVF19QHzKR7ZN6k4mz/ehELpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c0ZnYOfgFEouIlOXTraazZga8/0tbiuTSAHwCQMqpaA=;
 b=NNJGkg9PXFbNHpjQLsu7JymyZU7dvELRzgFKaKUKd9wvxY4qUy8MOK661Z9nIilCipvaYQ6P/nNhBbgZ89owxmX0WvKEnrOC9jxi0tsh0JlypHULObTEBetogyEEFXzG7Z8IoPUNvPcnxg5jNBUS8wd0SfWI4wEoGZO9+9uclafBeGthKFF+wV6JODmcJ78Wzsmxf4Jbs06vYxqeddpKY3SqDg7M0zsXm1R7hqcXLAzWtINZWmkum27shKQvU9mZ5InoF7QD1ZfXcAeXG/+0Tdvs1+TZ56P0sGUI+RYfEht4v1Bu7OqAVf8pmKlLss5ByqZQ4kOQ4G/rhyJfcVBu5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=ext.actia.fr; dmarc=pass action=none header.from=ext.actia.fr;
 dkim=pass header.d=ext.actia.fr; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ext.actia.fr;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=c0ZnYOfgFEouIlOXTraazZga8/0tbiuTSAHwCQMqpaA=;
 b=Vl5Ck4a73nCqPJH+BvHjrxFGoNuAUKc9nryfUgvk57JOByhI/+xJ/27XVnV48dy43uG+MlnBSwcAUwVAYbTvPZs4zguEFCPxhMHVwc1XUBxKtbAEf7CqKPVFg4ZHz1elV2GE65F50lUs41g7w/pKP5hAyLEvvH0yzZXh0mAgxiI=
Received: from PR2P264MB0272.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101:9::12) by
 PR2P264MB0718.FRAP264.PROD.OUTLOOK.COM (2603:10a6:101:8::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3021.23; Mon, 25 May 2020 13:20:40 +0000
Received: from PR2P264MB0272.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a4d8:81bd:40b4:39bf]) by PR2P264MB0272.FRAP264.PROD.OUTLOOK.COM
 ([fe80::a4d8:81bd:40b4:39bf%6]) with mapi id 15.20.3021.029; Mon, 25 May 2020
 13:20:40 +0000
From: =?UTF-8?B?SmVhbiBGcmFuw6dvaXMgREFST0NIQQ==?= <jean-francois.darocha@ext.actia.fr>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: =?utf-8?B?SmVhbiBGcmFuw6dvaXMgREFST0NIQQ==?=
	<jean-francois.darocha@ext.actia.fr>
Subject: Please unsubscribe me from the mailing list.
Thread-Topic: Please unsubscribe me from the mailing list.
Thread-Index: AdYyl0iMnnOXmxlyRnqD/i1Dlatcpg==
Date: Mon, 25 May 2020 13:20:40 +0000
Message-ID: 
 <PR2P264MB027279920C9CE5C7C9A35F7085B30@PR2P264MB0272.FRAP264.PROD.OUTLOOK.COM>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=ext.actia.fr;
x-originating-ip: [212.194.216.83]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 82f97dfb-58dd-4e99-f66e-08d800ae6bf2
x-ms-traffictypediagnostic: PR2P264MB0718:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: 
 <PR2P264MB07189608D7116B7148EF3E8B85B30@PR2P264MB0718.FRAP264.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-forefront-prvs: 0414DF926F
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 dBpQDL89+mt5n+j41fdOAoQefAjSMj4ve1vR4OXcbs++y2a+miP7XpVqBg+WqXMQbOR3MTyBLZtOaUtyJSMVNC8C8fh8U6l6PpzI+Gy1+IrsNAO5AgaFenBfQeVK47GEGtZa4CYcd7qB6HDaYxDjQb4kN6GBWzeMum8pEL5bReK9Em+uZfGS/Z2Mx9RU9doqszc6orA0nFycqRSBh92GWvV+tPulvv0ptffDk20yCHOrQdb75BuUUmF8jG4w2cXSIhyoCa1WGs0N5lvMfsQeP5XwkD1KNOEHfR0WF8Bnjj5mAYJ+/rlje6wSb/89jWzxXqaVXNm1Ahb/Uu3ExgfPhsohzBPVHQ8KYKIQBybIgzhHtN1JbLI/Yl6sUuo3bFS+cMoicF2RecsPH/1NxedzFQpZrGXJ8AhlWs2v41/s1hWUiTGYfR14NysQzaF+00Am
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PR2P264MB0272.FRAP264.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFTY:;SFS:(376002)(396003)(346002)(366004)(39850400004)(136003)(107886003)(8936002)(6916009)(5660300002)(52536014)(558084003)(71200400001)(186003)(85202003)(26005)(478600001)(4326008)(64756008)(66556008)(66446008)(66476007)(66946007)(76116006)(33656002)(85182001)(9686003)(316002)(55016002)(6506007)(2906002)(4270600006)(86362001)(8676002)(7696005)(499474002)(223123001)(130980200001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 +eMEVQQAdhxNmeiycRiL15OLY8nYAGAGPjngSAkWkf8w2ZqA0H1jRqHF9+GXXhLJIus/MFLCOYCPTy6AKX9fAZks1Wn81l3eAndUQ4L3a2nhm9Ns2mLwB1/3lwmSRhNXy2gRtTdzreWak27MAcfDXiaeqC6+Veq2bp9uKEOHtEAjVqD5L9mKYyRTrt3TTTZaF39hRjrrvWGaubMzK9/8p3mNhh+SyYe4E4KdqZlUePPD7BwQvqj19bB1hM2xdolN0kXYNLJqVcb/p6LEuCMGK0TKqT7Ep67uRn0XEtZvzldu+oKT9rrvn59nGD6XQi5k+sO2LlG4yn79RubACGXxeuIzy2e/iiK01pnD4OcGLcAHA04U8Koqh9aZ7xqle18Wa5AVezH3M0132NnwuUCBYoCyeqMDUQh7DI3c5KYhVoobh31hmKSsVoE0ZA2vk8o3ZYTM8TMvIhhVDPVeJGjxCnsqTHf+dCs3E+2RVVNYfIuNjbdrt/WTujLakCQymdVb
MIME-Version: 1.0
X-OriginatorOrg: ext.actia.fr
X-MS-Exchange-CrossTenant-Network-Message-Id: 82f97dfb-58dd-4e99-f66e-08d800ae6bf2
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 May 2020 13:20:40.7100
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 86314f06-03e8-4460-82f3-a44f992a19c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K39UW2WM5LyjxgHIvDARJAdKuEIEq6FfSIkHmJfxeyl0L2QYz6m9V+kGFgo0mIWal7hQcWWo1zcYYCdJZq5e/mFFMj4ZdMJt3msWVH2/986mceebaZJ0qUZdJokTaqFi
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR2P264MB0718
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_PR2P264MB027279920C9CE5C7C9A35F7085B30PR2P264MB0272FRAP_"

--_000_PR2P264MB027279920C9CE5C7C9A35F7085B30PR2P264MB0272FRAP_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

UGxlYXNlIHVuc3Vic2NyaWJlIG1lIGZyb20gdGhlIG1haWxpbmcgbGlzdC4NCg0K

--_000_PR2P264MB027279920C9CE5C7C9A35F7085B30PR2P264MB0272FRAP_
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
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBjbTsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjEyLjBwdDsNCglmb250LWZhbWlseToiVGltZXMgTmV3IFJvbWFuIixzZXJpZjt9
DQphOmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCglj
b2xvcjpibHVlOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjpw
dXJwbGU7DQoJdGV4dC1kZWNvcmF0aW9uOnVuZGVybGluZTt9DQpwLm1zb25vcm1hbDAsIGxpLm1z
b25vcm1hbDAsIGRpdi5tc29ub3JtYWwwDQoJe21zby1zdHlsZS1uYW1lOm1zb25vcm1hbDsNCglt
c28tbWFyZ2luLXRvcC1hbHQ6YXV0bzsNCgltYXJnaW4tcmlnaHQ6MGNtOw0KCW1zby1tYXJnaW4t
Ym90dG9tLWFsdDphdXRvOw0KCW1hcmdpbi1sZWZ0OjBjbTsNCglmb250LXNpemU6MTIuMHB0Ow0K
CWZvbnQtZmFtaWx5OiJUaW1lcyBOZXcgUm9tYW4iLHNlcmlmO30NCnNwYW4uRW1haWxTdHlsZTE4
DQoJe21zby1zdHlsZS10eXBlOnBlcnNvbmFsLXJlcGx5Ow0KCWZvbnQtZmFtaWx5OiJDYWxpYnJp
IixzYW5zLXNlcmlmOw0KCWNvbG9yOiMxRjQ5N0Q7fQ0KLk1zb0NocERlZmF1bHQNCgl7bXNvLXN0
eWxlLXR5cGU6ZXhwb3J0LW9ubHk7DQoJbXNvLWZhcmVhc3QtbGFuZ3VhZ2U6RU4tVVM7fQ0KQHBh
Z2UgV29yZFNlY3Rpb24xDQoJe3NpemU6NjEyLjBwdCA3OTIuMHB0Ow0KCW1hcmdpbjo3MC44NXB0
IDcwLjg1cHQgNzAuODVwdCA3MC44NXB0O30NCmRpdi5Xb3JkU2VjdGlvbjENCgl7cGFnZTpXb3Jk
U2VjdGlvbjE7fQ0KLS0+PC9zdHlsZT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBl
ZGVmYXVsdHMgdjpleHQ9ImVkaXQiIHNwaWRtYXg9IjEwMjYiIC8+DQo8L3htbD48IVtlbmRpZl0t
LT48IS0tW2lmIGd0ZSBtc28gOV0+PHhtbD4NCjxvOnNoYXBlbGF5b3V0IHY6ZXh0PSJlZGl0Ij4N
CjxvOmlkbWFwIHY6ZXh0PSJlZGl0IiBkYXRhPSIxIiAvPg0KPC9vOnNoYXBlbGF5b3V0PjwveG1s
PjwhW2VuZGlmXS0tPg0KPC9oZWFkPg0KPGJvZHkgbGFuZz0iRlIiIGxpbms9ImJsdWUiIHZsaW5r
PSJwdXJwbGUiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJNc29Ob3Jt
YWwiPjxzcGFuIGxhbmc9IkVOLVVTIiBzdHlsZT0iZm9udC1zaXplOjExLjBwdDtmb250LWZhbWls
eTomcXVvdDtDYWxpYnJpJnF1b3Q7LHNhbnMtc2VyaWY7Y29sb3I6IzFGNDk3RDttc28tZmFyZWFz
dC1sYW5ndWFnZTpFTi1VUyI+UGxlYXNlIHVuc3Vic2NyaWJlIG1lIGZyb20gdGhlIG1haWxpbmcg
bGlzdC48bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBs
YW5nPSJFTi1VUyIgc3R5bGU9ImZvbnQtc2l6ZToxMS4wcHQ7Zm9udC1mYW1pbHk6JnF1b3Q7Q2Fs
aWJyaSZxdW90OyxzYW5zLXNlcmlmO2NvbG9yOiMxRjQ5N0Q7bXNvLWZhcmVhc3QtbGFuZ3VhZ2U6
RU4tVVMiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIGxhbmc9IkVOLVVTIj48L3NwYW4+PG86cD48L286cD48L3A+DQo8L2Rpdj4NCjwvYm9k
eT4NCjwvaHRtbD4NCg==

--_000_PR2P264MB027279920C9CE5C7C9A35F7085B30PR2P264MB0272FRAP_--
