Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AFE2E00839; Wed, 22 Mar 2017 05:46:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4BB1E00839
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:49 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id p189so21189274pfp.0
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=0hrlQlldlwwhb6fNbdQJX5Q6G+bYNpSFM9NROt/Qe6s=;
	b=G1fn6hnF4Wds46Gatk+Lgu/6OhwU+PWz/nrWAhTEhSkV+CX3FZQlsWqiS7LR8dlFYF
	FWvw9yKhxweE9IS7N62Mw3GS+ZOl+oFsxbaWZpWjveiLHH1xSNBQCxclD1txvGO1vJmC
	iPLj26CtX0zS/JfhxrmWL4z/iwbu1sDQA+3f2pClw2jS3fbEjUegbNTtJp5+6pCR53j5
	anPVWKQyYUemlG3YYstUtujMHXgnTIn39LLAvuvpaWwHuOVgXZHYVzutlgwBjeexXHLn
	HDnxMmkauS/aR64iJ7PYzRuyAy9VORcit17voGZbgaI2Ujan0XJ0YSulHlQuDRez0UtL
	3oKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=0hrlQlldlwwhb6fNbdQJX5Q6G+bYNpSFM9NROt/Qe6s=;
	b=EyeFeGi9cLdSj0NUlWlVO+BVWtJV+dBqZpZLoiqyMgOKVxaHvhx2zmWKN3MPyQBWAM
	rhGvseCsueOQtQqhluo4E8kBokE7pkTDxnJm0ID8DxpmY5j9wed2+CpJ88xXXNYXkZIt
	CsjKvLowcnYm8EBhUrBJiVzgksErtJwXl2a+EmVSq+xJAbEl37TrSZ4pbg+uT7ba6hKg
	6R1Pw/llItkVl6KPMiRq7sZAhCcn48gQL6jSDF5M4Xm/GfekB2PVhk/FuZJkarV1uAei
	HHkcW8ZFmdUIgOCx54VyMZ8Gj5g1xlU8V6JEmBqchUXq7c2wi4lOm2hm1S1wh4s0N/be
	rGqg==
X-Gm-Message-State: AFeK/H2PVndQi19E5DYjvYxYlrIjipeNKU5ia9a0hypStP+qZSBhsyxkhvp7ca9Ms+pj+A==
X-Received: by 10.84.232.131 with SMTP id i3mr56538182plk.172.1490186809001;
	Wed, 22 Mar 2017 05:46:49 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	e70sm3935214pfl.105.2017.03.22.05.46.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 05:46:48 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 05:46:43 -0700
Message-Id: <1490186804-22928-5-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
References: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 5/6] samhain-server: fix config error with acl
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
X-List-Received-Date: Wed, 22 Mar 2017 12:46:51 -0000

when acl is enabled this error occurrs.
configure: error: in `/home/akuster/oss/maint/openembedded-core/build/tmp-glibc/work/x86_64-linux/samhain-server-native/4.2.0-r0/samhain-4.2.0':
| configure: error: --enable-posix-acl was given, but test for acl support failed

add missing depends.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/samhain/samhain-server_4.2.0.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/samhain/samhain-server_4.2.0.bb b/recipes-security/samhain/samhain-server_4.2.0.bb
index 35f8775..7ef84db 100644
--- a/recipes-security/samhain/samhain-server_4.2.0.bb
+++ b/recipes-security/samhain/samhain-server_4.2.0.bb
@@ -20,8 +20,8 @@ PACKAGECONFIG[logwatch]  = "--enable-login-watch,"" , "
 PACKAGECONFIG[mounts]  = "--enable-mounts-check","" , "
 PACKAGECONFIG[userfiles]  = "--enable-userfiles","" , "
 PACKAGECONFIG[ipv6]  = "--enable-ipv6,"--disable-ipv6","
-PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux"
-PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl"
+PACKAGECONFIG[selinux] = "--enable-selinux, --disable-selinux, libselinux"
+PACKAGECONFIG[acl] = " --enable-posix-acl , --disable-posix-acl, acl"
 
 SRC_URI += "file://samhain-server-volatiles"
 
-- 
2.7.4


