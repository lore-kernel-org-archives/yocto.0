Return-Path: <stefan@agner.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DEFCE00D07; Mon, 25 Feb 2019 07:26:23 -0800 (PST)
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
X-Greylist: delayed 599 seconds by postgrey-1.32 at yocto-www;
	Mon, 25 Feb 2019 07:26:22 PST
Received: from mail.kmu-office.ch (mail.kmu-office.ch [178.209.48.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57BBFE00D01
	for <yocto@yoctoproject.org>; Mon, 25 Feb 2019 07:26:22 -0800 (PST)
Received: from trochilidae.toradex.int (unknown [46.140.72.82])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id D52AE5C2A47;
	Mon, 25 Feb 2019 16:16:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=agner.ch; s=dkim;
	t=1551107782;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	to:to:cc:cc:mime-version:mime-version:content-type:
	content-transfer-encoding:content-transfer-encoding:
	in-reply-to:in-reply-to:references:references;
	bh=GtKkPVaV+dZuK2hW2k5o4yaxLcYItAfsI38Dp+OR6j8=;
	b=GoiBSOWQFkFjURZlXvvw86AYM0rG+O0C1hkIbMYZf0d8Gq9N6v57Wy77m9BqJmMuA/T4qh
	vIK5673Lyvb6p5EczlNouJL6vjJ/V8l31vwtxSntvbkncNzzlK6RAEiON6rQhsuojwFqmp
	nc4apRMP7kWvgTbt2r3+hvSI6TPDzNI=
From: Stefan Agner <stefan@agner.ch>
To: yocto@yoctoproject.org
Date: Mon, 25 Feb 2019 16:16:19 +0100
Message-Id: <20190225151619.2754-3-stefan@agner.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190225151619.2754-1-stefan@agner.ch>
References: <20190225151619.2754-1-stefan@agner.ch>
MIME-Version: 1.0
Cc: Stefan Agner <stefan.agner@toradex.com>, stefan@agner.ch
Subject: [psplash][PATCH 3/3] process consecutive commands
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

Process consecutive commands separated by null-termations. Since
it is a FIFO, in theory, two commands can be queued from two
independent calls to psplash-write. This also makes the command
parser more robust. With this code, sequences like this get
parsed just fine:
  echo -e "\nPROGRESS 10\n\0\nQUIT" > /run/psplash_fifo

Signed-off-by: Stefan Agner <stefan.agner@toradex.com>
---
 psplash.c | 50 ++++++++++++++++++++++++++++++++++----------------
 1 file changed, 34 insertions(+), 16 deletions(-)

diff --git a/psplash.c b/psplash.c
index 169f9c1..b40adf2 100644
--- a/psplash.c
+++ b/psplash.c
@@ -115,11 +115,17 @@ parse_command (PSplashFB *fb, char *string)
 
   if (!strcmp(command,"PROGRESS")) 
     {
-      psplash_draw_progress (fb, atoi(strtok(NULL,"\0")));
+      char *arg = strtok(NULL, "\0");
+
+      if (arg)
+        psplash_draw_progress (fb, atoi(arg));
     } 
   else if (!strcmp(command,"MSG")) 
     {
-      psplash_draw_msg (fb, strtok(NULL,"\0"));
+      char *arg = strtok(NULL, "\0");
+
+      if (arg)
+        psplash_draw_msg (fb, arg);
     } 
   else if (!strcmp(command,"QUIT")) 
     {
@@ -137,6 +143,7 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeout)
   fd_set         descriptors;
   struct timeval tv;
   char          *end;
+  char          *cmd;
   char           command[2048];
 
   tv.tv_sec = timeout;
@@ -172,21 +179,32 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeout)
 	  pipe_fd = open(PSPLASH_FIFO,O_RDONLY|O_NONBLOCK);
 	  goto out;
 	}
-      
-      if (command[length-1] == '\0') 
-	{
-	  if (parse_command(fb, command))
-	    return;
-	  length = 0;
-	} 
-      else if (command[length-1] == '\n') 
-	{
-	  command[length-1] = '\0';
-	  if (parse_command(fb, command))
-	    return;
-	  length = 0;
-	} 
 
+      cmd = command;
+      do {
+	int cmdlen;
+        char *cmdend = memchr(cmd, '\n', length);
+
+        /* Replace newlines with string termination */
+        if (cmdend)
+            *cmdend = '\0';
+
+        cmdlen = strnlen(cmd, length);
+
+        /* Skip string terminations */
+	if (!cmdlen && length)
+          {
+            length--;
+            cmd++;
+	    continue;
+          }
+
+	if (parse_command(fb, cmd))
+	  return;
+
+	length -= cmdlen;
+	cmd += cmdlen;
+      } while (length);
 
     out:
       end = &command[length];
-- 
2.20.1


