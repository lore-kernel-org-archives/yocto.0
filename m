Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4586E00CD0; Wed, 25 May 2016 00:12:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5085FE00C82
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 00:12:01 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id gp3so4305213pac.2
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 00:12:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=qwC+XZwAcKfVMlVHGhBnCct4HNPG3qaY/CEwKEePBaA=;
	b=x4HIAOyLxKuqKyULJuMKqhWCjEmw6iS+efhJKk3NB24j0ujWZ0SE249ECuZo7rVFtR
	2g6HuUO8opvIzqIDnYpnpNAAiwtUzK4SwKE3BS1WTqxc31H1YzVR5H9JkV0Laxv0+N3u
	WNfPYraQKY1mZNTemWGaXSncypMH8zQCh00QFVsSfUy5mU2ctWGUhO1pmlVUu6K3zrYh
	aK+mflWmNcLxYPq8AwTzYB7h4EIAsdBTX1UF9KYPDx8XK6gvwsAkEBO5nQLgHq/y/ZHA
	buK50KC/L2LCyObI4GbEWE6iVm++rXvPzcJbQJrOr7bKQEYYNqgOc6dehCAeBOgYLhOI
	kTTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=qwC+XZwAcKfVMlVHGhBnCct4HNPG3qaY/CEwKEePBaA=;
	b=FmJx5Jk+EnL5H51OKUdpgOFVQEVtz7usGFAI5Czd01Ea9ubDriANgvGelwqRjgik08
	kC2ij7dltsq3LsBGMqQS7KkaOP5RhL9x7Wx2d2d7a53IhyS9IsEAXdBHKA8MP/wdhxyX
	3vI0rbMns5sJp2UPSXC6AAHNFecOEnwAMkRSdTutNISmjIoMYK3hNj4G1y4/V6OWmZW8
	7kTSmLWfIGom3VX00BESfdm4WuI+ixt1CP+wBQb5UFzpaJeDyQNaxnvSH3XCmHiDUu5b
	laSa0/m2Qw4CrqhEAW7BJviHCgqhTX79m53ayTBBx9bgn72DjvPK/mEWQtwYLqYmrYj3
	O8GA==
X-Gm-Message-State: ALyK8tJHQjq6G+tQ1PgWi9nyo3QqdBDyFs5jGtAQhb1wJkO5e4tNLaXET2DPYJ1NV6C8kA==
X-Received: by 10.66.185.68 with SMTP id fa4mr3420162pac.41.1464160321046;
	Wed, 25 May 2016 00:12:01 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id p1sm10117698paz.8.2016.05.25.00.11.59
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 25 May 2016 00:12:00 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 25 May 2016 12:41:54 +0530
Message-Id: <1464160314-28619-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH 2/2] refpolicy-minimum_2.20151208: add systemd dependent policy modules
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
X-List-Received-Date: Wed, 25 May 2016 07:12:05 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

with systemd enabled refpolicy-minimum build breaks due to missing dependent
policy modules, so add the dependent modules: clock, systemd, udev
conditionally based on DISTRO_FEATURES.

dependent systemd policy modules needed to fix these errors:

* Failed to resolve 'adjtime_t' in typeattributeset statement at line 138 of
 .. modules/100/init/cil

* Failed to resolve 'systemd_kmod_conf_t' in typeattributeset statement at
line 141 of.. moules/100/init/cil

* Failed to resolve 'udev_t' in typeattributeset statement at line 143 of
modules/100/init/cil semodule:  Failed!

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 47ed558..04ceadd 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -17,6 +17,8 @@ CORE_POLICY_MODULES = "unconfined \
 	application libraries miscfiles logging userdomain \
 	init mount modutils getty authlogin locallogin \
 	"
+#systemd dependent policy modules
+CORE_POLICY_MODULES += "${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'clock systemd udev', '', d)}"
 
 # nscd caches libc-issued requests to the name service.
 # Without nscd.pp, commands want to use these caches will be blocked.
-- 
1.9.1


