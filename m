Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web11.3046.1602957834457915415
 for <yocto@lists.yoctoproject.org>;
 Sat, 17 Oct 2020 11:03:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eGYpzpEo;
 spf=pass (domain: gmail.com, ip: 209.85.214.174, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id y1so2905815plp.6
        for <yocto@lists.yoctoproject.org>; Sat, 17 Oct 2020 11:03:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=OBmQngd+DrFPiaaVcZrdfzcdp+YU3sBUnmfp/8+wFEU=;
        b=eGYpzpEovI3HWbsPWtsTwRXgkBQXTnsTnMt7mRJANwxhbAgA+lLLcpuSAf8g3VXlxx
         vjkBheTyjKotQNCf5lnEDK6qf8Lwu3N+hudvu0CyMRZ1rdUGuBOxiVwwNOeDCgqvOubL
         Sr21lL0YVI3GhuL/vUHKPC9nYOQkzSHMKSo6jOMmECpWuvfeFpC2RYxJ39ymA74MbiRn
         LG+KodBnS1g9pN/+5UBPs5l7A/wI4vy+M8SnprsuZYWqTUy4uhHYwFjfCdhvjJzZeFyc
         qAD64XZLlfUtTg4Zwmznd5B09iI634uObf49IQg2EWPfNs1iKZlvfgQxjlGf9ZjH1dd4
         pgwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=OBmQngd+DrFPiaaVcZrdfzcdp+YU3sBUnmfp/8+wFEU=;
        b=C6KCXv2vLpIIqktHra3CW4whq5/d+PF7+21tOhp5NREi9WfiGasjfcJwVE9x5vh5dY
         dh7ZjY8M9hCqhyIOMx9FoLOCtOtyE9LFiFc2si9cuVfhfS68RYl+8TVDn9RlX8xp2NE1
         y1LiCBhCM2X2HLZbzYI3RKlQutaXomsto0XekYm6xHnkRlpqR7+fiaykRHK6sAhGJi1K
         zA6g0K9ZzvDlEUavuNsTLNR3TqbIyWdQ/Qxb+bH41cpnP+2qVvPPinhLGWNn0sMeOxnE
         OGrEp6ehrFC/Hx2hu1LdOtsQz7b9vwIHo+0k+sP2SG4Pn/WoekmH3h8gBR3YBFILyqCC
         3leg==
X-Gm-Message-State: AOAM5302YcS8UUkGVan8/yaElHl6sfjMJpD9AyjumQdP/zC2DxKUIkU3
	F3EZJcr2wMPPnZtGGSIEQjY53777CgA=
X-Google-Smtp-Source: ABdhPJxDZQhMPGgX8omhx0fZ4+tQ/Ar+wI8k4sAScQCoODdxzw0xv2PGuxsvS9+4iaTL/C2YxwGzLQ==
X-Received: by 2002:a17:902:ff14:b029:d3:f1e5:c992 with SMTP id f20-20020a170902ff14b02900d3f1e5c992mr9487287plj.72.1602957833833;
        Sat, 17 Oct 2020 11:03:53 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:b4d6:f32b:75d2:1966])
        by smtp.gmail.com with ESMTPSA id jx17sm6495898pjb.10.2020.10.17.11.03.52
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Oct 2020 11:03:53 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [dunfell 17/32] dm-verity-image-initramfs: Add base-passwd package
Date: Sat, 17 Oct 2020 11:03:14 -0700
Message-Id: <5f26a25883045f0e4acecbff13df016e1ce0fea7.1602957519.git.akuster@mvista.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1602957519.git.akuster@mvista.com>
References: <cover.1602957519.git.akuster@mvista.com>

From: "niko.mauno@vaisala.com" <niko.mauno@vaisala.com>

This removes following boot-time complaints from udevd regarding
missing group declarations:

  [    6.624454] udevd[163]: specified group 'tty' unknown
  [    6.625340] udevd[163]: specified group 'dialout' unknown
  [    6.625692] udevd[163]: specified group 'kmem' unknown
  [    6.626022] udevd[163]: specified group 'input' unknown
  [    6.626541] udevd[163]: specified group 'video' unknown
  [    6.626977] udevd[163]: specified group 'audio' unknown
  [    6.627532] udevd[163]: specified group 'lp' unknown
  [    6.628187] udevd[163]: specified group 'disk' unknown
  [    6.628558] udevd[163]: specified group 'cdrom' unknown

Size impact of this change on resulting bundled zImage-initramfs
artifact is less than +1kB which is neglible.

Signed-off-by: Niko Mauno <niko.mauno@vaisala.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit e88895e109929c3e97c29870275787e49faecdd4)
---
 recipes-core/images/dm-verity-image-initramfs.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/images/dm-verity-image-initramfs.bb b/recipes-core/images/dm-verity-image-initramfs.bb
index 0fdb46c..05ab10c 100644
--- a/recipes-core/images/dm-verity-image-initramfs.bb
+++ b/recipes-core/images/dm-verity-image-initramfs.bb
@@ -4,6 +4,7 @@ inherit core-image
 
 PACKAGE_INSTALL = " \
     base-files \
+    base-passwd \
     busybox \
     cryptsetup \
     initramfs-module-dmverity \
-- 
2.17.1

