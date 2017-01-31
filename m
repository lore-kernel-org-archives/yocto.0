Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F8AEE00A0A; Mon, 30 Jan 2017 23:48:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.169 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 015B8E009AA
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:38 -0800 (PST)
Received: by mail-io0-f169.google.com with SMTP id j13so125589782iod.3
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 23:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=WgCcd5hV1xOXWXu090CP43sQhhL2t2NlKuIkip8hftg=;
	b=CHruWwXlGs3dHG1EkogbOFuwFbckE7lSVqntwsRiFQZM1MKkUKbBEftbe3c9E7yy1x
	qY2CFFI8HCBNtibHOlmYRomIwwKXWftFw2TjZFuM0Yv5+L6PTsZulJHPwi4N46YFedGa
	jtcPnDzWEUmOVni0y7H0Wl9b7EyJK5U/t1r8mJARtkhM+7n3MaHVWfVBX+sZ6L0sFiNW
	sFI/glQbY3+6x33yzMCzux526dWj8F4Y4/ebSWHn+fPDesRTDw63Ww8WGanoPX+WHbcP
	ug9HR9VCdJSQkvuQ4qJu4DXHXdcMDxyZ4OabNnhqsNQnTTp1PC7bEKDtI71oZjp/netU
	DiUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=WgCcd5hV1xOXWXu090CP43sQhhL2t2NlKuIkip8hftg=;
	b=MT93AwTjl96VmReZFrYZe8Me84nqzXv5xUHvolohxoXCCK1GtrN/QSJ/GFs21wFsle
	smNDkUwy6R+TEdwWKrj6J5xTapxDSn9y0jNNfQQ4EST6byge7dv9rFo7gfOvfmvp3269
	F4xmnm9XRsQSlNisSThpHUTC7skNcL4rbiTkVKkOevr+rM2lGBsEjzYniGvamxSEJcjY
	69ZWJCHAdm+TBt7yv6C5nHLwGNc3HYOrNK51c/ijNnrzgW0deMvZdFcJNLvlrSE3yU5P
	qhJVsvD9Kec9myS5FqfopRHm4tUiRzjBlhsYg8x+O1fM3P51CEY0XaDHMP7Tt01cv+gm
	1/yw==
X-Gm-Message-State: AIkVDXKfHjOKizSgmHzD0aCXS49/icCEfh4+CcG4GRhfYMw0UVVuAi8taohysEmf1V0OK9Bo
X-Received: by 10.107.158.143 with SMTP id h137mr1043731ioe.43.1485848918090; 
	Mon, 30 Jan 2017 23:48:38 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8DFEB.dip0.t-ipconnect.de.
	[93.232.223.235])
	by smtp.gmail.com with ESMTPSA id 86sm9758942iok.8.2017.01.30.23.48.36
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 30 Jan 2017 23:48:37 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 31 Jan 2017 08:48:07 +0100
Message-Id: <28a45876c170ac7913df2b4ad78577bbc0b0790f.1485848669.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
References: <cover.42397547dfc6733226cafa5b4b6bbe50956b78cf.1485848669.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH 8/8] swtpm-wrappers: simplify using swtpm-native
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
X-List-Received-Date: Tue, 31 Jan 2017 07:48:45 -0000

Native tools exist in recipe specific sysroots and are normally
not meant to be called from outside a build. But that's what we
need to do when using swtpm-native together with qemu, so these
wrappers make that possible by setting up the necessary environment
and hiding the internal paths.

Invoking swtpm_setup.sh gets some special support: swtpm_setup.sh runs
two daemons, tcsd and swtpm, of which tcsd insists on running as root
or tss. In practice, running as the normal user is perfectly
fine. Instead of patching the upstream source code, the approach take
here is to run under pseudo.

Usage examples:

$ bitbake swtpm-wrappers
$ mkdir -p my-machine/myvtpm0
$ tmp-glibc/work/x86_64-linux/swtpm-wrappers/1.0-r0/swtpm_setup_oe.sh --tpm-state my-machine/myvtpm0
Starting vTPM manufacturing as root:root @ Mon 16 Jan 2017 04:09:21 PM CET
TPM is listening on TCP port 55675.
-rw------- 1 root root 65 Jan 16 16:09 /tmp/tmp.2yJBKTTwRk
Ending vTPM manufacturing @ Mon 16 Jan 2017 04:09:21 PM CET

The resulting "my-machine/myvtpm0" can then be used with swtpm (this time,
it really has to be running as root because it uses CUSES to create /dev/vtpm0)
and qemu-tpm (patches not currently in OE-core, have to be applied manually):

$ sudo env TPM_DIR=my-machine/myvtpm0 tmp-glibc/work/x86_64-linux/swtpm-wrappers/1.0-r0/swtpm_cuse_oe.sh -n vtpm0
$ sudo chmod a+rw /dev/vtpm0
$ runqemu ... 'qemuparams=-tpmdev cuse-tpm,id=tpm0,path=/dev/vtpm0 -device tpm-tis,tpmdev=tpm0'

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm-wrappers.bb | 41 ++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+)
 create mode 100644 recipes-tpm/swtpm/swtpm-wrappers.bb

diff --git a/recipes-tpm/swtpm/swtpm-wrappers.bb b/recipes-tpm/swtpm/swtpm-wrappers.bb
new file mode 100644
index 0000000..676c35e
--- /dev/null
+++ b/recipes-tpm/swtpm/swtpm-wrappers.bb
@@ -0,0 +1,41 @@
+SUMMARY = "SWTPM - OpenEmbedded wrapper scripts for native swtpm tools"
+LICENSE = "MIT"
+DEPENDS = "swtpm-native tpm-tools-native"
+
+inherit native
+
+# The whole point of the recipe is to make files available
+# for use after the build is done, so don't clean up...
+RM_WORK_EXCLUDE += "${PN}"
+
+do_create_wrapper () {
+    cat >${WORKDIR}/swtpm_setup_oe.sh <<EOF
+#! /bin/sh
+#
+# Wrapper around swtpm_setup.sh which adds parameters required to
+# run the setup as non-root directly from the native sysroot.
+
+PATH="${bindir}:${base_bindir}:${sbindir}:${base_sbindir}:\$PATH"
+export PATH
+
+# tcsd only allows to be run as root or tss. Pretend to be root...
+exec env ${FAKEROOTENV} ${FAKEROOTCMD} swtpm_setup.sh --config ${STAGING_DIR_NATIVE}/etc/swtpm_setup.conf "\$@"
+EOF
+
+    cat >${WORKDIR}/swtpm_cuse_oe.sh <<EOF
+#! /bin/sh
+#
+# Wrapper around swtpm_cuse which makes it easier to invoke
+# the right binary. Has to be run as root with TPM_PATH set
+# to a directory initialized as virtual TPM by swtpm_setup_oe.sh.
+
+PATH="${bindir}:${base_bindir}:${sbindir}:${base_sbindir}:\$PATH"
+export PATH
+
+exec swtpm_cuse "\$@"
+EOF
+
+    chmod a+rx ${WORKDIR}/*.sh
+}
+
+addtask do_create_wrapper before do_build after do_prepare_recipe_sysroot
-- 
git-series 0.9.1

