Return-Path: <philipp@peloton-tech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED7E1E00D9E; Mon, 13 May 2019 17:23:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6161CE00D53
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 17:23:06 -0700 (PDT)
Received: by mail-pl1-f194.google.com with SMTP id p15so7284364pll.4
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 17:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=peloton-tech-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=m8aPX1UbNvezmT4i0uHHWW3I8AfEzziXfPQElr2hSF0=;
	b=u6ktGarU2PNI5+VkSaVWQKSQ2wPgIrf5edMMqMPDh6hXErLJgctnPxiOWs6TtppGwc
	7GJMpa8cairLcjmPhrmQEawK7LSDk1Nuwc+YMd6GuPF0GXhFI58xfKAEqv9JYiz2P6kA
	FBr33X6Zm/UDmXf+KyyLU4eKhxsYgMbpZb4GWdrw0MKbKET0/GXbhKPVIVOjK/ibyaDX
	nvjUJZh2909qyJqjhYP6Fbez70/IVtd2sSzNghNsCyMlpGlWrypPS0FGQBcMLS9oLJa0
	yEZf/G2QuuASIQ/GzK8jHGcUkq7iQQlGWS2auyxViXyycXSRdeypOQ429al0tqSupxc4
	+mKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=m8aPX1UbNvezmT4i0uHHWW3I8AfEzziXfPQElr2hSF0=;
	b=B3XhQnqlfL/5p3LXDjL7cDpbXSo8DpQjLJaVZBh2NdguKE/Q3tlWwlQ5ZNasU4QFhT
	HWbogN00oJfsl44bm/ftRwNIipx0Qg/i/VOUVcVBj0P0kF0FqfuDfk9l/PkODxVkglzJ
	owCg86SIqh7S0leAwexoEfneuFEtukE/Qzt77R6aE/HFe0jRoKyIonNoBrLlQR0RohkL
	OiYcBcAx2nXruCGAlYKbqxsN1K12SbY3F2Mdk7L6NLFsgvlvSeuJvi8U2MqxdLCltTzk
	300mxy+ewwK2P1n72N1U3Rg+1cVAxXRXAOVyjhkqu+MzIo77Mz6c72o40k/tC2nQ4qK9
	eoVg==
X-Gm-Message-State: APjAAAW0pKH8t9sinL4C1fLBIIrnO2mPwKQM3+woAbo+33DNd1c6ZRG+
	Rr+qJHWg/s+LPni1FXQ+A8ONINoQ5P4=
X-Google-Smtp-Source: APXvYqy1xROsczlGBQNSrMzikkPWg4map/2naO5h/CZOXdm9phoP/C91hzGoI3VSubj1bDhwBGKiLg==
X-Received: by 2002:a17:902:a415:: with SMTP id
	p21mr20903674plq.286.1557793385679; 
	Mon, 13 May 2019 17:23:05 -0700 (PDT)
Received: from dev-builder.peloton-tech.net ([12.1.72.210])
	by smtp.gmail.com with ESMTPSA id
	c189sm37885966pfg.46.2019.05.13.17.23.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 13 May 2019 17:23:05 -0700 (PDT)
From: Philipp Schrader <philipp@peloton-tech.com>
To: yocto@yoctoproject.org
Date: Mon, 13 May 2019 17:23:00 -0700
Message-Id: <1557793380-10881-2-git-send-email-philipp@peloton-tech.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1557793380-10881-1-git-send-email-philipp@peloton-tech.com>
References: <1557793380-10881-1-git-send-email-philipp@peloton-tech.com>
X-Mailman-Approved-At: Thu, 16 May 2019 01:10:21 -0700
Cc: Philipp Schrader <philipp@peloton-tech.com>
Subject: [psplash][PATCH 2/2] Add config option to disable fifo
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
X-List-Received-Date: Tue, 14 May 2019 00:23:07 -0000

I have a use case where I want psplash to write its image to the frame
buffer without supporting a progress bar. That means a single write
into the framebuffer. Then it's done.

This patch adds a PSPLASH_ENABLE_CLIENT config option which defaults
to 1 (i.e. true). This keeps the default behaviour the same before and
after this patch. If a user decides to toggle the option then psplash
will not create a fifo in /tmp to listen for messages from
psplash-write. Since psplash won't ever get messages from the client
there is no point in displaying a progress bar either.  The effect is
that psplash will write the image to the framebuffer without a
progress bar and then exit.

Signed-off-by: Philipp Schrader <philipp@peloton-tech.com>
---
 psplash-config.h | 5 +++++
 psplash.c        | 8 ++++++++
 2 files changed, 13 insertions(+)

diff --git a/psplash-config.h b/psplash-config.h
index 82bb76d..ce8645f 100644
--- a/psplash-config.h
+++ b/psplash-config.h
@@ -31,4 +31,9 @@
 /* Position of the image split from top edge, denominator of fraction */
 #define PSPLASH_IMG_SPLIT_DENOMINATOR 6
 
+/* A flag to determine whether psplash listens to psplash-write client.
+ * If disabled, psplash will exit when it's done writing the image into the
+ * framebuffer. The progress bar is also disabled. */
+#define PSPLASH_ENABLE_CLIENT 1
+
 #endif
diff --git a/psplash.c b/psplash.c
index 166db73..64121eb 100644
--- a/psplash.c
+++ b/psplash.c
@@ -256,6 +256,7 @@ main (int argc, char** argv)
 
   chdir(tmpdir);
 
+#if PSPLASH_ENABLE_CLIENT
   if (mkfifo(PSPLASH_FIFO, S_IRUSR | S_IWUSR | S_IRGRP | S_IWGRP))
     {
       if (errno!=EEXIST) 
@@ -272,6 +273,7 @@ main (int argc, char** argv)
       perror("pipe open");
       exit(-2);
     }
+#endif
 
   if (!disable_console_switch)
     psplash_console_switch ();
@@ -301,6 +303,7 @@ main (int argc, char** argv)
 			 POKY_IMG_ROWSTRIDE,
 			 POKY_IMG_RLE_PIXEL_DATA);
 
+#if PSPLASH_ENABLE_CLIENT
   /* Draw progress bar border */
   psplash_fb_draw_image (fb, 
 			 (fb->width  - BAR_IMG_WIDTH)/2, 
@@ -312,18 +315,23 @@ main (int argc, char** argv)
 			 BAR_IMG_RLE_PIXEL_DATA);
 
   psplash_draw_progress (fb, 0);
+#endif
 
 #ifdef PSPLASH_STARTUP_MSG
   psplash_draw_msg (fb, PSPLASH_STARTUP_MSG);
 #endif
 
+#if PSPLASH_ENABLE_CLIENT
   psplash_main (fb, pipe_fd, 0);
 
 
   psplash_fb_destroy (fb);
+#endif
 
  fb_fail:
+#if PSPLASH_ENABLE_CLIENT
   unlink(PSPLASH_FIFO);
+#endif
 
   if (!disable_console_switch)
     psplash_console_reset ();
-- 
2.1.4


