Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 182E8E00A00; Thu,  6 Jun 2019 16:47:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.173 listed in list.dnswl.org]
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96095E0096F
	for <yocto@yoctoproject.org>; Thu,  6 Jun 2019 16:47:17 -0700 (PDT)
Received: by mail-pg1-f173.google.com with SMTP id n2so104734pgp.11
	for <yocto@yoctoproject.org>; Thu, 06 Jun 2019 16:47:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=SiuMQQDWqRZsF11CeXIP/KVPQyYUID+K4nf/Xgc1bGc=;
	b=c0mBpOr3NZQMoHpec68Z5fX3HVLapS18jesI3Cc7zxLbjgRyDAydYPwRG/MgnSJfbN
	SxtInAv+Tv9OADxPYIG+VkdhOe/wBFjsonwGL2eqZppBFU7OG4O8JPkLA4mPAcqE6tTq
	tc6ZY2ChhYp/LUC/dXGCGuoGlJuk3wfLUsTRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=SiuMQQDWqRZsF11CeXIP/KVPQyYUID+K4nf/Xgc1bGc=;
	b=hDpXITEHMK+wXkzmtNFZB7eOjEKgKYrfjCljYXXAxU89rwWitSfPpveaDH1PTOYzQj
	xcnt2xvCCM32RvmXmjpNsVLvdZbmTgYXRHUjJCPopMnTU81Ic4BaljB6c59lYdhHni9s
	R5E3XNIejLhuDIvDEw4teaXzHkz7q37wZuTteTsBs78qPSwDM0DR0p5L1tfcKPnvRv5H
	KRPttE09xVZH7tKPwb0kMYbjBHb4jh1pxoreIKKbxqAHIbwWkv9n2lskDDDtUXZ5uHoM
	9R2Z6AIwjHZGQ4tlglSM+BKQAx/HGMSql3EAPxaPqDZsuW8FQQxu9qLbd2BMPoGrBy+X
	CeSA==
X-Gm-Message-State: APjAAAX6vqefFKvKuWcvJJibf6XdFgmlB51OD7iYVAIfAXC0hi+R1ECy
	5f9e4Dpk4h1FZlCIo1CNEHh7u9ECrDg=
X-Google-Smtp-Source: APXvYqwqQlZqNCPnbkE83kgEmrl0hDwwgdnTiwbWG1E7cU3urcErEW5YFCVvEGCihTLLsIMT/Nwbkw==
X-Received: by 2002:a17:90a:2430:: with SMTP id
	h45mr2565429pje.14.1559864836551; 
	Thu, 06 Jun 2019 16:47:16 -0700 (PDT)
Received: from yct-lpt.pdx.yoctoproject.org
	(96-95-153-9-static.hfc.comcastbusiness.net. [96.95.153.9])
	by smtp.gmail.com with ESMTPSA id n13sm245364pgh.6.2019.06.06.16.47.15
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 06 Jun 2019 16:47:15 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Thu,  6 Jun 2019 16:46:56 -0700
Message-Id: <20190606234656.28343-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Subject: [PATCH][yocto-docs] ref-manual: Corrected openSUSE essential packages
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
X-List-Received-Date: Thu, 06 Jun 2019 23:47:18 -0000

Some packages were bumped onto the pip3 install line. Install them with zypper as before.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 documentation/poky.ent | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/documentation/poky.ent b/documentation/poky.ent
index b5f600969..a436d9027 100644
--- a/documentation/poky.ent
+++ b/documentation/poky.ent
@@ -68,8 +68,8 @@
      python3-jinja2 SDL-devel xterm">
 <!ENTITY OPENSUSE_HOST_PACKAGES_ESSENTIAL "python gcc gcc-c++ git chrpath make wget python-xml \
      diffstat makeinfo python-curses patch socat python3 python3-curses tar python3-pip \
-     python3-pexpect xz which python3-Jinja2 Mesa-libEGL1
-     $ sudo pip3 install GitPython libSDL-devel xterm">
+     python3-pexpect xz which python3-Jinja2 Mesa-libEGL1 libSDL-devel xterm
+     $ sudo pip3 install GitPython">
 <!ENTITY CENTOS_HOST_PACKAGES_ESSENTIAL "-y epel-release
      $ sudo yum makecache
      $ sudo yum install gawk make wget tar bzip2 gzip python unzip perl patch \
-- 
2.17.2


