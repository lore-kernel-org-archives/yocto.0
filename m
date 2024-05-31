Return-Path: <james.hilliard1@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B8FBC25B75
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 18:51:11 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web11.21376.1717181464226468358
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 May 2024 11:51:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PBTAwOaA;
 spf=pass (domain: gmail.com, ip: 209.85.166.179, mailfrom: james.hilliard1@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3748ebe7e53so3977825ab.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 11:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717181463; x=1717786263; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7GEgiFbju2Kq+ZEQnzY8CCJ9SDJniQdghz/qBWNzaGI=;
        b=PBTAwOaA6CZaDcrxcLa0jxf9GhGp9e0Y92zeEk+l3JCZB9BZrIln6Zpr8MAiRhz6Cf
         zhrz4tEsQTALC1kY2be5mEIJbFUG7BiL2oG4EP3n3m9SL2tjqtT90lgCXLf9lvaD+t03
         d44fcedAnP0thRXxzYRKmBjrDXM+JBiYaoRrvZCYnz3SeObZxy2V5oHbdpAEoFoVG9z/
         5GNXYqGOc8ztqdbyd0c8b9/GkPlIIoItf9XxHBUzR6ueAwMcGXFLlr5jptgTsp+i7clX
         WApO4QhzpW8BGzZDVlQIN0AZNjzjiv5oY2ey8RjqARWmEmb1CSxq/3jJhV9jMAc3vhYn
         pOQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717181463; x=1717786263;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7GEgiFbju2Kq+ZEQnzY8CCJ9SDJniQdghz/qBWNzaGI=;
        b=hNrkxWHsAp4P94fCMFiaS0EEKwpOxXLlOZHqYcO8TYqeu14X0ljRRWwELydpTYBXAo
         8z0lflUGi2ezGDSWSpzG7xZfeXdRXscDpi8peg9CK4481iNblhBywJxhgGyjTqPJ6bHo
         2WYUKAaDaVrgxfxeIMVXdBWfzmYS9eJgHtYqatG/ue5LP9H9XBPqJHamMYYHF78LWCQb
         n3Hw9smPaq7HDxDSNjrlqw5Wt0jy/SBlb8EvZTakleSC1dZMl6YjG3kOIYBiK4hlXCjx
         JAf0XoY9yCqgA9w9M//JSvAnHW+FYl5WBFAjI6DGHHisWKN9qOcQYaWIdVhpMZbUzPHz
         edkQ==
X-Gm-Message-State: AOJu0Yz0lbLw4JQAegTv66Z4unv5Rb0y0gEPfSUqURJVSOkN7S6wj1yS
	GKWeRqUsQNI5eQFd1FFojLGNfCEH05z81ywkBjX++BcjS1pxmh5b
X-Google-Smtp-Source: AGHT+IGNQLUdQVbyYv+zkdzkq4PokwSxQHzXrXvI0342sMjW8g3x5h8NdBBH4sPmPDJOxkjOaBsiqg==
X-Received: by 2002:a05:6e02:1888:b0:36a:36d9:36eb with SMTP id e9e14a558f8ab-3748b9dd961mr29951915ab.27.1717181463386;
        Fri, 31 May 2024 11:51:03 -0700 (PDT)
Received: from james-x399.localdomain (97-118-179-167.hlrn.qwest.net. [97.118.179.167])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3748a1dda64sm4967495ab.11.2024.05.31.11.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 May 2024 11:51:03 -0700 (PDT)
From: James Hilliard <james.hilliard1@gmail.com>
To: mark.hatle@kernel.crashing.org
Cc: yocto@lists.yoctoproject.org,
	James Hilliard <james.hilliard1@gmail.com>
Subject: [prelink-cross] src/execstack.c: fix prelink_path type
Date: Fri, 31 May 2024 12:51:01 -0600
Message-Id: <20240531185101.2228696-1-james.hilliard1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 18:51:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63250

Fixes:
execstack.c: In function ‘execstack_make_rdwr’:
execstack.c:127:17: error: passing argument 1 of ‘asprintf’ from incompatible pointer type [-Wincompatible-pointer-types]
  127 |       asprintf (&prelink_path, "%s/%s", dirname, PRELINK_PROG EXEEXT);
      |                 ^~~~~~~~~~~~~
      |                 |
      |                 const char **
In file included from execstack.c:10:
/usr/include/stdio.h:403:40: note: expected ‘char ** restrict’ but argument is of type ‘const char **’
  403 | extern int asprintf (char **__restrict __ptr,
      |                      ~~~~~~~~~~~~~~~~~~^~~~~

Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
---
 src/execstack.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/src/execstack.c b/src/execstack.c
index fe044c5..4a8b916 100644
--- a/src/execstack.c
+++ b/src/execstack.c
@@ -41,7 +41,7 @@ const char *program_path;
 
 /* The full pathname of the prelink tool, or NULL if it hasn't been
    computed yet.  */
-const char *prelink_path;
+char *prelink_path;
 
 static error_t
 parse_opt (int key, char *arg, struct argp_state *state)
-- 
2.34.1


