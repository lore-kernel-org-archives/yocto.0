Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [])
 by mx.groups.io with SMTP id smtpd.web09.17.1582148693872561251
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wmz44/zy;
 spf=softfail (domain: gmail.com, ip: <nil>, mailfrom: wpdster@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1610EE0174E; Tue, 18 Feb 2020 08:27:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.222.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f173.google.com (mail-qk1-f173.google.com [209.85.222.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73EE5E0174B
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 08:27:23 -0800 (PST)
Received: by mail-qk1-f173.google.com with SMTP id z19so20044933qkj.5
        for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 08:27:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wi4P78fbalQy9vERuOTRi6FCw+eKZ5B1SONKoc7Ziq4=;
        b=Wmz44/zy5tUJDwIivtUe8cmZRN3sc6xS/+BWNYeqCSQfUX/N7vJ0rwwUU9tM/0iHIy
         y4R9dSXqs9inQ2spVFRcbHScew+tx0LmTCby4p1v+jBozrzoZf1FCNhezQCduw9ndDqt
         SvseOPdF2PBrXboNuwRV9GOe+nsvK5Bw9sqbrsSf1r2LFR0eX0TIJ1ihUGCjpGz7Suj0
         JkNeh5TipxOjmtB8SOjLIjXO9jXiprsDEOlZkmS71aab0i1WTD7GomSCD3clNgaNZ1s1
         Hau5QalrpndZlCiwVh5ePPYkSJczeWF1FJ72FG/wYX54j8iNcU2VMnP6o1TnxtSAlTln
         Psrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wi4P78fbalQy9vERuOTRi6FCw+eKZ5B1SONKoc7Ziq4=;
        b=Dar3dxrWZfX703OYbNp13uPXh/6Fx4nCFkyoSpy9pvrLJ7mRFNM8EV+MHvuY100yZW
         JGiIhqPQXLSxR+JQNpQa567mx4TyJ4Y9UP3MKVQKooLKugF7lzIXq2HC/EybOou7hLtl
         AjGIZv19RC/s6HwQN7GZZmPdIyfLXKJNmTJRliizIhfBRvFLSOf+u+NDfK59mpDcZvt9
         4Shb6xGJYtclW1VqqOpqqJszZl9nWZgv/vOl1lPj1ICUcAYDG9OZt3dWIn3Y7VVqOf+j
         J1Nfom78WiFVmZppNehft8Mnleul2JlyH1hbAowaI08sFT7k2cXJbeJJ6j1+Y59klkGW
         9yBA==
X-Gm-Message-State: APjAAAVsZ56Eu8p9ufVJUWRHp3vsTFqXOYsHunVRxm5LrgLzQjYP2Ogk
	VAbfXfwGnWCVJKc6XQjZ6s7ZykQkDr1o9JrYspcMwTmU
X-Google-Smtp-Source: APXvYqzuc9k+x44kOIjy4pEtGjMyriOg15RDsBAAtZKx2on8/7pv129jpigJ5PyyYIlKCiDR2ZzXwTJeZ3fHFvm98es=
X-Received: by 2002:a37:9c4d:: with SMTP id f74mr218253qke.238.1582043242455;
 Tue, 18 Feb 2020 08:27:22 -0800 (PST)
MIME-Version: 1.0
From: "Patrick Doyle" <wpdster@gmail.com>
Date: Tue, 18 Feb 2020 11:26:55 -0500
Message-ID: <CAF_dkJAyS20skTujCh_SCQXq+muJjCmn5=mnUG+A8qWitzNzqQ@mail.gmail.com>
Subject: Debugging gdb built by Yocto
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Does anybody have any tips or tricks for how I might debug the
(cross-canadian) gdb built by Yocto's SDK?

I need to add some printf's to the gdb code to help track down why
something isn't working, but none of my traditional
get-ready-to-debug-this-code techniques are working.

How can I run the gdb that I just built?  Note that I am presuming that I can

$ bitbake gdb-cross-canadian-mipsel -ccompile -f

to rebuild gdb after I add a printf or two to it... but I can't figure
out how to run gdb without going through the sdk installation step.

$ bitbake gdb-cross-canadian-mipsel -cdevshell
# ../build-mipsel-poky-linux/gdb/gdb
bash: ../build-mipsel-poky-linux/gdb/gdb: No such file or directory
# file ../build-mipsel-poky-linux/gdb/gdb
../build-mipsel-poky-linux/gdb/gdb: ELF 64-bit LSB shared object,
x86-64, version 1 (GNU/Linux), dynamically linked, interpreter
/opt/iro, BuildID[sha1]=7f985bbe4cb6c97558b159860b2498f6389b254e, for
GNU/Linux 3.2.0, not stripped
# ldd ../build-mipsel-poky-linux/gdb/gdb
../build-mipsel-poky-linux/gdb/gdb: /lib/x86_64-linux-gnu/libm.so.6:
version `GLIBC_2.29' not found (required by
../build-mipsel-poky-linux/gdb/gdb)
    linux-vdso.so.1 =>  (0x00007fff8a0c2000)
 ...

# LD_LIBRARY_PATH=../recipe-sysroot-native/usr/libexec:../recipe-sysroot-native/usr/lib
../build-mipsel-poky-linux/gdb/gdb
bash: ../build-mipsel-poky-linux/gdb/gdb: No such file or directory

None of the techniques from my bag-of-tricks works.

I guess I could go grab the source myself, manually apply the patches
myself, build it, and see if that works.

Or I could sit down real hard and think about why I am trying to debug
the canadian-cross built tool on my development host... perhaps I
should try debugging the native (cross)-gdb on my native host.  I'll
go try that now, but, in the mean time, I thought it was about time
for me to ask others for some clues.

Any clues or pointers?

--wpd
