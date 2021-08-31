Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.74])
 by mx.groups.io with SMTP id smtpd.web09.4821.1630414090924874198
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Aug 2021 05:48:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=n9IJzOGK;
 spf=pass (domain: optimeas.de, ip: 40.107.22.74, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oURPVJ39kOYemooDkpGf8kmokByW38Oq3OeIpALponKcl90X5nkcJOS0hhDNC0chr3z+S6F1TXYptW0Siv1HfxNS1CVAj23WG9S3HaXQK6UrGmHOKpf9olQuuImS1nTvROeQfCMngfaXxm+rGunnIpSRnNO7erZmWRo2jIUkucRHCbWwDJwqcxeVElC5dtkiyHg8VUZQV9Aoxp+YbzSdeJAZjptrcPbvxe1WBC1T+fQcqZag7jRuzgS2780B7VzMLO9iputIfpoLfx51BbY0mOLcrh/6f3MujFsfDVdvIxRqJCYv4qN0zSxhzzWHQXGzLQ4pvoaiAbQK7ACBTsQd/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cjBNbth59yWAB61dhioECpyXlgAHa1VPRYYcW5u8W5U=;
 b=WZ/WfihMDLlldYjCu3SbCMcQkpM0zpwGKSKgfxcQRk0bcY+mW3djk72wB7NZeSVTbRDW+1uHwW1T6t7aCcQHW2Lk7bscdrvwVceWvX5XEHPDNAAYzquAJ2nqukonaw3sEqbTzzbnJ0nAWbVX3PiBKe08FgfkDkE7R2bIe9G3u6o1btm0Gd8N6ElLjkKzBidV+HF69HK22gDcPW6M6/Ecq9+j8ASX2bMWl2lF+TEicY4lqum9IPWBv+V6IieyC88Y+oXSQCIzk5jI4JRUPNOjbp7U1u7dw+8EVeGap0I7qPnviJ35pBQf0mU1CYSFT9JVQLQEp6t4ZPUubEvZYp+74g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cjBNbth59yWAB61dhioECpyXlgAHa1VPRYYcW5u8W5U=;
 b=n9IJzOGKAOr1wP6ggAVKjpLrd1JzSbbszfGWj4hjaaiNO2Iz7KmOcIgXLlfLO1gNhrQR/wsOZd+q16KHvYZ11bxckyR7cf6jA5NNd2zHxwp5n5NxDeph337RYtr9I97xixiW6DJj/5L/fKQEvgOWf1qfDEhNd0SrekdQ4q3NfG0=
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:128::16)
 by AM0PR10MB3553.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:20b:15b::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Tue, 31 Aug
 2021 12:48:07 +0000
Received: from AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54]) by AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::1df1:442d:d6:9a54%6]) with mapi id 15.20.4457.024; Tue, 31 Aug 2021
 12:48:07 +0000
From: "Matthias Klein" <matthias.klein@optimeas.de>
To: Peter Bergin <peter@berginkonsult.se>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] extrausers-bbclass: plaintext password (since shadow update to 4.9)
Thread-Topic: [yocto] extrausers-bbclass: plaintext password (since shadow
 update to 4.9)
Thread-Index: AdednfBjjf/Uk5A2TVymOPe4ar1MOwAQuWoAABbVuPAACn988A==
Date: Tue, 31 Aug 2021 12:48:07 +0000
Message-ID: 
 <AM0PR10MB3107E6597CCE6F9EDAC7728699CC9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
References: 
 <AM0PR10MB310796884E3E3D545695708099CB9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <d4829d94-aba0-e620-eb6c-8115efea9d23@berginkonsult.se>
 <AM0PR10MB31078836CD7F6E0B51ADD5AB99CC9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <1bbd7070-cc1a-c40b-5742-909472e2dffb@berginkonsult.se>
In-Reply-To: <1bbd7070-cc1a-c40b-5742-909472e2dffb@berginkonsult.se>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: berginkonsult.se; dkim=none (message not signed)
 header.d=none;berginkonsult.se; dmarc=none action=none
 header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 86a4b64f-00a3-485b-f2c3-08d96c7d9509
x-ms-traffictypediagnostic: AM0PR10MB3553:
x-microsoft-antispam-prvs: 
 <AM0PR10MB3553341EB220F1634F06E72799CC9@AM0PR10MB3553.EURPRD10.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 you0678TtN8BUyhVVIPNLHAL3RCgdkCkWwwn89wFCbRC860weF7GynKahM/yGNZoiNjyL08ri7Xn4S4pNBG2AEAOVAYXWvUuNk+oC9/FReKdUyn2Ag6LrFQwM3x3s1oGMALaEAxh6gOkNCbDn/JH/Ukeq2kKpOuRR8yo/g3Dx1a9aQsPGmeyA6EKggcGsH+I3UPAfN/b0zHL5P3k7j8YleYHEreq/4aodjs0vnFhFK76goHzfwlClUQu6YF3DORrh64uxxYK+3xZ2oASI7Q+PrCB98SNqLxyIyGq5vnRCvEPLCNcFyhEvKSQrBlQ9r+MhWJQbY1IacqjbrSx3Mk/LLy2J5IBQPGL5jVQwqPL48o+3yS95XbJWoO2S7ZaUyCLRDXGkAzPm1SRYMluSwVLZZcXrccv7hBV7lZHcSubUh0/96d4AaO5ZOtKQRPNUsBQxe/USfxXl5FWo9qkHxEcj2tGyHtkWt1q6Q8WlMHOLESAuzix4P55gD2BWU9iMiMpbdZs11BXuRBDlZZ/+Tvugl6dmI1L8Q+VDMFpZQ0SXwweX7EnSupKlLKRBnDaWDUf6aaV9NOu0joPaWeDTEU+b9u+M+MWAFbbzalda0/lWgQZn5I+/tkECPtHe7TDXLe9pzwRAnX09zLu1Xny5DVL9aJmZYPJNpNcYOAloxe1m2wwLXVqs2SpNx2tExqdQrP3E2NGFky+0sL4RZyDmKOQ5w==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(396003)(39830400003)(376002)(136003)(346002)(366004)(38070700005)(8676002)(83380400001)(122000001)(478600001)(2906002)(52536014)(5660300002)(44832011)(38100700002)(8936002)(76116006)(66946007)(71200400001)(4744005)(7696005)(66574015)(15650500001)(9686003)(186003)(33656002)(53546011)(316002)(86362001)(6506007)(110136005)(66476007)(64756008)(66446008)(55016002)(66556008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?bpuUgLMDtRC2rksNpmD4c/6LKySWkS6/O+iNAFh2XASG7d5ct1JoumUDKi?=
 =?iso-8859-1?Q?Pc+RtdgU/n++CGeZl1R2OnK5OnMtA0dQp4vH6Y+c6VdAwGkbL0c6QzbUhj?=
 =?iso-8859-1?Q?5x7Tu4sZNyEHpcLRAhViTGoAPRkdyz6ARieEtWn1mdzYUQPF+fs3VJnkBc?=
 =?iso-8859-1?Q?g7bMmkgnMMJ9a+CzbiBmpirNfaxv0VXu2uqwyShA+yNzYPa6icK2bJ2oQf?=
 =?iso-8859-1?Q?xXgMFPsiAccs2aMsfReQKWXqZ90cCod8qdia0VK0/OROTlMrPalifOO4Et?=
 =?iso-8859-1?Q?asmuysno6efvAcRTDrUA0rA/R7i+U5dYG9siWxY3Y0pA4wjsjYZSWpC9Wi?=
 =?iso-8859-1?Q?LkY8cH/FbS3bjpPXKPJPN8Jn03j4cw8ziJODT7SsWFxMk+Ku3/1aIis4OJ?=
 =?iso-8859-1?Q?0NipVxvRE3BhFOAwQKXlHK9H4fZOxFJEGLLCu1EomvNxIEY6oFGv3Rtnnt?=
 =?iso-8859-1?Q?ZwzI8asJU5+jX8NL3WiquSGsEgR81tjiRI4/kKsuXtwS+c8jMPaZFpLof4?=
 =?iso-8859-1?Q?BUWSNAzSR/AEbcJtqqqsjD1+3odKuhn3gglzv74aiTVJ0hviDiwG8B+8vp?=
 =?iso-8859-1?Q?xchGkAIvwuPukwpS0oGqW4vsXc3HzOtsP+bkbqRKu4L2Sm7uXa2oYuzAWf?=
 =?iso-8859-1?Q?3xBLULS0MEDea+AN4YdSM04I+OmsRuo9uBJ8b2T/SZR8D4YD4NQeVmR8kt?=
 =?iso-8859-1?Q?NJIGM+WpEJ5a75brXbSZRBjR0Ed9rEipTZ2AGrnjUEHaEU3o/mgme8XnMM?=
 =?iso-8859-1?Q?FVzuEsgkl55+oWfyhMsiqP3y1I42+H3OJVm/+TRRfjHWkrI4XaPNkWuKAO?=
 =?iso-8859-1?Q?A6uZz99NmgfyP85v5kVL01LSFX21xJUJOxVQQgXq2zTH/PgUqYsr2ntlKT?=
 =?iso-8859-1?Q?Gj/7Uy1nMH6cts9gQl6kNM4mkXLSUkq7yDFrzZUMngCCPNreowjqvwvlPP?=
 =?iso-8859-1?Q?eHjwuXlWFOkW10W3wbbRAhmaR/YRWPCPNK9r1qslHebkqhbVXB4w+bJd1Z?=
 =?iso-8859-1?Q?tOVoEXAj0GYT7REfZCDUCwwxxxYC+X0D5h5GHvrEnqPnQ0y/ulbq9OxtOl?=
 =?iso-8859-1?Q?4NaPlvqAdTUvbjdCma7Q0NgBRdzcHOOfTDB8BaI0PhC72c435FRA6FJUT/?=
 =?iso-8859-1?Q?0CqAQ+9PE3/eQHTEzJSGzrVfzhoh3wY6ubm7uqZLkjthEe7fl0uc7UI7jY?=
 =?iso-8859-1?Q?tqsBw7vzm2GGlXelcEXdTMuT0HOXjEWmhPf1VWATr40NLRAQMMYBrv3L4y?=
 =?iso-8859-1?Q?EY5F6AFa/PV9FsZWYpueHTRtC/KgHr1g2+5rmZxZk7GZoF6oesikmmJ8Ru?=
 =?iso-8859-1?Q?G2Z+tNXZV/1X97ecpy0YjQqLCm/PrSSPKXtfFg4fxBm/3IfrqUA5Jg/0HV?=
 =?iso-8859-1?Q?MB7AdmALP0FPeN0eWuWE1tOkRRWnnxMKVq6WbyPBGjSSeJFXBgG54=3D?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 86a4b64f-00a3-485b-f2c3-08d96c7d9509
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Aug 2021 12:48:07.5945
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uRDGCmnsAy1orRNp2l6eGsCAkdR90bjcQddjVKQG3IewHOAV8ggvPBR9rzRtkG2ZZIa9KonMmk+iv83WBHAIlvZ6x1jDsW+FDabB5LfxdhI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR10MB3553
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello Peter,

thanks for the solution!

Many greetings,
Matthias

-----Urspr=FCngliche Nachricht-----
Von: Peter Bergin <peter@berginkonsult.se>=20
Gesendet: Dienstag, 31. August 2021 09:45
An: Matthias Klein <matthias.klein@optimeas.de>; yocto@lists.yoctoproject.o=
rg
Betreff: Re: [yocto] extrausers-bbclass: plaintext password (since shadow u=
pdate to 4.9)

Hi Matthias,

On 2021-08-31 09:03, Matthias Klein wrote:
> But I have not found a way to set the password with EXTRA_USERS_PARAMS.
> Do you know a working variant?

Is it a requirement that you need to regenerate the hash on every build?=20
If not one solution can be:

 =A0=A0=A0 inherit extrausers

 =A0=A0=A0 #
 =A0=A0=A0 # HASH generated with this command:
 =A0=A0=A0 # python3 -c "import crypt; print(crypt.crypt('toor', crypt.METH=
OD_SHA512))"
 =A0=A0=A0 #
 =A0=A0=A0 HASH =3D
"\\\$6\\\$8Z5vMcqCIB19PgY8\\\$Sv4kAfsH1k.SANHL5JVb6hdqmQWHOeH0Rjrjyii7fGAK2=
0Gclj/.qiBvUPnAfh.WSsr1.XV0pUNom2L9oYYDV/"

 =A0=A0=A0 EXTRA_USERS_PARAMS =3D " \
 =A0=A0 =A0=A0=A0 usermod -p ${HASH} root; \
 =A0=A0=A0 "

Best regards,
/Peter

