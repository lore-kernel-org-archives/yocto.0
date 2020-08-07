Received: from esa14.hc324-48.eu.iphmx.com (esa14.hc324-48.eu.iphmx.com [207.54.69.24])
 by mx.groups.io with SMTP id smtpd.web11.3466.1596796022808819141
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Aug 2020 03:27:03 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=pk7oFK+x;
 spf=pass (domain: bmw.de, ip: 207.54.69.24, mailfrom: prvs=481edeaef=oleksii.miroshko@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1596796022; x=1628332022;
  h=from:to:subject:date:message-id:
   content-transfer-encoding:mime-version;
  bh=jaEzl1Sbyl4WA33L4+ybbbrrB251s40G9vjYIQBN8kM=;
  b=pk7oFK+xGfsNwS0DTjZQvvTsJjGnk/LXoBpHAk0gXA0zInfHz2kNfkzG
   lQLQIQcFVPIAItWQy1J15OhQ90Rd4csukcEnJpE39v5R/LEixe9bTcE+8
   1WcG81xsQaBRWSEJgW6fWG9cvhbtGV6TuiWGoqA0xCWxCmjRHGXEabaXU
   o=;
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa14.hc324-48.eu.iphmx.com with ESMTP/TLS; 07 Aug 2020 12:27:00 +0200
Received: from esabb1.muc ([160.50.100.31])  by esagw5.muc with ESMTP/TLS;
 07 Aug 2020 12:27:00 +0200
Received: from smucm16m.bmwgroup.net (HELO smucm16m.europe.bmw.corp) ([160.48.96.73])
 by esabb1.muc with ESMTP/TLS; 07 Aug 2020 12:27:00 +0200
Received: from smucm16m.europe.bmw.corp (160.48.96.73) by smucm16m.europe.bmw.corp
 (160.48.96.73) with Microsoft SMTP Server (TLS;
 Fri, 7 Aug 2020 12:27:00 +0200
Received: from smucm16m.europe.bmw.corp ([160.48.96.73]) by
 smucm16m.europe.bmw.corp ([160.48.96.73]) with mapi id 15.00.1497.006; Fri, 7
 Aug 2020 12:27:00 +0200
From: oleksii.miroshko@bmw.de
To: <yocto@lists.yoctoproject.org>
Subject: [meta-selinux][PATCH] setools: Add native support
Thread-Topic: [meta-selinux][PATCH] setools: Add native support
Thread-Index: AQHWbKUMZdgHhS/KrkKtxPt+eCp20w==
Date: Fri, 7 Aug 2020 10:27:00 +0000
Message-ID: <1596796020024.7100@bmw.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

From: Oleksii Miroshko <oleksii.miroshko@bmw.de>=0A=
=0A=
Enable using setools for analyzing the built SELinux policy=0A=
during the build.=0A=
=0A=
Signed-off-by: Oleksii Miroshko <oleksii.miroshko@bmw.de>=0A=
---=0A=
 recipes-devtools/python/python3-decorator_%.bbappend | 2 ++=0A=
 recipes-devtools/python/python3-networkx_%.bbappend  | 2 ++=0A=
 recipes-security/setools/setools_4.3.0.bb            | 6 ++++++=0A=
 3 files changed, 10 insertions(+)=0A=
 create mode 100644 recipes-devtools/python/python3-decorator_%.bbappend=0A=
 create mode 100644 recipes-devtools/python/python3-networkx_%.bbappend=0A=
=0A=
diff --git a/recipes-devtools/python/python3-decorator_%.bbappend b/recipes=
-devtools/python/python3-decorator_%.bbappend=0A=
new file mode 100644=0A=
index 0000000..3bc71e0=0A=
--- /dev/null=0A=
+++ b/recipes-devtools/python/python3-decorator_%.bbappend=0A=
@@ -0,0 +1,2 @@=0A=
+BBCLASSEXTEND =3D "native nativesdk"=0A=
+=0A=
diff --git a/recipes-devtools/python/python3-networkx_%.bbappend b/recipes-=
devtools/python/python3-networkx_%.bbappend=0A=
new file mode 100644=0A=
index 0000000..3bc71e0=0A=
--- /dev/null=0A=
+++ b/recipes-devtools/python/python3-networkx_%.bbappend=0A=
@@ -0,0 +1,2 @@=0A=
+BBCLASSEXTEND =3D "native nativesdk"=0A=
+=0A=
diff --git a/recipes-security/setools/setools_4.3.0.bb b/recipes-security/s=
etools/setools_4.3.0.bb=0A=
index ec73f7c..8fdeeb0 100644=0A=
--- a/recipes-security/setools/setools_4.3.0.bb=0A=
+++ b/recipes-security/setools/setools_4.3.0.bb=0A=
@@ -8,6 +8,8 @@ SETools."=0A=
 SECTION =3D "base"=0A=
 LICENSE =3D "GPLv2 & LGPLv2.1"=0A=
 =0A=
+BBCLASSEXTEND =3D "native nativesdk "=0A=
+=0A=
 S =3D "${WORKDIR}/git"=0A=
 SRC_URI =3D "git://github.com/SELinuxProject/${BPN}.git;branch=3D4.3 \=0A=
            file://setools4-fixes-for-cross-compiling.patch \=0A=
@@ -21,9 +23,13 @@ LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D83a5eb69=
74c11f30785e90d0eeccf40c \=0A=
 =0A=
 DEPENDS +=3D "bison-native flex-native swig-native python3 python3-cython-=
native libsepol libselinux"=0A=
 =0A=
+DEPENDS_class-native +=3D "libselinux python3-setuptools python3-cython py=
thon3-networkx"=0A=
+=0A=
 RDEPENDS_${PN} +=3D "python3-networkx python3-decorator python3-setuptools=
 \=0A=
                    python3-logging python3-json libselinux-python"=0A=
 =0A=
+RDEPENDS_${PN}_class-native =3D ""=0A=
+=0A=
 RPROVIDES_${PN} +=3D "${PN}-console"=0A=
 =0A=
 inherit setuptools3=0A=
-- =0A=
2.25.4=
