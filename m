Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web09.4165.1578266319278371310
 for <yocto@lists.yoctoproject.org>;
 Sun, 05 Jan 2020 15:18:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tkpn6hl8;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id x7so25995157pgl.11
        for <yocto@lists.yoctoproject.org>; Sun, 05 Jan 2020 15:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=qhLdpiGZwWFMtSwIsMsz+NoGUeXopjFcJjpsjtaskjo=;
        b=tkpn6hl8k/99gBcjFvRgQq05NUhKxPJF0Xuzy228rMFnO3jJ+eNgKrzFm33NGi3ZiK
         LOu0pUlvB2dKx1rlSf9DUmjtvHGyC+y0H9aKd0OfNY7lvF3no0StqOD52hwGH9QjUX2b
         7BXKDDBH3E1yQaPQfb7OwiUkEZXSqa1gRgqyUzy2nAgIl+I0/O0/esV3UiYaBd5Du0vL
         VtwBj+MV/04dqi3B3ltC0YuHFs9cAnFk5Vyb+vxU+eMkmzRX/N75WUkNvMwHBAxfBX9/
         hD89by91JDgWI1Q8FxgydrH/PpePEmDV7y5e5FNZQPUOieSjZFstGTrqq5eInMvLqBRJ
         JBHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=qhLdpiGZwWFMtSwIsMsz+NoGUeXopjFcJjpsjtaskjo=;
        b=fC+3vHL1xoL1vlgW1gwI7tnqnqxQj27KvN5aUAVI9hmnv+68P+TmqKMrAYwQviRlMO
         NNyhNUXZ61LSoe8lb8KX4Y6iT4CEac8cQnU5NDk5kEvCuS7T5THdGoZuTqgVKUMn7Wvh
         N6E4A7a+bXpQAp79NEfG030qkiDST/whPlQhjNXdwjuCfa2HQbTEQa8M8/fmZRtfVJKr
         7Ijs/yMJdPzaCb95AmQPoIhNJN/E33pOwVNSdxfqTSMCu/HHcL/ZpeuXEXwfekUGhnlC
         cfW9DyiI2FwOsfjKIHAjdCmKoduuj8ozZJq96SpDaH0ezxobA/5+7PHPzXLS1WiBHQ2Y
         opuA==
X-Gm-Message-State: APjAAAWjddDGrIqPfaacFhfIyQ+GJruzUoSupG1+41fB7Krq/KxlbiT+
	U0DxUAubK0czCJX+ecmF6vQsbNvy
X-Google-Smtp-Source: APXvYqzSZ4klekPqGY1+MvSGA687nhGo4S8tfAM0oYuC/Ltv6+iAIs2pwFeU+inPRr+FJNQNyS/9Zw==
X-Received: by 2002:a63:ce55:: with SMTP id r21mr91474059pgi.156.1578266318693;
        Sun, 05 Jan 2020 15:18:38 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:24ce:b2a3:bac9:47a9])
        by smtp.gmail.com with ESMTPSA id v4sm50705947pff.174.2020.01.05.15.18.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2020 15:18:38 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][zeus][PATCH 8/9] libhtp: bugfix only update 0.5.32
Date: Sun,  5 Jan 2020 15:18:29 -0800
Message-Id: <20200105231830.5281-8-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200105231830.5281-1-akuster808@gmail.com>
References: <20200105231830.5281-1-akuster808@gmail.com>

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

