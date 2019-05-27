Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7346CE00D43; Sun, 26 May 2019 21:56:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.193 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f193.google.com (mail-pg1-f193.google.com
	[209.85.215.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB0FCE00CF4
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:48 -0700 (PDT)
Received: by mail-pg1-f193.google.com with SMTP id d30so8376828pgm.7
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Mfa09A6gvOKwDKHSZSGWWTGUmGPBUTP8tztFbWUcEq0=;
	b=d3gUhVuPttIeHG8Z4pjbrr15ovni446h5GcN0swn1QDYseJuRrvMLsLq423Xg7INng
	LbX3cuU8TPOuNOfPXljTN0azqUwPOf0abbkPVgIuJtj4Wm6nw1ZkuHFCsI2SAzB1Cv6M
	lFBkrB7N3wPBrh94FQHUFtDC1YbDj/K/BBhBlNNPQ2mFOcxG2CL4ebBCmr0ZwqrV9BDY
	9ObOHC7s9YIj9+LNIlki6yr28/EDhXFv3IScGUoae0gJb3RARqqnVFMfMGil2jW4eOJG
	0E9mrBeRWOcU3JMEvJUyFlBUMFiYqQ3J5fcbod2+VL7LJ6KNJYNnLZWfQLLy5RcDIsLd
	6Uwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Mfa09A6gvOKwDKHSZSGWWTGUmGPBUTP8tztFbWUcEq0=;
	b=HWlEeEiaMVejKFMSHRowGpL5mHpQAD1z8rTKiVdlfu5sJNoY4n+0bvC8ie7US6Pl9X
	v3Wiob9ZYkLS/bh3a967O53j0N19fzXAED3bNYu8NNlZec69CfNBgcenzeI9IN47KeMF
	SaR0f6Tx8J5xAmg2WVrubGOUU6PyX9PLj8SJ0gJrJezY58kW5riB9r7vPfVMmP09peNR
	rVPxGJCyXWSW+UN+50utnupZpOJgTv1Bh2exy7UZ72YY7B39fdxn2jg7LgBFyI5c0IQE
	0mlZlY7NCxSd8PZ62JkqnRk9Wrnf2u6xhEW1EjTPyyBnpZUtwPEHTeJG2/rZ1/GtMf4u
	3U0A==
X-Gm-Message-State: APjAAAXg7cmOXej56+9AeGPX5AUqKq+/rFit/Y/701hYQMr/tnr79WKT
	2yHjEv780UKabSe0oP76x8gdqGCU
X-Google-Smtp-Source: APXvYqypVDMjOTaJVK+sJ8tKs2bfqQ0hGtYHbdWxdxMaHLnmOwaK6YeeBw7STdN8ZPoPDXCHoJMYMQ==
X-Received: by 2002:a63:4422:: with SMTP id
	r34mr121758522pga.362.1558933008150; 
	Sun, 26 May 2019 21:56:48 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.47 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:33 -0700
Message-Id: <20190527045641.18884-7-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527045641.18884-1-akuster808@gmail.com>
References: <20190527045641.18884-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 06/14] linux: update bbappend
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
X-List-Received-Date: Mon, 27 May 2019 04:56:52 -0000

remove untested code

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-%.bbappend     | 117 +-----------------
 1 file changed, 2 insertions(+), 115 deletions(-)

diff --git a/meta-integrity/recipes-kernel/linux/linux-%.bbappend b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
index 48560b1..931854e 100644
--- a/meta-integrity/recipes-kernel/linux/linux-%.bbappend
+++ b/meta-integrity/recipes-kernel/linux/linux-%.bbappend
@@ -1,116 +1,3 @@
-IMA_ENABLED_HERE := "${@'yes' if bb.data.inherits_class('kernel', d) and 'ima' in d.getVar('DISTRO_FEATURES', True).split() else 'no'}"
+FILESEXTRAPATHS_prepend := "${THISDIR}/linux:"
 
-IMA_FILESEXTRAPATHS_yes := "${THISDIR}/linux:"
-IMA_FILESEXTRAPATHS_no := ""
-FILESEXTRAPATHS_prepend := "${IMA_FILESEXTRAPATHS_${IMA_ENABLED_HERE}}"
-
-# These two patches are necessary to unpack archives with security.ima xattr
-# such that security.ima is taken from the archive. If the policy
-# allows hashing, unpatched kernels (at least up to 4.3) will replace
-# a signed hash in security.ima with a locally computed hash.
-#
-# Note that only bsdtar/libarchive are known to work; GNU tar sets
-# the security.ima on an empty file and the tries re-opening it for
-# writing its content, which then fails due to the IMA hash mismatch.
-#
-# Kernels >= 4.7 have the patches, while older kernels are likely to
-# need the patches. So apply them by default. To avoid that,
-# set IMA_EVM_SETATTR_PATCH_x.y.z (where x.y.z == linux kernel version)
-# to an empty string (to avoid patching) or some other patch files
-# suitable for that kernel.
-def ima_evm_setattr_patch(d):
-    result = []
-    linux_version = d.getVar('LINUX_VERSION', True) or ''
-    # These two patches are known to be included upstream.
-    if bb.utils.vercmp_string_op(linux_version, '4.7', '<'):
-        patches = d.getVar('IMA_EVM_SETATTR_PATCH_' + linux_version, True)
-        if patches != None:
-            # Patches explicitly chosen, may be empty.
-            result.append(patches)
-        else:
-            # Enabled by default.
-            result.append('file://0001-ima-fix-ima_inode_post_setattr.patch file://0002-ima-add-support-for-creating-files-using-the-mknodat.patch')
-    # This one addresses a problem added in 4.2. The upstream revert will land
-    # in some future kernel. We need to extend version check once we know
-    # which kernels have the patch.
-    if bb.utils.vercmp_string_op(linux_version, '4.2', '>='):
-        patches = d.getVar('IMA_EVM_SETATTR_REVERT_PATCH_' + linux_version, True)
-        if patches != None:
-            # Patches explicitly chosen, may be empty.
-            result.append(patches)
-        else:
-            # Enabled by default.
-            result.append('file://Revert-ima-limit-file-hash-setting-by-user-to-fix-an.patch')
-    return ' '.join(result)
-
-# Edison kernel too old, patch not applicable -> swupd is broken in Ostro OS for Edison.
-IMA_EVM_SETATTR_PATCH_3.10.98 = ""
-
-# Kernel config fragment enabling IMA/EVM and (where necessary and possible)
-# also patching the kernel.
-IMA_EVM_CFG_yes = " file://ima.cfg \
-                    ${@ ima_evm_setattr_patch(d)} \
-                  "
-IMA_EVM_CFG_no = ""
-SRC_URI_append = "${IMA_EVM_CFG_${IMA_ENABLED_HERE}}"
-
-# IMA_EVM_ROOT_CA, if set, is the absolute path to a der-encoded
-# x509 CA certificate which will get compiled into the kernel.
-# The kernel will then use it to validate additional certificates,
-# like the one loaded dynamically for IMA.
-#
-# Depending on the kernel version, there are two ways to add the
-# CA certificate:
-# - For Linux < 4.3, we put the x509 file into the source directory
-#   where the kernel compilation will find it automatically
-#   (http://lxr.free-electrons.com/source/kernel/Makefile?v=4.2#L115).
-# - For Linux >= 4.3, we set SYSTEM_TRUSTED_KEYS
-#   (http://lxr.free-electrons.com/source/certs/Kconfig?v=4.3#L29).
-#   The ima_evm_root_ca.cfg only contains a blank file name.
-#   The actual file name gets patched in after the file was used
-#   to configure the kernel (see do_kernel_configme_append).
-#   This has to point to a single file, i.e. using it for IMA has to
-#   be coordinated with other usages.
-#
-# The IMA_EVM_ROOT_CA default is set globally in ima-evm-rootfs.bbclass.
-# Need weaker default here in case that ima-evm-rootfs.bbclass is not
-# inherited.
-IMA_EVM_ROOT_CA ??= ""
-
-# Add CONFIG_SYSTEM_TRUSTED_KEYS (for recent kernels) and
-# copy the root certificate into the build directory. By using
-# the normal fetcher mechanism for the certificate we ensure that
-# a rebuild is triggered when the file name or content change.
-#
-# Recompiling on name change is a bit too aggressive and causes
-# unnecessary rebuilds when only the location of the file, but not its
-# content change. This may need further work, should it become a problem
-# in practice. For example, IMA_EVM_ROOT_CA could be redefined as
-# an URL that then gets found via the normal file lookup.
-#
-# The fetcher does not expand SRC_URI. We have to enforce that here.
-IMA_EVM_ROOT_CA_CFG_yes = "${@ \
- ((' file://ima_evm_root_ca.cfg' if bb.utils.vercmp_string_op('${LINUX_VERSION}', '4.3', '>=') else '') + \
-   ' file://${IMA_EVM_ROOT_CA}') \
- if '${IMA_EVM_ROOT_CA}' else ''}"
-IMA_EVM_ROOT_CA_CFG_no = ""
-
-SRC_URI_append = "${IMA_EVM_ROOT_CA_CFG_${IMA_ENABLED_HERE}}"
-
-do_kernel_configme_append () {
-    if [ '${IMA_EVM_ROOT_CA}' ] && grep -q '^CONFIG_SYSTEM_TRUSTED_KEYS=' ${B}/.config; then
-        # We can replace a blank value from ima_evm_root_ca.cfg,
-        # but when we find some other value, then we have to abort
-        # because we can't set more than one value.
-        eval `grep '^CONFIG_SYSTEM_TRUSTED_KEYS='`
-        if [ "$CONFIG_SYSTEM_TRUSTED_KEYS" ] && [ "$CONFIG_SYSTEM_TRUSTED_KEYS" != "${IMA_EVM_ROOT_CA}" ]; then
-            bbfatal "CONFIG_SYSTEM_TRUSTED_KEYS already set to $CONFIG_SYSTEM_TRUSTED_KEYS, cannot replace with IMA_EVM_ROOT_CA = ${IMA_EVM_ROOT_CA}"
-            exit 1
-        fi
-        pemcert=${B}/`basename ${IMA_EVM_ROOT_CA}`.pem
-        openssl x509 -inform der -in ${IMA_EVM_ROOT_CA} -out $pemcert
-        sed -i -e "s;^CONFIG_SYSTEM_TRUSTED_KEYS=.*;CONFIG_SYSTEM_TRUSTED_KEYS=\"$pemcert\";" ${B}/.config
-    fi
-}
-
-do_kernel_configme[depends] += "${@ 'openssl-native:do_populate_sysroot' if '${IMA_ENABLED_HERE}' == 'yes' and '${IMA_EVM_ROOT_CA}' else '' }"
+SRC_URI += "${@bb.utils.contains('DISTRO_FEATURES', 'ima', ' file://ima.cfg', '', d)}"
-- 
2.17.1


