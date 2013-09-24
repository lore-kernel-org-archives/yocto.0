Return-Path: <joe@deserted.net>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55807E01595
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 11:41:05 -0700 (PDT)
Received: by mail-we0-f172.google.com with SMTP id w61so5105031wes.3
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 11:41:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=nSR7NtmkQInomK9LChaCBBk4ZlBBwG19kFjvOE4Tzoc=;
	b=Xkl3Abd+0zCsUwKoqfgEGTlYrS6YIWiCMu6g0vaUcV83VXHuePRKkOjxeBRhcGMeyD
	gSL2adrLIwavSA10hmi/JWOH5/OL4oaZGcGO7cJmMLiH/GRL0KCvZEalM6ftMCLPWKbg
	ghPUKbhh0dZOdWUlhXeujRSPhZ5HK8EHE5HPdQ+wxFLtPQdBzUQnpI+4JG/rnZ5SNov/
	oo6TTTvQGV7pbMCT8WF6jOS+q4bZTe/fAd8vmcPMdhpIM3VyYfUEAbpyyKj/zgRLQrmw
	oeN0lT1lAfBcy4bCnTT+RBxyq1+leVClyOhAolYd1TNC44qRePzVfJ/Zh3R/Mryfocc0
	isuQ==
X-Gm-Message-State: ALoCoQkucCYkVVhCZI2Xlk+cD5fcg8yyEI1J/0vOU6KP/5YLsWFMDPT0THlLE76xTH5ij+XFDeSt
X-Received: by 10.180.39.134 with SMTP id p6mr19460246wik.9.1380048064444;
	Tue, 24 Sep 2013 11:41:04 -0700 (PDT)
Received: from burninator.wrs.com ([128.224.252.2])
	by mx.google.com with ESMTPSA id gp9sm10116244wib.8.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 24 Sep 2013 11:41:03 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Tue, 24 Sep 2013 14:41:00 -0400
Message-Id: <1380048060-25037-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [meta-selinux][PATCH] documentation: update guidance for runqemu
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
X-List-Received-Date: Tue, 24 Sep 2013 18:41:09 -0000

Testing SELinux on QEMU occasionally results in OOM conditions during a
relabel from time to time.  Update the documentation to warn about this
and suggest a way to avoid the situation.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 SELinux-FAQ |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/SELinux-FAQ b/SELinux-FAQ
index 5894626..b6a0df9 100644
--- a/SELinux-FAQ
+++ b/SELinux-FAQ
@@ -111,6 +111,14 @@ For example, when you are using qemu targets,
 
   $ runqemu qemumips core-image-selinux ext3 nographic bootparams="selinux=0"
 
+The initial filesystem relabel step requires considerable memory and can result
+in unexpected, sometimes impossible to reproduce, failures if an OOM condition
+occurs while it is in progress.  Therefore you should consider allocating at a
+minimum 512MB of RAM to your qemu image.  1GB or more is recommended.  This is
+accomplished by adding qemuparams="-m 1024" to your runqemu options.
+
+The defaults for various platforms vary, though it is usually around 256MB.
+
 3.2 - How do I turn enforcing mode on/off?
 
 You can specify the SELinux mode in /etc/selinux/config.
-- 
1.7.10.4


