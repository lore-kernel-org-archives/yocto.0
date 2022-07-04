Return-Path: <johannes.schilling@methodpark.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D49AC43334
	for <webhook@archiver.kernel.org>; Mon,  4 Jul 2022 16:25:32 +0000 (UTC)
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (EUR03-VE1-obe.outbound.protection.outlook.com [40.107.5.74])
 by mx.groups.io with SMTP id smtpd.web12.74009.1656951922271996193
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jul 2022 09:25:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@methodpark.de
 header.s=selector1 header.b=Qsik0TSV;
 spf=pass (domain: methodpark.de, ip: 40.107.5.74,
 mailfrom: johannes.schilling@methodpark.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fMBlR82/6qR/tmLzjpqCjRIbrViXdMI3PGeaWYiqI+Le5DZ7hzKLLJB9PrwAb2Yadl1pp9GRgOw3aZ62Nc1cMMI+ZZlJW0zLH1DF11R3imh4wH8sjMEXKpElPK8u7tyNl9o6rypZcZyBmVymI+7S3/K7NdT6Zl9fTm1vSuRUIJ8734E5sLtut5C9biT6tDHCaiAFnp3bXFP29wZG29wqb66JTi3sz0X2cVl7G9p0CjtdnbXxt+pUqDmJWk9MwJ/HAdB4X4z0JlCx7eEn+F0mv4+niF5NxLOA4S6iBi2ojeslzz4jcXUyn5iVFk9F0j+FG1j+aHk9dWzUqHSXi6A1xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RhcQOqJkRiHyySGReBPgS5oYb2QPnAXyCFR60dr/4g0=;
 b=oft31xDSws1Npcjd0NRfSu8ALmDVQcVkJZ61pwtPGx0S3RHJmRiTL5/0pTn/CVZV+mol74vQ74qXgS46Bo3oKUJIs5bkbX4pXao1kSqnLEThfIlBpd3/c4Xi1fTWBZozzrqz7XjABQW8Ev2BU1xmrI5Ut+m0YDlv4VKsitnhA7WGJvo+x5tERLXGvS3VNW/vzoiLUxVuDzPAkwCUJHlZN5pwS1cyGI4jQXwGPNIQ0jhV9um1z4dP34q/2+g16m4xP4vTFar6CrzchV33FZPYJlbRCrepl7UTPCf0XlO7fKVVaANPUPDqPoFsDhr9256NA8whS4nfwvzTNSsM1KXq9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=methodpark.de; dmarc=pass action=none
 header.from=methodpark.de; dkim=pass header.d=methodpark.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=methodpark.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RhcQOqJkRiHyySGReBPgS5oYb2QPnAXyCFR60dr/4g0=;
 b=Qsik0TSV0B9JioxGq6lmmAd6g1xiCSdPZNePruxwG5LFDeXvbFvSU2CAU6eQSKJ7olrmE4E+a5ilmMAcv6u2v+W8jjWoU/urE5zYhzh6iw9Rin6gpJKvAP/Rc2WaOSvPdw78L3WqXA/iSuPxZQqJUGKzMI+fgyUlCDU4C40JICY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=methodpark.de;
Received: from DBAPR08MB5575.eurprd08.prod.outlook.com (2603:10a6:10:1a6::13)
 by HE1PR0802MB2235.eurprd08.prod.outlook.com (2603:10a6:3:c3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Mon, 4 Jul
 2022 16:25:15 +0000
Received: from DBAPR08MB5575.eurprd08.prod.outlook.com
 ([fe80::a0ca:a2bf:2b04:15f1]) by DBAPR08MB5575.eurprd08.prod.outlook.com
 ([fe80::a0ca:a2bf:2b04:15f1%5]) with mapi id 15.20.5395.020; Mon, 4 Jul 2022
 16:25:15 +0000
From: Johannes Schilling <johannes.schilling@methodpark.de>
To: yocto@lists.yoctoproject.org
CC: Johannes Schilling <johannes.schilling@methodpark.de>
Subject: [PATCH 1/2] image-without-static-linkage: add class
Date: Mon,  4 Jul 2022 18:25:03 +0200
Message-ID: <20220704162504.1488894-1-johannes.schilling@methodpark.de>
X-Mailer: git-send-email 2.36.1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain
X-ClientProxiedBy: CWLP123CA0078.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:401:5b::18) To DBAPR08MB5575.eurprd08.prod.outlook.com
 (2603:10a6:10:1a6::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8d0916d-6cff-4d47-eefb-08da5dd9c6ed
X-MS-TrafficTypeDiagnostic: HE1PR0802MB2235:EE_
X-LD-Processed: eb611ac0-eafe-4516-ac14-6de964173ebb,ExtFwd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HrsXsjiJxVnWDIjq1qRr5ex957p0ytYtih7RbMY3MNBbDPeSnU1HHgFfu744N830mQPc8f2kM9wKLjrN6G9NQRw+qkBaXHNFPK4rNJu62tqLDRlNpCw7Kf5hIqd/jyHoNsReydNXJXVsU9+WrRzJkyaDWIWdxqQ764aq3O0pSorkd72BZW/QtH2PKF1RkLIiJSYkU45hFJnyK72kYDOYLE5lsniYkHgOrV3GwAqBm/awm0iW59L81deG9aODHFC3ArD8c13QB/iEg3pw6g7lhoDYHzgVIOKPH6ls7hZSpx8iRI/TQY+SPKwKAd6Nf5QBC/y1xwNg0gOTHiXMHBS+sCAvWscRRFBL2eHyuScO0BJkPVEIpww0mHA/66+5lJUEPKs6pmGDq4i0P72j+dxVweSexUdu8wmTBP8l0fPmc5maumYyNRW6keHnz0UO4Ru7qGGHFr61wRizaEY5+1XCkxGv1CxeJKY0cFWd5GXKjzh/FzTXM0S8jvn7Ke1/XUAnTF5WyZ5JG2NYx5VQZW1zOjTUCCK078tk0S2gXAfnmQms9vKDy/Pj52rhdTkiBDBPvKB1haMGJCdmD196YT3i6IVzRfsWYuZlSxoZeB/iMIhPYD/4Xb/qeNGChavCVFhcM6n2iXDn0slDg4D84UmWBmnXLayZ0/rnvEaaSprdIz6tCUl8bgtykrf9DBzym3BfHeyTOA6QVrkwrHjX7ub0xy6psoAnqZ1YHy8NgacGEUC95WGv8de2KlzUKReEQNruM85WzVVzYjBOwiDCc8Ejy9GJRmADw///6ccSFJIGTMGTP8F/TEJSp5wXY7gYcy2q
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR08MB5575.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(136003)(396003)(366004)(346002)(376002)(39850400004)(83380400001)(36756003)(107886003)(1076003)(2616005)(38100700002)(186003)(2906002)(478600001)(8676002)(66476007)(4326008)(66946007)(66556008)(44832011)(6512007)(6506007)(8936002)(52116002)(5660300002)(86362001)(6916009)(316002)(6486002)(966005)(41300700001)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?QgYkpxbRCztLb7oABF87BDY1q58ussC2N9/ZmTHvID6+tglky06OCnIv6QxY?=
 =?us-ascii?Q?t5Vy8Twy5qfV//WD5J3e5MKIyi8paWYcvM15ssH8DceEgvbk8OaTAYXm24zk?=
 =?us-ascii?Q?pWRxriFLJiW9mhT77KfdX7S7H7FXiIIDwCj+yyRZ8JT041AKsSNez0LQk4MH?=
 =?us-ascii?Q?EDWhvWvVQPd9xVtrkCPIb0zfr0TqgsHFpyzkAUMHk0zvLj++IoUVQ1MgmG6m?=
 =?us-ascii?Q?wEJ4en1NySFy/EHOOb2ryvj0vwow7mktEAo1MgG67U83D+Yze8/A9B9Nispl?=
 =?us-ascii?Q?k2xWd2ewC6/APrTBcet6uW4lFgOqILS/x1B+/nh1uanOwFT2lgcTuZyGlHjZ?=
 =?us-ascii?Q?P9An+ZrIeoKXrKsmZid5gcLweMxX/GnfUeDKXWcRlRiJJJO7npWNSQldEXBj?=
 =?us-ascii?Q?eZ2ovOUkzCJESd8D2UhiObKMzKQY3CiNfab4Ahx2kJ9K3CKtr00HlKFSUpvQ?=
 =?us-ascii?Q?BzdpRN192YUB6ylqB/knb9qx/l9I5BllyTCgE9Vwp2Xhj+k1tsUjv8EDjJZ6?=
 =?us-ascii?Q?/ZOVeKUCGwNKHqilKOYRZqB/WOBLciSHq+FhTrzrC5tl1uMCTcv0sfj9p0Vd?=
 =?us-ascii?Q?0iNEhW68j7uhPy0dq5wq4R4mkR0n0MpjVv3shZevVTAsX50BI26cMSa4d9mV?=
 =?us-ascii?Q?hDBoddIRgowGgTcHzeFB27gKJz9osoPgNoq2Oh4JWqhc214pQ15UcQH1yB7+?=
 =?us-ascii?Q?IQf7DgiilijMfO5koJXNN1ByjRKMtqjhNrvqD7FnknccLOBniR0mAiaBrT3q?=
 =?us-ascii?Q?vrceC2BwaNya9H3zArS6ZlM+VWZG8y+AKHVrODMdx/CxNNvXCggpm+kPtL3g?=
 =?us-ascii?Q?nm5eFpcnNH8zn+E/XEYJz7CVU6E+YkDdD4/sTpwb96mVUKBd1fzIOgg+aF2S?=
 =?us-ascii?Q?WFXANn+UTyFQUy/L0e2vfuS9FhUilwaB93ZjrYA6XeOywIVTmjURb6VCZl/L?=
 =?us-ascii?Q?z5bFO2T7TfEvePRvjLX+I+PR25P1fEnoNqyV0EkMbBlqxmdfDXov75f+PDtj?=
 =?us-ascii?Q?J0qbBIsvmvQbjciMGDz+kZF/9LRC8KyxtACEXgU/1dS1clIhD5ojLhepw5jM?=
 =?us-ascii?Q?FXmrjmfZ13gTyxbyIyAiG/iz0sMFINBxGPk1hg1QZ9O2yc6QxAfieg7kLrKh?=
 =?us-ascii?Q?zCJdakm+gjyfhcZ/vz3d0Zq5oNDqvbEvb/MSq/P6jUi2aRl9U4kLnzFkfyWg?=
 =?us-ascii?Q?wKgTHJUp4E+xlPZcUbe2tD3RAdByoLqqahuPEhZK/P70s4EXZVFFeQeLod5n?=
 =?us-ascii?Q?kBds74oRBb8Cz7LgTQ6fBE4tdMS9tcDxEvFLBk6JeSUdNagMeeg7RMbY23Gl?=
 =?us-ascii?Q?9beoOeb+b3QWV2Qa9/TfrgUGkaPnQy+fCUTXaLrGwxDaIjxrtqt9388HnvvC?=
 =?us-ascii?Q?L+KHagl0PR2c6wWtl4gIcT23FhDih0QuhpOkScImS889O2QW/eoJM5y99juv?=
 =?us-ascii?Q?div62/Z8NupPebIlse4ep67+qWMzF6Mb8QZxOUxIxxmpywsH4wOjndZEGnZ5?=
 =?us-ascii?Q?wtXlQf29vkNuJ/pFZO+S4jCxjP3Pr2HdsWC5I4TBqzHfhG89LC5pcvlQB2xd?=
 =?us-ascii?Q?5ovyFBhRuE4Vs5L4fYmecDVks5+Y3JtBNPU3EmOhyynG3R1q5bmDMf8uRMUP?=
 =?us-ascii?Q?vn8Anag110GFRFrvRwGxG/3tKyKEE7/sJkYWQGKZt3X/BsHgP383T12QalIF?=
 =?us-ascii?Q?h3op5dhu0b0swSpdq5wlFIJ4nU0=3D?=
X-OriginatorOrg: methodpark.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a8d0916d-6cff-4d47-eefb-08da5dd9c6ed
X-MS-Exchange-CrossTenant-AuthSource: DBAPR08MB5575.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jul 2022 16:25:15.6221
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: eb611ac0-eafe-4516-ac14-6de964173ebb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 22CNOBjgG/r76Bl3q8QDbPbWAHkgkjw/YMosviu3HPVJKeiwwEV/zqdq8/15bZJapYuC25rqXtGHIRJgCzpEvs7wHsoYN68ykMewkksFmzF3utvnGS4zL35EOAT9wo2M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0802MB2235
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Jul 2022 16:25:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57439

This class provides a new image QA check that tries to detect static
linkage of a set of well-known libraries, leveraging the detectors from
cve-bin-tool[0].

To use in your project, provide a config file as described in the header
comment of the class, and inherit image-without-static-linkage in your
image recipe.

[0] https://github.com/intel/cve-bin-tool/tree/main/cve_bin_tool/checkers
---
 classes/image-without-static-linkage.bbclass  |  65 +++++++++
 .../python/python3-packaging_%.bbappend       |   1 +
 .../cve-bin-tool/cve-bin-tool-native.bb       |  34 +++++
 .../files/cve-bin-tool-static-linkage-checker | 126 ++++++++++++++++++
 4 files changed, 226 insertions(+)
 create mode 100644 classes/image-without-static-linkage.bbclass
 create mode 100644 recipes-devtools/python/python3-packaging_%.bbappend
 create mode 100644 recipes-security/cve-bin-tool/cve-bin-tool-native.bb
 create mode 100644 recipes-security/cve-bin-tool/files/cve-bin-tool-static=
-linkage-checker

diff --git a/classes/image-without-static-linkage.bbclass b/classes/image-w=
ithout-static-linkage.bbclass
new file mode 100644
index 0000000..c6f2013
--- /dev/null
+++ b/classes/image-without-static-linkage.bbclass
@@ -0,0 +1,65 @@
+# Provide a QA check for statically linked copies of libraries.
+#
+# You need to provide a config file in TOML format and point the
+# variable `STATIC_LINKAGE_CHECK_CONFIG_FILE` to it.
+#
+# The file format is as follows
+# ```
+# [checkers]
+# modules =3D [
+#   # list of checker module names of cve-bin-tool checkers lib to
+#   # enable, i.e. file names in the cve_bin_tool/checkers subfolder.
+#   # https://github.com/intel/cve-bin-tool/tree/main/cve_bin_tool/checker=
s
+#   "librsvg",
+#   "zlib",
+# ]
+#
+# [exceptions]
+# ignore_dirs =3D [
+#   # list of directories, everything under these is completely ignored
+#   "/var/lib/opkg",
+# ]
+#
+# [exceptions.ignore_checks]
+#   # for each binary path, a list of checkers from the global list to
+#   # ignore for this binary (allowlist)
+#   "/bin/ary/name" =3D [ "zlib" ],
+# ```
+
+IMAGE_QA_COMMANDS +=3D "image_check_static_linkage"
+
+DEPENDS +=3D "cve-bin-tool-native"
+
+inherit python3native
+
+
+STATIC_LINKAGE_CUSTOM_ERROR_MESSAGE ??=3D ""
+
+python image_check_static_linkage() {
+    import json
+    from pathlib import Path
+    import subprocess
+
+    from oe.utils import ImageQAFailed
+
+    check_result =3D subprocess.check_output(["cve-bin-tool-static-linkage=
-checker",
+        "--config", d.getVar("STATIC_LINKAGE_CHECK_CONFIG_FILE"),
+        d.getVar("IMAGE_ROOTFS"),
+    ])
+    check_result =3D json.loads(check_result)
+
+    deploy_dir =3D Path(d.getVar("DEPLOYDIR"))
+    deploy_dir.mkdir(parents=3DTrue, exist_ok=3DTrue)
+    image_basename =3D d.getVar("IMAGE_BASENAME")
+    stats_filename =3D "static_linkage_stats-" + image_basename + ".json"
+    with open(deploy_dir / stats_filename, "w") as stats_out:
+        json.dump(check_result, stats_out)
+
+    binaries_with_violations =3D {k: v for k, v in check_result.items() if=
 v}
+    if binaries_with_violations:
+        msg =3D "Static linkage check: found {} violations".format(len(bin=
aries_with_violations))
+        for violator, violations in binaries_with_violations.items():
+            msg +=3D "\n{}: {}".format(violator, violations)
+
+        raise ImageQAFailed(msg, image_check_static_linkage)
+}
diff --git a/recipes-devtools/python/python3-packaging_%.bbappend b/recipes=
-devtools/python/python3-packaging_%.bbappend
new file mode 100644
index 0000000..d6f5869
--- /dev/null
+++ b/recipes-devtools/python/python3-packaging_%.bbappend
@@ -0,0 +1 @@
+BBCLASSEXTEND +=3D "native"
diff --git a/recipes-security/cve-bin-tool/cve-bin-tool-native.bb b/recipes=
-security/cve-bin-tool/cve-bin-tool-native.bb
new file mode 100644
index 0000000..3efbdf7
--- /dev/null
+++ b/recipes-security/cve-bin-tool/cve-bin-tool-native.bb
@@ -0,0 +1,34 @@
+SUMMARY =3D "Scanner for statically linked library copies"
+HOMEPAGE =3D "https://github.com/intel/cve-bin-tool"
+
+LICENSE =3D "GPL-3.0"
+LIC_FILES_CHKSUM =3D "file://LICENSE.md;md5=3D97a733ff40c50b4bfc74471e1f6c=
a88b"
+
+VERSION =3D "3.1"
+
+
+SRC_URI =3D "\
+    https://github.com/intel/cve-bin-tool/archive/refs/tags/v${VERSION}.ta=
r.gz \
+    file://cve-bin-tool-static-linkage-checker \
+"
+
+SRC_URI[md5sum] =3D "af6958f8be7f7ce0d2b5ddffa34a1aee"
+SRC_URI[sha256sum] =3D "c4faaa401a2605a0d3f3c947deaf01cb56b4da927bfc29b5e9=
59cde243bf5daf"
+
+inherit python3native native
+
+S =3D "${WORKDIR}/cve-bin-tool-3.1"
+inherit setuptools3
+
+RDEPENDS_${PN} =3D "\
+  python3-rich-native \
+  python3-packaging-native \
+"
+
+do_install:append() {
+  install -m 0755 "${WORKDIR}/cve-bin-tool-static-linkage-checker" "${D}${=
bindir}"
+}
+FILES-${PN}:append =3D "${bindir}/cve-bin-tool-static-linkage-checker"
+
+do_configure[noexec] =3D "1"
+do_compile[noexec] =3D "1"
diff --git a/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkag=
e-checker b/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage=
-checker
new file mode 100644
index 0000000..7da1b3b
--- /dev/null
+++ b/recipes-security/cve-bin-tool/files/cve-bin-tool-static-linkage-check=
er
@@ -0,0 +1,126 @@
+#!/usr/bin/env python3
+
+from importlib import import_module
+from pathlib import Path
+
+import argparse
+import json
+import subprocess
+import toml
+
+
+def parse_args():
+    """
+    Parse command line arguments.
+    """
+    parser =3D argparse.ArgumentParser(
+        prog=3Dsys.argv[0],
+        description=3D"Checker for staticly linked copies of libraries",
+    )
+
+    parser.add_argument(
+        "directory",
+        help=3D"Path to the directory to scan",
+    )
+
+    parser.add_argument(
+        "--config",
+        help=3D"Path to the config file",
+        required=3DTrue,
+    )
+
+    return parser.parse_args()
+
+
+def list_input_files(rootdir):
+    """
+    Iterate over the input rootfs and find any file that is an executable =
ELF file, yielding their
+    names for the next step to iterate over.
+    """
+    import sys
+    with subprocess.Popen(
+        ["find", rootdir, "-type", "f", "-executable", "-printf", "/%P\\n"=
],
+        stdout=3Dsubprocess.PIPE,
+    ) as find:
+        for line in find.stdout:
+            executable_filename =3D line.decode().strip()
+            file_out =3D subprocess.check_output(["file", rootdir + execut=
able_filename]).decode()
+            if "ELF " not in file_out:
+                continue
+
+            yield executable_filename
+
+
+# PurePath.is_relative_to was only added in python 3.9
+def _path_is_relative_to(subdir, base):
+    try:
+        subdir.relative_to(base)
+        return True
+    except ValueError:
+        return False
+
+
+def check_file(root_dir, filename, checkers, exceptions):
+    """
+    Check an executable file for traces of static linkage using all the ch=
eckers specified and
+    applying all exceptions specified.
+    """
+    full_filepath =3D root_dir + filename
+    strings_out =3D subprocess.check_output(["strings", full_filepath]).de=
code()
+
+    filepath =3D Path(filename)
+    if any(
+        _path_is_relative_to(Path(ex), filepath) for ex in exceptions["ign=
ore_dirs"]
+    ):
+        return []
+
+    found_lib_versions =3D []
+    for checker_name, checker in checkers.items():
+        if filename in exceptions["ignore_checks"]:
+            if checker_name in exceptions["ignore_checks"][filename]:
+                continue
+
+        vi =3D checker().get_version(strings_out, filename)
+        if vi and vi["is_or_contains"] =3D=3D "contains" and vi["version"]=
 !=3D "UNKNOWN":
+            found_lib_versions.append({checker_name: vi["version"]})
+
+    return found_lib_versions
+
+
+def _load_checker_class(mod_name):
+    """
+    Load a checker class given the module name.
+
+    The class and module name can be generated from each other (the setup.=
py file for cve-bin-tool
+    does the same), e.g. module `libjpeg_turbo` contains checker class `Li=
bjpegTurboChecker`.
+    """
+    class_name =3D "".join(mod_name.replace("_", " ").title().split()) + "=
Checker"
+
+    mod =3D import_module(f"cve_bin_tool.checkers.{mod_name}")
+    return getattr(mod, class_name)
+
+
+def main():
+    """
+    Main entry point.
+    """
+    args =3D parse_args()
+    config =3D toml.load(args.config)
+
+    all_checkers =3D {
+        modname: _load_checker_class(modname)
+        for modname in config["checkers"]["modules"]
+    }
+
+    violations =3D {
+        f: check_file(args.directory, f, all_checkers, config["exceptions"=
])
+        for f in list_input_files(args.directory)
+    }
+
+    print(json.dumps(violations))
+
+
+if __name__ =3D=3D "__main__":
+    import sys
+
+    sys.exit(main())
--=20
2.36.1


