Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.75])
 by mx.groups.io with SMTP id smtpd.web10.53387.1629287206725749608
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 04:46:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=PAwkcwOj;
 spf=pass (domain: optimeas.de, ip: 40.107.15.75, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lRczGU2DuOjhnh+ClPPCwG6ejVcAhNJy8qt6f1CtMBGmh0wexGPnZr2o9MpNiPeplw8+Q3p8RuzHt95yz2s/rmbCRUSeb3tj1zP7NSWPztg7bL8Yuvni7P+12vOKrY+rNFXW6v4PsTRNimOyhPZNoQnLDwEcxmoToa3/7+P0Tb57Qmmp/YkDDpSc6s2LhqyN96tsart6XhymK2G9aQqcgWraeq2U0ucssfpngcECC+ykD948eBDHkNjpV1rRVV0N4g8Qfc2Ei4tCQtuV00XycBHQ1CF+ue8/G7tKx9cS6xB42EVUkMdIjepPk9tUbvRBEBHXlw+FkfRFMiaJ+P8k3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aqg4HsDFhiiFSzliA11VjCkMNco9F5ovVJkQElPqDXk=;
 b=REn/o/CM1e01KRYlv39QEMwoKBv1SH1cRJUCtwWYsEiuamVplkqDrPeuZLblBYbfywzmpbckdzuMBc5j97n+UTHoVT19Ij6W0W2xdjHNScpduu7clqtataEEOiMwPrOFh1ZJjOn6aT3nlWvNpGWTMYqqJU+qEA3UnEehB+g+AesvFnB8clnS1ttaTl8vrNltcz5+cvoU7Ij1rypbk5HP7FomANA8sxOcIgtqijw4Brp4TwSu1qAmJk7YfiumAag8+p99Ckq1ljCq5DMt8bnOsjQ9CHJLnDKUOoMuU7tAusFMajg9J8IgJ0dPbkbqSdQTnmyV+K7Kc9bbjCAM+k4QLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aqg4HsDFhiiFSzliA11VjCkMNco9F5ovVJkQElPqDXk=;
 b=PAwkcwOjwIG5CuMoF7zYUTyDLOjXw91wBALsdaeSF2WzQpiocMYl3PeJ55UZKJ975dJv6G1bGLUL4zE9kMmOtUbsOEa1cT2kxESlc+P6DlMXxgJKDgSuM15w2zdGsnhVcQfJa+pJU81bXAFDBy+1AhldjDeyxDul776kzaCIrac=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM4PR1001MB1251.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:200:97::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.16; Wed, 18 Aug
 2021 11:46:43 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::80ce:cb95:8c68:457f%7]) with mapi id 15.20.4436.019; Wed, 18 Aug 2021
 11:46:42 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: hardknott: systemd / agetty: root user environment (sbin not in PATH) when setting password with EXTRA_USERS_PARAMS
Thread-Topic: hardknott: systemd / agetty: root user environment (sbin not in
 PATH) when setting password with EXTRA_USERS_PARAMS
Thread-Index: AdeUJlC5aD6aFEFaRvuDP8Iu3o45Ww==
Date: Wed, 18 Aug 2021 11:46:42 +0000
Message-ID: 
 <AM0PR10MB310712773B7D64104C2C3D8E99FF9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65675d4b-a114-4dd6-4804-08d9623dd919
x-ms-traffictypediagnostic: AM4PR1001MB1251:
x-microsoft-antispam-prvs: 
 <AM4PR1001MB1251E49644CBAC8468EF81A499FF9@AM4PR1001MB1251.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 4j0VEqmqdVOGOWKJPznTvA5LIFoElNKUm1Mv6LeCBZ1ZHaUq8soNawRDMHAE2HxumiISVSb5MyIHxKy3o9cy7slNUcDwV1C74cHvxnhywO7q5KPTbw+UjjLhsBVhMI5D5/58yrPPQLw64LvXur+rLhvblibmkBW+qGt2aQw5+dfcG/0R2RCzVmLtsRwrItLO1Tn5Pp++Yek2vPhQM/A62SIOlHpmKYlhyv/ZfTphakxwvfNzlEdhp0TcZ9VL6jx18DpyZoWI8H5aexC1OQRnd22IBP4XMoMZqill7RimWLPrYE+Ed32Nyo8iPpPD36FiIpNHMNZ8DX/WMpk7DYXdt6VETCuksSE0N0Krmldfcw3wQdTIb3HCQ7KhKXfl9vopPbpBg4LZ51GKJmnQz7fR8EVxkkeEO6xj6oqkjqB91nBJ5wW3XHYeFGwT4kpW2zvyAWaw4UwGx+o+r8b9AhrniZkJmhTwf/S77ouVY4sL3xhk1XZ6ks1E4kfLB9ugZUI2uqOd56001J7IKmq3+tlndTGdRQPhV7//0YaFEAkHEihWarjUBPES7eGWq/3mL0p4zvRvgfnjhaCRp5DtyAxGeveVFT+CdIsZgfsiPRZPlYs4cfgrpDKaYG9rp8wcF6GLVFurA6RfpVLI7YMcPvnf2oJAvG6aSUo4ARFsWnwVsOLB2TG6NxOM4NsP1knLMgLSlc+HSYiQsczzKc0MBicAEg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(376002)(346002)(366004)(39830400003)(396003)(136003)(9686003)(76116006)(52536014)(5660300002)(186003)(55016002)(6916009)(6506007)(316002)(83380400001)(86362001)(66946007)(66556008)(66446008)(4744005)(2906002)(66476007)(122000001)(33656002)(8676002)(8936002)(64756008)(478600001)(7696005)(44832011)(71200400001)(38100700002)(38070700005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?Y9AdJjEjJkC0eROTNJQeNaPMTjffvQ1oBuYcRdQ6f2TnQD6t9bLlNsOzXE8J?=
 =?us-ascii?Q?fq5inFshPsXebjQeNTmVlROD0rO2YxV7yAHccIAwNF8kd/mzHFiFfTIa7YTk?=
 =?us-ascii?Q?nniv4fbAtm+WkZtb90/OpkSCMQ6gqnMVDf0mchiX560kjQhLmTjYhY05RayQ?=
 =?us-ascii?Q?iC3Escy6pnKq19g/KngGUEI3/QKAlTkGPNeudkS8WL8lPrBFjv7nfCoi7mF7?=
 =?us-ascii?Q?lS9r1J4wwTB69kkjvyAqU22QHt1D37+yc6YuQSLT11OVE/Z0P4742P0uN805?=
 =?us-ascii?Q?DauI+ixQso5NyxYLmtk4hQ/UEM8tFE15Na31Ise6ZbZGaB2WLf/daNmK76pw?=
 =?us-ascii?Q?LMu0awSLc8enKs82QmmhaGqKRrEsOAouyMk0VHC/jV5Q6kM/mQo03YIIiMBQ?=
 =?us-ascii?Q?i4L/rjygp6CSA3z8SJogyXQPjmFNF19BbRF9rzQ296J2ri9TMR525OB0pxiK?=
 =?us-ascii?Q?muMtamrdjXQTN/VwsVt9geVTrb9bRuopxavVHQ5eS9FWT5ORVkE4Pke1EMFs?=
 =?us-ascii?Q?NagZ6nEEmcnJCqXjqUoee8/whENiHdznVuy90EmF+c3M+VHN6o4MmE5WKd6j?=
 =?us-ascii?Q?2pNW9jBUrEhrgxtynUcIFoAxrZWpL2JDZwyn1nbq9I3FhY3zrXoTbl+BU07a?=
 =?us-ascii?Q?ByWPJXXlRQCrSlNleyGZg3lq+MEGJ7QvVDmpXFN4+b5ZQJDk1fmLyTeqRyU/?=
 =?us-ascii?Q?1lEPIKLzwJLTYCqDYGihNrGAERM4CIzK8AhP0LkF/MaJFYYttbn55Powyj0y?=
 =?us-ascii?Q?L4JNoKWONWMgh+jTQdLl2xgc/+1uPdVQ9FUIjClUuHuEaOqkIZm5dr+ivG6c?=
 =?us-ascii?Q?SK197RtVRhscjym6ZqLmk44m3luAyeRVl2hxFQQzHtUxwqXG2ZzCuhUxwg3o?=
 =?us-ascii?Q?kv45Vx/8soYRPT5JI+p3uAqxwm7QYQzPgMKRZl/t+1DErspX43MnPTctDvbJ?=
 =?us-ascii?Q?z96OwyO24v+lPdECYfHhx7nxK2aEK/kJnNMoOIrOdm9ZDorXldQYw3lTjexo?=
 =?us-ascii?Q?eyLXJgzkFGBfFbLj/yG0i9HMTFRcKTGGu8aTDMVkTyZA3VKf1+V+PZzbi27G?=
 =?us-ascii?Q?omDZk9lCkSKmuOYRjVXLGdB/3K9q+9iNyA4DkSQdh7ZebFJCZL3ZD9b44UXH?=
 =?us-ascii?Q?K8qwrwZuIBDbiYzHI+XicolDnBOvCQKVFpEhLfGazRJF+1KUPqm4QKdsxa7O?=
 =?us-ascii?Q?2eeY8oo8fGRe4fF7QwUBk46bd2nyNrnXABqDR7ruiMF9cOknjAubQEw2gP7j?=
 =?us-ascii?Q?wpAPAHqiejxCKjf3PKxbdbrVNF+tRIhVllIpmGtw9GA/aV5n2zUgnSM6oDFZ?=
 =?us-ascii?Q?ShOSu/wNi79tg17OaClmgxb24bC29XoxFug1HDP21ZHC8LFO4pZo9Z1Ffro9?=
 =?us-ascii?Q?F2p580phBEfQyTIYVmhjboYlnytE?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 65675d4b-a114-4dd6-4804-08d9623dd919
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2021 11:46:42.2556
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xv4xYlquFYTH8rFRHqHXG74afpJQjIAG5CY/x1cLxgc1Leaw9USGXGXNdhL4kxkRf0S3SP+CP9np8F2Vdvdk6Nvqi03JBov1c5AED1krsK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR1001MB1251
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I tried to assign a password to the root user and added the following to my=
 image file:

inherit extrausers
EXTRA_USERS_PARAMS =3D "usermod -d / -P root root;"

At the same time in the local.conf exists: EXTRA_IMAGE_FEATURES ?=3D "debug=
-tweaks".

Setting the password worked. But in parallel the PATH variable in the envir=
onment has changed:

before: PATH=3D/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin
after: PATH=3D/usr/local/bin:/usr/bin:/bin

I would like to understand why this is so. Is this intentional, or is it a =
bug? The root user can't call ifconfig etc now.
I am not concerned with a production image here, I am aware of the security=
 risks.
I want to better understand the internals of Yocto ...

Best regards,
Matthias

