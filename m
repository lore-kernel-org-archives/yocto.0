Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA584E00DA9; Thu, 26 May 2016 03:22:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.65 listed in list.dnswl.org]
Received: from mail-lf0-f65.google.com (mail-lf0-f65.google.com
	[209.85.215.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 016B3E00DA4
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 03:22:36 -0700 (PDT)
Received: by mail-lf0-f65.google.com with SMTP id d132so5620865lfb.3
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 03:22:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=10IB7c4xmV7d018st7Y6oeqkxjD9vBVIBDkATzZrDyY=;
	b=esouWEmLZAbUj7Ck7pMguKugw+KA9aCw5qUTtJ09a+v9B90+M6SGs6i7gvjdS7fN1H
	HBqiTUcmugYXn5USAzTg9m6o20J+nPVGLgWUUfASYF/OiYTWNUbBQevK9kGHWR/ziRLg
	XBxmROcKZy2Jne+TfBa5t3EvvLRpMSsCrrTmDV59ZZ5UhLGLvYHD6RIkzQ69jbOK08zW
	NYU/6yIXvPuUCWv0BTMeD/2FqTGi9nwnqj9JS5I91ln+IetMYYkRGF46RSPcIVOAESkQ
	uPx19jE7yNFORdZiXYtOA7ZTgYiE27RGqv0qRUJ6QHCFMl9vKpjt5BWTDxgPLCguiqC6
	W1jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=10IB7c4xmV7d018st7Y6oeqkxjD9vBVIBDkATzZrDyY=;
	b=GeQ9F56clkHIXBLaYlW5J3k3yTZbR0xjyray9rqaLhyPHUo3Oe0G3I6+3N+jRKPRG9
	6E/HsLSWfp8pQrmev8EmO2WiUy8idN6jVEzRnvwV33MVvrGiRkXws+NSsqq9tJI19oJv
	2qcZ3FABQ12stUUXA11nUh4bM1b4eAViNFQmFegVV/MNdLKKC/QtJi35MTIwD6ZKjLkt
	IpkOjWUHVocM9//y+Kv+EXVavF7N3wPpGWPpM7JXrhX6C93RErUZ08DZsvV6/5GrsDRT
	7U9O5j3FoVZNmIo9kCwnazbVby4RDJRW7E1d2j+XHpuQC9x0LNXvkkUEXiF/tK8s8W+U
	TquA==
X-Gm-Message-State: ALyK8tKtEr3LG4nMfFd+Do2LdwRxo2asgUHyHW4j1RsJRYOyVqZbZzh0KAw7e7lnlsbErA==
X-Received: by 10.194.205.134 with SMTP id lg6mr8514902wjc.153.1464258154823; 
	Thu, 26 May 2016 03:22:34 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	q125sm2755905wmd.19.2016.05.26.03.22.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 26 May 2016 03:22:30 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 26 May 2016 15:52:05 +0530
Message-Id: <1464258125-30592-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux][PATCH] refpolicy-minimum_git: add systemd dependent policy modules
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
X-List-Received-Date: Thu, 26 May 2016 10:22:39 -0000

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
 recipes-security/refpolicy/refpolicy-minimum_git.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
index 47ed558..04ceadd 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
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


