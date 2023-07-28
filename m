Return-Path: <kai.kang@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA3BC001DE
	for <webhook@archiver.kernel.org>; Fri, 28 Jul 2023 06:30:25 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.26973.1690525820649385335
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 23:30:20 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@windriver.com header.s=PPS06212021 header.b=pqPHIrR0;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=657340abd6=kai.kang@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 36S5io9X002275
	for <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 06:30:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding; s=PPS06212021; bh=1rRg54tVsO5yVi6U5P
	/DGQBld4VSb+udDiyOhmAnEN4=; b=pqPHIrR0g2k6QPqiuyrKC9aJlI1MJRG8cl
	4lNaOYYC5EPl8hNkzh1Sqj37S8jvUQV5A60McUMl+NDK0aLbNcZ5kma8dMpfqlv7
	ZybECKDib7F7Cj4GqKsWhISNYoCI7hal+9fsMs0WGmSkaWY1II7w7goQE1X9KavF
	81wSWpj4jk5odz5f/5S/AUj23OdHJRDNgBaAaf+cnh7AD62V/4HBo86K5uoMAnV6
	iaypn/3LIowwUgi5lvzWbF4BvQm6OjhX6j9wKcZ3P0EwrWi0oV2nBwZyGDDi/OD6
	O26t9yMEB0pSY1q19KcgrQJbm6lg8TZ4oipeU3fS60sbl4ULuIrw==
Received: from ala-exchng01.corp.ad.wrs.com (ala-exchng01.wrs.com [147.11.82.252])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3s1a78va4r-7
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 06:30:19 +0000 (GMT)
Received: from ala-exchng01.corp.ad.wrs.com (147.11.82.252) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 27 Jul 2023 23:30:14 -0700
Received: from pek-lpg-core3.wrs.com (128.224.153.232) by
 ala-exchng01.corp.ad.wrs.com (147.11.82.252) with Microsoft SMTP Server id
 15.1.2507.27 via Frontend Transport; Thu, 27 Jul 2023 23:30:13 -0700
From: <kai.kang@windriver.com>
To: <yocto@lists.yoctoproject.org>
Subject: [meta-security][PATCH] sssd: 2.7.4 -> 2.9.1
Date: Fri, 28 Jul 2023 14:30:08 +0800
Message-ID: <20230728063008.3627195-1-kai.kang@windriver.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Proofpoint-ORIG-GUID: axUEyo_63mkDlamdzKBuPc2VpoYPfCGu
X-Proofpoint-GUID: axUEyo_63mkDlamdzKBuPc2VpoYPfCGu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-07-27_10,2023-07-26_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 malwarescore=0 clxscore=1011 priorityscore=1501
 phishscore=0 lowpriorityscore=0 bulkscore=0 impostorscore=0 spamscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2306200000
 definitions=main-2307280059
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by mx0a-0064b401.pphosted.com id 36S5io9X002275
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jul 2023 06:30:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60673

From: Kai Kang <kai.kang@windriver.com>

Update sssd from 2.7.4 to 2.9.1.

* backport patch to fix interpreter of script sss_analyze
* add runtime dependency python3-systemd when systemd is enabled
* update FILES

Signed-off-by: Kai Kang <kai.kang@windriver.com>
---
 .../0001-sssctl-add-error-analyzer.patch      | 318 ++++++++++++++++++
 .../sssd/{sssd_2.7.4.bb =3D> sssd_2.9.1.bb}     |   8 +-
 2 files changed, 323 insertions(+), 3 deletions(-)
 create mode 100644 dynamic-layers/networking-layer/recipes-security/sssd=
/files/0001-sssctl-add-error-analyzer.patch
 rename dynamic-layers/networking-layer/recipes-security/sssd/{sssd_2.7.4=
.bb =3D> sssd_2.9.1.bb} (96%)

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/files/=
0001-sssctl-add-error-analyzer.patch b/dynamic-layers/networking-layer/re=
cipes-security/sssd/files/0001-sssctl-add-error-analyzer.patch
new file mode 100644
index 0000000..6880405
--- /dev/null
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/files/0001-ss=
sctl-add-error-analyzer.patch
@@ -0,0 +1,318 @@
+Backport patch to fix interpreter of sss_analyze.
+
+Upstream-Status: Backport [https://github.com/SSSD/sssd/commit/ed3726c]
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
+From ed3726c37fe07aab788404bfa2f9003db15f4210 Mon Sep 17 00:00:00 2001
+From: roy214 <abroy@redhat.com>
+Date: Tue, 25 Apr 2023 20:01:24 +0530
+Subject: [PATCH] sssctl: add error analyzer
+MIME-Version: 1.0
+Content-Type: text/plain; charset=3DUTF-8
+Content-Transfer-Encoding: 8bit
+
+Also removing unused variable and import.
+
+Reviewed-by: Justin Stephenson <jstephen@redhat.com>
+Reviewed-by: Tom=C3=A1=C5=A1 Halman <thalman@redhat.com>
+---
+ src/tools/analyzer/Makefile.am        |  2 +
+ src/tools/analyzer/modules/error.py   | 61 +++++++++++++++++++++++++++
+ src/tools/analyzer/modules/request.py | 54 +++++-------------------
+ src/tools/analyzer/sss_analyze        |  2 +-
+ src/tools/analyzer/sss_analyze.py     |  3 ++
+ src/tools/analyzer/util.py            | 44 +++++++++++++++++++
+ 6 files changed, 121 insertions(+), 45 deletions(-)
+ create mode 100644 src/tools/analyzer/modules/error.py
+ create mode 100644 src/tools/analyzer/util.py
+
+diff --git a/src/tools/analyzer/Makefile.am b/src/tools/analyzer/Makefil=
e.am
+index b40043d043..7692af8528 100644
+--- a/src/tools/analyzer/Makefile.am
++++ b/src/tools/analyzer/Makefile.am
+@@ -13,10 +13,12 @@ dist_pkgpython_DATA =3D \
+     source_reader.py \
+     parser.py \
+     sss_analyze.py \
++    util.py \
+     $(NULL)
+=20
+ modulesdir =3D $(pkgpythondir)/modules
+ dist_modules_DATA =3D \
+     modules/__init__.py \
+     modules/request.py \
++    modules/error.py \
+     $(NULL)
+diff --git a/src/tools/analyzer/modules/error.py b/src/tools/analyzer/mo=
dules/error.py
+new file mode 100644
+index 0000000000..71173670c5
+--- /dev/null
++++ b/src/tools/analyzer/modules/error.py
+@@ -0,0 +1,61 @@
++from sssd import util
++from sssd.parser import SubparsersAction
++from sssd import sss_analyze
++
++class ErrorAnalyzer:
++    """
++    An error analyzer module, list if there is any error reported by ss=
sd_be
++    """
++    module_parser =3D None
++    print_opts =3D []
++
++    def print_module_help(self, args):
++        """
++        Print the module parser help output
++
++        Args:
++            args (Namespace): argparse parsed arguments
++        """
++        self.module_parser.print_help()
++
++    def setup_args(self, parser_grp, cli):
++        """
++        Setup module parser, subcommands, and options
++
++        Args:
++            parser_grp (argparse.Action): Parser group to nest
++               module and subcommands under
++        """
++        desc =3D "Analyze error check module"
++        self.module_parser =3D parser_grp.add_parser('error',
++                                                   description=3Ddesc,
++                                                   help=3D'Error checke=
r')
++
++        subparser =3D self.module_parser.add_subparsers(title=3DNone,
++                                                      dest=3D'subparser=
',
++                                                      action=3DSubparse=
rsAction,
++                                                      metavar=3D'COMMAN=
DS')
++
++        subcmd_grp =3D subparser.add_parser_group('Operation Modes')
++        cli.add_subcommand(subcmd_grp, 'list', 'Print error messages fo=
und in backend',
++                           self.print_error, self.print_opts)
++
++        self.module_parser.set_defaults(func=3Dself.print_module_help)
++
++        return self.module_parser
++
++    def print_error(self, args):
++        err =3D 0
++        utl =3D util.Utils()
++        source =3D utl.load(args)
++        component =3D source.Component.BE
++        source.set_component(component, False)
++        patterns =3D ['sdap_async_sys_connect request failed', 'termina=
ted by own WATCHDOG',
++            'ldap_sasl_interactive_bind_s failed', 'Communication with =
KDC timed out', 'SSSD is offline', 'Backend is offline',
++            'tsig verify failure', 'ldap_install_tls failed', 's2n exop=
 request failed']
++        for line in utl.matched_line(source, patterns):
++            err +=3D1
++            print(line)
++        if err > 0:
++            print("For possible solutions please refer to https://sssd.=
io/troubleshooting/errors.html")
++        return
+diff --git a/src/tools/analyzer/modules/request.py b/src/tools/analyzer/=
modules/request.py
+index d661dddb84..e4d5f060c7 100644
+--- a/src/tools/analyzer/modules/request.py
++++ b/src/tools/analyzer/modules/request.py
+@@ -1,6 +1,6 @@
+ import re
+ import logging
+-
++from sssd import util
+ from sssd.parser import SubparsersAction
+ from sssd.parser import Option
+=20
+@@ -38,7 +38,6 @@ def print_module_help(self, args):
+     def setup_args(self, parser_grp, cli):
+         """
+         Setup module parser, subcommands, and options
+-
+         Args:
+             parser_grp (argparse.Action): Parser group to nest
+                module and subcommands under
+@@ -63,42 +62,6 @@ def setup_args(self, parser_grp, cli):
+=20
+         return self.module_parser
+=20
+-    def load(self, args):
+-        """
+-        Load the appropriate source reader.
+-
+-        Args:
+-            args (Namespace): argparse parsed arguments
+-
+-        Returns:
+-            Instantiated source object
+-        """
+-        if args.source =3D=3D "journald":
+-            from sssd.source_journald import Journald
+-            source =3D Journald()
+-        else:
+-            from sssd.source_files import Files
+-            source =3D Files(args.logdir)
+-        return source
+-
+-    def matched_line(self, source, patterns):
+-        """
+-        Yield lines which match any number of patterns (OR) in
+-        provided patterns list.
+-
+-        Args:
+-            source (Reader): source Reader object
+-        Yields:
+-            lines matching the provided pattern(s)
+-        """
+-        for line in source:
+-            for pattern in patterns:
+-                re_obj =3D re.compile(pattern)
+-                if re_obj.search(line):
+-                    if line.startswith('   *  '):
+-                        continue
+-                    yield line
+-
+     def get_linked_ids(self, source, pattern, regex):
+         """
+         Retrieve list of associated REQ_TRACE ids. Filter
+@@ -114,8 +77,9 @@ def get_linked_ids(self, source, pattern, regex):
+         Returns:
+             List of linked ids discovered
+         """
++        utl =3D util.Utils()
+         linked_ids =3D []
+-        for match in self.matched_line(source, pattern):
++        for match in utl.matched_line(source, pattern):
+             id_re =3D re.compile(regex)
+             match =3D id_re.search(match)
+             if match:
+@@ -250,7 +214,8 @@ def list_requests(self, args):
+         Args:
+             args (Namespace):  populated argparse namespace
+         """
+-        source =3D self.load(args)
++        utl =3D util.Utils()
++        source =3D utl.load(args)
+         component =3D source.Component.NSS
+         resp =3D "nss"
+         # Log messages matching the following regex patterns contain
+@@ -266,7 +231,7 @@ def list_requests(self, args):
+         if args.verbose:
+             self.print_formatted_verbose(source)
+         else:
+-            for line in self.matched_line(source, patterns):
++            for line in utl.matched_line(source, patterns):
+                 if type(source).__name__ =3D=3D 'Journald':
+                     print(line)
+                 else:
+@@ -279,7 +244,8 @@ def track_request(self, args):
+         Args:
+             args (Namespace):  populated argparse namespace
+         """
+-        source =3D self.load(args)
++        utl =3D util.Utils()
++        source =3D utl.load(args)
+         cid =3D args.cid
+         resp_results =3D False
+         be_results =3D False
+@@ -294,7 +260,7 @@ def track_request(self, args):
+         logger.info(f"******** Checking {resp} responder for Client ID"
+                     f" {cid} *******")
+         source.set_component(component, args.child)
+-        for match in self.matched_line(source, pattern):
++        for match in utl.matched_line(source, pattern):
+             resp_results =3D self.consume_line(match, source, args.merg=
e)
+=20
+         logger.info(f"********* Checking Backend for Client ID {cid} **=
******")
+@@ -307,7 +273,7 @@ def track_request(self, args):
+         pattern.clear()
+         [pattern.append(f'\\{id}') for id in be_ids]
+=20
+-        for match in self.matched_line(source, pattern):
++        for match in utl.matched_line(source, pattern):
+             be_results =3D self.consume_line(match, source, args.merge)
+=20
+         if args.merge:
+diff --git a/src/tools/analyzer/sss_analyze b/src/tools/analyzer/sss_ana=
lyze
+index 3f1beaf38b..6d4b5b30c6 100755
+--- a/src/tools/analyzer/sss_analyze
++++ b/src/tools/analyzer/sss_analyze
+@@ -1,4 +1,4 @@
+-#!/usr/bin/env python
++#!/usr/bin/env python3
+=20
+ from sssd import sss_analyze
+=20
+diff --git a/src/tools/analyzer/sss_analyze.py b/src/tools/analyzer/sss_=
analyze.py
+index 18b998f380..dafc84fc03 100644
+--- a/src/tools/analyzer/sss_analyze.py
++++ b/src/tools/analyzer/sss_analyze.py
+@@ -1,6 +1,7 @@
+ import argparse
+=20
+ from sssd.modules import request
++from sssd.modules import error
+ from sssd.parser import SubparsersAction
+=20
+=20
+@@ -55,9 +56,11 @@ def load_modules(self, parser, parser_grp):
+         """
+         # Currently only the 'request' module exists
+         req =3D request.RequestAnalyzer()
++        err =3D error.ErrorAnalyzer()
+         cli =3D Analyzer()
+=20
+         req.setup_args(parser_grp, cli)
++        err.setup_args(parser_grp, cli)
+=20
+     def setup_args(self):
+         """
+diff --git a/src/tools/analyzer/util.py b/src/tools/analyzer/util.py
+new file mode 100644
+index 0000000000..2a8d153a71
+--- /dev/null
++++ b/src/tools/analyzer/util.py
+@@ -0,0 +1,44 @@
++import re
++import logging
++
++from sssd.source_files import Files
++from sssd.source_journald import Journald
++
++logger =3D logging.getLogger()
++
++
++class Utils:
++
++    def load(self, args):
++        """
++        Load the appropriate source reader.
++
++        Args:
++            args (Namespace): argparse parsed arguments
++
++        Returns:
++            Instantiated source object
++        """
++        if args.source =3D=3D "journald":
++            source =3D Journald()
++        else:
++            source =3D Files(args.logdir)
++        return source
++
++    def matched_line(self, source, patterns):
++        """
++        Yield lines which match any number of patterns (OR) in
++        provided patterns list.
++
++        Args:
++            source (Reader): source Reader object
++        Yields:
++            lines matching the provided pattern(s)
++        """
++        for line in source:
++            for pattern in patterns:
++                re_obj =3D re.compile(pattern)
++                if re_obj.search(line):
++                    if line.startswith('   *  '):
++                        continue
++                    yield line
diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2=
.7.4.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.=
1.bb
similarity index 96%
rename from dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.=
7.4.bb
rename to dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.=
1.bb
index 78d29c3..9fa9d3b 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.1.bb
@@ -16,7 +16,7 @@ DEPENDS:append:libc-musl =3D " musl-nscd"
 DEPENDS +=3D "${@bb.utils.contains('PACKAGECONFIG', 'nss', '', \
                bb.utils.contains('PACKAGECONFIG', 'crypto', '', 'nss', d=
), d)}"
=20
-SRC_URI =3D "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-$=
{PV}.tar.gz \
+SRC_URI =3D "https://github.com/SSSD/sssd/releases/download/${PV}/${BP}.=
tar.gz \
            file://sssd.conf \
            file://volatiles.99_sssd \
            file://no_gen.patch \
@@ -24,9 +24,10 @@ SRC_URI =3D "https://github.com/SSSD/sssd/releases/dow=
nload/${PV}/sssd-${PV}.tar.g
            file://drop_ntpdate_chk.patch \
            file://fix-ldblibdir.patch \
            file://musl_fixup.patch \
+           file://0001-sssctl-add-error-analyzer.patch \
            "
=20
-SRC_URI[sha256sum] =3D "10ef90c63fdbfda905145077679035bd5ad16b24daad1316=
0de8d0ff82ea9950"
+SRC_URI[sha256sum] =3D "97703d38159994a869aad1c852de4582c76f189cf044f51e=
15ba26e1e4b75298"
=20
 UPSTREAM_CHECK_URI =3D "https://github.com/SSSD/${BPN}/releases"
=20
@@ -58,7 +59,7 @@ PACKAGECONFIG[samba] =3D "--with-samba, --with-samba=3D=
no, samba"
 PACKAGECONFIG[selinux] =3D "--with-selinux, --with-selinux=3Dno --with-s=
emanage=3Dno, libselinux"
 PACKAGECONFIG[ssh] =3D "--with-ssh, --with-ssh=3Dno, "
 PACKAGECONFIG[sudo] =3D "--with-sudo, --with-sudo=3Dno, "
-PACKAGECONFIG[systemd] =3D "--with-initscript=3Dsystemd,--with-initscrip=
t=3Dsysv"
+PACKAGECONFIG[systemd] =3D "--with-initscript=3Dsystemd,--with-initscrip=
t=3Dsysv,,python3-systemd"
=20
 EXTRA_OECONF +=3D " \
     --disable-cifs-idmap-plugin \
@@ -146,6 +147,7 @@ ALLOW_EMPTY:libsss-sudo =3D "1"
=20
 FILES:${PN} +=3D "${base_libdir}/security/pam_sss*.so  \
                 ${nonarch_libdir}/tmpfiles.d \
+                ${datadir}/dbus-1/system.d/*.conf \
                 ${datadir}/dbus-1/system-services/*.service \
                 ${libdir}/krb5/* \
                 ${libdir}/ldb/* \
--=20
2.34.1


