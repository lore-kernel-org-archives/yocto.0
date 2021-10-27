Return-Path: <jandryuk@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCA7C433EF
	for <webhook@archiver.kernel.org>; Wed, 27 Oct 2021 14:04:21 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
 [209.85.160.180])
 by mx.groups.io with SMTP id smtpd.web09.12117.1635343460575252405
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=chbmMUOf;
 spf=pass (domain: gmail.com, ip: 209.85.160.180,
 mailfrom: jandryuk@gmail.com)
Received: by mail-qt1-f180.google.com with SMTP id w8so2524227qts.4
        for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 07:04:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=B+3OuIfSIiw2vZd7RI/tvgQLb70InRvwaoP+S5r9v2I=;
        b=chbmMUOfi2gDL++ds2iqwmcja5bujQ90erltMCmTQFTqx6/FqOs8FI3i6Ibsnrdiii
         mSbyX7rUAGzp91igt8lQyGI8PeZjhxRXjS8jmXIa6SbyrCOsfAm2XZ+0/0KoqW/mFfDB
         r9ek+uN9amOUfPp8WG9a9rjWstM8ZRgiAk317UqWk4qygHiA2h8Ndz1wiWgqhrzngQga
         CYdfQtLCsbkuP1j2CbWjOE3pgi3Z+x8KxY1uGBkFXvomTbdY57JPu5u88iHjIxMO6Df6
         g9oTugY4yOCTZWuzK75++UCnwuaEnjPjIBTsLkfZySWTQqDS5fA8Es5Tw4c4LDDuYsLZ
         Pa3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=B+3OuIfSIiw2vZd7RI/tvgQLb70InRvwaoP+S5r9v2I=;
        b=KObwKXDtuwE6ogjsyOtbmPTQayJiE58wXattMCOWlL4zrJ+LmB3SrqW2t1WYv0CCfn
         FZy/Bo0eSPpBqBbDGf8Yh2KgwUrWx66BG9VKPmcIfYEW8/rlAtLBGcU+mwWUGQA+h/Cg
         C7kf4Cms3ADUZz5KNgehjmI/r8MsWGIVojA9B53WqHqVx/esU+EqDvo/EsI6FWedfV2p
         tzYEIj61Y9Ykmvv/KK/2Rn+odftcJXEYgvT7VFfHArnuNUbM/UvWH7f4DvyXgONeuX3w
         l0GYbSqt7LmhTf5DWl9AKE1N3En45oWSdNeGKwBYgFgmiVcNkjRfTR8W+5oBKXscbGvD
         YjwA==
X-Gm-Message-State: AOAM531Q7Fy8Fp3Ozph2SMFuLrlDt0cAGowYJ7xB5GpMhaZN0XI0mgpN
	W9zK9bnl7WEf7hTr4JXmRuJDH8ajgRY=
X-Google-Smtp-Source: 
 ABdhPJxn8lL3gjh2W1LYykXoL8pt/oAZ/655TozpGpylZLgrhlMGrgAJx2eeKQTyo8thbIyu4AO6KQ==
X-Received: by 2002:ac8:7f94:: with SMTP id z20mr32097994qtj.85.1635343459427;
        Wed, 27 Oct 2021 07:04:19 -0700 (PDT)
Received: from pm2-ws13.praxislan02.com ([2001:470:8:67e:ba27:ebff:fee8:ce27])
        by smtp.gmail.com with ESMTPSA id
 bi17sm51597qkb.115.2021.10.27.07.04.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 07:04:19 -0700 (PDT)
From: Jason Andryuk <jandryuk@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Joe MacDonald <joe_macdonald@mentor.com>,
	Philip Tricca <flihp@twobit.us>,
	Yi Zhao <yi.zhao@windriver.com>,
	Jason Andryuk <jandryuk@gmail.com>
Subject: [meta-selinux][dunfell][PATCH 3/3] libselinux: Fix
 restorecon_set_sehandle.patch context
Date: Wed, 27 Oct 2021 10:03:57 -0400
Message-Id: <20211027140357.66739-4-jandryuk@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211027140357.66739-1-jandryuk@gmail.com>
References: <20211027140357.66739-1-jandryuk@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Oct 2021 14:04:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55177

0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch added
in commit d6ff5a0e67af "libselinux: Backport NULL pointer fix from 3.1"
fails to apply because there is a extra level in the patch context.
The patch cannot apply and do_patch fails.  Fix the context so it builds
again.

Signed-off-by: Jason Andryuk <jandryuk@gmail.com>
---
 ...-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch b/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch
index 8a9fb7c..f392f68 100644
--- a/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch
+++ b/recipes-security/selinux/libselinux/0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch
@@ -17,8 +17,8 @@ Acked-by: Stephen Smalley <stephen.smalley.work@gmail.com>
 
 diff --git a/libselinux/src/selinux_restorecon.c b/libselinux/src/selinux_restorecon.c
 index d1ce830c5..6993be6fd 100644
---- a/libselinux/src/selinux_restorecon.c
-+++ b/libselinux/src/selinux_restorecon.c
+--- libselinux/src/selinux_restorecon.c
++++ libselinux/src/selinux_restorecon.c
 @@ -1154,6 +1154,8 @@ void selinux_restorecon_set_sehandle(struct selabel_handle *hndl)
  	size_t num_specfiles, fc_digest_len;
  
-- 
2.31.1


