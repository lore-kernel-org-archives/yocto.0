Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4826.1585106971409026486
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Mar 2020 20:29:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Du9ZlBbb;
 spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: qi.chen@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DEBBCE018CA; Tue, 24 Mar 2020 20:29:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.223.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2082.outbound.protection.outlook.com [40.107.223.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3DA8E018CA
	for <yocto@yoctoproject.org>; Tue, 24 Mar 2020 20:29:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gwRy+7XWla0E3Jab7gd2XdAgGAT7gUubTcP8D/ckKbeuFO3tAiWbk6Az4s+SxJYE4psVF9z7rJBshd0POcRO5/fd+kEJZHt+yyWwWq4C0kiP3eh3kispvYPKNgWI9maxsKhRnxC+F1ONMdx0oynX4kkykNVIomG9gwSuGKEV9G01upO1tMg7UD4JTLKBF841dlxfr1qpESAlJXoedMayV+xliiE9163yUe2UL95BuEY6444zsk51FEM3uZ2StDUFAANchILxeSdSuf23DYXTSq/FCt/4hjcSSHD8tLP115zHiJmDjAlZWYqkeea5Naa+5yvBGHtyikE0VqISrJWvOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3gr7fHWkyWoTAQuFQ0+LbmdIK6kBXwhrcEi2YW3+n3g=;
 b=cBEymnXoT5SCQXqZJZpJfYMKPzk+SmwRez6t7OjFaw+gmo57HPABV0LO244P+SRd2IAJvQSLCe7e/LvHnVu01TmmXykIGzs8kML0I1orA4++8Zyh6RFU+zRdGglnvLPjNzWg+J/ixyTIoGysOgqXaHyctpcASexMXZG3S7s3IdlIetjptw4Ooop6j6Xfc9ScosZAZ70Up3G3QGmaQkPdruu9dl9IWb7TLyVHMjnTswUGiybHgzwHEUKH1eHXfmFnT02OKYbGnPJi/4idMck25l4K+Zj7Uw+vx01N0tBdDUQJYVzFVHCFzufcN3ubKA1gPA+fWCDE23yH/8tVpKyk+g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3gr7fHWkyWoTAQuFQ0+LbmdIK6kBXwhrcEi2YW3+n3g=;
 b=Du9ZlBbbPUMWIAhmOgGcFA3Pd++K0G/xusBsVW/LF1rv56ua6ozY4KN4N4wwmJ4QhYzEWUlRSvMor5Oj7I18AkC/kpoTngI0L5j0IYQAe5y2OqOtnma8DnyN4ve2YndLKc78ZVCYVaXL0QH656GoAodSOO7qb7Ui2IHpFpZLhqk=
Received: from DM6PR11MB3498.namprd11.prod.outlook.com (2603:10b6:5:6c::22) by
 DM6PR11MB3932.namprd11.prod.outlook.com (2603:10b6:5:194::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.22; Wed, 25 Mar 2020 03:29:24 +0000
Received: from DM6PR11MB3498.namprd11.prod.outlook.com
 ([fe80::59da:f995:a842:c07c]) by DM6PR11MB3498.namprd11.prod.outlook.com
 ([fe80::59da:f995:a842:c07c%4]) with mapi id 15.20.2835.023; Wed, 25 Mar 2020
 03:29:24 +0000
From: "Chen Qi" <Qi.Chen@windriver.com>
To: Jeremy Puhlman <jpuhlman@mvista.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3
Thread-Topic: [yocto] [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3
Thread-Index: AQHV/aAqD5GvYZCbdkWV6d88bY+G8KhYr9Fr
Date: Wed, 25 Mar 2020 03:29:24 +0000
Message-ID: 
 <DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0@DM6PR11MB3498.namprd11.prod.outlook.com>
References: 
 <20200319015321.15525-1-jpuhlman@mvista.com>,<20200319015321.15525-17-jpuhlman@mvista.com>
In-Reply-To: <20200319015321.15525-17-jpuhlman@mvista.com>
Accept-Language: en-US, zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Qi.Chen@windriver.com; 
x-originating-ip: [192.103.52.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8883945d-07a0-4b3c-3d5a-08d7d06cb728
x-ms-traffictypediagnostic: DM6PR11MB3932:
x-microsoft-antispam-prvs: 
 <DM6PR11MB39325EF7062F4C50E068847DEDCE0@DM6PR11MB3932.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10009020)(136003)(366004)(376002)(346002)(396003)(39850400004)(7696005)(81156014)(19627405001)(81166006)(52536014)(6506007)(66446008)(55016002)(64756008)(91956017)(9686003)(33656002)(8676002)(316002)(8936002)(66556008)(53546011)(86362001)(5660300002)(15650500001)(76116006)(66946007)(66476007)(478600001)(2906002)(110136005)(186003)(30864003)(26005)(71200400001);DIR:OUT;SFP:1101;SCL:1;SRVR:DM6PR11MB3932;H:DM6PR11MB3498.namprd11.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
received-spf: None (protection.outlook.com: windriver.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 KrwVBPt/h3Osgk3sBHmuQ3OdRkibpzLUlr1g//ytDdIsde0iTTbQk/EehNUgKhhQDYJgl5hUoqZy+LhMAtD9qQIofeaGembL2OOivYojSQ9CdLUTOUJYUR02rp6N79F0ENOAhuxZVdbUa2QRXAkt12dIA1D/jCRhM1s/mGjvjRK1TYjvHwdUyhiP2IOjIrTdH7lhtXSm99ofBEAo755kn+uIUTq+gFA1RVx1AFhQowk7XI6juEHo/TOraizKVkX/aS5cBPiqskYiwbIk7mVSk7AjmEPX8LebUVh/QxUY53fgb3lwlHG2BgqwlSUmFqyIQNQB7vPFn05198d87kZhn9FTifmzvHL9Am9m1LRZPXjv0dB1hs3YVDaPzgkM8mylYdixipUwZTldSVuJDA8ysDhtMsJuVtBS4wIsv9rIae5j26FwgtKPtZ5SqsXG6yAt1PMhrHcyXRVw0WLOU7tMRYJoyJEYT4fS6SaZeWOFLszkp/M8CHzG+c9PHo8Fr5DnzrroXFNSG+WYoxQklWre6Q==
x-ms-exchange-antispam-messagedata: 
 O6tBj1nGIBo6qPUGzolvXNa/yQyXS+uKTMNo1xAizEzJdLtcqfLa6ZTmI0VZrTi2YCoUvcSNjamGexuciaNPr61ohCxx5PWV3646lGpaLVQGVddla3NqB0CV50W3cx0B25ma/Y2+plQWqVPlebyeoA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8883945d-07a0-4b3c-3d5a-08d7d06cb728
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 03:29:24.3687
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ictTGwkY+y01V0igST9PT91BS2XlPuru2cb1j+O5IbparcFVSHOU/RabG2SE/RwRq5A/Jbd+gRUhRDQtgHDsAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3932
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0DM6PR11MB3498namp_"

--_000_DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0DM6PR11MB3498namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

file://0001-Fix-python3-usage.patch is missing, causing do_fetch failure.

Regards,
Chen Qi
________________________________
From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on behalf=
 of Jeremy Puhlman <jpuhlman@mvista.com>
Sent: Thursday, March 19, 2020 9:53
To: yocto@yoctoproject.org <yocto@yoctoproject.org>
Cc: Jeremy A. Puhlman <jpuhlman@mvista.com>
Subject: [yocto] [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3

Drop unneeded patches moving some in to metadata.
Fix up for building 2.0.3

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 .../pacemaker/0001-pacemaker-fix-xml-config.patch  |  52 --------
 ...earch-header-from-STAGING_INCDIR-to-walka.patch |  37 ------
 .../0003-pacemaker-fix-header-defs-lookup.patch    |  27 ----
 .../0004-pacemaker-do-not-build-help.patch         |  27 ----
 ...o-not-execute-target-program-while-cross-.patch |  44 -------
 ...-Fix-definition-of-curses_indented_printf.patch |  30 +++++
 ...006-pacemaker-do-not-use-libgnutls-config.patch |  35 ------
 ...-Make-the-testing-infrastructure-optional.patch | 137 -----------------=
----
 .../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch |  28 -----
 .../{pacemaker_1.1.21.bb =3D> pacemaker_2.0.3.bb}    |  26 ++--
 10 files changed, 43 insertions(+), 400 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pa=
cemaker-fix-xml-config.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pa=
cemaker-search-header-from-STAGING_INCDIR-to-walka.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pa=
cemaker-fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pa=
cemaker-do-not-build-help.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pa=
cemaker-do-not-execute-target-program-while-cross-.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fi=
x-tools-Fix-definition-of-curses_indented_printf.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pa=
cemaker-do-not-use-libgnutls-config.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Ma=
ke-the-testing-infrastructure-optional.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF=
_ROOT_DIR-to-libdir-ocf.patch
 rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.21.bb =3D> pac=
emaker_2.0.3.bb} (82%)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker=
-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/000=
1-pacemaker-fix-xml-config.patch
deleted file mode 100644
index 72c3a1e..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xm=
l-config.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From ac1ff1d538d2be205fbcc9676c6497a1395b71d8 Mon Sep 17 00:00:00 2001
-From: Changqing Li <changqing.li@windriver.com>
-Date: Fri, 10 Aug 2018 14:59:33 +0800
-Subject: [PATCH] pacemaker: fix xml config
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
-update to version 1.1.19
-Signed-off-by: Changqing Li <changqing.li@windriver.com>
----
- configure.ac | 17 ++++++-----------
- 1 file changed, 6 insertions(+), 11 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 3bf1914..345caeb 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -555,7 +555,6 @@ AC_PATH_PROGS(TAR, tar)
- AC_PATH_PROGS(MD5, md5)
- AC_PATH_PROGS(TEST, test)
- PKG_PROG_PKG_CONFIG
--AC_PATH_PROGS(XML2CONFIG, xml2-config)
- AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)
- AC_DEFINE_UNQUOTED(VALGRIND_BIN, "$VALGRIND_BIN", Valgrind command)
-
-@@ -805,17 +804,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)
- dnl AC_CHECK_HEADERS(netinet/ip6.h)
- dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)
-
--AC_MSG_CHECKING(for special libxml2 includes)
--if test "x$XML2CONFIG" =3D "x"; then
--   AC_MSG_ERROR(libxml2 config not found)
--else
--   XML2HEAD=3D"`$XML2CONFIG --cflags`"
--   AC_MSG_RESULT($XML2HEAD)
--   AC_CHECK_LIB(xml2, xmlReadMemory)
--   AC_CHECK_LIB(xslt, xsltApplyStylesheet)
--fi
-+PKG_CHECK_MODULES([XML], [libxml-2.0])
-+PKG_CHECK_MODULES([XSLT], [libxslt])
-+
-+AC_CHECK_LIB(xml2, xmlReadMemory)
-+AC_CHECK_LIB(xslt, xsltApplyStylesheet)
-
--CPPFLAGS=3D"$CPPFLAGS $XML2HEAD"
-+CPPFLAGS=3D"$CPPFLAGS $XML_CFLAGS"
-
- AC_CHECK_HEADERS(libxml/xpath.h)
- AC_CHECK_HEADERS(libxslt/xslt.h)
---
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker=
-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes=
-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-t=
o-walka.patch
deleted file mode 100644
index 83940d1..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search=
-header-from-STAGING_INCDIR-to-walka.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 844ec301031b0e6a3000c793906ba476f08a1e65 Mon Sep 17 00:00:00 2001
-From: Li xin <lixin.fnst@cn.fujitsu.com>
-Date: Wed, 27 Dec 2017 05:20:45 +0000
-Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to walkaroun=
d
- error
-
-** -I/usr/include/ is unsafe for cross-compilation
-
- ... ...
-
- ** This autoconf log indicates errors, it looked at host include and/or l=
ibrary paths
- ** while determining system capabilities
-
-Upstream-Status: pending
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
-Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
-
----
- configure.ac | 3 +++
- 1 file changed, 3 insertions(+)
-
-diff --git a/configure.ac b/configure.ac
-index 5e420f2..5d442a5 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -484,6 +484,9 @@ esac
- dnl Eventually remove this
- if test "$cross_compiling" !=3D "yes"; then
-    CPPFLAGS=3D"$CPPFLAGS -I${prefix}/include/heartbeat"
-+else
-+   CFLAGS=3D"$CFLAGS -I${STAGING_INCDIR}/heartbeat"
-+   CPPFLAGS=3D"$CPPFLAGS -I${STAGING_INCDIR}/heartbeat"
- fi
-
- AC_SUBST(INIT_EXT)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker=
-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacem=
aker/0003-pacemaker-fix-header-defs-lookup.patch
deleted file mode 100644
index 6dc4663..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-he=
ader-defs-lookup.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From 9236fa746d43adb098c2946e72e8b29ffbc78865 Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Fri, 3 Jul 2015 16:30:25 +0900
-Subject: [PATCH] pacemaker: fix header defs lookup
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
----
- configure.ac | 5 ++---
- 1 file changed, 2 insertions(+), 3 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 5d442a5..1429b01 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -147,9 +147,8 @@ extract_header_define() {
-          Cfile=3D$srcdir/extract_define.$2.${$}
-          printf "#include <stdio.h>\n" > ${Cfile}.c
-          printf "#include <%s>\n" $1 >> ${Cfile}.c
--        printf "int main(int argc, char **argv) { printf(\"%%s\", %s); re=
turn 0; }\n" $2 >> ${Cfile}.c
--        $CC $CFLAGS ${Cfile}.c -o ${Cfile}
--        value=3D`${Cfile}`
-+        printf "\"%s\":%s\n" $2 $2 >> ${Cfile}.c
-+        value=3D`$CC $CFLAGS -E ${Cfile}.c | grep \"$2\" | cut -f 2 -d ':=
' | sed 's,^",,' | sed 's,"$,,'`
-          AC_MSG_RESULT($value)
-          printf $value
-          rm -rf ${Cfile}.c ${Cfile} ${Cfile}.dSYM ${Cfile}.gcno
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker=
-do-not-build-help.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/=
0004-pacemaker-do-not-build-help.patch
deleted file mode 100644
index 4234fe5..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not=
-build-help.patch
+++ /dev/null
@@ -1,27 +0,0 @@
-From cda171512fc8dc0aa385290e1f7644ff222e5f18 Mon Sep 17 00:00:00 2001
-From: Bian Naimeng <biannm@cn.fujitsu.com>
-Date: Fri, 3 Jul 2015 17:27:52 +0900
-Subject: [PATCH] pacemaker: do not build help
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
----
- configure.ac | 5 +----
- 1 file changed, 1 insertion(+), 4 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index 1429b01..e930e33 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -574,10 +574,7 @@ if test x"${MAKE}" =3D x""; then
-    AC_MSG_ERROR(You need (g)make installed in order to build ${PACKAGE})
- fi
-
--AM_CONDITIONAL(BUILD_HELP, test x"${HELP2MAN}" !=3D x"")
--if test x"${HELP2MAN}" !=3D x""; then
--   PCMK_FEATURES=3D"$PCMK_FEATURES generated-manpages"
--fi
-+AM_CONDITIONAL(BUILD_HELP, test x"Do not build help" =3D x"")
-
- MANPAGE_XSLT=3D""
- if test x"${XSLTPROC}" !=3D x""; then
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker=
-do-not-execute-target-program-while-cross-.patch b/meta-cgl-common/recipes=
-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while=
-cross-.patch
deleted file mode 100644
index b600fec..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not=
-execute-target-program-while-cross-.patch
+++ /dev/null
@@ -1,44 +0,0 @@
-From 6d59090df5856d32163f256912ddf1c897590447 Mon Sep 17 00:00:00 2001
-From: Changqing Li <changqing.li@windriver.com>
-Date: Wed, 21 Aug 2019 13:12:13 +0800
-Subject: [PATCH] pacemaker: do not execute target program while cross comp=
ile
-
-Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
-
-refresh patch to new version 1.1.21
-Signed-off-by: Changqing Li <changqing.li@windriver.com>
----
- Makefile.common | 8 +++++---
- 1 file changed, 5 insertions(+), 3 deletions(-)
-
-diff --git a/Makefile.common b/Makefile.common
-index 469417f..9f19a53 100644
---- a/Makefile.common
-+++ b/Makefile.common
-@@ -36,18 +36,20 @@ if BUILD_HELP
- man8_MANS             =3D $(sbin_PROGRAMS:%=3D%.8) $(sbin_SCRIPTS:%=3D%.8=
)
- endif
-
-++man7_MANS              =3D
-+
- %.8:  % $(MAN8DEPS)
-        chmod a+x $(abs_builddir)/$<
-        $(AM_V_MAN)PATH=3D$(abs_builddir):$$PATH $(HELP2MAN) --output $@ -=
-no-info --section 8 --name "Part of the Pacemaker cluster resource manager=
" $(abs_builddir)/$<
-
- %.xml:  %
--      $(AM_V_GEN)$(abs_builddir)/$< metadata > $@
-+        @echo "xml for $<: Do not try to execute target program here"
-
- %.dbook: %.xml
--      $(AM_V_XSL)$(XSLTPROC) --nonet --novalid --stringparam man.name $* =
$(DBOOK_OPTS) $(top_srcdir)/xml/ocf-meta2man.xsl $(abs_builddir)/$< > $(abs=
_builddir)/$@
-+        @echo "dbook for $<: Do not try to execute target program here"
-
- %.7:  %.dbook
--      $(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT) $(abs_builddir)/$< $(PCMK_qu=
iet)
-+        @echo "man7 for $<: Do not try to execute target program here"
-
- # Build docbook from asciidoc because XML is a PITA to edit
- #
---
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools=
-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recipes-c=
gl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_pri=
ntf.patch
new file mode 100644
index 0000000..f5e1829
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools-Fix-de=
finition-of-curses_indented_printf.patch
@@ -0,0 +1,30 @@
+From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001
+From: Chris Lumens <clumens@redhat.com>
+Date: Thu, 2 Jan 2020 15:08:58 -0500
+Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented_pri=
ntf.
+
+The placeholder version that is built if curses is not enabled does not
+have a type that matches the header file.  Correct that.
+
+Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
+Upstream-Status: Backport[git]
+---
+ tools/crm_mon_curses.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c
+index c0dbedbf0..ecd0584fe 100644
+--- a/tools/crm_mon_curses.c
++++ b/tools/crm_mon_curses.c
+@@ -368,7 +368,7 @@ curses_indented_vprintf(pcmk__output_t *out, const cha=
r *format, va_list args) {
+
+ G_GNUC_PRINTF(2, 3)
+ void
+-curses_indented_printf(pcmk__output_t *out, const char *format, va_list a=
rgs) {
++curses_indented_printf(pcmk__output_t *out, const char *format, ...) {
+     return;
+ }
+
+--
+2.23.0
+
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker=
-do-not-use-libgnutls-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/=
pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch
deleted file mode 100644
index c1ffc86..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not=
-use-libgnutls-config.patch
+++ /dev/null
@@ -1,35 +0,0 @@
-From 5148e0a7e3cd4293416b969f2c563faa6aca27b2 Mon Sep 17 00:00:00 2001
-From: Joe Slater <jslater@windriver.com>
-Date: Mon, 11 Mar 2013 15:47:54 -0700
-Subject: [PATCH] pacemaker: do not use libgnutls-config
-
-Do not try to use libgnutls-config when configuring.
-It has been deprecated and we do not supply it.  If a
-host version is found, bad things can happen.
-
-Upstream-Status: Inappropriate [OE specific]
-
-Signed-off-by: Joe Slater <jslater@windriver.com>
-Signed-off-by: Jackie Huang <jackie.huang@windriver.com>
-
----
- configure.ac | 6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/configure.ac b/configure.ac
-index e930e33..2eade3c 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1707,9 +1707,9 @@ dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D
- AC_CHECK_HEADERS(gnutls/gnutls.h)
- AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)
-
--dnl GNUTLS library: Attempt to determine by 'libgnutls-config' program.
--dnl If no 'libgnutls-config', try traditional autoconf means.
--AC_PATH_PROGS(LIBGNUTLS_CONFIG, libgnutls-config)
-+dnl libgnutls-config has been deprecated, so we use pkg-config
-+
-+LIBGNUTLS_CONFIG=3D"pkg-config gnutls"
-
- if test -n "$LIBGNUTLS_CONFIG"; then
-        AC_MSG_CHECKING(for gnutls header flags)
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-=
testing-infrastructure-optional.patch b/meta-cgl-common/recipes-cgl/pacemak=
er/pacemaker/0007-Make-the-testing-infrastructure-optional.patch
deleted file mode 100644
index 3417aae..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing=
-infrastructure-optional.patch
+++ /dev/null
@@ -1,137 +0,0 @@
-From 8a7c861e746ef13a2ffe74388891d7ea5709614b Mon Sep 17 00:00:00 2001
-From: =3D?UTF-8?q?Ferenc=3D20W=3DC3=3DA1gner?=3D <wferi@debian.org>
-Date: Thu, 29 Sep 2016 10:47:49 +0200
-Subject: [PATCH] Make the testing infrastructure optional
-MIME-Version: 1.0
-Content-Type: text/plain; charset=3DUTF-8
-Content-Transfer-Encoding: 8bit
-
-Upstream does not want this option, unfortunately.
-https://github.com/ClusterLabs/pacemaker/pull/1149
-
-Signed-off-by: Ferenc W=C3=A1gner <wferi@debian.org>
-
-It does not install test case by default
-Backport the patch from ubuntu
-http://archive.ubuntu.com/ubuntu/pool/main/p/pacemaker/pacemaker_1.1.18-0u=
buntu1.debian.tar.xz
-Upstream-Status: Deny [https://github.com/ClusterLabs/pacemaker/pull/1149]
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- Makefile.am         | 2 ++
- configure.ac        | 5 +++++
- fencing/Makefile.am | 2 ++
- lrmd/Makefile.am    | 2 ++
- pengine/Makefile.am | 2 ++
- tools/Makefile.am   | 2 ++
- 6 files changed, 15 insertions(+)
-
-diff --git a/Makefile.am b/Makefile.am
-index 874f6ed..9ce8b12 100644
---- a/Makefile.am
-+++ b/Makefile.am
-@@ -35,6 +35,7 @@ ACLOCAL_AMFLAGS  =3D -I m4
- licensedir              =3D $(docdir)/licenses/
- license_DATA            =3D $(wildcard licenses/*)
-
-+if ENABLE_TESTS
- # Test components
- SUBDIRS       +=3D cts
-
-@@ -46,6 +47,7 @@ test_DATA            =3D valgrind-pcmk.suppressions
- noinst_PROGRAMS =3D scratch
- nodist_scratch_SOURCES        =3D scratch.c
- scratch_LDADD =3D $(top_builddir)/lib/common/libcrmcommon.la -lm
-+endif
-
- scratch.c:
-        echo 'int main(void){}' >$@
-diff --git a/configure.ac b/configure.ac
-index b87e61b..a0cf3e2 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -330,6 +330,11 @@ AC_ARG_WITH(configdir,
-     [ CONFIGDIR=3D"$withval" ]
- )
-
-+AC_ARG_ENABLE([tests],
-+    [AS_HELP_STRING([--disable-tests],[don't build and install the testin=
g components])],,
-+    [enable_tests=3Dyes])
-+AM_CONDITIONAL([ENABLE_TESTS],[test "x$enable_tests" !=3D xno])
-+
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
- dnl General Processing
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
-diff --git a/fencing/Makefile.am b/fencing/Makefile.am
-index 3bb628f..8c06502 100644
---- a/fencing/Makefile.am
-+++ b/fencing/Makefile.am
-@@ -18,8 +18,10 @@
- include $(top_srcdir)/Makefile.common
-
- ## binary progs
-+if ENABLE_TESTS
- testdir                       =3D $(datadir)/$(PACKAGE)/tests/fencing
- test_SCRIPTS          =3D regression.py
-+endif
-
- halibdir      =3D $(CRM_DAEMON_DIR)
- halib_PROGRAMS        =3D stonithd stonith-test
-diff --git a/lrmd/Makefile.am b/lrmd/Makefile.am
-index 33611cb..ad6b88d 100644
---- a/lrmd/Makefile.am
-+++ b/lrmd/Makefile.am
-@@ -19,11 +19,13 @@ include $(top_srcdir)/Makefile.common
- lrmdlibdir            =3D $(CRM_DAEMON_DIR)
- lrmdlib_PROGRAMS      =3D lrmd lrmd_internal_ctl
-
-+if ENABLE_TESTS
- # Test components
- lrmdlib_PROGRAMS      +=3D lrmd_test
-
- testdir                       =3D $(datadir)/$(PACKAGE)/tests/lrmd
- test_SCRIPTS          =3D regression.py
-+endif
-
- initdir                       =3D $(INITDIR)
- init_SCRIPTS          =3D pacemaker_remote
-diff --git a/pengine/Makefile.am b/pengine/Makefile.am
-index 861946c..3faae3a 100644
---- a/pengine/Makefile.am
-+++ b/pengine/Makefile.am
-@@ -21,6 +21,7 @@ AM_CPPFLAGS  +=3D -I$(top_builddir) -I$(top_srcdir)
-
- halibdir      =3D $(CRM_DAEMON_DIR)
-
-+if ENABLE_TESTS
- PE_TESTS      =3D $(wildcard test10/*.scores)
-
- testdir                       =3D $(datadir)/$(PACKAGE)/tests/pengine
-@@ -29,6 +30,7 @@ test_DATA            =3D regression.core.sh
-
- test10dir             =3D $(datadir)/$(PACKAGE)/tests/pengine/test10
- test10_DATA           =3D $(PE_TESTS) $(PE_TESTS:%.scores=3D%.xml) $(PE_T=
ESTS:%.scores=3D%.exp) $(PE_TESTS:%.scores=3D%.dot) $(PE_TESTS:%.scores=3D%=
.summary) $(wildcard test10/*.stderr)
-+endif
-
- beekhof:
-        echo $(shell ls -1 test10/*.xml)
-diff --git a/tools/Makefile.am b/tools/Makefile.am
-index 3548035..826396d 100644
---- a/tools/Makefile.am
-+++ b/tools/Makefile.am
-@@ -40,10 +40,12 @@ EXTRA_DIST         =3D $(sbin_SCRIPTS)
- sbin_PROGRAMS         =3D crm_simulate crmadmin cibadmin crm_node crm_att=
ribute crm_resource crm_verify \
-                         crm_shadow attrd_updater crm_diff crm_mon iso8601=
 crm_ticket crm_error
-
-+if ENABLE_TESTS
- testdir                       =3D $(datadir)/$(PACKAGE)/tests/cli
- test_SCRIPTS          =3D regression.sh
- test_DATA               =3D regression.dates.exp regression.tools.exp reg=
ression.acls.exp \
-                          regression.validity.exp
-+endif
-
- if BUILD_HEARTBEAT_SUPPORT
- sbin_PROGRAMS           +=3D crm_uuid
---
-2.7.4
-
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_D=
IR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/se=
t-OCF_ROOT_DIR-to-libdir-ocf.patch
deleted file mode 100644
index 98c3475..0000000
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-l=
ibdir-ocf.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From 588800f0e2fe52a677a19b7c59636e9f391a6e75 Mon Sep 17 00:00:00 2001
-From: Mingli Yu <Mingli.Yu@windriver.com>
-Date: Wed, 27 Dec 2017 07:14:21 +0000
-Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf
-
-* Set the default OCF_ROOT_DIR to $libdir/ocf
-  to make the resource agents components more
-  compatible
-
-Signed-off-by: Mingli Yu <Mingli.Yu@windriver.com>
-
----
- configure.ac | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/configure.ac b/configure.ac
-index 2eade3c..ba290cc 100644
---- a/configure.ac
-+++ b/configure.ac
-@@ -1152,7 +1152,7 @@ AC_SUBST(HA_VARLIBHBDIR)
-
- AC_DEFINE_UNQUOTED(UUID_FILE,"$localstatedir/lib/heartbeat/hb_uuid", Loca=
tion of Heartbeat's UUID file)
-
--OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR /usr/=
lib/ocf`
-+OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR $libd=
ir/ocf`
- if test "X$OCF_ROOT_DIR" =3D X; then
-   AC_MSG_ERROR(Could not locate OCF directory)
- fi
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb b/me=
ta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
similarity index 82%
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
index 3a8db77..9b63acd 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb
@@ -13,24 +13,20 @@ LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D000212f361a8=
1b100d9d0f0435040663"

 DEPENDS =3D "corosync libxslt libxml2 gnutls resource-agents libqb python3=
-native"

-SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git;branch=3D1.1 \
-           file://0001-pacemaker-fix-xml-config.patch \
-           file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walk=
a.patch \
-           file://0003-pacemaker-fix-header-defs-lookup.patch \
-           file://0004-pacemaker-do-not-build-help.patch \
-           file://0005-pacemaker-do-not-execute-target-program-while-cross=
-.patch \
-           file://0006-pacemaker-do-not-use-libgnutls-config.patch \
-           file://set-OCF_ROOT_DIR-to-libdir-ocf.patch \
-           file://0007-Make-the-testing-infrastructure-optional.patch \
+SRC_URI =3D "git://github.com/ClusterLabs/${BPN}.git \
+           file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.=
patch \
+           file://0001-Fix-python3-usage.patch \
            file://volatiles \
            file://tmpfiles \
           "

+CFLAGS +=3D "-I${STAGING_INCDIR}/heartbeat"
+CPPFLAGS +=3D"-I${STAGING_INCDIR}/heartbeat"
 SRC_URI_append_libc-musl =3D "file://0001-pacemaker-fix-compile-error-of-m=
usl-libc.patch"

-SRCREV =3D "f14e36fd4336874705b34266c7cddbe12119106c"
+SRCREV =3D "4b1f869f0f64ef0d248b6aa4781d38ecccf83318"

-inherit autotools-brokensep pkgconfig systemd python3-dir useradd
+inherit autotools-brokensep pkgconfig systemd python3native python3-dir us=
eradd

 S =3D "${WORKDIR}/git"

@@ -48,7 +44,11 @@ EXTRA_OECONF +=3D "STAGING_INCDIR=3D${STAGING_INCDIR} \
                  --without-heartbeat \
                  --disable-pretty \
                  --disable-tests \
-                "
+                 "
+
+CACHED_CONFIGUREVARS +=3D " \
+    ac_cv_path_BASH_PATH=3D/bin/bash \
+"

 do_install_append() {
     install -d ${D}${sysconfdir}/default
@@ -92,7 +92,7 @@ FILES_${PN} +=3D " ${datadir}/snmp                       =
      \
                  ${libdir}/corosync/lcrso/pacemaker.lcrso    \
                  ${libdir}/${PYTHON_DIR}/dist-packages/cts/  \
                  ${libdir}/ocf/resource.d/ \
-                 ${libdir}/${PYTHON_DIR}/site-packages \
+                 ${libdir}/${PYTHON_DIR}/site-packages/cts/ \
                "
 FILES_${PN}-dbg +=3D "${libdir}/corosync/lcrso/.debug"
 RDEPENDS_${PN} =3D "bash python3-core perl libqb ${PN}-cli-utils"
--
2.13.3


--_000_DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0DM6PR11MB3498namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<font size=3D"2"><span style=3D"font-size:11pt"><a href=3D"file://0001-Fix-=
python3-usage.patch" target=3D"_blank" rel=3D"noopener noreferrer">file://0=
001-Fix-python3-usage.patch</a></span></font> is missing, causing do_fetch =
failure.</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Regards,</div>
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Chen Qi<br>
</div>
<div id=3D"appendonsend"></div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> yocto@lists.yoctoproj=
ect.org &lt;yocto@lists.yoctoproject.org&gt; on behalf of Jeremy Puhlman &l=
t;jpuhlman@mvista.com&gt;<br>
<b>Sent:</b> Thursday, March 19, 2020 9:53<br>
<b>To:</b> yocto@yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Cc:</b> Jeremy A. Puhlman &lt;jpuhlman@mvista.com&gt;<br>
<b>Subject:</b> [yocto] [meta-cgl][PATCH 17/20] pacemaker: Update to 2.0.3<=
/font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Drop unneeded patches moving some in to metadata.<=
br>
Fix up for building 2.0.3<br>
<br>
Signed-off-by: Jeremy A. Puhlman &lt;jpuhlman@mvista.com&gt;<br>
---<br>
&nbsp;.../pacemaker/0001-pacemaker-fix-xml-config.patch&nbsp; |&nbsp; 52 --=
------<br>
&nbsp;...earch-header-from-STAGING_INCDIR-to-walka.patch |&nbsp; 37 ------<=
br>
&nbsp;.../0003-pacemaker-fix-header-defs-lookup.patch&nbsp;&nbsp;&nbsp; |&n=
bsp; 27 ----<br>
&nbsp;.../0004-pacemaker-do-not-build-help.patch&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; |&nbsp; 27 ----<br>
&nbsp;...o-not-execute-target-program-while-cross-.patch |&nbsp; 44 -------=
<br>
&nbsp;...-Fix-definition-of-curses_indented_printf.patch |&nbsp; 30 &#43;&#=
43;&#43;&#43;&#43;<br>
&nbsp;...006-pacemaker-do-not-use-libgnutls-config.patch |&nbsp; 35 ------<=
br>
&nbsp;...-Make-the-testing-infrastructure-optional.patch | 137 ------------=
---------<br>
&nbsp;.../pacemaker/set-OCF_ROOT_DIR-to-libdir-ocf.patch |&nbsp; 28 -----<b=
r>
&nbsp;.../{pacemaker_1.1.21.bb =3D&gt; pacemaker_2.0.3.bb}&nbsp;&nbsp;&nbsp=
; |&nbsp; 26 &#43;&#43;--<br>
&nbsp;10 files changed, 43 insertions(&#43;), 400 deletions(-)<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
01-pacemaker-fix-xml-config.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
02-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
03-pacemaker-fix-header-defs-lookup.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
04-pacemaker-do-not-build-help.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
05-pacemaker-do-not-execute-target-program-while-cross-.patch<br>
&nbsp;create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
06-Fix-tools-Fix-definition-of-curses_indented_printf.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
06-pacemaker-do-not-use-libgnutls-config.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/00=
07-Make-the-testing-infrastructure-optional.patch<br>
&nbsp;delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/se=
t-OCF_ROOT_DIR-to-libdir-ocf.patch<br>
&nbsp;rename meta-cgl-common/recipes-cgl/pacemaker/{pacemaker_1.1.21.bb =3D=
&gt; pacemaker_2.0.3.bb} (82%)<br>
<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker=
-fix-xml-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/000=
1-pacemaker-fix-xml-config.patch<br>
deleted file mode 100644<br>
index 72c3a1e..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-pacemaker-fix-xm=
l-config.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,52 &#43;0,0 @@<br>
-From ac1ff1d538d2be205fbcc9676c6497a1395b71d8 Mon Sep 17 00:00:00 2001<br>
-From: Changqing Li &lt;changqing.li@windriver.com&gt;<br>
-Date: Fri, 10 Aug 2018 14:59:33 &#43;0800<br>
-Subject: [PATCH] pacemaker: fix xml config<br>
-<br>
-Signed-off-by: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-<br>
-update to version 1.1.19<br>
-Signed-off-by: Changqing Li &lt;changqing.li@windriver.com&gt;<br>
----<br>
- configure.ac | 17 &#43;&#43;&#43;&#43;&#43;&#43;-----------<br>
- 1 file changed, 6 insertions(&#43;), 11 deletions(-)<br>
-<br>
-diff --git a/configure.ac b/configure.ac<br>
-index 3bf1914..345caeb 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -555,7 &#43;555,6 @@ AC_PATH_PROGS(TAR, tar)<br>
- AC_PATH_PROGS(MD5, md5)<br>
- AC_PATH_PROGS(TEST, test)<br>
- PKG_PROG_PKG_CONFIG<br>
--AC_PATH_PROGS(XML2CONFIG, xml2-config)<br>
- AC_PATH_PROGS(VALGRIND_BIN, valgrind, /usr/bin/valgrind)<br>
- AC_DEFINE_UNQUOTED(VALGRIND_BIN, &quot;$VALGRIND_BIN&quot;, Valgrind comm=
and)<br>
- <br>
-@@ -805,17 &#43;804,13 @@ dnl AC_CHECK_HEADERS(netinet/icmp6.h)<br>
- dnl AC_CHECK_HEADERS(netinet/ip6.h)<br>
- dnl AC_CHECK_HEADERS(netinet/ip_icmp.h)<br>
- <br>
--AC_MSG_CHECKING(for special libxml2 includes)<br>
--if test &quot;x$XML2CONFIG&quot; =3D &quot;x&quot;; then<br>
--&nbsp;&nbsp; AC_MSG_ERROR(libxml2 config not found)<br>
--else<br>
--&nbsp;&nbsp; XML2HEAD=3D&quot;`$XML2CONFIG --cflags`&quot;<br>
--&nbsp;&nbsp; AC_MSG_RESULT($XML2HEAD)<br>
--&nbsp;&nbsp; AC_CHECK_LIB(xml2, xmlReadMemory)<br>
--&nbsp;&nbsp; AC_CHECK_LIB(xslt, xsltApplyStylesheet)<br>
--fi<br>
-&#43;PKG_CHECK_MODULES([XML], [libxml-2.0])<br>
-&#43;PKG_CHECK_MODULES([XSLT], [libxslt])<br>
-&#43;<br>
-&#43;AC_CHECK_LIB(xml2, xmlReadMemory)<br>
-&#43;AC_CHECK_LIB(xslt, xsltApplyStylesheet)<br>
- <br>
--CPPFLAGS=3D&quot;$CPPFLAGS $XML2HEAD&quot;<br>
-&#43;CPPFLAGS=3D&quot;$CPPFLAGS $XML_CFLAGS&quot;<br>
- <br>
- AC_CHECK_HEADERS(libxml/xpath.h)<br>
- AC_CHECK_HEADERS(libxslt/xslt.h)<br>
--- <br>
-2.7.4<br>
-<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker=
-search-header-from-STAGING_INCDIR-to-walka.patch b/meta-cgl-common/recipes=
-cgl/pacemaker/pacemaker/0002-pacemaker-search-header-from-STAGING_INCDIR-t=
o-walka.patch<br>
deleted file mode 100644<br>
index 83940d1..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-pacemaker-search=
-header-from-STAGING_INCDIR-to-walka.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,37 &#43;0,0 @@<br>
-From 844ec301031b0e6a3000c793906ba476f08a1e65 Mon Sep 17 00:00:00 2001<br>
-From: Li xin &lt;lixin.fnst@cn.fujitsu.com&gt;<br>
-Date: Wed, 27 Dec 2017 05:20:45 &#43;0000<br>
-Subject: [PATCH] pacemaker: search header from STAGING_INCDIR to walkaroun=
d<br>
- error<br>
-<br>
-** -I/usr/include/ is unsafe for cross-compilation<br>
-<br>
- ... ...<br>
-<br>
- ** This autoconf log indicates errors, it looked at host include and/or l=
ibrary paths<br>
- ** while determining system capabilities<br>
-<br>
-Upstream-Status: pending<br>
-<br>
-Signed-off-by: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-Signed-off-by: Li Xin &lt;lixin.fnst@cn.fujitsu.com&gt;<br>
-Signed-off-by: Mingli Yu &lt;Mingli.Yu@windriver.com&gt;<br>
-<br>
----<br>
- configure.ac | 3 &#43;&#43;&#43;<br>
- 1 file changed, 3 insertions(&#43;)<br>
-<br>
-diff --git a/configure.ac b/configure.ac<br>
-index 5e420f2..5d442a5 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -484,6 &#43;484,9 @@ esac<br>
- dnl Eventually remove this<br>
- if test &quot;$cross_compiling&quot; !=3D &quot;yes&quot;; then<br>
-&nbsp;&nbsp;&nbsp; CPPFLAGS=3D&quot;$CPPFLAGS -I${prefix}/include/heartbea=
t&quot;<br>
-&#43;else<br>
-&#43;&nbsp;&nbsp; CFLAGS=3D&quot;$CFLAGS -I${STAGING_INCDIR}/heartbeat&quo=
t;<br>
-&#43;&nbsp;&nbsp; CPPFLAGS=3D&quot;$CPPFLAGS -I${STAGING_INCDIR}/heartbeat=
&quot;<br>
- fi<br>
- <br>
- AC_SUBST(INIT_EXT)<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker=
-fix-header-defs-lookup.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacem=
aker/0003-pacemaker-fix-header-defs-lookup.patch<br>
deleted file mode 100644<br>
index 6dc4663..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0003-pacemaker-fix-he=
ader-defs-lookup.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,27 &#43;0,0 @@<br>
-From 9236fa746d43adb098c2946e72e8b29ffbc78865 Mon Sep 17 00:00:00 2001<br>
-From: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-Date: Fri, 3 Jul 2015 16:30:25 &#43;0900<br>
-Subject: [PATCH] pacemaker: fix header defs lookup<br>
-<br>
-Signed-off-by: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-<br>
----<br>
- configure.ac | 5 &#43;&#43;---<br>
- 1 file changed, 2 insertions(&#43;), 3 deletions(-)<br>
-<br>
-diff --git a/configure.ac b/configure.ac<br>
-index 5d442a5..1429b01 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -147,9 &#43;147,8 @@ extract_header_define() {<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cfile=3D$srcdir/ext=
ract_define.$2.${$}<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf &quot;#inclu=
de &lt;stdio.h&gt;\n&quot; &gt; ${Cfile}.c<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf &quot;#inclu=
de &lt;%s&gt;\n&quot; $1 &gt;&gt; ${Cfile}.c<br>
--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf &quot;int main(int argc=
, char **argv) { printf(\&quot;%%s\&quot;, %s); return 0; }\n&quot; $2 &gt;=
&gt; ${Cfile}.c<br>
--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $CC $CFLAGS ${Cfile}.c -o ${Cf=
ile}<br>
--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; value=3D`${Cfile}`<br>
-&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf &quot;\&quot;%s\&qu=
ot;:%s\n&quot; $2 $2 &gt;&gt; ${Cfile}.c<br>
-&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; value=3D`$CC $CFLAGS -E ${=
Cfile}.c | grep \&quot;$2\&quot; | cut -f 2 -d ':' | sed 's,^&quot;,,' | se=
d 's,&quot;$,,'`<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AC_MSG_RESULT($valu=
e)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; printf $value<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; rm -rf ${Cfile}.c $=
{Cfile} ${Cfile}.dSYM ${Cfile}.gcno<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker=
-do-not-build-help.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/=
0004-pacemaker-do-not-build-help.patch<br>
deleted file mode 100644<br>
index 4234fe5..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0004-pacemaker-do-not=
-build-help.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,27 &#43;0,0 @@<br>
-From cda171512fc8dc0aa385290e1f7644ff222e5f18 Mon Sep 17 00:00:00 2001<br>
-From: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-Date: Fri, 3 Jul 2015 17:27:52 &#43;0900<br>
-Subject: [PATCH] pacemaker: do not build help<br>
-<br>
-Signed-off-by: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-<br>
----<br>
- configure.ac | 5 &#43;----<br>
- 1 file changed, 1 insertion(&#43;), 4 deletions(-)<br>
-<br>
-diff --git a/configure.ac b/configure.ac<br>
-index 1429b01..e930e33 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -574,10 &#43;574,7 @@ if test x&quot;${MAKE}&quot; =3D x&quot;&quot;; t=
hen<br>
-&nbsp;&nbsp;&nbsp; AC_MSG_ERROR(You need (g)make installed in order to bui=
ld ${PACKAGE})<br>
- fi<br>
- <br>
--AM_CONDITIONAL(BUILD_HELP, test x&quot;${HELP2MAN}&quot; !=3D x&quot;&quo=
t;)<br>
--if test x&quot;${HELP2MAN}&quot; !=3D x&quot;&quot;; then<br>
--&nbsp;&nbsp; PCMK_FEATURES=3D&quot;$PCMK_FEATURES generated-manpages&quot=
;<br>
--fi<br>
-&#43;AM_CONDITIONAL(BUILD_HELP, test x&quot;Do not build help&quot; =3D x&=
quot;&quot;)<br>
- <br>
- MANPAGE_XSLT=3D&quot;&quot;<br>
- if test x&quot;${XSLTPROC}&quot; !=3D x&quot;&quot;; then<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker=
-do-not-execute-target-program-while-cross-.patch b/meta-cgl-common/recipes=
-cgl/pacemaker/pacemaker/0005-pacemaker-do-not-execute-target-program-while=
-cross-.patch<br>
deleted file mode 100644<br>
index b600fec..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0005-pacemaker-do-not=
-execute-target-program-while-cross-.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,44 &#43;0,0 @@<br>
-From 6d59090df5856d32163f256912ddf1c897590447 Mon Sep 17 00:00:00 2001<br>
-From: Changqing Li &lt;changqing.li@windriver.com&gt;<br>
-Date: Wed, 21 Aug 2019 13:12:13 &#43;0800<br>
-Subject: [PATCH] pacemaker: do not execute target program while cross comp=
ile<br>
-<br>
-Signed-off-by: Bian Naimeng &lt;biannm@cn.fujitsu.com&gt;<br>
-<br>
-refresh patch to new version 1.1.21<br>
-Signed-off-by: Changqing Li &lt;changqing.li@windriver.com&gt;<br>
----<br>
- Makefile.common | 8 &#43;&#43;&#43;&#43;&#43;---<br>
- 1 file changed, 5 insertions(&#43;), 3 deletions(-)<br>
-<br>
-diff --git a/Makefile.common b/Makefile.common<br>
-index 469417f..9f19a53 100644<br>
---- a/Makefile.common<br>
-&#43;&#43;&#43; b/Makefile.common<br>
-@@ -36,18 &#43;36,20 @@ if BUILD_HELP<br>
- man8_MANS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D $(sbin_PROGRAMS:%=3D%.8) $(sbin_SCRIPTS:%=3D%.8)<br>
- endif<br>
- <br>
-&#43;&#43;man7_MANS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D<br>
-&#43;<br>
- %.8:&nbsp; % $(MAN8DEPS)<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; chmod a&#43;x $(abs_builddir)/$=
&lt;<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(AM_V_MAN)PATH=3D$(abs_builddi=
r):$$PATH $(HELP2MAN) --output $@ --no-info --section 8 --name &quot;Part o=
f the Pacemaker cluster resource manager&quot; $(abs_builddir)/$&lt;<br>
- <br>
- %.xml:&nbsp; %<br>
--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(AM_V_GEN)$(abs_builddir)/$&lt; metadata =
&gt; $@<br>
-&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; @echo &quot;xml for $&lt;:=
 Do not try to execute target program here&quot;<br>
- <br>
- %.dbook: %.xml<br>
--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(AM_V_XSL)$(XSLTPROC) --nonet --novalid -=
-stringparam man.name $* $(DBOOK_OPTS) $(top_srcdir)/xml/ocf-meta2man.xsl $=
(abs_builddir)/$&lt; &gt; $(abs_builddir)/$@<br>
-&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; @echo &quot;dbook for $&lt=
;: Do not try to execute target program here&quot;<br>
- <br>
- %.7:&nbsp; %.dbook<br>
--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $(AM_V_XSL)$(XSLTPROC) $(MANPAGE_XSLT) $(a=
bs_builddir)/$&lt; $(PCMK_quiet)<br>
-&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; @echo &quot;man7 for $&lt;=
: Do not try to execute target program here&quot;<br>
- <br>
- # Build docbook from asciidoc because XML is a PITA to edit<br>
- #<br>
--- <br>
-2.7.4<br>
-<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-tools=
-Fix-definition-of-curses_indented_printf.patch b/meta-cgl-common/recipes-c=
gl/pacemaker/pacemaker/0006-Fix-tools-Fix-definition-of-curses_indented_pri=
ntf.patch<br>
new file mode 100644<br>
index 0000000..f5e1829<br>
--- /dev/null<br>
&#43;&#43;&#43; b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-Fix-=
tools-Fix-definition-of-curses_indented_printf.patch<br>
@@ -0,0 &#43;1,30 @@<br>
&#43;From 426f06cc088d11d6db0c45b434e5ce6b69da78b4 Mon Sep 17 00:00:00 2001=
<br>
&#43;From: Chris Lumens &lt;clumens@redhat.com&gt;<br>
&#43;Date: Thu, 2 Jan 2020 15:08:58 -0500<br>
&#43;Subject: [PATCH 006/207] Fix: tools: Fix definition of curses_indented=
_printf.<br>
&#43;<br>
&#43;The placeholder version that is built if curses is not enabled does no=
t<br>
&#43;have a type that matches the header file.&nbsp; Correct that.<br>
&#43;<br>
&#43;Signed-off-by: Jeremy A. Puhlman &lt;jpuhlman@mvista.com&gt;<br>
&#43;Upstream-Status: Backport[git]<br>
&#43;---<br>
&#43; tools/crm_mon_curses.c | 2 &#43;-<br>
&#43; 1 file changed, 1 insertion(&#43;), 1 deletion(-)<br>
&#43;<br>
&#43;diff --git a/tools/crm_mon_curses.c b/tools/crm_mon_curses.c<br>
&#43;index c0dbedbf0..ecd0584fe 100644<br>
&#43;--- a/tools/crm_mon_curses.c<br>
&#43;&#43;&#43;&#43; b/tools/crm_mon_curses.c<br>
&#43;@@ -368,7 &#43;368,7 @@ curses_indented_vprintf(pcmk__output_t *out, c=
onst char *format, va_list args) {<br>
&#43; <br>
&#43; G_GNUC_PRINTF(2, 3)<br>
&#43; void<br>
&#43;-curses_indented_printf(pcmk__output_t *out, const char *format, va_li=
st args) {<br>
&#43;&#43;curses_indented_printf(pcmk__output_t *out, const char *format, .=
..) {<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp; return;<br>
&#43; }<br>
&#43; <br>
&#43;-- <br>
&#43;2.23.0<br>
&#43;<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker=
-do-not-use-libgnutls-config.patch b/meta-cgl-common/recipes-cgl/pacemaker/=
pacemaker/0006-pacemaker-do-not-use-libgnutls-config.patch<br>
deleted file mode 100644<br>
index c1ffc86..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0006-pacemaker-do-not=
-use-libgnutls-config.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,35 &#43;0,0 @@<br>
-From 5148e0a7e3cd4293416b969f2c563faa6aca27b2 Mon Sep 17 00:00:00 2001<br>
-From: Joe Slater &lt;jslater@windriver.com&gt;<br>
-Date: Mon, 11 Mar 2013 15:47:54 -0700<br>
-Subject: [PATCH] pacemaker: do not use libgnutls-config<br>
-<br>
-Do not try to use libgnutls-config when configuring.<br>
-It has been deprecated and we do not supply it.&nbsp; If a<br>
-host version is found, bad things can happen.<br>
-<br>
-Upstream-Status: Inappropriate [OE specific]<br>
-<br>
-Signed-off-by: Joe Slater &lt;jslater@windriver.com&gt;<br>
-Signed-off-by: Jackie Huang &lt;jackie.huang@windriver.com&gt;<br>
-<br>
----<br>
- configure.ac | 6 &#43;&#43;&#43;---<br>
- 1 file changed, 3 insertions(&#43;), 3 deletions(-)<br>
-<br>
-diff --git a/configure.ac b/configure.ac<br>
-index e930e33..2eade3c 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -1707,9 &#43;1707,9 @@ dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D<br>
- AC_CHECK_HEADERS(gnutls/gnutls.h)<br>
- AC_CHECK_HEADERS(security/pam_appl.h pam/pam_appl.h)<br>
- <br>
--dnl GNUTLS library: Attempt to determine by 'libgnutls-config' program.<b=
r>
--dnl If no 'libgnutls-config', try traditional autoconf means.<br>
--AC_PATH_PROGS(LIBGNUTLS_CONFIG, libgnutls-config)<br>
-&#43;dnl libgnutls-config has been deprecated, so we use pkg-config<br>
-&#43;<br>
-&#43;LIBGNUTLS_CONFIG=3D&quot;pkg-config gnutls&quot;<br>
- <br>
- if test -n &quot;$LIBGNUTLS_CONFIG&quot;; then<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AC_MSG_CHECKING(for gnutls head=
er flags)<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-=
testing-infrastructure-optional.patch b/meta-cgl-common/recipes-cgl/pacemak=
er/pacemaker/0007-Make-the-testing-infrastructure-optional.patch<br>
deleted file mode 100644<br>
index 3417aae..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0007-Make-the-testing=
-infrastructure-optional.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,137 &#43;0,0 @@<br>
-From 8a7c861e746ef13a2ffe74388891d7ea5709614b Mon Sep 17 00:00:00 2001<br>
-From: =3D?UTF-8?q?Ferenc=3D20W=3DC3=3DA1gner?=3D &lt;wferi@debian.org&gt;<=
br>
-Date: Thu, 29 Sep 2016 10:47:49 &#43;0200<br>
-Subject: [PATCH] Make the testing infrastructure optional<br>
-MIME-Version: 1.0<br>
-Content-Type: text/plain; charset=3DUTF-8<br>
-Content-Transfer-Encoding: 8bit<br>
-<br>
-Upstream does not want this option, unfortunately.<br>
-https://github.com/ClusterLabs/pacemaker/pull/1149<br>
-<br>
-Signed-off-by: Ferenc W=C3=A1gner &lt;wferi@debian.org&gt;<br>
-<br>
-It does not install test case by default<br>
-Backport the patch from ubuntu<br>
-http://archive.ubuntu.com/ubuntu/pool/main/p/pacemaker/pacemaker_1.1.18-0u=
buntu1.debian.tar.xz<br>
-Upstream-Status: Deny [<a href=3D"https://github.com/ClusterLabs/pacemaker=
/pull/1149">https://github.com/ClusterLabs/pacemaker/pull/1149</a>]<br>
-<br>
-Signed-off-by: Hongxu Jia &lt;hongxu.jia@windriver.com&gt;<br>
----<br>
- Makefile.am&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 2 &#43;&#43=
;<br>
- configure.ac&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; | 5 &#43;&#43;&#43=
;&#43;&#43;<br>
- fencing/Makefile.am | 2 &#43;&#43;<br>
- lrmd/Makefile.am&nbsp;&nbsp;&nbsp; | 2 &#43;&#43;<br>
- pengine/Makefile.am | 2 &#43;&#43;<br>
- tools/Makefile.am&nbsp;&nbsp; | 2 &#43;&#43;<br>
- 6 files changed, 15 insertions(&#43;)<br>
-<br>
-diff --git a/Makefile.am b/Makefile.am<br>
-index 874f6ed..9ce8b12 100644<br>
---- a/Makefile.am<br>
-&#43;&#43;&#43; b/Makefile.am<br>
-@@ -35,6 &#43;35,7 @@ ACLOCAL_AMFLAGS&nbsp; =3D -I m4<br>
- licensedir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; =3D $(docdir)/licenses/<br>
- license_DATA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp; =3D $(wildcard licenses/*)<br>
- <br>
-&#43;if ENABLE_TESTS<br>
- # Test components<br>
- SUBDIRS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;=3D cts<br>
- <br>
-@@ -46,6 &#43;47,7 @@ test_DATA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D valgrind-pcmk.suppressions<br>
- noinst_PROGRAMS =3D scratch<br>
- nodist_scratch_SOURCES&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D scra=
tch.c<br>
- scratch_LDADD =3D $(top_builddir)/lib/common/libcrmcommon.la -lm<br>
-&#43;endif<br>
- <br>
- scratch.c:<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo 'int main(void){}' &gt;$@<=
br>
-diff --git a/configure.ac b/configure.ac<br>
-index b87e61b..a0cf3e2 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -330,6 &#43;330,11 @@ AC_ARG_WITH(configdir,<br>
-&nbsp;&nbsp;&nbsp;&nbsp; [ CONFIGDIR=3D&quot;$withval&quot; ]<br>
- )<br>
- <br>
-&#43;AC_ARG_ENABLE([tests],<br>
-&#43;&nbsp;&nbsp;&nbsp; [AS_HELP_STRING([--disable-tests],[don't build and=
 install the testing components])],,<br>
-&#43;&nbsp;&nbsp;&nbsp; [enable_tests=3Dyes])<br>
-&#43;AM_CONDITIONAL([ENABLE_TESTS],[test &quot;x$enable_tests&quot; !=3D x=
no])<br>
-&#43;<br>
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>
- dnl General Processing<br>
- dnl =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br=
>
-diff --git a/fencing/Makefile.am b/fencing/Makefile.am<br>
-index 3bb628f..8c06502 100644<br>
---- a/fencing/Makefile.am<br>
-&#43;&#43;&#43; b/fencing/Makefile.am<br>
-@@ -18,8 &#43;18,10 @@<br>
- include $(top_srcdir)/Makefile.common<br>
- <br>
- ## binary progs<br>
-&#43;if ENABLE_TESTS<br>
- testdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(da=
tadir)/$(PACKAGE)/tests/fencing<br>
- test_SCRIPTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D re=
gression.py<br>
-&#43;endif<br>
- <br>
- halibdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(CRM_DAEMON_DIR)<br>
- halib_PROGRAMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D stonithd sto=
nith-test<br>
-diff --git a/lrmd/Makefile.am b/lrmd/Makefile.am<br>
-index 33611cb..ad6b88d 100644<br>
---- a/lrmd/Makefile.am<br>
-&#43;&#43;&#43; b/lrmd/Makefile.am<br>
-@@ -19,11 &#43;19,13 @@ include $(top_srcdir)/Makefile.common<br>
- lrmdlibdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp; =3D $(CRM_DAEMON_DIR)<br>
- lrmdlib_PROGRAMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D lrmd lrmd_internal_ctl=
<br>
- <br>
-&#43;if ENABLE_TESTS<br>
- # Test components<br>
- lrmdlib_PROGRAMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#43;=3D lrmd_test<br>
- <br>
- testdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(da=
tadir)/$(PACKAGE)/tests/lrmd<br>
- test_SCRIPTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D re=
gression.py<br>
-&#43;endif<br>
- <br>
- initdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(IN=
ITDIR)<br>
- init_SCRIPTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D pa=
cemaker_remote<br>
-diff --git a/pengine/Makefile.am b/pengine/Makefile.am<br>
-index 861946c..3faae3a 100644<br>
---- a/pengine/Makefile.am<br>
-&#43;&#43;&#43; b/pengine/Makefile.am<br>
-@@ -21,6 &#43;21,7 @@ AM_CPPFLAGS&nbsp; &#43;=3D -I$(top_builddir) -I$(top=
_srcdir)<br>
- <br>
- halibdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(CRM_DAEMON_DIR)<br>
- <br>
-&#43;if ENABLE_TESTS<br>
- PE_TESTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(wildcard test10/*.scores)<br=
>
- <br>
- testdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(da=
tadir)/$(PACKAGE)/tests/pengine<br>
-@@ -29,6 &#43;30,7 @@ test_DATA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp; =3D regression.core.sh<br>
- <br>
- test10dir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D $(datadir)/$(PACKAGE)/tests/pengine/test10<br>
- test10_DATA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D $(PE_TESTS) $(PE_TESTS:%.scores=3D%.xml) $(PE_TESTS:%.scores=3D%.exp) $=
(PE_TESTS:%.scores=3D%.dot) $(PE_TESTS:%.scores=3D%.summary) $(wildcard tes=
t10/*.stderr)<br>
-&#43;endif<br>
- <br>
- beekhof:<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; echo $(shell ls -1 test10/*.xml=
)<br>
-diff --git a/tools/Makefile.am b/tools/Makefile.am<br>
-index 3548035..826396d 100644<br>
---- a/tools/Makefile.am<br>
-&#43;&#43;&#43; b/tools/Makefile.am<br>
-@@ -40,10 &#43;40,12 @@ EXTRA_DIST&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; =3D $(sbin_SCRIPTS)<br>
- sbin_PROGRAMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D crm_sim=
ulate crmadmin cibadmin crm_node crm_attribute crm_resource crm_verify \<br=
>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; crm_=
shadow attrd_updater crm_diff crm_mon iso8601 crm_ticket crm_error<br>
- <br>
-&#43;if ENABLE_TESTS<br>
- testdir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D $(da=
tadir)/$(PACKAGE)/tests/cli<br>
- test_SCRIPTS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D re=
gression.sh<br>
- test_DATA&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp; =3D regression.dates.exp regression.tools.exp regressi=
on.acls.exp \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
; regression.validity.exp<br>
-&#43;endif<br>
- <br>
- if BUILD_HEARTBEAT_SUPPORT<br>
- sbin_PROGRAMS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
 &#43;=3D crm_uuid<br>
--- <br>
-2.7.4<br>
-<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_D=
IR-to-libdir-ocf.patch b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/se=
t-OCF_ROOT_DIR-to-libdir-ocf.patch<br>
deleted file mode 100644<br>
index 98c3475..0000000<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker/set-OCF_ROOT_DIR-to-l=
ibdir-ocf.patch<br>
&#43;&#43;&#43; /dev/null<br>
@@ -1,28 &#43;0,0 @@<br>
-From 588800f0e2fe52a677a19b7c59636e9f391a6e75 Mon Sep 17 00:00:00 2001<br>
-From: Mingli Yu &lt;Mingli.Yu@windriver.com&gt;<br>
-Date: Wed, 27 Dec 2017 07:14:21 &#43;0000<br>
-Subject: [PATCH] pacemaker: set OCF_ROOT_DIR to $libdir/ocf<br>
-<br>
-* Set the default OCF_ROOT_DIR to $libdir/ocf<br>
-&nbsp; to make the resource agents components more<br>
-&nbsp; compatible<br>
-<br>
-Signed-off-by: Mingli Yu &lt;Mingli.Yu@windriver.com&gt;<br>
-<br>
----<br>
- configure.ac | 2 &#43;-<br>
- 1 file changed, 1 insertion(&#43;), 1 deletion(-)<br>
-<br>
-diff --git a/configure.ac b/configure.ac<br>
-index 2eade3c..ba290cc 100644<br>
---- a/configure.ac<br>
-&#43;&#43;&#43; b/configure.ac<br>
-@@ -1152,7 &#43;1152,7 @@ AC_SUBST(HA_VARLIBHBDIR)<br>
- <br>
- AC_DEFINE_UNQUOTED(UUID_FILE,&quot;$localstatedir/lib/heartbeat/hb_uuid&q=
uot;, Location of Heartbeat's UUID file)<br>
- <br>
--OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR /usr/=
lib/ocf`<br>
-&#43;OCF_ROOT_DIR=3D`try_extract_header_define $GLUE_HEADER OCF_ROOT_DIR $=
libdir/ocf`<br>
- if test &quot;X$OCF_ROOT_DIR&quot; =3D X; then<br>
-&nbsp;&nbsp; AC_MSG_ERROR(Could not locate OCF directory)<br>
- fi<br>
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb b/me=
ta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb<br>
similarity index 82%<br>
rename from meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb<br>
rename to meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb<br>
index 3a8db77..9b63acd 100644<br>
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb<br>
&#43;&#43;&#43; b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.3.bb<=
br>
@@ -13,24 &#43;13,20 @@ LIC_FILES_CHKSUM =3D &quot;<a href=3D"file://COPYIN=
G;md5=3D000212f361a81b100d9d0f0435040663">file://COPYING;md5=3D000212f361a8=
1b100d9d0f0435040663</a>&quot;<br>
&nbsp;<br>
&nbsp;DEPENDS =3D &quot;corosync libxslt libxml2 gnutls resource-agents lib=
qb python3-native&quot;<br>
&nbsp;<br>
-SRC_URI =3D &quot;git://github.com/ClusterLabs/${BPN}.git;branch=3D1.1 \<b=
r>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0001-pacemaker-fix-xml-config.patch">file://0001-pacemaker-fix-xml-con=
fig.patch</a> \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch">
file://0002-pacemaker-search-header-from-STAGING_INCDIR-to-walka.patch</a> =
\<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0003-pacemaker-fix-header-defs-lookup.patch">file://0003-pacemaker-fix=
-header-defs-lookup.patch</a> \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0004-pacemaker-do-not-build-help.patch">file://0004-pacemaker-do-not-b=
uild-help.patch</a> \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0005-pacemaker-do-not-execute-target-program-while-cross-.patch">
file://0005-pacemaker-do-not-execute-target-program-while-cross-.patch</a> =
\<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0006-pacemaker-do-not-use-libgnutls-config.patch">file://0006-pacemake=
r-do-not-use-libgnutls-config.patch</a> \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://set-OCF_ROOT_DIR-to-libdir-ocf.patch">file://set-OCF_ROOT_DIR-to-libdi=
r-ocf.patch</a> \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=3D"fi=
le://0007-Make-the-testing-infrastructure-optional.patch">
file://0007-Make-the-testing-infrastructure-optional.patch</a> \<br>
&#43;SRC_URI =3D &quot;git://github.com/ClusterLabs/${BPN}.git \<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=
=3D"file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch">
file://0006-Fix-tools-Fix-definition-of-curses_indented_printf.patch</a> \<=
br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=
=3D"file://0001-Fix-python3-usage.patch">file://0001-Fix-python3-usage.patc=
h</a> \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=
=3D"file://volatiles">file://volatiles</a> \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=
=3D"file://tmpfiles">file://tmpfiles</a> \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
&nbsp;<br>
&#43;CFLAGS &#43;=3D &quot;-I${STAGING_INCDIR}/heartbeat&quot;<br>
&#43;CPPFLAGS &#43;=3D&quot;-I${STAGING_INCDIR}/heartbeat&quot;<br>
&nbsp;SRC_URI_append_libc-musl =3D &quot;<a href=3D"file://0001-pacemaker-f=
ix-compile-error-of-musl-libc.patch">file://0001-pacemaker-fix-compile-erro=
r-of-musl-libc.patch</a>&quot;<br>
&nbsp;<br>
-SRCREV =3D &quot;f14e36fd4336874705b34266c7cddbe12119106c&quot;<br>
&#43;SRCREV =3D &quot;4b1f869f0f64ef0d248b6aa4781d38ecccf83318&quot;<br>
&nbsp;<br>
-inherit autotools-brokensep pkgconfig systemd python3-dir useradd<br>
&#43;inherit autotools-brokensep pkgconfig systemd python3native python3-di=
r useradd<br>
&nbsp;<br>
&nbsp;S =3D &quot;${WORKDIR}/git&quot;<br>
&nbsp;<br>
@@ -48,7 &#43;44,11 @@ EXTRA_OECONF &#43;=3D &quot;STAGING_INCDIR=3D${STAGI=
NG_INCDIR} \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; --without-heartbeat \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-pretty \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; --disable-tests \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp; &quot;<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; &quot;<br>
&#43;<br>
&#43;CACHED_CONFIGUREVARS &#43;=3D &quot; \<br>
&#43;&nbsp;&nbsp;&nbsp; ac_cv_path_BASH_PATH=3D/bin/bash \<br>
&#43;&quot;<br>
&nbsp;<br>
&nbsp;do_install_append() {<br>
&nbsp;&nbsp;&nbsp;&nbsp; install -d ${D}${sysconfdir}/default<br>
@@ -92,7 &#43;92,7 @@ FILES_${PN} &#43;=3D &quot; ${datadir}/snmp&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp; \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; ${libdir}/corosync/lcrso/pacemaker.lcrso&nbsp;&=
nbsp;&nbsp; \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; ${libdir}/${PYTHON_DIR}/dist-packages/cts/&nbsp=
; \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; ${libdir}/ocf/resource.d/ \<br>
-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp; ${libdir}/${PYTHON_DIR}/site-packages \<br>
&#43;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; ${libdir}/${PYTHON_DIR}/site-packages/cts/ \<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp; &quot;<br>
&nbsp;FILES_${PN}-dbg &#43;=3D &quot;${libdir}/corosync/lcrso/.debug&quot;<=
br>
&nbsp;RDEPENDS_${PN} =3D &quot;bash python3-core perl libqb ${PN}-cli-utils=
&quot;<br>
-- <br>
2.13.3<br>
<br>
</div>
</span></font></div>
</body>
</html>

--_000_DM6PR11MB3498C237FFDC053BF2AE52BDEDCE0DM6PR11MB3498namp_--
