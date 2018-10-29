Return-Path: <joe.macdonald@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6EF3E00C31; Mon, 29 Oct 2018 11:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C3FCE00C75
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:04 -0700 (PDT)
Received: by mail-it1-f194.google.com with SMTP id i191-v6so10668373iti.5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:33:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=wNFpf7KEozozOop0HgmXjqaWoeulxd5FYZlLYMkio94=;
	b=ojRNwUy/UXC7EsL+LTvGH4kxiEmy+dtwCvPWL1DAkJfDJGK35doweO0C1Xtnhhg0AQ
	xhG/guZZtpYuWFmQ3jb44Ldklc4YYC5BmX2Y20L/io+2b/12oxuVD1medTtHa3+TdxI5
	jQwXn4/x3HOcmQ1LvaPM2DR+hbdGSxiDijBNtCNu56ebVmCN25yJNRK802RuAAjGtGC4
	gY3SH/HdjjLQJFvJjOgV/XkG7aL3cLB1+aF4yp4TmppM8c8EvjkET9ARfrmyYjePQ8Os
	v04vbwFvk56eDTGJa7dq9jkjQFFFMT1GpPDSdFcuFdSMmVu0/dJnZdFPjZnRrcucOGAI
	BNow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
	:in-reply-to:references;
	bh=wNFpf7KEozozOop0HgmXjqaWoeulxd5FYZlLYMkio94=;
	b=na3z3WjDTVRbBIHIYj7e1m9sBpaG7KBl7e2KDZV8trfwms8tV9uYGfEAH9dMWQVXUM
	IGn97O6A4DQ4PaT9JVA48/25dYDCq9qh2U6dBid73G/YUmt3pmfOHXfTP0AjPoFpseXs
	ZeO7lX3p1Pf3nEbEFMxRG6m8oyAa1SVbqNwdqQkX02Y1SKmBs3siA4NIJwfROyx51FV1
	+E+V7y4t/JAAzWwfW1njs0o/ohjp4Algd5kBP/e1s07bwn23O9qlZ0f9k8TrlrncvkGJ
	hrdFN+2fAJuciaum8ovUTfsnVcqEHTFCbgbD8IjQyIN5TF9/8OCbWzOb9mglvMtunI5v
	qQIw==
X-Gm-Message-State: AGRZ1gI4wtVQ3lyaGGGuC0am3CZcfVFKW5HfdMJKYiWbM0d3JJ+htikp
	ozxTpyzpIQikjOEzhUPGzoUy8NfH+1c=
X-Google-Smtp-Source: AJdET5dl9MGjv/62hzm0hMN4EftzyKdjHVcCTWKJlthsHCBFknUtyL+xm5+ovJA2eVezWYKQ7aC0tA==
X-Received: by 2002:a24:c1c5:: with SMTP id
	e188-v6mr10415675itg.174.1540837983316; 
	Mon, 29 Oct 2018 11:33:03 -0700 (PDT)
Received: from burninator2.deserted.net (23-233-29-148.cpe.pppoe.ca.
	[23.233.29.148]) by smtp.gmail.com with ESMTPSA id
	y11-v6sm7152984ioa.24.2018.10.29.11.33.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Oct 2018 11:33:02 -0700 (PDT)
Sender: Joe MacDonald <joe.macdonald@gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Mon, 29 Oct 2018 14:32:54 -0400
Message-Id: <20181029183257.20970-4-joe@deserted.net>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20181029183257.20970-1-joe@deserted.net>
References: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
	<20181029183257.20970-1-joe@deserted.net>
Subject: [meta-selinux][sumo][PATCH 4/7] libpcre_selinux.inc: fix do_install failure if .so file does not exist
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
X-List-Received-Date: Mon, 29 Oct 2018 18:33:11 -0000

From: Chen Qi <Qi.Chen@windriver.com>

In case of the existence of meta-mingw, the library is .dll instead of
.so and these .dll files are in ${bindir}.

We need to check the existence of the .so file before doing readlink,
otherwise do_install fails.

Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-support/libpcre/libpcre_selinux.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-support/libpcre/libpcre_selinux.inc b/recipes-support/libpcre/libpcre_selinux.inc
index 59c0184..d886792 100644
--- a/recipes-support/libpcre/libpcre_selinux.inc
+++ b/recipes-support/libpcre/libpcre_selinux.inc
@@ -1,5 +1,5 @@
 do_install_append () {
-	if [ ! ${D}${libdir} -ef ${D}${base_libdir} ]; then
+	if [ ! ${D}${libdir} -ef ${D}${base_libdir} -a -e ${D}${libdir}/libpcre.so ]; then
 		realsofile=`readlink ${D}${libdir}/libpcre.so`
 		mkdir -p ${D}/${base_libdir}/
 		mv -f ${D}${libdir}/libpcre.so.* ${D}${base_libdir}/
-- 
2.17.1


