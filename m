Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F9B8E00CC8; Thu,  7 Sep 2017 08:56:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9833E00C62
	for <yocto@yoctoproject.org>; Thu,  7 Sep 2017 08:56:03 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id k20so253168wre.4
	for <yocto@yoctoproject.org>; Thu, 07 Sep 2017 08:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=0gqH3sFCJt4I1daM6yjtr4s9AYOP9oBDrPoyBeyd+U4=;
	b=O/5DGJvOA6PazjboN5iCu9dUJuQg9dm1PLVc+kznH2A+MjotGwo/kQTrsh/oVmOyHD
	TE+5EYpIncPxPBfJxYIYHQ3KnI0SvwNPkS5vx8gnciThPIiBVbXLn+4gmlRyRxtV0zRs
	tOVi0zdllVE/eCw2D6aC6Mz4JBZ/7I/EniAI8K3BCwzIUFULsT3ym6kjuLjHvuJvUznX
	Skog2GiqWAUebcQQeHHl74oCInVCJ0WY+Gv3Dqkl1KkJRjBij+nrN76iSulEO+D8fm1t
	kSMcfxZsvUmzKZIhVTysdFHJkht7df/19OJfjmlj0NGQIv4ijtPX2nmAhIofXLaMws5F
	clGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0gqH3sFCJt4I1daM6yjtr4s9AYOP9oBDrPoyBeyd+U4=;
	b=NK7cMwEvTffgtM+CXxuRkHbjTY5dsL8lZz79MFMR1LS6w6zoB+s4gT7VDXvYS4/znV
	kB3JNjJTlgqbnaNVIiaO6jl1fnaxXeHwTKZ+m4VIZIi+fn3nUQKEW4ODYk+oRaBAYCjV
	0eniWbq0aubSmqrN4NaEVuk58VOTNy62AkSO/ZXyUTICq1iQPcs8mPS62udjDFvboHx/
	uRMSJCCJLn95K98DMJCTdxVfJkZpBhy2PdlGQeZv8VmZUVb3qRLm/SeG4h7uLRKFurcp
	HeNDts44udDHP+tTaNExuIaJIDFzYTozCsbqYJZyqK1/iYb1J94bagcJYq1tucxu5U1D
	lVdw==
X-Gm-Message-State: AHPjjUgLBhhrTe1lR0xDoXwW1htTb63fAwn7deLmbqy+KHM0XZ5RI+ED
	/SAKuy/+4lborWjPQTI=
X-Google-Smtp-Source: ADKCNb59XCLhDnfO6hi0/J9NbSgkZKFLwIbtdGfJGdcOjU4efetMiXDjXfv+5PMk+Y0VC4oea8hTIQ==
X-Received: by 10.223.185.25 with SMTP id k25mr2271273wrf.302.1504799761941;
	Thu, 07 Sep 2017 08:56:01 -0700 (PDT)
Received: from pohly-desktop.fritz.box (p5DE8E670.dip0.t-ipconnect.de.
	[93.232.230.112])
	by smtp.gmail.com with ESMTPSA id r65sm732624wmf.38.2017.09.07.08.56.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 Sep 2017 08:56:01 -0700 (PDT)
From: Patrick Ohly <patrick.ohly@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  7 Sep 2017 17:55:56 +0200
Message-Id: <92571f32870c78d268447b5f2eb5be18dc980171.1504799605.git-series.patrick.ohly@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-security][PATCH] tpm2.0-tss: fix systemd package list
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
X-List-Received-Date: Thu, 07 Sep 2017 15:56:05 -0000

Commit 4c4fa8c "tpm2.0-tss: install resourcemgr service" introduced
systemd support for the resourcemgr package, but left the default
${PN} in SYSTEMD_PACKAGES, leading to an apparently harmless (?) build
error, emitted by systemd.bbclass via bb.error() because tpm2.0-tss
does not have a package of that name:

ERROR: tpm2.0-tss-git-r0 do_package: tpm2.0-tss does not appear in package list, please add it

Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
---
 meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
index 14ec0ab..fd5ace8 100644
--- a/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
+++ b/meta-tpm/recipes-tpm/tpm2.0-tss/tpm2.0-tss_git.bb
@@ -33,7 +33,7 @@ EXTRA_USERS_PARAMS = "\
 	groupadd tss; \
 	"
 
-SYSTEMD_PACKAGES += "resourcemgr"
+SYSTEMD_PACKAGES = "resourcemgr"
 SYSTEMD_SERVICE_resourcemgr = "resourcemgr.service"
 SYSTEMD_AUTO_ENABLE_resourcemgr = "enable"
 

base-commit: 1014cc61fc1d5723f77fcd1a0147f3ca10519171
-- 
git-series 0.9.1

