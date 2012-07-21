Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04A12E013F7
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:01:10 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so9933295pbb.35
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2012 12:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=Hx7bGZAYStBKc8lxtWJPfBlEkupE8jSF5xx15En255A=;
	b=m1mhAXylWqlPHskcTA4ZbVUeNncZ9hSVNBb0iqvuGUfdgmNteBZ3Jff5vDYj2KB03p
	W0Y4GyQzI7syLJpvgGIVH4nIxruMyzWHx/7msAsDAOXpES7Q1oOcHjUPAh2qEqf4ITbZ
	537oBDs/4JLVauMuxTb1QQ8iVP5irQXEELpZle5nCmrHw93e3sLYiTA4KOTkH/5DTM6y
	zohjNuQgebrz+CVVQFZd5uSuPCXSMgxdAKaf86jwqKGJLWDq1oP49MN6BIyPUzdHgySY
	gI4lyFT4Zj4fpC2bhHow1NCxRycPVk9gV4LW53B81bskee2N3WsXV4OxN23qbylK+VXc
	S/Kw==
Received: by 10.68.219.135 with SMTP id po7mr23225659pbc.149.1342897270642;
	Sat, 21 Jul 2012 12:01:10 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pf8sm6474611pbc.44.2012.07.21.12.01.08
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 21 Jul 2012 12:01:09 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
Date: Sat, 21 Jul 2012 23:01:05 +0400
Message-Id: <BFE7DC64-D5FD-4E82-9495-2BE230C4FD3F@gmail.com>
References: <CDD20590-77F2-4644-9FD5-E9A58494A86E@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1278)
Subject: Re: poky git pull merge failures
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
X-List-Received-Date: Sat, 21 Jul 2012 19:01:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       I just deleted my entire poky folder, cloned again, and I still =
find a whole bunch of errors, while trying to build core-image-sato.

Someone is just messing up the whole yocto repository, to the point that =
it's starting to become unreliable just like OpenEmbedded was. When I =
first started using Yocto for the first few months, updates were =
reliable, and things would build. But recently, someone's been messing =
things up so badly. I just hope it isn't the same guy that's been =
messing up OpenEmbedded, and decided to join the Yocto bandwagon, and =
continue messing up this build system as well.

ERROR: ParseError at =
/tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/networkmanager/=
networkmanager_0.9.2.0.bb:60: unparsed line: '<<<<<<< HEAD'
ERROR: No recipes available for:
  /tool/yocto/poky/meta-yocto/recipes-core/uclibc/uclibc_git.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.2.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-bsp/formfactor/formfactor_0.0.bbappend=

  /tool/yocto/poky/meta-yocto/recipes-core/netbase/netbase_5.0.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-graphics/mesa/mesa-dri_7.11.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappe=
nd
  /tool/yocto/poky/meta-yocto/recipes-qt/qt4/qt4-x11-free_4.8.1.bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-qt/qt4/qt4-x11-free_4.8.1.bb=
append
  /tool/yocto/poky/meta-yocto/recipes-bsp/alsa-state/alsa-state.bbappend
  /tool/yocto/poky/meta-yocto/recipes-core/psplash/psplash_git.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-gnome/tasks/task-core-sdk-gmae.bbappen=
d
  =
/tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-qt/tasks/task-qte-toolchain-=
target.bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-qt/qt4/qt4-embedded_4.8.1.bb=
append
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-multimedia/gstreamer/gst-ffm=
peg_0.10.13.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-core/tasks/task-core-tools-profile.bba=
ppend
  =
/tool/yocto/poky/meta-yocto/recipes-graphics/xorg-xserver/xserver-xf86-con=
fig_0.1.bbappend
  =
/tool/yocto/meta-xilinx/recipes-core/initscripts/initscripts_1.0.bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-extended/polkit/polkit_0.104=
.bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-graphics/xorg-lib/pixman_0.2=
6.2.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.4.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-gnome/tasks/task-core-standalone-gmae-=
sdk-target.bbappend
  =
/tool/yocto/meta-xilinx/recipes-core/util-linux/util-linux_2.21.2.bbappend=

  =
/tool/yocto/poky/meta-yocto/recipes-graphics/mesa/mesa-dri_git.bbappend
  =
/tool/yocto/poky/meta-yocto/recipes-core/busybox/busybox_1.19.4.bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1.19.4.=
bbappend
  =
/tool/yocto/meta-openembedded/meta-oe/recipes-connectivity/wpa-supplicant/=
wpa-supplicant_1.0.bbappend
ERROR: Command execution failed: Exited with 1

Summary: There were 3 ERROR messages shown, returning a non-zero exit =
code.


Elvis Dowson=

