Return-Path: <jeffrey.simons@boonedam.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 43CFBC433EF
	for <webhook@archiver.kernel.org>; Thu,  4 Nov 2021 11:16:22 +0000 (UTC)
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (EUR05-DB8-obe.outbound.protection.outlook.com [40.107.20.88])
 by mx.groups.io with SMTP id smtpd.web11.10335.1636024580546099826
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Nov 2021 04:16:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@boonedam.com header.s=selector2 header.b=CgHk0Kda;
 spf=pass (domain: boonedam.com, ip: 40.107.20.88,
 mailfrom: jeffrey.simons@boonedam.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MWreyKaPYdQrwPBoXS8ig0dpBly+MwVhQb/JTtcEOCa7MVNsEPy/KUvDckKHCxwDPrQL0UdPbK4hfQ9PVfL2uvuf7HnyJxu0tCtylWuR2NxJG3mNwifBpzYT9e+ZXcVuF/rzHga8e9NtnkWj+fm+t7o3aGhH4DK0XtqYRFFGCxp61vDSuqRAB9xRjytT7bSr5Es7mwGQxQQmQIsRNIXZ0adlvuZoeXGHf+VMb4Tc4sglbY+yrckiaZUD3HCLtYZYC/ow8UTakLLXQcp4jL8OXnvbfsrEU/v4gxczPWYCOLCGWBDnPi86jPYi9zy7s0IcpwBsTfFxutI0JvmetbB4xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/uzPnBg7LxYv8pYm5oRplusckVKR8O3vk9RW5baIkiw=;
 b=M2VqVoaVDgixpgNLuWmYTcNJKb75zbQtg40GBjYPkpp6YDhfmF2LBRUCfVS20t/v87jcsr3dNaSDr9pul76mAfhpY4G2SJl/wTAQr2PqBYbxT65Re1J2z9/oxAXiITnANi/Vi09/b4yjqwv0qJaDAnAVFJk2oni/bYNLIDFGb2GlWlPbTHZn6QFN0CUWSM3m1RZfvwoo4EUfT6Vg6i2oKcmCYKU1mU7jw3pQQAQs5yME4LdwORzAbUUITKa4kLN+dgC+Gpg1KL0my35Qbrao9GhlvvXg41WSbucV7lcFrcBZKq8Npblib9sm9O8Hna5Gm5H5Gp3PpAq6dt1CWjZDPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=boonedam.com; dmarc=pass action=none header.from=boonedam.com;
 dkim=pass header.d=boonedam.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=boonedam.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/uzPnBg7LxYv8pYm5oRplusckVKR8O3vk9RW5baIkiw=;
 b=CgHk0KdaUzS/EPd++2kmwiPonL/vzWkwUXmVKvtJawTZ5PUfq55/JCb0w09dOKo4AnAAN6NH2SB7wcmBps85eG31V/g6bbhRLTxXtjrwQosysi+MsW80R418WTw3qcmZn+/A9C8uBqa/Giadf1SQFjNuCxMCl/xQa44fY/D127E=
Received: from AM0PR0702MB3761.eurprd07.prod.outlook.com
 (2603:10a6:208:26::30) by AM9PR07MB7985.eurprd07.prod.outlook.com
 (2603:10a6:20b:2fc::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.4; Thu, 4 Nov
 2021 11:16:18 +0000
Received: from AM0PR0702MB3761.eurprd07.prod.outlook.com
 ([fe80::e86c:3b9a:ae6a:7ea2]) by AM0PR0702MB3761.eurprd07.prod.outlook.com
 ([fe80::e86c:3b9a:ae6a:7ea2%7]) with mapi id 15.20.4669.011; Thu, 4 Nov 2021
 11:16:18 +0000
From: Jeffrey Simons <jeffrey.simons@boonedam.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: User configuration & host contamination
Thread-Topic: User configuration & host contamination
Thread-Index: AdfRX/0Un7UjKwt9S2elXXvGWe+KygADR5xA
Date: Thu, 4 Nov 2021 11:16:18 +0000
Message-ID: 
 <AM0PR0702MB37613587970104FAE4F9FC1CFE8D9@AM0PR0702MB3761.eurprd07.prod.outlook.com>
References: 
 <AM0PR0702MB3761032325B33A543A700244FE8D9@AM0PR0702MB3761.eurprd07.prod.outlook.com>
In-Reply-To: 
 <AM0PR0702MB3761032325B33A543A700244FE8D9@AM0PR0702MB3761.eurprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=boonedam.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2dd9d30e-a080-4dc8-9ca5-08d99f848614
x-ms-traffictypediagnostic: AM9PR07MB7985:
x-microsoft-antispam-prvs: 
 <AM9PR07MB7985B9C17F129323EF3FFBCFFE8D9@AM9PR07MB7985.eurprd07.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 zFhGlCpubA0zgnrt/dLE95XX55QdnRCJ0AZus/ZjtXKbP3MF07xX+9LFfWMLyGpsr/wxuJJTUBghIjyOg0NdvNJ6X7bBKw+jSlWgr2h3YTa+mOenqMTT6/nr9PYTQCYJY0oCLYWf9RgRsV6r18kd3gvqkHLyAbYx1uPGYrrkBoR5KMzuaKasCvGdpmRT2qNh+wbptgPwAdMD093oAQ7zoLSKPOsEiFIbJL/NuBfBaPDSDr/iXaEnPqPTTSmfibF+sw92fbxCAp9cV0UX9mFW4R37qn4rxGVhNco+i53SPzHgxoluCiCadDQz2JNAC1qR+SM37IS/053pPTk43/IvCntnNeURfZ77RmIp4tRh1WDv+6Gp9BC6FW7pmi3MQ8pUs2n4ImX8cs93z9nt6fzxNweBSuGpWTWlA/ICchm94lf3CYuXz/lzISrzz9mca7OaKy3ZStquTXNCfEw8/9udN6zftandATF8661y6sgZMcaqEYlvOwBBoGzzqTw+ISf0DxMvcB9KFiqbYoLtLjuVkrNTN9hgdmppIddARUv8Hrlwv1Gqiq3mDLJtNozg8+m+33Wkr4xoOfkWDVE1LbwY9NbbDyjVDk1ZKbOzy/h4W9FKAmjpy9r0qIwP4BmK9YCXKT3Rxdtq1HijjcnGqRxYcG3hVNV/TEIo6IaJvb4ts8sRUBIZBgng7peFJIhDeouwDQEqNhgU0YRt+NEAV6tdYw==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR0702MB3761.eurprd07.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(5660300002)(508600001)(66476007)(66556008)(64756008)(66446008)(52536014)(316002)(55016002)(66946007)(9686003)(2906002)(44832011)(76116006)(38070700005)(33656002)(186003)(26005)(8936002)(122000001)(2940100002)(6506007)(71200400001)(8676002)(83380400001)(7696005)(6916009)(38100700002)(86362001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?8n8TWf0Scm13aNBmMkZzwGJnwGhZxAnJCSX/qVu5wJv2mpAJ2h9yycQasK?=
 =?iso-8859-1?Q?1TTXTUiZZecbQBAOyo8xpLWL91sI4cwH9mtVFHvNVuPDwINPfGbNkXnUKC?=
 =?iso-8859-1?Q?8yFytSW4V9szVs+rcjWYLZcqjkzSIgnbYrrBdDGFlGew/YRzbPB6/BG1g4?=
 =?iso-8859-1?Q?lwpDTV6YQQOFIDt7YVb1hz9WpDmKrVsbWKwx7JaN92oiFWMGOA24Xn1euN?=
 =?iso-8859-1?Q?+H+87gqoxIPu9DZlNzeLPD8G+2w8uIFucLEpLpm8KC+jvSUJIAUj9ssG2S?=
 =?iso-8859-1?Q?bhDdAt4roP8ppggNa6Qiay2rJYxN6UPP6pzuGYHuO0rQD21C/YJZieqbNj?=
 =?iso-8859-1?Q?lRMwvW85AOUW2wwerwLC34kCpSCo4w/3iZzi6AySz4wP8m7xnvEfQqeNv4?=
 =?iso-8859-1?Q?U0WdynWlNgjNOvJF0s9V4e9ZhT8kpu2IghtZfcgqOWkVsCCFjQyhNNCBqE?=
 =?iso-8859-1?Q?XsbYrZkw0JHNtbZVVKat9ZYihPw/MEQg08USL4Mp1YROzokAJNr4LpdsNP?=
 =?iso-8859-1?Q?VjCnzW03XozENEo4B1oZE1mk6dxcSFpSdAq1mgKHCpBwrclUy3z0J4JyfM?=
 =?iso-8859-1?Q?lQ+ZVNGzVkH9Z3ZZkEM0RaXoLeB8ON4E316QUFM01sibD/c+C2zQYSm36m?=
 =?iso-8859-1?Q?Jr7Yltzq3rqMcM0Q/Bb7pBqQvtfapW7md4Fnzr8mkYaUFcN14jRABbLC5F?=
 =?iso-8859-1?Q?vSdqeHeVzUr28DZeldT9fqN1q8hqhFXWU8EUSuxrlBdZRNEMY0XI14Uiuh?=
 =?iso-8859-1?Q?hR+A74tf6LEhmbv80rgaKu5Bnl+3Y5ykNl+Pa1fiSqAkNmSjSEpmtmlXio?=
 =?iso-8859-1?Q?sG/DsoDkZBDL88WekD2ekN0U72JB95ZCFveFuah/3/c8KOWJDZi49gMLH0?=
 =?iso-8859-1?Q?D2nL4wOXhgA2VMScc2d0Vn8nWJTIj17Zgk2nSbIHnXn5X45OI6v/CEzgYM?=
 =?iso-8859-1?Q?RIGMeBRZDNyDh6T0JnkzYqbIeKIFqWibn2LEpT0E2mmE/3FqfdFmik9Wl0?=
 =?iso-8859-1?Q?AU9aW4oFgQX8h0ajfn617RfqKlCT5mmliqFAqX8trfn+opvdQm1OS1v4wG?=
 =?iso-8859-1?Q?b7dknodraPpPn4C8Fo4A2ijR22SIHcrVv+QhE1g9jI5MMlsi6gCtynhsk0?=
 =?iso-8859-1?Q?kLsX454Dg6VSEIvZPqdBkwUclRXiH4yeznJV1JuPFVJVVrKsfWsIIiFIhD?=
 =?iso-8859-1?Q?bpIyLE7R+GpvF4NqHybQjAK1jrUORDX2daZ7cFLFWiTB4p909ishptwIsJ?=
 =?iso-8859-1?Q?H0SWCOjXylgl5r24JTFc4s7HFgmhf9KisOL6Yacn7Pzzecl108N/bxdE3s?=
 =?iso-8859-1?Q?2Fkl+KUtBpeo0Agah8jjOOom2bRzRVK9EuKomSUOi7tLyXfPisPUL6vPcj?=
 =?iso-8859-1?Q?3kEcdVg6RdW876V7nvAE8gTeMkw22uM3D7QDW7PoeYpRNjzGRKL4X4xbnK?=
 =?iso-8859-1?Q?7nt2u31AX4qHtggmx7/XHHlUS0gnCOeOXgzrz2gNRjlBjKPpjWmRf8SNjD?=
 =?iso-8859-1?Q?MRKgjMhimkRRt9Yrl3cacHBeTcQObM4HLYpvC+MA21yXV1E5IrcPj7jpGX?=
 =?iso-8859-1?Q?fTWstd0Rtbet0x4ZPyr7qnFzPjAbzoUye2GTROF+UEG/c6unPqpdF3M1di?=
 =?iso-8859-1?Q?TYO881hfjYPyYvPWGyp4Qmr3QjJVDx9B25FhBDFOpoqZ+tisdVC79T+gsB?=
 =?iso-8859-1?Q?FY7rzHQGBiTyTWcOoUAMGTrZ6xSeh6+97OoV5Pj6ZOVz5Id6nyuJ5jRn1D?=
 =?iso-8859-1?Q?g83w=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: boonedam.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: 
 AM0PR0702MB3761.eurprd07.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2dd9d30e-a080-4dc8-9ca5-08d99f848614
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Nov 2021 11:16:18.3053
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 66daf130-5a2b-4285-873d-797de739ec58
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 
 t12cvD5lUfVzUi+FJq5vjj4LA0cMfSghCYH17OEUL/cBSIQtSa8ou9eQHalKfnaxHdEKRBQGxuSUL1Ja9GMS2y2uMlF8GfvrdxpGANauHHY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR07MB7985
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 Nov 2021 11:16:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55238

Hi all,

I'm having some difficulty with setting up users and the respective applica=
tion user assignments. I have a generic recipe which inherits useradd and s=
ets a user, this works great for my purpose without one exception. I can't =
assign the user in my other recipe where the application is build.

Snippet from my user add (based on the useradd-example):
	USERADD_PARAM_${PN} =3D "--uid 1200 \
                      	--home-dir /home/user1 \
                       	--groups dialout \
                       	--user-group \
                       	--password '********' \
                       	--shell /bin/bash user1"

Snippet from my application which wants to assign the user1:
	do_install () {
		chown -R user1 ${D}/usr/local/bin/test_app/
	}
It fails with the message:
"WARNING: test_app-1.0-12-r0 do_package_qa: QA Issue: test_app: /usr/local/=
bin/test_app/some_script.py is owned by uid 1000, which is the same as the =
user running bitbake. This may be due to host contamination"

Any pointers/thoughts in how I can resolve this issue?

With kind=A0regards,

Jeffrey Simons

Software Engineer
Royal Boon Edam International B.V.=A0=A0=A0=A0=A0=A0=A0=A0=A0


