Return-Path: <kgy@teledigit.eu>
Received: from teledigit.eu (teledigit.eu [195.56.148.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA3D6E006DA
	for <yocto@yoctoproject.org>; Sun, 27 May 2012 04:38:05 -0700 (PDT)
X-AuthUser: kgy@teledigit.eu
Received: from linux-8cfk.localnet ([188.36.52.128]:60776)
	by teledigit.eu with [XMail 1.27 ESMTP Server]
	id <S806F> for <yocto@yoctoproject.org> from <kgy@teledigit.eu>;
	Sun, 27 May 2012 14:34:27 +0200
From: =?ISO-8859-1?Q?K=F6vesdi_Gy=F6rgy?= <kgy@teledigit.eu>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Date: Sun, 27 May 2012 13:41:15 +0200
Message-ID: <1886451.M9Ys9y8xhR@linux-8cfk>
Organization: NNG
User-Agent: KMail/4.7.2 (Linux/3.1.9-1.4-desktop; KDE/4.7.2; i686; ; )
MIME-Version: 1.0
Subject: help building my own recipes
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 27 May 2012 11:38:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

I have a Beagleboard-C4, and have successfully built some default images.

I started to collect receipes for my own build, following their dependencies.
At a point, i got the following error message:

ERROR: Failure expanding variable FILESPATH, expression was ${@base_set_filespath([ "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530-4_00_00_00-${MACHINE_KERNEL_PR}a", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530-4_00_00_00", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530-4_00_00_00", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/ti-codecs-omap3530", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine/files", "/home/kgy/work/Yoctoproject/Poky/meta-kgy/yocto/recipes-ti/codec-engine" ], d)} which triggered exception SyntaxError: EOL while scanning string literal (FILESPATH, line 1)
ERROR: Command execution failed: Exited with 1
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.

According to the answers i found in mail archives, a variable setting is missing, but i cannot
determine which. It happened when 'meta-ti' was added.
How can i determine what is missing?

Thanx
Gyorgy Kovesdi


