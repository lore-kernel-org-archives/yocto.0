Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.1904.1592014767473879609
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 19:19:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aHKftLsc;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: jpuhlman@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 25so10497042oiy.13
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 19:19:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HNnoa856ZdI0jYjdpQMa7cQy9yFyBx2Z8yMI5mSvbDk=;
        b=aHKftLscl5QJ+uyBfvBU1dMmkxMxYlu6v1E2NRWyjI7d8SfbxON3ttsy1/UQa2C9So
         94NTDQTKSsBX+v0MiodSWQH9Pg1eeiuJeabrdHLx8baDv1tmvqwffK3zBdnMZldW7I60
         oz+axmTTyfCefzCtoI055R1R9K42tugDnFWzokW2sCMvaM9Dq6cQGkfEcNz2pmOuXF6V
         H9+cvk02Dd9C6E/lqEZ8a5aeEPDvYhCxwrSt+kkuiZWpzqFuItKPHvekOqC2ATUgB/4Y
         6VqnORmYj2MLr7MU/2+1H23KMbI9yeg8PGGfjNbsFJu0rkvt5/FIpg9OUdJw+HQPhQJH
         FAhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=HNnoa856ZdI0jYjdpQMa7cQy9yFyBx2Z8yMI5mSvbDk=;
        b=ri98+U+3hDb9J7lhRaH0ribnx3Yk/yZRAJRj1fV4KCAJkE62ZFGDvObvAQA3tgK/GW
         PtuC8P3zS8rXZXFeQgj5cBw2fYAJwUobR2IXv+Dt4bkMIazh8d3pI7AXBte+g8Yt1g9Y
         cVfS0R4dVzKanv2zRxnp+IXj067FkYNLK0Oi8P9pg9Etvinlod/3DwbEIvVIIhLqaqDD
         6LpEx7ORaRz+tdm+OETZRr4rdccNlDd7KnwB2xOtXShwaUudwpbzezn6DDnmSG/s6Lfw
         si6+adg7XZSt1Ml3YELacfjDlYzqnnJpuZNSJ6Pe6Nqdet7uRxbcsWC+CEZO8Pe+Arne
         g5Tw==
X-Gm-Message-State: AOAM531Ze3plwokbrxufzUcQXPLmoTbPphKkRMMzrYRSjJ8y/Pxlc/j1
	CcnJTZEpNCbHbfmIqZlLv850tfY37fpvcA==
X-Google-Smtp-Source: ABdhPJwT9Fl4G7rRERs3o+Bq61IQtchI/tfv+IXzVH5pxOj1EI6s1UWSkfAd9LHZ7TjMmiyG1R0N1A==
X-Received: by 2002:aca:cc8b:: with SMTP id c133mr1383630oig.5.1592014766576;
        Fri, 12 Jun 2020 19:19:26 -0700 (PDT)
Return-Path: <jpuhlman@gmail.com>
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id t8sm1759683oor.42.2020.06.12.19.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 19:19:26 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id 3E5572A0D57; Fri, 12 Jun 2020 19:19:25 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-security][master|dunfell][PATCH 2/2] tripwire: Remove makefiles from the man directories.
Date: Fri, 12 Jun 2020 19:19:19 -0700
Message-Id: <20200613021919.1871-2-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200613021919.1871-1-jpuhlman@mvista.com>
References: <20200613021919.1871-1-jpuhlman@mvista.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy Puhlman <jpuhlman@mvista.com>
---
 recipes-ids/tripwire/tripwire_2.4.3.7.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-ids/tripwire/tripwire_2.4.3.7.bb b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
index c26392a..4f50bff 100644
--- a/recipes-ids/tripwire/tripwire_2.4.3.7.bb
+++ b/recipes-ids/tripwire/tripwire_2.4.3.7.bb
@@ -52,6 +52,7 @@ do_install () {
     install -m 0644 ${S}/man/man4/* ${D}${mandir}/man4
     install -m 0644 ${S}/man/man5/* ${D}${mandir}/man5
     install -m 0644 ${S}/man/man8/* ${D}${mandir}/man8
+    rm ${D}${mandir}/man*/Makefile*
     install -m 0644 ${S}/policy/templates/* ${D}${docdir}/${BPN}/templates
     install -m 0644 ${S}/policy/*txt ${D}${docdir}/${BPN}
     install -m 0644 ${S}/COPYING ${D}${docdir}/${BPN}
-- 
2.20.1

