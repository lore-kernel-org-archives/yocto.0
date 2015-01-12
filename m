Return-Path: <Alexandru.Vaduva@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58991E0086F; Mon, 12 Jan 2015 02:47:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 48631E007C1
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 02:47:17 -0800 (PST)
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX03.enea.se ([fe80::6ce7:7b51:1edf:e245%17]) with mapi id
	14.03.0224.002; Mon, 12 Jan 2015 11:47:10 +0100
From: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
To: Lei Maohui <leimaohui@cn.fujitsu.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-cgl][PATCH] cluster: add new recipe
Thread-Index: AQHQLh1ywhcYw2H6VEGLMJyKuSdNhJy8TNaw
Date: Mon, 12 Jan 2015 10:47:09 +0000
Message-ID: <DDB0C57E45663A458C5CACB7B5688BC21D768654@sestoex09.enea.se>
References: <1421035558-50846-1-git-send-email-leimaohui@cn.fujitsu.com>
In-Reply-To: <1421035558-50846-1-git-send-email-leimaohui@cn.fujitsu.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.14.189]
MIME-Version: 1.0
Subject: Re: [meta-cgl][PATCH] cluster: add new recipe
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
X-List-Received-Date: Mon, 12 Jan 2015 10:47:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you for the patch. I will merge it as soon as possible.
Also I believe there is an alternative pacemaker solution already integrate=
d, but this package is very welcomed.
In fact any alternative solution to any already available packages is good,=
 but maybe more information about each pachage should be included in the pa=
tch description.


Alex Vaduva

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Lei Maohui
Sent: Monday, January 12, 2015 6:06 AM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-cgl][PATCH] cluster: add new recipe

This is the development site for several related linux clustering component=
s.

Signed-off-by: Lei Maohui <leimaohui@cn.fujitsu.com>
---
 .../recipes-cgl/cluster/cluster_3.2.0.bb           | 63 ++++++++++++++++++=
++++
 1 file changed, 63 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb

diff --git a/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb b/meta-cg=
l-common/recipes-cgl/cluster/cluster_3.2.0.bb
new file mode 100644
index 0000000..2d6b49c
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/cluster/cluster_3.2.0.bb
@@ -0,0 +1,63 @@
+Summanry =3D "Red Hat Cluster"
+DESCRIPTION =3D "Red Hat Cluster"
+SECTION =3D "libs"
+HOMEPAGE =3D "https://fedorahosted.org/cluster/wiki/HomePage"
+
+SRC_URI =3D "https://fedorahosted.org/releases/c/l/cluster/${BP}.tar.xz"
+
+SRC_URI[md5sum] =3D "3f496dbecaea367af5a5e81d2e8dcab8"
+
+LICENSE =3D "GPL-2.0 LGPL-2.0"=20
+LIC_FILES_CHKSUM =3D "file://doc/README.licence;md5=3Dee8ae43af5ea09f12ca7=
f7a649764cb0"=20
+
+PR =3D "r1"=20
+
+DEPENDS =3D "corosync dbus openldap openais libxml2 ncurses perl zlib"
+
+FILES_${PN} +=3D "/lib/udev/rules.d/51-dlm.rules \
+    ${localstatedir}/run "
+FILES_${PN}-doc +=3D "/usr/share/man3/* /usr/share/man8/*"
+
+do_configure () {
+    CFLAGS=3D"${TARGET_CFLAGS}"       \
+    CCFLAGS=3D"${TARGET_CFLAGS}"      \
+    CXXFLAGS=3D"${TARGET_CFLAGS}"     \
+    ./configure \
+        --without_rgmanager \
+        --disable_kernel_check \
+        --without_cman \
+        --without_fence \
+        --without_bindings \
+        --without_group \
+        --without_config \
+        2>&1
+}
+
+do_compile () {
+    pwd
+    CFLAGS=3D"${TARGET_CFLAGS}" \
+    make libdir=3D${STAGING_LIBDIR} incdir=3D${STAGING_INCDIR}          \
+    CC=3D${TARGET_SYS}-gcc
+}
+do_install () {
+    rm -rf ${D}
+    make install DESTDIR=3D${D} libdir=3D${D}/usr/lib sbindir=3D${D}/usr/s=
bin \
+                 mandir=3D${D}/usr/share docdir=3D${D}/usr/share/doc
+
+    ## tree fix up
+    # /etc/sysconfig/cman
+    mkdir -p ${D}/etc/sysconfig
+
+    # logrotate name
+    mv ${D}/etc/logrotate.d/cluster ${D}/etc/logrotate.d/cman
+    # fix library permissions or strip helpers won't work.
+    find ${D} -name "lib*.so.*" -exec chmod 0755 {} \;
+    # fix lcrso permissions or strip helpers won't work.
+    find ${D} -name "*.lcrso" -exec chmod 0755 {} \;
+    # remove docs
+    rm -rf ${D}${datadir}/doc/cluster
+    rm -rf ${D}${localstatedir}/run
+    rm -rf ${D}${localstatedir}/lib
+    rm -rf ${D}${localstatedir}/log
+    rmdir --ignore-fail-on-non-empty ${D}${localstatedir} }
--
1.8.4.2

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

