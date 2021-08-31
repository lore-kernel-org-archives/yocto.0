Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.70])
 by mx.groups.io with SMTP id smtpd.web11.2159.1630393426413724745
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 00:03:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=Of8dMMqW;
 spf=pass (domain: optimeas.de, ip: 40.107.3.70, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EmXZw6dBa2IbsMJyPCi5rFVr0A+evGK0VlPFW2cwzbJcSlRIDzAQH+UeUEITdg1Hj3h9tg8VLfpRo0HPGW1OUdEoW5mDa438sZAI0dcmVbzXQV5qE7i4DEPXfRQzIGHkwh3yEOxEFlVy7G8Nm3isdgOe/5JUXwEsI9+42hgiQYDkDjrwmVpLD6d8/1AijxKh3DtMZ08PrpflMhSIn4zQFNINnNTdyF7UtOl5s86LxqFB/h1oaU+wK47JUEBAffNnBq4RP/gmHSasYXJ91cxYMuWlSC3JR7QSr2pOs6wK3dYS0GmBP7v+CNFk+47bIJTIa0sylIEsoA90XkNul768ng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aiXyon1UPKTFWYu04O9YQ3cPwnVyrccUF84guagu7NQ=;
 b=dznkHoK4BcBxlfVixBdzEeaDGR/DcptbZG0gyZdBgSjvtuSET+5IY41KDtNMBR/6fC+XzhX7UUJwQ6yep2SvA+ZzAQ88W0oT541Ry3qQUTVXmkjK/tARugTsC/YY4h/cy9UTKQ8qDI1tSeG+dDcF0VRy91Oh9ObOREfYcrWhUw1kvnGOguu9PKsGRcOi95T1lrZZVLCJXud9U1D6kivVZfwymp5Z/ULzDPvmfbVAZ6f7fwKk2LfWORsV3kXCgEDlEcw038BsV+UTqtDnQZrTnrvzyGODZdTBL0IYEgpLDCuEmu4MopqasfgZOmnoaPOKq1TlbxUY7vLOf4VU4ebPqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=aiXyon1UPKTFWYu04O9YQ3cPwnVyrccUF84guagu7NQ=;
 b=Of8dMMqWR2WrNESSBj5ILUCibAIMSU2vep0Bhh19oPMwWmF/m0Yqm0PW8YZVP1uuYDDtpiLb/5v3ytEV7oisTXDO9xcWqsu2ipc3USgMJ02q4fVcCtoo8HedLi4qF0cEjemlKEHfYsuPAHmRikcx83p1zwg3n0aOCg25jSO4z1k=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM9PR10MB4071.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:1f0::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Tue, 31 Aug
 2021 07:03:44 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 07:03:44 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Peter Bergin <peter@berginkonsult.se>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] extrausers-bbclass: plaintext password (since shadow update to 4.9)
Thread-Topic: [yocto] extrausers-bbclass: plaintext password (since shadow
 update to 4.9)
Thread-Index: AdednfBjjf/Uk5A2TVymOPe4ar1MOwAQuWoAABVGluA=
Date: Tue, 31 Aug 2021 07:03:44 +0000
Message-ID: 
 <AM0PR10MB31078836CD7F6E0B51ADD5AB99CC9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <d4829d94-aba0-e620-eb6c-8115efea9d23@berginkonsult.se>
In-Reply-To: <d4829d94-aba0-e620-eb6c-8115efea9d23@berginkonsult.se>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: berginkonsult.se; dkim=none (message not signed)
 header.d=none;berginkonsult.se; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b281e7cb-1887-4ecd-f361-08d96c4d78ba
x-ms-traffictypediagnostic: AM9PR10MB4071:
x-microsoft-antispam-prvs: 
 <AM9PR10MB407113642B1E29F35E33B83A99CC9@AM9PR10MB4071.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 s3FGnxRQU1nogbqBgq0Q1UmM9gnHpiQt+yKNI249WWjCCC8ch01qneEDJ68qsAaB1l40m110nHgBtfU3wVa2uzwalIx0aWIHp39V1xwnmtI1hwgwK7x/i5/73Dnml5zrl5Dd3bhX383Vb0XtsFNZoftd2C2oJ+RYfVSrynnEGF63o9xXhzwe2wc/YTPHg1OMuwS2VF01vvWEWlWw7ZoyjbCRVwW2N5rvikNm9lU5srm9UG7aN3FRaBBJo/S0dfXPcEd8BUq2HQOwdle5kmoObJurmCKHAhIBkkY2OHoUfV19O1RHMz0q4naWsdMXOrw1Tz3K6C4L5kbuA1dG4pmUelv8zkEKfv2oNHZvHZ3G+aP53GnrlNVNjpHR22KKyc7hINwvi56MwUMtb5nDYTSvftB3Q8Jdg/WzqKG0mbbFqtS3qKzM7QIHrHC78oILEq8gpbd9Ub/TdK6YeNSSbwC6ENoLE8llCVG+iY3MbrrJGkItAdSJerwIuWZvLhrFewsxFRcAwEPhwHUE4lZZDmwB0OiXTrg0SvjZafmPhA8OE2aCF/l+n7pK4/vn81a+XM9QsqYkn91uY7foCueJgPY80L66wPBlyIFTVTs7R/fr4tpZMEv4wsypzEzGBusLrzkR4nkf3mL+sdy/WJxY9gnUSSlcQ3LymUcThrTXj9maXNOhOmMaqRa8raIfSlNwiTYGdDsoZrN5dle3rDy068bf2Cx7WRpyxLD1gE4mnLwr9c43sxTbzniyHDPwRHl84qmyA2fb4RIWilZ12TJgj0I+zVHsyb/kU8pw42+IVS8JPdM=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(39830400003)(136003)(396003)(366004)(346002)(376002)(8936002)(33656002)(8676002)(186003)(71200400001)(122000001)(38100700002)(83380400001)(55016002)(9686003)(38070700005)(966005)(53546011)(66946007)(66476007)(64756008)(76116006)(316002)(6506007)(110136005)(15650500001)(66446008)(86362001)(5660300002)(2906002)(7696005)(44832011)(66574015)(478600001)(66556008)(52536014);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?vRRktjlIYhS8r1k3w6IhULGbpfM+fGfCBVbLk0HB8xuQZSJlkRyFssgllZ?=
 =?iso-8859-1?Q?EKcQXO9Nmq+D32ImfBdzMSUq4SaNGTak3HbgxNopOklGRjCtf6h/r+B/Xq?=
 =?iso-8859-1?Q?zjiWRxaVDWuSl+xCAvPp8tb2DX8gRIyy6biaZW4pK8xLB7+04BLImaK5YF?=
 =?iso-8859-1?Q?M41mctnj5RBj3u+I29BgjvxL1zrCExZFeuAGJov7gtO5gR30q5TUl12nbN?=
 =?iso-8859-1?Q?mdkliIjpXMUJScsfWZgdkr23gG4gtLvl2tw1p6TC+m5KC4GoZaPbnGg2zi?=
 =?iso-8859-1?Q?24ujiNI181/C+zdsD4EejPiKfg+7XkRnapz93PE6GzSTaER5umgTWWGWBL?=
 =?iso-8859-1?Q?sZyPy3auzLIdtR41/ofs7hQdGgB9mmauQj3arxsCXBqZ8TP7q6Y2jDHEUL?=
 =?iso-8859-1?Q?wHYkj5qT6Lr1Qe1S6uMxe+4F6AgKY29tcUVVS9KMz/F2E+Wrt6GC9IDSzR?=
 =?iso-8859-1?Q?4WyDlDisvaEzrga0xqrmsUHXo7sbqhFHzNrJVnZkNFCk/u29+UtyoSqY3O?=
 =?iso-8859-1?Q?MfxRBHxaPHaI8mavO/gHJUQEGUHYqEtjc/usUNU2L2izUTLYoZAK7m2mXq?=
 =?iso-8859-1?Q?2wJRkhCAx20Q2v57KuwOK/JxClKlM+1HcBu8QxBAax8pY4Hc9+LNxDHlbc?=
 =?iso-8859-1?Q?pq3HSHRHHW/A/mHqmGqUYOSB7tfEG6zjUTxMo2+gYh3/V2eehx3nrkjVln?=
 =?iso-8859-1?Q?0vBCMfx7elD9BxDAIBeHRwMHQQQZ1DNRzytzOD6vuOvMLTs1a7HcuLz7+k?=
 =?iso-8859-1?Q?/1kfLfcLzuQ3cGG9Q8HVkciwbR+DeT+P/zemrsq8R9S1ZraU/XoMZhx/57?=
 =?iso-8859-1?Q?hkPS3u8n9UU1ivzwvz1IB4GTG6geZlXp8Gtkr0pVjMp8AjxiYxtYTqAMJq?=
 =?iso-8859-1?Q?9EerzCUogjY090T2WK1nIDT1ap7qfPlUVfo8xZbgKPeT8XYocXHB4icAdy?=
 =?iso-8859-1?Q?lbHf1sXhVYw0XWuqakx1ypql62uuFw2Xo8f5kJa0NKVe6vGqF9cwDbjci+?=
 =?iso-8859-1?Q?0AbI1mZZlBIzbwEf6UYb97OoGxOpjv2S5puqIv53+VDKRz7Hmsb08XcpaN?=
 =?iso-8859-1?Q?OYnyEwF+i8NTFW4KLnq224d1QzFbIoJxMBHpsey/+kyph6vbs8gA0wJSfG?=
 =?iso-8859-1?Q?gVhYHIFxOTyOYcYOBuzrDCssz756aOHLgO4sz3okrUMUclBzDI6M/aLHUA?=
 =?iso-8859-1?Q?zRumRxHME0VJusNMnix0jFYP6MeA0KNUs4/9IoFpaJeRFszp170MZw6ejK?=
 =?iso-8859-1?Q?r+TfkHOLMz1XxiCoXqDko69Gc2vFpnnOeQhuqgSco3l85Ek7gavg1Ilwqp?=
 =?iso-8859-1?Q?qlgODMNqQ0DswWabYh3DEgUBuTAwkFXNRT683PuxpgLOVEmo+8s74A/aWL?=
 =?iso-8859-1?Q?Noouu7smgWQuL8rUi22oKHLfm4AVESz/r7fW3fK3i+DijB9YdkB+htF0pK?=
 =?iso-8859-1?Q?FJNUi2Bg5jGwHJ0T?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: b281e7cb-1887-4ecd-f361-08d96c4d78ba
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 07:03:44.1986
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kxZTs9t1P+d+4LH2euszGNdwb8HBYcs9DEnlQ9ZNVRvyjTQkRoXft0I/HHN0oHASBuyb2O8UmIcWpLgMp7vlDAlP1i5ODlfyEIYHasg7Cdc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR10MB4071
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Peter,

I have already tried many things to pass the hash escaped to the extrausers=
-bbclass.

But I have not found a way to set the password with EXTRA_USERS_PARAMS.
Do you know a working variant?

Many greetings,
Matthias

-----Urspr=FCngliche Nachricht-----
Von: Peter Bergin <peter@berginkonsult.se>=20
Gesendet: Montag, 30. August 2021 22:52
An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproject.o=
rg
Betreff: Re: [yocto] extrausers-bbclass: plaintext password (since shadow u=
pdate to 4.9)

On 2021-08-30 14:54, Matthias Klein wrote:

> Hello,
>
> I am trying to find a working alternative for the old -P option.
>
> Previous:
> EXTRA_USERS_PARAMS =3D "usermod -P toor root;"
>
> The suggestions from this thread don't seem to work:=20
> https://lists.openembedded.org/g/openembedded-core/topic/84548199
>
> Current:
> hash=3D"$(python3 -c "import crypt; print(crypt.crypt('toor', crypt.METHO=
D_SHA512))")"
> EXTRA_USERS_PARAMS =3D "usermod -p ${hash} root;"
>
> The hashed password does not seem to be escaped properly in the extrauser=
s-bbclass. The password in the shadow file is missing $ characters.
>
> Is there a way (with the current master branch) to define a password?
>
>
You have to escape the password string in the recipe. Use '\\\$' to escape =
the '$' token. There are some levels of evaluation of the expression and th=
at's the reason for multiple '\'. Just iterate until you have the correct s=
tring in the shadow file, also check the log.do_rootfs where you can see th=
e parameters to usermod.

/Peter


