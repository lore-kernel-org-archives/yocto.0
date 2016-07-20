Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26D9E00CFC; Wed, 20 Jul 2016 13:19:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39DFEE00C15
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 13:19:35 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id d204so5826698oig.3
	for <yocto@yoctoproject.org>; Wed, 20 Jul 2016 13:19:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=zCqiMk3U7PdQKJrpRP6buukiXC+nuUY65cDGlQ+5KxI=;
	b=VyPJtQA5+mkkgl/LB+dkiJmk5V7ePawx/Dlcg+gFPdOoYm5NGz1j6dwSKvP/9q2F3g
	btdLtIvA+b5Sbb+7Umw5h1uEAsTpDvYtK5fM7pPSHOx57rX5kKCbpE1Mbds8Dp2mof4V
	YMz9TcNb8SRMn+RCIs4EUKmkuV1u+FXfBwf6zFVdOvrXR5AdGCMTEztQiErouOE3AE0M
	4ey28mWj6ijb8b+Ndpm1aeHs3C6xdnFpi7EfbH9LfYFP3qI25hfKpIaGf5CGWuFSjjrI
	VEJW+vEXjY/Vjt9cxkVgK7yBtK02GoxZ5bPVUmJBZ2qOuRZ9gSDgS7BvW9nQp7EopCWk
	FWyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=zCqiMk3U7PdQKJrpRP6buukiXC+nuUY65cDGlQ+5KxI=;
	b=hwqQG+6RfiZxAOgsHso/cccI+2UAfb76lZcj1ug0XiiPKGHmbBVMawMqbKe76y4apz
	FOevFURtAIBIFeVVpJGW+d8WZoVdP9yoxMP4bz8R7T4rPhvuV6LkNxN/ba8rhagha7t2
	G9vE/n2H6NmHMHZOyoEAVarsp9nmM067/8jlZGAx3IwqGbjebpB366kKZ4z4nqc9BPc5
	4EOIWY/LkOGgo43uYL/Ouvgdc3SGzOqKkJagkQgfcDJUaswiZtO8vk618gsIhbxKrtQB
	6hyFxr/BZCYMPN1a73PPy521xtiwiBg0OtS7L/YczVBWoshAcOds6AnWlN4wbl+bDOTS
	j/jA==
X-Gm-Message-State: ALyK8tKpCwWMZeQNDjnjKaxWeYhumQnjMx8XUvHEZX/yOocpcUNBVxYrEvmRLxDmM6KrMAS4egSGFJGdNV/GDA==
X-Received: by 10.157.1.242 with SMTP id e105mr25723247ote.89.1469045975263;
	Wed, 20 Jul 2016 13:19:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.24.71 with HTTP; Wed, 20 Jul 2016 13:19:34 -0700 (PDT)
From: Jacob Kroon <jacob.kroon@gmail.com>
Date: Wed, 20 Jul 2016 22:19:34 +0200
Message-ID: <CAPbeDCmbBpkOe9PY8UJMYUg2e9ddwSEiJufXFwyY_MkzaKJm6w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Cc: jason.wessel@windriver.com
Subject: kernel menuconfig/ncurses patch in linux-yocto
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
X-List-Received-Date: Wed, 20 Jul 2016 20:19:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi,
I'm trying to get the SDK to be able to run the kernel's "make
menuconfig" target
using nativesdk-ncurses from the SDK. Looking at

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/commit/scripts/kconfig/lxdialog/check-lxdialog.sh?h=standard/beaglebone&id=badf6fedf455958fe0ff3c060c8e3965ef6d80dc

I figured out I could pass CROSS_CURSES_[INC,LIB], but the second chunk
in that patch looks weird:

    elif pkg-config --cflags ncurses 2>/dev/null; then
        echo '-DCURSES_LOC="<ncurses.h>"'
+   if [ x"$CROSS_CURSES_INC" != x ]; then
+   echo "$CROSS_CURSES_INC"
+   exit
+   fi
    elif [ -f /usr/include/ncursesw/curses.h ]; then
        echo '-I/usr/include/ncursesw -DCURSES_LOC="<curses.h>"'

(I had to do manual indentation with spaces in gmail)
Is the indentation or the logic incorrect ?

Regards Jacob

