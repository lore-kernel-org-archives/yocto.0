Return-Path: <matthias.klein@optimeas.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9639EC02183
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 08:21:42 +0000 (UTC)
Received: from EUR03-VI1-obe.outbound.protection.outlook.com (EUR03-VI1-obe.outbound.protection.outlook.com [40.107.103.101])
 by mx.groups.io with SMTP id smtpd.web11.40503.1736842898573369880
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 00:21:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@optimeasgmbh.onmicrosoft.com header.s=selector2-optimeasgmbh-onmicrosoft-com header.b=aaP55zZB;
 spf=pass (domain: optimeas.de, ip: 40.107.103.101, mailfrom: matthias.klein@optimeas.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g9J6oSlPLKq+rbWSW/0EwX1n7+7JOSvZ2swTt+/7LqRl5jW4fQ9yXpMpR8H1Vx1TUOxZmeK/K5tvLaFoD9p0fE3hFrb7JoMI1IR/5PYB/ZmOGCkOJN2jZUZiMV/SvPEOa46EiP42RhOCv7uA9YSinoYPbuUpGCQ3wQNuP/oD1a07uerjAp8nqF1lN0tRsJDFCZo1WNUhL4zMT24M0cNVbWN2irHbxWpihv7YQfAq7/ZFaNlxO6tsjmi3hfa6nnv3I2LFUOX+koA5rz2iXqccD4GPnmIl6wXV43NBYDkx56FlqvLt+SmUVKQ39HujODI4aJr6LBXzwS4r5IoMEq5AtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8xiZHdATpH/8dmED31yM0Qg6HTxKSEZU35gn908G1Y4=;
 b=HXG1zuUyyIAdujQr4MN4TOdqWoh4Qi3m7+u1LxzHqD73hL7Q9SD4rRTpGFXcbjhMx7cttWb0tJbKqC/r3PIy6QACRSfkWK//iyRabTZW98zkCrEWRLk3b+xRldJAupPcmyUe7o+JPR2cyXmqH0cI8CLPgNQfd/JcuanbAIn/JZy7NbDNSDOnxKJXdzcLB7jFYy2JOMJGEOw2aMgwZs5EYBlv/DA0xCMXu93A9l1jTCk0nnOzW/nQzpcqIWHfqH7Cd74SFpOiW/YeZRtnOBuiSWbBe1CaFYrBIlGDfrEioslZuHVRjrfXU0amjwfuCleCT6x78BwGRI8v4/+vCjeKqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=optimeas.de; dmarc=pass action=none header.from=optimeas.de;
 dkim=pass header.d=optimeas.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=optimeasgmbh.onmicrosoft.com; s=selector2-optimeasgmbh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8xiZHdATpH/8dmED31yM0Qg6HTxKSEZU35gn908G1Y4=;
 b=aaP55zZBhXYkJamqRG4KS8WQM0PuGbzjHmGolS6l7hX62QkNIww0gLIY+44QBqcm9Euw5JK7fVVnTO2hUpAdRerf/dFx6WqCRbdGAcfr2HblojeZQyEYirg5cxFrVHNpo3u39PynToOBBSsYRK2DD8DnN03ByJ+cwduL/P6Qf8Y=
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:28e::9)
 by PA1PR10MB8691.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:102:445::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.11; Tue, 14 Jan
 2025 08:21:34 +0000
Received: from PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a]) by PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
 ([fe80::f52f:a369:6e49:d9a%6]) with mapi id 15.20.8356.003; Tue, 14 Jan 2025
 08:21:34 +0000
From: Matthias Klein <matthias.klein@optimeas.de>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Strange shell behavior in conjunction with ANSI colors
Thread-Topic: Strange shell behavior in conjunction with ANSI colors
Thread-Index: AQHbZltBaQnkOGiaZ0aOJBAgDoXtcQ==
Date: Tue, 14 Jan 2025 08:21:34 +0000
Message-ID: 
 <PAXPR10MB5277125A34E148DC166EA5FA99182@PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=optimeas.de;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PAXPR10MB5277:EE_|PA1PR10MB8691:EE_
x-ms-office365-filtering-correlation-id: d05db7b8-b441-4f1a-c384-08dd34747531
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: 
 BCL:0;ARA:13230040|376014|1800799024|366016|10070799003|38070700018;
x-microsoft-antispam-message-info: 
 =?Windows-1252?Q?Rgv1gfvmZVQV8RyiumCVvTS2rMOV3WkYVRzaGJc3m/NmfoROMs4I0zE6?=
 =?Windows-1252?Q?iZzUH8e+E3mCKEh9R31Sjg6ZzDKFnQ9mg5De7V7OUROWMUfIPcjVRpbg?=
 =?Windows-1252?Q?5eqP29rw/8CC2xeVXKtIJy3yO0/WWS0GgNvf0Er42yq89hwgnKKqwiuy?=
 =?Windows-1252?Q?j1Q2oGGT+4jdgT+7RmaKsDL8cfh75O0s+q9+0qOPnjPivfXitL3zSnZt?=
 =?Windows-1252?Q?D73i+DjNiWBDN0tJuMPpUvw8ZOgyKk9hPAjjqjgg2X/IrsB7yIMdeTvV?=
 =?Windows-1252?Q?m6x/WZkAciE6BN+HncHNWRZXYdoUByl4qokq3JJnxv4D6yOArEYzo80k?=
 =?Windows-1252?Q?eLdpaqvtb1QoY5S1kJokuFldjXnXH8CCjj7pjFujzwyZf9E9BtQBD7Kc?=
 =?Windows-1252?Q?T8ak6coZGgi+qkEsBLCjsnefO3tETXqLFO+2RtP74uv2xGJv+4negYR5?=
 =?Windows-1252?Q?dOvG15txaXRBAQz3r7Q+jMDc5ODCUc3mz81qxkAW6iUbDLcyOrQxtokH?=
 =?Windows-1252?Q?r616yntuZSPKZXgpjrmwqVLX0jmB2mgmd52/P64zzewKFZFiBiqCz1uc?=
 =?Windows-1252?Q?AJ22dRNgJvH+5mQPQKYT89CR31n91ZCvoNct2Jq4tpBSEB8aVKO2QQzu?=
 =?Windows-1252?Q?Tv+8mDjCYgAV/dc5F3szwLRJla5PWLzijoxjHGMM5HSSuDcZyHz+viyV?=
 =?Windows-1252?Q?1CZP2C1DX7FeuMrOTJiTyc7M2vtTO8VvlOGsx6ndqZjEjB1Xy+i8n5Tx?=
 =?Windows-1252?Q?hNCnYqxlBAyQzSmpEYGC8DdQ9qEPbpBcbaqYfO7qHY12heLi7AJWMLPU?=
 =?Windows-1252?Q?IvEmw2tS4ZNAi4Ik1E/wDeF3wgGhjLo8IkCU4svwAPgikMA263HSuFAo?=
 =?Windows-1252?Q?LI4hRUw9sP72Fe109wGn9IDNceH/+r7tTD4YjFSfPdcbGxmdIQRPEXKW?=
 =?Windows-1252?Q?soQyO4jLQpq7CtX5qqBkj4yFdjkaEehNlWUlkj3cOz135Tesf7RHqYXf?=
 =?Windows-1252?Q?k7gm1Iy7bbWeyOW8m7E/n9MLe71PQdokXutycNcHZEVeJTIQNyYGayF5?=
 =?Windows-1252?Q?SbwFomxPCltPK2HfzOHm833KVriVT/gLXjsY/hp8NaH8uhjpCDisZ/WU?=
 =?Windows-1252?Q?7v3HWZH+9GQpqb0dkkr85LAjCHyIrv+Cxc1LHRA19n1nWuILgT0SlLCQ?=
 =?Windows-1252?Q?uejp2qqLuezpjowi4c2QjWimk7c2C39I1axFPqBWGwUPCDY62bJRHD7S?=
 =?Windows-1252?Q?e1k9QZ3wEBzCq44gj4s7aTcOdJTja7SHMyagFRkLYestHlKVmFh3C+5s?=
 =?Windows-1252?Q?2ji0O3vWiz6MwuHt4yQabCAOQdNe1KXQcbWe0MCnTHhJz9iarVCqtlhd?=
 =?Windows-1252?Q?Db/ppV2pAlTforH4tSO9g9WUOD1rdKiTim3LNWmOf5SDVRcMiVE1bI1j?=
 =?Windows-1252?Q?UpPDzHJkplrhoo/0F59z40+311oB5m9CjP5Vec4NvQ9UO7kelB9aKfK5?=
 =?Windows-1252?Q?NiNaXxSN/C4BJrptMkfNadFt1+UH13ThVN48PufMjGH7whA1A/u8uTGd?=
 =?Windows-1252?Q?0yf69wEK/tUYMWXs?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(10070799003)(38070700018);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?Windows-1252?Q?KP2yWKRV2/kv/q2iLdY6NEX9D7IVfE1Utifsbl4ivMpe5TTy8E0jjWx4?=
 =?Windows-1252?Q?AXesYzcn8n0NA2FhQc6IHhdhutRlPJnmUn8opkPtvP7Ar8/aMlDo981U?=
 =?Windows-1252?Q?1jKxhrcC5h+NPYsZEJntPENc+LMSq+MjKUqPRuth56mTyQmUMvS+BW2s?=
 =?Windows-1252?Q?TpImEKWdQf6w64LDkY2NNb3bN4NwWyfJIqFTvTIS+8DtqlHZHqSLLV2I?=
 =?Windows-1252?Q?j31yqKoVwo49RMabNUoUWzQMiGVqIZZZM+TjjI4FwYMluJWgwac0O40m?=
 =?Windows-1252?Q?AWl+haZVwGJ/P2t3eq1fdp5p52a8DSj9tSNuimWK1+C9WQTB8YPHd+sx?=
 =?Windows-1252?Q?IOfMqVVR+9dN+1kxMjKmB4RzSamn0eusMddz6/JnKjv/kjAqTknHAwxK?=
 =?Windows-1252?Q?zXADXS7Bfrk/xraxc80q6nCstHMa4PqaWboKTA+yV5cdOVfTeyRfzuY1?=
 =?Windows-1252?Q?jdnRiH0Yv+rHkIAZh0D6S0fWUEh1dTVSsYRziEeidop7F7SIjfIb9vg1?=
 =?Windows-1252?Q?aPdh/A+85T23qO/NxJRPtpF5UpFsWxSyvt983mOvTO9VHLi6uK7Jo1P2?=
 =?Windows-1252?Q?RcINcvSMhq/sbwuBmYAp0VGpqJZLBqSDoDoa5BLg9wmtcLUv2ZhFAmGi?=
 =?Windows-1252?Q?PJEYVN66hfA8zZD2DKdhTpvWEbf4xM+ClPwG8MzeUN47pmkF6ejVSsgQ?=
 =?Windows-1252?Q?0lWFv/gl4tw/Hn511MGvZOOOGGJIcKKm0/QGCTLlS5BErd6pNsaIDyrn?=
 =?Windows-1252?Q?TB9061CCx+ei90LTtrpAhNrGT5mWeseqAQedqq4RmuWImtHgyudcgkPx?=
 =?Windows-1252?Q?bKPQ16t6+hiSj2SCFlIlc8zjk1N7xVHiTey1RLIUoJqraHSVcCTWkzJi?=
 =?Windows-1252?Q?T2UYrEzfsszLK49gnbiXKxRDnKxQhlCciuNjL6rzLKrlmmBuFKPGYW3f?=
 =?Windows-1252?Q?7QiftnY5AElDzHmC3vQATy//nQleZIPnennpUfzL8xAU0Fmihksp8evd?=
 =?Windows-1252?Q?wN6JzlhqN87lodxdb798JYCkD2OtECoZghqdFaBpr/7yTo7lAqRJnqmi?=
 =?Windows-1252?Q?TJG+FwjOo7jSAt5tpgFBbTOJlNMDgtnvhjzY95KpmnG72iKQ2XrfVWCo?=
 =?Windows-1252?Q?qRPJBhE21tTtjnSU+k+txcB/ivZeRjiLsgc6MQD1WIQcRISxW4ijn72e?=
 =?Windows-1252?Q?uUV9Fg65tgoOxeeYU2GRY02oJv32rPA7qrIR2Qvr3QsO2QE+LTTyFWJ7?=
 =?Windows-1252?Q?5u48oaqL0eOygMbgop81XV1PDwYBM11mRqxB3UDYgku2/HxBVmuzlxgg?=
 =?Windows-1252?Q?w1PgxjK/tIzYogN597OjJWr7vMrYc15n8xnKN/hkfwnMcUsbztnOy8DD?=
 =?Windows-1252?Q?mbw40I3w6V9CgvRNXiQnHcFudcb5puKPRN0EWH+XMHZvIJ+5nChRF3AF?=
 =?Windows-1252?Q?++TF7ysSxBy9yG1BhqIm9ZEZWRg+UcdrM/BmDC2PxTit2/Z1rbDBZnh9?=
 =?Windows-1252?Q?kmf80P/933NjDjUYX7fvuUTvNgCft/F2S+D7ACOk+H2QtqZy9JDKx1/N?=
 =?Windows-1252?Q?y6FmIZZe2eKAq7ZbVXsbSLH4dpD0Wn8OVL1gidUVt4Sr081io8XHFJqg?=
 =?Windows-1252?Q?5pOfUhJ9UEkjYtOATUDNCs/2HfwenEMZ+Xc7LlxrBnNzK+aq3O6eBkCk?=
 =?Windows-1252?Q?mpnCH5ucCJeSr+b/m02XGu6/aTnf4AU9/k854VRnLq0rA6MWpCd8a3PE?=
 =?Windows-1252?Q?Tc0KZbW92/0AYRpjkt/g7YtxWv0seeTPrAg4ixUs?=
Content-Type: multipart/mixed;
	boundary="_002_PAXPR10MB5277125A34E148DC166EA5FA99182PAXPR10MB5277EURP_"
MIME-Version: 1.0
X-OriginatorOrg: optimeas.de
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PAXPR10MB5277.EURPRD10.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: d05db7b8-b441-4f1a-c384-08dd34747531
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2025 08:21:34.3259
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 91b33c5b-e584-4ec0-893c-2a9180ad0602
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kmoUGPKnJ1h/qtci9mvTP0KI6JDV4AqsFNipz/VnM8Lcbu5rjv3UytPDx4Z29WpM2u4cHY2GGLEOtMIeHv8GeKIE9uKZzqYNo93jULSpHAI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA1PR10MB8691
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 08:21:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64544

--_002_PAXPR10MB5277125A34E148DC166EA5FA99182PAXPR10MB5277EURP_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hello,=0A=
=0A=
I have the problem that in the serial console and the SSH shell escape sequ=
ences are displayed instead of colors.=0A=
This is not nice, but much worse is that I have to end every command like =
=93nmcli con show=94 with =93q=94 to get back into the shell.=0A=
Similar to if I had started it with =93| less=94. See the screenshot in the=
 appendix=0A=
=0A=
However, if I start the command with =93NO_COLOR=3Dtrue nmcli con show=94, =
the output appears correctly without the =93less mode=94.=0A=
=0A=
I have already tried various terminal settings in the SSH client.=0A=
But I think the problem is in the Yocto image itself, and not on the client=
 side.=0A=
The environment variable TERM is set to =93xterm=94. But I also tried =93xt=
erm-color=94, which did not change anything.=0A=
=0A=
Does anyone have an idea what the problem could be, or what I could look fo=
r?=0A=
=0A=
Best regards,=0A=
Matthias=0A=

--_002_PAXPR10MB5277125A34E148DC166EA5FA99182PAXPR10MB5277EURP_
Content-Type: image/png; name="shell_color_problem.png"
Content-Description: shell_color_problem.png
Content-Disposition: attachment; filename="shell_color_problem.png";
	size=13034; creation-date="Tue, 14 Jan 2025 08:07:39 GMT";
	modification-date="Tue, 14 Jan 2025 08:07:39 GMT"
Content-Transfer-Encoding: base64

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
fqhL6vN9/f39v17+a/qHP2X/+Jh76etz0/qhbg837fGmuSaV/vz0ybZ2rt+UR3vnbxGPL+uBxfP7
ZziHKbfjz8Pxa6PxmDGuV705Sd3knfRK/VfnN45PLc3xM/fYf/ObmNb2W/3/qNG+TfunPb537Z+x
3MmTIufg7aH/4viM57+V/m/Nj67Hk3t/Pbt+2D+XOu85Pm7Zf88d/56xv/5zrfE7P3602tcaH/N6
x/G/fH3UKP/s0v5+fA2MTyLmcdlrf+wtv1H/y9979o/x1W7f9/dPe/+v9//+/lkvf1v7AXiVzwrN
mu+0zN9Jvl1En0821+3cT7zXk+b0SYFxXjwpLa4/2/7crbxb+dWb5NrNyn37rfqF9SY3Bbv7v1H+
K/qHP2f3+Ihe/fqM68fyW+Pzur2vNq19vGFLO+OTLq3y985vOx8P8te79anrS7/U/7H/Zmr7Z3L8
GgOU2vFr1aRfK8e58Tte+vtHbsYnD6ZPajXmN/d/w7PrV/rvPFZbx/eV9Ve16vfU/lka3zv3z/T8
dt3+tP9Wz3+b2rcyP5gFlk+uH8f/7uNja/vPHv+etLv+UXP81o4f6+1bHR83lXH5Vf7K9dGm8i9t
egxTpuNzb/nL9d+9f4yvZvv27J/m/m/0/+7+aZS/pf0AvM5HhGaXE8K4zvpNZbygeTjpTE4295PK
5KRzX2d2UlpZv1KHR2PbVsqfTqv1web6TS4GJmXt7v9G+fv7hz9p9/i4etvrs1l+vAi+hVD1+o6B
0ngRXL8ob7dzVv+nyt8/f65yfKlY7r9Hs/a1jj8bjGXe27N0nJtqlf/E8W+27sy28bPef9PvnKk9
ydJaf0WrfU/tn/r43rd/KuPvqfmt/m/Nn6rdcD+z/nz87z4+btp/1/+vHP++a3f9r7aO39h/7fa1
xsdkWq2OzfG/pfzKMi8tf7n+u/eP8dVo377909z/jf7f3T+N8tvtr5QJwLd9RGh2t/JO+vkR7Hgy
bJ1UpvNvqifFhfXP68S2Tco7rz9v96yeqyftjfWrzN/d/43yt/UPR7V7fESvfn1uKX/83pPb01r5
8lG12XYmZk+j3K23s1r/iuXyvzs/7pt4fFmu80yt/66q7auVP7vpWKnfbdnxe4JGt+Pc7UmO8zJ9
yQ9P24Xj49r8vfW7lrF5/Mz673Iz83Wjl0o3239r6zfq12pfa/6Dyvjeu39a299y/mv1f2t+bbtT
G9evjf+v/RH30cVluUq/Trbd7p8njn9P2l3/qDp+L2r912zflvFxW7dWx0392yp/bP9aaLa3/OX6
X5bfsX821W+l/2N5T9pd/+gjx9fy/N390yi/2f5YHgC7fFZoNqpcHFdPqKPWSeXtJ6WNbfvuSbty
wTe96d7f/+vl7+8f/qT946Pila/PuPxC+VPz0Gnr/OV2Lta/Yrn818x/NH99NlX6b7F95/2z8k57
y/hdMPnyPUFnt7E1hhfnMi/j7uEX0WbHt9b8lePTNzTXXzo/3NSmLa3f1GjfU/unMr5fsn/Wtl/Z
ZkOr/+vz4xNly2rrL43//cfHef/M99+Tx78n7K9/RWV8LfVfu30btz2uW1uu9lp7evzN99Fry1+u
//79M6+78fXT42u5//f3z3r57fbH8gDY49ih2fgucT/9ronrd6bcL3qv3zFQO6Fe1189qbROiq31
4/YqzvWbfGRn/AjW2KZ5PSsXbq363cu/1ffSzy/7TpZG+a/oH/6c3ePjB16f6+WPF5GP3+f18PHG
2fph/oNaO9v1Xy1/7/wNbvWrfqfZrPzYf+32nYOUTd+ZtcHs5uR6U3Cvb/xOrNb8xvFpg+fGT+y/
6/bu/XF90mxy/lhfv221fU/tn9r4Dp7eP+H81ppfOf+t9v+G+Zd6LZw/m+uvj//dx8dN+2/l+Fcp
7xm7698cv+v9t6V9rfHxVU5l/26+Plor/zrGY9kvK3+5/rv3j/HVbN+e/bN9/9f7f3f/NMrf0n4A
XufYodn5JDf55Zr4nTG3m4bgfsJonVRaJ8XW+pX6zsVf75n8xPbEdJn7RUOrftfyv75T5/E7IV7R
/2vlv6Z/+FNeMT7e+vpslX+r3/3jV+MN/nTcjSHGdP38+NTMbf1ZHa91atW/Wf7e+VvMjy/T/lnt
v1b7rvsn/jrjvA4bzUKZMdQIv0wWPj7Xmr96fNpkbfw0+m80/fjfrY7TJwNa6zettG/T/lkZ39E3
9s+5fvf2b/n1zHj+W+//9vyvG+M4vbl+Y/x/9VWtD7cdH7fsv7Xj3x6vqP/q+G3037b2tcbHxZ7r
o/Xyx/ZXApOXlX9Rq//l7337x/hqte/7+2fr/l/q/1f0z1r529oPwKscPjTj+/Q/a4wPgLpPPz5+
ev1/u0/fP59e/3fTPwC/yw+FZpPpk3ePLtPCCeXhXRz20P+sMT4A6j79+Pjp9f/tPn3/fHr9303/
APwuPxCaLYvL81qxv6O4PH+XOB6iuDzA3yIeD6O4/NHE+kZxeX5W3B9RXP5oYn2juPzfJvZHFJcH
4NiEZn9Q7I8oLg9HEsdrFJcHYJt4PI3i8kcT6xvF5fkscX9GcfmjifWN4vJ/m9gfUVwe4Lf7mdBs
+rP2ky9Nvi+bUkl383KO6vzzz/eTyPPfS/Db+4ff7a8fv7UvCv50sy86hgVHHP/vHr/vLn/i04+v
n17/lr3Xf7u9+/V3Ln/hRxJ+wf799Pq37B2fv71/AJ71A6HZeLBOJXVd6UaTX+O6LDd+pj+XPAxl
GE1/gvpTfPPi5a/pH36lv378fvN1/y1p7N/0/r77wVDgp13G6A/04W9UG38/Of637r93j993lz/x
6cfXT6//Zj/8Orh793Y3hWafu38/vf6bfXOc/DX9A7DRD4Vm4csuZwfdlQN6mvxkfPzJ5dlPVucy
VH6Sfs3e9c92n5R29M/aT1LDG71k/B759T350t4Ht5vmb77uv6TST965/erPuNytfyvz1vqvVf+a
Z0OBh+2fSh7Cumv1a7X/O/Vfci+r0ocNaXKjkIcX3xS0+u/d299kYfxtGf/N9m08f23df5Xxu9p/
q+OzIpbfWj/Mz323ef5l2s7j69b+fYOX1L/Rv7uO7y9Y/2zL6+Ad3r3dzaHZjv1rfK7au/7ZN8fJ
S/rnD+5fgFc7eGg2HnD70t1O2uMJ6nQqQ3f7uy/DeBF8n3+5sL7Pb9m7/qScP3VS6oZTOd1uRGL/
wBvtH78f8vqeGF9v+Xbh983X/ZdLaHQvr+q6zPgu7mxbjf6reKh/TQwFVt3qdgsiriHYcLvxb9Vv
S/sfNetfNW4nl74f2qFLcP6ISx7ubUhdX/qV/n1Oq//evf0tVsZfc/y327ft/PXE/gvjd73/WuOz
4qH81vpxfF/+3jp///F1a/++x/76N/p37/F97/qTctZfB2/y7u3+QGhmfK7Yu/6knO+Mk/3982f3
L8CrHTw0m2vdNNXnX94NGi/e4/LR/KY4l+H8Tsn4LsnlpDW26eFCYvWkNH2n5fGd7v39M857vKg5
3yTc2rm1/vAN+8fvXP3125r/5tf3TbyJuL7ux5v5tSdZHl//00Aq3jTXpNKfnz7Z1o/1/rmK9T97
fKf8HExsDs3mF8EPx5+Kx/ptaf9Etf5tY53OY2MMPGZ9mEq3uH/m7ZtZ3b8t8/If+28+fy7WPz6J
1prfsjL+muN/Xv95+1bOX5Npy/tvbfzOt98yf/2slT83P76E+k5Dt8b8yzb3HF8b/fvs8e9J++s/
N98/W+a/+fxQ2493y9d/zfmt11dr/nmZ1vEpHh8m88Px9vIdWV/t3L9/jc+LY47P/f3zZ/cvwKt9
VmjWfKcivpN7W+/rYLy+nbD+5KJhesEwO/GtnJTGZceTxOUiuXu4SdzdP7Xtzi7KN9QfvmH3+I2O
+vq+mt3Q37a78Poejd8B0t8/UjFeoIYnsR4+nrj28YUN/djov1n9F45Pa6FAdO6r+4V2IwSb1e+Z
9tfr3zbpt0rocm5//npa4OFJpNtN6eQjMvGmc33/tq3235btT/dfXH/D/O0q42/L+N/QvsXzV9zu
0v5bGr8b+u/BbHw2yo/i+q32NebvPr42yn/2+Pes3fWPYv/O/KHzQ62fr2rjJ74+Fue3Xl+t+RuO
T+3j31f78/jE5qRtu/dvrd+Mz8p6C+tv7Z9aP1+tjb/d/VPb7g/uX4BX+4jQ7HJAHddZv6m6nQDi
9HMZafKY84LZ+tOD/uRgPzuo104OZ2PbwpMRb7kontyMTG8sttYfvmH3+L06/Ov7rHJBPLnou0+b
3fQHK/PHG5bx4nl2UX223I/b+q9S/8bxaV5GzfI71Tfb6rel/Uvzlo378r7OLHSptH/qejMzfs/U
pU3zm86ZV/Zfc/uV+j9svzX/GZXxt2n8t9q3cv76zv6b3ZSt9d/F8vhslN9cP4aUt5D41ob1+buP
r63+fer497zd9b9a7t9Hs+P7tIx3nh++ef3XnN96fbXm17S2P3Ut//Ik0Lx9u/ev8flVxgHH5+7+
+cP7F+DVPiI0u6u8k3ZzfsR87WKhobr+1oP60kmpNv0tJ6V6+ZvrD9+we/xGR319h/nV9ZeWG4Og
h6epVp5UuV2AVy+sN/TjSv/N6nVefkP9Z/t2uvz1ne/79lLpFuvfqN/VYvtn9bpZqd9tnZQubhfs
6br9WvunavNjPZr7d6V+rf5rbf88P2x7uv3W/Gb9pirjr1W/ve37zv6b9c/K/CiOz73rX8u4f7wz
Xz5K97D+yvyv/RH30cVlG5X9Mil7tf7PHP++YXf9o1r/XlWP70+orr+1f2r9vDR9qf/fMf/898rx
qbb+1O34kS9PasY3LHbv39r2l9q31v/ftLv+0S8bn7v7p1H+5voDHMRnhWajeFGwdEJ5wuL6Ww/q
tZPD2di2N76TUyn/4aZza/3hG/aP34ojvr5nT4RM119+fd8CiYdfvKq0b2oxNNraj9XyF+pfOX7U
119QO+7Vpk01yq+3f6n+DePH8vL4saKr29gcw4lzmyvtf1Dp853790Gtrx6mbdn+Sl835z+jUlZr
/G9q38r56zv7r9U/rf0zW3+t/IrG/Pr4rs/ff3yd1/8nrw/217+i0r+Lx/eNFtff2j+1cX427/+n
xtem19fK/ObxqbL9qWn543qhjfv373z7xufc4vpb++eb43N//8zL/8n9C/Bqxw7Nxndh7x+tGP++
fqfI/aJz/BLT+M55zdJ3kTTW33xQv12czMs4l/+u7wy4l3+7iAr12Fx/eN7u8fspr+/azcl9+vLr
+37ReH89hnrO2n8pr3YcqfbjbP3Yf436LxyfFvtr5nq8ubf3+iTRYvtC/WbzF9q/Uv+nVG78buOj
+p0+97Gw9PG+xv5tavRfc/th/13rP/bp1vnb1cdfe/y327d4/oqW9t/K+F3tv9n4m79+VsvfsH7q
H8dWHN9r83cfX1v9u/X4902769/s38bx/W4+Ljatv7l/lsdtbfxM112d33p9teZvOD6tHv/CcTf2
1e79a3zetxH3y6b1N/fP98bn7v75w/sX4NWOHZqdT+JfX+I7mn8nyrzc+QH3tv1w49Va/5mD+vTL
hh/mLX+ny2Xavv55LD98p8Iz9YcnvWL8fsLr+3ZhGet+Wz/+etlD+ybzxidkxi9m/roIHkOEafvz
41MBD22b+urP1f5r1f9ah/MF+63/4sfHWqYfL7u1cfrO8mr9trS/Vf8nVEKXy43J9Pgc2x6P34/z
1/fvBo3+a22/Vv+4/vr8lpXxt2H8P9e+9e8EWtp/6+N3vf/Wx2e7/Pb6k1/fzGOAEdu3PP+rr2v7
YNvxdbV/Nx7/vusV9V/t39bx/e6954ezb1z/NecvvL5a86f1ah+f5seHx/Knffb4xO9lnX371/i8
bePS/iONz8u0ff3zJ/cvwKsdPjR7nfGE/4KnFV7oWP0DzznW+D3e6xvgu451fH3eser/geeHaahw
QMfav887Vv2PNz6P1T8Af94PhWaT6ZN3Ty7TwgH5mXfpn3B+Ryi+C/6HHal/4FlHGr9HfH0DfNeR
jq/fcaT6f+T54WNCs8n0P7R/v+NI9T/i+DxS/wAcwQ+EZsvi8m9zPiEd72Ae+yOKy8ORxPEaxeXf
5qCvb4DvisfTKC5/NLG+UVz+bT71/PARodmyuPzRxPpGcfm3Oej4jP0RxeUBfru3hmYAAAAA8IkO
FJql0nXp/e+2TL5wcjbvr/ZD/Q9s8yeeNHB8/PIn+v+VPr3+AABwAMcJzX7qAt9NYd1P9f+S1P3d
od1f0P7U/f42vtSfeE06Pn75E/3/Sp9efwAAOIC3hmbjF0QO3Xx66nM5/akvvfwbbwrHNh/65un2
ZaLvqOPKT16PUleG/PU9DfOfXJ9/l8PD+HlYP5fcf2dcr7W/Uf/m/Lbpz9Jv+cn0tfYvbv9eVq2N
K9bK/0b9HvfP+ItVcf199Xt2/z/+ZH0uQxfb92R9orX+q3ny+Lha/9syS+PrrDV+G/NX27dl/66U
/4r+/wlLx/dPrz8AABzAW0Oz8YYlx5ucf/4p3VCf3pZKSjufVHnypvBXOPRNyeXGNg/DW366ehxr
p1sQNt5gPwS5t23fbuSvN9krge7j2L2uH/6uBcXL1tu/Xv/2/JZzgJ2H0l1/6jx1felX1p+1f+jv
6y5v//pz6v2z43Br+V9m9VvdP3H+s+L6sfyG1JdhHHv39l1CwPv6u0OP5/vvqeNjq/4bxldr/K7P
b7Uv7p+51fJ39/8PWTq+v7z+Lzj/1izVHwAADuCtoVk9HIs3MtOfLK5dOI/zh9L3ueTxSY48PhUw
XS6V7v6kQO1JhscnEc437ltvCqvlx3WnTyrUntQZSjd9GmNyA9mcX91+bF+cv+FJqYdQqNX/O9q3
SSr9+emcy36eb3+Pscxc+kl9Hp9yjDfZcX5wbu+kvNpNaQwdUhf6rzJ+Ftu/pf5r81vm7V8V219R
e82PdTr/nPoLbo5r5d/F+jX3TzwWPalZ/mUbi6/Piof2Xcsfj1nLT2o9Z95/rePjjvo3x1dr/Lbm
z62HplGj/C3933x97xX7Px5/w7F9FOq/fnxeKf9s5fy7t/xW/QEA4ADeGpp93YBcg5nz/5eexqiF
Brfp8WL76ybo8qTA45NC05ukh/njDc54g/hEaHZeP389zVB/UuKx/Meb3mndxxuIeFOzMj+Wv9S+
lfqdbQor6v2/q31PqW9/lw2hxvkme6V/p2Y37FvK74fS3z+yNgaQS/1TaX+r/Nb8llsoMLnpXbvp
n7U/ik/qnE3atWkcrqiW/2VWv2b/XPb31w17/HhfQ7P8ja/Pu3BsvIUKS6+/Z1X6r/b6fm39V8ZX
q/9a86NZ+xr7t1X+hv7f/vr+ntbx/2zpdbXh+Nwuf+X8+5LyV+oPAAAH8NbQ7H4DMl5c5/Gd6vHC
eP7u/kUlNLhPry2/MO/hpqo1v6Wyfmv+7KZrx/xW+bX5NZtuSmr9Xyn/qfo/o7b9ne43xZObtVlf
rDxJ9yDekF/XrXw8b7WvF/un0v5W/VvzW243vf3kpnbxpr/W/otzWFULJa43zfd1nqnbxvK/1Or3
3P4ZA6GxP2ptrGuVX3n9rIiBw6teX8v9V6nfd44vV/X6r4yv1vhtzb9abt+j2f5tlf+d/m/Nf0ql
/2vlV/rkrFn/LeVXlnlp+Sv1BwCAA3hvaHa7KRk/2tF3549p9Ocbl9oFciU0uE9fu2ifPklw9RDq
hDJrF+1Lauu35k/Lf8n8J9tXs+mmpNL/tfJn9VuZ/5TK9vdq1u9ys/x1o53OY7UaGi21a/xep9vT
LPnyUa6H5cbxHr+MvFZOrf2t+rfm38udbn+y/Kb1G9On4pM4t3XG70Ea3cbh5EnR1fpFsfyppfq1
9k8we1qtVb+18mv9u+D8EbZYr9r6s3Y26vdQXu1J0ZXya/MXfKv+e+dHsX0VtY9fLpbfmn/+e+vr
+xvO2w9l18q/va6q66/Uf1P5rfPv3vJX6v8S/6v8j//7/8r/vPvf5b8/NR8AgL/de0OzaxAwXJ82
uXy30dJNTyU0uE9fuGhfXGdl3XjTs6qyfmv+7KahdVOxMv877avZdFNS21al/Kfq/4za9vea1795
01ybNnuiaNn8O5nGsT9Zb7F/au1v1L85v6WyzWr9trf/Yf3xY3njE6Y395vmoT1ml+ysX6t/WvNb
Wvunpho4jc5jceX19x2z48ta+ZX5FYv1b46vefmt/mvun0b/PFV+s/+feX1/R6X/apaO77Vj2az+
lfUezPvoteWv1B8AAA7gzaFZ+LjS7Z3n6k3P0sX50vSLx+9MuXwEZzh/sXplfuU7e1pa3+lTK3/X
kxzhpmtT+1bq91WP5T68qPfzrvY9ZeMN1pMu9b/19+0m9zb/+nd80izWf6X/Uv/Y948f77v26f3j
YGvjr97+9fq357eM6y9+fO5mqf3jU1b3dSfti+vfPHtzvLX8pfq19s+s/Lj/2lbLb74+r98BVR0P
X/VZfP21zNo377/a63t2/Plu/TeMr9b4XZ3fat9s/sL+WSl/vf+feX1/T+v4f7Y0/jccn9vl188L
ryt/pf4AAHAAbw7Nvm66LhfNl5uSxZu+6RdGxxuTxQvq+OtcXzd4t/mX4G5U+3W4lnn5j+uufCdW
66aiNX9h+7F9cX6tbdNlZqHDZNvz/t/Rvk0uY+Jet7MngpWmaf0r33k0/XjdaPbrb183fvOyR5Nf
H8zjDfRj+Wnyy3vnsmfjr9X+Rv2b81vi/p3vu7X2jx+5nH4Ea/k74b4Rmm0sf61+6/tnDEmn5efH
p4Y2WSv/uo2l/r2FMkEMpeOvN87rsKzdf63j447638pfWn82vzZ+1+evt2/L/l0pf0P/t1/fe837
Px6fRtXj+6bjc6v8lfPvS8q/qNYfAAAO4O2hGQAAAAB8GqEZAAAAAARCMwAAAAAIhGYAAAAAEAjN
AAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARCMwAAAAAIhGYAAAAAEAjN
AAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARCMwAAAAAIhGYAAAAAEAjN
AAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAADBD4RmqXRdKmkyLaWupBSXAwAAAIBjeHNo1pUh55KH
XE6noXTX6d2QSy80AwAAAOCg3huadUM5Dd35/6nP5ZT7klJf8iRAAwAAAICjeWtolvqhDH16+Dvn
XPpuviwAAAAAHMVbQzMAAAAA+ERCMwAAAAAIhGYAAAAAEAjNAAAAACAQmgEAAABAIDQDAAAAgEBo
BgAAAACB0AwAAAAAAqEZAAAAAARCMwAAAAAIhGYAAAAAEPxAaJZK16WSJtNS6kpKcTkAAAAAOIY3
h2ZdGXIuecjldBpKd53eDbn0QjMAAAAADuq9oVk3lNPQnf+f+lxOuS8p9SVPAjQAAAAAOJq3hmap
H8rQp4e/c86l7+bLAgAAAMBRvDU0AwAAAIBPJDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARC
MwAAAAAIhGYAAAAAEAjNAAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAADBD4RmqXRdKmkyLaWupBSX
AwAAAIBjeHNo1pUh55KHXE6noXTX6d2QSy80AwAAAOCg3huadUM5Dd35/6nP5ZT7klJf8iRAAwAA
AICjeWtolvqhDH16+DvnXPpuviwAAAAAHMVbQzMAAAAA+ERCMwAAAAAIhGYAAAAAEAjNAAAAACAQ
mgEAAABAIDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARCMwAAAAAIhGYAAAAAEPxAaJZK16WS
JtNS6kpKcTkAAAAAOIY3h2ZdGXIuecjldBpKd53eDbn0QjMAAAAADuq9oVk3lNPQnf+f+lxOuS8p
9SVPAjQAAAAAOJq3hmapH8rQp4e/c86l7+bLAgAAAMBRvDU0AwAAAIBPJDQDAAAAgEBoBgAAAACB
0AwAAAAAAqEZAAAAAARCMwAAAAAIhGYAAAAAEAjNAAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAADB
D4RmqXRdKmkyLaWupBSXAwAAAIBjeHNo1pUh55KHXE6noXTX6d2QSy80AwAAAOCg3huadUM5Dd35
/6nP5ZT7klJf8iRAAwAAAICjeWtolvqhDH16+DvnXPpuviwAAAAAHMVbQzMAAAAA+ERCMwAAAAAI
hGYAAAAAEAjNAAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARCMwAAAAAI
hGYAAAAAEPxAaJZK16WSJtNS6kpKcTkAAAAAOIY3h2ZdGXIuecjldBpKd53eDbn0QjMAAAAADuq9
oVk3lNPQnf+f+lxOuS8p9SVPAjQAAAAAOJq3hmapH8rQp4e/c86l7+bLAgAAAMBRvDU0AwAAAIBP
JDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARCMwAAAAAIhGYAAAAAELRCs3/961/l3//+92y6
0AwAAACAX6sVmv3Hf/zHWZwuNAMAAADg1xKaAQAAAEAgNAMAAACA4AdCs1S6LpU0mZZSV1KKywEA
AADAMbw5NOvKkHPJQy6n01C66/RuyKUXmgEAAABwUO8NzbqhnIbu/P/U53LKfUmpL3kSoAEAAADA
0bw1NEv9UIY+Pfydcy59N18WAAAAAI7iraEZAAAAAHwioRkAAAAABEIzAAAAAAiEZgAAAAAQCM0A
AAAAIBCaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAh+IDRLpetSSZNp
KXUlpbgcAAAAABzDm0Ozrgw5lzzkcjoNpbtO74ZceqEZAAAAAAf13tCsG8pp6M7/T30up9yXlPqS
JwEaAAAAABzNW0Oz1A9l6NPD3znn0nfzZQEAAADgKN4amgEAAADAJxKaAQAAAEAgNAMAAACAQGgG
AAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACA4AdC
s1S6LpU0mZZSV1KKywEAAADAMbw5NOvKkHPJQy6n01C66/RuyKUXmgEAAABwUO8NzbqhnIbu/P/U
53LKfUmpL3kSoAEAAADA0bw1NEv9UIY+Pfydcy59N18WAAAAAI7iraEZAAAAAHwioRkAAAAABEIz
AAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIz
AAAAAAh+IDRLpetSSZNpKXUlpbgcAAAAABzDm0Ozrgw5lzzkcjoNpbtO74ZceqEZAAAAAAf13tCs
G8pp6M7/T30up9yXlPqSJwEaAAAAABzNW0Oz1A9l6NPD3znn0nfzZQEAAADgKN4amgEAAADAJxKa
AQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCa
AQAAAEAgNAMAAACA4AdCs1S6LpU0mZZSV1KKywEAAADAMbw5NOvKkHPJQy6n01C66/RuyKUXmgEA
AABwUO8NzbqhnIbu/P/U53LKfUmpL3kSoAEAAADA0bw1NEv9UIY+Pfydcy59N18WAAAAAI7iraEZ
AAAAAHwioRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACAQGgGAAAAAIHQ
DAAAAAACoRkAAAAABEIzAAAAAAh+IDRLpetSSZNpKXUlpbgcAAAAABzDm0Ozrgw5lzzkcjoNpbtO
74ZceqEZAAAAAAf13tCsG8pp6M7/T30up9yXlPqSJwEaAAAAABzNW0Oz1A9l6NPD3znn0nfzZQEA
AADgKN4amgEAAADAJxKaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAiE
ZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACA4AdCs1S6LpU0mZZSV1KKywEAAADAMbw5NOvKkHPJ
Qy6n01C66/RuyKUXmgEAAABwUO8NzbqhnIbu/P/U53LKfUmpL3kSoAEAAADA0bw1NEv9UIY+Pfyd
cy59N18WAAAAAI7iraEZAAAAAHwioRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAg
NAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAh+IDRLpetSSZNpKXUlpbgcAAAAABzD
m0Ozrgw5lzzkcjoNpbtO74ZceqEZAAAAAAf13tCsG8pp6M7/T30up9yXlPqSJwEaAAAAABzNW0Oz
1A9l6NPD3znn0nfzZQEAAADgKN4amgEAAADAJxKaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAAC
oRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACA4AdCs1S6LpU0mZZSV1KK
ywEAAADAMbw5NOvKkHPJQy6n01C66/RuyKUXmgEAAABwUO8NzbqhnIbu/P/U53LKfUmpL3kSoAEA
AADA0bw1NEv9UIY+Pfydcy59N18WAAAAAI7iraEZAAAAAHwioRkAAAAABEIzAAAAAAiEZgAAAAAQ
CM0AAAAAIBCaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAh+IDRLpetS
SZNpKXUlpbgcAAAAABzDm0Ozrgw5lzzkcjoNpbtO74ZceqEZAAAAAAf13tCsG8pp6M7/T30up9yX
lPqSJwEaAAAAABzNW0Oz1A9l6NPD3znn0nfzZQEAAADgKN4amgEAAADAJxKaAQAAAEAgNAMAAACA
QGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACA
4AdCs1S6LpU0mZZSV1KKywEAAADAMbw5NOvKkHPJQy6n01C66/RuyKUXmgEAAABwUO8NzbqhnIbu
/P/U53LKfUmpL3kSoAEAAADA0bw1NEv9UIY+Pfydcy59N18WAAAAAI7iraEZAAAAAHwioRkAAAAA
BEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAA
BEIzAAAAAAh+IDRLpetSSZNpKXUlpbgcAAAAABzDm0Ozrgw5lzzkcjoNpbtO74ZceqEZAAAAAAf1
3tCsG8pp6M7/T30up9yXlPqSJwEaAAAAABzNW0Oz1A9l6NPD3znn0nfzZQEAAADgKN4amgEAAADA
JxKaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAAACoRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAA
IBCaAQAAAEAgNAMAAACA4AdCs1S6LpU0mZZSV1KKywEAAADAMbw5NOvKkHPJQy6n01C66/RuyKUX
mgEAAABwUO8NzbqhnIbu/P/U53LKfUmpL3kSoAEAAADA0bw1NEv9UIY+Pfydcy59N18WAAAAAI7i
raEZAAAAAHwioRkAAAAABEIzAAAAAAiEZgAAAAAQCM0AAAAAIBCaAQAAAEAgNAMAAACAQGgGAAAA
AIHQDAAAAAACoRkAAAAABEIzAAAAAAh+IDRLpetSSZNpKXUlpbgcAAAAABzDm0Ozrgw5lzzkcjoN
pbtO74ZceqEZAAAAAAf13tCsG8pp6M7/T30up9yXlPqSJwEaAAAAABzNW0Oz1A9l6NPD3znn0nfz
ZQEAAADgKN4amgEAAADAJxKaAQAAAEAgNAMAAACAQGgGAAAAAIHQDAAAAACCt4Zmp9OJD/af//l/
VsX9DQAAAPBb/H2h2dCVf1Jfcpz+Kt8uP5dhyN9Y731iSBbF/Q0AAADwWwjNXu275ee+pH+6MsTp
f1AMyaK4vwEAAAB+i2OEZmPQ9FOB0XdDra3eXf47LPR/DMmiuL8BAAAAfguh2VNyybnxEcpd5f8h
C/0fQ7Io7m8AAACA3+LtoVkeupLu01LphvwVzJw/kjhf759umCwzlL5L93mpmwRSt480TreRujLk
afgzlC59bb/vQ6i1Vv5t/X+60veppH9SSWlcdhowNcpvGsu/rR+Cq1b7rvPHbd7mp26Y98+0zGmo
1+j/GJJFs/UAAAAAfok3h2ZjIJRKP9xCm1yGrp890bT0pNNo6LvS34O2XPpuEqpdQ5+voGgs/zF0
u/19CYmG0o8B1yTUWi3/7BJqPYZRX8Ffq/ztLuHcPDRbad8t9ArbT/21fq3QbDotLic0AwAAAP5i
PxCajSHOUPLD01/BQmhTNXtSKpV+WvZDKHQN7RbnV8zmV8pYmzdbf6ul0Gyl/E3zhWYAAAAAz3pz
aHYJbro0frRxnJZKd3sKakNoc5nXl3T/+OPV1lCoNb9V/lklGLvZUv5mS6HZSvl750+nxeWEZgAA
AMBfrBWa/etf/yr//ve/Z9O3h2YT4/eb1cKZpdDm9qTaw/egPRUKVQKv2fyV8pfKWJs3W3+r74Zm
K9tvrT+dFpcTmgEAAAB/sVZotsVyaDY+ZTZ+NPMawiyGZrXw5yx8J1r8zrANodD6d441yp8uM6vb
lvKfUdlOq33n+fPt37/T7BoKfn3H2UL9Fvo/hmRR3N8AAAAAv8V7Q7MxKJv8suP4y48xmLkZJr9g
Of0i/rj++MX9z4Rm5y/3X/l1y9Xyzyph1oP18p8y+ZXMc9DVat91/uKvZ4Yy6+27qPV/DMmiuL8B
AAAAfou3h2a8US1Ue6EYkkVxfwMAAAD8FkKzTyY0AwAAAHgLodknE5oBAAAAvMVbQzMAAAAA+ERC
MwAAAAAIhGYAAAAAEAjNAAAAACAQmgEAAABAIDQDAAAAgEBoBgAAAACB0AwAAAAAAqEZAAAAAARC
MwAAAAAIhGYAAAAAELwiNPv/NBKVq+V7FnEAAAAASUVORK5CYII=

--_002_PAXPR10MB5277125A34E148DC166EA5FA99182PAXPR10MB5277EURP_--

