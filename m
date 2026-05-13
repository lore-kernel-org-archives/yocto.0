Return-Path: <ext-antti.garding@kempower.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 41EBDCD4851
	for <webhook@archiver.kernel.org>; Wed, 13 May 2026 13:11:53 +0000 (UTC)
Received: from AM0PR02CU008.outbound.protection.outlook.com (AM0PR02CU008.outbound.protection.outlook.com [52.101.72.109])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.7241.1778677909108262293
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2026 06:11:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kempower.com header.s=selector1 header.b=Cjwqt27P;
 spf=pass (domain: kempower.com, ip: 52.101.72.109, mailfrom: ext-antti.garding@kempower.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B2wDieS3WwjEkaofNETFroBJuqJAdYA6EvLo0VNti7bE5rli3t6KnfjFQUh6pZr+rfNoo2ABUru+zzXw1ExLKfeEW94Eq+1vyKF0mnFvdVaXtaxfCRcEqGeKZoEsfLRxzPkdyOy4IdzRl5lbq6YdTFS2YMtB5VHV+xII1rU/JAMF3bZADMEtztaMNhH//CgSOufcgtFhXdcfj9Ve54lOBRKXXswbSttaM1gJF7RwoMZxFbNO6jQzzQxvbIqfV9SrzF0xikq0TAbZGIy9P+BWOt/Xf0q8sYebWbQnbyh29BBP1YgKXLiTDe+coB/b0vU68lvbS09FAv6aUqZfoFSj+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2NQfS4kFv37scc4GMhjqa7PX5t10eq2OaV/haOF+/3U=;
 b=PHQI64LBD059cac1oUgPb9XsYFc7FRlMPCqvTMFEaUenxyie/BP6Y7ARId7frgn8CoH6seADtx1/jjwWAUQVzBL1ZWe+ltV7w1vC9I1pdnZF4F5K5UDubrdsh1cfTWlN/fWSbvoN72YScQduea3Q5w8jiaPKVSd6ltWioVpvrpCZ2+KcQ846Xrq1U04hWhoenIU4H6n9HWNkLoAmqPrum9fNS72bIijU2+x/o8oleFid+V1Z0xMN5ex8EzFI0Y8yQ1p/lXquLgqxkHrHpcHHu8j6xs/vnu6EF9tWiE+zQOwdHSwfwdH/j3l2DSWYba1HHVIPvC0/fVt/qP+DO4nmVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=kempower.com; dmarc=pass action=none header.from=kempower.com;
 dkim=pass header.d=kempower.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kempower.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2NQfS4kFv37scc4GMhjqa7PX5t10eq2OaV/haOF+/3U=;
 b=Cjwqt27PF3SN3vb6PR9pTNDLX9X47WdT2e/wE1dQBFh2H0lt0h5l1fgwDtXJDvRbXSvOkoSbF3rYG6Tf9vRSuASOetJcHjjHXx3Jvg3M2rZ9Zq2cTQSY0BOd74q5SZ/3NFmtVSoHA/Yy4X8sZxBRrN6OBNyenauNz5pWBB1ulm0dhGXtsZS9LuM0DfmnQORNBjtGAXBLkhYyIXOYE3f+PncbMFMWGxtYdFMu9vbB3RLxG1aCcmBv0nYtw5+ihq5vp+6nkUUb7ROyBIy4dR95dbbc9FhnlzGF0wARwFe3lP5GcbQ6Y6zsKFXSwu4H9o5WnFvmBWLjtvbjkUIKitb6+A==
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com (2603:10a6:20b:342::22)
 by AMCPR08MB11972.eurprd08.prod.outlook.com (2603:10a6:20b:771::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9913.11; Wed, 13 May
 2026 13:11:44 +0000
Received: from AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d]) by AS8PR08MB7251.eurprd08.prod.outlook.com
 ([fe80::c97e:4beb:f22:aa8d%5]) with mapi id 15.20.9913.009; Wed, 13 May 2026
 13:11:44 +0000
From: =?iso-8859-1?Q?EXT-Antti_G=E4rding?= <ext-antti.garding@kempower.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Topic: [yocto] Modifying SRC_URI before it is parsed by the fetcher
Thread-Index: AQHc4hww6A85r090PEm7Pqr9xvkthLYKfb+AgAANdWSAAAUsgIABWqPN
Date: Wed, 13 May 2026 13:11:44 +0000
Message-ID: 
 <AS8PR08MB72519BF260608361FE603E29D5062@AS8PR08MB7251.eurprd08.prod.outlook.com>
References: 
 <AS8PR08MB72519491BFB65260C510C104D5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <CANNYZj9d4aGunvF3tQPF9frgNGrxqcntb7AQO+XsBTDBsOejTg@mail.gmail.com>
 <AS8PR08MB7251242FD5DCEDE2DFA4374FD5392@AS8PR08MB7251.eurprd08.prod.outlook.com>
 <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
In-Reply-To: <3306fb96-8964-4eea-be32-27fd26385bb0@cherry.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=kempower.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: AS8PR08MB7251:EE_|AMCPR08MB11972:EE_
x-ms-office365-filtering-correlation-id: 42053f58-32da-43cf-d5be-08deb0f12e41
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|38070700021|56012099003|22082099003|18002099003|11063799003|8096899003;
x-microsoft-antispam-message-info: 
 UzuPBgPMqMBtQHmMf1o6i7Dekv05fD8IcoJxtKQHPZ/eRpHkeBVWPKaWuZlpmBcfrfM5kKVSaoVA7Rl0pN7eFpgB+CtRRwOJICkh0SiEPWHQPjUOSs0BIiPWJ2WDsYyz2ZAK1rphsJ53+mnSP/AfelmW615prBzRb8hAmu0jhB29c6DCRo1iEUbyRoQPDt4EgMtbb18I3rKiJlSi0PNq2THXNu3fV6FxyJ5YZLHgaPOL/uF9+Xw6wsFzfknpzKQU+BnCt0Hhg9wL9QTvXn0zUhy1sTWMLXbrXoFD1cseVWjUzi/IX1v7/c8UsFAqjZ5WA22J0vsVYpge7L1EB1F3pDVAMh0uNhf8ZJXYyB/Ve95TSvQM9Xt4OptkmuJa/HDIXa7WqxAGL5IJ0ZQQ+GCjB4wFUY78d82bD7qnX5DW31PquyUPxQMVIUg5pU99vfonw0jGMnORmh0wQ/FgE5kQfH6pDinOE2oPSpi5eZ/R/brUveh2g5zHvioPyZPhF4FkIoE6MginMwRWI66EDw49fm2GZxConrTHW6Go+FhYdQxFQtFAR6tWXVNDqD5JEgtqmmcqz4ci9VOnMrn26WIwZqodugF3Ar5/lNSOGY5P5H+1rSvmqQRKF+iOVYEP4Kna/mBP7vxDM4Prk70lldhQkiGnEk80zu66Yyf5eeN+DGDifbLARSzF/QRsnGn8rMF/nxyTaDN0uXCXN9CkJIsa2KYXxYaLQq5ZdQQFBKbRSCjSCA9VIpu1snqH+qz5JxJD
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AS8PR08MB7251.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(56012099003)(22082099003)(18002099003)(11063799003)(8096899003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?7ScnzF9548jeApLu0/t05nJ4LltbkaKcJyP4ZJDNmOf1uwvsyLBHN6xfY/?=
 =?iso-8859-1?Q?a96bJPaeTJDicIDOFoV18bowcA4lGHrsiBdRLPRMVbiQUIUUteYmNKaCKN?=
 =?iso-8859-1?Q?irUINirrNQPKzIHyvXfdbpDamk4jFNcMYGMX/PMkemXvZE5UfM1OSOM6N/?=
 =?iso-8859-1?Q?XZsFAkmTZDyzVg2F0cXRwQcpFsek88/GqJFdDCLppT6iiKhTvevQzFPFBo?=
 =?iso-8859-1?Q?LMn9/elnJ/ce44kFFrLFzUskUKPRlDMSx3SvErSPz62qB3+YGrAQzOIs1J?=
 =?iso-8859-1?Q?tSwWyrKjR1vZoh7K9a9lteeqU+GgP87XK7WI6zHa8p1MCbM6S1Lv0QLgrw?=
 =?iso-8859-1?Q?pQhvrzf6q2f4v1lU2kBfl6moggynxTtD7H4P3piLiMelUv+5g1JEa0HHXf?=
 =?iso-8859-1?Q?wpyGZN3RXbhg7mMN3aMPI1JY1UO6XQZwN4yG3ayEBXUplqYTrNwKqYQXiv?=
 =?iso-8859-1?Q?W94NK5hcJvD0+sRI51GhIznnN/RSGVq4Uy4uNYzjWGVMaX1GUjgynL7V2e?=
 =?iso-8859-1?Q?nXZmNlEU22p3kUd+uKGx38a76JNewxi+cpmthVa0ksIFoIE9QCDXMvJrcp?=
 =?iso-8859-1?Q?PdkJaPstdkvU6BWh840nvTE9Gf8vIFZuKyoycUdRLYZ0MANzGCShpLR7rN?=
 =?iso-8859-1?Q?5E9VfW6HpAaabexJ1B9yv8aclSEAO297E2UYOPUxfokUjc6GiRiHL8buAr?=
 =?iso-8859-1?Q?kbikyYk4yP+kGvxxxmiHrV2ilVhVXvuEVuV021E2vhELFHYr/9wuuuyS4o?=
 =?iso-8859-1?Q?OONneK9RdCl0N2sKbJjpDiYKOsl0LVfAbGUy7tdcJiU3cEF/SbRqUZbSUo?=
 =?iso-8859-1?Q?AjrLwfeOyFHG6b3iwJHuJwcKXOhYCd9lHZm/3p4mYAe5x6sQZn+vjz+Sk0?=
 =?iso-8859-1?Q?I4R6AvnMk8rrTSO71kjdINgyFZTGoJorQY0yeHB0uWgWodl89HNDqUnnf/?=
 =?iso-8859-1?Q?H2C4+5hUJ94Tl1KV1pumlLrlyZrRsGsmeoVrG8pmrc7fgGWHMIkbZ8HFPT?=
 =?iso-8859-1?Q?YX+8oYng/6OqVHP9RCwm8cqbfk+Ei3yTpywEVmKEo0icwniLddzw1DVoN8?=
 =?iso-8859-1?Q?zlTnbYhdRAs6LEmVv6wP+1DtUk7c8p9EpF2UZJvqU1XcT7NB9BMgA3PcaE?=
 =?iso-8859-1?Q?tBsTvVihwB4vNrW+xDAQg0TC0+NFF4g093AW3uY7SD5S6ALnowSsCDkxmv?=
 =?iso-8859-1?Q?W/5wLNv4Y6LsIXOBRoEq5gbwUzclun6LnZq2yTN7UEMRvxLdXu85hXLkhP?=
 =?iso-8859-1?Q?cr/YwwAoORtKRxvF9ov1nOx80aixb3krCvn7DVcSYbJf7oMgnpIZaM0Nif?=
 =?iso-8859-1?Q?DyLwtwqZq5LZUZEJhBOGw54fAcVHGZTlLzhkZYg+CX0msTCjHq1LsH87U2?=
 =?iso-8859-1?Q?KzCofTNxGH2PBYAkkU9hEqXQnsZ8cNAtt718plB9HAGYwKZ9x6d63aDf2B?=
 =?iso-8859-1?Q?Hr35nZK6tMOgn6SgpUjA1hMfwsbxlcBsPYvFN5DC2mxy/2KKsdR8z/xdHs?=
 =?iso-8859-1?Q?RLGsKmaliM/z3lUxfoG3JtdA3jiqMP/LITT5OrIYLb2GEtC/n63X3GSMAU?=
 =?iso-8859-1?Q?ok5UOlkkF2reL7m9kGOH1DyZHquIwHMGQkrq8iFb6gVJdlCsKhcTuj5M58?=
 =?iso-8859-1?Q?98/mEKf5F4Msh8HQ5t31IGu3tt9ddOufWdKwCh5oyFDYvnlD5WY5NQohSV?=
 =?iso-8859-1?Q?cxpwm2CDgHfHQhzRLejquzDwWdFVZdsyHpXKnq1AIA30Kd4WcPHgDCVg9n?=
 =?iso-8859-1?Q?jjj4Cpxuek6olBsfDIpZM/OPz5CsoHxhRYsgjM/Ktgw5l1V94kPpsf9dJY?=
 =?iso-8859-1?Q?SFWV19mecQ=3D=3D?=
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB72519BF260608361FE603E29D5062AS8PR08MB7251eurp_"
MIME-Version: 1.0
X-OriginatorOrg: kempower.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: AS8PR08MB7251.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 42053f58-32da-43cf-d5be-08deb0f12e41
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 May 2026 13:11:44.2592
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 08631c2f-66d7-4254-afbd-4f0e104d509d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5XwtrMf2rWNqtxU4q5GgWauMPYtmXRZPLJkQ+cNroWz8vtDvAbWfP0IUMnMSEaJ0kf64aHkF/+591b9V0FjGx7GzyGT66/Du3iOyeYCC02I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AMCPR08MB11972
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 May 2026 13:11:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66554

--_000_AS8PR08MB72519BF260608361FE603E29D5062AS8PR08MB7251eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

> Which conditions?

> The following pseudocode could help (untested).

> def src_uri_tag(d):
>      if conditions:
>         return ';tag=3D' + mytag
>     return ''

> SRC_URI_TAG =3D "${@src_uri_tag(d)}"

> SRC_URI =3D "git://someforge.co/myrepo.git;branch=3Dmain${SRC_URI_TAG}"

I am getting back to this almost immediately after saying that I would try =
this...

I think this would work if the only goal was to append a tag parameter into=
 an SRC_URI entry, but I need something more. I'd like the function to be i=
n a class so that I can add the tag matching into a recipe by just inheriti=
ng that class regardless of what is in SRC_URI and also disable tag matchin=
g by just not inheriting that class anymore.

I don't know what to say about the conditions. Maybe they are not condition=
s at all but rather the logic that decides which SRC_URI entry to append th=
e tag parameter to. That logic depends on PV and a variable that, if define=
d, contains the name of the repository for which the tag is to be appended.=
 It is defined only when there are multiple repositories in SRC_URI and in =
that case, there is also a name parameter in each repository URI and that v=
ariable matches one of those repository names.


BR,
Antti G=E4rding

--_000_AS8PR08MB72519BF260608361FE603E29D5062AS8PR08MB7251eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
&gt; Which conditions?<br>
<br>
&gt; The following pseudocode could help (untested).<br>
<br>
&gt; def src_uri_tag(d):<br>
&gt;&nbsp; &nbsp; &nbsp; if conditions:<br>
&gt;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;return ';tag=3D' + mytag<br>
&gt;&nbsp; &nbsp; &nbsp;return ''<br>
<br>
&gt; SRC_URI_TAG =3D &quot;${@src_uri_tag(d)}&quot;<br>
<br>
&gt; SRC_URI =3D &quot;git://someforge.co/myrepo.git;branch=3Dmain${SRC_URI=
_TAG}&quot;<br>
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I am getting back to this almost immediately after saying that I would try =
this...</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I think this would work if the only goal was to append a tag parameter into=
 an SRC_URI entry, but I need something more. I'd like the function to be i=
n a class so that I can add the tag matching into a recipe by just inheriti=
ng that class regardless of what
 is in SRC_URI and also disable tag matching by just not inheriting that cl=
ass anymore.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
I don't know what to say about the conditions. Maybe they are not condition=
s at all but rather the logic that decides which SRC_URI entry to append th=
e tag parameter to. That logic depends on PV and a variable that, if define=
d, contains the name of the repository
 for which the tag is to be appended. It is defined only when there are mul=
tiple repositories in SRC_URI and in that case, there is also a name parame=
ter in each repository URI and that variable matches one of those repositor=
y names.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
BR,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Antti G=E4rding</div>
</body>
</html>

--_000_AS8PR08MB72519BF260608361FE603E29D5062AS8PR08MB7251eurp_--

