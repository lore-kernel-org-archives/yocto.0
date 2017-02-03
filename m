Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0800AE009C9; Fri,  3 Feb 2017 00:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6DD9E009A5
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:21 -0800 (PST)
Received: by mail-it0-f53.google.com with SMTP id c7so7206709itd.1
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=tfrUianDNW3Q+NbaxgbKEWvklND9m3tHfbqvT6mAx/Q=;
	b=2MZhXIU2juBuvRdCxAqROT7SP7T0t1wtw5utrTvn0f8E9yMnFMFQtPI25VQxAcW+6F
	a9VFf2p1Qa280yS5zH5bBr4SOxAbImnR3ghCuI1zoxXmUPpaxxNeS/p0SkKclEPRcwmo
	oVXi4MX8YeArpWQwGYkX7WeOlI7DovlRmXlTqxeAHpp57wcmzIAVhvlehaKYc10Z6V7z
	WwKTlZpwdyYYy7pWYdkRpzWiui7x3hjbYxGBG5h6oM3r76tBOzNvpBE2nkHhZRqE7CcU
	OxizmNPjy/5VraAFaKe/1tLmFwfjKrOdTo+YUtHGAqUcoq6iIzM6fvz4zxeyO2C79kE/
	r98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=tfrUianDNW3Q+NbaxgbKEWvklND9m3tHfbqvT6mAx/Q=;
	b=KFu9eQ96TVK7ty4JzN2aL/5czW37yHfoCwgT75g5WGp6d/Ot6ATOgK62t8WS03wZjp
	UadU5307QE6kaEqbJEdVNxUl7zvpUp4C4Cyms9ECIohaUUwtgmMbm1jsasy0CaBJx93O
	y6yvVDoxsZjUb/BO08eZQGamPEM1By3GOFIBmC/h6APXNI8+7eqRPq92hX2kAYwVdcnL
	AaJXMcZwHq0F+gRXIDULBmbsOMyFIEvsW7/YDZT0DgrvHniCp9KejrkoXLzcsvys5PbD
	IMCmfC/7Jvvvo1dAG++eg3Wle1QyVTj7zKEV8S6N916GI+r6km9m4revQNinxv+rRSn+
	vTPA==
X-Gm-Message-State: AIkVDXLdVMViPDQtx+Hlmvl2Wg0mCKdajwf+wqCJvhhUdWNaTkbniJRkat1h5hR2y5izU7DO
X-Received: by 10.36.61.143 with SMTP id n137mr193733itn.82.1486111580295;
	Fri, 03 Feb 2017 00:46:20 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:19 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:05 +0100
Message-Id: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH v2 0/9] tpm: virtual TPM for qemu
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:29 -0000

I recently started using swtpm-native in combination with the qemu-tpm
patches to simulate a virtual TPM chip in qemu. The qemu-tpm patches
should go into OE-core, but currently usage is a bit cumbersome
(requires root privileges and manually starting swtpm before each
runqemu invocation), so at this time I only consider the meta-security
changes ready and useful enough for merging.

Inside the virtual machine I used tpm-tools + trousers to set up
sealed keys for EVM, which required fixing a few things.

These patches were based on Armin's swtpm+trousers version update
series which needs to be merged first to avoid merge conflicts.

Changes in V2:
- add --system to tss user and group creation
- revised commit message for wrapper scripts (swtpm_cuse needs
  absolute path to tpm state dir, can be passed via parameter)
- another swtpm SRCREV bump

Patrick Ohly (9):
  trousers: missing libtspi.so.1 in libtspi package
  trousers: recommend tcsd
  trousers: tcsd.conf must be owned tss:tss
  swtpm: enable native and nativesdk flavors
  swtpm: depends on tpm-tools
  swtpm: fix compiler format warning
  swtpm: cuse packageconfig
  swtpm-wrappers: simplify using swtpm-native
  swtpm: update to latest tip

 recipes-tpm/swtpm/files/fix_lib_search_path.patch | 64 ++++++++++++++++-
 recipes-tpm/swtpm/files/fix_signed_issue.patch    |  2 +-
 recipes-tpm/swtpm/swtpm-wrappers.bb               | 41 ++++++++++-
 recipes-tpm/swtpm/swtpm_1.0.bb                    | 14 +++-
 recipes-tpm/trousers/trousers_git.bb              | 11 +--
 5 files changed, 124 insertions(+), 8 deletions(-)
 create mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
 create mode 100644 recipes-tpm/swtpm/swtpm-wrappers.bb

base-commit: 6787dd986122cd6420b1f348c4550a42ed596f57
-- 
git-series 0.9.1

