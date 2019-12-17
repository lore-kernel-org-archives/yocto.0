Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web10.2747.1576558114636249852
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 20:48:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sxzPi6Pi;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id q127so4961657pga.4
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2019 20:48:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=qhLdpiGZwWFMtSwIsMsz+NoGUeXopjFcJjpsjtaskjo=;
        b=sxzPi6Pi20wo38UIteEspwZEemC5NLrDkAJCHiKp+yjtE9N5SUognQR6xgrpXhXp1Z
         ZS5LFc9WXL8sg+mUqD4jlrk7uz6zu91rYf9O9QdLlVvYWHaSFY/NrW/iZ2wVQNzcaFDD
         +pFKRnG0tHvMPS0c55uiwUonBXVf3wZ7RSbb0h/lPg+3V8hQfThmiAlpw0RFRydJBTSF
         9OC02W0arfuNyUHX+7nColdtPAOnKpksEiWuEfqB42jaJ7AyXAeAVxzFkAnXyYQ8dZHJ
         N58chZrh1WotxSVmWOzGKpIDvVj3ycYbTo1gby46blRLpH0s33r2IcEsxtJGkuxdI4Bt
         1S7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=qhLdpiGZwWFMtSwIsMsz+NoGUeXopjFcJjpsjtaskjo=;
        b=jKUx+bwXVJpr17Ii5hWJ5fjg5m3KoROztHw+W9oK1E9z4XS9isLoHnRCykui8cYuJ/
         Xlg7FSeq1l6bgxeAXPzjmO6D11gA83XyTIPpSs4d9tA6/vjEGW9r4fjrNBkKbp4A8lYH
         55SRiAlCaD30rIGbfS7Zyjp6Zwymn0lD0G6khOKDEyHZ4O79BGzC3xKIbkmCpVKQvFhy
         cxH52qXmbu1mUFcOeNgX6ML5xgTvg93Yi7UEsq6pbYyjTQ/h6WkyyG0vtwmHlWMftmjR
         ibGF3VEFGOfXteqcc2mdr3V38c+TitUVdDmKc+TUu20PV0Qb6x2/GgzNc9TOLs/BcK2b
         8Mjw==
X-Gm-Message-State: APjAAAWoS+Q6JT54clTLmXmhOakRRwhz5HJ9o6L4IdKnOgSmVHaC3ZqT
	IsR0qk4c08Lwk2ImfLE+Tf/uKozDidg=
X-Google-Smtp-Source: APXvYqx9n2FzXUfCj3+zH7IkOixvEpGDhroV6ds/0mnk4cdcYVFl8uBcdpCEvdw8D9Bx8CXDmZiIEg==
X-Received: by 2002:a63:450:: with SMTP id 77mr22590026pge.290.1576558113951;
        Mon, 16 Dec 2019 20:48:33 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id 17sm25209378pfv.142.2019.12.16.20.48.33
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2019 20:48:33 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/3] libhtp: bugfix only update 0.5.32
Date: Mon, 16 Dec 2019 20:48:30 -0800
Message-Id: <20191217044831.2080-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217044831.2080-1-akuster808@gmail.com>
References: <20191217044831.2080-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/{libhtp_0.5.31.bb => libhtp_0.5.32.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-ids/suricata/{libhtp_0.5.31.bb => libhtp_0.5.32.bb} (100%)

diff --git a/recipes-ids/suricata/libhtp_0.5.31.bb b/recipes-ids/suricata/libhtp_0.5.32.bb
similarity index 100%
rename from recipes-ids/suricata/libhtp_0.5.31.bb
rename to recipes-ids/suricata/libhtp_0.5.32.bb
-- 
2.17.1

