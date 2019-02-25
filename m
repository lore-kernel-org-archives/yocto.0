Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD582E00D05; Mon, 25 Feb 2019 07:26:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [178.209.48.109 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58EFFE00D04
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 07:26:22 -0800 (PST)
Received: from trochilidae.toradex.int (unknown [46.140.72.82])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id A61A95C2A44;
	Mon, 25 Feb 2019 16:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1551107782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:
	content-transfer-encoding:content-transfer-encoding:
	in-reply-to:in-reply-to:references:references;
	bh=lLfDFqyw5M21029QiseoY0HmZtWDg0PelIU2nJ89vZw=;
	b=X41OZnGhexSFHCh740bvECCaxzcWj1iN0YZQuix00NCifH+7ODbeRo9NS+7ZYO7iZN/09X
	uVZuAFDWBpEJDOag9X4pWwPrvS196jG+1jGj3kodAXq+IdSyu6mGCTWMAmacmDfskTy3m4
	02ouQOg6SHnN/DcSWku5uQrw3lJQwhU=
From: Stefan Agner <stefan@agner.ch>
To: yocto@yoctoproject.org
Date: Mon, 25 Feb 2019 16:16:18 +0100
Message-Id: <20190225151619.2754-2-stefan@agner.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190225151619.2754-1-stefan@agner.ch>
References: <20190225151619.2754-1-stefan@agner.ch>
MIME-Version: 1.0
Cc: Stefan Agner <stefan.agner@toradex.com>, stefan@agner.ch
Subject: [psplash][PATCH 2/3] use /run for communication FIFO
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
X-List-Received-Date: Mon, 25 Feb 2019 15:26:23 -0000
Content-Transfer-Encoding: 8bit

From: Stefan Agner <stefan.agner@toradex.com>

Use /run for communication FIFO which is typically preserved
between initramfs and regular root file system. Introduce a
new environment variable PSPLASH_FIFO_DIR which allows to
pass /tmp for the old behavior or another directory.

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 psplash-write.c | 10 +++++-----
 psplash.c       | 10 +++++-----
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/psplash-write.c b/psplash-write.c
index 3fdba95..f0aeda1 100644
--- a/psplash-write.c
+++ b/psplash-write.c
@@ -29,13 +29,13 @@
 
 int main(int argc, char **argv) 
 {
-  char *tmpdir;
+  char *rundir;
   int   pipe_fd;
 
-  tmpdir = getenv("TMPDIR");
+  rundir = getenv("PSPLASH_FIFO_DIR");
 
-  if (!tmpdir)
-    tmpdir = "/tmp";
+  if (!rundir)
+    rundir = "/run";
 
   if (argc!=2) 
     {
@@ -43,7 +43,7 @@ int main(int argc, char **argv)
       exit(-1);
     }
   
-  chdir(tmpdir);
+  chdir(rundir);
   
   if ((pipe_fd = open (PSPLASH_FIFO,O_WRONLY|O_NONBLOCK)) == -1)
     {
diff --git a/psplash.c b/psplash.c
index 992e199..169f9c1 100644
--- a/psplash.c
+++ b/psplash.c
@@ -204,7 +204,7 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeout)
 int 
 main (int argc, char** argv) 
 {
-  char      *tmpdir;
+  char      *rundir;
   int        pipe_fd, i = 0, angle = 0, fbdev_id = 0, ret = 0;
   PSplashFB *fb;
   bool       disable_console_switch = FALSE;
@@ -241,12 +241,12 @@ main (int argc, char** argv)
       exit(-1);
   }
 
-  tmpdir = getenv("TMPDIR");
+  rundir = getenv("PSPLASH_FIFO_DIR");
 
-  if (!tmpdir)
-    tmpdir = "/tmp";
+  if (!rundir)
+    rundir = "/run";
 
-  chdir(tmpdir);
+  chdir(rundir);
 
   if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
     {
-- 
2.20.1


