Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3971.1584582810109482065
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 18:53:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=NAqSqNPG;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jpuhlman@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC4FAE01844; Wed, 18 Mar 2020 18:53:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFC12E0183B
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
Received: by mail-pj1-f53.google.com with SMTP id j20so266495pjz.0
        for <yocto@yoctoproject.org>; Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=RrB2wxzEIHsjjS7H3gck21msKl9J+V2gUHSRnq7WaVo=;
        b=NAqSqNPGKnuu3rZkKNwG1ieib3RyjcDZLMTkIJ17Kw/b01Nu6t9zqsyEHamZ3quPVt
         WcCwNXW4aTioB5raYpYIaDX0kK87SLGRth6sxF0oocevdtvLUOdgZIVzzmsj7xmJ5mb/
         OIHnvltMgJ5q0WuZx4N4kctBiOVShoIhnr7WllRUB9qXqoYe+Q8F8siHTHsn21Fg0oO9
         HVJMardbzFnKfZgC6ql+HTv1+ekssZxF4qL649fQikn12Hb4H7EWalgr5Di/wsXiIUJ1
         RI0FDG1ErrXv9v9AGrfLeCCS5S+jEUszBsBVWO7RoL82Ru0GORGAYErGLPKHUoMFgnjY
         VWzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references;
        bh=RrB2wxzEIHsjjS7H3gck21msKl9J+V2gUHSRnq7WaVo=;
        b=RWTA09bDViPPnwYnhNChjWhTILT4V0UC9wZ1EpveypgpvbSEG05ooSvIcwROU16HXE
         UDM+ZpUIz5FcU0mvzfJAIMetsueR4ym7hmXG0l2VRyXj5hqvs8KOcMYi5UfwcZnJ5g6N
         MwiO4YvRFLyspKkl66MnI0Zb+3/g+MeiPwhntkW2QPZR3LI/j4INbqwjX+H+mJHkns5U
         p77WrcmeHR7/YFogloZEHw5UXae18XH74RYyCKf518kbI4mfeKJFBcIl1/3/Oq4SLvbk
         6MyhYcn0BK3XMRcRx0mYoJztyC59SGNH/9TKC7+z633ekYuAOJUjw8Fku8KSc1pekV+T
         1pVw==
X-Gm-Message-State: ANhLgQ3r02VhY9xYE/aO4VUfp6kjJsusncCrhNnRhBLVdyMm1Ns6c8D0
	uEw7/Zeobu3I1BHTqtwZYbYPREoQQhk=
X-Google-Smtp-Source: ADFU+vszMPaScd7bq5jn72m1gwilsXQXknCKOLJqlR9fcvUFhkvOL2DOdi13+p4Sff0giChRHkd9cQ==
X-Received: by 2002:a17:902:a514:: with SMTP id s20mr1159240plq.300.1584582808293;
        Wed, 18 Mar 2020 18:53:28 -0700 (PDT)
Received: from workhorse.localdomain (99-14-97-149.lightspeed.frokca.sbcglobal.net. [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id z6sm210272pfn.212.2020.03.18.18.53.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2020 18:53:27 -0700 (PDT)
Sender: Jeremy Puhlman <jpuhlman@gmail.com>
Received: by workhorse.localdomain (Postfix, from userid 1000)
	id C039E2A04DA; Wed, 18 Mar 2020 18:53:26 -0700 (PDT)
From: "Jeremy Puhlman" <jpuhlman@mvista.com>
To: yocto@yoctoproject.org
Cc: Jeremy Puhlman <jpuhlman@mvista.com>
Subject: [meta-cgl][PATCH 04/20] pacemaker: fix parse errors due to python2 removal
Date: Wed, 18 Mar 2020 18:53:05 -0700
Message-Id: <20200319015321.15525-4-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.13.3
In-Reply-To: <20200319015321.15525-1-jpuhlman@mvista.com>
References: <20200319015321.15525-1-jpuhlman@mvista.com>

From: Jeremy Puhlman <jpuhlman@mvista.com>

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
index feed53d..df02f40 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.21.bb
@@ -30,7 +30,7 @@ SRC_URI_append_libc-musl = "file://0001-pacemaker-fix-compile-error-of-musl-libc
 
 SRCREV = "f14e36fd4336874705b34266c7cddbe12119106c"
 
-inherit autotools-brokensep pkgconfig systemd python-dir useradd
+inherit autotools-brokensep pkgconfig systemd python3-dir useradd
 
 S = "${WORKDIR}/git"
 
-- 
2.13.3

