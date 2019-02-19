Return-Path: <luca.boccassi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A890E0090C; Tue, 19 Feb 2019 03:57:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96128E0084E
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 03:57:56 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id x7so2352716wmj.0
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2019 03:57:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=FEsa2Vc3d3ZHY4R42VVkuBumSE1nnNtQnblxpOoZN14=;
	b=EcjUC2mor1bIPNR0K+WsYToCtTD2vbG4EEaZ4NWAU/AurUmJYAzPqo4ctQ4c5VEZ3N
	8fIGLgcNcz5SIoL1pRpaGtemE5qfGFpttb2cm840fRTvGQv9F5EX/PE41Rkx8jEhXdMq
	eTEciikgJk+YQxqOiMB6SCBcUVqxhdpF3R4qDZaOjVTcAmEfZ9rJ9CTOq0ypHoAWrGLU
	wc6tXJ3hEOYliMPcs7/0HtZaOe3y2Otq8fRUtdji7M/woDc9SyEgYVamsgJRphzITnCR
	LRKh0dl2uD8ftv8XPkp5gDJRPomkzWmjPRgHKVCa32/F/IUrgFYPF6tW/nkEZvwOFlL+
	07hA==
X-Gm-Message-State: AHQUAuZNasOgWzfYIBhzK4YIUTnGtjGb+hEty0jQqqoHPVYL6d1WzarK
	9mPuwLfqYEF7e+0sd8ZVtZhixVYO
X-Google-Smtp-Source: AHgI3Ibm47IK5OfJqPxtpyFyTx3cBWlddV8azXRFeB2w/yHTb550sKmEI3bj1IDfhoJcHCHyx6lvfA==
X-Received: by 2002:adf:9123:: with SMTP id j32mr21580480wrj.122.1550577475209;
	Tue, 19 Feb 2019 03:57:55 -0800 (PST)
Received: from localhost ([2a01:4b00:f419:6f00:7d5d:9df5:c0db:fc9b])
	by smtp.gmail.com with ESMTPSA id f7sm13376873wru.3.2019.02.19.03.57.54
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 19 Feb 2019 03:57:54 -0800 (PST)
From: Luca Boccassi <bluca@debian.org>
To: yocto@yoctoproject.org
Date: Tue, 19 Feb 2019 11:57:43 +0000
Message-Id: <20190219115743.17336-1-bluca@debian.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [PATCH meta-selinux] packagegroup-selinux-minimal: add selinux-init
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
X-List-Received-Date: Tue, 19 Feb 2019 11:57:57 -0000
Content-Transfer-Encoding: 8bit

When trying to build a minimal image (eg: without python), the default
user on autologin is not mapped to the intended user/role/domain:

  # id -Z
  system_u:system_r:kernel_t:s0

And the following error is displayed on autologin:

  Unable to get valid context for <user>

While on an image built with the core-selinux packagegroup:

  # id -Z
  unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

Adding selinux-init to the minimal package list fixes the issue.
This package does not seem to bring along additional dependencies.

Signed-off-by: Luca Boccassi <bluca@debian.org>
---
 recipes-security/packagegroups/packagegroup-selinux-minimal.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
index 5c2eabd..e198e84 100644
--- a/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
+++ b/recipes-security/packagegroups/packagegroup-selinux-minimal.bb
@@ -19,6 +19,7 @@ RDEPENDS_${PN} = "\
 	policycoreutils-semodule \
 	policycoreutils-sestatus \
 	policycoreutils-setfiles \
+	selinux-init \
 	selinux-labeldev \
 	refpolicy \
 "
-- 
2.20.1


