Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A33FBE00DC6; Thu, 14 Apr 2016 03:59:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935AAE00E1A
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:59:28 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CnBACRdw9X/0oKEKxehQgGuBqEDoYOggIBAQEBAQGBDYVBKIEWDgXKYgEBAQcghiGJVoUKBZgLgVSMO4lPhT9FjmSES2qIfH4BAQE
X-IPAS-Result: A2CnBACRdw9X/0oKEKxehQgGuBqEDoYOggIBAQEBAQGBDYVBKIEWDgXKYgEBAQcghiGJVoUKBZgLgVSMO4lPhT9FjmSES2qIfH4BAQE
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 12:59:28 +0200
Message-ID: <1460631568-16930-1-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 4/5] psplash: remove unused parameter length from parse_command
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
X-List-Received-Date: Thu, 14 Apr 2016 10:59:39 -0000
Content-Type: text/plain

This fixes following unused-parameter warning:

psplash.c: In function 'parse_command':
psplash.c:105:49: warning: unused parameter 'length'
[-Wunused-parameter]

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 psplash.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/psplash.c b/psplash.c
index 65cf514..c72d120 100644
--- a/psplash.c
+++ b/psplash.c
@@ -102,7 +102,7 @@ psplash_draw_progress (PSplashFB *fb, int value)
 }
 
 static int 
-parse_command (PSplashFB *fb, char *string, int length) 
+parse_command (PSplashFB *fb, char *string)
 {
   char *command;
 
@@ -175,14 +175,14 @@ psplash_main (PSplashFB *fb, int pipe_fd, int timeout)
       
       if (command[length-1] == '\0') 
 	{
-	  if (parse_command(fb, command, strlen(command))) 
+	  if (parse_command(fb, command))
 	    return;
 	  length = 0;
 	} 
       else if (command[length-1] == '\n') 
 	{
 	  command[length-1] = '\0';
-	  if (parse_command(fb, command, strlen(command))) 
+	  if (parse_command(fb, command))
 	    return;
 	  length = 0;
 	} 
-- 
2.1.4


