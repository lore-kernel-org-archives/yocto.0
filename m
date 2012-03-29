Return-Path: <martin.jansa@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18137E013D9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:03 -0700 (PDT)
Received: by mail-we0-f176.google.com with SMTP id c1so18688wer.35
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2012 15:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:in-reply-to:references;
	bh=fU6JckOTvcDhBvSozmgOkzqlaCILPz5kzfXBkxoHA7M=;
	b=PfsBT3XdUniYJgjcoU7ooz+RpeO1pypze0xqZ4rKpatLlIFoII0xWgjN4p9dVfxUyL
	TNjrMLd79SvzBznAS4wlvDDMU+VyyH/qGTcQGu+dALsnaS/Ap+ik2D4DTFoVu56rH3jI
	ECiZeXKPcYDhHSAq1pxdaeXSCjGanvwqbzmtJWFB/v/lmQs8/Rp9f3J+a/G993UW9G+g
	Xuea0x2EA9rntq0Hb0ATLCrRqAy+8RERKR8YbNlZBjV4polVDdmMQTPwEUpdm8zsJZRG
	i8PA8O3veWE89iiU8oLMyQjQQvgz9tFMnsL12+OXtqDbhRWA4onSzgE16DcBjjgWcFxT
	fw1g==
Received: by 10.180.88.169 with SMTP id bh9mr159837wib.5.1333059903799;
	Thu, 29 Mar 2012 15:25:03 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id 17sm9547260wis.0.2012.03.29.15.25.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 29 Mar 2012 15:25:03 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 30 Mar 2012 00:22:52 +0200
Message-Id: <0ff4067cefb4e82ec4580e6efecd57949d9bfcef.1333058256.git.Martin.Jansa@gmail.com>
X-Mailer: git-send-email 1.7.8.5
In-Reply-To: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
References: <9ef7416d6b2d16f5a244316e0df098654a3af9de.1333058256.git.Martin.Jansa@gmail.com>
In-Reply-To: <cover.1333058256.git.Martin.Jansa@gmail.com>
References: <cover.1333058256.git.Martin.Jansa@gmail.com>
Subject: [opkg-utils][PATCH 18/22] opkg.py: cast lines from controlfile as string
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 29 Mar 2012 22:25:04 -0000

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 opkg.py |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/opkg.py b/opkg.py
index 84583be..6c39616 100644
--- a/opkg.py
+++ b/opkg.py
@@ -206,7 +206,7 @@ class Package:
         while 1:
             if not line: break
             line = line.rstrip()
-            lineparts = re.match(r'([\w-]*?):\s*(.*)', line)
+            lineparts = re.match(r'([\w-]*?):\s*(.*)', str(line))
             if lineparts:
                 name = lineparts.group(1).lower()
                 value = lineparts.group(2)
-- 
1.7.8.5


