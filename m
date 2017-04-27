Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DE50E00724; Thu, 27 Apr 2017 09:14:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFB86E003C1
	for <yocto@yoctoproject.org>; Thu, 27 Apr 2017 09:14:40 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id a103so26629913ioj.1
	for <yocto@yoctoproject.org>; Thu, 27 Apr 2017 09:14:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=sicQ/KZSZtzE25hUm+zEW44MurmriHEO89QK+QRQgyY=;
	b=nmWvePiTQA2bJRyfEI3tgAgfdJ+Igydn4bUUAOOJ+5ZrMFHCsG/bHv6xjqdlUMJ+kL
	tcmz6Xhn1N63XLCaI3L+p/JKvOl9l4svcdfDZriXDXPmEAkhX3gxVT4mxyQPGxz2k/Wy
	YKWaNDjGu7M/6saN/plIjHz+HEaQcb487LfNq76o1GRYrPBUAYWtvYCU3OHj8t6mF6Hm
	Y3zPNF5DpoNTS+VXZf1MOsPUXSWhJBwLaZu4Mcbd313wwmgnfyVCBdxDPMtCrZgs1qSJ
	oRfv5YWJyt2OKsd0jw3a59xMCuVIccjO+Ub49AwEXZlNQOBMU48sZoFxzt9XnG8Ai60s
	jSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=sicQ/KZSZtzE25hUm+zEW44MurmriHEO89QK+QRQgyY=;
	b=McO60EpW15VpS4fatudyEnI+zJzTfWoUWhcL+rOYB5Pbvj6xUTCLDSKv8Bp0qV9dLR
	kdKd78E7eAagbyL++7YdGh7Rnh7nj8rY2hH1OL8wqCQ49Mh/OIK++1Owg2TVrn/r9tdh
	EAf9kyMOcChCsnTxRiu+J0S2PkNUvwYB2F+w9xYWOo1YNH4aGEGtkflMUHTjB+pilrLR
	Y/rOPl5Lcrm8Y2Nsox4TjUt0FCQMq5f25U0zkHvcSbaBWM0b1MyUGjdpG7m6TL+vlz1c
	s8nceTI0DnH1B0MKE6fFdDCeV35t0a6b1FSPBuSUNkMtvvVduaKFmqx9Ig62voEqTosj
	OovA==
X-Gm-Message-State: AN3rC/7kSmO1ozPN8VlkD2FwiOfT0m2XDkGIond3QxIDLO1/mdZKLiGN
	2yHDchILtmEoZhAVxS8=
X-Received: by 10.107.141.84 with SMTP id p81mr5946253iod.61.1493309679938;
	Thu, 27 Apr 2017 09:14:39 -0700 (PDT)
Received: from pohly-desktop.fritz.box (p57A56857.dip0.t-ipconnect.de.
	[87.165.104.87]) by smtp.gmail.com with ESMTPSA id
	n77sm1197180ioe.33.2017.04.27.09.14.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 27 Apr 2017 09:14:38 -0700 (PDT)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 27 Apr 2017 18:14:31 +0200
Message-Id: <20170427161431.43429-1-patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH 1/1] swtpm-wrappers-native.bb: need netstat
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
X-List-Received-Date: Thu, 27 Apr 2017 16:14:44 -0000

netstat from net-tools-native is needed for swtpm_setup.sh, which uses
it to check whether the swtpm daemon has started. The scripts hangs in
a loop during startup when netstat is missing.

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 recipes-tpm/swtpm/swtpm-wrappers-native.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-tpm/swtpm/swtpm-wrappers-native.bb b/recipes-tpm/swtpm/swtpm-wrappers-native.bb
index 0af1db6..644f3ac 100644
--- a/recipes-tpm/swtpm/swtpm-wrappers-native.bb
+++ b/recipes-tpm/swtpm/swtpm-wrappers-native.bb
@@ -1,6 +1,6 @@
 SUMMARY = "SWTPM - OpenEmbedded wrapper scripts for native swtpm tools"
 LICENSE = "MIT"
-DEPENDS = "swtpm-native tpm-tools-native"
+DEPENDS = "swtpm-native tpm-tools-native net-tools-native"
 
 inherit native
 
-- 
2.11.0


