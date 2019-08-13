Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36BE3E00DD5; Tue, 13 Aug 2019 16:54:45 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.175 listed in list.dnswl.org]
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
	[209.85.215.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D406EE00DA4
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 16:54:44 -0700 (PDT)
Received: by mail-pg1-f175.google.com with SMTP id i18so52090655pgl.11
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 16:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=knHQ8vQgaR30kmEMxmVNJzoVYJnk59OYrTH4p/5Jzig=;
	b=REsEs7fhLRzqJp3Mhk8qu2TeKyni+LgR+T/4rg8loeysn8Gzg8UXyJvdytJhaq5t7m
	BU+utjoGmyKGB1lEoACvFxWs3iofhRA+j4mDWsKGiA9jF0yto2QuwjqqH9BMZFqFUqF2
	oQ/KDq2q80k9QYymkryVcwbn5ns+f83z37NVCPBH3O7epM1OW8A2ACofYxLKKiXc435v
	0im7RzWKMgClF6uamJT3bozEvljsER8vkhCDOhhjpnvSevwl1RGRtkANQB6zMx+mPu7H
	HVluIUoux7TgTQV+XEisrUlC1ivT3AYR8v9pWBREp+HjcEUkbn5Bji7e1r2vHwEdGsXr
	vGdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=knHQ8vQgaR30kmEMxmVNJzoVYJnk59OYrTH4p/5Jzig=;
	b=lJ5dv+RQ4HBCYKbRNJwR/2u01R1plwwHRF19Ic4/Hfg4DFdmYPmIvyMaKZAwkRHyzD
	vmSR2qleLIFtWDUmfKG2xFZYM6XKjKmxMULwG33kz4G5F9kZLMYbj95UKt+j5DyJilZx
	Mi4X3FYZS//F+JbMGkazwbgzunlAED80O/LM5F4UHUqQDcYi4nvc+ZRbbi8ua21Cd03A
	vL/AtvbmEpPB3tHiaIfaIlx8EQbul9WtNTUDU+lf+g96Gkb/6cy2D8IXBYWAmi+WPUjD
	769RuX3lEivUYexdmHE/Ve4SFMqTKQIlzuptlvQQvg5Zg5f9XK4o/DlArU3xBkC4mEWq
	9PcQ==
X-Gm-Message-State: APjAAAVtr8+Sr/jrWN6fbr0gWmCD01q51at6Bc89scwl5ooZkGIeK06P
	U7AVeutBT+LFFKxTZjijjyDqG8gs
X-Google-Smtp-Source: APXvYqxNeb0q4JKw+hqmtBr0WE9FltefLpnVaS9AIgNCmCYAAEgQ89+CE5da8j8gYSlFiTJY/BkfRw==
X-Received: by 2002:a65:5202:: with SMTP id o2mr34816582pgp.29.1565740484047; 
	Tue, 13 Aug 2019 16:54:44 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	s16sm2496441pjp.10.2019.08.13.16.54.43 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Aug 2019 16:54:40 -0700
Message-Id: <20190813235440.16385-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813235440.16385-1-akuster808@gmail.com>
References: <20190813235440.16385-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/3] linux-stable/5.2: add stable bbappend
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
X-List-Received-Date: Tue, 13 Aug 2019 23:54:45 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-stable_5.2.bbappend | 4 ++++
 1 file changed, 4 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-stable_5.2.bbappend

diff --git a/recipes-kernel/linux/linux-stable_5.2.bbappend b/recipes-kernel/linux/linux-stable_5.2.bbappend
new file mode 100644
index 0000000..76b5df5
--- /dev/null
+++ b/recipes-kernel/linux/linux-stable_5.2.bbappend
@@ -0,0 +1,4 @@
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "yama", " features/yama/yama.scc", "" ,d)}"
+
-- 
2.17.1


