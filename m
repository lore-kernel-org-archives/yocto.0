Return-Path: <philipp@peloton-tech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91F75E00B5F; Mon, 13 May 2019 17:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f195.google.com (mail-pl1-f195.google.com
	[209.85.214.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85071E00B5F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 17:23:04 -0700 (PDT)
Received: by mail-pl1-f195.google.com with SMTP id d3so7278450plj.11
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 17:23:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=peloton-tech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id;
	bh=TuM+0PQBH/XsbiZiaG1xfJxow9wzidHbyt1OfxirNq4=;
	b=w+Dg6Aj7hEsJvZ0Nr4eOExi1/I+t6quvfpFhmjda6kLRszAX56GC5V3zQBjNwzpSwx
	7i9t5BNCKGF4u4qsuRFlH2wBYbbeajjwemfGDdI/31bLST8JhZdM1u0eggKTcJX5mXBw
	rceSdA/WLAZdecsJV9GEnzNN09cPTsBgxd/eGROvQKMqK5BzkF/P7P7M+leqmAhn47ih
	Wf8e5/+9QjcK5cvNpUEONO1sCj6F/7QQUpkmgCINlory4O8WY+Io0+Dgu2N8mQNpT84n
	+5Yf90Bxu94w8j70zbepCQKzly5gIUb8UNd8zE6h0z8kIn2pkKdyee/cwgHw+r2bHC3+
	MNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=TuM+0PQBH/XsbiZiaG1xfJxow9wzidHbyt1OfxirNq4=;
	b=g/VMw8vXI26Ji9/oDN3RSs5YJy1q9Afwkcb1Aj2m0EcRfPLm3cy2TJ4ywUmu3qvTRB
	cBxDEjzKpWqOQ5Ja3WgqqHMXtcqXrX9I9dg5ztF/J7jSJIuMGDc0Bj0x4+aGHASEuIKb
	dr3E84FTqOu6MmmN0ClQkcCUpA6Qlt8hHR1N60fHqjPF8T+jVJdTMwX77WCuKXD00GtD
	GFdb2euszC2Gts/nGSNSnKvNRmekWInEALi9BGWBmDfDZLlNwhNhNreackpY6/qU/1+s
	0g2h8yUFOFPVFLnmwMk49j+AhoihHuDE57EqxCakX9Za3NpKeuj9caoNFTtIIgGU2zU6
	cWDQ==
X-Gm-Message-State: APjAAAX3vOZqzyBaSBxRBjsQWf5Zmd0fDhkBtyy9eBAIYM5adYUxsUpW
	y5iaPg6zD7CXf+XMN4l/xdurYnarF5Q=
X-Google-Smtp-Source: APXvYqyR0yJnYBTwlmPKe4Bs7+gjuXlfJcLZk62QdPBp6X2z446loqEdY13dOgpaJ9+ml3UUt+7dgg==
X-Received: by 2002:a17:902:a98b:: with SMTP id
	bh11mr5999109plb.8.1557793383513; 
	Mon, 13 May 2019 17:23:03 -0700 (PDT)
Received: from dev-builder.peloton-tech.net ([12.1.72.210])
	by smtp.gmail.com with ESMTPSA id
	c189sm37885966pfg.46.2019.05.13.17.23.02
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 May 2019 17:23:02 -0700 (PDT)
From: Philipp Schrader <philipp@peloton-tech.com>
To: yocto@yoctoproject.org
Date: Mon, 13 May 2019 17:22:59 -0700
Message-Id: <1557793380-10881-1-git-send-email-philipp@peloton-tech.com>
X-Mailer: git-send-email 2.1.4
X-Mailman-Approved-At: Thu, 16 May 2019 01:10:21 -0700
Cc: Philipp Schrader <philipp@peloton-tech.com>
Subject: [psplash][PATCH 1/2] Allow users to specify a horizontal offset parameter
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
X-List-Received-Date: Tue, 14 May 2019 00:23:05 -0000

I have a system where the framebuffer size doesn't match the display
size. In order to figure out which portion of the framebuffer makes it
to the screen I wanted a way to quickly move the picture around. I
decided to add a command line option for a horizontal offset that at
runtime lets you change where exactly the image gets written.

This patch adds a new --horizontal-offset argument to let the user
specify this offset. I was tempted to make the short option "-h"
instead of "-o", but figured that was a bit misleading. "-h" is very
often used for a help.

Signed-off-by: Philipp Schrader <philipp@peloton-tech.com>
---
 psplash.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/psplash.c b/psplash.c
index 992e199..166db73 100644
--- a/psplash.c
+++ b/psplash.c
@@ -206,6 +206,7 @@ main (int argc, char** argv)
 {
   char      *tmpdir;
   int        pipe_fd, i = 0, angle = 0, fbdev_id = 0, ret = 0;
+  int        horizontal_offset = 0;
   PSplashFB *fb;
   bool       disable_console_switch = FALSE;
 
@@ -234,9 +235,16 @@ main (int argc, char** argv)
         continue;
       }
 
+    if (!strcmp(argv[i],"-o") || !strcmp(argv[i],"--horizontal-offset"))
+      {
+        if (++i >= argc) goto fail;
+        horizontal_offset = atoi(argv[i]);
+        continue;
+      }
+
     fail:
       fprintf(stderr, 
-              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>][-f|--fbdev <0..9>]\n", 
+              "Usage: %s [-n|--no-console-switch][-a|--angle <0|90|180|270>][-f|--fbdev <0..9>][-o|--horizontal-offset X]\n", 
               argv[0]);
       exit(-1);
   }
@@ -280,7 +288,7 @@ main (int argc, char** argv)
 
   /* Draw the Poky logo  */
   psplash_fb_draw_image (fb, 
-			 (fb->width  - POKY_IMG_WIDTH)/2, 
+			 (fb->width  - POKY_IMG_WIDTH)/2 + horizontal_offset, 
 #if PSPLASH_IMG_FULLSCREEN
 			 (fb->height - POKY_IMG_HEIGHT)/2,
 #else
-- 
2.1.4


