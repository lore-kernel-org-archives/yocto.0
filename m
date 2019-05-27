Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 451ECE00C7D; Sun, 26 May 2019 21:56:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C748EE00C7D
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:46 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id h2so5331646pgg.1
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=9iKO/w/mmEiYJf3RxYNpraqfoU23C4ua3EyGN9mzgUg=;
	b=HUtF3idSEEQwA+sp+KbtDgamQmTacDAY3D8rOwOCinRsVrhvCGNJVzklhmg9Fy0Yv/
	W8vfP6YPwIN/+W3lLsnDiMTQPu3pLeNANI3xbLVzJ5JQJNh1txKtlxVJGnQfcWcZBWha
	4UnidViA6+zlGVmA5YlPpnDhaJb9FQAGfC0VpJvJxM9UrDn0Tm53ac2xnvuJaAvLgaF/
	BWNDyJPzTo9aB6maMjb4Um+Ffs0MKed2f7daIjTXVR9q3+MUSRLhgf6FXUBBMB8XRbJg
	RgbMxIhoN/i56d8/boDEgAGHz3pwV2dGlUCf+H7P0nJkEnmbWE5zV6hAUEHSBh70qAor
	NSeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=9iKO/w/mmEiYJf3RxYNpraqfoU23C4ua3EyGN9mzgUg=;
	b=XJJsbaxHmg7uXkzjMVHeaMS04IGJCpxIwtj9YEDEZS/XPv2JX+I0XKD3CEkpK6aT1m
	fmCLzp91czIQvmcCh/vYYvGBr+2CcaT6iNKpS67a93bw6JY2XXxVKpypsvhw1Pd5J3x+
	jdMszCqskLRH01Al1DdpkmaxFaZZTblgnVT1V06NalZjP95cqda6Ypa6PC96M86jIwLn
	Ku05Z7weFHxBBNx8LtYfVQfIUSk5VPHGEnGpW4PmhTI6gviVMaANigswYyu1BHWnc6rC
	2z97k6/90ywjjxH+G1hFlvbe1w/dXKWbBUJVDify09xZ61uFKQC0iclalPy04RpfnVYz
	Ub/g==
X-Gm-Message-State: APjAAAWPbwoKtEPa1gPlqXHkVJSGfY0KgKfwl699DWqwMYRJ272XdDvz
	jAJSJRrJAkUrvvPuC0vPAOJ2XfQG
X-Google-Smtp-Source: APXvYqzsIhGnf7mnORwqtwutp8b9rVdBIoIVtXfJVioYFp0HXubT1lyiDVPsqcycfQHnvJw+dGOMJg==
X-Received: by 2002:a65:550b:: with SMTP id f11mr26458055pgr.311.1558933004585;
	Sun, 26 May 2019 21:56:44 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.43 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:44 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:28 -0700
Message-Id: <20190527045641.18884-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 01/14] meta-integrity: port over from meta-intel-iot-security
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
X-List-Received-Date: Mon, 27 May 2019 04:56:51 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/README.md                      | 253 ++++++++++++++++++
 meta-integrity/classes/ima-evm-rootfs.bbclass |  92 +++++++
 meta-integrity/conf/layer.conf                |  22 ++
 .../data/debug-keys/privkey_ima.pem           |  16 ++
 meta-integrity/data/debug-keys/x509_ima.der   | Bin 0 -> 707 bytes
 meta-integrity/data/ima_policy_appraise_all   |  29 ++
 meta-integrity/data/ima_policy_hashed         |  77 ++++++
 meta-integrity/data/ima_policy_simple         |   4 +
 meta-integrity/lib/oeqa/runtime/__init__.py   |   0
 meta-integrity/lib/oeqa/runtime/ima.py        |  82 ++++++
 .../initrdscripts/initramfs-framework-ima.bb  |  32 +++
 .../initrdscripts/initramfs-framework-ima/ima |  52 ++++
 .../packagegroup-ima-evm-utils.bb             |   9 +
 .../systemd/files/machine-id-commit-sync.conf |   2 +
 .../systemd/files/random-seed-sync.conf       |   3 +
 .../recipes-core/systemd/systemd_%.bbappend   |  13 +
 .../recipes-kernel/linux/linux-%.bbappend     | 116 ++++++++
 .../0001-ima-fix-ima_inode_post_setattr.patch |  51 ++++
 ...for-creating-files-using-the-mknodat.patch | 138 ++++++++++
 ...-file-hash-setting-by-user-to-fix-an.patch |  60 +++++
 .../recipes-kernel/linux/linux/ima.cfg        |  16 ++
 .../linux/linux/ima_evm_root_ca.cfg           |   3 +
 .../ima-evm-utils/ima-evm-utils.inc           |  19 ++
 ...nd-line-apply-operation-to-all-paths.patch |  68 +++++
 .../ima-evm-utils/disable-doc-creation.patch  |  50 ++++
 ...t-depend-on-xattr.h-with-IMA-defines.patch |  47 ++++
 .../ima-evm-utils/ima-evm-utils_git.bb        |  17 ++
 meta-integrity/scripts/ima-gen-CA-signed.sh   |  48 ++++
 meta-integrity/scripts/ima-gen-local-ca.sh    |  42 +++
 meta-integrity/scripts/ima-gen-self-signed.sh |  41 +++
 30 files changed, 1402 insertions(+)
 create mode 100644 meta-integrity/README.md
 create mode 100644 meta-integrity/classes/ima-evm-rootfs.bbclass
 create mode 100644 meta-integrity/conf/layer.conf
 create mode 100644 meta-integrity/data/debug-keys/privkey_ima.pem
 create mode 100644 meta-integrity/data/debug-keys/x509_ima.der
 create mode 100644 meta-integrity/data/ima_policy_appraise_all
 create mode 100644 meta-integrity/data/ima_policy_hashed
 create mode 100644 meta-integrity/data/ima_policy_simple
 create mode 100644 meta-integrity/lib/oeqa/runtime/__init__.py
 create mode 100644 meta-integrity/lib/oeqa/runtime/ima.py
 create mode 100644 meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
 create mode 100644 meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
 create mode 100644 meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
 create mode 100644 meta-integrity/recipes-core/systemd/files/machine-id-commit-sync.conf
 create mode 100644 meta-integrity/recipes-core/systemd/files/random-seed-sync.conf
 create mode 100644 meta-integrity/recipes-core/systemd/systemd_%.bbappend
 create mode 100644 meta-integrity/recipes-kernel/linux/linux-%.bbappend
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima.cfg
 create mode 100644 meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
 create mode 100755 meta-integrity/scripts/ima-gen-CA-signed.sh
 create mode 100755 meta-integrity/scripts/ima-gen-local-ca.sh
 create mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh

diff --git a/meta-integrity/README.md b/meta-integrity/README.md
new file mode 100644
index 0000000..ba96d8e
--- /dev/null
+++ b/meta-integrity/README.md
@@ -0,0 +1,253 @@
+This README file contains information on the contents of the
+integrity layer.
+
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+    URI: git://git.openembedded.org/bitbake
+    branch: master
+
+    URI: git://git.openembedded.org/openembedded-core
+    layers: meta
+    branch: master
+
+    URI: git://github.com/01org/meta-security/meta-integrate
+    layers: security-framework
+    branch: master
+
+
+Patches
+=======
+
+Please submit any patches against the integrity layer via Github
+pull requests.
+
+For discussion or patch submission via email, use the
+yocto@yoctoproject.org mailing list. When submitting patches that way,
+make sure to copy the maintainer and add a "[meta-]"
+prefix to the subject of the mails.
+
+Maintainer: Armin Kuster <akuster808@gmail.com>
+
+
+Table of Contents
+=================
+
+1. Adding the integrity layer to your build
+2. Usage
+3. Known Issues
+
+
+1. Adding the integrity layer to your build
+===========================================
+
+In order to use this layer, you need to make the build system aware of
+it.
+
+Assuming the security repository exists at the top-level of your
+yocto build tree, you can add it to the build system by adding the
+location of the integrity layer to bblayers.conf, along with any
+other layers needed. e.g.:
+
+    BBLAYERS ?= " \
+      /path/to/yocto/meta \
+      /path/to/yocto/meta-yocto \
+      /path/to/yocto/meta-yocto-bsp \
+      /path/to/yocto/meta-security/meta-integrity \
+      "
+
+It has some dependencies on a suitable BSP; in particular the kernel
+must have a recent enough IMA/EVM subsystem. The layer was tested with
+Linux 3.19 and uses some features (like loading X509 certificates
+directly from the kernel) which were added in that release. Your
+mileage may vary with older kernels.
+
+The necessary kernel configuration parameters are added to all kernel
+versions by this layer. Watch out for QA warnings about unused kernel
+configuration parameters: those indicate that the kernel used by the BSP
+does not have the necessary IMA/EVM features.
+
+Adding the layer only enables IMA (see below regarding EVM) during
+compilation of the Linux kernel. To also activate it when building
+the image, enable image signing in the local.conf like this:
+
+    INHERIT += "ima-evm-rootfs"
+    IMA_EVM_KEY_DIR = "${IMA_EVM_BASE}/data/debug-keys"
+
+This uses the default keys provided in the "data" directory of the layer.
+Because everyone has access to these private keys, such an image
+should never be used in production!
+
+For that, create your own keys first. All tools and scripts required
+for that are included in the layer. This is also how the
+``debug-keys`` were generated:
+
+    # Choose a directory for storing keys. Preserve this
+    # across builds and keep its private keys secret!
+    export IMA_EVM_KEY_DIR=/tmp/imaevm
+    mkdir -p $IMA_EVM_KEY_DIR
+    # Build the required tools.
+    bitbake openssl-native
+    # Set up shell for use of the tools.
+    bitbake -c devshell openssl-native
+    cd $IMA_EVM_KEY_DIR
+    # In that shell, create the keys. Several options exist:
+
+    # 1. Self-signed keys.
+    $IMA_EVM_BASE/scripts/ima-gen-self-signed.sh
+
+    # 2. Keys signed by a new CA.
+    # When asked for a PEM passphrase, that will be for the root CA.
+    # Signing images then will not require entering that passphrase,
+    # only creating new certificates does. Most likely the default
+    # attributes for these certificates need to be adapted; modify
+    # the scripts as needed.
+    # $IMA_EVM_BASE/scripts/ima-gen-local-ca.sh
+    # $IMA_EVM_BASE/scripts/ima-gen-CA-signed.sh
+
+    # 3. Keys signed by an existing CA.
+    # $IMA_EVM_BASE/scripts/ima-gen-CA-signed.sh <CA.pem> <CA.priv>
+    exit
+
+When using ``ima-self-signed.sh`` as described above, self-signed keys
+are created. Alternatively, one can also use keys signed by a CA.  The
+``ima-gen-local-ca.sh`` and ``ima-gen.sh`` scripts create a root CA
+and sign the signing keys with it. The ``ima-evm-rootfs.bbclass`` then
+supports adding tha CA's public key to the kernel's system keyring by
+compiling it directly into the kernel. Because it is unknown whether
+that is necessary (for example, the CA might also get added to the
+system key ring via UEFI Secure Boot), one has to enable compilation
+into the kernel explicitly in a local.conf with:
+
+    IMA_EVM_ROOT_CA = "<path to .x509 file, for example the ima-local-ca.x509 created by ima-gen-local-ca.sh>"
+
+
+
+
+To use the personal keys, override the default IMA_EVM_KEY_DIR in your
+local.conf and/or override the individual variables from
+ima-evm-rootfs.bbclass:
+
+    IMA_EVM_KEY_DIR = "<full path>"
+    IMA_EVM_PRIVKEY = "<some other path/privkey_ima.pem>"
+
+By default, the entire file system gets signed. When using a policy which
+does not require that, the set of files to be labelled can be chosen
+by overriding the default "find" expression, for example like this:
+
+    IMA_EVM_ROOTFS_FILES = "usr sbin bin lib -type f"
+
+
+2. Usage
+========
+
+After creating an image with IMA/EVM enabled, one needs to enable
+the built-in policies before IMA/EVM is active at runtime. To do this,
+add one or both of these boot parameters:
+
+    ima_tcb # measures all files read as root and all files executed
+    ima_appraise_tcb # appraises all files owned by root, beware of
+                     # the known issue mentioned below
+
+Instead of booting with default policies, one can also activate custom
+policies in different ways. First, boot without any IMA policy and
+then cat a policy file into
+`/sys/kernel/security/ima/policy`. This can only be done once
+after booting and is useful for debugging.
+
+In production, the long term goal is to load a verified policy
+directly from the kernel, using a patch which still needs to be
+included upstream ("ima: load policy from the kernel",
+<https://lwn.net/Articles/595759/>).
+
+Loading via systemd also works with systemd, but is considered less
+secure (policy file is not checked before activating it). Beware that
+IMA policy loading became broken in systemd 2.18. The modified systemd
+2.19 in meta-security-smack has a patch reverting the broken
+changes. To activate policy loading via systemd, place a policy file
+in `/etc/ima/ima-policy`, for example with:
+
+    IMA_EVM_POLICY_SYSTEMD = "${IMA_EVM_BASE}/data/ima_policy_simple"
+
+To check that measuring works, look at `/sys/kernel/security/ima/ascii_runtime_measurements`
+
+To check that appraisal works, try modifying executables and ensure
+that executing them fails:
+
+    echo "foobar" >>/usr/bin/rpm
+    evmctl ima_verify /usr/bin/rpm
+    rpm --version
+
+Depending on the current appraisal policy, the `echo` command may
+already fail because writing is not allowed. If the file was modified
+and the current appraisal policy allows reading, then `evmctl` will
+report (the errno value seems to be printed always and is unrelated to
+the actual verification failure here):
+
+    Verification failed: 35
+    errno: No such file or directory (2)
+
+After enabling a suitable IMA appraisal policy, reading and/or
+executing the file is no longer allowed:
+
+    # evmctl ima_verify /usr/bin/rpm
+    Failed to open: /usr/bin/rpm
+    errno: Permission denied (13)
+    # rpm --version
+    -sh: /usr/bin/rpm: Permission denied
+
+Enabling the audit kernel subsystem may help to debug appraisal
+issues. Enable it by adding the meta-security-framework layer and
+changing your local.conf:
+    SRC_URI_append_pn-linux-yocto = " file://audit.cfg"
+    CORE_IMAGE_EXTRA_INSTALL += "auditd"
+
+Then boot with "ima_appraise=log ima_appraise_tcb".
+
+Adding auditd is not strictly necessary but helps to capture a
+more complete set of events in /var/log/audit/ and search in
+them with ausearch.
+
+
+3. Known Issues
+===============
+
+EVM is not enabled, for multiple reasons:
+* Signing files in advance with a X509 certificate and then not having
+  any confidential keys on the device would be the most useful mode,
+  but is not supported by EVM [1].
+* EVM signing in advance would only work on the final file system and thus
+  will require further integration work with image creation. The content
+  of the files can be signed for IMA in the rootfs, with the extended
+  attributes remaining valid when copying the files to the final image.
+  But for EVM that copy operation changes relevant parameters (for example,
+  inode) and thus invalidates the EVM hash.
+* On device creation of EVM hashes depends on secure key handling on the
+  device (TPM) and booting at least once in a special mode (file system
+  writable, evm=fix as boot parameter, reboot after opening all files);
+  such a mode is too device specific to be implemented in a generic way.
+
+IMA appraisal with "ima_appraise_tcb" enables rules which are too strict
+for most distros. For example, systemd needs to write certain files
+as root, which is prevented by the ima_appraise_tcb appraise rules. As
+a result, the system fails to boot:
+
+    [FAILED] Failed to start Commit a transient machine-id on disk.
+    See "systemctl status systemd-machine-id-commit.service" for details.
+    ...
+    [FAILED] Failed to start Network Service.
+    See "systemctl status systemd-networkd.service" for details.
+    [FAILED] Failed to start Login Service.
+    See "systemctl status systemd-logind.service" for details.
+
+No package manager is integrated with IMA/EVM. When updating packages,
+files will end up getting installed without correct IMA/EVM attributes
+and thus will not be usable when appraisal is turned on.
+
+[1] http://permalink.gmane.org/gmane.comp.handhelds.tizen.devel/6281
+[2] http://permalink.gmane.org/gmane.comp.handhelds.tizen.devel/6275
diff --git a/meta-integrity/classes/ima-evm-rootfs.bbclass b/meta-integrity/classes/ima-evm-rootfs.bbclass
new file mode 100644
index 0000000..8aec388
--- /dev/null
+++ b/meta-integrity/classes/ima-evm-rootfs.bbclass
@@ -0,0 +1,92 @@
+# No default! Either this or IMA_EVM_PRIVKEY/IMA_EVM_X509 have to be
+# set explicitly in a local.conf before activating ima-evm-rootfs.
+# To use the insecure (because public) example keys, use
+# IMA_EVM_KEY_DIR = "${IMA_EVM_BASE}/data/debug-keys"
+IMA_EVM_KEY_DIR ?= "IMA_EVM_KEY_DIR_NOT_SET"
+
+# Private key for IMA signing. The default is okay when
+# using the example key directory.
+IMA_EVM_PRIVKEY ?= "${IMA_EVM_KEY_DIR}/privkey_ima.pem"
+
+# Public part of certificates (used for both IMA and EVM).
+# The default is okay when using the example key directory.
+IMA_EVM_X509 ?= "${IMA_EVM_KEY_DIR}/x509_ima.der"
+
+# Root CA to be compiled into the kernel, none by default.
+# Must be the absolute path to a der-encoded x509 CA certificate
+# with a .x509 suffix. See linux-%.bbappend for details.
+#
+# ima-local-ca.x509 is what ima-gen-local-ca.sh creates.
+IMA_EVM_ROOT_CA ?= ""
+
+# Sign all regular files by default.
+IMA_EVM_ROOTFS_SIGNED ?= ". -type f"
+# Hash nothing by default.
+IMA_EVM_ROOTFS_HASHED ?= ". -depth 0 -false"
+
+# Mount these file systems (identified via their mount point) with
+# the iversion flags (needed by IMA when allowing writing).
+IMA_EVM_ROOTFS_IVERSION ?= ""
+
+ima_evm_sign_rootfs () {
+    cd ${IMAGE_ROOTFS}
+
+    # Beware that all operations below must also work when
+    # ima_evm_sign_rootfs was already called earlier for the same
+    # rootfs. That's because do_image might again run for various
+    # reasons (including a change of the signing keys) without also
+    # re-running do_rootfs.
+
+    # Copy file(s) which must be on the device. Note that
+    # evmctl uses x509_evm.der also for "ima_verify", which is probably
+    # a bug (should default to x509_ima.der). Does not matter for us
+    # because we use the same key for both.
+    install -d ./${sysconfdir}/keys
+    rm -f ./${sysconfdir}/keys/x509_evm.der
+    install "${IMA_EVM_X509}" ./${sysconfdir}/keys/x509_evm.der
+    ln -sf x509_evm.der ./${sysconfdir}/keys/x509_ima.der
+
+    # Fix /etc/fstab: it must include the "i_version" mount option for
+    # those file systems where writing files is allowed, otherwise
+    # these changes will not get detected at runtime.
+    #
+    # Note that "i_version" is documented in "man mount" only for ext4,
+    # whereas "iversion" is said to be filesystem-independent. In practice,
+    # there is only one MS_I_VERSION flag in the syscall and ext2/ext3/ext4
+    # all support it.
+    #
+    # coreutils translates "iversion" into MS_I_VERSION. busybox rejects
+    # "iversion" and only understands "i_version". systemd only understands
+    # "iversion". We pick "iversion" here for systemd, whereas rootflags
+    # for initramfs must use "i_version" for busybox.
+    #
+    # Deduplicates iversion in case that this gets called more than once.
+    if [ -f etc/fstab ]; then
+       perl -pi -e 's;(\S+)(\s+)(${@"|".join((d.getVar("IMA_EVM_ROOTFS_IVERSION", True) or "no-such-mount-point").split())})(\s+)(\S+)(\s+)(\S+);\1\2\3\4\5\6\7,iversion;; s/(,iversion)+/,iversion/;' etc/fstab
+    fi
+
+    # Sign file with private IMA key. EVM not supported at the moment.
+    bbnote "IMA/EVM: signing files 'find ${IMA_EVM_ROOTFS_SIGNED}' with private key '${IMA_EVM_PRIVKEY}'"
+    find ${IMA_EVM_ROOTFS_SIGNED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_sign --key ${IMA_EVM_PRIVKEY}
+    bbnote "IMA/EVM: hashing files 'find ${IMA_EVM_ROOTFS_HASHED}'"
+    find ${IMA_EVM_ROOTFS_HASHED} | xargs -d "\n" --no-run-if-empty --verbose evmctl ima_hash
+
+    # Optionally install custom policy for loading by systemd.
+    if [ "${IMA_EVM_POLICY_SYSTEMD}" ]; then
+        install -d ./${sysconfdir}/ima
+        rm -f ./${sysconfdir}/ima/ima-policy
+        install "${IMA_EVM_POLICY_SYSTEMD}" ./${sysconfdir}/ima/ima-policy
+    fi
+}
+
+# Signing must run as late as possible in the do_rootfs task.
+# IMAGE_PREPROCESS_COMMAND runs after ROOTFS_POSTPROCESS_COMMAND, so
+# append (not prepend!) to IMAGE_PREPROCESS_COMMAND, and do it with
+# _append instead of += because _append gets evaluated later. In
+# particular, we must run after prelink_image in
+# IMAGE_PREPROCESS_COMMAND, because prelinking changes executables.
+
+IMAGE_PREPROCESS_COMMAND_append = " ima_evm_sign_rootfs ; "
+
+# evmctl must have been installed first.
+do_rootfs[depends] += "ima-evm-utils-native:do_populate_sysroot"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
new file mode 100644
index 0000000..e8bb268
--- /dev/null
+++ b/meta-integrity/conf/layer.conf
@@ -0,0 +1,22 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH =. "${LAYERDIR}:"
+
+# We have a packages directory, add to BBFILES
+BBFILES := "${BBFILES} \
+            ${LAYERDIR}/recipes-*/*/*.bb \
+            ${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "integrity"
+BBFILE_PATTERN_integrity := "^${LAYERDIR}/"
+BBFILE_PRIORITY_integrity = "6"
+
+# Set a variable to get to the top of the metadata location. Needed
+# for finding scripts (when following the README.md instructions) and
+# default debug keys (in ima-evm-rootfs.bbclass).
+IMA_EVM_BASE := '${LAYERDIR}'
+
+# We must not export this path to all shell scripts (as in "export
+# IMA_EVM_BASE"), because that causes problems with sstate (becames
+# dependent on location of the layer). Exporting it to just the
+# interactive shell is enough.
+OE_TERMINAL_EXPORTS += "IMA_EVM_BASE"
diff --git a/meta-integrity/data/debug-keys/privkey_ima.pem b/meta-integrity/data/debug-keys/privkey_ima.pem
new file mode 100644
index 0000000..502a0b6
--- /dev/null
+++ b/meta-integrity/data/debug-keys/privkey_ima.pem
@@ -0,0 +1,16 @@
+-----BEGIN PRIVATE KEY-----
+MIICdQIBADANBgkqhkiG9w0BAQEFAASCAl8wggJbAgEAAoGBAJw2G3d0fM36rcQU
+Bt8V/SapJe0lxWJ+CY+HcMx8AhWY9XQ66AXcqBsRHiUnYCaFGXFI35VKGC6d/Gs6
+IWlHgI0tcTyzy5eul+BKRLy/3PNjkK2jJETlbetQy+gE6gUtg4RmPV5ALGksK74p
+OrAfKnahoMi82NVIiBitwmRimms1AgMBAAECgYBTxciRFU1hAVBy2PKebKJoO0n1
+lc329fSWnmHlp5NOlcr8XCLWEfGtIk7ySd2MitCMKjKNU0EIrv0RXAlS9l9/gBYW
+HY+eEaa6l80sp8q4aPKImSi0pb3LVNqWKXJg8qr4AZ45/TEL/fzILFv5QcY8xDjV
+aj6DOlEnNDjlBlBbQQJBAMyYDlKItes/Rnmtp9roXj3XUfiBDHTLY2HVgDBe87sA
+TOSnbgIv+6urd1h9XvBmJlRYH7YKJmBSZWcSlfdC6XkCQQDDdfkUMxQZo9PC/Eue
+WYzytx4xUm3ItWcuKILtFgcNh3c4s4dMx4X/WhQj5/H/nVOIWDioQ0mrW3ap/qcb
+SBydAkAf/gb/UPFhf9t9W3JMANn7wZfHzCYufT9lJQWOisqCC2H6v1Osc+Rey8k1
+xST7Yn3L4pvS03N8zGWe4IEi0QvBAkAWdTWbNos2rvYjzy05Enz5XkTf0eK/Tuh+
+CzWP3BoPWeM+5pHDJqGkx0rNHVdW0VLJtak83A5Y2/d0bMfygISZAkBFGui4HW+Q
+1BlpmDeslsE11wm5jSmm6Ti12a2dVKGFo9QLQcSj4bfgxtqU2dQaYRmajXtSBrGQ
+3vVaxg2EfqB1
+-----END PRIVATE KEY-----
diff --git a/meta-integrity/data/debug-keys/x509_ima.der b/meta-integrity/data/debug-keys/x509_ima.der
new file mode 100644
index 0000000000000000000000000000000000000000..087ca6bea53c172e7eb9a269183a32b3ecbd3aaa
GIT binary patch
literal 707
zcmXqLV%l%e#H6u+nTe5!iIZVv+B<fqzbpF;c-c6$+C196^D;8BvN9MH8j2VQu`!3T
zaPe@bRwU*Y<fQ5)=jR%l7#M*>nR&ExQ%e$cGxJJPb96KFOLU7<lS_*-ODYwhsuhYe
z)AKU((iO5(D-D$m6ye5mGKz_0<!9vSrR1kNAQ^3-AkJ%OW?*P!Xkcz?VPX;`!Ea<}
zXliI=WC0Zz2uC%}M-CZARtDzAUIv54PNv32hB;=^<s~&|f2}<t!ggQuui8r0x2i{z
z>Nxw`3(nLqiO%?1V)cUc&I)NkIaT!pwN}YOkNZ=-B=qL~$+l9=bZ_X@EwtHudiuKQ
z54>FV?7#CldBWPoDlSiRUk99i!Sae#x49+FHqJpOQ%8HBrqu>{t+Is+PVBjH)uTgV
z?V*&US=pvc%!~|-i(?I<4S0ZYA}h?u_@9NzfWd$p#N%gSVP;})Fpvdt_*lePL~4s`
zQugaO|J%3lww!ZM-Ql35)MNvBkhC(3gn?KCb_J;Ef*I&-Np?M_hE>rYY<6^|I~;xa
zwPE+MRHfh#Rc}<^Dz(|%b>S&FANPNu$metSB98QF{a?zR9B8x4r%*gIV(G8dMimw>
z%xX@bQEQqJf5s&6m2JJt!5Zl!+2vOsrrc9%-=ELhq9Zf=RkD0$-qzVSA1tzD`t3gT
Tmb2cr6|Be84s$JBIky4;ndSL6

literal 0
HcmV?d00001

diff --git a/meta-integrity/data/ima_policy_appraise_all b/meta-integrity/data/ima_policy_appraise_all
new file mode 100644
index 0000000..36e71a7
--- /dev/null
+++ b/meta-integrity/data/ima_policy_appraise_all
@@ -0,0 +1,29 @@
+#
+# Integrity measure policy (http://sourceforge.net/p/linux-ima/wiki/Home/#measure-nothing-appraise-everything)
+# 
+# Do not measure anything, but appraise everything
+#
+# PROC_SUPER_MAGIC
+dont_appraise fsmagic=0x9fa0
+# SYSFS_MAGIC
+dont_appraise fsmagic=0x62656572
+# DEBUGFS_MAGIC
+dont_appraise fsmagic=0x64626720
+# TMPFS_MAGIC
+dont_appraise fsmagic=0x01021994
+# RAMFS_MAGIC
+dont_appraise fsmagic=0x858458f6
+# DEVPTS_SUPER_MAGIC
+dont_appraise fsmagic=0x1cd1
+# BIFMT
+dont_appraise fsmagic=0x42494e4d
+# SECURITYFS_MAGIC
+dont_appraise fsmagic=0x73636673
+# SELINUXFS_MAGIC
+dont_appraise fsmagic=0xf97cff8c
+# NSFS_MAGIC (introduced in 3.19, see cd025f7 and e149ed2 in the upstream Linux kernel)
+dont_appraise fsmagic=0x6e736673
+# EFIVARFS_MAGIC
+dont_appraise fsmagic=0xde5e81e4
+
+appraise
diff --git a/meta-integrity/data/ima_policy_hashed b/meta-integrity/data/ima_policy_hashed
new file mode 100644
index 0000000..7f89c8d
--- /dev/null
+++ b/meta-integrity/data/ima_policy_hashed
@@ -0,0 +1,77 @@
+# With this policy, all files on regular partitions are
+# appraised. Files with signed IMA hash and normal hash are
+# accepted. Signed files cannot be modified while hashed files can be
+# (which will also update the hash). However, signed files can
+# be deleted, so in practice it is still possible to replace them
+# with a modified version.
+#
+# Without EVM, this is obviously not very secure, so this policy is
+# just an example and/or basis for further improvements. For that
+# purpose, some comments show what could be added to make the policy
+# more secure.
+#
+# With EVM the situation might be different because access
+# to the EVM key can be restricted.
+#
+# Files which are appraised are also measured. This allows
+# debugging whether a file is in policy by looking at
+# /sys/kernel/security/ima/ascii_runtime_measurements
+
+# PROC_SUPER_MAGIC
+dont_appraise fsmagic=0x9fa0
+dont_measure fsmagic=0x9fa0
+# SYSFS_MAGIC
+dont_appraise fsmagic=0x62656572
+dont_measure fsmagic=0x62656572
+# DEBUGFS_MAGIC
+dont_appraise fsmagic=0x64626720
+dont_measure fsmagic=0x64626720
+# TMPFS_MAGIC
+dont_appraise fsmagic=0x01021994
+dont_measure fsmagic=0x01021994
+# RAMFS_MAGIC
+dont_appraise fsmagic=0x858458f6
+dont_measure fsmagic=0x858458f6
+# DEVPTS_SUPER_MAGIC
+dont_appraise fsmagic=0x1cd1
+dont_measure fsmagic=0x1cd1
+# BIFMT
+dont_appraise fsmagic=0x42494e4d
+dont_measure fsmagic=0x42494e4d
+# SECURITYFS_MAGIC
+dont_appraise fsmagic=0x73636673
+dont_measure fsmagic=0x73636673
+# SELINUXFS_MAGIC
+dont_appraise fsmagic=0xf97cff8c
+dont_measure fsmagic=0xf97cff8c
+# NSFS_MAGIC (introduced in 3.19, see cd025f7 and e149ed2 in the upstream Linux kernel)
+dont_appraise fsmagic=0x6e736673
+dont_measure fsmagic=0x6e736673
+# SMACK_MAGIC
+dont_appraise fsmagic=0x43415d53
+dont_measure fsmagic=0x43415d53
+# CGROUP_SUPER_MAGIC
+dont_appraise fsmagic=0x27e0eb
+dont_measure fsmagic=0x27e0eb
+# EFIVARFS_MAGIC
+dont_appraise fsmagic=0xde5e81e4
+dont_measure fsmagic=0xde5e81e4
+
+# Special partition, no checking done.
+# dont_measure  fsuuid=a11234...
+# dont_appraise fsuuid=a11243...
+
+# Special immutable group.
+# appraise appraise_type=imasig func=FILE_CHECK mask=MAY_READ fgroup=200
+
+# All executables must be signed - too strict, we need to
+# allow installing executables on the device.
+# appraise appraise_type=imasig func=FILE_MMAP mask=MAY_EXEC
+# appraise appraise_type=imasig func=BPRM_CHECK mask=MAY_EXEC
+
+# Default rule. Would be needed also when other rules were added that
+# determine what to do in case of reading (mask=MAY_READ or
+# mask=MAY_EXEC) because otherwise writing does not update the file
+# hash.
+appraise
+measure
diff --git a/meta-integrity/data/ima_policy_simple b/meta-integrity/data/ima_policy_simple
new file mode 100644
index 0000000..38ca8f5
--- /dev/null
+++ b/meta-integrity/data/ima_policy_simple
@@ -0,0 +1,4 @@
+# Very simple policy demonstrating the systemd policy loading bug
+# (policy with one line works, two lines don't).
+dont_appraise fsmagic=0x9fa0
+dont_appraise fsmagic=0x62656572
diff --git a/meta-integrity/lib/oeqa/runtime/__init__.py b/meta-integrity/lib/oeqa/runtime/__init__.py
new file mode 100644
index 0000000..e69de29
diff --git a/meta-integrity/lib/oeqa/runtime/ima.py b/meta-integrity/lib/oeqa/runtime/ima.py
new file mode 100644
index 0000000..2e5b258
--- /dev/null
+++ b/meta-integrity/lib/oeqa/runtime/ima.py
@@ -0,0 +1,82 @@
+#!/usr/bin/env python
+#
+# Authors:  Cristina Moraru <cristina.moraru@intel.com>
+#           Alexandru Cornea <alexandru.cornea@intel.com>
+
+import unittest
+import string
+from time import sleep
+from oeqa.oetest import oeRuntimeTest, skipModule
+from oeqa.utils.decorators import *
+
+@tag(TestType = 'FVT', FeatureID = 'IOTOS-617,IOTOS-619')
+class IMACheck(oeRuntimeTest):
+    def test_ima_before_systemd(self):
+        ''' Test if IMA policy is loaded before systemd starts'''
+
+        ima_search = "IMA: policy update completed"
+        systemd_search = "systemd .* running"
+        status, output = self.target.run("dmesg | grep -n '%s'" %ima_search)
+        self.assertEqual( status, 0, "Did not find '%s' in dmesg" %ima_search)
+        ima_id = int(output.split(":")[0])
+        status, output = self.target.run("dmesg | grep -n '%s'" %systemd_search)
+        self.assertEqual(status, 0, "Did not find '%s' in dmesg" %systemd_search)
+        init_id = int(output.split(":")[0])
+        if ima_id > init_id:
+            self.fail("IMA does not start before systemd")
+
+    def test_ima_hash(self):
+        ''' Test if IMA stores correct file hash '''
+        filename = "/etc/filetest"
+        ima_measure_file = "/sys/kernel/security/ima/ascii_runtime_measurements"
+        status, output = self.target.run("echo test > %s" %filename)
+        self.assertEqual(status, 0, "Cannot create file %s on target" %filename)
+
+        # wait for the IMA system to update the entry
+        maximum_tries = 30
+        tries = 0
+        status, output = self.target.run("sha1sum %s" %filename)
+        current_hash = output.split()[0]
+        ima_hash = ""
+
+        while tries < maximum_tries:
+            status, output = self.target.run("cat %s | grep %s" \
+                                            %(ima_measure_file, filename))
+            # get last entry, 4th field
+            if status == 0:
+                tokens = output.split("\n")[-1].split()[3]
+                ima_hash = tokens.split(":")[1]
+                if ima_hash == current_hash:
+                    break
+
+            tries += 1
+            sleep(1)
+
+        # clean target
+        self.target.run("rm %s" %filename)
+        if ima_hash != current_hash:
+            self.fail("Hash stored by IMA does not match actual hash")
+
+    def test_ima_signature(self):
+        ''' Test if IMA stores correct signature for system binaries'''
+        locations = ["/bin", "/usr/bin"]
+        binaries = []
+        for l in locations:
+            status, output = self.target.run("find %s -type f" %l)
+            binaries.extend(output.split("\n"))
+
+        for b in binaries:
+            status, output = self.target.run("evmctl ima_verify %s" %b)
+            if "Verification is OK" not in output:
+                self.fail("IMA signature verification fails for file %s" %b)
+
+    def test_ima_overwrite(self):
+        ''' Test if IMA prevents overwriting signed files '''
+        status, output = self.target.run("find /bin -type f")
+        self.assertEqual(status, 0 , "ssh to device fail: %s" %output)  
+        signed_file = output.strip().split()[0]
+        print("\n signed_file is %s" % signed_file)
+        status, output = self.target.run(" echo 'foo' >> %s" %signed_file)
+        self.assertNotEqual(status, 0 , "Signed file could be written")
+        self.assertIn("Permission denied", output,
+                      "Did not find expected error message. Got: %s" %output)
diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
new file mode 100644
index 0000000..aca38b7
--- /dev/null
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima.bb
@@ -0,0 +1,32 @@
+# This recipe creates a module for the initramfs-framework in OE-core
+# which initializes IMA by loading a policy before transferring
+# control to the init process in the rootfs. The advantage over having
+# that init process doing the policy loading (which systemd could do)
+# is that already the integrity of the init binary itself will be
+# checked by the kernel.
+
+SUMMARY = "IMA module for the modular initramfs system"
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
+RDEPENDS_${PN} += "initramfs-framework-base"
+
+# This policy file will get installed as /etc/ima/ima-policy.
+# It is located via the normal file search path, so a .bbappend
+# to this recipe can just point towards one of its own files.
+IMA_POLICY ?= "ima_policy_hashed"
+FILESEXTRAPATHS =. "${IMA_EVM_BASE}/data:"
+
+SRC_URI = " \
+    file://${IMA_POLICY} \
+    file://ima \
+"
+
+do_install () {
+    install -d ${D}/${sysconfdir}/ima
+    install ${WORKDIR}/${IMA_POLICY}  ${D}/${sysconfdir}/ima-policy
+    install -d ${D}/init.d
+    install ${WORKDIR}/ima  ${D}/init.d/20-ima
+}
+
+FILES_${PN} = "/init.d ${sysconfdir}"
+RDEPENDS_${PN} = "keyutils"
diff --git a/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
new file mode 100644
index 0000000..8616f99
--- /dev/null
+++ b/meta-integrity/recipes-core/initrdscripts/initramfs-framework-ima/ima
@@ -0,0 +1,52 @@
+#!/bin/sh
+#
+# Loads IMA policy into the kernel.
+
+ima_enabled() {
+    if [ "$bootparam_no_ima" = "true" ]; then
+        return 1
+    fi
+}
+
+ima_run() {
+    info "Initializing IMA (can be skipped with no_ima boot parameter)."
+    if ! grep -w securityfs /proc/mounts >/dev/null; then
+        if ! mount -t securityfs securityfs /sys/kernel/security; then
+            fatal "Could not mount securityfs."
+        fi
+    fi
+    if [ ! -d /sys/kernel/security/ima ]; then
+        fatal "No /sys/kernel/security/ima. Cannot proceed without IMA enabled in the kernel."
+    fi
+
+    # Instead of depending on the kernel to load the IMA X.509 certificate,
+    # use keyctl. This avoids a bug in certain kernels (https://lkml.org/lkml/2015/9/10/492)
+    # where the loaded key was not checked sufficiently. We use keyctl here because it is
+    # slightly smaller than evmctl and is needed anyway.
+    # (see http://sourceforge.net/p/linux-ima/ima-evm-utils/ci/v0.9/tree/README#l349).
+    for kind in ima evm; do
+        key=/etc/keys/x509_$kind.der
+        if [ -s $key ]; then
+            id=$(grep -w -e "\.$kind" /proc/keys | cut -d ' ' -f1 | head -n 1)
+            if [ "$id" ]; then
+                id=$(printf "%d" 0x$id)
+            fi
+            if [ -z "$id" ]; then
+                id=`keyctl search @u keyring _$kind 2>/dev/null`
+                if [ -z "$id" ]; then
+	            id=`keyctl newring _$kind @u`
+                fi
+            fi
+            info "Loading $key into $kind keyring $id"
+            keyctl padd asymmetric "" $id <$key
+        fi
+    done
+
+    # In theory, a simple "cat" should be enough. In practice, loading sometimes fails randomly
+    # ("[Linux-ima-user] IMA policy loading via cat") and we get better error reporting when
+    # checking the write of each line. To minimize the risk of policy loading going wrong we
+    # also remove comments and blank lines ourselves.
+    if ! (set -e; while read i; do if echo "$i" | grep -q -e '^#' -e '^ *$'; then debug "Skipping IMA policy: $i"; else debug "Writing IMA policy: $i"; if echo $i; then sleep ${bootparam_ima_delay:-0}; else fatal "Invalid line in IMA policy: $i"; exit 1; fi; fi; done) </etc/ima-policy >/sys/kernel/security/ima/policy; then
+        fatal "Could not load IMA policy."
+    fi
+}
diff --git a/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
new file mode 100644
index 0000000..18acc9d
--- /dev/null
+++ b/meta-integrity/recipes-core/packagegroups/packagegroup-ima-evm-utils.bb
@@ -0,0 +1,9 @@
+SUMMARY = "IMA/EVM userspace tools"
+LICENSE = "MIT"
+
+inherit packagegroup
+
+# Only one at the moment, but perhaps more will come in the future.
+RDEPENDS_${PN} = " \
+    ima-evm-utils \
+"
diff --git a/meta-integrity/recipes-core/systemd/files/machine-id-commit-sync.conf b/meta-integrity/recipes-core/systemd/files/machine-id-commit-sync.conf
new file mode 100644
index 0000000..d6d3240
--- /dev/null
+++ b/meta-integrity/recipes-core/systemd/files/machine-id-commit-sync.conf
@@ -0,0 +1,2 @@
+[Service]
+ExecStartPost=/bin/sync
diff --git a/meta-integrity/recipes-core/systemd/files/random-seed-sync.conf b/meta-integrity/recipes-core/systemd/files/random-seed-sync.conf
new file mode 100644
index 0000000..f4c170b
--- /dev/null
+++ b/meta-integrity/recipes-core/systemd/files/random-seed-sync.conf
@@ -0,0 +1,3 @@
+[Service]
+ExecStopPost=/bin/sync
+ExecStartPost=/bin/sync
diff --git a/meta-integrity/recipes-core/systemd/systemd_%.bbappend b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
new file mode 100644
index 0000000..3b45541
--- /dev/null
+++ b/meta-integrity/recipes-core/systemd/systemd_%.bbappend
@@ -0,0 +1,13 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI += " \
+    file://machine-id-commit-sync.conf \
+    file://random-seed-sync.conf \
+"
+
+do_install_append () {
+    for i in machine-id-commit random-seed; do
+        install -d ${D}/${systemd_system_unitdir}/systemd-$i.service.d
+        install -m 0644 ${WORKDIR}/$i-sync.conf ${D}/${systemd_system_unitdir}/systemd-$i.service.d
+    done
+}
diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
new file mode 100644
index 0000000..48560b1
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
@@ -0,0 +1,116 @@
+IMA_ENABLED_HERE := "${@'yes' if bb.data.inherits_class('kernel', d) and 'ima' in d.getVar('DISTRO_FEATURES', True).split() else 'no'}"
+
+IMA_FILESEXTRAPATHS_yes := "${THISDIR}/linux:"
+IMA_FILESEXTRAPATHS_no := ""
+FILESEXTRAPATHS_prepend := "${IMA_FILESEXTRAPATHS_${IMA_ENABLED_HERE}}"
+
+# These two patches are necessary to unpack archives with security.ima xattr
+# such that security.ima is taken from the archive. If the policy
+# allows hashing, unpatched kernels (at least up to 4.3) will replace
+# a signed hash in security.ima with a locally computed hash.
+#
+# Note that only bsdtar/libarchive are known to work; GNU tar sets
+# the security.ima on an empty file and the tries re-opening it for
+# writing its content, which then fails due to the IMA hash mismatch.
+#
+# Kernels >= 4.7 have the patches, while older kernels are likely to
+# need the patches. So apply them by default. To avoid that,
+# set IMA_EVM_SETATTR_PATCH_x.y.z (where x.y.z == linux kernel version)
+# to an empty string (to avoid patching) or some other patch files
+# suitable for that kernel.
+def ima_evm_setattr_patch(d):
+    result = []
+    linux_version = d.getVar('LINUX_VERSION', True) or ''
+    # These two patches are known to be included upstream.
+    if bb.utils.vercmp_string_op(linux_version, '4.7', '<'):
+        patches = d.getVar('IMA_EVM_SETATTR_PATCH_' + linux_version, True)
+        if patches != None:
+            # Patches explicitly chosen, may be empty.
+            result.append(patches)
+        else:
+            # Enabled by default.
+            result.append('file://0001-ima-fix-ima_inode_post_setattr.patch file://0002-ima-add-support-for-creating-files-using-the-mknodat.patch')
+    # This one addresses a problem added in 4.2. The upstream revert will land
+    # in some future kernel. We need to extend version check once we know
+    # which kernels have the patch.
+    if bb.utils.vercmp_string_op(linux_version, '4.2', '>='):
+        patches = d.getVar('IMA_EVM_SETATTR_REVERT_PATCH_' + linux_version, True)
+        if patches != None:
+            # Patches explicitly chosen, may be empty.
+            result.append(patches)
+        else:
+            # Enabled by default.
+            result.append('file://Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch')
+    return ' '.join(result)
+
+# Edison kernel too old, patch not applicable -> swupd is broken in Ostro OS for Edison.
+IMA_EVM_SETATTR_PATCH_3.10.98 = ""
+
+# Kernel config fragment enabling IMA/EVM and (where necessary and possible)
+# also patching the kernel.
+IMA_EVM_CFG_yes = " file://ima.cfg \
+                    ${@ ima_evm_setattr_patch(d)} \
+                  "
+IMA_EVM_CFG_no = ""
+SRC_URI_append = "${IMA_EVM_CFG_${IMA_ENABLED_HERE}}"
+
+# IMA_EVM_ROOT_CA, if set, is the absolute path to a der-encoded
+# x509 CA certificate which will get compiled into the kernel.
+# The kernel will then use it to validate additional certificates,
+# like the one loaded dynamically for IMA.
+#
+# Depending on the kernel version, there are two ways to add the
+# CA certificate:
+# - For Linux < 4.3, we put the x509 file into the source directory
+#   where the kernel compilation will find it automatically
+#   (http://lxr.free-electrons.com/source/kernel/Makefile?v=4.2#L115).
+# - For Linux >= 4.3, we set SYSTEM_TRUSTED_KEYS
+#   (http://lxr.free-electrons.com/source/certs/Kconfig?v=4.3#L29).
+#   The ima_evm_root_ca.cfg only contains a blank file name.
+#   The actual file name gets patched in after the file was used
+#   to configure the kernel (see do_kernel_configme_append).
+#   This has to point to a single file, i.e. using it for IMA has to
+#   be coordinated with other usages.
+#
+# The IMA_EVM_ROOT_CA default is set globally in ima-evm-rootfs.bbclass.
+# Need weaker default here in case that ima-evm-rootfs.bbclass is not
+# inherited.
+IMA_EVM_ROOT_CA ??= ""
+
+# Add CONFIG_SYSTEM_TRUSTED_KEYS (for recent kernels) and
+# copy the root certificate into the build directory. By using
+# the normal fetcher mechanism for the certificate we ensure that
+# a rebuild is triggered when the file name or content change.
+#
+# Recompiling on name change is a bit too aggressive and causes
+# unnecessary rebuilds when only the location of the file, but not its
+# content change. This may need further work, should it become a problem
+# in practice. For example, IMA_EVM_ROOT_CA could be redefined as
+# an URL that then gets found via the normal file lookup.
+#
+# The fetcher does not expand SRC_URI. We have to enforce that here.
+IMA_EVM_ROOT_CA_CFG_yes = "${@ \
+ ((' file://ima_evm_root_ca.cfg' if bb.utils.vercmp_string_op('${LINUX_VERSION}', '4.3', '>=') else '') + \
+   ' file://${IMA_EVM_ROOT_CA}') \
+ if '${IMA_EVM_ROOT_CA}' else ''}"
+IMA_EVM_ROOT_CA_CFG_no = ""
+
+SRC_URI_append = "${IMA_EVM_ROOT_CA_CFG_${IMA_ENABLED_HERE}}"
+
+do_kernel_configme_append () {
+    if [ '${IMA_EVM_ROOT_CA}' ] && grep -q '^CONFIG_SYSTEM_TRUSTED_KEYS=' ${B}/.config; then
+        # We can replace a blank value from ima_evm_root_ca.cfg,
+        # but when we find some other value, then we have to abort
+        # because we can't set more than one value.
+        eval `grep '^CONFIG_SYSTEM_TRUSTED_KEYS='`
+        if [ "$CONFIG_SYSTEM_TRUSTED_KEYS" ] && [ "$CONFIG_SYSTEM_TRUSTED_KEYS" != "${IMA_EVM_ROOT_CA}" ]; then
+            bbfatal "CONFIG_SYSTEM_TRUSTED_KEYS already set to $CONFIG_SYSTEM_TRUSTED_KEYS, cannot replace with IMA_EVM_ROOT_CA = ${IMA_EVM_ROOT_CA}"
+            exit 1
+        fi
+        pemcert=${B}/`basename ${IMA_EVM_ROOT_CA}`.pem
+        openssl x509 -inform der -in ${IMA_EVM_ROOT_CA} -out $pemcert
+        sed -i -e "s;^CONFIG_SYSTEM_TRUSTED_KEYS=.*;CONFIG_SYSTEM_TRUSTED_KEYS=\"$pemcert\";" ${B}/.config
+    fi
+}
+
+do_kernel_configme[depends] += "${@ 'openssl-native:do_populate_sysroot' if '${IMA_ENABLED_HERE}' == 'yes' and '${IMA_EVM_ROOT_CA}' else '' }"
diff --git a/meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch b/meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
new file mode 100644
index 0000000..64016dd
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/0001-ima-fix-ima_inode_post_setattr.patch
@@ -0,0 +1,51 @@
+From 45ea681ebc0dd44aaec5d3cc4143b9722070d3ac Mon Sep 17 00:00:00 2001
+From: Mimi Zohar <zohar@linux.vnet.ibm.com>
+Date: Tue, 8 Mar 2016 16:43:55 -0500
+Subject: [PATCH] ima: fix ima_inode_post_setattr
+
+Changing file metadata (eg. uid, guid) could result in having to
+re-appraise a file's integrity, but does not change the "new file"
+status nor the security.ima xattr.  The IMA_PERMIT_DIRECTIO and
+IMA_DIGSIG_REQUIRED flags are policy rule specific.  This patch
+only resets these flags, not the IMA_NEW_FILE or IMA_DIGSIG flags.
+
+With this patch, changing the file timestamp will not remove the
+file signature on new files.
+
+Upstream-Status: Accepted [https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/security/integrity/ima/ima_appraise.c?id=42a4c603198f0d45b7aa936d3ac6ba1b8bd14a1b]
+
+Reported-by: Dmitry Rozhkov <dmitry.rozhkov@linux.intel.com>
+Signed-off-by: Mimi Zohar <zohar@linux.vnet.ibm.com>
+---
+ security/integrity/ima/ima_appraise.c | 2 +-
+ security/integrity/integrity.h        | 1 +
+ 2 files changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/security/integrity/ima/ima_appraise.c b/security/integrity/ima/ima_appraise.c
+index 4df493e..a384ba1 100644
+--- a/security/integrity/ima/ima_appraise.c
++++ b/security/integrity/ima/ima_appraise.c
+@@ -327,7 +327,7 @@ void ima_inode_post_setattr(struct dentry *dentry)
+ 	if (iint) {
+ 		iint->flags &= ~(IMA_APPRAISE | IMA_APPRAISED |
+ 				 IMA_APPRAISE_SUBMASK | IMA_APPRAISED_SUBMASK |
+-				 IMA_ACTION_FLAGS);
++				 IMA_ACTION_RULE_FLAGS);
+ 		if (must_appraise)
+ 			iint->flags |= IMA_APPRAISE;
+ 	}
+diff --git a/security/integrity/integrity.h b/security/integrity/integrity.h
+index 0fc9519..f9decae 100644
+--- a/security/integrity/integrity.h
++++ b/security/integrity/integrity.h
+@@ -28,6 +28,7 @@
+ 
+ /* iint cache flags */
+ #define IMA_ACTION_FLAGS	0xff000000
++#define IMA_ACTION_RULE_FLAGS	0x06000000
+ #define IMA_DIGSIG		0x01000000
+ #define IMA_DIGSIG_REQUIRED	0x02000000
+ #define IMA_PERMIT_DIRECTIO	0x04000000
+-- 
+2.5.0
+
diff --git a/meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch b/meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
new file mode 100644
index 0000000..6ab7ce2
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/0002-ima-add-support-for-creating-files-using-the-mknodat.patch
@@ -0,0 +1,138 @@
+From baaec960e9e7be0b526eaf831b079ddfe5c15124 Mon Sep 17 00:00:00 2001
+From: Mimi Zohar <zohar@linux.vnet.ibm.com>
+Date: Thu, 10 Mar 2016 18:19:20 +0200
+Subject: [PATCH] ima: add support for creating files using the mknodat
+ syscall
+
+Commit 3034a14 "ima: pass 'opened' flag to identify newly created files"
+stopped identifying empty files as new files.  However new empty files
+can be created using the mknodat syscall.  On systems with IMA-appraisal
+enabled, these empty files are not labeled with security.ima extended
+attributes properly, preventing them from subsequently being opened in
+order to write the file data contents.  This patch marks these empty
+files, created using mknodat, as new in order to allow the file data
+contents to be written.
+
+Files with security.ima xattrs containing a file signature are considered
+"immutable" and can not be modified.  The file contents need to be
+written, before signing the file.  This patch relaxes this requirement
+for new files, allowing the file signature to be written before the file
+contents.
+
+Upstream-Status: Accepted [https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/commit/security/integrity/ima/ima_appraise.c?id=05d1a717ec0430c916a749b94eb90ab74bbfa356]
+
+Signed-off-by: Mimi Zohar <zohar@linux.vnet.ibm.com>
+---
+ fs/namei.c                            |  2 ++
+ include/linux/ima.h                   |  7 ++++++-
+ security/integrity/ima/ima_appraise.c |  3 +++
+ security/integrity/ima/ima_main.c     | 32 +++++++++++++++++++++++++++++++-
+ 4 files changed, 42 insertions(+), 2 deletions(-)
+
+diff --git a/fs/namei.c b/fs/namei.c
+index ccd7f98..19502da 100644
+--- a/fs/namei.c
++++ b/fs/namei.c
+@@ -3526,6 +3526,8 @@ retry:
+ 	switch (mode & S_IFMT) {
+ 		case 0: case S_IFREG:
+ 			error = vfs_create(path.dentry->d_inode,dentry,mode,true);
++			if (!error)
++				ima_post_path_mknod(dentry);
+ 			break;
+ 		case S_IFCHR: case S_IFBLK:
+ 			error = vfs_mknod(path.dentry->d_inode,dentry,mode,
+diff --git a/include/linux/ima.h b/include/linux/ima.h
+index 120ccc5..7f51971 100644
+--- a/include/linux/ima.h
++++ b/include/linux/ima.h
+@@ -20,7 +20,7 @@ extern void ima_file_free(struct file *file);
+ extern int ima_file_mmap(struct file *file, unsigned long prot);
+ extern int ima_module_check(struct file *file);
+ extern int ima_fw_from_file(struct file *file, char *buf, size_t size);
+-
++extern void ima_post_path_mknod(struct dentry *dentry);
+ #else
+ static inline int ima_bprm_check(struct linux_binprm *bprm)
+ {
+@@ -52,6 +52,11 @@ static inline int ima_fw_from_file(struct file *file, char *buf, size_t size)
+ 	return 0;
+ }
+ 
++static inline void ima_post_path_mknod(struct dentry *dentry)
++{
++	return;
++}
++
+ #endif /* CONFIG_IMA */
+ 
+ #ifdef CONFIG_IMA_APPRAISE
+diff --git a/security/integrity/ima/ima_appraise.c b/security/integrity/ima/ima_appraise.c
+index 4df493e..20806ea 100644
+--- a/security/integrity/ima/ima_appraise.c
++++ b/security/integrity/ima/ima_appraise.c
+@@ -274,6 +274,11 @@ out:
+ 		     xattr_value->type != EVM_IMA_XATTR_DIGSIG)) {
+ 			if (!ima_fix_xattr(dentry, iint))
+ 				status = INTEGRITY_PASS;
++		} else if ((inode->i_size == 0) &&
++			   (iint->flags & IMA_NEW_FILE) &&
++			   (xattr_value &&
++			    xattr_value->type == EVM_IMA_XATTR_DIGSIG)) {
++			status = INTEGRITY_PASS;
+ 		}
+ 		integrity_audit_msg(AUDIT_INTEGRITY_DATA, inode, filename,
+ 				    op, cause, rc, 0);
+diff --git a/security/integrity/ima/ima_main.c b/security/integrity/ima/ima_main.c
+index eeee00dc..705bf78 100644
+--- a/security/integrity/ima/ima_main.c
++++ b/security/integrity/ima/ima_main.c
+@@ -242,7 +242,8 @@ static int process_measurement(struct file *file, int mask, int function,
+ 		ima_audit_measurement(iint, pathname);
+ 
+ out_digsig:
+-	if ((mask & MAY_WRITE) && (iint->flags & IMA_DIGSIG))
++	if ((mask & MAY_WRITE) && (iint->flags & IMA_DIGSIG) &&
++	     !(iint->flags & IMA_NEW_FILE))
+ 		rc = -EACCES;
+ 	kfree(xattr_value);
+ out_free:
+@@ -310,6 +311,35 @@ int ima_file_check(struct file *file, int mask, int opened)
+ EXPORT_SYMBOL_GPL(ima_file_check);
+ 
+ /**
++ * ima_post_path_mknod - mark as a new inode
++ * @dentry: newly created dentry
++ *
++ * Mark files created via the mknodat syscall as new, so that the
++ * file data can be written later.
++ */
++void ima_post_path_mknod(struct dentry *dentry)
++{
++	struct integrity_iint_cache *iint;
++	struct inode *inode;
++	int must_appraise;
++
++	if (!dentry || !dentry->d_inode)
++		return;
++
++	inode = dentry->d_inode;
++	if (inode->i_size != 0)
++		return;
++
++	must_appraise = ima_must_appraise(inode, MAY_ACCESS, FILE_CHECK);
++	if (!must_appraise)
++		return;
++
++	iint = integrity_inode_get(inode);
++	if (iint)
++		iint->flags |= IMA_NEW_FILE;
++}
++
++/**
+  * ima_module_check - based on policy, collect/store/appraise measurement.
+  * @file: pointer to the file to be measured/appraised
+  *
+-- 
+2.5.0
+
diff --git a/meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch b/meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
new file mode 100644
index 0000000..157c007
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch
@@ -0,0 +1,60 @@
+From a34d61850b680c152e1dcc958ee83c3ab3261c3d Mon Sep 17 00:00:00 2001
+From: Patrick Ohly <patrick.ohly@intel.com>
+Date: Tue, 15 Nov 2016 10:10:23 +0100
+Subject: [PATCH] Revert "ima: limit file hash setting by user to fix and log
+ modes"
+
+This reverts commit c68ed80c97d9720f51ef31fe91560fdd1e121533.
+
+The original motivation was security hardening ("File hashes are
+automatically set and updated and should not be manually set.")
+
+However, that hardening ignores and breaks some valid use cases:
+- File hashes might not be set because the file is currently
+  outside of the policy and therefore have to be set by the
+  creator. Examples:
+  - Booting into an initramfs with an IMA-enabled kernel but
+    without setting an IMA policy, then installing
+    the OS onto the target partition by unpacking a rootfs archive
+    which has the file hashes pre-computed.
+  - Unpacking a file into a staging area with meta data (like owner)
+    that leaves the file outside of the current policy, then changing
+    the meta data such that it becomes part of the current policy.
+- "should not be set manually" implies that the creator is aware
+  of IMA semantic, the current system's configuration, and then
+  skips setting file hashes in security.ima if (and only if) the
+  kernel would prevent it. That's not the case for standard, unmodified
+  tools. Example: unpacking an archive with security.ima xattrs with
+  bsdtar or GNU tar.
+
+Upstream-Status: Submitted [https://sourceforge.net/p/linux-ima/mailman/message/35492824/]
+
+Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
+---
+ security/integrity/ima/ima_appraise.c | 8 ++------
+ 1 file changed, 2 insertions(+), 6 deletions(-)
+
+diff --git a/security/integrity/ima/ima_appraise.c b/security/integrity/ima/ima_appraise.c
+index 4b9b4a4..b8b2dd9 100644
+--- a/security/integrity/ima/ima_appraise.c
++++ b/security/integrity/ima/ima_appraise.c
+@@ -385,14 +385,10 @@ int ima_inode_setxattr(struct dentry *dentry, const char *xattr_name,
+ 	result = ima_protect_xattr(dentry, xattr_name, xattr_value,
+ 				   xattr_value_len);
+ 	if (result == 1) {
+-		bool digsig;
+-
+ 		if (!xattr_value_len || (xvalue->type >= IMA_XATTR_LAST))
+ 			return -EINVAL;
+-		digsig = (xvalue->type == EVM_IMA_XATTR_DIGSIG);
+-		if (!digsig && (ima_appraise & IMA_APPRAISE_ENFORCE))
+-			return -EPERM;
+-		ima_reset_appraise_flags(d_backing_inode(dentry), digsig);
++		ima_reset_appraise_flags(d_backing_inode(dentry),
++			 (xvalue->type == EVM_IMA_XATTR_DIGSIG) ? 1 : 0);
+ 		result = 0;
+ 	}
+ 	return result;
+-- 
+2.1.4
+
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima.cfg b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
new file mode 100644
index 0000000..02381aa
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/ima.cfg
@@ -0,0 +1,16 @@
+# Enable bare minimum IMA measurement and appraisal as needed by this layer.
+
+CONFIG_SECURITY=y
+CONFIG_INTEGRITY=y
+
+# measurement
+CONFIG_IMA=y
+
+# appraisal
+CONFIG_IMA_APPRAISE=y
+CONFIG_INTEGRITY_SIGNATURE=y
+CONFIG_INTEGRITY_ASYMMETRIC_KEYS=y
+
+# Kernel will get built with embedded X.509 root CA key and all keys
+# need to be signed with that.
+CONFIG_IMA_TRUSTED_KEYRING=y
diff --git a/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg b/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
new file mode 100644
index 0000000..7338232
--- /dev/null
+++ b/meta-integrity/recipes-kernel/linux/linux/ima_evm_root_ca.cfg
@@ -0,0 +1,3 @@
+CONFIG_KEYS=y
+CONFIG_SYSTEM_TRUSTED_KEYRING=y
+CONFIG_SYSTEM_TRUSTED_KEYS=""
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc
new file mode 100644
index 0000000..72a13f7
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils.inc
@@ -0,0 +1,19 @@
+DESCRIPTION = "IMA/EVM control utility"
+LICENSE = "GPL-2.0-with-OpenSSL-exception"
+LIC_FILES_CHKSUM = "file://COPYING;md5=b234ee4d69f5fce4486a80fdaf4a4263"
+
+DEPENDS = " \
+openssl \
+attr \
+keyutils \
+pkgconfig \
+"
+
+# blkid is called by evmctl when creating evm checksums.
+# This is less useful when signing files on the build host,
+# so disable it when compiling on the host.
+RDEPENDS_${PN}_append_class-target = " util-linux-blkid"
+
+inherit autotools
+
+BBCLASSEXTEND = "native"
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
new file mode 100644
index 0000000..35c3162
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
@@ -0,0 +1,68 @@
+From 5834216fb3aa4e5e59ee13e871c70db1b4e13f02 Mon Sep 17 00:00:00 2001
+From: Patrick Ohly <patrick.ohly@intel.com>
+Date: Fri, 30 Sep 2016 10:22:16 +0200
+Subject: [PATCH] command line: apply operation to all paths
+
+Previously, invocations like "evmctl ima_hash foo bar" silently
+ignored all parameters after the first path name ("foo" in this
+example).
+
+Now evmctl iterates over all specified paths. It aborts with an
+error as soon as the selected operation fails for a path.
+
+Supporting more than one parameter is useful in combination with
+"find" and "xargs" because it is noticably faster than invoking
+evmutil separately for each file, in particular when run under pseudo
+(a fakeroot environment used by the OpenEmbedded build system).
+
+This complements the recursive mode and can be used when more control
+over file selection is needed.
+
+Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
+---
+ src/evmctl.c | 21 ++++++++++++---------
+ 1 file changed, 12 insertions(+), 9 deletions(-)
+
+diff --git a/src/evmctl.c b/src/evmctl.c
+index 23cf54c..2072034 100644
+--- a/src/evmctl.c
++++ b/src/evmctl.c
+@@ -626,7 +626,7 @@ static int get_file_type(const char *path, const char *search_type)
+ static int do_cmd(struct command *cmd, find_cb_t func)
+ {
+ 	char *path = g_argv[optind++];
+-	int err, dts = REG_MASK; /* only regular files by default */
++	int err = 0, dts = REG_MASK; /* only regular files by default */
+ 
+ 	if (!path) {
+ 		log_err("Parameters missing\n");
+@@ -634,15 +634,18 @@ static int do_cmd(struct command *cmd, find_cb_t func)
+ 		return -1;
+ 	}
+ 
+-	if (recursive) {
+-		if (search_type) {
+-			dts = get_file_type(path, search_type);
+-			if (dts < 0)
+-				return dts;
++	while (path && !err) {
++		if (recursive) {
++			if (search_type) {
++				dts = get_file_type(path, search_type);
++				if (dts < 0)
++					return dts;
++			}
++			err = find(path, dts, func);
++		} else {
++			err = func(path);
+ 		}
+-		err = find(path, dts, func);
+-	} else {
+-		err = func(path);
++		path = g_argv[optind++];
+ 	}
+ 
+ 	return err;
+-- 
+2.1.4
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
new file mode 100644
index 0000000..75076f5
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
@@ -0,0 +1,50 @@
+From 321a602098d11ee712ebd01f51033b5fd369eae9 Mon Sep 17 00:00:00 2001
+From: Patrick Ohly <patrick.ohly@intel.com>
+Date: Wed, 13 May 2015 03:41:02 -0700
+Subject: [PATCH] Makefile.am: disable man page creation
+
+Depends on asciidoc, which is not available.
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
+---
+ Makefile.am | 19 ++++++++++++++++++-
+ 1 file changed, 18 insertions(+), 1 deletion(-)
+
+diff --git a/Makefile.am b/Makefile.am
+index 06ebf59..4ddd52c 100644
+--- a/Makefile.am
++++ b/Makefile.am
+@@ -1,5 +1,5 @@
+ SUBDIRS = src
+-dist_man_MANS = evmctl.1
++# dist_man_MANS = evmctl.1
+ 
+ doc_DATA =  examples/ima-genkey-self.sh examples/ima-genkey.sh examples/ima-gen-local-ca.sh
+ EXTRA_DIST = autogen.sh $(doc_DATA)
+@@ -39,4 +39,21 @@ rmman:
+ 
+ doc: evmctl.1.html rmman evmctl.1
+ 
++# requires asciidoc, xslproc, docbook-xsl
++# FIXME Disabled until docbook-xsl is unavaliable on tizen.org
++#MANPAGE_DOCBOOK_XSL = /usr/share/xml/docbook/stylesheet/docbook-xsl/manpages/docbook.xsl
++#
++#evmctl.1.html: README
++#	@asciidoc -o $@ $<
++#
++#evmctl.1:
++#	asciidoc -d manpage -b docbook -o evmctl.1.xsl README
++#	xsltproc --nonet -o $@ $(MANPAGE_DOCBOOK_XSL) evmctl.1.xsl
++#	rm -f evmctl.1.xsl
++#
++#rmman:
++#	rm -f evmctl.1
++#
++#doc: evmctl.1.html rmman evmctl.1
++
+ .PHONY: $(tarname)
+-- 
+1.8.4.5
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
new file mode 100644
index 0000000..c0bdd9b
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
@@ -0,0 +1,47 @@
+From 2dec9199f8a8a2c84b25a3d3e7e2f41b71e07834 Mon Sep 17 00:00:00 2001
+From: Patrick Ohly <patrick.ohly@intel.com>
+Date: Wed, 17 Jun 2015 14:28:18 +0200
+Subject: [PATCH 20/20] evmctl.c: do not depend on xattr.h with IMA defines
+
+Compilation on older Linux distros (like Ubuntu 12.04) fails
+because linux/xattr.h does not yet have the IMA defines. Compiling
+there makes sense when only the tools are needed, for example when
+signing an image in cross-compile mode.
+
+To support this, add fallbacks for the two defines which are needed.
+Their value is part of the Linux ABI and thus fixed.
+
+Upstream-status: Submitted [linux-ima-devel@lists.sourceforge.net]
+
+Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
+
+---
+ src/evmctl.c | 12 ++++++++++++
+ 1 file changed, 12 insertions(+)
+
+diff --git a/src/evmctl.c b/src/evmctl.c
+index c54efbb..23cf54c 100644
+--- a/src/evmctl.c
++++ b/src/evmctl.c
+@@ -56,6 +56,18 @@
+ #include <ctype.h>
+ #include <termios.h>
+ 
++/*
++ * linux/xattr.h might be old to have this. Allow compilation on older
++ * Linux distros (like Ubuntu 12.04) by falling back to our own
++ * definition.
++ */
++#ifndef XATTR_IMA_SUFFIX
++# define XATTR_IMA_SUFFIX "ima"
++#endif
++#ifndef XATTR_NAME_IMA
++# define XATTR_NAME_IMA XATTR_SECURITY_PREFIX XATTR_IMA_SUFFIX
++#endif
++
+ #include <openssl/sha.h>
+ #include <openssl/pem.h>
+ #include <openssl/hmac.h>
+-- 
+2.1.4
+
diff --git a/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
new file mode 100644
index 0000000..8a9999f
--- /dev/null
+++ b/meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
@@ -0,0 +1,17 @@
+require ima-evm-utils.inc
+
+PV = "1.0+git${SRCPV}"
+SRCREV = "3e2a67bdb0673581a97506262e62db098efef6d7"
+SRC_URI = "git://git.code.sf.net/p/linux-ima/ima-evm-utils"
+S = "${WORKDIR}/git"
+
+# Documentation depends on asciidoc, which we do not have, so
+# do not build documentation.
+SRC_URI += "file://disable-doc-creation.patch"
+
+# Workaround for upstream incompatibility with older Linux distros.
+# Relevant for us when compiling ima-evm-utils-native.
+SRC_URI += "file://evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch"
+
+# Required for xargs with more than one path as argument (better for performance).
+SRC_URI += "file://command-line-apply-operation-to-all-paths.patch"
diff --git a/meta-integrity/scripts/ima-gen-CA-signed.sh b/meta-integrity/scripts/ima-gen-CA-signed.sh
new file mode 100755
index 0000000..5f3a728
--- /dev/null
+++ b/meta-integrity/scripts/ima-gen-CA-signed.sh
@@ -0,0 +1,48 @@
+#!/bin/sh
+#
+# Copied from ima-evm-utils.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# version 2 as published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program.  If not, see <http://www.gnu.org/licenses/>.
+
+GENKEY=ima.genkey
+CA=${1:-ima-local-ca.pem}
+CAKEY=${2:-ima-local-ca.priv}
+
+cat << __EOF__ >$GENKEY
+[ req ]
+default_bits = 1024
+distinguished_name = req_distinguished_name
+prompt = no
+string_mask = utf8only
+x509_extensions = v3_usr
+
+[ req_distinguished_name ]
+O = example.com
+CN = meta-intel-iot-security example signing key
+emailAddress = john.doe@example.com
+
+[ v3_usr ]
+basicConstraints=critical,CA:FALSE
+#basicConstraints=CA:FALSE
+keyUsage=digitalSignature
+#keyUsage = nonRepudiation, digitalSignature, keyEncipherment
+subjectKeyIdentifier=hash
+authorityKeyIdentifier=keyid
+#authorityKeyIdentifier=keyid,issuer
+__EOF__
+
+openssl req -new -nodes -utf8 -sha1 -days 365 -batch -config $GENKEY \
+        -out csr_ima.pem -keyout privkey_ima.pem
+openssl x509 -req -in csr_ima.pem -days 365 -extfile $GENKEY -extensions v3_usr \
+        -CA $CA -CAkey $CAKEY -CAcreateserial \
+        -outform DER -out x509_ima.der
diff --git a/meta-integrity/scripts/ima-gen-local-ca.sh b/meta-integrity/scripts/ima-gen-local-ca.sh
new file mode 100755
index 0000000..b600761
--- /dev/null
+++ b/meta-integrity/scripts/ima-gen-local-ca.sh
@@ -0,0 +1,42 @@
+#!/bin/sh
+#
+# Copied from ima-evm-utils.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# version 2 as published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program.  If not, see <http://www.gnu.org/licenses/>.
+
+GENKEY=ima-local-ca.genkey
+
+cat << __EOF__ >$GENKEY
+[ req ]
+default_bits = 2048
+distinguished_name = req_distinguished_name
+prompt = no
+string_mask = utf8only
+x509_extensions = v3_ca
+
+[ req_distinguished_name ]
+O = example.com
+CN = meta-intel-iot-security example certificate signing key
+emailAddress = john.doe@example.com
+
+[ v3_ca ]
+basicConstraints=CA:TRUE
+subjectKeyIdentifier=hash
+authorityKeyIdentifier=keyid:always,issuer
+# keyUsage = cRLSign, keyCertSign
+__EOF__
+
+openssl req -new -x509 -utf8 -sha1 -days 3650 -batch -config $GENKEY \
+        -outform DER -out ima-local-ca.x509 -keyout ima-local-ca.priv
+
+openssl x509 -inform DER -in ima-local-ca.x509 -out ima-local-ca.pem
diff --git a/meta-integrity/scripts/ima-gen-self-signed.sh b/meta-integrity/scripts/ima-gen-self-signed.sh
new file mode 100755
index 0000000..5ee876c
--- /dev/null
+++ b/meta-integrity/scripts/ima-gen-self-signed.sh
@@ -0,0 +1,41 @@
+#!/bin/sh
+#
+# Copied from ima-evm-utils.
+#
+# This program is free software; you can redistribute it and/or
+# modify it under the terms of the GNU General Public License
+# version 2 as published by the Free Software Foundation.
+#
+# This program is distributed in the hope that it will be useful,
+# but WITHOUT ANY WARRANTY; without even the implied warranty of
+# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+# GNU General Public License for more details.
+#
+# You should have received a copy of the GNU General Public License
+# along with this program.  If not, see <http://www.gnu.org/licenses/>.
+
+GENKEY=ima.genkey
+
+cat << __EOF__ >$GENKEY
+[ req ]
+default_bits = 1024
+distinguished_name = req_distinguished_name
+prompt = no
+string_mask = utf8only
+x509_extensions = myexts
+
+[ req_distinguished_name ]
+O = example.com
+CN = meta-intel-iot-security example signing key
+emailAddress = john.doe@example.com
+
+[ myexts ]
+basicConstraints=critical,CA:FALSE
+keyUsage=digitalSignature
+subjectKeyIdentifier=hash
+authorityKeyIdentifier=keyid
+__EOF__
+
+openssl req -new -nodes -utf8 -sha1 -days 36500 -batch \
+        -x509 -config $GENKEY \
+	-outform DER -out x509_ima.der -keyout privkey_ima.pem
-- 
2.17.1


