Return-Path: <Christopher.PeBenito@microsoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13237E00D20; Thu, 28 Mar 2019 14:23:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.72.117 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 46772 seconds by postgrey-1.32 at yocto-www;
	Thu, 28 Mar 2019 14:23:39 PDT
Received: from NAM05-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr720117.outbound.protection.outlook.com [40.107.72.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4841E00D16
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 14:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=fUrCAF7KRsjMuOsN36h3cWNMzLjwzDJ3dtXly1FeavY=;
	b=TIAKktc2tG0vvWV62oNRcv2JxSlg55Eqeaj7MInankMreuT2ezSoPtY6pBI4gZoO5l1LWaYNV0vaq8Cs3gCQKHBP2i5bMhuOQr25msrt6/SNGqztEDdvDMvkMIlq1yVNPh4Fxqg42tipKHhQZRy9HTGz1j5oQMzWyXws5j9zUzo=
Received: from BL0PR2101MB0900.namprd21.prod.outlook.com (52.132.23.149) by
	BL0PR2101MB0980.namprd21.prod.outlook.com (52.132.23.154) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1771.4; Wed, 27 Mar 2019 19:53:46 +0000
Received: from BL0PR2101MB0900.namprd21.prod.outlook.com
	([fe80::b557:815a:3329:3897]) by
	BL0PR2101MB0900.namprd21.prod.outlook.com
	([fe80::b557:815a:3329:3897%4]) with mapi id 15.20.1771.003;
	Wed, 27 Mar 2019 19:53:46 +0000
From: Chris PeBenito <Christopher.PeBenito@microsoft.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/1] libselinux.inc: Add python-shell to
	libselinux-python RDEPENDS.
Thread-Index: AQHU5NbKA55oCOL4hEmFOkobOWJEOw==
Date: Wed, 27 Mar 2019 19:53:46 +0000
Message-ID: <20190327195340.12869-1-Christopher.PeBenito@microsoft.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [108.15.23.247]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61b39712-9173-4274-affb-08d6b2edeca9
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(5600127)(711020)(4605104)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
	SRVR:BL0PR2101MB0980; 
x-ms-traffictypediagnostic: BL0PR2101MB0980:
x-microsoft-antispam-prvs: <BL0PR2101MB0980B46BBC7CB1359ADBA44A96580@BL0PR2101MB0980.namprd21.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:363;
x-forefront-prvs: 0989A7979C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(136003)(366004)(396003)(39860400002)(346002)(189003)(199004)(6486002)(7736002)(105586002)(68736007)(305945005)(476003)(2501003)(486006)(71200400001)(81166006)(99286004)(86362001)(66066001)(86612001)(2351001)(53936002)(1730700003)(186003)(8676002)(5640700003)(106356001)(8936002)(2616005)(6512007)(71190400001)(81156014)(5660300002)(25786009)(2906002)(6436002)(10290500003)(97736004)(72206003)(26005)(1076003)(6916009)(22452003)(6346003)(36756003)(102836004)(14454004)(256004)(6506007)(4326008)(4744005)(54906003)(478600001)(10090500001)(6116002)(3846002)(316002)(14444005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR2101MB0980;
	H:BL0PR2101MB0900.namprd21.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Christopher.PeBenito@microsoft.com; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +MbXwskufnd7E88ibGtHzj5aEWHb5UifD1BEAz8iWREAvf809L+MYX1Di+yS1AtsibY7ltby8+WwDL8agEFy5Yu1QufKgTTLXT4/2MSAx4d3jB+1Tys3iKnUPlodCiMVM5qq+Aq4M0YDssh1wni6sDylOb0FE8ltbt6xayhwkqPUiHS41wptFiauNjoKaTFKgUhOKgDdQu+tUmWH6xiRDnAg5I4CvLcuSxBi5X6SkAJfGxR9vpqXeTfKv311oJxxo5XUQ1n7oxT0v4cMkmSTKZZljezB9dGo+P7oOGPoT3wYZvN7L9ozq0garKXlP0fs4txM+eOgGefpxyCHvc3XezjV/BcVAN87A617qyxgJIiggdxxbnmBS/hoPiiu4drLARzYr4X+oWmcm6RDAumzNzCVuH76+Ll7+sK2/JM1fvY=
MIME-Version: 1.0
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61b39712-9173-4274-affb-08d6b2edeca9
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Mar 2019 19:53:46.5751 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR2101MB0980
Subject: [PATCH 1/1] libselinux.inc: Add python-shell to libselinux-python RDEPENDS.
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
X-List-Received-Date: Thu, 28 Mar 2019 21:23:41 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

The libselinux SWIG wrapper imports shutil.

Signed-off-by: Chris PeBenito <Christopher.PeBenito@microsoft.com>
---
 recipes-security/selinux/libselinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux.inc b/recipes-security/sel=
inux/libselinux.inc
index 33621cc..6e115e3 100644
--- a/recipes-security/selinux/libselinux.inc
+++ b/recipes-security/selinux/libselinux.inc
@@ -9,7 +9,7 @@ inherit lib_package pythonnative
=20
 DEPENDS +=3D "libsepol python libpcre swig-native"
 DEPENDS_append_libc-musl =3D " fts"
-RDEPENDS_${PN}-python +=3D "python-core"
+RDEPENDS_${PN}-python +=3D "python-core python-shell"
=20
 PACKAGES +=3D "${PN}-python"
 FILES_${PN}-python =3D "${libdir}/python${PYTHON_BASEVERSION}/site-package=
s/*"
--=20
2.17.1

