Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.54])
 by mx.groups.io with SMTP id smtpd.web09.2194.1630393252630903437
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 00:00:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=HF+huw8I;
 spf=pass (domain: optimeas.de, ip: 40.107.8.54, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LNBqd/UkM7LsLmBdNE9wGkd+WrqLdORZ3I3zikqGR/PN+QPT8vT8asTSEToPiHfOMGZ4XPAD4QHCOvpmApj2ED4pqGBBYvEJFK303pdJ0POPi5fuJUggY/8QKqZoeWfbFC1tf4g7tUYXovhZyeIIHc2Og5lZMxu6tnGaPLZIo6MUh/cuV++Lm+VT4U6gvXFMKp4TXZxGG8UtqPNYZOtJ3wyKrZzJwdYmnSldBoXswX98mMXcuw3z2JRdlgANlHyPBQTsUTg7VKvCEIWh2nVWegRRS48QNe+E9uGp6WpAn3BShOMfO3fhRzanWlJhj40gEEcJ7ogrB5cY29MoAY3ZdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZqTQlehwXQSQo8EfJ5U7gW2oIPjxA9m7zgoaJgU7w4=;
 b=NG+uCm0Jx3XKbChGwlGKIwQuoAoCfpK3iFJdoWSAiRGFv5Zmg75qPs5lMg5l9D3a8qVMYuvnoaQQeXJukbACgj1QMIue8zX+fRo/m3MOE/lLRvC0bYwkc0lT4eV1kmKAJSZLi2oZt5ylBdELgVvMXpEvKVu2SbhcGtgJmsl2YOSzQYjDnEmr49f//yKHHz/6bxLSaUAQnt4RPpc5kkfULwDMmdQaYPPXcVqh3dvxDd3CIgPxiIF9zOlGVRjsfWVJJPNp/NLjGhyGSZZi86gjxtUNXZe1kVSbCq35d6RVnDIj78NcfWbCHfK/B0lkvDubdlFDJR9YmkAn0ABb+mNFuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZqTQlehwXQSQo8EfJ5U7gW2oIPjxA9m7zgoaJgU7w4=;
 b=HF+huw8I7M3N4F+JXG42YvVT10jgEKU8dIRtzi1OMPXmbii8lIX551exA2s5pxc8a9Wxrw5SGVGGXAXCZtd5gaxawSHQD6Di7N+LjuJKiJoJnKSNB9v4kT3jx064WnQK1KrGfsBUOYoz/sJJWVM1vEclZFwk+1bYvzLbQNa7EEE=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4436.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:271::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.17; Tue, 31 Aug
 2021 07:00:49 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 07:00:49 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Markus Volk <f_l_k@t-online.de>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] extrausers-bbclass: plaintext password (since shadow update to 4.9)
Thread-Topic: [yocto] extrausers-bbclass: plaintext password (since shadow
 update to 4.9)
Thread-Index: AdednfBjjf/Uk5A2TVymOPe4ar1MOwAMUpYAABmg+AA=
Date: Tue, 31 Aug 2021 07:00:49 +0000
Message-ID: 
 <AM0PR10MB310730C0ED98760B896F3C3699CC9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <c725971a-cf08-40b0-5150-2d0c23c831ab@t-online.de>
In-Reply-To: <c725971a-cf08-40b0-5150-2d0c23c831ab@t-online.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: t-online.de; dkim=none (message not signed)
 header.d=none;t-online.de; dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: fbee9736-7f28-4945-7c6c-08d96c4d1099
x-ms-traffictypediagnostic: AM9PR10MB4436:
x-microsoft-antispam-prvs: 
 <AM9PR10MB443641F3D943A34829F3E7B899CC9@AM9PR10MB4436.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:2201;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 yyf4rQqyqvB44qi6vGAG/BHaSIBakWxIvN7anDUizNFnjQT5Uq5PNho1B5SGUSc13Sd9RL38iXvZ0Bg4YW7DKJ6zYWdZDkdqSHAYziEBgwwiGQz36+1ZgyPqLlQ8RpZMuU5866F+iHSQJGkQh5PbL8kvIcc1eWsWYa860in2gF3YKo57MkD4ro0Ig/ksaCSimdL/Fma2N1cSsviuCgG0SwrewQstmfn0vS8oeh2ylidM6TOSk0pIhWVZ6VT/asP+GcI3tB1u5wsk7jMHHEyyafcrtufD4Hex0RUGRvNFzeZfK9a+GFoMnrt0QJ9Q68RztgfYe5K89ONFgcpFz5Q1+tDQuJYAxS0HRyiKgmMfIsNm6gCT8waxw5qrmwSESw/dpwRpTnpG/aXs/28EaRYKWR9Czmw1C9FG/QpYfbLXxQpfLzbLs9bg2fvnSV0xUP29k+aeZuKiW52sC25Txvod+hw3UU7XUyAMSO4wA/SFQUIPcM7SuFDVEwh1kXhBNSLQEOhZBMb47TrsY/Gd9pb3Ao2vsrb9EZonTin/qrZhFJk2v0sgWKtz5nNlbGwPv5neh6IJix2fBCZTOh2Droiowbp42JoidHd+RLV2Sg7xIRpjbZLTWpUfw5IVygvM5n+rtA8mo8M6STynYp1n6yJG5xCyWjV0sDJDu+8l8nfqk5mbm61mfgbYgNpATMsfD+mdxPrVVwW0i+2LBDzbmcHqkCdn+dtEeyCc8/4+9CZGYjBoKBZrxTqB1uQjxJYkADP5swYLmaGzP5hI6RJWjKEHlA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(366004)(396003)(136003)(376002)(346002)(39830400003)(55016002)(6916009)(66446008)(38070700005)(66556008)(44832011)(6506007)(83380400001)(66946007)(64756008)(76116006)(71200400001)(7696005)(186003)(8676002)(508600001)(4326008)(33656002)(122000001)(38100700002)(66476007)(52536014)(5660300002)(316002)(2906002)(9686003)(8936002)(86362001)(15650500001)(966005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?ED9/fpB3QghNo5yxbaFEw/AWB6AjEj8r6mDjXrfPoX4yWSMjL77xuvWEVJ?=
 =?iso-8859-1?Q?XNZNPxSCASfqtjkRkIS1cRF8m1ChbaRRWobXmiHT6WQw0rz0dBpwdyY7E7?=
 =?iso-8859-1?Q?ryPVkhHbZmcCaPzekui82GKgha3iUtc8YjW+okZXoBvr8Dd1dZgZXDqDDR?=
 =?iso-8859-1?Q?au04fFBPCsW9nIlsdKWfN8AodGGX/ibOmc+0hIAmCitRAGNa0ozdW+oWqH?=
 =?iso-8859-1?Q?/UPo7AItH4vc98LgMEi7dF+Wkya3f9mGgL+rE/uNaM4110BxM/9J/99ork?=
 =?iso-8859-1?Q?cXIjUqvOWMRBUeM/bKtUPPgZpgV60/NIDDVW5nF0GBqy1h92pi0WWsPuew?=
 =?iso-8859-1?Q?wFQ43mEf1OOgCK4dPIT9O81tJlwTeowwJOXV93Bvabu6V0v2TtWS6HngWw?=
 =?iso-8859-1?Q?VH4/1B7ra6KF8Ah25znBDui5HjEXN6AE9WwVXiyH2Wkr1dF4/b2CYSKFmk?=
 =?iso-8859-1?Q?4K3M6zvPknfTLJGmcaL6hKMshoCDxnqQAAceNvKtKCEC5hyUzfqyfkhsWp?=
 =?iso-8859-1?Q?/N3LZFvCc+oXlcQi9xJ5ycf0kUULzDbHffSTNxDL8+ZTcMzecTBAt+Vvff?=
 =?iso-8859-1?Q?vYux6gJbOhdGfyXC/eEMMWVgJWDWp7Naukt6e/SuZi5z/PZ6XURfCkbL7U?=
 =?iso-8859-1?Q?+7sAq2iiHl0e3c/CiF5naVB3Kx0hlkuEWrg8Be9JiO91lOIpz6mv1bViBP?=
 =?iso-8859-1?Q?K4gADvf6EB57FrxfdVQZHjR+/lpNMbKAEaOpU5CsACY+fgJNMwa+CHqjcT?=
 =?iso-8859-1?Q?/Id7JYZwYDwDuDR6zntau9IDi4c+m64B3OGh6C4wjdIqX8Eau5P/e0jWx8?=
 =?iso-8859-1?Q?5ZC98CBfHz44MqmLX1j68CMk8y4EdJrSW637xs0Yw8eHxUgWYkhbi7RGuF?=
 =?iso-8859-1?Q?6C1xpMfFQluqYIlv8ugrw4G1xldCzRwzvhFtdJJrdi32JrZ1sp2wK8olvA?=
 =?iso-8859-1?Q?R/E7HUlITIxjDHHqCKfRv+iF8Be6Mm4dswPLrhK3P80vrEUKsLrlmkSff+?=
 =?iso-8859-1?Q?pW5YRgu/OJ/2YjTYHqAu/XMQko4Qkh1ee7q+fzgObkncs/C0TgGiA0sIyl?=
 =?iso-8859-1?Q?fCekFI8aoMeGSCDpKRAQYxjAHt9wT7Xrg+Z6jVDHq/7pgELM6XahrWPPV1?=
 =?iso-8859-1?Q?j9dds9uL2VTsIeOLc3OspdxzZIzhmV3Rejw1XO9km5blZKMdc+CGbB4Hkf?=
 =?iso-8859-1?Q?VUOmPHlTycj+Wvu678LYqsjiy7hS7MWAf3n/2BAfGpqrFPhacV6Dfw6Uc7?=
 =?iso-8859-1?Q?glSeF02VjX2JCaMMxDqjLVUk02fbTaGxqA1pAFeUDrn5ndM0fyc/RaJ+tV?=
 =?iso-8859-1?Q?G8U56SFX1jFTZJ9K8ocnIClZ5UQ27PtvQh9EvkQBYVHtwYeT7yovNYP/K2?=
 =?iso-8859-1?Q?kCOlKF2QmSopN+TwTEVi2xsitVVL1VrObGfTh1jAfdQbh/V9GSX9U/wvS6?=
 =?iso-8859-1?Q?a6yPdGnx2eiZTich?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: fbee9736-7f28-4945-7c6c-08d96c4d1099
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 07:00:49.5622
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lvUrYne3WsIZwLTpMII8kQ2n9skEwdIawUu1METMTo/Cssw43H48EMqOyqoMnLba+vt/Ki5RFQKZq+R2kh8TcWFRtWWFjZm2CdxqDuIK3Es=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4436
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Markus,

thanks for the workaround!
Works great.

Many greetings,
Matthias


Von: Markus Volk <f_l_k@t-online.de>=20
Gesendet: Montag, 30. August 2021 20:46
An: Matthias Klein <matthias.klein@optimeas.de>
Cc: yocto@lists.yoctoproject.org
Betreff: Re: [yocto] extrausers-bbclass: plaintext password (since shadow u=
pdate to 4.9)

I also have problems with setting passwords in current master branch. I onl=
y can provide a hacky workaround. I added the following lines to my image r=
ecipe to inject the passwords manually after rootfs creation:

RETRO_USER_PASSWORD ?=3D "retro"
ROOT_USER_PASSWORD ?=3D "root"
ROOTFS_POSTPROCESS_COMMAND +=3D "set_root_passwd;"
ROOTFS_POSTPROCESS_COMMAND +=3D "set_retro_passwd;"

set_root_passwd() {
=A0=A0 ROOTPW_ENCRYPTED=3D"$(openssl passwd -6 -salt xyz ${ROOT_USER_PASSWO=
RD})"
=A0=A0 sed -i "s%^root:[^:]*:%root:${ROOTPW_ENCRYPTED}:%" ${IMAGE_ROOTFS}/e=
tc/shadow
}

set_retro_passwd() {
=A0=A0 RETROPW_ENCRYPTED=3D"$(openssl passwd -6 -salt xyz ${RETRO_USER_PASS=
WORD})"
=A0=A0 sed -i "s%^retro:[^:]*:%retro:${RETROPW_ENCRYPTED}:%" ${IMAGE_ROOTFS=
}/etc/shadow
}

Am 30.08.21 um 14:54 schrieb Matthias Klein:
Hello,

I am trying to find a working alternative for the old -P option.

Previous:=20
EXTRA_USERS_PARAMS =3D "usermod -P toor root;"

The suggestions from this thread don't seem to work: https://lists.openembe=
dded.org/g/openembedded-core/topic/84548199

Current:=20
hash=3D"$(python3 -c "import crypt; print(crypt.crypt('toor', crypt.METHOD_=
SHA512))")"
EXTRA_USERS_PARAMS =3D "usermod -p ${hash} root;"

The hashed password does not seem to be escaped properly in the extrausers-=
bbclass. The password in the shadow file is missing $ characters.

Is there a way (with the current master branch) to define a password?

Many greetings,
Matthias






