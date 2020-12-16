Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7122.1608124167467401715
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=XxUy2SVI;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2051.outbound.protection.outlook.com [40.107.93.51])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3C1F538C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:27 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kXPciPcKDz5G2SsDywr7yKGMg/msno+yEBRO0x/mrpTmPNNMh0Ld9H7Du4bkJ9Tc/HQyQ7TdnlbGAfw8o7ImcUaT+7SlB4zk/oSfa5qrGp5uIAUTezD6PG9rDpC9kf1B4VFvxwzO8dCLhsDn+cb7CtLWcgkqGGqN1MsdQPr/BwdocO4SYPgLeH/UeY8eNz4ZlDpRu1c+p+AR8Ia4ch8i1YSsM0ci8Ab1YsV1izN60eCChslj63NO4r2ArwOXeEhdfXfx+x8tB+exLBo2V2OICo24nX6hR4c6tagISWjXl5QFTf0SVBx1caGVHf9wr0hxzjBRYKHPxppVDem+hC/GWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=meuVBa83mvVwDkq6UBJ3Vk4ANfvjulALPYkGDg36vuI=;
 b=a6yuUiFfUmcFlT+oTgBCrUjUXBmDenvtYOLfv/795bGcno2do572oIcWEkqNeIldznZsadu+szalqccorNE/xjD4jo/qkzmtvd8ZseuwfAtsvL9UpdGVhYGayZk+01z9vBg4HTgdqcm8YROcVSIwin+MdLEXkkJ0nBt9ll6+fqD7HQ2+TsjPBpla/e8ewaxER51ZELzOpKenuvVxyhXCcwA1oeEzFc+f1hHe3/1zCgZy04pX2ArrejGtFyrCdVdoc1n3Utj7mLKOkpUHVZLay9VGFehxU3kZuJynckhQmzYl33euX66GZmDceskTJwv03A0gWsU8iDrQpC6Clf0atA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=meuVBa83mvVwDkq6UBJ3Vk4ANfvjulALPYkGDg36vuI=;
 b=XxUy2SVIfWCqgC1SQDrJI8r6Q2Qwrr9TZl6d8TZSq8cRiSwjFbBa1YN8uViL80zEcHODVAQJjFupr+goBpL6baQreYxI7PBYfBZ533tMSSJgCabX0FNjqYJCycdxqMaLZtH7tpdLhgqvtu5oXXJV7TFqx3CrRX/99esQMmzpWG8=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:26 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:26 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 18/25] tensorboard: 1.12.2 -> 2.4
Date: Wed, 16 Dec 2020 21:08:15 +0800
Message-Id: <20201216130822.28476-19-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 92bf99a4-e3a4-47e5-594b-08d8a1c3d068
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB457710F633C11884D65B9C4794C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g2RRKMu8RvLdeSQ/r6ypbeMrHhOosWNUgVKoa1zUR+uBM57S84HSoHuMF+H8tMo0Loz9Yld+5xpHP1TiLiUgaYKsQ4zbneHoXeM31ir5YlSG4odf47+jFXTwTRN7Lm7b/7vI6jlJAaghVgDba6KBMHAeR1TXhAZqBqq4HkA9wzKD/9fz/cdR0AciCQ6zffjqtVjTLbvYurwukaP8ktXzcx7K9WWFNMC9w1XAkgCjL5+dzBgSEmp5ihFN9UHnkghTDU2gr59Vr66/izG3ovd6F26BadT6LTGUE13fvCicQeRFkmERyTP/91kmu77KdpbKkdVvkcvUVGnk3YgM/K7W1TiBrcK4MD2NulUhJtnJfm4fNtpIua5L23IGt8TRjFB4XYVyW5jN2KJI6dGWoovmKg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(30864003)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?twCR5AMZ9vajcSsHzT3CQ25TKcfQoyeebakNB831b/qMPj0+7Jialz0QOytt?=
 =?us-ascii?Q?MQz9RwanFXkf3IHBIpD72lnarRzEeZ6xOYfo6r6E1/ZXLKPKea1iQAXgsj7J?=
 =?us-ascii?Q?/BI7TXeUiAedzSOmGSc3/N9xNtFkOi8bL9CBMizCbnJ/T31UehEf126zz1D4?=
 =?us-ascii?Q?crMXxJOULVE8Yh6IjJat26d2X/2mpPto4h/WGNe6xkeq3U2GuzWfvjy0P3Je?=
 =?us-ascii?Q?Pp1VpKY/WqvIsO/dS3H/yyld+HbwBq+bmH+aA2+IAnM6w2lCrP40rbOC6vz1?=
 =?us-ascii?Q?tqwJRD7mku4SkkSQLr6cvyPm44r6ia52FXFLoFE6wiQhB4o2e8GUuwUoTjAX?=
 =?us-ascii?Q?OnCXtZs/7rqJSfTUFA74mPlZhLQ+Gk5VUMysSt0SCLMdLfeRQs7txMAhoD95?=
 =?us-ascii?Q?yUlN+Ij03zZhP6LXUOoIymgUcpxYRQOd+VCcrLr0v/DbFE80DqPqx8RO8nY1?=
 =?us-ascii?Q?MzduLxGz4RL728JvEh66FTHCszNSwe79JSWfg+N3P7nY1HGNv4jby9Ba7Qh/?=
 =?us-ascii?Q?QXymm8PM1TL6HWBHhN/Z/ypUVcNOfc6d7ne73+SZMyO0aElakYJPv/8FEdER?=
 =?us-ascii?Q?/nP/FdgTimERAGASb7Yg8nhyWaI+k/JmvhiEFJVtZg0NFlCPw6v2T3ismNzR?=
 =?us-ascii?Q?o5e8+VFI2hWcjWhAR2AwklfXiOnLk++Y4gdzOpz3HyPpR+ujXhDElKWztrAv?=
 =?us-ascii?Q?XmvS7Y3T5uU0W/wu7up+VTt4YfcplGsIwSEyuf2jZc4kxIWPb95ZLVNWCF78?=
 =?us-ascii?Q?4/0O+c9+DKx1DmcJqtMMQ+ilxX85x3QNDL0AsGyWjbOs3QDystGHZvRGpGzR?=
 =?us-ascii?Q?84DeA/ZqRh/jrSORnMraAYNODlmNcQ7xQD/EDoywYQZ1+IAffiyKJe99Jv3O?=
 =?us-ascii?Q?tWEwicQrFv5bGN56e2A1o6m1umwgLXW0GOKgD4BM6PXsheIHVafBy4eJmiVF?=
 =?us-ascii?Q?T9wPm+Yx1ik+So6kW88xH3mQzqO42a++dtaRKrkN4X/w7LVvEixgIadA0E7Y?=
 =?us-ascii?Q?H5BO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:25.9199
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 92bf99a4-e3a4-47e5-594b-08d8a1c3d068
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8aL4tAIjbKaIE1GnEDSMjWI2OKYU5Mgxfb8cC5r2C/q1YWCAGIQ2upklweAlSVct1B9rHqFkmCRVIlZlWKwbDXjzcqJ8Nk3ZM7+GYYJzmBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Rebase patch to 2.4
- 0001-customize-for-Yocto.patch

Fix projector cannot find module 'd3'

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../0001-customize-for-Yocto.patch            | 199 +++++++++++-------
 ...-projector-fix-cannot-find-module-d3.patch |  34 +++
 ...nsorboard_1.12.2.bb => tensorboard_2.4.bb} |  53 ++++-
 3 files changed, 195 insertions(+), 91 deletions(-)
 create mode 100644 recipes-framework/tensorflow/tensorboard/0001-projector-fix-cannot-find-module-d3.patch
 rename recipes-framework/tensorflow/{tensorboard_1.12.2.bb => tensorboard_2.4.bb} (47%)

diff --git a/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch b/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch
index 07d8257..4055e0b 100644
--- a/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch
+++ b/recipes-framework/tensorflow/tensorboard/0001-customize-for-Yocto.patch
@@ -1,6 +1,6 @@
-From 03b1ddf5058485ce1c94e6a8dc0762ad3430b6a2 Mon Sep 17 00:00:00 2001
+From 30c3d17327b7b66e082dbb443c9e528bf7aa6ac4 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Thu, 25 Apr 2019 21:13:32 +0800
+Date: Mon, 14 Dec 2020 15:14:25 +0800
 Subject: [PATCH] customize for Yocto
 
 - Remove virtualenv/pip/bdist_wheel calling which Yocto does not support
@@ -11,13 +11,13 @@ Upstream-Status: Inappropriate [oe specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
- WORKSPACE                                    |  6 ++++++
- tensorboard/pip_package/build_pip_package.sh | 31 +++-------------------------
- third_party/workspace.bzl                    |  8 +++++++
- 3 files changed, 17 insertions(+), 28 deletions(-)
+ WORKSPACE                                    |  6 +++
+ tensorboard/pip_package/build_pip_package.sh | 57 ++------------------
+ third_party/workspace.bzl                    |  8 +++
+ 3 files changed, 17 insertions(+), 54 deletions(-)
 
 diff --git a/WORKSPACE b/WORKSPACE
-index 8ab70cc..0c18f6f 100644
+index 86f5feaa..8056cfff 100644
 --- a/WORKSPACE
 +++ b/WORKSPACE
 @@ -1,5 +1,11 @@
@@ -31,102 +31,139 @@ index 8ab70cc..0c18f6f 100644
 +
  load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
  
- # Needed as a transitive dependency of rules_webtesting below.
+ http_archive(
 diff --git a/tensorboard/pip_package/build_pip_package.sh b/tensorboard/pip_package/build_pip_package.sh
-index 754fa83..969709d 100755
+index ef8df010..085ea608 100755
 --- a/tensorboard/pip_package/build_pip_package.sh
 +++ b/tensorboard/pip_package/build_pip_package.sh
-@@ -23,7 +23,7 @@ else
-   sedi="sed -i"
- fi
- 
--run_smoke_test=1
-+run_smoke_test=0
- while [ "$#" -gt 0 ]; do
-   case "$1" in
-     "--no-smoke")
-@@ -71,31 +71,20 @@ from tensorboard.plugins.beholder import Beholder, BeholderHook
+@@ -12,7 +12,7 @@
+ # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
+ # See the License for the specific language governing permissions and
+ # limitations under the License.
+-
++set -x
+ usage() {
+   cat <<EOF
+ usage: build_pip_package OUTPUT_DIR
+@@ -28,12 +28,6 @@ EOF
  }
  
- set -x
--command -v curl >/dev/null
--command -v perl >/dev/null
--command -v python2 >/dev/null
--command -v python3 >/dev/null
--command -v virtualenv >/dev/null
- [ -d "${RUNFILES}" ]
+ main() {
+-  if [ $# -ne 1 ]; then
+-    usage 2>&1
+-    return 1
+-  fi
+-  output="$1"
+-
+   if [ -z "${RUNFILES+set}" ]; then
+     RUNFILES="$(CDPATH="" cd -- "$0.runfiles" && pwd)"
+   fi
+@@ -41,16 +35,12 @@ main() {
+   if [ "$(uname)" = "Darwin" ]; then
+     workdir="$(mktemp -d -t tensorboard-pip)"
+   else
+-    workdir="$(mktemp -d -p /tmp -t tensorboard-pip.XXXXXXXXXX)"
++    workdir="${DESTDIR}"
++    rm -rf ${workdir} && mkdir -p ${workdir}
+   fi
+   original_wd="${PWD}"
+   cd "${workdir}" || return 2
  
--dest=/tmp/tensorboard
-+dest=${DESTDIR}
- if [ ! -e $dest ]; then
--  mkdir $dest
-+  mkdir -p $dest
- else
-   dest="$(mktemp -d -p /tmp -t tensorboard-pip.XXXXXXXXXX)"
- fi
- cd "${dest}"
+-  cleanup() {
+-    rm -r "${workdir}"
+-  }
+-  trap cleanup EXIT
+-
+   log_file="${workdir}/log"
+   build >"${log_file}" 2>&1
+   exit_code=$?
+@@ -68,20 +58,12 @@ build() (
+     sedi="sed -i"
+   fi
  
- cp -LR "${RUNFILES}/org_tensorflow_tensorboard/tensorboard" .
--mv -f "tensorboard/pip_package/LICENSE" .
--mv -f "tensorboard/pip_package/MANIFEST.in" .
--mv -f "tensorboard/pip_package/README.rst" .
--mv -f "tensorboard/pip_package/setup.cfg" .
--mv -f "tensorboard/pip_package/setup.py" .
- rm -rf tensorboard/pip_package
+-  command -v virtualenv >/dev/null
+   [ -d "${RUNFILES}" ]
  
- rm -f tensorboard/tensorboard              # bazel py_binary sh wrapper
--chmod -x LICENSE                           # bazel symlinks confuse cp
- find . -name __init__.py | xargs chmod -x  # which goes for all genfiles
+   cp -LR "${RUNFILES}/org_tensorflow_tensorboard/tensorboard" .
+-  mv -f "tensorboard/pip_package/LICENSE" .
+-  mv -f "tensorboard/pip_package/MANIFEST.in" .
+-  mv -f "tensorboard/pip_package/README.rst" .
+-  mv -f "tensorboard/pip_package/requirements.txt" .
+-  mv -f "tensorboard/pip_package/setup.cfg" .
+-  mv -f "tensorboard/pip_package/setup.py" .
+   rm -rf "tensorboard/pip_package"
  
- mkdir -p tensorboard/_vendor
-@@ -117,21 +106,7 @@ find tensorboard -name \*.py |
-     s/from tensorflow_serving/from tensorboard._vendor.tensorflow_serving/
-   '
+   rm -f tensorboard/tensorboard  # bazel py_binary sh wrapper
+-  chmod -x LICENSE  # bazel symlinks confuse cp
+   find . -name __init__.py -exec chmod -x {} +  # which goes for all genfiles
  
--virtualenv venv
--export VIRTUAL_ENV=venv
--export PATH="$PWD/venv/bin:${PATH}"
--unset PYTHON_HOME
+   mkdir -p tensorboard/_vendor
+@@ -100,39 +82,6 @@ build() (
+       s/^import webencodings$/from tensorboard._vendor import webencodings/
+       s/^from webencodings/from tensorboard._vendor.webencodings/
+     ' {} +
 -
--# Require wheel for bdist_wheel command, and setuptools 36.2.0+ so that
--# env markers are handled (https://github.com/pypa/setuptools/pull/1081)
--pip install -qU wheel 'setuptools>=36.2.0'
+-  virtualenv -q -p python3 venv
+-  export VIRTUAL_ENV=venv
+-  export PATH="${PWD}/venv/bin:${PATH}"
+-  unset PYTHON_HOME
 -
--python setup.py bdist_wheel --python-tag py2 >/dev/null
--python setup.py bdist_wheel --python-tag py3 >/dev/null
+-  # Require wheel for bdist_wheel command, and setuptools 36.2.0+ so that
+-  # env markers are handled (https://github.com/pypa/setuptools/pull/1081)
+-  export PYTHONWARNINGS=ignore:DEPRECATION  # suppress Python 2.7 deprecation spam
+-  pip install -qU wheel 'setuptools>=36.2.0'
 -
- if [ "$run_smoke_test" = 1 ]; then
-   smoke 2
-   smoke 3
- fi
+-  # Overrides file timestamps in the zip archive to make the build
+-  # reproducible. (Date is mostly arbitrary, but must be past 1980 to be
+-  # representable in a zip archive.)
+-  export SOURCE_DATE_EPOCH=1577836800  # 2020-01-01T00:00:00Z
 -
--ls -hal "$PWD/dist"
+-  python setup.py bdist_wheel --python-tag py3 >/dev/null
+-
+-  cd "${original_wd}"  # Bazel gives "${output}" as a relative path >_>
+-  case "${output}" in
+-    *.tar.gz)
+-      mkdir -p "$(dirname "${output}")"
+-      "${RUNFILES}/org_tensorflow_tensorboard/tensorboard/pip_package/deterministic_tar_gz" \
+-          "${output}" "${workdir}"/dist/*.whl
+-      ;;
+-    *)
+-      if ! [ -d "${output}" ]; then
+-        printf >&2 'fatal: no such output directory: %s\n' "${output}"
+-        return 1
+-      fi
+-      mv "${workdir}"/dist/*.whl "${output}"
+-      ;;
+-  esac
+ )
+ 
+ main "$@"
 diff --git a/third_party/workspace.bzl b/third_party/workspace.bzl
-index 083c441..24786f8 100644
+index e6a5183f..9260a8ab 100644
 --- a/third_party/workspace.bzl
 +++ b/third_party/workspace.bzl
-@@ -24,6 +24,7 @@ load("//third_party:polymer.bzl", "tensorboard_polymer_workspace")
- load("//third_party:python.bzl", "tensorboard_python_workspace")
+@@ -25,6 +25,7 @@ load("//third_party:python.bzl", "tensorboard_python_workspace")
  load("//third_party:js.bzl", "tensorboard_js_workspace")
+ load("//third_party:rust.bzl", "tensorboard_rust_workspace")
  load("//third_party:typings.bzl", "tensorboard_typings_workspace")
 +load("//third_party/toolchains/yocto:yocto_compiler_configure.bzl", "yocto_compiler_configure")
  
- def tensorboard_workspace():
-   tensorboard_fonts_workspace()
-@@ -32,6 +33,13 @@ def tensorboard_workspace():
-   tensorboard_typings_workspace()
-   tensorboard_js_workspace()
+ def tensorboard_workspace(name = ""):
+     """Add repositories needed to build TensorBoard.
+@@ -39,6 +40,13 @@ def tensorboard_workspace(name = ""):
+     tensorboard_js_workspace()
+     tensorboard_rust_workspace()
  
-+  # Point //external/local_config_yocto_compiler to //external/yocto_compiler
-+  yocto_compiler_configure(
-+      name = "local_config_yocto_compiler",
-+      build_file = str(Label("//third_party/toolchains/yocto:BUILD")),
-+      remote_config_repo = "../yocto_compiler",
-+  )
++    # Point //external/local_config_yocto_compiler to //external/yocto_compiler
++    yocto_compiler_configure(
++        name = "local_config_yocto_compiler",
++        build_file = str(Label("//third_party/toolchains/yocto:BUILD")),
++        remote_config_repo = "../yocto_compiler",
++    )
 +
-   http_archive(
-       name = "com_google_protobuf_js",
-       strip_prefix = "protobuf-3.6.0/js",
+     # Set up TypeScript toolchain.
+     ts_setup_workspace()
+ 
 -- 
-2.7.4
+2.18.2
 
diff --git a/recipes-framework/tensorflow/tensorboard/0001-projector-fix-cannot-find-module-d3.patch b/recipes-framework/tensorflow/tensorboard/0001-projector-fix-cannot-find-module-d3.patch
new file mode 100644
index 0000000..1cab5dd
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorboard/0001-projector-fix-cannot-find-module-d3.patch
@@ -0,0 +1,34 @@
+From 60f90ec3cc3e417c4b8fe2ea25ddf6e5ff99bde0 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Mon, 14 Dec 2020 14:51:36 +0800
+Subject: [PATCH] projector: fix cannot find module 'd3'
+
+[snip]
+$ bazel run tensorboard/plugins/projector/vz_projector:standalone
+tensorboard/plugins/projector/vz_projector/projectorScatterPlotAdapter.ts:16:21 - error TS2307: Cannot find module 'd3'.
+
+16 import * as d3 from 'd3';
+[snip]
+
+Upstream-Status: Submitted [https://github.com/tensorflow/tensorboard/pull/4465]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tensorboard/plugins/projector/vz_projector/BUILD | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/tensorboard/plugins/projector/vz_projector/BUILD b/tensorboard/plugins/projector/vz_projector/BUILD
+index f173cd78..1529440d 100644
+--- a/tensorboard/plugins/projector/vz_projector/BUILD
++++ b/tensorboard/plugins/projector/vz_projector/BUILD
+@@ -63,6 +63,7 @@ tf_ts_library(
+         "//tensorboard/webapp/third_party:tfjs",
+         "@npm//@polymer/decorators",
+         "@npm//@polymer/polymer",
++        "@npm//@types/d3",
+         "@npm//d3",
+         "@npm//numeric",
+         "@npm//three",
+-- 
+2.18.2
+
diff --git a/recipes-framework/tensorflow/tensorboard_1.12.2.bb b/recipes-framework/tensorflow/tensorboard_2.4.bb
similarity index 47%
rename from recipes-framework/tensorflow/tensorboard_1.12.2.bb
rename to recipes-framework/tensorflow/tensorboard_2.4.bb
index a27bdea..aa97890 100644
--- a/recipes-framework/tensorflow/tensorboard_1.12.2.bb
+++ b/recipes-framework/tensorflow/tensorboard_2.4.bb
@@ -3,17 +3,22 @@ your TensorFlow runs and graphs."
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e74df23890b9521cc481e3348863e45d"
 
-SRC_URI = "git://github.com/tensorflow/tensorboard.git; \
+SRC_URI = "git://github.com/tensorflow/tensorboard.git;branch=2.4; \
            file://0001-customize-for-Yocto.patch \
-           file://BUILD \
+           file://0001-projector-fix-cannot-find-module-d3.patch \
+           file://BUILD.in \
            file://BUILD.yocto_compiler \
-           file://CROSSTOOL.tpl \
+           file://cc_config.bzl.tpl \
            file://yocto_compiler_configure.bzl \
           "
-SRCREV = "7194c7486a0c4d107322ffad102c1ca0fcc0fc24"
+SRCREV = "4e2a918a0559514a633c3a29ac6238fed4b72ed5"
 S = "${WORKDIR}/git"
 
-DEPENDS = "util-linux-native"
+DEPENDS = " \
+    util-linux-native \
+    python3-numpy-native \
+    python3-absl-native \
+"
 
 RDEPENDS_${PN} += "python3 \
            python3-core \
@@ -23,13 +28,40 @@ RDEPENDS_${PN} += "python3 \
            python3-werkzeug \
            python3-six \
            python3-markdown \
+           python3-absl \
+           python3-google-auth \
+           python3-google-auth-oauthlib \
+           python3-requests \
 "
 inherit python3native bazel
 
+export PYTHON_BIN_PATH="${PYTHON}"
+export PYTHON_LIB_PATH="${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}/site-packages"
+export CROSSTOOL_PYTHON_INCLUDE_PATH="${STAGING_INCDIR}/python${PYTHON_BASEVERSION}${PYTHON_ABI}"
+
 do_configure_append () {
+    if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h ];then
+        mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h
+    fi
+
+    install -m 644 ${STAGING_INCDIR_NATIVE}/python${PYTHON_BASEVERSION}${PYTHON_ABI}/pyconfig.h \
+        ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-native.h
+
+    cat > ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h <<ENDOF
+#if defined (_PYTHON_INCLUDE_TARGET)
+#include "pyconfig-target.h"
+#elif defined (_PYTHON_INCLUDE_NATIVE)
+#include "pyconfig-native.h"
+#else
+#error "_PYTHON_INCLUDE_TARGET or _PYTHON_INCLUDE_NATIVE is not defined"
+#endif // End of #if defined (_PYTHON_INCLUDE_TARGET)
+
+ENDOF
+
     mkdir -p ${S}/third_party/toolchains/yocto/
-    install -m 644 ${WORKDIR}/BUILD ${S}/third_party/toolchains/yocto/
-    install -m 644 ${WORKDIR}/CROSSTOOL.tpl ${S}/third_party/toolchains/yocto/
+    sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  > ${S}/third_party/toolchains/yocto/BUILD
+    chmod 644 ${S}/third_party/toolchains/yocto/BUILD
+    install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
 
@@ -39,25 +71,26 @@ do_configure_append () {
     SED_COMMAND="${SED_COMMAND}; s#%%YOCTO_COMPILER_PATH%%#${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler#g"
 
     sed -i "${SED_COMMAND}" ${S}/BUILD.yocto_compiler \
-                            ${S}/third_party/toolchains/yocto/CROSSTOOL.tpl \
                             ${S}/WORKSPACE
 }
 
 do_compile () {
     unset CC
+    export CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
     DESTDIR=${WORKDIR}/python-tensorboard \
      ${BAZEL} run \
-        --cpu=armeabi \
+        --cpu=${BAZEL_TARGET_CPU} \
         --subcommands --explain=${T}/explain.log \
         --verbose_explanations --verbose_failures \
         --crosstool_top=@local_config_yocto_compiler//:toolchain \
+        --host_crosstool_top=@bazel_tools//tools/cpp:toolchain \
         --verbose_failures \
         //tensorboard/pip_package:build_pip_package
 }
 
 do_install () {
     install -d ${D}${PYTHON_SITEPACKAGES_DIR}
-    cp -rf ${WORKDIR}/python-tensorboard/* ${D}${PYTHON_SITEPACKAGES_DIR}
+    cp -rf ${WORKDIR}/python-tensorboard/tensorboard ${D}${PYTHON_SITEPACKAGES_DIR}
 }
 
 FILES_${PN} += "${libdir}/*"
-- 
2.21.0

