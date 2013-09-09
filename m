Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29CD4E005A3
	for <yocto@yoctoproject.org>; Sun,  8 Sep 2013 19:12:23 -0700 (PDT)
Received: by mail-lb0-f175.google.com with SMTP id y6so4505155lbh.34
	for <yocto@yoctoproject.org>; Sun, 08 Sep 2013 19:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=yzX3OOPlk8+7Jf35i89g+VEwsse35M4j6+GCDXUqc+8=;
	b=aJZeJc5LzxrLwqRTKxvpP2aX6dgfliNMifbdSjizgTc7TIMzagAPu4UaA6J/f/K46t
	weQxp82fHbog9rfpRqe/OCh//ZxqwSn/Y2fNYXZv2fkillF9T5v4aCkFB4XpPrwpOYYe
	EZ94kw43cpi/TCgww1jVQfvCLBhh9sS5NjWIj66ToJbFVhLL1iXcACLGIAJBAj9ZcbS/
	mieq375v7bjzpW4p3fMBq3JEUcmt2n0mM44ikJXzU+M9GBvtO+3Aben62totsKBYLJPi
	9kQuYzgg0Vq18Lc2GUx3E9Dy75b5MrnAqQ107ZXhf+EFhv0aEZ6lbMjBXdq3xRrVmB0v
	WxhQ==
MIME-Version: 1.0
X-Received: by 10.112.0.173 with SMTP id 13mr14099575lbf.8.1378692742383; Sun,
	08 Sep 2013 19:12:22 -0700 (PDT)
Received: by 10.112.12.103 with HTTP; Sun, 8 Sep 2013 19:12:22 -0700 (PDT)
In-Reply-To: <CAOQ7t2b-UphcCwiQrbKqJmzjdGo=fyfQ7mh0UgWdeUTyUQEb=g@mail.gmail.com>
References: <CAOQ7t2b-UphcCwiQrbKqJmzjdGo=fyfQ7mh0UgWdeUTyUQEb=g@mail.gmail.com>
Date: Sun, 8 Sep 2013 22:12:22 -0400
Message-ID: <CADkTA4N21uh1UGMU1ZeUuhkE-Z3wU-YTynyhb2eYR3PqiSgZHA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Carlo Caione <carlo.caione@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: linux-yocto-custom error on do_validate_branches()
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
X-List-Received-Date: Mon, 09 Sep 2013 02:12:26 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sun, Sep 8, 2013 at 3:19 PM, Carlo Caione <carlo.caione@gmail.com> wrote=
:
> Hi,
> to build the v3.8.13 kernel I'm using the linux-yocto-custom recipe as
> following:
>
> ---------------------------------------------
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SRC_URI =3D "git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git;protocol=3Dgit;nocheckout=3D1"

Linus's repo doesn't have 3.8.13:

> git show dbf932a9b316d5b29b3e220e5a30e7a165ad2992
fatal: bad object dbf932a9b316d5b29b3e220e5a30e7a165ad2992

You need Greg's -stable tree:

git://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git

> git show dbf932a9b316d5b29b3e220e5a30e7a165ad2992
commit dbf932a9b316d5b29b3e220e5a30e7a165ad2992
Author: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date:   Sat May 11 13:57:46 2013 -0700

    Linux 3.8.13

diff --git a/Makefile b/Makefile
index 902974f..183eff3 100644
--- a/Makefile
+++ b/Makefile
@@ -1,6 +1,6 @@
 VERSION =3D 3
 PATCHLEVEL =3D 8
-SUBLEVEL =3D 12
+SUBLEVEL =3D 13
 EXTRAVERSION =3D
 NAME =3D Displaced Humerus Anterior



> SRC_URI +=3D "file://defconfig"
> SRC_URI +=3D "file://0001-kernel-rskrza1_rzlspv0.patch"
>
> LINUX_VERSION ?=3D "3.8.13"
> LINUX_VERSION_EXTENSION ?=3D "-custom"
>
> SRCREV=3D"dbf932a9b316d5b29b3e220e5a30e7a165ad2992"
>
> PR =3D "r1"
> PV =3D "${LINUX_VERSION}+git${SRCPV}"
>
> COMPATIBLE_MACHINE =3D "rsr972"
> ------------------------------------------------
>
> the problem is that bitbake returns an error:
>
> ------------------------------------------------
> ERROR: Function failed: do_validate_branches (see
> /home/carlo/work/RSR/yocto/build/tmp/work/rsr972-poky-linux-gnueabi/linux=
-yocto-custom/3.8.13+gitAUTOINC+dbf932a9b316d5b29b3e220e5a30e7a165ad2992-r1=
/temp/log.do_validate_branches.7939
> for further information)
> ERROR: Logfile of failure stored in:
> /home/carlo/work/RSR/yocto/build/tmp/work/rsr972-poky-linux-gnueabi/linux=
-yocto-custom/3.8.13+gitAUTOINC+dbf932a9b316d5b29b3e220e5a30e7a165ad2992-r1=
/temp/log.do_validate_branches.7939
> Log data follows:
> | DEBUG: Executing shell function do_validate_branches
> | error: no such commit dbf932a9b316d5b29b3e220e5a30e7a165ad2992
> | usage: git branch [options] [-r | -a] [--merged | --no-merged]
> |    or: git branch [options] [-l] [-f] <branchname> [<start-point>]
> |    or: git branch [options] [-r] (-d | -D) <branchname>...
> |    or: git branch [options] (-m | -M) [<oldbranch>] <newbranch>
> |
> | Generic options
> |     -v, --verbose         show hash and subject, give twice for
> upstream branch
> |     -t, --track           set up tracking mode (see git-pull(1))
> |     --set-upstream        change upstream info
> |     --color[=3D<when>]      use colored output
> |     -r, --remotes         act on remote-tracking branches
> |     --contains <commit>   print only branches that contain the commit
> |     --abbrev[=3D<n>]        use <n> digits to display SHA-1s
> |
> | Specific git-branch actions:
> |     -a, --all             list both remote-tracking and local branches
> |     -d, --delete          delete fully merged branch
> |     -D                    delete branch (even if not merged)
> |     -m, --move            move/rename a branch and its reflog
> |     -M                    move/rename a branch, even if target exists
> |     --list                list branch names
> |     -l, --create-reflog   create the branch's reflog
> |     --edit-description    edit the description for the branch
> |     -f, --force           force creation (when already exists)
> |     --no-merged <commit>  print only not merged branches
> |     --merged <commit>     print only merged branches
> |
> | ERROR: SRCREV was set to "dbf932a9b316d5b29b3e220e5a30e7a165ad2992",
> but no branches
> |        contain this commit
> | ERROR: Function failed: do_validate_branches (see
> /home/carlo/work/RSR/yocto/build/tmp/work/rsr972-poky-linux-gnueabi/linux=
-yocto-custom/3.8.13+gitAUTOINC+dbf932a9b316d5b29b3e220e5a30e7a165ad2992-r1=
/temp/log.do_validate_branches.7939
> for further information)
> ERROR: Task 0 (/home/carlo/work/RSR/yocto/meta-renesas/meta-rsr972/recipe=
s-kernel/linux/linux-yocto-custom.bb,
> do_validate_branches) failed with exit code '1'
> -------------------------------
>
> Actally the SHA is valid since using the Linus repo I have
>
> ~/work/linux-stable(branch:master) =BB git branch --contains
> dbf932a9b316d5b29b3e220e5a30e7a165ad2992
>   linux-3.8.y
>
> what's the problem with the recipe?

Your upstream. The one in ~/work/linux-stable isn't Linus's tree :){

Bruce

>
> Thank you,
>
> --
> Carlo Caione
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

