Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C12E00F51; Mon, 29 Aug 2016 06:39:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	URI_HEX autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6A3AE00F46
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:39:04 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i6so9385520pfe.0
	for <yocto@yoctoproject.org>; Mon, 29 Aug 2016 06:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=NNpPRzHSmK3ws6EOAqe134NcLbcWbnP6uYyW4ZZcasc=;
	b=XJKZthdFu08F8EgO9AxNb3yrIkv5xs2zWk9Aa0Pmc31lgV1QQgOtz5QlKrlq9Ceoxx
	hGlwqBvIyWpyH6ASdrz6aidGhmg1h1+qWCmPX8iXDULXzfuIssyGbfBCgZmlQ9YUZ9MH
	UQwJxQrQqJW7EBmN11gQoFTLPlA6Fw2RDuWh2wqmlT4yD3G9YLQuFWuyzMuZ6D5WWvN6
	x8r/zddRqhk3ewnglMl+oNfYlTxswEhU5n5MnZbiLXyim8Hk4BOODwCHflUiFdi5gqeN
	m7nj0nZQkAkYfE4VqeohQnUxcNHJh/2aMd4Pw7LdUdeUkGBaGD09NFZY4yDeRtwgs5bM
	m5Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=NNpPRzHSmK3ws6EOAqe134NcLbcWbnP6uYyW4ZZcasc=;
	b=j6V7J1dhOAh7tI6S+2ui9X0mQKT3gBbJcP6ZX9B7gllWu4yj+LofkpshdXRbS8c0k9
	fTubHDPohAPIKzRToXihoIaA9fYjwSzL9oVwVH3P0P7YA7o1FrBsRS9XhsvUXGAFp6i5
	xaaEFxBbXRSIICkDzX56WkA5hImT3X0iNR6B/DUEozRJcjAZe5D0Hn9MGd5w6cT64GfD
	PqdLxDZXLUDywwuVSFvkR8hcTwU1NTqoyRK7n98/T7asGKXH2K5HWcADwIGXCIS8try8
	5zZnLnHODPe5BzXKhqz1+RZamGuicD5iVlm/S5rL62Il9yf6hg/QNYI3D2VTuGpkAYqn
	m9mw==
X-Gm-Message-State: AE9vXwPT0Q/SKBJAk9mwEi7/zh/yPBQeRZi0ZyVZAXi4fG6hrufZ//aRTX+E8Fjvu7WBFw==
X-Received: by 10.98.72.201 with SMTP id q70mr32608633pfi.159.1472477943954;
	Mon, 29 Aug 2016 06:39:03 -0700 (PDT)
Received: from shrikant-VirtualBox.inp.mentorg.com ([139.181.35.34])
	by smtp.gmail.com with ESMTPSA id
	k78sm49576156pfa.78.2016.08.29.06.39.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 29 Aug 2016 06:39:03 -0700 (PDT)
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Aug 2016 19:08:57 +0530
Message-Id: <1472477937-26101-1-git-send-email-bobadeshrikant@gmail.com>
X-Mailer: git-send-email 1.9.1
Cc: Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: [meta-selinux] [PATCH 9/9] refpolicy-minimum: systemd: fix for syslog
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
X-List-Received-Date: Mon, 29 Aug 2016 13:39:32 -0000

From: Shrikant Bobade <shrikant_bobade@mentor.com>

syslog & getty related allow rules required to fix the syslog mixup with
boot log, while using systemd as init manager.

Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
---
 ...-refpolicy-minimum-systemd-fix-for-syslog.patch | 69 ++++++++++++++++++++++
 .../refpolicy/refpolicy-minimum_2.20151208.bb      |  1 +
 2 files changed, 70 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch b/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
new file mode 100644
index 0000000..b01947d
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy-minimum/0009-refpolicy-minimum-systemd-fix-for-syslog.patch
@@ -0,0 +1,69 @@
+From 9476fb0aad7caa725014e72cd009b78389ba66d5 Mon Sep 17 00:00:00 2001
+From: Shrikant Bobade <shrikant_bobade@mentor.com>
+Date: Fri, 26 Aug 2016 17:54:29 +0530
+Subject: [PATCH 9/9] refpolicy-minimum: systemd: fix for syslog
+
+syslog & getty related allow rules required to fix the syslog mixup with
+boot log, while using systemd as init manager.
+
+without this change we are getting these avc denials:
+
+audit: avc:  denied  { search } for  pid=484 comm="syslogd" name="/"
+dev="tmpfs" ino=7269 scontext=system_u:system_r:syslogd_t:s0 tcontext=
+system_u:object_r:tmpfs_t:s0 tclass=dir permissive=0
+
+audit: avc:  denied  { write } for  pid=372 comm="syslogd" name="log" dev=
+"tmpfs" ino=954 scontext=system_u:system_r:syslogd_t:s0 tcontext=system_u:
+object_r:tmpfs_t:s0 tclass=dir permissive=0
+
+audit: avc:  denied  { add_name } for  pid=390 comm="syslogd" name=
+"messages" scontext=system_u:system_r:syslogd_t:s0 tcontext=system_u:object_r
+:tmpfs_t:s0 tclass=dir permissive=0
+
+audit: avc:  denied  { sendto } for  pid=558 comm="agetty" path="/run/systemd
+/journal/dev-log" scontext=system_u:system_r:getty_t:s0 tcontext=system_u:
+system_r:initrc_t:s0 tclass=unix_dgram_socket permissive=0
+
+audit: avc:  denied  { create } for  pid=374 comm="syslogd" name="messages"
+scontext=system_u:system_r:syslogd_t:s0 tcontext=system_u:object_r:tmpfs_t:
+s0 tclass=file permissive=0
+
+audit: avc:  denied  { append } for  pid=423 comm="syslogd" name="messages"
+dev="tmpfs" ino=7995 scontext=system_u:system_r:syslogd_t:s0 tcontext=
+system_u:object_r:tmpfs_t:s0 tclass=file permissive=0
+
+audit: avc:  denied  { getattr } for  pid=425 comm="syslogd" path="/var/
+volatile/log/messages" dev="tmpfs" ino=8857 scontext=system_u:system_r:
+syslogd_t:s0 tcontext=system_u:object_r:tmpfs_t:s0 tclass=file permissive=0
+
+Upstream-Status: Pending
+
+Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
+---
+ policy/modules/system/getty.te   | 1 +
+ policy/modules/system/logging.te | 3 ++-
+ 2 files changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/policy/modules/system/getty.te b/policy/modules/system/getty.te
+index 84eaf77..2e53daf 100644
+--- a/policy/modules/system/getty.te
++++ b/policy/modules/system/getty.te
+@@ -142,3 +142,4 @@ optional_policy(`
+ 
+ allow getty_t tmpfs_t:dir search;
+ allow getty_t tmpfs_t:file { open write lock };
++allow getty_t initrc_t:unix_dgram_socket sendto;
+diff --git a/policy/modules/system/logging.te b/policy/modules/system/logging.te
+index 107db03..95de86d 100644
+--- a/policy/modules/system/logging.te
++++ b/policy/modules/system/logging.te
+@@ -581,4 +581,5 @@ allow klogd_t initrc_t:unix_dgram_socket sendto;
+ allow syslogd_t self:shm create;
+ allow syslogd_t self:sem { create read unix_write write };
+ allow syslogd_t self:shm { read unix_read unix_write write };
+-allow syslogd_t tmpfs_t:file { read write };
++allow syslogd_t tmpfs_t:file { read write create getattr append open };
++allow syslogd_t tmpfs_t:dir { search write add_name };
+-- 
+1.9.1
+
diff --git a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
index 9f01492..da6626e 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_2.20151208.bb
@@ -80,4 +80,5 @@ SYSTEMD_REFPOLICY_PATCHES = " \
 	file://0006-refpolicy-minimum-systemd-mount-enable-requiried-ref.patch \
 	file://0007-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch \
 	file://0008-refpolicy-minimum-systemd-fix-for-systemd-tmp-files-.patch \
+	file://0009-refpolicy-minimum-systemd-fix-for-syslog.patch \
 	"
-- 
1.9.1


