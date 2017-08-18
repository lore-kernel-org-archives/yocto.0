Return-Path: <Hongxu.Jia@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BA92E00E00; Thu, 17 Aug 2017 23:44:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B606BE00D44
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 23:44:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v7I6ikc9010120
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 17 Aug 2017 23:44:46 -0700
Received: from pek-lpggp1.wrs.com (128.224.153.74) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.361.1;
	Thu, 17 Aug 2017 23:44:45 -0700
From: Hongxu Jia <hongxu.jia@windriver.com>
To: <yocto@yoctoproject.org>, <richard.purdie@linuxfoundation.org>
Date: Fri, 18 Aug 2017 02:44:39 -0400
Message-ID: <db02cefecd79b0b2b92726a5f301c12521bcb154.1503038547.git.hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <cover.1503038547.git.hongxu.jia@windriver.com>
References: <cover.1503038547.git.hongxu.jia@windriver.com>
MIME-Version: 1.0
Subject: [PATCH 3/3] mc: unify curses initialization
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
X-List-Received-Date: Fri, 18 Aug 2017 06:44:54 -0000
Content-Type: text/plain

Since ncurses upgraded to 6.0+20170715, it compile failed
...
| ../../../mc-4.7.5.2/lib/tty/tty-ncurses.c: In function 'tty_init':
| ../../../mc-4.7.5.2/lib/tty/tty-ncurses.c:163:13: error:
dereferencing pointer to incomplete type 'TERMINAL {aka struct term}'
|      cur_term->Nttyb.c_cc[VINTR] = CTRL ('g');   /* ^g */
...

Backport a patch from upstream and rebase to 4.7.5.2 could fix the issue.

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...3697-tty_init-unify-curses-initialization.patch | 51 ++++++++++++++++++++++
 recipes-extended/mc/mc_4.7.5.2.bb                  |  1 +
 2 files changed, 52 insertions(+)
 create mode 100644 recipes-extended/mc/mc/0001-Ticket-3697-tty_init-unify-curses-initialization.patch

diff --git a/recipes-extended/mc/mc/0001-Ticket-3697-tty_init-unify-curses-initialization.patch b/recipes-extended/mc/mc/0001-Ticket-3697-tty_init-unify-curses-initialization.patch
new file mode 100644
index 0000000..3fe836a
--- /dev/null
+++ b/recipes-extended/mc/mc/0001-Ticket-3697-tty_init-unify-curses-initialization.patch
@@ -0,0 +1,51 @@
+From 4d46a108629beb66a293672db7b44f863b6598ba Mon Sep 17 00:00:00 2001
+From: Thomas Dickey <dickey@his.com>
+Date: Fri, 14 Apr 2017 14:06:13 +0300
+Subject: [PATCH] Ticket #3697: (tty_init): unify curses initialization
+
+...for various curses implementations.
+
+Signed-off-by: Andrew Borodin <aborodin@vmail.ru>
+
+Upstream-Status: Backport [https://github.com/MidnightCommander/mc.git]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ lib/tty/tty-ncurses.c | 12 +++++++++---
+ 1 file changed, 9 insertions(+), 3 deletions(-)
+
+diff --git a/lib/tty/tty-ncurses.c b/lib/tty/tty-ncurses.c
+index ab61891..47e537e 100644
+--- a/lib/tty/tty-ncurses.c
++++ b/lib/tty/tty-ncurses.c
+@@ -144,6 +144,8 @@ tty_init (gboolean slow, gboolean ugly_lines)
+     slow_tty = slow;
+     (void) ugly_lines;
+ 
++    struct termios mode;
++
+     initscr ();
+ 
+ #ifdef HAVE_ESCDELAY
+@@ -159,11 +161,15 @@ tty_init (gboolean slow, gboolean ugly_lines)
+     ESCDELAY = 200;
+ #endif /* HAVE_ESCDELAY */
+ 
++    tcgetattr (STDIN_FILENO, &mode);
+     /* use Ctrl-g to generate SIGINT */
+-    cur_term->Nttyb.c_cc[VINTR] = CTRL ('g');   /* ^g */
++    mode.c_cc[VINTR] = CTRL ('g');  /* ^g */
+     /* disable SIGQUIT to allow use Ctrl-\ key */
+-    cur_term->Nttyb.c_cc[VQUIT] = NULL_VALUE;
+-    tcsetattr (cur_term->Filedes, TCSANOW, &cur_term->Nttyb);
++    mode.c_cc[VQUIT] = NULL_VALUE;
++    tcsetattr (STDIN_FILENO, TCSANOW, &mode);
++
++    /* curses remembers the "in-program" modes after this call */
++    def_prog_mode ();
+ 
+     tty_start_interrupt_key ();
+ 
+-- 
+1.8.3.1
+
diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
index b38964d..cf2ad8e 100644
--- a/recipes-extended/mc/mc_4.7.5.2.bb
+++ b/recipes-extended/mc/mc_4.7.5.2.bb
@@ -10,6 +10,7 @@ PR = "r3"
 
 SRC_URI = "http://www.midnight-commander.org/downloads/${BPN}-${PV}.tar.bz2 \
            file://mc-CTRL.patch \
+           file://0001-Ticket-3697-tty_init-unify-curses-initialization.patch \
            "
 
 SRC_URI[md5sum] = "bdae966244496cd4f6d282d80c9cf3c6"
-- 
2.8.1


