Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0D60E00C43; Sun, 26 May 2019 21:56:45 -0700 (PDT)
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
	*      [209.85.210.171 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com
	[209.85.210.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 992A0E00C36
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:44 -0700 (PDT)
Received: by mail-pf1-f171.google.com with SMTP id u17so8843221pfn.7
	for <yocto@yoctoproject.org>; Sun, 26 May 2019 21:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=NW0CCyM80ZanBT2x6mSxQr7H2Wy32nkbcolbNgikvHM=;
	b=bOsnlAL1UjV/XDi2YG0tEzz+/IlRmgtlCsBAICw0lw8UlntwKNtsVjkVeJclfjoKt4
	sbnynIzeQg/jQtpx+wOvrht5+sa6vbIIUTclGfKsCvsZHeoDZpM22uPX+b7/CbaCFg+o
	6/Fw//TYlnaU6U5FYUjIFytxRKZXp6im5bpxZBcFcGyWVFULY4msrdebhMqjbWKASLyz
	UuZnFcFYfrbBjKiw//py9F1STRR0gY6UyvZA/Zo6V05x/4lENVcKgTlA5Kcy8wg6is/Y
	zJCx6YMUg7g9fhboaTGTiKfwD3s2HYElUWnHRZ5IIppwbeI5wcorLUSsgFvpuG3dGwca
	qB6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=NW0CCyM80ZanBT2x6mSxQr7H2Wy32nkbcolbNgikvHM=;
	b=cuY7DtR9Hv3Vzxo3uXslu01HtVOkCLs/0aUzXyNRIM5x00HTdNSCm+S1boaxiAonbU
	6QvPdaaH5qnT8+C50I6YtfKNxdFH8z9CAGUMxH0IC1qMW9uWjGagRtow6r1oMrOEXups
	3RPLlQPubzOiu6qa6M2FQDafSSTmloDGUPqJ4CnYPN5XksuVYY1f/UdOGqsgJdoNi+mH
	2f9aQt+Pv+/y3MSmLY+xsm5tH94iXyE/8+q7vzEHUh1xV55aH2bB37UvJpLXgTuN+pVH
	ptkRGvISrVrmak5xpj/v9e/VOSuu5f/fgivOZsLBJpnWBsUNaht7eJouRkHMg6rMVO+D
	tdpw==
X-Gm-Message-State: APjAAAXbeBdQTgcoKc4G5/NuviARVlP8Hko7eMw+Jx2KMiG4UFTydUmb
	kUC9fVsouY27CCqul5c+zo1kvg1i
X-Google-Smtp-Source: APXvYqyouUiTXn8cjg151AmI20CyehJvgMq07OQpUZqiZH1jZaVDYuVyzZWEer5DECVgaLwhDGcBkg==
X-Received: by 2002:a62:ee04:: with SMTP id e4mr19799881pfi.232.1558933003715; 
	Sun, 26 May 2019 21:56:43 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	x24sm8648072pjq.27.2019.05.26.21.56.42 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 26 May 2019 21:56:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 26 May 2019 21:56:27 -0700
Message-Id: <20190527045641.18884-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 00/14] Port over meta-integrity
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
X-List-Received-Date: Mon, 27 May 2019 04:56:45 -0000

Copied meta-integrity from meta-intel-iot-security that Intel created,
to carry on maintenance. 

This update that code base to work on master.

runtime test passes on Arm H/w and qemux86-64

Armin Kuster (14):
  meta-integrity: port over from meta-intel-iot-security
  layer.conf: add LAYERSERIES_COMPAT
  README: update
  ima-evm-utils: cleanup and update to tip
  ima.cfg: update to 5.0 kernel
  linux: update bbappend
  base-files: add appending to automount securityfs
  ima-policy-hashed: add new recipe
  ima_policy_simple: add another sample policy
  policy: add ima appraise all policy
  data: remove policies
  initramfs: clean up to pull in packages.
  runtime qa: moderize ima test
  image: add image for testing

 meta-integrity/README.md                      | 250 ++++++++++++++++++
 meta-integrity/classes/ima-evm-rootfs.bbclass |  92 +++++++
 meta-integrity/conf/layer.conf                |  24 ++
 .../data/debug-keys/privkey_ima.pem           |  16 ++
 meta-integrity/data/debug-keys/x509_ima.der   | Bin 0 -> 707 bytes
 meta-integrity/lib/oeqa/runtime/cases/ima.py  | 129 +++++++++
 .../base-files/base-files-ima.inc             |   5 +
 .../base-files/base-files_%.bbappend          |   1 +
 .../images/integrity-image-minimal.bb         |  22 ++
 .../initrdscripts/initramfs-framework-ima.bb  |  28 ++
 .../initrdscripts/initramfs-framework-ima/ima |  52 ++++
 .../packagegroup-ima-evm-utils.bb             |   9 +
 .../systemd/files/machine-id-commit-sync.conf |   2 +
 .../systemd/files/random-seed-sync.conf       |   3 +
 .../recipes-core/systemd/systemd_%.bbappend   |  13 +
 .../recipes-kernel/linux/linux-%.bbappend     |   3 +
 .../0001-ima-fix-ima_inode_post_setattr.patch |  51 ++++
 ...for-creating-files-using-the-mknodat.patch | 138 ++++++++++
 ...-file-hash-setting-by-user-to-fix-an.patch |  60 +++++
 .../recipes-kernel/linux/linux/ima.cfg        |  18 ++
 .../linux/linux/ima_evm_root_ca.cfg           |   3 +
 ...link-to-libcrypto-instead-of-OpenSSL.patch |  65 +++++
 ...ls-replace-INCLUDES-with-AM_CPPFLAGS.patch |  43 +++
 ...clude-hash-info.gen-into-distributio.patch |  31 +++
 ...ma-evm-utils-update-.gitignore-files.patch |  34 +++
 ...nd-line-apply-operation-to-all-paths.patch |  68 +++++
 .../ima-evm-utils/disable-doc-creation.patch  |  50 ++++
 ...t-depend-on-xattr.h-with-IMA-defines.patch |  47 ++++
 .../ima-evm-utils/ima-evm-utils_git.bb        |  41 +++
 .../files/ima_policy_appraise_all             |  29 ++
 .../ima-policy-appraise-all_1.0.bb            |  18 ++
 .../ima_policy_hashed/files/ima_policy_hashed |  77 ++++++
 .../ima-policy-hashed_1.0.bb                  |  20 ++
 .../ima_policy_simple/files/ima_policy_simple |   4 +
 .../ima-policy-simple_1.0.bb                  |  18 ++
 meta-integrity/scripts/ima-gen-CA-signed.sh   |  48 ++++
 meta-integrity/scripts/ima-gen-local-ca.sh    |  42 +++
 meta-integrity/scripts/ima-gen-self-signed.sh |  41 +++
 38 files changed, 1595 insertions(+)
 create mode 100644 meta-integrity/README.md
 create mode 100644 meta-integrity/classes/ima-evm-rootfs.bbclass
 create mode 100644 meta-integrity/conf/layer.conf
 create mode 100644 meta-integrity/data/debug-keys/privkey_ima.pem
 create mode 100644 meta-integrity/data/debug-keys/x509_ima.der
 create mode 100644 meta-integrity/lib/oeqa/runtime/cases/ima.py
 create mode 100644 meta-integrity/recipes-core/base-files/base-files-ima.inc
 create mode 100644 meta-integrity/recipes-core/base-files/base-files_%.bbappend
 create mode 100644 meta-integrity/recipes-core/images/integrity-image-minimal.bb
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
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0001-ima-evm-utils-link-to-libcrypto-instead-of-OpenSSL.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0002-ima-evm-utils-replace-INCLUDES-with-AM_CPPFLAGS.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0003-ima-evm-utils-include-hash-info.gen-into-distributio.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/0004-ima-evm-utils-update-.gitignore-files.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/command-line-apply-operation-to-all-paths.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/disable-doc-creation.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils/evmctl.c-do-not-depend-on-xattr.h-with-IMA-defines.patch
 create mode 100644 meta-integrity/recipes-security/ima-evm-utils/ima-evm-utils_git.bb
 create mode 100644 meta-integrity/recipes-security/ima_policy_appraise_all/files/ima_policy_appraise_all
 create mode 100644 meta-integrity/recipes-security/ima_policy_appraise_all/ima-policy-appraise-all_1.0.bb
 create mode 100644 meta-integrity/recipes-security/ima_policy_hashed/files/ima_policy_hashed
 create mode 100644 meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
 create mode 100644 meta-integrity/recipes-security/ima_policy_simple/files/ima_policy_simple
 create mode 100644 meta-integrity/recipes-security/ima_policy_simple/ima-policy-simple_1.0.bb
 create mode 100755 meta-integrity/scripts/ima-gen-CA-signed.sh
 create mode 100755 meta-integrity/scripts/ima-gen-local-ca.sh
 create mode 100755 meta-integrity/scripts/ima-gen-self-signed.sh

-- 
2.17.1


