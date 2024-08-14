Return-Path: <steven.monsees@baesystems.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 506DEC52D7F
	for <webhook@archiver.kernel.org>; Wed, 14 Aug 2024 19:15:43 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.106332.1723662933861827870
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Aug 2024 12:15:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.us header.s=trusted001 header.b=gUvQ/pJL;
 spf=pass (domain: baesystems.us, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.us)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.us; i=@baesystems.us; q=dns/txt;
  s=trusted001; t=1723662933; x=1755198933;
  h=from:to:subject:date:mime-version;
  bh=Xjauk6aa6nOyCY9t7HcHy/or0I+/a6yrKcWNVghCrbk=;
  b=gUvQ/pJLN1mF2TJ9u2eAzvdsqJjqV5fbwzM7Oe1pwN80gELi+wYfh/94
   0Os4PPlGnuPaIT20pXsooLtuMkNQZDhW5dOuzkCjG6dKvoV1EcgceR4nC
   UgqtNaVJ71PqfzTb4SaqAsVWMwEOJzn6r8rfWahatBQopAgiSsxlWNxPG
   VsBrCrKmXboAqDCbQnl9CeU3dyatCV1jnWa4VfBraIrXxPNaNhJ0to2wq
   8TTdTmqWtJzqQj6SGfr7aLA8tKlbC0aK6sbroItxxU0xo68McglXHb6tj
   C6Ru1ppmckVjv42Mhmw1OiAL/1WiwRuw7GSteXd4325+frkvjJJqpKknR
   A==;
X-IPAS-Result: =?us-ascii?q?A2DXCwB2Ab1m/wFUSQpaHAEBATwBAQQEAQECAQEHAQEVC?=
 =?us-ascii?q?YFGAoE/gQN7AoIBsw+BLIF+DwEBAQEBAQEBAQcBARQwBAEBhQYCiWYnNAkOA?=
 =?us-ascii?q?QIEAQEBAQMCAwEBAQEBAQgBAQYBAQEBAQEGBQGBIIUvRwyCXIQxXgEVaiYBB?=
 =?us-ascii?q?BuCeYIcSK9dgTQaAmWCGATeAQkBgT4BgWmGRxoBKkhqhEGGSUOBV4I4AYUyh?=
 =?us-ascii?q?BOCLwSSFoJCiTIliVATiVSBRyIDJjMhEwFVExcLCQWJQYMpghaEGIUngWcJY?=
 =?us-ascii?q?YdtgW+BPoFeSoJ0S4VbgQKCWXROPwINAjdAgVodQAMLGyExPTUUGwUEgTWlC?=
 =?us-ascii?q?wQNhgh8lGWybgcDgmKBMwWKa5Z/F4QFk2EDGZI/mG8ioyKFKgIEAgQFAg8Ig?=
 =?us-ascii?q?WeCFYECgyZRGd5rgTMCBwsBAQMJiyIsgR0BAQ?=
IronPort-PHdr: A9a23:PaOCNxWWp6AVrXPHHuiZAl3Of77V8KwEUjF92vMcY1JmTK2v8tzYM
 VDF4r011RmVBt2dsqoYwLON7ejJYi8p39WoiDM4TNR0TRgLiMEbzUQLIfWuLgnFFsPsdDEwB
 89YVVVorDmROElRH9viNRWJ+iXhpTEdFQ/iOgVrO+/7BpDdj9it1+C15pbffxhEiCCybL58M
 Bm6txjdutUZjIdtN6o8xBrEqWZUdupLwm9lOV2ckxHg68mq+5Jt7zpesO87+c5aVqX6caU4T
 bhGAzkjLms4+s7luwTdQAWW/ncTXXkYnRROAwje8RH1RYzxvTfgtup8wyaVI8v7Rq0pVDu47
 qdrTBjoiDobNzM87WrahNB8gL5drRm8oRF03ozab5yPNPdmfq3TY84URXZPUMhSSyNODZixY
 JETA+YdJ+tUs5Xxq0UIoBCjBQesHuTvyjpQi3P42qM61OIhERrY0wM+BNICqGnfosjpNKgMT
 +C60q/IxijdYvhL3Tvy5pXGfhUvrfqRWr9watbRxlcxFwzbiFWcs4nlPzST1uQWrWeU8fFgW
 Pm0hGE9tQ5xuTiuxtwwiobXg4IV0UrI9ThiwIssI9CzVUF0b8K+HpRKqyGaK5V5QtkkQ2xwu
 ys3zrILtJ+6cSUI1pgqxgPSZv6EfoSU4B/uSOecLSlkiH9nZL+xiAi+/Ea9xuD/SsS5zlhHo
 zZEn9XSqHwAyhre4dWERPtl5kqtxCqD2xrR5+xKO0w5lqXWJ4Q8zrIoiJYfrVjPEjLzlUj5j
 6Kbcl8r9+225+j7frnro4KQOoxvhQz7N6kih82yDOIlOQUQW2ib5P+81KH98k3jXbtKj/w3n
 bfBvZzGI8kQu7S3DBVP0ok57hayFzKm0NMFknYZNF9FYxeHj5TxO1HJPfD4Ee+zg1Synzdvw
 PDLJqHhA5rXIXjFlbfhZrJw51JAxAYv0NxT/Y9UCqobLP3oQED+qsfYDx8iMwyo3ennDc592
 pkCVmKIB6+VKKLSsVmW6eIzO+SAeZMZtCz/JvUr/fLjjnA0lUUAcaWx2JsYcnG4HvBoI0WDZ
 nrsh88MEXwWvgUgUuzllluCXSRWZ3a1WaI8/S80B5y9DYrYXY+imqKO3Dy7H51NemBJFFWME
 Wzye4WZQPcAcCSSLdR5nTweSbehU5Mh1Q2ptALi1rZrNvDU9TEAtZL/yNh14PXelBE19TNoE
 8Sd1HqAT2V1nmMTWz82x7pzoEx6ylifzah4hORYFcZU5/NLTAg1KYLcw/Z9C9DoVQKSNuuOH
 Ry3Rd66Bhk1T8kt2JkfZE1hHM24iRLO1DbsBKUa3fTfFZs/7qX023nqO9072nHNyK45lV4kT
 8BTc2q8ifgs2RLUAtuDtkKfjKunbuBU5zLA6mqFhUHG/HxjEUQ4Bb7ZUG4SYA3TqtLi607ZZ
 7WnBK82KRdMzNXEN7AcOY6htklPWPq2YIeWWGm2gWrlXX5gjpuAb4vvLmMa2iiVSE0JiBsa8
 nvOMw8iTjygrGTTAH0Ldxrvbkrg/PM4pCa9SUk5nA2PZldqgryy/BNdjPeASvQVi7QDvippq
 zh9EFunmdzMDN/VrQNsZ7RHfd44+xFazjGxig==
IronPort-Data: A9a23:gbVGzamb1Uu+ECl85h5oQdTo5gw0JERdPkR7XQ2eYbSJt1+Wr1Gzt
 xIfC2zVbK2INDTyctp/a4jkoEtXsJXVn95nSwZurSphFVtH+JHPbTi7wuccHM8wwunrFh8PA
 xA2M4GYRCwMZiaA4E3raNANlFEkvYmQXL3wFeXYDS54QA5gWU8JhAlq8wIDqtcAbeORXUXU4
 bsen+WFYAX5g24tbjpIg06+gEoHUMra6WtwUmMWOKgjUG/2zxE9EJ8ZLKetGHr0KqE88jmSH
 rurIBmRpws1zj91Yj+Xuu+Tnn4iHtY+CTOzZk9+AMBOtPTjShsaic7XPNJEAateZq7gc9pZk
 L2hvrToIesl0zGldOk1C3Fl/y9C0aJu+5HqMEazjO+oyxf4K3Tx0fpQT0ZpBNhNkgp3KTkmG
 f0wNCAEaBWY1rrumOv9V/IqjM0uN9jwII4aoTdryjSx4fQOGMiFHP6MtYMehV/chegXdRraT
 9EFZCRialLFZBtUN1oMIJg3kfy5nWXydiYetUn9Sa8fuTSKnF0hieCyWDbTUvqIYudHoWjGn
 2vXr1+kCAMrDvfPzyXQpxpAgceKx0sXQrk6Bbqz6vlChFyI2ndVGRodSVyju/67h0WiHdVFJ
 CQpFjEG9PB0qxftHoW7BnVUvUK5g/LVYPIIe8VS1e1H4vWOi+pFLgDolgJ8VeE=
IronPort-HdrOrdr: A9a23:a2eD9a/wLWIasSYHyABuk+DNI+orL9Y04lQ7vn2ZKSY/GKGlfq
 eV7ZAmPH7P+VMssR4b9uxoVJPvfZq+z+8W3WByB9eftWDd0QPFEGgI1/qA/9SPIUzDH6JmpM
 BdT5Q=
X-Talos-CUID: =?us-ascii?q?9a23=3AVtVDxGhg5a4Uq+p92fKjRmipezJucVPw3UncHmy?=
 =?us-ascii?q?DDTxXELKIW1Cuu6Q7qp87?=
X-Talos-MUID: 9a23:G0DqzQmljWEEGx887WNddnpENuBK8ZuAVnkEgMU95sOWBBZbazGC2WE=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.10,146,1719878400"; 
   d="scan'208,217";a="241898107"
X-IronPort-AV: E=Sophos;i="6.10,146,1719878400"; 
   d="scan'208,217";a="200464411"
ARC-Seal: i=1; a=rsa-sha256; s=arcselector5401; d=microsoft.com; cv=none;
 b=i9VVHwwHAq1LPAjIW+VSouXc+IJGKDhyncAIopm0n5KoG2zRG2R1YGN/fhFwfldB7+e+ZZ0WdFpnr+H0JJnMIfH3pp3Pk0wpuP2MbKj7lUJUdyYpR27uZGrf1fFCyIzfigHBRzwy+BAf87IPd+TVsS1siyeJhQKlCfe+xMucdpWMqrYhN4qaQ9zFQGz5yii58VcnHWhq24RwWQWgPTeXwMGB0wjg9B/Nlnwxv4BbRFanpeJizPFL15b/JJK6Pi0HFOqQIZqYSatSjtalzmEFIVLFZ0CfloQO8fxOjEjmT02PQ2ZW/c2nBluDu50zdhcibSi5m9fsz1XQzZFtH3BfTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector5401;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Hs0LbRahTCM9rlW6KrAsExxVmgr1gFNBfucGa9+PMVg=;
 b=JGhkXookn8dTq4WjBLhlmDPFrj87h8MFS961y7HYYtPG5p/vSi8B8r6dIRuYmKLc/SypFyBCjBXt42REcjQFc3uqD4Fy7DkUbMCDOp2Qo1M/gpMnN+8WcjlA9HA3YWxTq2Rjv4AwEYsJn1cZuPNWUXeQL0ciYuFTM4Xv6rGFMc/qGvRVxoXC8BA7QzPNN4rQYhFvRQSerl21PlL1o1eRjQOcxCeFHK0aoMFr1mPGitP74H9mJVNel/pxP7AtY0u/CCVWbm/GvtUgrIekBiG2ciguSYKI0kopkMqFo4DWdgiMYur+9Muhj01jyVo9ZI2LE7W+JPRxyjA2LX9ZKW9L9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=baesystems.us; dmarc=pass action=none
 header.from=baesystems.us; dkim=pass header.d=baesystems.us; arc=none
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.us>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Parallel builds under yocto
Thread-Topic: Parallel builds under yocto
Thread-Index: AdruezeoNERFgh8NQaGORHBvGKHEug==
Date: Wed, 14 Aug 2024 19:14:22 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=baesystems.us;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH1P110MB1683:EE_|PH1P110MB1428:EE_
x-ms-office365-filtering-correlation-id: 6bb4e9af-152d-4cb1-52b4-08dcbc954e08
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;ARA:13230040|1800799024|366016|38070700018|80162021;
x-microsoft-antispam-message-info: =?us-ascii?Q?StpZOVgUwIpOebTY+L3BuR410pr2juKaIigymv2vQEMqR6M8JZc4ZagRoSKo?=
 =?us-ascii?Q?If62sogfW8/eYHTXdgcXmNuXW2ur76PVTkFacCAQDAEl575ekn4YQXir2EWs?=
 =?us-ascii?Q?KBY1crr7wz1wbu/W3ggcAwHg6U8P0dntNmNsHISI5pBV3kpidJa/PJTUX83X?=
 =?us-ascii?Q?aN89Cm0Kx5pyjQdd+RrQwDNlah5HDe6MmaAcXJmGk4QAYvjCa7k3C4iphLuE?=
 =?us-ascii?Q?zHQXm/AvqP6NkydGcClx+I5NdgvVsM571b23oAdmCz7Wy5r9NeASerFqKia6?=
 =?us-ascii?Q?8MGr6YWmj0IEOyf6lc7UvN8+y01pDE6Hs6nr3FHPFPfkA+iLHEXU3KGnC/+u?=
 =?us-ascii?Q?cTODxZx65RmaWKwcWv53RC2hyWkXPR1lVbbtalFb/ZY7RPMId0kmizOaMHyB?=
 =?us-ascii?Q?mAvJdY9IgirUPumxlizuYk7kjjc5GF1PCZul5BH6M0uxm4GOuLHk57gAE3nu?=
 =?us-ascii?Q?oapBDTWY+cEXgDld3JqoZbII9vEZJHk8qBcKdhJu5KQjT/e6/EXtD7jCAkz2?=
 =?us-ascii?Q?so758Y6Gthx/3kxjOzZ5GSib7MxLwVJw/T5Ctu+3n44m7GwzJM7lGs4jJFpQ?=
 =?us-ascii?Q?DukEy1EMoJxyuzO7RnttoEsQ2Fbooda+H9eRKNdxv4UycSBRaYrTyP6jry+P?=
 =?us-ascii?Q?xlI8ohsUIpwu18dw0C3+vXpIS7aW1UK7iRJF7xztO2nGE1Du5l7l6foiZfN9?=
 =?us-ascii?Q?2ORv7x8FxhHlIWmXhi28ZJq3X/+ZFkBqB0FSALUMwrmiYLixOnFTBSFtDwix?=
 =?us-ascii?Q?+QQr/BzMdVVObDcOm5AWId7tc7sHNN/Kc8W0YQrzYWRoJSIO2sWkZPZ2SJ5T?=
 =?us-ascii?Q?SbrqbtWHxqioeGRhyZ+hDVFvTNPlC0LYDLk/bi5C1Ejtd+McjkzSkvy9kX41?=
 =?us-ascii?Q?aUOPCwuGbejkgig7beTj/ZtHkzkWb+GS6cBz4OdAJU0H2pqAHC9dSy8C7fNR?=
 =?us-ascii?Q?Mp1apoFZnOBd0ZDveCOOVqdRpz6/51MH0noFmxanDxc9webJnfIJ9RkoO/N8?=
 =?us-ascii?Q?oDokxzX5AS9GJGGi+Vh995BgA2hgJcpfJFpI5/GGJsdousI+7t/DDScEvrT6?=
 =?us-ascii?Q?wjws+9/sAB2dnrSqD5II49n9VGysIWi81uNLemp3fnEtOejuouSUf/UDUIj3?=
 =?us-ascii?Q?FfvyLizv9OENJoP8dTy9Cph97Q1E94uhFtQwPMJ14TFl+pX8wfFjzgDp5TKB?=
 =?us-ascii?Q?DEQYLe+0GG2yORklqNWnC3io4zcCVncz3FqY9SNM4YJQv9CwgftzX3j9qr6x?=
 =?us-ascii?Q?zu9yMukC1mHwQqJzlz3USQkgm1oAzJcZrhunJ/4pCQ6KqTwnbG8l9fBGtVDV?=
 =?us-ascii?Q?PmjfdE5/RIkSoAtONN0RDbs7GsamWGd/FKoqzXquc1TexqLbfe0E9to5TXO7?=
 =?us-ascii?Q?MF1B1DzrhfH3WeqmoeKidxwj8LEsySbOniHu/DvhLsszKnKAIQFjF3O7ggzG?=
 =?us-ascii?Q?DrMO4t8MUf4=3D?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(366016)(38070700018)(80162021);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?creGnJoAf3q2xVVRnnt+vxl/xHzGDY0Xh/33rtOBamniuedt7zXIYodfg5y7?=
 =?us-ascii?Q?hw6uH96vNtwNrvreunFOaQ86xMo2K2m80OxBJPngNMbtmnt+CF02IWDpI4I9?=
 =?us-ascii?Q?sAP2LLI1/tp4HBE335cpFYHdpgMimR2gKIUSwJa8OINeEMCvQD1s/S+GR91E?=
 =?us-ascii?Q?jsyp+GJDL0ZkUsM1atsT83AO3+Bnp7caEBXr4Jknk1mVZ9CKfx4VM7IMpn67?=
 =?us-ascii?Q?+oy+W7H36mojxHWbTFDx7D+U6ydBvr2IGvvGhrgjGyxn4eWTZbZ/FDYr/zmM?=
 =?us-ascii?Q?4ZyZAPw0o63YZyEmCy6QmKX/z9UBI9xcbpoTZoCQegjE8dssv5KPhdk0dXU7?=
 =?us-ascii?Q?g1oMUo/H0JNv7dH5H6CdhzNCyM1cl3KK+PcOKUR8ZeM/NJGCCL6ev6HH9w/h?=
 =?us-ascii?Q?IYRHoDD/Tw1j8/OPzicg9/+LXzxji0+SGpq/87BN/1W0O57qsSIqAMiY/WUl?=
 =?us-ascii?Q?KZBJxEMZv+3dmeyDeyjreXWT2n0+R8Oqa1qZvhocZ/02NbMrslMUd9qN4m+I?=
 =?us-ascii?Q?rIpMHPMGbe/MSgh/RJq/U8xJ8Z+EwmR+Yu/wLtmpdmjHWTHhwq4TwfuvEgzi?=
 =?us-ascii?Q?y5UkHvXFPt1Unv+MjlAFcqrB4Tq+GdIgn6deDTs6gPbx7fWsDY4VvfXMmNLY?=
 =?us-ascii?Q?R2NqV8IOZDaeDh8LskGR779Uva6G1T5iGBqZibFqr85ch9ti0u5UU2jtHkad?=
 =?us-ascii?Q?GS/RLIcLY/2xHGvSCweqcg/7fWwlObrkpfpCu0hreO/TyY8OpKnQmV3+v5Oy?=
 =?us-ascii?Q?PNCxwadHgz4LIQTswkEDAuTiNJtqKbYDGSpywlz1RpGJzt8QKfS3eNTQKUJc?=
 =?us-ascii?Q?p33jLjpcvUqUDGVIt25uwP3Vdy9hPk7zotnbr5ivwM7AANn+x85g8fSNB2hC?=
 =?us-ascii?Q?x6pU+wSsxGQCr9kXA11MegClkcMBkFAWoSHhcylctCUiE3A/nJO8tYuhUlud?=
 =?us-ascii?Q?Yj3wedkqCXG+qtseDM598cSQ2fV30K7qhAo1r6r8AKPXhG/3EQGmJM2BjNnJ?=
 =?us-ascii?Q?fg783uXK+K3rhgCd8WzIXWehoiyjI43q33JuXUIFiZ7upkkwSc0cO4Upk1IY?=
 =?us-ascii?Q?mww9MROM9jVJbp7HyZ16RyqjjOPYgKOIGi5/QWm/8DK+uXrJ7OHczoJSAcUy?=
 =?us-ascii?Q?/UuqsbNiibsy5KM6+JRhj9N2xdJqZRsn4WOJoCTEIaz3QICFOo6ti4OhKGAu?=
 =?us-ascii?Q?K6J94A7pxtwcsDFLH5SpZB91lOn5kGhdRurdBHbj7pZnsfUTnY7mHuLfPqcA?=
 =?us-ascii?Q?ovakqhujZd9ANozT3hHZHx+ekR/vvoysRxiK1/oBq8f4mhfb1bULlr9WT/nR?=
 =?us-ascii?Q?UriEUPotv+9HI13awYdEZaYU4iYPoEv32xekgd1+68+mpB8dRYAC1VbW6pE0?=
 =?us-ascii?Q?0klJ8I+ClG1ObWlnTjN4BzvgaMYQI6QshKv7wMtUVzekiTzyUkAjMfWxW5Uw?=
 =?us-ascii?Q?BG/3Zw0ZRJIGfpMcKuKRsbVjlLeaMirSG3R2zggj+PGkaN5ZqS6P2qnkv6tt?=
 =?us-ascii?Q?vAybZX6Z9Kc6ejK7fwfC27zNyiYVrGRq0ajG?=
Content-Type: multipart/alternative;
	boundary="_000_PH1P110MB1683F9A9A5E1D69C1A25B5139F87APH1P110MB1683NAMP_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH1P110MB1683.NAMP110.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 6bb4e9af-152d-4cb1-52b4-08dcbc954e08
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Aug 2024 19:14:22.4564
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 03b86c3a-8954-4d19-9522-e464fe9f22ce
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH1P110MB1428
X-OriginatorOrg: baesystems.us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Aug 2024 19:15:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63699
Message-Id: <20240814191543.506DEC52D7F@smtp.lore.kernel.org>

--_000_PH1P110MB1683F9A9A5E1D69C1A25B5139F87APH1P110MB1683NAMP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello:
I am looking for some clarity with regards too parallel builds under Yocto.=
..
I think I had a false assumption on setting PARALEL_MAKE...
To increase thread usage: You add following to your local.conf inside the b=
uild/conf directory. Replace x and y with your wanted configuration.
PARALLEL_MAKE =3D "-j x"

BB_NUMBER_THREADS =3D "y"

Is the following true ?

PARALLEL_MAKE defines how many threads should be used/dedicated when using =
make -j command during do_compile.

BB_NUMBER_THREADS defines number of threads dedicated for bitbake.

I set up like so:

There are 12 cores my board

Yocto supporters say threads should be 2 times the number of cores, but don=
't go above 20..., or just the number cores, also under 20... depending on =
what you read.

They also say, increasing PARALLEL_MAKE to higher values, increases your ch=
ance for a race condition.

Is the following true ?

PARALLEL_MAKE =3D "-j x"  # For do_compile

BB_NUMBER_THREADS =3D "y"  # For bitbake

PARALLEL_MAKEINST =3D "-j x"  # For do_install

If so, does this mean for 12 cores:

BB_NUMBER_THREADS=3D"8", will this dedicate 8 cores just for bitbake to use=
 ?

And does this dedicate the remaining 4 for do_compile and do_install ?

PARALLEL_MAKE=3D"-j 2"
PARALLEL_MAKEINST=3D"-j 2"

Thank you...

Steve


--_000_PH1P110MB1683F9A9A5E1D69C1A25B5139F87APH1P110MB1683NAMP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Segoe UI";
	panose-1:2 11 5 2 4 2 4 2 2 3;}
@font-face
	{font-family:"var\(--ff-mono\)";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;
	mso-ligatures:standardcontextual;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal" style=3D"margin-bottom:13.2pt;background:white;verti=
cal-align:baseline">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#0C0D0E;mso-ligatures:none">Hello:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:13.2pt;background:white;verti=
cal-align:baseline">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#0C0D0E;mso-ligatures:none">I am looking for some clarity with regar=
ds too parallel builds under Yocto&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:13.2pt;background:white;verti=
cal-align:baseline">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#0C0D0E;mso-ligatures:none">I think I had a false assumption on sett=
ing PARALEL_MAKE&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"margin-bottom:13.2pt;background:white;verti=
cal-align:baseline">
<span style=3D"font-size:11.5pt;font-family:&quot;Segoe UI&quot;,sans-serif=
;color:#0C0D0E;mso-ligatures:none">To increase thread usage: You add follow=
ing to your local.conf inside the build/conf directory. Replace x and y wit=
h your wanted configuration.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;var(--ff-mono)&quot;,serif;color:#0C0D0E;bo=
rder:none windowtext 1.0pt;padding:0in;mso-ligatures:none">PARALLEL_MAKE =
=3D &quot;-j x&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;var(--ff-mono)&quot;,serif;color:#0C0D0E;bo=
rder:none windowtext 1.0pt;padding:0in;mso-ligatures:none"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;var(--ff-mono)&quot;,serif;color:#0C0D0E;bo=
rder:none windowtext 1.0pt;padding:0in;mso-ligatures:none">BB_NUMBER_THREAD=
S =3D &quot;y&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;var(--ff-mono)&quot;,serif;color:#0C0D0E;bo=
rder:none windowtext 1.0pt;padding:0in;mso-ligatures:none"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:12.0pt;font-family:&quot;Segoe UI&quot;,sans-serif;color:#0C0D0E;bor=
der:none windowtext 1.0pt;padding:0in;mso-ligatures:none">Is the following =
true ?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;var(--ff-mono)&quot;,serif;color:#0C0D0E;bo=
rder:none windowtext 1.0pt;padding:0in;mso-ligatures:none"><o:p>&nbsp;</o:p=
></span></p>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
b><span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif;color:red;bord=
er:none windowtext 1.0pt;padding:0in;mso-ligatures:none">PARALLEL_MAKE</spa=
n></b><span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif;color:red;=
mso-ligatures:none">&nbsp;defines
 how many threads should be used/dedicated when using make -j command durin=
g do_compile.<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif;color:red;mso-lig=
atures:none"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white;vertical-align:baseline"><=
b><span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif;color:red;bord=
er:none windowtext 1.0pt;padding:0in;mso-ligatures:none">BB_NUMBER_THREADS<=
/span></b><span style=3D"font-family:&quot;Segoe UI&quot;,sans-serif;color:=
red;mso-ligatures:none">&nbsp;defines
 number of threads dedicated for bitbake.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">I set up like so:
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">There are 12 cores my board<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">Yocto supporters say threads should be 2 times the number of cores,=
 but don&#8217;t go above 20&#8230;, or just the number cores, also under 2=
0&#8230; depending on what you read.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">They also say, increasing PARALLEL_MAKE to higher values, increases=
 your chance for a race condition.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">Is the following true ?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:red;border:none windowtext 1=
.0pt;padding:0in;mso-ligatures:none">PARALLEL_MAKE =3D &quot;-j x&quot;&nbs=
p; # For do_compile<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:red;border:none windowtext 1=
.0pt;padding:0in;mso-ligatures:none"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:red;border:none windowtext 1=
.0pt;padding:0in;mso-ligatures:none">BB_NUMBER_THREADS =3D &quot;y&quot;&nb=
sp; # For bitbake<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:red;border:none windowtext 1=
.0pt;padding:0in;mso-ligatures:none"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:red;border:none windowtext 1=
.0pt;padding:0in;mso-ligatures:none">PARALLEL_MAKEINST =3D &quot;-j x&quot;=
&nbsp; # For do_install<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-size:10.0pt;font-family:&quot;var(--ff-mono)&quot;,serif;color:#0C0D0E;ms=
o-ligatures:none"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:#0C0D0E;mso-ligatures:none">=
If so, does this mean for 12 cores:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:#0C0D0E;mso-ligatures:none">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif">BB_NUMBER_THREADS=3D&quot;8&quot;=
, will this dedicate 8 cores just for bitbake to use ?<o:p></o:p></span></p=
>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif">And does this dedicate the remain=
ing 4 for do_compile and do_install ?<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"vertical-align:baseline"><span style=3D"fon=
t-family:&quot;Segoe UI&quot;,sans-serif;color:#0C0D0E;mso-ligatures:none">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">PARALLEL_MAKE=3D&quot;-j 2&quot;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">PARALLEL_MAKEINST=3D&quot;-j 2&#8221;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">Thank you&#8230;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Segoe UI&quot;,sans=
-serif">Steve<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_PH1P110MB1683F9A9A5E1D69C1A25B5139F87APH1P110MB1683NAMP_--

