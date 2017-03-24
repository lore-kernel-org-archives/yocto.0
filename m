Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DCC8E009C2; Fri, 24 Mar 2017 02:12:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3ED59E00724
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 02:12:34 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id z13so13095341iof.2
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 02:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=stAG+elHAxj8PUimfE//zdipeuvZSSn/42uPuUGNYu8=;
	b=r8fGSlCWzoHiPOW4rwhdBUwlDRhOqgZG+P95EOoZxfzf6CXBJShuJfE43mPRIKYs5R
	OHn1gYkpUDRlQtQMGqgQY0pOF8wS9/ysPKT1yNu/249AWkhwAEnyu3okBfwBuFmVF4qu
	FIY8O/WsOudY+0JDECdx43965c/sz2J88J3qr1zPmkBoiyM004gP7AdhjFux7iFWbY2s
	LWpphlslMOum1j8wutlaQiKdNgtW4Bef7Q7mlNvYj6FUxkyCithXXKSBIMhQ7SYvvXF8
	SpAJ4NUo2+JUSIkdpiOKys7C9Kx/gND/qiT2+gU7CcD5Q4X9EFr27crpsXFuAFsjOQSr
	OuCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=stAG+elHAxj8PUimfE//zdipeuvZSSn/42uPuUGNYu8=;
	b=T6O8jY90MWB/+ek0YW+YhvlKYjeuOukAcVOwPmHK9Hx/qRC8Z25RLgDd/w3hbD4B6c
	725gmlSghKd1BLxrHgIZ6AugPe0UJ8Cdxx5hwFWmjsVABZUOf3gf0xEu401ynIivxn8O
	OexqFN9GiU3cPv7dOJbHIZQe2s37wzxvOnunH2ATeScK76kjgF6FBtHquDa6XMtNrmHh
	mklRB+dPPTKh7Wv2cgg2NlgPF5oDvVY0QMph3eaQ8QjP9S2VxsS9ZiXbvwxuBBEg0ca1
	PP+Zf7tU81vLiTRK0Gx/iuLD89/VocuT6ZAEUSoiLTDwIrK0R01Pi7g3vRMcR1wlhsra
	h9Qg==
X-Gm-Message-State: AFeK/H0JfC6NVO7fYrHUOpnZp+haICg/my2Kwn6nl01JqCVTL3YptIMj79Q285JvaVKvXhFU
X-Received: by 10.107.6.212 with SMTP id f81mr6915697ioi.132.1490346754444;
	Fri, 24 Mar 2017 02:12:34 -0700 (PDT)
Received: from pohly-desktop.fritz.box (p5DE8E2F9.dip0.t-ipconnect.de.
	[93.232.226.249])
	by smtp.gmail.com with ESMTPSA id p191sm715449itc.4.2017.03.24.02.12.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 24 Mar 2017 02:12:33 -0700 (PDT)
From: Patrick Ohly <patrick.ohly@intel.com>
To: akuster808@gmail.com
Date: Fri, 24 Mar 2017 10:12:22 +0100
Message-Id: <b51ad3ae08300fd3f37c597cbc3b7903388d3f8a.1490346453.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Cc: yocto@yoctoproject.org
Subject: [meta-security][PATCH] swtpm-wrappers: wrap more commands
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
X-List-Received-Date: Fri, 24 Mar 2017 09:12:37 -0000

Soon it might be possible to let qemu start swtpm directly, without
requiring root privileges as for swtpm_cuse. For that to work
we also need to wrap the swtpm binary. Just in case we now also
do it for everything.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm-wrappers.bb | 26 +++++++++++++++++++-------
 1 file changed, 19 insertions(+), 7 deletions(-)

diff --git a/recipes-tpm/swtpm/swtpm-wrappers.bb b/recipes-tpm/swtpm/swtpm-wrappers.bb
index 676c35e..0af1db6 100644
--- a/recipes-tpm/swtpm/swtpm-wrappers.bb
+++ b/recipes-tpm/swtpm/swtpm-wrappers.bb
@@ -9,7 +9,13 @@ inherit native
 RM_WORK_EXCLUDE += "${PN}"
 
 do_create_wrapper () {
-    cat >${WORKDIR}/swtpm_setup_oe.sh <<EOF
+    # Wrap (almost) all swtpm binaries. Some get special wrappers and some
+    # are not needed.
+    for i in `find ${bindir} ${base_bindir} ${sbindir} ${base_sbindir} -name 'swtpm*' -perm /+x -type f`; do
+        exe=`basename $i`
+        case $exe in
+            swtpm_setup.sh)
+                cat >${WORKDIR}/swtpm_setup_oe.sh <<EOF
 #! /bin/sh
 #
 # Wrapper around swtpm_setup.sh which adds parameters required to
@@ -21,19 +27,25 @@ export PATH
 # tcsd only allows to be run as root or tss. Pretend to be root...
 exec env ${FAKEROOTENV} ${FAKEROOTCMD} swtpm_setup.sh --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
 EOF
-
-    cat >${WORKDIR}/swtpm_cuse_oe.sh <<EOF
+                ;;
+            swtpm_setup)
+                true
+                ;;
+            *)
+                cat >${WORKDIR}/${exe}_oe.sh <<EOF
 #! /bin/sh
 #
-# Wrapper around swtpm_cuse which makes it easier to invoke
-# the right binary. Has to be run as root with TPM_PATH set
-# to a directory initialized as virtual TPM by swtpm_setup_oe.sh.
+# Wrapper around $exe which makes it easier to invoke
+# the right binary.
 
 PATH="${bindir}:${base_bindir}:${sbindir}:${base_sbindir}:\$PATH"
 export PATH
 
-exec swtpm_cuse "\$@"
+exec ${exe} "\$@"
 EOF
+                ;;
+        esac
+    done
 
     chmod a+rx ${WORKDIR}/*.sh
 }

base-commit: 8b38c93f2387793fb03d082e47723002cf667ae9
-- 
git-series 0.9.1

