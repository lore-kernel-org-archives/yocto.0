Return-Path: <tim.orling@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F36ACD343F
	for <webhook@archiver.kernel.org>; Fri,  8 May 2026 01:26:23 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.4005.1778203574144268377
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 May 2026 18:26:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=aDagWHCh;
 spf=pass (domain: konsulko.com, ip: 209.85.214.180, mailfrom: tim.orling@konsulko.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2b9e9a6802aso5765315ad.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 May 2026 18:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google; t=1778203573; x=1778808373; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lHMHMqUFw3Mr58TmHJ1eNwHZJQZt/gX7bY7S8Vl0ghA=;
        b=aDagWHCh5WDasDBpESrqv8798by7BDMFZOcM4yB5LPIBEIe7a8FXtM8MvDAdd9v1pP
         o2flZwuiDYt2pHwRlCH9cdaxZGP9QXMi3LHAFEnoljBAzzlN9uwKEGEPvi+OWGuI10KA
         pj7g7KFOq9otxJ+WlMAhlkPjRJsudvO/2qmcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778203573; x=1778808373;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=lHMHMqUFw3Mr58TmHJ1eNwHZJQZt/gX7bY7S8Vl0ghA=;
        b=Sibr2uvZFIuwyrv2xHE8dInQkRxA7dUW5FdQnJZ8UXnwN2hDwZMQIlZBNOowYN3sC6
         nRCaty36EMKWzGKwMKHR55t9B5ZpbQVsdDYT7l4XPbDIOW0QpEOBC/K1t4Jju7oE9AKV
         8B1XVO4AhcXaSUaav2GAzZtRsse0rU6NoQPnZE97eB7MEzUpTefAW9LhTkS2FoEBHxJ4
         VLKJbamAPdmw8ub9QUsYlQ/eHxelqQnGlRQxXcPl0ZZbnRI7xMWIX4yJ+XzizazoyGSG
         4gk2gRJmXnWMaeiK2+Vnv0z0+YtUSP8Q66aYSNcrpYBYfv8NkmV/R8SMDMCclxKO9P2z
         C+ag==
X-Forwarded-Encrypted: i=1; AFNElJ9eqVHdPOrCKInZK6W/G56uRKYht+RMLqxFzyStOW2l/eE77twFDm5c7cfy7Q1w44DmPwZSpw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx628nuG7WokZ1pghE0/9iVLcdjc4my97uC2NEJ3W2KNcRsnYI9
	ibhDiw0Ngo7/FekaxFOivGv7Sm6gG9fdYLT61A+EQoVKtp0bOB+gaXE6C3XQ/8+mfv/XEne7keL
	39tLn
X-Gm-Gg: Acq92OF+oQco4415x26MbsWlZpeddSMArc/X3zr/0WFlu/FWpdcl+f1V1rkNtI8y27Z
	mG0zDWkjajHIgSCrTebcMkuBe/pawJGqP7nGw4drkrXSaXMRj1QK2r26GLO94Yz4qZHMDAjCbqn
	lf6UOz2xFr1BET9leCOZlFE21o8gTex3SOHMIX9Fdt0IuOjHGoGUdQ65pVuFWoHhTGO2kWouX3d
	8ghXtO3DOhnSSM5pVmfNwth/idkK/8cgk0yvDPKtobFANtt78ntN/K7sI/QJZ3PTwBUwunRKfL8
	sIwc7TqEEgH6v8iyXM7o7EPDs1ZhF/eqrn7IXc9siz3XwgWEHd9m6yJMhmE98yMNi2omfBzQsus
	dlXIBuTr9n7p2k+iDSn3pwvxZThy3Sr9uR0arO/PM7tkxbAOqv1PP6Y2pi4SjlSOvUWjE0byHZO
	Z6XmRkkvkgxxojE429qSPUSxPp1RpyXvkcYY8Qt9c853By6Ue8yC7DlyPEgWvYO9A=
X-Received: by 2002:a17:903:28c:b0:2b2:45b7:306e with SMTP id d9443c01a7336-2baf0cf2c98mr5947575ad.3.1778203573455;
        Thu, 07 May 2026 18:26:13 -0700 (PDT)
Received: from localhost (c-98-232-159-17.hsd1.or.comcast.net. [98.232.159.17])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2baf1d405adsm1320895ad.28.2026.05.07.18.26.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 May 2026 18:26:13 -0700 (PDT)
From: tim.orling@konsulko.com
To: o=yocto-patches@lists.yoctoproject.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH 08/11] scripts: add run-vcontainer-tests for meta-virtualization
Date: Thu,  7 May 2026 18:25:37 -0700
Message-ID: <eb9eeef2941f004f675e208ba300d448fec7b95a.1778202125.git.tim.orling@konsulko.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1778202125.git.tim.orling@konsulko.com>
References: <cover.1778202125.git.tim.orling@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 May 2026 01:26:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66509

From: Tim Orling <tim.orling@konsulko.com>

Add scripts/run-vcontainer-tests, the test runner used by the
vcontainer test jobs. It sources the vcontainer-tarball SDK,
discovers the meta-virtualization pytest suite, and runs a
configurable set of suites (vdkr, vpdmn, memres) against the
checked-out layers. Suites can be selected per-step so the
top-level 'vcontainer-tests' job runs the container engine
agnostic tests:

- tests/test_container_cross_install.py
- tests/test_container_registry_script.py
- tests/test_vcontainer_auth_config.py
- tests/test_multiarch_oci.py
- tests/test_multilayer_oci.py

The 'vdkr-tests' and 'vpdmn-tests' jobs run only their respective
suites (including memres for each container engine):

- tests/test_vdkr.py
- tests/test_vdkr_registry.py

and

- tests/test_vpdmn.py

AI-Generated: Claude Cowork Opus 4.7
Signed-off-by: Tim Orling <tim.orling@konsulko.com>
---
 scripts/run-vcontainer-tests | 165 +++++++++++++++++++++++++++++++++++
 1 file changed, 165 insertions(+)
 create mode 100755 scripts/run-vcontainer-tests

diff --git a/scripts/run-vcontainer-tests b/scripts/run-vcontainer-tests
new file mode 100755
index 0000000..cbb5544
--- /dev/null
+++ b/scripts/run-vcontainer-tests
@@ -0,0 +1,165 @@
+#!/bin/bash
+#
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Run meta-virtualization pytest test suites against the vcontainer
+# standalone SDK (vdkr/vpdmn) that was built by the previous bitbake
+# step.
+#
+# Arguments:
+#   $1 - suite name: one of "vcontainer", "vdkr", "vpdmn"
+#   $2 - bitbake build directory (${BUILDDIR})
+#   $3 - path to the meta-virtualization layer
+#
+# Optional environment variables:
+#   RESULTS_DIR     - directory to copy pytest artefacts (junit xml / log) to
+#   VCONTAINER_EXTRACT_DIR - where to extract the standalone SDK tarball
+#                     (default: ${builddir}/vcontainer-test-extracted)
+#   TEST_OCI_IMAGE  - path to an OCI image directory (enables vdkr/vpdmn
+#                     import tests)
+#   VDKR_ARCH       - target architecture for vdkr/vpdmn tests (default: x86_64)
+#
+# The script is intentionally conservative: any pytest tests that cannot run
+# in the CI environment (those marked "slow", "network", "boot") are skipped
+# are skipped so that the autobuilder step completes without needing network
+# access. Those can be re-enabled by exporting META_VIRT_PYTEST_MARKERS
+# before invocation.
+#
+# It is assumed that /dev/kvm is writable by the CI user running the tests,
+# since the performance is significantly faster with 'memres'.
+#
+
+set -e
+set -u
+set -o pipefail
+set -x
+
+if [ $# -lt 3 ]; then
+    echo "Usage: $0 <suite> <builddir> <meta-virtualization-dir>" >&2
+    echo "  suite: vcontainer | vdkr | vpdmn" >&2
+    exit 2
+fi
+
+suite="$1"
+builddir=$(realpath "$2")
+metavirtdir=$(realpath "$3")
+
+if [ ! -d "$metavirtdir/tests" ]; then
+    echo "ERROR: meta-virtualization tests directory not found at $metavirtdir/tests" >&2
+    exit 1
+fi
+
+# Locate the vcontainer standalone SDK tarball. Prefer an externally-built
+# SDK passed via VCONTAINER_SDK (the autobuilder -tests jobs share the SDK
+# produced by the separate vcontainer-tarball builder), and fall back to
+# looking in the local build's deploy/sdk directory when running stand-alone.
+sdk_tarball=""
+if [ -n "${VCONTAINER_SDK:-}" ]; then
+    if [ -f "$VCONTAINER_SDK" ]; then
+        sdk_tarball="$VCONTAINER_SDK"
+    else
+        echo "ERROR: VCONTAINER_SDK=$VCONTAINER_SDK is set but not a file" >&2
+        exit 1
+    fi
+fi
+if [ -z "$sdk_tarball" ]; then
+    sdk_tarball="$builddir/tmp/deploy/sdk/vcontainer-standalone.sh"
+    if [ ! -f "$sdk_tarball" ]; then
+        # Try to find any matching tarball in case naming changed (e.g. versioned)
+        alt=$(ls -1 "$builddir"/tmp/deploy/sdk/vcontainer-*.sh 2>/dev/null | head -n1 || true)
+        if [ -n "$alt" ]; then
+            sdk_tarball="$alt"
+        else
+            echo "ERROR: vcontainer standalone SDK not found." >&2
+            echo "       Set VCONTAINER_SDK to an existing SDK installer, or" >&2
+            echo "       build vcontainer-tarball so $builddir/tmp/deploy/sdk/vcontainer-standalone.sh exists." >&2
+            exit 1
+        fi
+    fi
+fi
+
+extract_dir="${VCONTAINER_EXTRACT_DIR:-$builddir/vcontainer-test-extracted}"
+rm -rf "$extract_dir"
+mkdir -p "$(dirname "$extract_dir")"
+
+# Self-extracting installer (silent, -y agrees to license, -d picks dir)
+"$sdk_tarball" -d "$extract_dir" -y
+
+# Prepare a Python venv so we don't pollute the worker's system packages.
+python3 -m venv "$builddir/meta-virt-test-venv"
+# shellcheck disable=SC1091
+source "$builddir/meta-virt-test-venv/bin/activate"
+# Avoid warnings by upgrading pip; install pytest/pexpect into the venv via pip.
+python3 -m pip install --quiet --upgrade pip setuptools wheel
+python3 -m pip install --quiet --upgrade pytest pytest-timeout pexpect
+
+# Default marker filter excludes long running / infrastructure dependent tests.
+marker_filter="${META_VIRT_PYTEST_MARKERS:-not slow and not network and not boot and not incus and not k3s}"
+
+# Per-suite test file selection. Uses -k/-m for fine-grained filtering and
+# keeps the CLI small for logging clarity.
+case "$suite" in
+    vdkr)
+        test_files=(
+            "tests/test_vdkr.py"
+            "tests/test_vdkr_registry.py"
+        )
+        ;;
+    vpdmn)
+        test_files=(
+            "tests/test_vpdmn.py"
+        )
+        ;;
+    vcontainer)
+        # Broad vcontainer/bbclass/tooling coverage that doesn't require the
+        # vdkr/vpdmn CLI harness to be running.
+        test_files=(
+            "tests/test_container_cross_install.py"
+            "tests/test_container_registry_script.py"
+            "tests/test_vcontainer_auth_config.py"
+            "tests/test_multiarch_oci.py"
+            "tests/test_multilayer_oci.py"
+        )
+        ;;
+    *)
+        echo "ERROR: unknown suite '$suite' (expected vcontainer|vdkr|vpdmn)" >&2
+        exit 2
+        ;;
+esac
+
+pytest_args=(
+    -v
+    --tb=short
+    -m "$marker_filter"
+    --vdkr-dir "$extract_dir"
+    --junitxml="$builddir/pytest-$suite-results.xml"
+)
+
+# Allow tests that consume an OCI image (import/save/load) to find one.
+if [ -n "${TEST_OCI_IMAGE:-}" ] && [ -d "${TEST_OCI_IMAGE}" ]; then
+    pytest_args+=(--oci-image "$TEST_OCI_IMAGE")
+fi
+
+# Pass architecture through when set in the environment (default is x86_64).
+if [ -n "${VDKR_ARCH:-}" ]; then
+    pytest_args+=(--arch "$VDKR_ARCH")
+fi
+
+cd "$metavirtdir"
+# Don't let a single failing test kill the whole step - collect the junit
+# report, then surface the exit code via the junit file + exit status.
+set +e
+python3 -m pytest "${pytest_args[@]}" "${test_files[@]}"
+rc=$?
+set -e
+
+# Copy artefacts to the results dir if one was provided.
+if [ -n "${RESULTS_DIR:-}" ]; then
+    mkdir -p "$RESULTS_DIR"
+    cp -f "$builddir/pytest-$suite-results.xml" "$RESULTS_DIR/" 2>/dev/null || true
+    if [ -f /tmp/pytest-vcontainer.log ]; then
+        cp -f /tmp/pytest-vcontainer.log "$RESULTS_DIR/pytest-$suite.log" || true
+    fi
+fi
+
+exit $rc
-- 
2.43.0


