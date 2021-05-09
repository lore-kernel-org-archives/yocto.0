Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web12.20448.1620575264150881005
 for <yocto@lists.yoctoproject.org>;
 Sun, 09 May 2021 08:47:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jYCRAkC+;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id s20so7921778plr.13
        for <yocto@lists.yoctoproject.org>; Sun, 09 May 2021 08:47:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ZQ2RT7LRmcU/3+ZeWXGdqQZIO8axHRXAY48RgtgWaBk=;
        b=jYCRAkC+swUgAlpNhl+dx78GOI7ekgUT9KKisoiR5eRpycM3WmcdQPgc2LuHCOjbd+
         bMjHrJE+2xL6iZQPtRBqvSH7I64AVl8dhf0j8FTXsSeRKtqXr+nvWAuKCpa4yGvNeEqf
         HjVz0Zi0HoEzkRWpOtIyKwQkxA3dt2tES13Q8l/DIwwdTwyres3M0fs2ipIDaS7K7THW
         w51elYiPNpT6IGoWDoVMkbjnkheZd9E79kddsPbEteB9O5BRUktZxIP7fSoekd3EfPaN
         HIXSwKYJkSf5O9er+IC4lxHAnHzpwGum9b02IEJXqHuHHMzuTidwObgD6csGYb00zpxe
         dHlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZQ2RT7LRmcU/3+ZeWXGdqQZIO8axHRXAY48RgtgWaBk=;
        b=EiI4TEVPzh5pcQDP2x5kRI4p1WOIX2l0ZMFnE+aUBQL0u2tFUVenBf3lX/JZauk0fq
         VlENwWWlu8NJf98JFyZNAvdY5155CCcFPOw711CNkhvKxRzP9wdDlBaRpnqgiVoKtUEc
         g6ly2ZNR7eRXdsijoo8497jC4R15xJNXZK0+Eed5p3raKVGa4LHZkonXZzPEN141ZNh0
         xEScRwClinQoWi44oAuO1oiFZh3PzP0RqHtR8zhlaB31ocH9hzvFsyVCm+DrGsjMthlb
         e4UtQzbSh8iMeHmslGi35lMfqNmB2QpnsaaG8b9ejfCNjny2TbBC7k9PL2JPiDW5xQVw
         AYxA==
X-Gm-Message-State: AOAM5319KJZuFJP2hJVwzoQAbK7tUwvUZHlAcUB1W4BogI/BWIv+IvCW
	FSX6LmPHsWxaKd2DOGNrBmIhg0VGNxRjug==
X-Google-Smtp-Source: ABdhPJzlkLGo64daMsp4PGV4WcESQUusmTRtJHiqSuOlnaT1uC+MDzYaD7fMtNzK48YxHCTO6XKQYA==
X-Received: by 2002:a17:90b:797:: with SMTP id l23mr22719722pjz.160.1620575263450;
        Sun, 09 May 2021 08:47:43 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id in16sm9428165pjb.14.2021.05.09.08.47.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 May 2021 08:47:43 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] python3-scapy: add UPSTREAM_CHECK_COMMITS
Date: Sun,  9 May 2021 15:47:37 +0000
Message-Id: <20210509154740.1628375-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210509154740.1628375-1-akuster808@gmail.com>
References: <20210509154740.1628375-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/scapy/python3-scapy_2.4.4.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/scapy/python3-scapy_2.4.4.bb b/recipes-security/scapy/python3-scapy_2.4.4.bb
index 8d81ed1..23ddfce 100644
--- a/recipes-security/scapy/python3-scapy_2.4.4.bb
+++ b/recipes-security/scapy/python3-scapy_2.4.4.bb
@@ -13,6 +13,8 @@ SRC_URI = "git://github.com/secdev/scapy.git \
 
 S = "${WORKDIR}/git"
 
+UPSTREAM_CHECK_COMMITS = "1"
+
 inherit setuptools3 ptest
 
 do_install_append() {
-- 
2.25.1

