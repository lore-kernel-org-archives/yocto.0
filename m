Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.1202.1602608258421703985
 for <yocto@lists.yoctoproject.org>;
 Tue, 13 Oct 2020 09:57:38 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 questdiagnostics.com}: parse error for token &{10 18 spf.messagelabs.com}: parse error for token &{10 18 nets1.spf.messagelabs.com}: limit exceeded (domain: essvote.com, ip: 198.145.29.25, mailfrom: michael.davis@essvote.com)
Received: from us-smtp-delivery-164.mimecast.com (us-smtp-delivery-164.mimecast.com [216.205.24.164])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A4FCB38C1164
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2020 09:57:37 -0700 (PDT)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com
 (mail-co1nam04lp2051.outbound.protection.outlook.com [104.47.45.51]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 us-mta-565-6B59ywJ1OIuTF6kSkTHb-A-1; Tue, 13 Oct 2020 12:57:33 -0400
X-MC-Unique: 6B59ywJ1OIuTF6kSkTHb-A-1
Received: from DM6PR17MB2474.namprd17.prod.outlook.com (2603:10b6:5:69::15) by
 DM5PR17MB2027.namprd17.prod.outlook.com (2603:10b6:3:8d::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3455.29; Tue, 13 Oct 2020 16:57:31 +0000
Received: from DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4]) by DM6PR17MB2474.namprd17.prod.outlook.com
 ([fe80::4014:9f67:6ee6:f1b4%6]) with mapi id 15.20.3477.020; Tue, 13 Oct 2020
 16:57:31 +0000
From: "Davis, Michael" <michael.davis@essvote.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-openssl102-fips][PATCH] conf/layer.conf: Add dunfell to LAYERSERIES_COMPAT
Thread-Topic: [meta-openssl102-fips][PATCH] conf/layer.conf: Add dunfell to
 LAYERSERIES_COMPAT
Thread-Index: AQHWoYHa209o+Q2T10O9P8Izl21CsamVwLjw
Date: Tue, 13 Oct 2020 16:57:31 +0000
Message-ID: <DM6PR17MB2474222FDEF38C84DFBFAA5DF8040@DM6PR17MB2474.namprd17.prod.outlook.com>
References: <20201013165640.147029-1-michael.davis@essvote.com>
In-Reply-To: <20201013165640.147029-1-michael.davis@essvote.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [23.152.176.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cd6eb595-906b-4d1a-d1ee-08d86f991351
x-ms-traffictypediagnostic: DM5PR17MB2027:
x-microsoft-antispam-prvs: <DM5PR17MB202716ADEF594A309BD2C8D3F8040@DM5PR17MB2027.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:398
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: odEjsHhfDhy/1RmB2HQPRW9dRU6fUk2V89sYvKhfeqe9CPm9GiBTFFev6dihHLm5FPxmrTzKPymhsbZfIPW6P/cnRDLrkPRlHGu0g366+Y5T8aMN0CVFmOxdvlDzVSzhU1C4+l/tuTlDBkMZ2wXlTzbZ5MflV+jcv3aJiTC4kojOlCDtxiQVrOBfLEfVljL/Np/Z5G7BPnThws+e+np8tYcFVx0J0VDeN9WzPzVEUHJE1pXcqoLx5idad64lWhXujdU29rR6o938PjrBoDmk6tNWF9EFXw0oDGVHN6WHp55DytnxlqqYpusOUsKV0OuQJwtp01TtMJ+tDkC7U1RuKw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR17MB2474.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(376002)(346002)(39840400004)(136003)(366004)(83380400001)(33656002)(66556008)(64756008)(66476007)(26005)(76116006)(66446008)(66946007)(86362001)(6916009)(478600001)(2906002)(316002)(9686003)(8676002)(55016002)(7696005)(8936002)(5660300002)(186003)(4744005)(6506007)(71200400001)(52536014)(53546011);DIR:OUT;SFP:1101
x-ms-exchange-antispam-messagedata: xnHnv/a1FyW7Xo58ofarWpjuIUAW4hXmWAroargV2FbhRzeIxv9L9OMVUnvtF1+qUN03j9nbdGkHNYhuXMQeBxHxI/i47cDmdXPE7bCXUG7Zh1BolKiGm4ouiLI5+38YSRWT0Ho3cDF4HlRHyrzkFRLua/wANPbZp7QD0alO9mBNyF9xc6+mhOEvbaSHQ1u2DuGDtTUXBFNNCzP/bBc35WVmo930ppOZ6cXHcPQANylfp73pnLcwR2OqSZSVmD4Ni0DNanKXU8UPxwvSMbjKI7oK69iFdWexAf1jiioiu8OfZBmTYSwx0qVYQcnthGt+OdQmp8V5K1G7GPfTf9PFWDv4MA7fxCgwLiImGwmCdu5kRnbp7V+BJilHntZ7xfIfs4x6NRoqKI1ft+zPkLK9lhMEXvfV0EkHV/Xk2ssYcnwV+qmHVrizfVrFT5y2wAvgdUssMpsX2EHzQjhVM8ryr7bfUW5e6sUYaO1dVb6M7Eltn3BtchRk2jvKpldADF5VZ+H+8qie71/tnu2Uj4dP2Rmc2q7lCb0XJp6I8Yrbl1uZjjT6XA7Vw4zaNWdqi/ia0e5/ICRIT4vMPcB/FqGS8c4/K8wkXIEGffadh2QAUCsA/1XWu93PSQxyRzeYFd+GyJyWtpluCWffLl/PO/dwgw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: essvote.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR17MB2474.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd6eb595-906b-4d1a-d1ee-08d86f991351
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Oct 2020 16:57:31.5924
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 55818b27-dd2b-48d7-b7c5-95b96a0b1261
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cLDHlr3VI8bexRbfm9QR3KeSfkpEa9HpPTcsJSp7yJscxz9Ro7DPRaim5CJy/G7PfWHN8JpZ02jTN/laVwsliRYy6R4RGYtStwTXMbkV/DI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR17MB2027
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA64A369 smtp.mailfrom=michael.davis@essvote.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: essvote.com
Content-Type: multipart/alternative;
	boundary="MCBoundary=_12010131257350171"

--MCBoundary=_12010131257350171
Content-Language: en-US
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Sorry about the spam the [meta-openssl102-fips] kept getting eaten by a mis=
sing -.


-----Original Message-----
From: Davis, Michael=20
Sent: Tuesday, October 13, 2020 11:57 AM
To: yocto@yoctoproject.org
Cc: Davis, Michael <michael.davis@essvote.com>
Subject: [meta-openssl102-fips][PATCH] conf/layer.conf: Add dunfell to LAYE=
RSERIES_COMPAT

Signed-off-by: Michael Davis <michael.davis@essvote.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf index 892cf79..1559f57 10064=
4
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips =3D "5"
=20
 LAYERVERSION_meta-openssl-one-zero-two-fips =3D "1"
=20
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "zeus"
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D "zeus dunfell"
=20
 LAYERPATH_meta-openssl-one-zero-two-fips =3D "${LAYERDIR}"
=20
--
2.26.2

CONFIDENTIALITY NOTICE:

This e-mail transmission and any documents, files or previous e-mail messag=
es attached to it may contain information that is=20
confidential, protected by the attorney/client or other privileges, and may=
 constitute non-public information. It is intended to be
conveyed only to the designated recipient(s) named above.=20

Any unauthorized use, reproduction, forwarding, distribution or other disse=
mination of this transmission is strictly prohibited and=20
may be unlawful. If you are not an intended recipient of this e-mail transm=
ission, please notify the sender by return e-mail and permanently
delete any record of this transmission. Your cooperation is appreciated.

--MCBoundary=_12010131257350171
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<html><head><style type=3D"text/css">.style1 {font-family: "Times New Roman=
";}</style></head><body>Sorry about the spam the [meta-openssl102-fips] kep=
t getting eaten by a missing -.<BR>
<BR>
<BR>
-----Original Message-----<BR>
From: Davis, Michael <BR>
Sent: Tuesday, October 13, 2020 11:57 AM<BR>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><BR=
>
Cc: Davis, Michael &lt;michael.davis@essvote.com&gt;<BR>
Subject: [meta-openssl102-fips][PATCH] conf/layer.conf: Add dunfell to LAYE=
RSERIES_COMPAT<BR>
<BR>
Signed-off-by: Michael Davis &lt;michael.davis@essvote.com&gt;<BR>
---<BR>
 conf/layer.conf | 2 +-<BR>
 1 file changed, 1 insertion(+), 1 deletion(-)<BR>
<BR>
diff --git a/conf/layer.conf b/conf/layer.conf index 892cf79..1559f57 10064=
4<BR>
--- a/conf/layer.conf<BR>
+++ b/conf/layer.conf<BR>
@@ -10,7 +10,7 @@ BBFILE_PRIORITY_meta-openssl-one-zero-two-fips =3D &quot;=
5&quot;<BR>
 <BR>
 LAYERVERSION_meta-openssl-one-zero-two-fips =3D &quot;1&quot;<BR>
 <BR>
-LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D &quot;zeus&quot;<BR>
+LAYERSERIES_COMPAT_meta-openssl-one-zero-two-fips =3D &quot;zeus dunfell&q=
uot;<BR>
 <BR>
 LAYERPATH_meta-openssl-one-zero-two-fips =3D &quot;${LAYERDIR}&quot;<BR>
 <BR>
--<BR>
2.26.2<BR>

<br><br><p style=3D"font-family: Verdana; font-size:10pt; color:#666666;"><=
b>
CONFIDENTIALITY NOTICE:</b></p><p style=3D"font-family: Verdana; font-size:=
8pt; color:#666666;">This e-mail transmission and any documents, files or p=
revious e-mail messages attached to it may contain information that is conf=
idential, protected by the attorney/client or other privileges, and may con=
stitute non-public information. It is intended to be conveyed only to the d=
esignated recipient(s) named above.<br><br>Any unauthorized use, reproducti=
on, forwarding, distribution or other dissemination of this transmission is=
 strictly prohibited and may be <b>unlawful.</b> If you are not an intended=
 recipient of this email transmission, please notify the sender by return e=
-mail and permanently delete any record of this transmission. Your cooperat=
ion is appreciated.


To find out more <a href=3D"http://www.essvote.com/legal/" target=3D"_blank=
">Click Here</a>.</p></body></html>

--MCBoundary=_12010131257350171--
