Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9B30E00D39; Fri, 18 Aug 2017 10:16:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BC90E008D2
	for <yocto@yoctoproject.org>; Fri, 18 Aug 2017 10:16:20 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v7IHGIBv025994
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 18 Aug 2017 10:16:19 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.361.1;
	Fri, 18 Aug 2017 10:16:18 -0700
To: Hongxu Jia <hongxu.jia@windriver.com>, <yocto@yoctoproject.org>,
	<richard.purdie@linuxfoundation.org>
References: <cover.1503048463.git.hongxu.jia@windriver.com>
	<f9474d22fd196d783bb4da22ba3d9f0a17e10e86.1503048463.git.hongxu.jia@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <25945396-7aa0-a7df-d103-25c80e6c51b0@windriver.com>
Date: Fri, 18 Aug 2017 12:16:17 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <f9474d22fd196d783bb4da22ba3d9f0a17e10e86.1503048463.git.hongxu.jia@windriver.com>
Subject: Re: [PATCH 3/3] mc: disable Ctrl-g key and Ctrl-\ key
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
X-List-Received-Date: Fri, 18 Aug 2017 17:16:21 -0000
Content-Type: text/plain; charset="utf-8"
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I'm fine with this.  But as a non-mc user.  I'm not entirely sure what the
missing ctl-g and ctrl-\ will affect.  But since this is only for the 'gplv2'
version which isn't as used as the main version, that should be fine.

Acked-by: Mark Hatle <mark.hatle@windriver.com>

On 8/18/17 4:29 AM, Hongxu Jia wrote:
> Since ncurses upgraded to 6.0+20170715, it compile failed
> ...
> | ../../../mc-4.7.5.2/lib/tty/tty-ncurses.c: In function 'tty_init':
> | ../../../mc-4.7.5.2/lib/tty/tty-ncurses.c:163:13: error:
> dereferencing pointer to incomplete type 'TERMINAL {aka struct term}'
> |      cur_term->Nttyb.c_cc[VINTR] = CTRL ('g');   /* ^g */
> ...
> 
> We could not backport fix from the latest master which introduce
> gplv3 contamination, but we could revert to disable Ctrl-g key
> and Ctrl-\ key
> 
> Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> ---
>  .../mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch  | 86 ++++++++++++++++++++++
>  recipes-extended/mc/mc_4.7.5.2.bb                  |  1 +
>  2 files changed, 87 insertions(+)
>  create mode 100644 recipes-extended/mc/mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch
> 
> diff --git a/recipes-extended/mc/mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch b/recipes-extended/mc/mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch
> new file mode 100644
> index 0000000..eddc12f
> --- /dev/null
> +++ b/recipes-extended/mc/mc/0001-disable-Ctrl-g-key-and-Ctrl-key.patch
> @@ -0,0 +1,86 @@
> +From 91a1068015a09232bacac9b86fc13b318860f44e Mon Sep 17 00:00:00 2001
> +From: Hongxu Jia <hongxu.jia@windriver.com>
> +Date: Fri, 18 Aug 2017 17:05:42 +0800
> +Subject: [PATCH] disable Ctrl-g key and Ctrl-\ key
> +
> +Since ncurses upgraded to 6.0+20170715, it compile failed
> +...
> +| ../../../mc-4.7.5.2/lib/tty/tty-ncurses.c: In function 'tty_init':
> +| ../../../mc-4.7.5.2/lib/tty/tty-ncurses.c:163:13: error:
> +dereferencing pointer to incomplete type 'TERMINAL {aka struct term}'
> +|      cur_term->Nttyb.c_cc[VINTR] = CTRL ('g');   /* ^g */
> +...
> +
> +We could not backport fix from the latest master which introduce
> +gplv3 contamination, but we could revert the following commits.
> +...
> +commit a20ebb38184e177f2ead8466f3ef1f131352aba7
> +Author: Andrew Borodin <aborodin@vmail.ru>
> +Date:   Wed Dec 23 16:18:25 2009 +0000
> +
> +    Ticket #1876: use Ctrl-g key to generate SIGINT signal.
> +
> +commit 56bf77ae57ba493126a2d1a1e0dd56eb947ccca1
> +Author: Andrew Borodin <aborodin@vmail.ru>
> +Date:   Sat Feb 6 13:07:35 2010 +0300
> +
> +    Ticket #1926: Ctrl-\ key behaviour in NCurses-based MC.
> +...
> +
> +Upstream-Status: Inappropriate [gplv2 specific]
> +https://github.com/MidnightCommander/mc.git
> +
> +Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
> +---
> + lib/tty/tty-ncurses.c  | 6 ------
> + lib/tty/tty-slang.c    | 4 ++--
> + src/keybind-defaults.c | 1 -
> + 3 files changed, 2 insertions(+), 9 deletions(-)
> +
> +diff --git a/lib/tty/tty-ncurses.c b/lib/tty/tty-ncurses.c
> +index ab61891..6c614ac 100644
> +--- a/lib/tty/tty-ncurses.c
> ++++ b/lib/tty/tty-ncurses.c
> +@@ -159,12 +159,6 @@ tty_init (gboolean slow, gboolean ugly_lines)
> +     ESCDELAY = 200;
> + #endif /* HAVE_ESCDELAY */
> + 
> +-    /* use Ctrl-g to generate SIGINT */
> +-    cur_term->Nttyb.c_cc[VINTR] = CTRL ('g');   /* ^g */
> +-    /* disable SIGQUIT to allow use Ctrl-\ key */
> +-    cur_term->Nttyb.c_cc[VQUIT] = NULL_VALUE;
> +-    tcsetattr (cur_term->Filedes, TCSANOW, &cur_term->Nttyb);
> +-
> +     tty_start_interrupt_key ();
> + 
> +     do_enter_ca_mode ();
> +diff --git a/lib/tty/tty-slang.c b/lib/tty/tty-slang.c
> +index f42fd4a..0e92c52 100644
> +--- a/lib/tty/tty-slang.c
> ++++ b/lib/tty/tty-slang.c
> +@@ -268,8 +268,8 @@ tty_init (gboolean slow, gboolean ugly_lines)
> + 
> +     tcgetattr (fileno (stdin), &boot_mode);
> +     /* 255 = ignore abort char; XCTRL('g') for abort char = ^g */
> +-    SLang_init_tty (XCTRL ('g'), 1, 0);
> +-
> ++    /* SLang_init_tty (XCTRL ('c'), 1, 0); */
> ++    SLang_init_tty (255, 1, 0);
> +     if (ugly_lines)
> +         SLtt_Has_Alt_Charset = 0;
> + 
> +diff --git a/src/keybind-defaults.c b/src/keybind-defaults.c
> +index 28e3613..075e6b6 100644
> +--- a/src/keybind-defaults.c
> ++++ b/src/keybind-defaults.c
> +@@ -368,7 +368,6 @@ const global_keymap_t default_dialog_keymap[] = {
> +     {'\n', CK_DialogOK, "Enter"},
> +     {KEY_ENTER, CK_DialogOK, "Enter"},
> +     {ESC_CHAR, CK_DialogCancel, "Esc"},
> +-    {XCTRL ('g'), CK_DialogCancel, "C-g"},
> +     {KEY_F (10), CK_DialogCancel, "F10"},
> +     {KEY_LEFT, CK_DialogPrevItem, "Left"},
> +     {KEY_UP, CK_DialogPrevItem, "Up"},
> +-- 
> +1.8.3.1
> +
> diff --git a/recipes-extended/mc/mc_4.7.5.2.bb b/recipes-extended/mc/mc_4.7.5.2.bb
> index b38964d..ca84966 100644
> --- a/recipes-extended/mc/mc_4.7.5.2.bb
> +++ b/recipes-extended/mc/mc_4.7.5.2.bb
> @@ -10,6 +10,7 @@ PR = "r3"
>  
>  SRC_URI = "http://www.midnight-commander.org/downloads/${BPN}-${PV}.tar.bz2 \
>             file://mc-CTRL.patch \
> +           file://0001-disable-Ctrl-g-key-and-Ctrl-key.patch \
>             "
>  
>  SRC_URI[md5sum] = "bdae966244496cd4f6d282d80c9cf3c6"
> 


