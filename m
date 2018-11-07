Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB7A7E00A54; Wed,  7 Nov 2018 09:12:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.196 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com
	[209.85.214.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F6E6E00A1A
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 09:12:45 -0800 (PST)
Received: by mail-pl1-f196.google.com with SMTP id n4-v6so8148233plp.2
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 09:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=from:to:cc:subject:date:message-id;
	bh=iYcvKff3Ah6fmXyI6cJ2WykgMIcfB6HJkfxomGqJi5A=;
	b=A8fDJzOg/+gwcmgajD+fWlYicyO5of9sLFx2gqyoaUwb6jZJn8Nw3d3DvlL269CuAe
	SntZTGivM8ulOKIYnTJt6l+xvvH5AKjAK78UWNqCFz2mQoRngXWMV6nJRPx3ad3Pyuvw
	iNYIVU2r1ii359lZjnK80jk9FxqYuSWG4nED0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=iYcvKff3Ah6fmXyI6cJ2WykgMIcfB6HJkfxomGqJi5A=;
	b=YsEzg0mZEUUhkYtDFIV64dCfYqY129cam6q01gv6rK+i1OWAjc3KJYo+fOOAGDcsJh
	G1FpJuNfSovltIQkbmwBtVBlCHCaTUUH5GdNUH/BXnZ7LA//r3r0pPaK/2XH4VDNGt09
	2ttfWRebUZZtveWxoDDi/d6zoM1leVPpsC7QjnxLYWR6SWHbOCAYEekXtf3KnD+P18nr
	qYhFjYJJMk3c1lgcOev6Etf/9nnTy5OuTj9/6W5sTEgDWNckWEGH5WRdJ/nhWpEP88+j
	i0iERdJ/x2mi7AXMBtE3MEoMJ1MjwHSdwr+x90cwil7IWBSzCk0pXc1bEkdPCG+soTxj
	HPog==
X-Gm-Message-State: AGRZ1gI+lamNIz9iw7vXLpJeuYNykz9TvoUCSDFEjT1JHCp2iJFtlu3H
	keCv+QYtRkqIot+Z+Oxv5fukfk8iv2iFPQ==
X-Google-Smtp-Source: AJdET5dl+S1j8JumR8Siy8ELf+ttb53Pfrhrbwp76fg6TbNGEZ0ASN6XxszTkFg7zdCg+XwnmA+BZw==
X-Received: by 2002:a17:902:4481:: with SMTP id
	l1-v6mr1000573pld.123.1541610764239; 
	Wed, 07 Nov 2018 09:12:44 -0800 (PST)
Received: from yct-lpt.pdx.yoctoproject.org (5751f4a1.skybroadband.com.
	[87.81.244.161]) by smtp.gmail.com with ESMTPSA id
	d24-v6sm2078171pfe.40.2018.11.07.09.12.42
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 07 Nov 2018 09:12:43 -0800 (PST)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@yoctoproject.org, amanda.r.brindle@intel.com,
	paul.eggleton@linux.intel.com
Date: Wed,  7 Nov 2018 09:12:11 -0800
Message-Id: <20181107171211.18392-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.17.2
Subject: [error-report-web][PATCH] Allow autobuilder filter string to match anywhere
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
X-List-Received-Date: Wed, 07 Nov 2018 17:12:46 -0000

Multiple build clusters use the same prefix so we match a more distinctive
string anywhere in the submitter name.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 Post/feed.py  | 2 +-
 Post/views.py | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Post/feed.py b/Post/feed.py
index 745ee23..45c5327 100644
--- a/Post/feed.py
+++ b/Post/feed.py
@@ -25,7 +25,7 @@ class LatestEntriesFeed(Feed):
         if self.mode == results_mode.SPECIAL_SUBMITTER and hasattr(settings,"SPECIAL_SUBMITTER"):
             #Special submitter mode see settings.py to enable
             name = settings.SPECIAL_SUBMITTER['name']
-            queryset = BuildFailure.objects.order_by('-BUILD__DATE').filter(BUILD__NAME__istartswith=name)[:self.limit]
+            queryset = BuildFailure.objects.order_by('-BUILD__DATE').filter(BUILD__NAME__icontains=name)[:self.limit]
 
         else:
             queryset = BuildFailure.objects.order_by('-BUILD__DATE')[:self.limit]
diff --git a/Post/views.py b/Post/views.py
index 7f2cffb..cabd29b 100644
--- a/Post/views.py
+++ b/Post/views.py
@@ -205,7 +205,7 @@ def search(request, mode=results_mode.LATEST, **kwargs):
     if mode == results_mode.SPECIAL_SUBMITTER and hasattr(settings,"SPECIAL_SUBMITTER"):
         #Special submitter mode see settings.py to enable
         name = settings.SPECIAL_SUBMITTER['name']
-        items = items.filter(BUILD__NAME__istartswith=name)
+        items = items.filter(BUILD__NAME__icontains=name)
 
     elif mode == results_mode.SEARCH and request.GET.has_key("query"):
         query = request.GET["query"]
-- 
2.17.2


