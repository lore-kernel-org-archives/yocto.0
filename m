Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
 by mx.groups.io with SMTP id smtpd.web10.5368.1588676490895248886
 for <yocto@lists.yoctoproject.org>;
 Tue, 05 May 2020 04:01:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=GQpqkdgU;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.67, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f67.google.com with SMTP id h4so1791905wmb.4
        for <yocto@lists.yoctoproject.org>; Tue, 05 May 2020 04:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=4A+pm2Bk5WTU7DZ2jn44HPVjbO2zEYe9Nv7EW7WuSxg=;
        b=GQpqkdgU5XY1OmF/c9+fSRJQ0gMAltd1zjEgFF1aCgr/Bi8WDTFX2MSTAP8ngwMnE4
         8e2c8EiVMHViG/6CXJozsjLnYf+0CO2ibycYXuJ6D17JPVYpjNGFcoPkUsSANgdUDL/s
         XfWK9hI7EXVVvIeNo5wT7cjamvH+U+JY/9ubk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4A+pm2Bk5WTU7DZ2jn44HPVjbO2zEYe9Nv7EW7WuSxg=;
        b=VyQaQYNZ3lOvhqis1iTGzQek/MLlcry4zHUkZiUQFT1y9LTr6rXW0L1Q5Kbsw/xmmK
         ow1ZfAKjGJwJofsY/SU5tznz+R6hRW5iIA6bx1eOm/ZA2q7OQaAzNhMBkVzsASyzFb0l
         Y80HvDBXS7c2psRUKkGqY5Xbm8OWNXyFm6kz2TAbfzv2Uo8b6cDH2Et6dg6tmVaql4xc
         awpopzChnnhBxa+Jh21r8SetYrkaxPRVsS1QQ3YNbwC97e7MeawxLGfZz/OBRMmqh33f
         VLOt+bEYysRvyLKwrWG6h2XXSlQAFbW2QOEaZM9aK9z4B89xgV2zZjDN/J2llBsC8ek2
         LDQg==
X-Gm-Message-State: AGi0PuYWiPqx3pvAb7klZh4c+SH/IumvsEyqpeVR0W5EuqxiXiQmqeWy
	5JB1+36xng4pNaUlmUIzZGCJy4JxuKo=
X-Google-Smtp-Source: APiQypLhSWEEgUJoL1Mk1SkCb7fPwl/Y11zFhWfLQk+pjHjCTTImdB6Dp2hqyX4PpnSiMwLnmO5vmw==
X-Received: by 2002:a1c:5642:: with SMTP id k63mr2823099wmb.188.1588676489235;
        Tue, 05 May 2020 04:01:29 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id u127sm3356933wme.8.2020.05.05.04.01.27
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 04:01:28 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [meta-gplv2] [PATCH 2/3] disable-gplv3.inc: Disable glib-2.0 ptest python3-dbusmock dependency
Date: Tue,  5 May 2020 12:01:24 +0100
Message-Id: <20200505110125.3692309-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200505110125.3692309-1-richard.purdie@linuxfoundation.org>
References: <20200505110125.3692309-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The newly added dependency on python3-dbusmock in OE-Core is GPLv3
and would fail to work with this layer. Remove it in the config
for enabling the layer.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 conf/distro/include/disable-gplv3.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
index 45834b7..761be7d 100644
--- a/conf/distro/include/disable-gplv3.inc
+++ b/conf/distro/include/disable-gplv3.inc
@@ -1,2 +1,3 @@
 INCOMPATIBLE_LICENSE = '*GPLv3'
 WARN_QA_remove = 'incompatible-license'
+RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
-- 
2.25.1

