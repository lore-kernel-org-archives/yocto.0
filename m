Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08C84E00A53; Fri,  3 Feb 2017 00:46:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.48 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.48 listed in list.dnswl.org]
Received: from mail-it0-f48.google.com (mail-it0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2801CE00A51
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 00:46:40 -0800 (PST)
Received: by mail-it0-f48.google.com with SMTP id 203so7235641ith.0
	for <yocto@yoctoproject.org>; Fri, 03 Feb 2017 00:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=0uhuJR6W3XeJrt3Le6bfNQfZzBUXICf18cjF98jeANY=;
	b=O7LkTP5IeGvwTZmD8Ggxw2AsWSOY0WxKUrtiHslzrmlzL7Vz8UD91LvEn0jfG6wTPz
	P68N/PxvMUG3+chhqsenj8gkISiKXjIjYdC2TFwF4CiMnAEAqpFNZNxEQEXl9qMb6Qsy
	ZL74xDahrmGjHmA0S5DG3aNYlNTvhQrkhxxNbHU4pD0ChSpfpkI8TU5ku6KlM0EJXJP6
	xxB55oFyc7mAXHquLvAcfotKHMTfNsBeSYQyml+WPd2h3ep1bEbDmqXquYUuaxjZOljH
	IQCAPN/7/GnaWEB0Sz2CR6JQmTbA02IffqWGNjPxJVeXTUkrU2PLJmfAHG4olZgFV5Hk
	IG5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0uhuJR6W3XeJrt3Le6bfNQfZzBUXICf18cjF98jeANY=;
	b=VumW9QvzaHQS8xYAPiPYT9fNt/JJF4E7moRAL48EROlV7LpaZUnMTOG5W5LE8VjnM1
	nVAPWZO9o4fV9kfniAnp3KpAomm02nWeh1qVzFX/b4kf7zH41qiaymBg6loHaRvqk4vG
	HqbKzEN1QIPVTJ/fsHB6b8/DDTVXSdpMtgB/tPIIF7kBVMuRuMnNudpdQJPiSmnqxhrF
	xptMWQpVLeFYyrgc8KJVhfRLl9NynP3LhkuSheqAax/mBz+Bhje0m2MZv4R71guBqVKU
	3cqQegdrtqtDmGO+I3XQD+0sEHPnBB3WrAT6v+sa2MVVRyUWZCkVKD1knUbdBHPmR+Ve
	nKrg==
X-Gm-Message-State: AIkVDXKc+tYTb1LWjhN3VIQe7rlL6FyAPIR6+btjdulhrGixDN8ODc6nLlyDWXRcfVsqPJvM
X-Received: by 10.36.40.142 with SMTP id h136mr190833ith.95.1486111600064;
	Fri, 03 Feb 2017 00:46:40 -0800 (PST)
Received: from pohly-desktop.fritz.box (p5DE8E712.dip0.t-ipconnect.de.
	[93.232.231.18])
	by smtp.gmail.com with ESMTPSA id r85sm635758itc.13.2017.02.03.00.46.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 03 Feb 2017 00:46:39 -0800 (PST)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Fri,  3 Feb 2017 09:46:12 +0100
Message-Id: <581743420eda4c0348879b1e17aa5c6a214b634d.1486111542.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
References: <cover.b42849c0e1d715c25364d4e1b5f3660bbe65c775.1486111542.git-series.patrick.ohly@intel.com>
Subject: [meta-security][PATCH v2 7/9] swtpm: cuse packageconfig
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
X-List-Received-Date: Fri, 03 Feb 2017 08:46:56 -0000

The CUSE support in swtpm does not depend on selinux. It is needed
for simulating a virtual TPM, one of the use cases for swtpm-native, so
enable it by default.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm_1.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 5283f5d..0733adc 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -25,12 +25,12 @@ PARALLEL_MAKE = ""
 TSS_USER="tss"
 TSS_GROUP="tss"
 
-PACKAGECONFIG ?= "openssl"
+PACKAGECONFIG ?= "openssl cuse"
 PACKAGECONFIG += "${@bb.utils.contains('DISTRO_FEATURES', 'selinux', 'selinux', '', d)}"
 PACKAGECONFIG[openssl] = "--with-openssl, --without-openssl, openssl"
 PACKAGECONFIG[gnutls] = "--with-gnutls, --without-gnutls, gnutls"
 PACKAGECONFIG[selinux] = "--with-selinux, --without-selinux, libselinux"
-PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse, libselinux"
+PACKAGECONFIG[cuse] = "--with-cuse, --without-cuse"
 
 EXTRA_OECONF += "--with-tss-user=${TSS_USER} --with-tss-group=${TSS_GROUP}"
 
-- 
git-series 0.9.1

