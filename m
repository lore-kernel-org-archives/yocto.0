Return-Path: <chunrong.guo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7753DE00D97; Tue, 15 Oct 2019 19:02:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.13.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr130052.outbound.protection.outlook.com [40.107.13.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F949E00D8E
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 19:02:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=b50jMbP4/yD/RwpyqrjSk78Z776CqlbBtgx08uEojkJabJcD0cHSIxjk4qXSAHzxThXMiGpqEXCgwi3cAsbPUab+CqLR/uJzPShYwbKySHgZg8IZsWPK89RU8WEsM0QjODZh14C2/vMoiIdhjSrbEB+paVHwz99zo8zNfVI9wySH5CCFvuAe4pRgtc0ax38v1uk4HT+oCFGrFWvubYkx1B35ATthXwVgGE4IQ8t9SlonemSaVmR7foa4AuNow0p8pWH0U88sVRTB4wBPYvl8YVk6T+57HZo7dI3hLq5Oo4WqbVBe4bSp69njoEe4pYX+Ddy+mfzu9kmwnUGoC4JNUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gEvVglJNeDm69fjwXnTneqYY7jbrnQ6cXDmfadzGG8k=;
	b=RavClqQh8tj7Km2jUsvDp4fiShrJf+5dJbPg3/tCs1lIZ1bjdnU7M85SUQ7tC8gSeeE/MgGUT6Denp7bLCx5b/pF/aoyGSn5ghhgJgctt7jzfsHVHvMLRE7oPuvOVHXgXjplTiH7CIL7RG1EQMBFQPXCUTfZ57f1dhKSjudUWvxzMBgGPRzH5IS36PNLCDNO1sSP227DWFtZOV8oW2EqjQnFoHmJQeI7YKOpfk/z+uGShJ+pwgrnnhO3/PaCWroMRL2er5Ti4yvSDwvBy2mwqBE+ucPMjIMKJFZRPA053sUujsLhOLnlDA9LRV8OqKOqiSVuwUZXbtKNq4jwRFjIXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com;
	dkim=pass header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gEvVglJNeDm69fjwXnTneqYY7jbrnQ6cXDmfadzGG8k=;
	b=XoUp4yvfJVPe1gYNXn3f1mx4nT018SzIyXrMtYmJzG89Q7zIMJukOXl6NX2SOVgDg8Uta1BbdtZF9UFUvO1n2KfFcyWBE4+Rs1gd+YWCVGxPooa3l/ZZmphLh5erTe/bCIPctAJz2ZbzaJ1bLkEo9R3sFVmVO+UUl2dOfe86sVQ=
Received: from VE1PR04MB6685.eurprd04.prod.outlook.com (20.179.233.217) by
	VE1PR04MB6752.eurprd04.prod.outlook.com (20.179.234.205) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.16; Wed, 16 Oct 2019 02:02:27 +0000
Received: from VE1PR04MB6685.eurprd04.prod.outlook.com
	([fe80::cc7e:af2:aa8b:e570]) by VE1PR04MB6685.eurprd04.prod.outlook.com
	([fe80::cc7e:af2:aa8b:e570%4]) with mapi id 15.20.2347.023;
	Wed, 16 Oct 2019 02:02:27 +0000
From: "C.r. Guo" <chunrong.guo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [meta-selinux][PATCH] layer.conf: Add zeus to compat layer
Thread-Index: AQHVg8XC6WFNcBBnG0m49OI4pyfJcw==
Date: Wed, 16 Oct 2019 02:02:27 +0000
Message-ID: <1571191331-6164-1-git-send-email-chunrong.guo@nxp.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0206.apcprd02.prod.outlook.com
	(2603:1096:201:20::18) To VE1PR04MB6685.eurprd04.prod.outlook.com
	(2603:10a6:803:120::25)
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=chunrong.guo@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ee8b0f3-a36f-4fa5-403c-08d751dce4e4
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6752:|VE1PR04MB6752:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6752A024465E9ACE4A55D08384920@VE1PR04MB6752.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(6436002)(256004)(1730700003)(316002)(5640700003)(25786009)(7736002)(305945005)(6512007)(4744005)(8676002)(81166006)(81156014)(66946007)(71200400001)(71190400001)(64756008)(14444005)(66476007)(66446008)(36756003)(2501003)(66556008)(2351001)(52116002)(486006)(6506007)(6486002)(102836004)(386003)(99286004)(26005)(5660300002)(66066001)(476003)(186003)(2616005)(6916009)(4326008)(2906002)(50226002)(86362001)(478600001)(3846002)(6116002)(14454004)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6752;
	H:VE1PR04MB6685.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Pgbs4GxP4nLtZ26+3XIV9RgTM0CXnRl/XhU3s7o0H3GElEdC0ihxGwRFYHjwZ1vl05PtzLeojY7Hlovk3zhdibcXipI/wu74ohXinmr9MHHawY9/rvxgsOSjlbPoAtqgP/5ELnMpgsArFmlgPpL6mxUSyzmcRj4hRemAqYFp+ShOXGG90g9v7ew+JzkjSH3blfc5sQzzus/kFehkMA5283CmpqjWCqnziFYxTynG1yN2hLalE+CnlvqIofArdHR4tUVyYNJ+0rF1PprfSYAdktNb/or3oEYBfwGKOveiBF0HAVqdldwaLeOLZiEehotFj6eKkQ4YMmJyNMVUak4NCyh3O3dPXK+orzA3p+RtzUaxOag2T8NkLQfLuDgkz8bOBik5cHjUTt+dB7xw1Dd7wc7lZUm0lH/K2qwvsuZbjrY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ee8b0f3-a36f-4fa5-403c-08d751dce4e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 02:02:27.4950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 76yHeGeM08Z+kxvRWVYn6QfeZZJ35zS94+WQVDtamX850262BHzVM2OtXL2FFp2DkiDtcOgDakGwgOs6Ul7Rdg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6752
X-Mailman-Approved-At: Thu, 17 Oct 2019 08:07:18 -0700
Cc: "C.r. Guo" <chunrong.guo@nxp.com>
Subject: [meta-selinux][PATCH] layer.conf: Add zeus to compat layer
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 16 Oct 2019 02:02:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Chunrong Guo <chunrong.guo@nxp.com>

Signed-off-by: Chunrong Guo <chunrong.guo@nxp.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 89b9468..30b0518 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -21,7 +21,7 @@ BBFILE_PRIORITY_selinux =3D "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux =3D "1"
=20
-LAYERSERIES_COMPAT_selinux =3D "thud warrior"
+LAYERSERIES_COMPAT_selinux =3D "thud warrior zeus"
=20
 LAYERDEPENDS_selinux =3D " \
     core \
--=20
2.7.4


