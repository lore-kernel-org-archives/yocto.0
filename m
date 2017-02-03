Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4342E00A28; Fri,  3 Feb 2017 00:46:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99324E00A03
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:43 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id c7so7556976itd.1
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=5xXsgsF4L/SbwVk104DSzmFWo4DyuhnLPIomm0FRhME=;
	b=Y/03SeQK3o98CvswFUGGUrzJP4rlSFNS1RUL5crsVJL43NuT45zolwKY/MJsZHH4Oz
	MoFUNuiAcqLKKCdfEwqFfpC+yLJKolczsfiEuFyZkJXzdy/QW/s5q8afLbu7tM2qdx8B
	R7a52IJxKiuXqd/wmy5eh0z8VKBbLDhlrRXZgl4zvAJTMPVU/eKfURQxGA4ShwPikNIE
	MD8hIi4H5jfQDep/Syjm+KAKK2VUHUrHxdPpWHY/ZWJXtrLQ9B911atWPJJ0zGQbk+yw
	4b3OTPON7TDLKlChrW0+Tkql6Km+/reCRPfPs/qBRQbkZimgg5qCOpsH2wmyh9AOU3+W
	VXGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=5xXsgsF4L/SbwVk104DSzmFWo4DyuhnLPIomm0FRhME=;
	b=mw3wOD1QB5/xUjSu4RSuL7ycI2hbdqFoU3FeerqvhQBMFGZDqJlH+WwxWKb6DFlNrR
	8rOIj0EKMVe20jQulnkRubWoEomyrgNwmZ2vqqeWgJOkU7p2U3ME6lR4uM5/YX7uc+K5
	CQwn810+sSvh6CAKkbIkQNql1udoJ1QS0jI64TiI3ntM92knpny8hHcdUqe5BSfjnpVD
	F/RtAlrgj10Kwa+ge/P49lB0rWdPAmlHvcTkQAtNxnmyTzlVgvS6mDm1hMvpQ4Es5TF7
	IM+3p8qzOasaKQQh3GY242gnzs3eRUsBLb7a7IDcvrNOkLnGnbznDehwoELortHJ7N6n
	kl/w==
X-Gm-Message-State: AIkVDXLCSRWpUg0jbs0oWCBQgslf5GgvWMRGtCaw84yxiylajOxaTQKayrH+N0ZrFo9EnfTm
X-Received: by 10.36.25.83 with SMTP id b80mr208230itb.98.1486111602800;
	Fri, 03 Feb 2017 00:46:42 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.40
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:41 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:13 +0100
Message-Id: <b37540c011d725e246bc414abaf7efda3bf5e472.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 8/9] swtpm-wrappers: simplify using swtpm-native
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:57 -0000

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

The resulting "my-machine/myvtpm0" can then be used with swtpm (this
time, it really has to be running as root because it uses CUSE to
create /dev/vtpm0, and an absolute path is needed for the tpm state
dir) and qemu-tpm (patches not currently in OE-core, have to be
applied manually):

$ sudo tmp-glibc/work/x86_64-linux/swtpm-wrappers/1.0-r0/swtpm_cuse_oe.sh -n vtpm0 --tpmstate dir=`pwd`/my-machine/myvtpm0
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

