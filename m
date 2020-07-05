Received: from mail-pl1-f193.google.com (mail-pl1-f193.google.com [209.85.214.193])
 by mx.groups.io with SMTP id smtpd.web12.42931.1593976388627778882
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jul 2020 12:13:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IPc3/D1G;
 spf=pass (domain: gmail.com, ip: 209.85.214.193, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f193.google.com with SMTP id p1so5213076pls.4
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jul 2020 12:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=XrbtTIk4aA5oO56ysRrRQnSq0dTLW8hst2a5EFMcRhQ=;
        b=IPc3/D1GhHg6aeyc8PTtpoouUGMoBnbX1mly/ow/CYxlvvgmj+XPLfUMBirEluDYeo
         yKOY5AacOcFLz7iqtmOtXszaYw0I6v6S9e1BZ9AHxRkFsIsqiAocpveLJF8OabNI+xAr
         hOo01Rg5E1mNPdAt6C6EFUINqD+LFpUtq6mTlEbcn+eFtNlQCL8BRns9qzdGxA+S267a
         MbNqE9panuz61Thj2NC1H1dseWI0kzxUrZUeyGhYrzkBQ0cBMXB35VYhwg9qq1O/QlB7
         8m5YpG+5VFuecqOqU9n3HWZDPjqg/sELDKbWO+I/QOBazvERdRumZKW9poUPKU0jqSbq
         BikA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=XrbtTIk4aA5oO56ysRrRQnSq0dTLW8hst2a5EFMcRhQ=;
        b=E7BgtLQ56LNMeODQEwpYn45fgRLNhTF2lK6vH//HrenzcGLT2HH8blKcPMoDm1lLiO
         ZoND7M4HxOv8pKW/RsfE+nINyUSOy+kq+yB9NS5+FaX5nqyUwc47jB/pRlOJwCr6hgPe
         2yCIhYMORhV8H1TnHE2c9q5hyHhQXnkXtcFGgUsjI9k6usgzgP4CE5T8wEmsGyz0Ziuk
         Q3Ux/qgvh4oGrbs1fGKI0UD4xY26YsWAAMOpJE32DzwGyys6SW+TQxDaA6LIRLTqnbGS
         XcEPAdzHnac9hDoyZ3zoJURFgOaeA+rWsVdrmrsr1WeHoV2edxsS5PAOhQbWNNHd3C+s
         x9SQ==
X-Gm-Message-State: AOAM530VppMZYlwV+T3+k3upj6Oyz1hur2uvMEBpViIlOo39CwocFkDV
	0DT5640uNPokW9UlZWNQLuhe1BSoit0=
X-Google-Smtp-Source: ABdhPJz/Pj+Hx9IbvWnm88GI6rEpviX3DlF5ifb86cPAU6Jtm2fC8eL9u+O0BZmyrhtkdip2bDcSYQ==
X-Received: by 2002:a17:90a:d3d7:: with SMTP id d23mr1778376pjw.232.1593976387907;
        Sun, 05 Jul 2020 12:13:07 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id p127sm5675360pfb.17.2020.07.05.12.13.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jul 2020 12:13:07 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] isafw.bbclass: typo in layer name
Date: Sun,  5 Jul 2020 19:13:06 +0000
Message-Id: <20200705191306.21823-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

move class to proper layer

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../classes/isafw.bbclass                                         | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {meta-security-isfafw => meta-security-isafw}/classes/isafw.bbclass (100%)

diff --git a/meta-security-isfafw/classes/isafw.bbclass b/meta-security-isafw/classes/isafw.bbclass
similarity index 100%
rename from meta-security-isfafw/classes/isafw.bbclass
rename to meta-security-isafw/classes/isafw.bbclass
-- 
2.17.1

