Return-Path: <bkylerussell@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 768EAE0090A; Thu, 29 Mar 2018 13:29:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bkylerussell[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0793E00529
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:29:02 -0700 (PDT)
Received: by mail-pf0-f177.google.com with SMTP id m68so4015632pfm.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 13:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=aU5fnPOr6tzijjPEJELL1aCOfcdg8qLis9n3YfIBRCc=;
	b=WOlcQcpvZ3mG/Dn8ZvxwF8gdHHbPVFNgqF7X3b1WgMAC8jJruXyVknkol2nIzxQ2D6
	yXeRz1KxoJfpKWhAptnH+a2+fDB0ZSt6i+2IeF+fMyMpMRcPVDgmOZxIhWS9+Vp0NVpN
	rTviCpjddXQ7LOB4JnMAjbOVqpNS8u49PuWejcsyJOgRb/W0iDi1r91AHcmtSy/KMx9J
	ZgPIT2iNOabgWu1rMwP/aj242whKAsHNYm5ot6614hm7nW1QHjA/owj/FD0c8XzvP4xP
	A4g8r/q0DsmxXONViR0JHPkPasLAncvfj4e5TUpW8PzwvCVQFZAxUZVDOEMRfRbxfaAh
	kqzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=aU5fnPOr6tzijjPEJELL1aCOfcdg8qLis9n3YfIBRCc=;
	b=G7uqfsUFr68KwXQ/Z+t+llDYKRWEvFDUfnagsawqHyZb7Fo26g1dtTX06lfaz7JBaT
	ZxQ6zyzeLNE/I/9yYcawZ7Qoa1YKvHIb6eiknq238hkK0q9xDn+dtkIYEOBmr4FGw2Ep
	FGECc+oGVeVp81h8ILezDXxgpuL1eaevOFjZfBGR3ru+Mj1r9+89XTmHyi5CSG1cKGpQ
	RbG7HcrjY+uMFO4GquTD3ZSoRDR/S1glPv5mDApnog1K+tOG8a0xk5fPxSNJxIMa0uHA
	K3C09789wKNB+RRtnxZrcrdnKqeSZz4yJlLT3WyzTC6LwqEG00sdZEokub/Jx1WhwZ1C
	v8Iw==
X-Gm-Message-State: AElRT7Em5fA4ZEMkZCtiIaLYE+OTDwIVtkuqTrEf+aXiYJuRP1Uu91Q5
	qHWdbntyB6EirRm4IVb2P0HVWg==
X-Google-Smtp-Source: AIpwx4/PmcvqWnduI83KVaenPT0t/ZVOLap+VQE2Kz3vq4+bCx3yD3scVZROnd97QN7gtSHJ9pUhog==
X-Received: by 2002:a17:902:b101:: with SMTP id
	q1-v6mr9824191plr.3.1522355341625; 
	Thu, 29 Mar 2018 13:29:01 -0700 (PDT)
Received: from brrussell-Latitude-E6530.lexmark.com ([192.146.101.90])
	by smtp.gmail.com with ESMTPSA id
	n27sm11650795pgc.40.2018.03.29.13.28.58
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 29 Mar 2018 13:29:00 -0700 (PDT)
From: Kyle Russell <bkylerussell@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 29 Mar 2018 16:28:34 -0400
Message-Id: <1522355314-22670-1-git-send-email-bkylerussell@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [error-report-web][PATCH] error-details: pull Bugzilla URL from project settings
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2018 20:29:03 -0000

Signed-off-by: Kyle Russell <bkylerussell@gmail.com>
---
 Post/views.py                | 2 +-
 project/settings.py          | 2 ++
 templates/error-details.html | 2 +-
 3 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/Post/views.py b/Post/views.py
index 7f2cffb..c093e7b 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -260,7 +260,7 @@ def details(request, fail_id):
     except ObjectDoesNotExist:
       build_failure = None
 
-    context = {'detail' : build_failure, 'error_types' : ErrorType }
+    context = {'detail' : build_failure, 'error_types' : ErrorType, 'bugzilla_url' : settings.BUGZILLA_URL }
 
     return render(request, "error-details.html", context)
 
diff --git a/project/settings.py b/project/settings.py
index 3c6c87e..ca6f7fb 100644
--- a/project/settings.py
+++ b/project/settings.py
@@ -195,6 +195,8 @@ TEMPLATE_CONTEXT_PROCESSORS = (
 
 AUTH_PROFILE_MODULE = 'registration.RegistrationProfile'
 
+BUGZILLA_URL = 'https://bugzilla.yoctoproject.org'
+
 ACCOUNT_ACTIVATION_DAYS = 2
 EMAIL_HOST = 'localhost'
 DEFAULT_FROM_EMAIL = 'noreply@example.com'
diff --git a/templates/error-details.html b/templates/error-details.html
index c30160d..35bf0aa 100644
--- a/templates/error-details.html
+++ b/templates/error-details.html
@@ -83,7 +83,7 @@
 
       </dl>
       <div>
-        <a class="btn btn-block" target="_blank" href="https://bugzilla.yoctoproject.org/enter_bug.cgi?classification=__all" >Open a bug</a>
+        <a class="btn btn-block" target="_blank" href="{{bugzilla_url}}/enter_bug.cgi?classification=__all" >Open a bug</a>
       </div>
     </div>
   </div>
-- 
2.7.4


