Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB54E00B27; Tue,  9 May 2017 07:47:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57488E00A48
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 07:47:04 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id v14so290747pfd.3
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 07:47:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=7wA3PGb4HCrdc9fSIOOl4A3DuOjuzsnyNow5V4orCfQ=;
	b=DKcWikkGHUZTnY+k+iIn8D9ogLwaRBtqQRLnWft9RD805ZEt7BFCqUWgQ4+dZzH0w1
	hrH7aHV1PwD9mnV0LitZRZ8IeUO1TxWk9ekHr6xmNXl0HS/EG0ZsKc0pagO7w9dMBimE
	QZMROepds9NHyFznzf997glItpTziT/roP9ZHg/ikSIN0VPs4gUv4E2plXoELsT/zx5L
	NxkHREo3fqf7s9sE+iYj7Wnm9fGIFBLFZPDK3S8mbwVls07Pl7k8u6GnCuEMNbgaqHRp
	0Rzjyqbh2/VZxBZ8sndfRb6gPRiPf5L2PjxavRaZlTM3N/EkYOJ364SAH1VyE1W+7m7I
	4IAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=7wA3PGb4HCrdc9fSIOOl4A3DuOjuzsnyNow5V4orCfQ=;
	b=Xpmkkc3CxYprMESxiAZqoBA8M7/XbkYgcBYUYOi2aLlJ0mBXGZqIJDWKSUzbK42PzH
	a9nFqgItlxATSoEgiRCs2yMznnpJKfyOIDSbfU6J9D/eMK1jo+Z3SJ7GKIn87suLBFyv
	J2c7YVaNu7+QQneue+Hb/VuSNqnX7K6gQn0bFPJE9PV1hbvFLMvqS7dVhDlBRX3WQRa+
	JQcmNPCBtJk5J4HyY6nNGQu0wiX/LURxlWpY5owF3SLRWqckgswxRgomD6ulUWfnkKLf
	tHcZ0brfoQhcfuH08ZGmH4SGDIB5zkQlAghmz8Uy5LQMSTYhkU3f0EbJdVjhOzRrEGEx
	9cfQ==
X-Gm-Message-State: AODbwcBoyTGBU1tQr2E+ZrsjYd7m68/W1Db5pT7rcFo0YsEqcASilgrn
	v6RxPCCcc5WQswz2
X-Received: by 10.99.121.67 with SMTP id u64mr546800pgc.230.1494341224060;
	Tue, 09 May 2017 07:47:04 -0700 (PDT)
Received: from akuster-ThinkPad-X240.hsd1.ca.comcast.net
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id 194sm319130pgf.62.2017.05.09.07.47.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 09 May 2017 07:47:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Tue,  9 May 2017 07:46:51 -0700
Message-Id: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-security][PATCH 00/10] move tpm into its own layer
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
X-List-Received-Date: Tue, 09 May 2017 14:47:06 -0000

tpm recipes copied as-is

This was done to allow inclusion of TPM components independent of the rest of the layer.
minimizes layerdepends

fixed incorrect use of DISTRO_FEATURES

Updated tpm kernel configs to newer version

added a few new packagegroups

Armin Kuster (10):
  tpm: move to a sub layer
  change tpm from distro to machine feature
  meta-tpm: add base package group as was in meta-security
  packagegroup: remove tpm components
  tpm packagegroups: split into logical units
  tpm-i2c: some systems us i2c TPM
  kernel tpm rework
  tpm-image: used for testing for now.
  linux-stable: fix module selections
  tpm2: package groups fixes

 meta-tpm/README                                    |  0
 meta-tpm/conf/layer.conf                           | 13 ++++++++++
 meta-tpm/recipes-core/images/security-tpm-image.bb | 19 ++++++++++++++
 .../packagegroup/packagegroup-security-tpm-i2c.bb  | 19 ++++++++++++++
 .../packagegroup/packagegroup-security-tpm.bb      | 29 ++++++++++++++++++++++
 .../packagegroup/packagegroup-security-tpm2.bb     | 18 ++++++++++++++
 .../packagegroup/packagegroup-security-vtpm.bb     | 14 +++++++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg  |  8 ++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc  |  3 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg |  6 +++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc |  3 +++
 .../recipes-kernel/linux/linux-yocto/tpm_i2c.cfg   | 15 +++++++++++
 .../recipes-kernel/linux/linux-yocto/tpm_i2c.scc   |  6 +++++
 .../recipes-kernel/linux/linux-yocto/tpm_x86.cfg   |  4 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg |  5 ++++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc |  4 +++
 .../recipes-kernel/linux/linux-yocto_4.%.bbappend  | 17 +++++++++++++
 .../Convert-another-vdprintf-to-dprintf.patch      |  0
 .../files/Use-format-s-for-call-to-dprintf.patch   |  0
 .../libtpm/files/fix_signed_issue.patch            |  0
 .../recipes-tpm}/libtpm/libtpm_1.0.bb              |  0
 .../recipes-tpm}/swtpm/files/fix_fcntl_h.patch     |  0
 .../swtpm/files/fix_lib_search_path.patch          |  0
 .../swtpm/files/fix_signed_issue.patch             |  0
 .../recipes-tpm}/swtpm/files/ioctl_h.patch         |  0
 .../recipes-tpm}/swtpm/swtpm-wrappers-native.bb    |  0
 .../recipes-tpm}/swtpm/swtpm_1.0.bb                |  0
 .../tpm-tools/files/tpm-tools-extendpcr.patch      |  0
 .../recipes-tpm}/tpm-tools/tpm-tools_git.bb        |  0
 .../recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb  |  0
 .../tpm2.0-tss/tpm2.0-tss/ax_pthread.m4            |  0
 .../tpm2.0-tss/fix_musl_select_include.patch       |  0
 .../recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb      |  0
 .../tpm2simulator/tpm2simulator-native_116.bb      |  0
 ...path-use-POSIX-getpwent-instead-of-getpwe.patch |  0
 .../recipes-tpm}/trousers/files/tcsd.service       |  0
 .../trousers/files/trousers-udev.rules             |  0
 .../recipes-tpm}/trousers/files/trousers.init.sh   |  0
 .../recipes-tpm}/trousers/trousers_git.bb          |  0
 recipes-kernel/linux/linux-yocto_4.10.bbappend     |  3 ---
 .../packagegroup/packagegroup-core-security.bb     | 18 ++------------
 41 files changed, 185 insertions(+), 19 deletions(-)
 create mode 100644 meta-tpm/README
 create mode 100644 meta-tpm/conf/layer.conf
 create mode 100644 meta-tpm/recipes-core/images/security-tpm-image.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/libtpm_1.0.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_fcntl_h.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_lib_search_path.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/ioctl_h.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm-wrappers-native.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm_1.0.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm-tools/files/tpm-tools-extendpcr.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm-tools/tpm-tools_git.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2simulator/tpm2simulator-native_116.bb (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/tcsd.service (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/trousers-udev.rules (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/trousers.init.sh (100%)
 rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/trousers_git.bb (100%)

-- 
2.7.4


