Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web12.2922.1602957824009578971
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PQ5dVxbn;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id o9so2895367plx.10
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=vGHE6TjYnhCbG+jQIJN2Yqdgi3TbnP+1ASPccVBm8FI=;
        b=PQ5dVxbnwry3mRYc7erAxebZzPVFSoUgOs5e+BTjjXMpl+46kKMuO4i5AHlot62MnF
         ODqBJSUSAJtcpCjCxh/N8tWiYnQRRgygqHHQb5MgzfMxjKUsuE0CYnE1sjIyAqAryoQ0
         DHdUV82uc1IiI4LBqYnseD0Vc52vThRxXdXBX/nh//Q3F/Bf4lwujdP2puoVgkzhMy/s
         1pka8xIyeCDqvRY3i/RQYGC+T7avWzW1KFZ4AMmsrNhxTZuKv/rw3VYiUc9Mg5ak2Q5E
         qdfxLr3gQo9JwxRAgIz/+idBkHUBFmD+lL/CCd26tLgbrUSRoQhbocIL7+Tc0W6/ksO4
         F84g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=vGHE6TjYnhCbG+jQIJN2Yqdgi3TbnP+1ASPccVBm8FI=;
        b=ml15E5GDTMzZxYWatuuIPHy/2rzArYqC4ASfsDkivQb6niKl86SKhP6ZNixsqbNgWK
         r7ddAUOc33gEy1hv9qRKuJUnFRmiCJ2oD5XE0TqHHB1Fh+9ew5KqUjnX76ZCpiiIJ4U/
         Uw8KyjwJ/As04pRQccB0UWJTo6rv0Ry++KFXaJqUaRbFvgGfEF/hNkD42t9E5+1wgGmj
         ZhnjQP2l0q/dAOeC0ePhcW+3QGf+YWwxe1zUgrsiDIENwo4OsX8JN7LWMdEGeHwhZ1ZW
         uWGX1hrQpmls2aEZ7qkYogaxbYooHUe5VV3MtWCOars5zy9xbOOqGlXumQUWTev9xqJ8
         8XmA==
X-Gm-Message-State: AOAM531BVcu22E1tuCpZ86ywf3mntev7n5TQJpa4nggNZNSuBwVgVWCC
	6tRJ3zMZ4YR4X+eh5+MClvRYb6zZRJY=
X-Google-Smtp-Source: ABdhPJwBKhxyJhZ6x8mcQ0n25KSzI8QeEuRlh0ehKZD3GZ2W4mGzx9qOBvCtq4+cRfIUhtIL8fEhoA==
X-Received: by 2002:a17:90a:67c7:: with SMTP id g7mr9996060pjm.140.1602957823358;
        Sat, 17 Oct 2020 11:03:43 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:43 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 08/32] dm-verity-img.bbclass: Fix bashisms
Date: Sat, 17 Oct 2020 11:03:05 -0700
Message-Id: <c85640cf54aa26fc8df7d33428aebbc4103956c9.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

Resort to printf in order to avoid usage of non-POSIX compliant echo
flags. This mitigates following errors visible in console during
boot-up with image that has been built on a host that symlinks
'/bin/sh' to 'dash':

  /init: /usr/share/dm-verity.env: line 1: -NE_UUID: not found
  /init: /usr/share/dm-verity.env: line 2: -ne: not found
  /init: /usr/share/dm-verity.env: line 3: 642864e8-6a17-46b9-ba1e-9386a3909c8d: not found
  /init: /usr/share/dm-verity.env: line 4: -NE_HASH_TYPE: not found
  /init: /usr/share/dm-verity.env: line 5: -ne: not found
  /init: /usr/share/dm-verity.env: line 6: 1: not found
  /init: /usr/share/dm-verity.env: line 7: -NE_DATA_BLOCKS: not found
  /init: /usr/share/dm-verity.env: line 8: -ne: not found
  /init: /usr/share/dm-verity.env: line 9: 12064: not found
  /init: /usr/share/dm-verity.env: line 10: -NE_DATA_BLOCK_SIZE: not found
  /init: /usr/share/dm-verity.env: line 11: -ne: not found
  /init: /usr/share/dm-verity.env: line 12: 1024: not found
  /init: /usr/share/dm-verity.env: line 13: -NE_HASH_BLOCK_SIZE: not found
  /init: /usr/share/dm-verity.env: line 14: -ne: not found
  /init: /usr/share/dm-verity.env: line 15: 4096: not found
  /init: /usr/share/dm-verity.env: line 16: -NE_HASH_ALGORITHM: not found
  /init: /usr/share/dm-verity.env: line 17: -ne: not found
  /init: /usr/share/dm-verity.env: line 18: sha256: not found
  /init: /usr/share/dm-verity.env: line 19: -NE_SALT: not found
  /init: /usr/share/dm-verity.env: line 20: -ne: not found
  /init: /usr/share/dm-verity.env: line 21: 19d98185b42a897a37db6c56c7470ab2d455f0de46daa0df735eee6263816439: not found
  /init: /usr/share/dm-verity.env: line 22: -NE_ROOT_HASH: not found
  /init: /usr/share/dm-verity.env: line 23: -ne: not found
  /init: /usr/share/dm-verity.env: line 24: 298d75fc2ea27fe594b6a37158a6ae7538e77d918bab98c475934f625de0e4ab: not found

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit ad55aaca1be60f6c1b066782e7ee6f6f323ffbbf)
---
 classes/dm-verity-img.bbclass | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/classes/dm-verity-img.bbclass b/classes/dm-verity-img.bbclass
index 1c0e29b..6faed5b 100644
--- a/classes/dm-verity-img.bbclass
+++ b/classes/dm-verity-img.bbclass
@@ -32,9 +32,9 @@ process_verity() {
     # just trim all white-spaces.
     IFS=":"
     while read KEY VAL; do
-        echo -ne "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g' >> $ENV
-        echo -ne "=" >> $ENV
-        echo "$VAL" | tr -d " \t" >> $ENV
+        printf '%s=%s\n' \
+            "$(echo "$KEY" | tr '[:lower:]' '[:upper:]' | sed 's/ /_/g')" \
+            "$(echo "$VAL" | tr -d ' \t')" >> $ENV
     done
 
     # Add partition size
-- 
2.17.1

