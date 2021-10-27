Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47E37C433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Oct 2021 14:04:14 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com
 [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web09.12114.1635343453401314594
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Bc4zwxDd;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: jandryuk@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id kd16so1854248qvb.0
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bxjTN90TWqP8VdzySsXOtFnQH3iuHolspT9Po1WwYdU=;
        b=Bc4zwxDdyY4QtBkNZVlHSbON0Gol3grb/r3tUk8iBzYK03nl4wzZm6fp/olCgwKs0w
         NY/nM8YfVwbRJqD9j/0F5H29m+Rdl0ZMXHOaxjl8etPhz2jv6a/bijym7cBRfY3NMRvF
         7savKVBj51x5AmeMeepWKTaymBPJDg2k10YBSQ2Y2o2dbHS2Nf96GSrNzlqSnVSzsiaw
         qwQfD89jttmvHkHZYRXCmT7USAWGxMOx7AV+exjMhGEONViIEahMYohjpZ6NtrNOq/Mw
         ICNsyE4VH5aZcvDWaCKDyLn7jz/jtQCdXQyKLbYMjhsOGRWel2WjoGY/AZTNP/4NSrgi
         brTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bxjTN90TWqP8VdzySsXOtFnQH3iuHolspT9Po1WwYdU=;
        b=Qod+ull+KUlvWLWKFqKMUkQiNy8clDaltSCqNB9iDHqiiX9tksiFo5ZPIN+PuNrcYE
         zp+dDa9cfAijmC4wtxbaVCnwSl76UWC+LlajPRLWmJOpFxNZbwbZBNwpQjFeZpA21X7j
         Xa5ON95NLrJVfAP+Z310uJAF6DKcGG51KA6y+5y+4bMbckKm3cjvcHh0/3ulxd5aI9DB
         07lcWs5bSOhQcfwC4urAIruNSd7s3maV7SZqJAIH/4395MOJekmum5kh7zOVGqjuZ48h
         KFrG8kcpob2tzJlIeHmq0caYBpbadOxbikxGfAj7kWsQX1ORHtT20Rk860Y85mVURhzZ
         JetA==
X-Gm-Message-State: AOAM5331OU5vFNjvogvL8ChrKw7c0r5+S9Me7n6Mooh7b1SIcg3C0JGa
	83vT3V94xBRBphhGfPYiy9ESNkxPFMU=
X-Google-Smtp-Source: 
 ABdhPJxTUH7qTFRZzGomEGqFIFoqHgm+35rJoHPzgFo0ppsuBD4o6dr1s+JniteYZL/pnDNUwik8GQ==
X-Received: by 2002:a05:6214:80f:: with SMTP id
 df15mr6753304qvb.37.1635343452250;
        Wed, 27 Oct 2021 07:04:12 -0700 (PDT)
Received: from pm2-ws13.praxislan02.com ([2001:470:8:67e:ba27:ebff:fee8:ce27])
        by smtp.gmail.com with ESMTPSA id
 bi17sm51597qkb.115.2021.10.27.07.04.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 07:04:11 -0700 (PDT)
From: Jason Andryuk <jandryuk@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joe MacDonald <joe_macdonald@mentor.com>,
	Philip Tricca <flihp@twobit.us>,
	Yi Zhao <yi.zhao@windriver.com>,
	Jason Andryuk <jandryuk@gmail.com>
Subject: [meta-selinux][dunfell][PATCH 1/3] e2fsprogs: Remove
 misc_create_inode.c-label_rootfs.patch
Date: Wed, 27 Oct 2021 10:03:55 -0400
Message-Id: <20211027140357.66739-2-jandryuk@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211027140357.66739-1-jandryuk@gmail.com>
References: <20211027140357.66739-1-jandryuk@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Oct 2021 14:04:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55175

An equivalent patch was merged into 1.45.7: commit 7616fd6a599e
"create_inode: set xattrs to the root directory as well".  The existing
one still applies and actualy breaks building because of duplicate
lables.  Remove it.

Signed-off-by: Jason Andryuk <jandryuk@gmail.com>
---
 .../e2fsprogs/e2fsprogs_selinux.inc           |  2 -
 .../misc_create_inode.c-label_rootfs.patch    | 45 -------------------
 2 files changed, 47 deletions(-)
 delete mode 100644 recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch

diff --git a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc b/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
index 9cbb7fe..81fe7b7 100644
--- a/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
+++ b/recipes-devtools/e2fsprogs/e2fsprogs_selinux.inc
@@ -1,3 +1 @@
 FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
-
-SRC_URI += "file://misc_create_inode.c-label_rootfs.patch"
diff --git a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch b/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
deleted file mode 100644
index 046e521..0000000
--- a/recipes-devtools/e2fsprogs/files/misc_create_inode.c-label_rootfs.patch
+++ /dev/null
@@ -1,45 +0,0 @@
-From: Philip Tricca <flihp@twobit.us>
-To: tytso@mit.edu
-Cc: liezhi.yang@windriver.com
-Date: Sat, 20 Feb 2016 18:58:58 +0000
-Subject: [PATCH] misc/create_inode.c: Copy xattrs from root directory when populating fs.
-
-When copying a file system using the -d option the xattrs from the root
-directory need to be copied before the populate_fs recusion starts.
-
-Signed-off-by: Philip Tricca <flihp@twobit.us>
-Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
-
----
- misc/create_inode.c | 8 ++++++++
- 1 file changed, 8 insertions(+)
-
-diff --git a/misc/create_inode.c b/misc/create_inode.c
-index a7b6d348..cfd15922 100644
---- a/misc/create_inode.c
-+++ b/misc/create_inode.c
-@@ -979,6 +979,13 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t parent_ino,
- 		return retval;
- 	}
- 
-+	retval = set_inode_xattr(fs, root, source_dir);
-+	if (retval) {
-+		com_err(__func__, retval,
-+			_("while setting xattrs for \"%s\""), source_dir);
-+		goto out;
-+	}
-+
- 	file_info.path_len = 0;
- 	file_info.path_max_len = 255;
- 	file_info.path = calloc(file_info.path_max_len, 1);
-@@ -987,6 +994,7 @@ errcode_t populate_fs2(ext2_filsys fs, ext2_ino_t parent_ino,
- 			       &file_info, fs_callbacks);
- 
- 	free(file_info.path);
-+out:
- 	free(hdlinks.hdl);
- 	return retval;
- }
--- 
-2.11.1
-
-- 
2.31.1


