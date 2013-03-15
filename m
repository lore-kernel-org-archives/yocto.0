Return-Path: <insop.song@gmail.com>
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2D3AE01473
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 03:49:09 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id k19so1466232qcs.13
	for <multiple recipients>; Fri, 15 Mar 2013 03:49:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references;
	bh=+nxrJPPUrcVhI6KZbiuqrY3H6RTLHwYSVvVybbMA88w=;
	b=TKTdMtZvFmGS0/oYHgc0OPvBVU7jan5u/3+pZZ2TiZVEwngEgfqBCdZ0fFGAO9TFGO
	xigC8Mi84pHwbmrpV963+tgTvWS1an30VrJqC5iqE+t+FrLLBmpzLUssMw9Kob85E6WO
	d7MI7aR3eALET6TlupIalof0WOQ/AlkXAQ0NS0iRVtuCD3Tvd/ZghUp4wwVnwrwSB71k
	WNqOOjrvrVAg+FcOXMJfSfvQQ6PP9fMEVULWZXKiWOm5l3O67c2qoziqOIbs6PZxcKVe
	U11ZtXJh7gjDFMGE334sx2C//75AellSIJ6SKEUWQosHOzbzSfF5qdTdEzzl6otsI5jK
	0dTw==
X-Received: by 10.49.64.72 with SMTP id m8mr4642281qes.51.1363344548731;
	Fri, 15 Mar 2013 03:49:08 -0700 (PDT)
Received: from sputnik.gateway.2wire.net
	(76-218-13-253.lightspeed.sntcca.sbcglobal.net. [76.218.13.253])
	by mx.google.com with ESMTPS id gw9sm2076573qab.10.2013.03.15.03.49.05
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 03:49:07 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
To: insop.song@gmail.com, bruce.ashfield@gmail.com, dvhart@linux.intel.com,
	inux-yocto@yoctoproject.org, yocto@yoctoproject.org
Date: Fri, 15 Mar 2013 03:48:49 -0700
Message-Id: <3a293d405fd704f0bf524e2a9537b17ae1edf981.1363342550.git.insop.song@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1363342550.git.insop.song@gmail.com>
References: <insop.song@gmail.com> <cover.1363342550.git.insop.song@gmail.com>
In-Reply-To: <cover.1363342550.git.insop.song@gmail.com>
References: <cover.1363342550.git.insop.song@gmail.com>
Subject: [PATCH 1/1] add sched_deadline reckpies-kernel for 3.8 kernel
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
X-List-Received-Date: Fri, 15 Mar 2013 10:49:09 -0000

---
 recipes-kernel/linux/linux-yocto_3.8.bbappend |    9 +++++++++
 1 file changed, 9 insertions(+)
 create mode 100644 recipes-kernel/linux/linux-yocto_3.8.bbappend

diff --git a/recipes-kernel/linux/linux-yocto_3.8.bbappend b/recipes-kernel/linux/linux-yocto_3.8.bbappend
new file mode 100644
index 0000000..175ab91
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_3.8.bbappend
@@ -0,0 +1,9 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+KBRANCH_qemux86 = "standard/edf"
+KBRANCH_fri2 = "standard/edf"
+
+SRCREV_machine_qemux86 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
+SRCREV_machine_fri2 = "62d98f6b12f91cc7419b88dfa2e0abe077c94f9f"
+
+KERNEL_FEATURES_append =" cfg/edf.scc"
-- 
1.7.9.5


