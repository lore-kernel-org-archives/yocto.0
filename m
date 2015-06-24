Return-Path: <gshastri@juniper.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FAA2E009C8; Wed, 24 Jun 2015 01:06:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.124 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1056 seconds by postgrey-1.32 at yocto-www;
	Wed, 24 Jun 2015 01:06:18 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0124.outbound.protection.outlook.com [65.55.169.124])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2EE6E00974
	for <yocto@yoctoproject.org>; Wed, 24 Jun 2015 01:06:18 -0700 (PDT)
Received: from BN3PR0501MB1427.namprd05.prod.outlook.com (10.160.117.149) by
	BN3PR0501MB1425.namprd05.prod.outlook.com (10.160.117.147) with
	Microsoft
	SMTP Server (TLS) id 15.1.190.14; Wed, 24 Jun 2015 07:33:08 +0000
Received: from BN3PR0501MB1427.namprd05.prod.outlook.com ([10.160.117.149]) by
	BN3PR0501MB1427.namprd05.prod.outlook.com ([10.160.117.149]) with
	mapi id 15.01.0195.005; Wed, 24 Jun 2015 07:33:08 +0000
From: Gaurang Shastri <gshastri@juniper.net>
To: Alexandru.Vaduva <Alexandru.Vaduva@enea.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Adrian.Dudau@enea.com" <Adrian.Dudau@enea.com>, 
	"Alexandra.Safta@enea.com" <Alexandra.Safta@enea.com>
Thread-Topic: [yocto] [LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.
Thread-Index: AQHQrb1efUVVNeTHQkiJdhCwe9N8jZ27RC+Q
Date: Wed, 24 Jun 2015 07:33:07 +0000
Message-ID: <BN3PR0501MB1427578A5A8515507336D40ED5AF0@BN3PR0501MB1427.namprd05.prod.outlook.com>
References: <1435053560-6941-1-git-send-email-siva.borra@enea.com>
	<1435053560-6941-2-git-send-email-siva.borra@enea.com>
In-Reply-To: <1435053560-6941-2-git-send-email-siva.borra@enea.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: enea.com; dkim=none (message not signed) header.d=none;
x-originating-ip: [116.197.184.12]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1425;
	3:ZoQw+VTeBry3Xw6Mi8IKtFbqtLckLYjb+n+eRAUW4RVqrhQOYKjtnjs+VQByoFa5xCIsYlW/z8w+tDMy6tf0rxt7u/ghg/pLpfBkjffEfsLJC+DFYPol5u5rekKhkZWrk4w0fKmAhUkejVR9jeOVIg==;
	10:QW7GPcI4N1mFEmFyMX4xr1a3ugKqlZNhz3Cl+aQzachpjVcF2LbryuzWAszMCXE3SkoqsB7kCSQh1KL5DcIV9WbMnnDHp2LARlOWdY6ylk8=;
	6:l5QvufITRvrXUdSeJBSRWvU5DpazYJC6DyEZqkFnZrEc8x/n9JqjBr29G6CMinqm
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1425;
x-microsoft-antispam-prvs: <BN3PR0501MB1425C9BF5E464D1CC76F1307D5AF0@BN3PR0501MB1425.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR0501MB1425; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1425; 
x-forefront-prvs: 061725F016
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(13464003)(102836002)(2900100001)(15975445007)(19580395003)(74316001)(54356999)(76176999)(2656002)(33656002)(87936001)(5001960100002)(19580405001)(2950100001)(76576001)(5001770100001)(2201001)(86362001)(77156002)(5003600100002)(122556002)(15395725005)(40100003)(5002640100001)(66066001)(106116001)(5001920100001)(99286002)(77096005)(46102003)(2501003)(62966003)(92566002)(189998001)(50986999);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1425;
	H:BN3PR0501MB1427.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: juniper.net
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2015 07:33:07.9665 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: bea78b3c-4cdb-4130-854a-1d193232e5f4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1425
Cc: Siva Borra <siva.borra@enea.com>, "linux@list.enea.se" <linux@list.enea.se>,
	"issues@enea.com" <issues@enea.com>
Subject: Re: [LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.
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
X-List-Received-Date: Wed, 24 Jun 2015 08:06:20 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

JFYI, makedumpfile recipe patch was already sent on emea list on 3/31/2015.

Can you please check?

//Gaurang Shastri

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Alexandru.Vaduva
Sent: Tuesday, June 23, 2015 7:30 PM
To: yocto@yoctoproject.org; Adrian.Dudau@enea.com; Alexandru.Vaduva@enea.co=
m; Alexandra.Safta@enea.com
Cc: Siva Borra; linux@list.enea.se; issues@enea.com
Subject: [yocto] [LXCR-4977 PATCH 1/1] Add makedumpfile recipe to cgl.

From: Siva Borra <siva.borra@enea.com>

Add the makedumpfile package recipe to
the cgl layer.

[LXCR-4977]


Signed-off-by: Siva Borra <siva.borra@enea.com>
---
 .../makedumpfile/files/alias-powerpc-powerpc32.patch | 13 +++++++++++++
 .../recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb   | 20 ++++++++++++++++=
++++
 2 files changed, 33 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/files/alias-po=
werpc-powerpc32.patch
 create mode 100644 meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1=
.5.8.bb

diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-p=
owerpc32.patch b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-power=
pc-powerpc32.patch
new file mode 100644
index 0000000..70ad663
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/files/alias-powerpc-power
+++ pc32.patch
@@ -0,0 +1,13 @@
+diff -rupN makedumpfile-1.5.8/Makefile makedumpfile-1.5.8/Makefile
+--- makedumpfile-1.5.8/Makefile	2015-03-24 02:58:33.000000000 +0100
++++ makedumpfile-1.5.8/Makefile	2015-06-23 11:08:30.595655336 +0200
+@@ -25,7 +25,8 @@ endif
+ ARCH :=3D $(shell echo ${TARGET}  | sed -e s/i.86/x86/ -e s/sun4u/sparc64=
/ \
+ 			       -e s/arm.*/arm/ -e s/sa110/arm/ \
+ 			       -e s/s390x/s390/ -e s/parisc64/parisc/ \
+-			       -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/)
++			       -e s/ppc64/powerpc64/ -e s/ppc/powerpc32/ \
++			       -e s/powerpc/powerpc32/)
+=20
+ CROSS :=3D
+ ifneq ($(TARGET), $(HOST_ARCH))
diff --git a/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb=
 b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
new file mode 100644
index 0000000..6c32306
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/makedumpfile/makedumpfile_1.5.8.bb
@@ -0,0 +1,20 @@
+DESCRIPTION =3D "Make dump file utility"
+LICENSE =3D "GPLv2"
+
+LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D751419260aa954499f7abaabaa882bb=
e"
+
+SRC_URI =3D "http://sourceforge.net/projects/makedumpfile/files/makedumpfi=
le/1.5.8/makedumpfile-${PV}.tar.gz;name=3Dmakedumpfile \
+	   file://alias-powerpc-powerpc32.patch \
+	   "
+
+SRC_URI[makedumpfile.md5sum] =3D "642d975349dff744c6027d4486499258"
+SRC_URI[makedumpfile.sha256sum] =3D "dd9c6c40c1ae6774b61bbe7b53f5ebbee9734=
f576d8ecb75ffb929288f5ea64d"
+
+DEPENDS =3D "zlib elfutils bzip2"
+
+EXTRA_OEMAKE =3D "TARGET=3D${TARGET_ARCH}"
+
+do_install() {
+	install -d ${D}${bindir}/
+	install -c -m 755 ${S}/makedumpfile ${D}${bindir}/ }
--
1.9.1

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

