Return-Path: <chunrong.guo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4146DE00D8E; Tue, 15 Oct 2019 18:55:02 -0700 (PDT)
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
	*      [40.107.1.41 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10041.outbound.protection.outlook.com [40.107.1.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9CA7E00B8E
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 18:55:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=M2TdwH73ap439AgbXFB/2p0hvkKb2zNIXZlOvzKbakA9NIkOCZ68z9m7vSycbBybi8HNn9kw58yzVBDliUuYLFlkAcs7N64XNuOfFcaXbtDf2+mojOkYfIzUqd9C5VA7VxU+r4T4oz7CxacDzTIw2/o2Z99o9mOqCCqtKJFWwaJIM5+Idf0MtpMVkCTBeGGSJWkwSHsk86EnqP3YBMLhLmZ+4qJyIvfpopIhbUE/34T/9ls2sygG8LTm3a2pE/Wo9cfb+6uG6y8PvlEcDloSKHaL9ktde9mlNrLXWe1VGYcSGTNdkm7g527wbhnhg6a8N6Gi4HiP/iPU/2Eu2LGDhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gEvVglJNeDm69fjwXnTneqYY7jbrnQ6cXDmfadzGG8k=;
	b=JSlY4rXViEBK69GYxKH1vmTRDT13s/sBbmmv4xaXsdFaVXDhGMFnfr/4SmwMbwcEAAP7GBZtGSKMauPrrB/HOTaLd1F+d/uLEgekKP/j05yROcqpt+tqc8UXAHwLcz5pFc1yWeJhCP6n2yIjtmK3htLZBP+ihqh7q/a4fAcbsNjI72CQ+gL1/CXIhZdnOGH94DPOGJhchUy3Db3TW/xk38zZVJqhLDhUZhB64hSygtoFiVkI8lnwCwbJr5W0XpMWffyj5q7xwTH+kSSp20a+XvXw25FTAQdvUmMClsbdCwqYbHb8iJJseVSEtDzV/lmKNil0kWvOQPJhd++f+Tu6+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com;
	dkim=pass header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=gEvVglJNeDm69fjwXnTneqYY7jbrnQ6cXDmfadzGG8k=;
	b=H44QCkkQbaV1nlLA4ys2Wsogz3OzDDEze07LdTOU4f/mGUp9csdxn9j6TZFTaxjQy4NgT+M37Lbq7Aw+aOe7INi35Epc8pvRt49TSWFUxWFWpYfnQSuLDh9fBjbUgYUZL+fYOaOQ/9jdG3Uzj/M2j0gnb8ksoPKrQr7WmE3YIgQ=
Received: from VE1PR04MB6685.eurprd04.prod.outlook.com (20.179.233.217) by
	VE1PR04MB6607.eurprd04.prod.outlook.com (20.179.234.19) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2347.18; Wed, 16 Oct 2019 01:54:58 +0000
Received: from VE1PR04MB6685.eurprd04.prod.outlook.com
	([fe80::cc7e:af2:aa8b:e570]) by VE1PR04MB6685.eurprd04.prod.outlook.com
	([fe80::cc7e:af2:aa8b:e570%4]) with mapi id 15.20.2347.023;
	Wed, 16 Oct 2019 01:54:58 +0000
From: "C.r. Guo" <chunrong.guo@nxp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH] layer.conf: Add zeus to compat layer
Thread-Index: AQHVg8S37Vi4mk3YZEWLG71aP8anfA==
Date: Wed, 16 Oct 2019 01:54:58 +0000
Message-ID: <1571190880-2603-1-git-send-email-chunrong.guo@nxp.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR02CA0144.apcprd02.prod.outlook.com
	(2603:1096:202:16::28) To VE1PR04MB6685.eurprd04.prod.outlook.com
	(2603:10a6:803:120::25)
x-mailer: git-send-email 2.7.4
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=chunrong.guo@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3b6985e1-ed8b-4e4d-a913-08d751dbd95a
x-ms-office365-filtering-ht: Tenant
x-ms-traffictypediagnostic: VE1PR04MB6607:|VE1PR04MB6607:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VE1PR04MB6607AF39853C888C1337ADE984920@VE1PR04MB6607.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(4636009)(366004)(396003)(39860400002)(136003)(376002)(346002)(199004)(189003)(2906002)(6916009)(2351001)(256004)(386003)(478600001)(6436002)(8936002)(316002)(6116002)(6506007)(14444005)(6512007)(3846002)(2616005)(102836004)(8676002)(50226002)(81166006)(4326008)(52116002)(1730700003)(5640700003)(476003)(25786009)(6486002)(486006)(81156014)(305945005)(186003)(86362001)(26005)(71190400001)(71200400001)(7736002)(66446008)(64756008)(66476007)(2501003)(66946007)(66556008)(66066001)(5660300002)(99286004)(36756003)(14454004)(4744005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VE1PR04MB6607;
	H:VE1PR04MB6685.eurprd04.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eDkp1hOA1aMs1kB8tiTEcktF1JB86VOJNzjuHYYyz8VvVKarYOItajM60RkjmzkhYA+cP2/NKM0zsmHejsr1yhN0lEM4VIWhI9ULZlSXUldraQrAO5g3onLFHob5plPiqoz9+buFWlJLfGHSxHfzojCat3+5FJs5u7/E0xb09GCyuJcIEzScSg1o39JB8rRnoXlkFhLyU0Ys3z2/fLPNnVF51OjrKKS76tQydw3nYZvrYhiHa8kK6iTPY9skM8PeaI81OcYKloxVVwzna53k7QyiQ6ES/cRnJjhQFmHpvnRj9gmfOHair9qQsQoCfeEiRmltzjSfH9TGRrLBXzcnlvD8WqQPunx6NfZvMrVkRJtVLE2/V5HWeTK7KHKsX0ugrTaBTagUe0S7vEQwIcaq/sgobUNkSabBZzFutul6eN0=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b6985e1-ed8b-4e4d-a913-08d751dbd95a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 01:54:58.8376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WVqljxLhbEJL9UKZiH9gr1c7Ieji3uM8OXjagK7ymlKdx6CTPx55KzJPadSvLLZTyq+TuOhMQxqLgJccaNHyJQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6607
X-Mailman-Approved-At: Thu, 17 Oct 2019 08:07:18 -0700
Cc: "C.r. Guo" <chunrong.guo@nxp.com>
Subject: [PATCH] layer.conf: Add zeus to compat layer
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
X-List-Received-Date: Wed, 16 Oct 2019 01:55:02 -0000
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


