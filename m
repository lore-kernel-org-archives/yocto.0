Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2768C433F5
	for <webhook@archiver.kernel.org>; Thu, 11 Nov 2021 14:34:01 +0000 (UTC)
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
 (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.54])
 by mx.groups.io with SMTP id smtpd.web11.145.1636641240539817507
 for <yocto@lists.yoctoproject.org>;
 Thu, 11 Nov 2021 06:34:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@boonedam.com header.s=selector2 header.b=ilCKD58e;
 spf=pass (domain: boonedam.com, ip: 40.107.14.54,
 mailfrom: jeffrey.simons@boonedam.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nbbPJkDFxcZYu8HkCkkz6TZ/x8NMalvOB66W+w3gNyUONxrexL02QWYfd/hS35fZyJh5A3HQhZKVsVbGc/FOxiy/vTSMenA+jI7nkrMxyMMrcMHlr2OXxXVJ+OMslBx4gJ3IvnzIYRjJn3QFmRqMXmEmYnLcwggXt4DftwEOnaswEchLjXHlc86JGcxvMa19F0ZHaAhvVfAcrDUxUykYF5MKCEw0Zjkuv4ok+wCMJaikz1U8pp5y7KuGXB2ZyFSmb96nK+x8LS6ALgr345R4v8S6qWkA2gQm5YXBa5TDdnjUL3Z7j3jNjvY/nhWOnlLFNj+BGqOiHackoK4EO5Tcrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpgdvq4Va6vliAUDiWBv/X6GIEcco3KdAXODtGXUHKo=;
 b=XN0guryxbm8yOScCZEu+iUSvLu2Y3+M9T4FRPcrxczuESkeHuk2xsZY4JGD4SF/ZoDzodUclV/SXuHU8duARyPi43LKQoqiQmCzz0104ZdaFFVc8KmDEh1H18jAHqjLQQgFkqVJyXRSFC/jFiZmc27wRbKEPlEvIKg+6pUkAu2NrWwnzkgZMyxFfbOBCkRjhsn9hsjrqyoA0CG5khJfBzoDQ48K2WVNIRmOOZfoaD/2KPGlU36Ch/YehR7tvDpiQ+1oCzblxTvZKdTP3ICRe1EJpsD/7eMB45USJAKx4cA0sHM7zseogxBUn2c9K/sGdt5LBTPo61IiNo3lSKBa2kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=boonedam.com; dmarc=pass action=none header.from=boonedam.com;
 dkim=pass header.d=boonedam.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boonedam.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wpgdvq4Va6vliAUDiWBv/X6GIEcco3KdAXODtGXUHKo=;
 b=ilCKD58exPsG9ptGuY2l25HZSlpl0QYb8dWb0tbDn5DrnWcpyqaP2g+jY1LL3NtYJRnWIyeIyslJDPE+twqIQ88U92EReOiI5J6J3l5lSzDNzVXrVbNwWeL307oxLloNHi9myyEU7m/5yY+5vvICVB0v0Zr7mf3tDVhKZe3Ek3w=
Received: from AM0PR0702MB3761.eurprd07.prod.outlook.com
 (2603:10a6:208:26::30) by AM4PR07MB3058.eurprd07.prod.outlook.com
 (2603:10a6:205:6::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.11; Thu, 11 Nov
 2021 14:33:57 +0000
Received: from AM0PR0702MB3761.eurprd07.prod.outlook.com
 ([fe80::e86c:3b9a:ae6a:7ea2]) by AM0PR0702MB3761.eurprd07.prod.outlook.com
 ([fe80::e86c:3b9a:ae6a:7ea2%7]) with mapi id 15.20.4690.016; Thu, 11 Nov 2021
 14:33:57 +0000
From: Jeffrey Simons <jeffrey.simons@boonedam.com>
To: Manuel Wagesreither <ManWag@FastMail.FM>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: RE: [yocto] User configuration & host contamination
Thread-Topic: [yocto] User configuration & host contamination
Thread-Index: AdfRX/0Un7UjKwt9S2elXXvGWe+KygFnPrWAAAH8JuA=
Date: Thu, 11 Nov 2021 14:33:57 +0000
Message-ID: 
 <AM0PR0702MB3761E551236BFCE0AC36B57DFE949@AM0PR0702MB3761.eurprd07.prod.outlook.com>
References: 
 <AM0PR0702MB3761032325B33A543A700244FE8D9@AM0PR0702MB3761.eurprd07.prod.outlook.com>
 <a40fec04-0a49-44ae-866f-f818e67e8222@www.fastmail.com>
In-Reply-To: <a40fec04-0a49-44ae-866f-f818e67e8222@www.fastmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=boonedam.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 994dd50b-fbc4-4aea-a856-08d9a5204b66
x-ms-traffictypediagnostic: AM4PR07MB3058:
x-microsoft-antispam-prvs: 
 <AM4PR07MB3058943FE311023866674D78FE949@AM4PR07MB3058.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ltGshxcV29c+aDGqLnkcwgZOsJYFktXXltoc6HAh3jP33qkHe34Q9w7/vyHtQH+jD3Lr4Sg8RLsjrln5slwnuc/F9rIIQje0FklpIF62nlOmTahgQ4NCeReqz3MAtKfjBLF0EoYPlQDvxhyyhDHINdP7yLxOBRWBZLpwqTbGpJS7mlNxm7g4bjnZk4Yjd37fVIp413cdA10PQELBKoRs/qplFeAjNVT6ZSFtJ1jrHRqseFqC+CfUwL2hhWwvvpnlTu4aZ5+1f5oNmwBopZk5XpbMdLXtsk4tTPqxRxCefaPW2Ev08i6mnNM0asZzX088hbPDFWFNN2wt1Psk794Kinl2scL+9dGFpNtmeThir5K8Q6QH3x2hQ3+EY2K03Dd7bBpstGpQVCJisEEA8a2+N34MAVZ8G9p+I7lM5pic8BcRBp74qlj4QBtxPjXFADTZIAT3o5Z2Mnhev6moj8VZGXh77Fa6oNmxW8fEt7VCdmU96oO2Sew38s/BgJak00fYJR3eZxMIOEDgmUUeNm4jUe5Z//lD3BETFO/WDjH2ARJ9q9vbfyXC0u0OpAZwOHmRdcauPEpRmn7u/43ZICw8VeXd9NG5kcDF8lOGJhpVJJ8hio+y0k6gWFA7EmWo9/81zqjTjReildy2YC5ckoXjaOu/Y3nP7weV59yVKGBMiIIgHapV25tPT/DKUYmBYt1NCdIAmK8Rkjy8YLoYrfD/cg==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR0702MB3761.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8676002)(76116006)(7696005)(38100700002)(33656002)(8936002)(186003)(66476007)(66556008)(66446008)(122000001)(64756008)(52536014)(316002)(66946007)(508600001)(83380400001)(110136005)(2906002)(9686003)(38070700005)(55016002)(6506007)(86362001)(44832011)(26005)(71200400001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?uu3FtO3BVJo6FgIMZrSVeNdy8pqwnV9vF+IRaus2JSwIY1nqNhM4B45S/8A5?=
 =?us-ascii?Q?P22kpmkGbb7w6f8VzopA6BM4Y5JQcAUrDpp/PdsBenJhXXs3gV3rmleOngOW?=
 =?us-ascii?Q?btoMtQCh7LOVohUywVGqvX1YPHQXV7SM9BueGUiwxGYLQaA+69EHKxtflpd7?=
 =?us-ascii?Q?FROvLsK1Y61hHRhCo5NQH9NoCqhneterQE40kl2weU7wEPZ9LumJFZdnCx+b?=
 =?us-ascii?Q?Bi7V8kB664kpqOwb+Qrwe8gdKiUPTXxDzKeqHDxlzkTVxBYort244kgDueTS?=
 =?us-ascii?Q?JJ/w+FBqRT5i6ItL/bPvqwcKdX9CCjqTgfdq9sjJH5UYZot0Mx89pPUWaCEi?=
 =?us-ascii?Q?2t047x8sxo2vcO5SNSftN2eWH/0mVIY/5bVSs5nQLDypvNnVX9iHQVt5dDRn?=
 =?us-ascii?Q?ISYphGYbrcc2m/4GZX18kJdQEXwJ2xnLJHJ8fKChqi6S4Lmgm03t58fYU93F?=
 =?us-ascii?Q?ztWPzpBnVzvmwasS3jZsB/fQ2xFlIMUmFHRJhFLMQmdkjqhI3jLDLT7LVkRA?=
 =?us-ascii?Q?jXd4xsq5OHy6Zeo7lANcnU3QYrSuIB4j/N/ImjuBdZnzzE8z7BjRcain2Gx4?=
 =?us-ascii?Q?G74xHMPA/Nl9wWUmiaJhUpRUDmZBVSuX8RJ3H7f06M7WWsVxq5toR3gibyHX?=
 =?us-ascii?Q?QxTqrIimmdo892dPkdxwqIjPgJYXUce8K2sHBBRcAiTI+UiMFF8Tlng9dtqf?=
 =?us-ascii?Q?gPl4asnx2QAU7plCVrFTvrgc0RNqCmmQO6Rs1jF6cHsfy/wV3rZTdEwh+6nE?=
 =?us-ascii?Q?aN48O0IARX2hNmNvCHLoCC+ZrLkm0mCV9lgi78o/zkHnjyAjXOpJ13PK3AnT?=
 =?us-ascii?Q?uX7q1cCsdAxnltTp0Bl1w4b0ROL9zy03f8R944JY0oY6BQSfCDAd2X9Ndzel?=
 =?us-ascii?Q?gT28j7tvh0La9ECU3OJDXGOUFbY0NmAciGFGsf386rz6BW3M7UiTMXPvYCiQ?=
 =?us-ascii?Q?87wtPiopU0Lp+/q6tlhY6PzKc3Mk28+hOYIK4xtTBGegfbp/nrqdttM5wQro?=
 =?us-ascii?Q?12qXtZIpXEbqJBB+RUHyqwoHpFVdmeDblTKQ6wqiTcQ8Czap/2F0BvkpTYYS?=
 =?us-ascii?Q?mx5fI704TUJhQdoq4E/LrM/7ymzIx3UmdK6ZqBWR9Tam8RG8PLfTasW8BTky?=
 =?us-ascii?Q?SJQQRb5dnpUdqKfYWrE6gtkDgn6jvuVRo0TLz90FTGNaqAZ1BnI7KQyT4Ezy?=
 =?us-ascii?Q?BeywDr4NKBzGDmxBIHQgI/yi1cF7sSipW84L/QY3sNGW/Y8ILl+CSPIk7v9c?=
 =?us-ascii?Q?/l7McmwVkjzCpWVNrIIXdvBHvWfVd3uYc4XXSWR0XGLeuPyAsoO0d9HWp8Iz?=
 =?us-ascii?Q?2sNLmTWeUiUAz9ZqoDrREVFxaOUQfvb5tXWB9FflLV1cfWX56nZ3iG6lXxu0?=
 =?us-ascii?Q?ZctqZDi9rcXnVuN2UZ0Kt627Sad8UvFZLditcbTxIZDMYospt21h03BOR81k?=
 =?us-ascii?Q?7I8kXFwZbCeExGUJJF7+kRlPWaXlNRImjN2hBnuLP5cZ4q8EfyND19HmJ0ea?=
 =?us-ascii?Q?rbeiV8+VhirKJ22sew5W773r7mrQ9SvR9ZzFvz8h4WHAs9gGq0hd9+o7Pu7H?=
 =?us-ascii?Q?u/5ix3gTnCREXGPpLocTkqAM9GOrXBHwKjrycsIWG46SVZOpugl2+EYf2S+s?=
 =?us-ascii?Q?oYsdwmRsrmtNqRIIc3tHBFzi+a0ww+hkP7eIEUAsjIDKVYa2XKHiJtlxBcY2?=
 =?us-ascii?Q?AVzuPA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: boonedam.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 AM0PR0702MB3761.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 994dd50b-fbc4-4aea-a856-08d9a5204b66
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2021 14:33:57.0602
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66daf130-5a2b-4285-873d-797de739ec58
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 dUvF1ZcFVBv5uvSt5Oefar3mEk0qagmQIYNJqdKWuYfsDeduDq6x3NW5kw1EGmBcSUfwJFMjzQ+onDTHalIrmOl+FMbtPBD6X4L+T5KdK+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR07MB3058
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Nov 2021 14:34:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55314

Hi Manuel,

> Subject: Re: [yocto] User configuration & host contamination
>
> Hi Jeffrey,
>
> Does the recipe which builds the application DEPEND on the recipe which s=
ets up the user? This is what I would try. If I understand=20
> things correctly, Yocto/Bitbake provides every recipe a pristine environm=
ent unnaffected from other recipes going into the same image.=20
> For example, if you want to link your application against some libraries =
provided by other recipes, you need to add them to DEPENDS.=20
> That populates your build environment with that other recipes output. I'm=
 not sure this applies to user accounts as well, but I guess it's worth a t=
ry.
>
> Please note I probably used the termins "recipe" and "package" incorrectl=
y.
>
> Hope this helps,
> Manuel

Thank you for your reply and suggestion.
I already have a dependency on the user-configuration script, see the below=
 snippet from my recipe.

	# Compile-time dependencies for testapp
	DEPENDS =3D "user-configuration"

	# Run-time dependencies for testapp
	RDEPENDS_${PN} +=3D "rsyslog \

Unfortunately that did not work, I have seen some suggestions on stack-over=
flow where they added the user multiple times per recipe by using extrauser=
add (I believe).
That seems a bit weird to me to add every time the same user, also the draw=
back is that if the user changes then I have to adjust all recipes that rel=
y on that specific user.
What I did today to circumvent the issue is to assign the user by reference=
 of UID and GID, but I'm not sure if this is the intended Yocto way. As you=
 stated before
Yocto presents you with a pristine environment with all information present=
, so I would expect that my user is there. Perhaps I did not include the us=
er-configuration
correctly?
I did include the user-configuration by adding it into our distribution des=
cription, see the next coding snippet.

	#
	# Usernames that will be used within the distro.
	# Can be changed when desired, each recipe must use this user for the appl=
ication.
	#
	TEST_USER =3D "testuser"
	TEST_USER_UID =3D "1200"

	DISTRO_EXTRA_RDEPENDS +=3D "user-configuration"=20

Can you or any one else clarify if this is the correct way or not?

Thank you in advance.

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.

