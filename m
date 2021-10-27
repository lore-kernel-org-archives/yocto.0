Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B288C433EF
	for <webhook@archiver.kernel.org>; Wed, 27 Oct 2021 14:04:18 +0000 (UTC)
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com
 [209.85.219.41])
 by mx.groups.io with SMTP id smtpd.web10.12150.1635343457637239552
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=na50ybzr;
 spf=pass (domain: gmail.com, ip: 209.85.219.41, mailfrom: jandryuk@gmail.com)
Received: by mail-qv1-f41.google.com with SMTP id v2so1785841qve.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DvDY0OAG6lDwHYTIJqS3Kq5T3b0dNZEXng0a9Ra6Hhk=;
        b=na50ybzrM0k9W3pjVIYnyJohrBISvrHg8Gd01sfesLcXx6JLNzlGmMsDHPPi9CpLbH
         YaQ+QyG5ilGgRaM0JJcIjBc/w+qag1gUhdLRdSYHVN1FHi4a6uqUwtuJQkevaxePirp3
         6NkYXkoTLySSP/jovC6liD2YQNdeaUbZpSKIqfU3ieHaMtT8WIheYLh0/HeaPA8hgxJW
         hBhmctRyyds+JwdDGjpqGLTAhQD7q7P9AeS9QaK84Qw/RfVec6jBHrSvXKJQ49geTUR+
         pHhEXRS+rvbxdv1GOWon57fTGgRGev6bRtQIU0sJhXNb6VnzjmjW5GGgCZT4Cgbkxc3p
         jnlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DvDY0OAG6lDwHYTIJqS3Kq5T3b0dNZEXng0a9Ra6Hhk=;
        b=1bP49fJtRbZSuJzQ/kfCiBxaFww/1v5QPpvVOujEcLq+lcPxPH6FTDjLz1BoTkTBmA
         wQE03YIb0xf1bcFi0xVpH1jiOQc2ynF5KDbCCjMbKIxzNwRAWfpfmJIZQ3gbXrtTpNsJ
         Mn/cYvrAsHB88/wr+ohQHEayFNmXhewKTwUxChoH5vKVaZT6cN3Gm2KEw4ivVf2rnuOJ
         W5ynFotx8O/0fGVsySkPs9hpxvuWg+jnkcFnCKJ4Ir9iSSepjor8zqXK81eSRnkFvg1a
         XmoErwYpbZF+fC5jhRUiBGpYm+88RQyQ1zUl9eQYSb0A/VGmph2cUln+jHi7BkM94nIj
         5DSA==
X-Gm-Message-State: AOAM532vZSdG1WifNYI+3IwDZEs8q1D3dnKNrusFokfRSecZY+NDe8i+
	lm4VxSVouxE3XktCRNwzM4x0vT8JYGE=
X-Google-Smtp-Source: 
 ABdhPJyhh/9VKvlAiRa6FQADfrkH1mnAUq2l2Pt9vhWS8ad8zl+lv5Na50TrNmjgyP2BKcqo5tPrzg==
X-Received: by 2002:a05:6214:2308:: with SMTP id
 gc8mr29067067qvb.31.1635343456157;
        Wed, 27 Oct 2021 07:04:16 -0700 (PDT)
Received: from pm2-ws13.praxislan02.com ([2001:470:8:67e:ba27:ebff:fee8:ce27])
        by smtp.gmail.com with ESMTPSA id
 bi17sm51597qkb.115.2021.10.27.07.04.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 07:04:15 -0700 (PDT)
From: Jason Andryuk <jandryuk@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joe MacDonald <joe_macdonald@mentor.com>,
	Philip Tricca <flihp@twobit.us>,
	Yi Zhao <yi.zhao@windriver.com>,
	Jason Andryuk <jandryuk@gmail.com>
Subject: [meta-selinux][dunfell][PATCH 2/3] Remove e2fsprogs override
Date: Wed, 27 Oct 2021 10:03:56 -0400
Message-Id: <20211027140357.66739-3-jandryuk@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211027140357.66739-1-jandryuk@gmail.com>
References: <20211027140357.66739-1-jandryuk@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Oct 2021 14:04:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55176

commit b2b3ea27e3e3 "e2fsprogs: Superseded by upstream." removed
lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch from SRC_URI.  It was
no longer applied, but the file was not deleted.  Do that now.

e2fsprogs_%.bbappend/e2fsprogs_selinux.inc now do nothing, so remove
them as well.

Signed-off-by: Jason Andryuk <jandryuk@gmail.com>
---
 .../e2fsprogs/e2fsprogs_%.bbappend            |  1 -
 .../e2fsprogs/e2fsprogs_selinux.inc           |  1 -
 ...t2fs-ext2_ext_attr.h-add-xattr-index.patch | 20 -------------------
 3 files changed, 22 deletions(-)
 delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
 delete mode 100644 recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
 delete mode 100644 recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend b/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-devtools/e2fsprogs/e2fsprogs_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc b/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
deleted file mode 100644
index 81fe7b7..0000000
--- a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
+++ /dev/null
@@ -1 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
diff --git a/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch b/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
deleted file mode 100644
index b87c414..0000000
--- a/recipes-devtools/e2fsprogs/files/lib-ext2fs-ext2_ext_attr.h-add-xattr-index.patch
+++ /dev/null
@@ -1,20 +0,0 @@
-Add xattr name index for xattrs with the 'security' prefix. These are defined
-in the ext(2|3|4)/xattr.h in the kernel. We use the EXT2 prefix for consistency
-with e2fslibs naming.
-
-Signed-off-by: Philip Tricca <flihp@twobit.us>
-
-Index: e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
-===================================================================
---- e2fsprogs-1.42.9.orig/lib/ext2fs/ext2_ext_attr.h
-+++ e2fsprogs-1.42.9/lib/ext2fs/ext2_ext_attr.h
-@@ -15,6 +15,9 @@
- /* Maximum number of references to one attribute block */
- #define EXT2_EXT_ATTR_REFCOUNT_MAX	1024
- 
-+/* Name indexes */
-+#define EXT2_XATTR_INDEX_SECURITY               6
-+
- struct ext2_ext_attr_header {
- 	__u32	h_magic;	/* magic number for identification */
- 	__u32	h_refcount;	/* reference count */
-- 
2.31.1


