Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.107.14.47])
 by mx.groups.io with SMTP id smtpd.web09.8821.1575884851205571357
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Dec 2019 01:47:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@spinetix.com header.s=selector2 header.b=Jd7irwzx;
 spf=pass (domain: spinetix.com, ip: 40.107.14.47, mailfrom: diego.santacruz@spinetix.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWTW3quhW2mh7Ky6oU2iwvIUX+ogO2MWl4cmFEPwQH2f8c/YyYVEyg6QJlncQ7Ih6z4BNuLpvQwr6RLggl4kkFB3qL77iwAGILyTJis6crINoObWoy1WjTrRF3rnfx0BmKfrWzX6PJgNePYDK0Phdrd8xSb9RBu7VG8x4HNgSBTkv4SWPCw1RU96BUiMF/PaV1zJht96r0NCdzM4ZDHiRuPIPn05asiiBZdeJ8eTMYHkyhDWe5h1S3e16k7mbyBNahCmSVF7wzPI7iD5Yv13gFQyi//jB4vnKIYm84uu+8YUsDRCEdlt64Ql5hAzD+C+cLKOfn5YqXxxvOHW1DzFXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rToCPtZHrwOyRlJ0dIxowFxnqqmTjiLeQksOeItKolI=;
 b=iHYm/ZtB8J7N2ADhJztTxcfRqt/qbqcSLtl/LsogFJA7Tc/CoGz64d+t2Ah5itSWyZRsHhzhvXVlHHlRdbji/hgQL+29HvWPBsV79SvtfKszNmGOT8Nm3pxE7+fErBgAoiaWSgOqXF6u/122qSY2wz6EBBjQBRkr0pnNAWnAe0ipCPvUVAU1iRRsdKrHxPmkfjnZcxzGKs0CHkrkzDyDiuzbWY6KwBkEAC0TkBUT0UCD1EODdG4jBY3eNeRegAp3+3njUIkkzRayqH8R4KzaLLqRDi3JodX0KSPtZVsC3oN1o1DKbYdSaflP2Buip4SjJxfCfKFMBpnV7wsFqNf7dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=spinetix.com; dmarc=pass action=none header.from=spinetix.com;
 dkim=pass header.d=spinetix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=spinetix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rToCPtZHrwOyRlJ0dIxowFxnqqmTjiLeQksOeItKolI=;
 b=Jd7irwzxyp26X8+JU0mz6x16EqVJ8hIjoVmTQRZNGyA50bWaUcW9ttpeq9aCsTfVcm0V1nJWSzxo6yCOB7GZ2RzCqoAfDHv3IuNGqMxxfI+reJTlgzoJPso6YNE6cCmay4cEQ7wFr4eiEczAGS8wfWE1gqyNGNkd+n0lR7TBoxY=
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com (20.178.120.225)
 by VI1PR01MB4014.eurprd01.prod.exchangelabs.com (20.177.54.153) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2516.16; Mon, 9 Dec
 2019 09:47:28 +0000
Received: from VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::6d7a:666f:b19e:685d]) by VI1PR01MB5167.eurprd01.prod.exchangelabs.com
 ([fe80::6d7a:666f:b19e:685d%3]) with mapi id 15.20.2516.018; Mon, 9 Dec 2019
 09:47:28 +0000
From: "Diego Santa Cruz" <diego.santacruz@spinetix.com>
To: "akuster808@gmail.com" <akuster808@gmail.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [meta-security][PATCH] meta-security: add layer index callouts
Thread-Topic: [yocto] [meta-security][PATCH] meta-security: add layer index
 callouts
Thread-Index: AQHVrFvbC67vlf18kk+sqMO0KEtrIqexketw
Date: Mon, 9 Dec 2019 09:47:28 +0000
Message-ID: 
 <VI1PR01MB5167EFB04ADDF84335E36AA688580@VI1PR01MB5167.eurprd01.prod.exchangelabs.com>
References: <20191206173731.2563-1-akuster808@gmail.com>
In-Reply-To: <20191206173731.2563-1-akuster808@gmail.com>
Accept-Language: en-GB, fr-CH, fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Diego.SantaCruz@spinetix.com; 
x-originating-ip: [46.14.255.78]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6333614-4604-4c00-c3cb-08d77c8ccd9c
x-ms-traffictypediagnostic: VI1PR01MB4014:
x-microsoft-antispam-prvs: 
 <VI1PR01MB4014446CDBF97DBEE8FE868A88580@VI1PR01MB4014.eurprd01.prod.exchangelabs.com>
x-ms-oob-tlc-oobclassifiers: OLM:513;
x-forefront-prvs: 02462830BE
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(39830400003)(366004)(396003)(376002)(346002)(136003)(13464003)(189003)(199004)(71200400001)(186003)(52536014)(81156014)(33656002)(81166006)(8936002)(8676002)(9686003)(26005)(55016002)(71190400001)(110136005)(6506007)(53546011)(7696005)(86362001)(66476007)(66446008)(64756008)(66556008)(76116006)(66946007)(229853002)(316002)(508600001)(2906002)(305945005)(15650500001)(5660300002);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR01MB4014;H:VI1PR01MB5167.eurprd01.prod.exchangelabs.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: spinetix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 J6O141SmmdO0IqxIj1N6DwXhOX5xDdJ83FktI/rOErwTq/If1f9pPediIyNV0agJLuDcwG/oAcEioIyXISdkvlSsljJ8YOutsjvak3k88mB6QZcf78FhqZWNbVf8+st4Gt9SnR+ZHmRrgKN9d1HLEFZqZDLyhm020gbL6dysrzn68YoKrHL7aAf6glrEWit1fTiPMVqsG7e1JBjU4PW82YF+ee/alJ7lqeuYI6q03l5Fg3kY/ES7mmFcFXa/upC+89EjIPkv/dLQZg3jgEJ7gcp6s7ND++BQU8Fpsp5LxjzayjWVWccPWwmhloxV5TdZlm3QooTuNMgwa9yotJXHZEMNY4fb2cAnIDzAbNhbgJzFzXekpzUm6xd25MevtJHxvNs4WO2b9peiJ4JC+xDj5iYior5FcJKnxtnh4x2gtOw4ZTT977Sm2xpFEG1yUfJRCcWs0MK0dh6i5lfk0DbLZeJlpWOHTFFPkLHjij68gI+Y5B2h3bi56l+2Q8/5vIgj
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: spinetix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6333614-4604-4c00-c3cb-08d77c8ccd9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2019 09:47:28.2253
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5f4034fa-ed2d-4840-a93f-acb1e9633b93
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dnPatSbluOmy/VEnOtxKhSuRZHztLpogfcBJAXmY8MxisboEPeNcAfshKeAvHxg2QxAsdJZDk0dyb8P25gUt/jaK9wqjC8KQrmdlRvZX7X4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4014
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On Beha=
lf
> Of Armpit via Lists.Yoctoproject.Org
> Sent: 06 December 2019 18:38
> To: yocto@lists.yoctoproject.org
> Cc: yocto@lists.yoctoproject.org
> Subject: [yocto] [meta-security][PATCH] meta-security: add layer index ca=
llouts
>=20
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  meta-integrity/conf/layer.conf           | 2 ++
>  meta-security-compliance/conf/layer.conf | 2 ++
>  meta-tpm/conf/layer.conf                 | 1 +
>  3 files changed, 5 insertions(+)
>=20
> diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.c=
onf
> index 962424c..bfc9c6f 100644
> --- a/meta-integrity/conf/layer.conf
> +++ b/meta-integrity/conf/layer.conf
> @@ -24,3 +24,5 @@ OE_TERMINAL_EXPORTS +=3D "INTEGRITY_BASE"
>  LAYERSERIES_COMPAT_integrity =3D "zeus"
>  # ima-evm-utils depends on keyutils from meta-oe
>  LAYERDEPENDS_integrity =3D "core openembedded-layer"
> +
> +BBLAYERS_LAYERINDEX_NAME_integrity =3D "meta-integrity"
> diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-
> compliance/conf/layer.conf
> index 0e93bd0..e346bf3 100644
> --- a/meta-security-compliance/conf/layer.conf
> +++ b/meta-security-compliance/conf/layer.conf
> @@ -11,3 +11,5 @@ BBFILE_PRIORITY_scanners-layer =3D "10"
>  LAYERSERIES_COMPAT_scanners-layer =3D "zeus"
>=20
>  LAYERDEPENDS_scanners-layer =3D "core openembedded-layer meta-python"
> +
> +BBLAYERS_LAYERINDEX_NAME_integrity =3D "meta-security-compliance"

This looks like a copy & paste typo, shouldn't this be

+BBLAYERS_LAYERINDEX_NAME_scanners-layer =3D "meta-security-compliance"

> diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
> index 3af2d95..175eba8 100644
> --- a/meta-tpm/conf/layer.conf
> +++ b/meta-tpm/conf/layer.conf
> @@ -14,3 +14,4 @@ LAYERDEPENDS_tpm-layer =3D " \
>      core \
>      openembedded-layer \
>  "
> +BBLAYERS_LAYERINDEX_NAME_tpm-layer =3D "meta-tpm"
> --
> 2.17.1
--=20
Diego Santa Cruz, PhD
Technology Architect
spinetix.com
