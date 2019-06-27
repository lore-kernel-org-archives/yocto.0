Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FA52E00CDF; Thu, 27 Jun 2019 08:26:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.65 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com
	[209.85.217.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23F4FE00C25
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 08:26:33 -0700 (PDT)
Received: by mail-vs1-f65.google.com with SMTP id m8so1918153vsj.0
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2019 08:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=o6Cd9G2h9TAZIkqWEDm6r+nwE85znnbLMNY4vmK8Hj4=;
	b=ZTsnEjX6I0+QcdmIcDG5jgYwBsNYTKgDTwF2YBXZYMT+CJosHxboqCX/tnUTq5Ytho
	XlG3v8+8eAViT9A/1pc5jYZ6TZlhbHXs23j074EHbml2xN5sKVWTqC+nIEwu79fYWuMc
	vm8YTPkEr//aG1aZHaD+TtL3+Pg1l9ICdSUrlA0KYjyHctzIuaGYhzm9Jdd1fxe73gI1
	PWiC+SB6Me97Bym9rNom7pZ+EZlwh64dG9RnTyH2rxjybunzzKBR34K4Pll4ALS3x/ep
	U3jER3A+uAvNE4ZTxTmS0no/SjW8QeYPFi05rkoRvjGCylQou0Kdeq5Pou3gyiezYqKf
	Tqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=o6Cd9G2h9TAZIkqWEDm6r+nwE85znnbLMNY4vmK8Hj4=;
	b=dPoWbovPElX2NNY07L6FZHo9Ee8u0E9UrR+vNSvU+fzwHV4dv6nwx8v84A6SRk01cD
	hz2d8PdE2Nm2qDh9vsyi7mDcDhPeJsfSCyCNkxQEDavMs8lZPX7n7ab3BU9dnif9RA2e
	GZ1jNhaUN3+Pb5jSkYkARjZrUI06/daDHtCds3D7svFaiWS+wwlAgZQgm8SZqXd8r7g6
	5gmiCV+PejKBA4PNBykirtPNRVGXz6772JY9TiuPlC/ChqancUPYg7Ny2q/MTlTVsYp7
	fZF1Ii86ElnLVcUob1Kv3XOn5g+pMHU4HN6KBySJaPoki5zRVZC1S5UP7KrEs/dxDqy8
	/AYQ==
X-Gm-Message-State: APjAAAXfTKO5BTXeigiOFqYdUND08bybKMhhxe7zhM2EGfN7TJ2A/Dph
	5UAjB6PonQMEDduYXMfOo8vbzVUTsJw8ZRDOY9I4SQ==
X-Google-Smtp-Source: APXvYqy5gfxaKGUOgDHyVJhhPKA9lVWCgwJNfgMv4qDLbZwckXk+c2yCJpClaYhjddJzeLIsbh2vxO2lvYLOBxVXX54=
X-Received: by 2002:a67:fe5a:: with SMTP id m26mr3271260vsr.230.1561649193358; 
	Thu, 27 Jun 2019 08:26:33 -0700 (PDT)
MIME-Version: 1.0
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-5-Randy.MacLeod@windriver.com>
	<98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
	<CA+_AqisMBmPaNy7xyt1+9c73RnMcChugCcxz6Bb4cBOCHG=-kQ@mail.gmail.com>
	<ffe4bdfd-5a89-1c4f-87cf-dbd27b3025e5@windriver.com>
In-Reply-To: <ffe4bdfd-5a89-1c4f-87cf-dbd27b3025e5@windriver.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Thu, 27 Jun 2019 10:27:05 -0500
Message-ID: <CA+_AqivqnMwATHRKUo5ETpG8=udieiX9C2Ef3U9Xjt85ra8ROQ@mail.gmail.com>
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner][PATCH v2 4/4] utils: ensure child can be session leader
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
X-List-Received-Date: Thu, 27 Jun 2019 15:26:36 -0000
Content-Type: multipart/alternative; boundary="0000000000006f3462058c4fc9bc"

--0000000000006f3462058c4fc9bc
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Jun 2019 at 10:56, Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 6/25/19 9:51 PM, Anibal Limon wrote:
> >
> >
> > On Wed, 19 Jun 2019 at 12:50, Randy MacLeod <randy.macleod@windriver.com
> > <mailto:randy.macleod@windriver.com>> wrote:
> >
> >     On 6/14/19 10:48 AM, Randy MacLeod wrote:
> >      > When running the run-execscript bash ptest as a user rather than
> >     root, a warning:
> >      >    bash: cannot set terminal process group (16036): Inappropriate
> >     ioctl for device
> >      >    bash: no job control in this shell
> >      > contaminates the bash log files causing the test to fail. This
> >     happens only
> >      > when run under ptest-runner and not when interactively testing!
> >      >
> >      > The changes made to fix this include:
> >      > 1. Get the process group id (pgid) before forking,
> >      > 2. Set the pgid in both the parent and child to avoid a race,
> >      > 3. Find, open and set permission on the child tty, and
> >      > 4. Allow the child to attach to controlling tty.
> >      >
> >      > Also add '-lutil' to Makefile. This lib is from libc and provides
> >     openpty.
> >
> >
> >     Hmmm, I was making the code compile cleanly under clang using
> >         -Weverything
> >     when I noticed:
> >
> >     1. the 'make check' tests. They still work fine.
> >     2. The './ptest-runner -d tests/data -t 1' tests
> >          which now generate loads of error like:
> >           ERROR: Unable to detach from controlling tty, Inappropriate
> ioctl
> >     for device
> >
> >     so while this change fixed the bash-ptest, the ptest-runner self-test
> >     it did something wrong.... Ah, I'm calling:
> >          ioctl(0, TIOCNOTTY) == -1)
> >     repeatedly in the parent so that's what's generating the extra logs.
> >     Fixed locally and I'll send a patch but it's not urgent. Phew! :)
> >
> >     Anibal,
> >
> >     If you could reply to explain your plans for Richard's patches
> >     that would help me figure out when to send the clang warning
> clean-ups
> >     commits and what commit to base my work on.
> >
> >
> > Hi,
> >
> > I plan to take the Richard patches, He added in the recipe to have real
> > testing and looks like
> > there aren't problems related to, Richard can you confirm it?,
> >
> > Regarding the openpty include, I see some linkage problem when running
> > make check, proposed fix:
>
> Yes, I had noticed that and fixed it as well.
>
> I'll send my latest patch series once you have merged
> Richard's changes into master. Hopefully that will be today... :)
>

I just merged the changes,

Thanks,
Anibal


>
> I decided to compile with:
>    clang -Weverything
> to see if there were any problems and there
> were quite a few things to fix. Now, for the most part,
> neither clang nor gcc complain about the code.
>
> ../Randy
>
> >
> > ...
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -22,19 +22,20 @@ TEST_SOURCES=tests/main.c tests/ptest_list.c
> > tests/utils.c $(BASE_SOURCES)
> >   TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
> >   TEST_EXECUTABLE=ptest-runner-test
> >   TEST_LDFLAGS=-lm -lrt -lpthread
> > -TEST_LIBSTATIC=-lcheck -lsubunit
> > +TEST_LIBSTATIC=-lutil
> > +TEST_LIBSTATIC_TEST=$(TEST_LIBSTATIC) -lcheck -lsubunit
> >
> >   TEST_DATA=$(shell echo `pwd`/tests/data)
> >
> >   all: $(SOURCES) $(EXECUTABLE)
> >
> >   $(EXECUTABLE): $(OBJECTS)
> > -       $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
> > +       $(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(TEST_LIBSTATIC)
> >
> >   tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
> >
> >   $(TEST_EXECUTABLE): $(TEST_OBJECTS)
> > -       $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@
> > $(TEST_LIBSTATIC)
> > +       $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@
> > $(TEST_LIBSTATIC_TEST)
> >
> >   check: $(TEST_EXECUTABLE)
> >          ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
> > ...
> >
> > Best regards,
> > Anibal
> >
> >
> >
> >     ../Randy
> >
> >      >
> >      > Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com
> >     <mailto:sakib.sajal@windriver.com>>
> >      > Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com
> >     <mailto:Randy.MacLeod@windriver.com>>
> >      > ---
> >      >   Makefile |   2 +-
> >      >   utils.c  | 102
> >     +++++++++++++++++++++++++++++++++++++++++++++++++------
> >      >   2 files changed, 92 insertions(+), 12 deletions(-)
> >      >
> >      > diff --git a/Makefile b/Makefile
> >      > index 1bde7be..439eb79 100644
> >      > --- a/Makefile
> >      > +++ b/Makefile
> >      > @@ -29,7 +29,7 @@ TEST_DATA=$(shell echo `pwd`/tests/data)
> >      >   all: $(SOURCES) $(EXECUTABLE)
> >      >
> >      >   $(EXECUTABLE): $(OBJECTS)
> >      > -     $(CC) $(LDFLAGS) $(OBJECTS) -o $@
> >      > +     $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
> >      >
> >      >   tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
> >      >
> >      > diff --git a/utils.c b/utils.c
> >      > index ad737c2..f11ce39 100644
> >      > --- a/utils.c
> >      > +++ b/utils.c
> >      > @@ -1,5 +1,6 @@
> >      >   /**
> >      >    * Copyright (c) 2016 Intel Corporation
> >      > + * Copyright (C) 2019 Wind River Systems, Inc.
> >      >    *
> >      >    * This program is free software; you can redistribute it and/or
> >      >    * modify it under the terms of the GNU General Public License
> >      > @@ -22,23 +23,27 @@
> >      >    */
> >      >
> >      >   #define _GNU_SOURCE
> >      > +
> >      >   #include <stdio.h>
> >      >
> >      > +#include <dirent.h>
> >      > +#include <errno.h>
> >      > +#include <fcntl.h>
> >      > +#include <grp.h>
> >      >   #include <libgen.h>
> >      > -#include <signal.h>
> >      >   #include <poll.h>
> >      > -#include <fcntl.h>
> >      > +#include <pty.h>
> >      > +#include <signal.h>
> >      > +#include <stdlib.h>
> >      > +#include <string.h>
> >      >   #include <time.h>
> >      > -#include <dirent.h>
> >      > +#include <unistd.h>
> >      > +
> >      > +#include <sys/ioctl.h>
> >      >   #include <sys/resource.h>
> >      > +#include <sys/stat.h>
> >      >   #include <sys/types.h>
> >      >   #include <sys/wait.h>
> >      > -#include <sys/stat.h>
> >      > -#include <unistd.h>
> >      > -#include <string.h>
> >      > -#include <stdlib.h>
> >      > -
> >      > -#include <errno.h>
> >      >
> >      >   #include "ptest_list.h"
> >      >   #include "utils.h"
> >      > @@ -346,6 +351,53 @@ wait_child(const char *ptest_dir, const char
> >     *run_ptest, pid_t pid,
> >      >       return status;
> >      >   }
> >      >
> >      > +/* Returns an integer file descriptor.
> >      > + * If it returns < 0, an error has occurred.
> >      > + * Otherwise, it has returned the slave pty file descriptor.
> >      > + * fp should be writable, likely stdout/err.
> >      > + */
> >      > +static int
> >      > +setup_slave_pty(FILE *fp) {
> >      > +     int pty_master = -1;
> >      > +     int pty_slave = -1;
> >      > +     char pty_name[256];
> >      > +     struct group *gptr;
> >      > +     gid_t gid;
> >      > +     int slave = -1;
> >      > +
> >      > +     if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL)
> >     < 0) {
> >      > +             fprintf(fp, "ERROR: openpty() failed with: %s.\n",
> >     strerror(errno));
> >      > +             return -1;
> >      > +     }
> >      > +
> >      > +     if ((gptr = getgrnam(pty_name)) != 0) {
> >      > +             gid = gptr->gr_gid;
> >      > +     } else {
> >      > +             /* If the tty group does not exist, don't change the
> >      > +              * group on the slave pty, only the owner
> >      > +              */
> >      > +             gid = -1;
> >      > +     }
> >      > +
> >      > +     /* chown/chmod the corresponding pty, if possible.
> >      > +      * This will only work if the process has root permissions.
> >      > +      */
> >      > +     if (chown(pty_name, getuid(), gid) != 0) {
> >      > +             fprintf(fp, "ERROR; chown() failed with: %s.\n",
> >     strerror(errno));
> >      > +     }
> >      > +
> >      > +     /* Makes the slave read/writeable for the user. */
> >      > +     if (chmod(pty_name, S_IRUSR|S_IWUSR) != 0) {
> >      > +             fprintf(fp, "ERROR: chmod() failed with: %s.\n",
> >     strerror(errno));
> >      > +     }
> >      > +
> >      > +     if ((slave = open(pty_name, O_RDWR)) == -1) {
> >      > +             fprintf(fp, "ERROR: open() failed with: %s.\n",
> >     strerror(errno));
> >      > +     }
> >      > +     return (slave);
> >      > +}
> >      > +
> >      > +
> >      >   int
> >      >   run_ptests(struct ptest_list *head, const struct ptest_options
> >     opts,
> >      >               const char *progname, FILE *fp, FILE *fp_stderr)
> >      > @@ -362,6 +414,8 @@ run_ptests(struct ptest_list *head, const
> >     struct ptest_options opts,
> >      >       int timeouted;
> >      >       time_t sttime, entime;
> >      >       int duration;
> >      > +     int slave;
> >      > +     int pgid = -1;
> >      >
> >      >       if (opts.xml_filename) {
> >      >               xh = xml_create(ptest_list_length(head),
> >     opts.xml_filename);
> >      > @@ -379,7 +433,6 @@ run_ptests(struct ptest_list *head, const
> >     struct ptest_options opts,
> >      >                       close(pipefd_stdout[1]);
> >      >                       break;
> >      >               }
> >      > -
> >      >               fprintf(fp, "START: %s\n", progname);
> >      >               PTEST_LIST_ITERATE_START(head, p);
> >      >                       char *ptest_dir = strdup(p->run_ptest);
> >      > @@ -388,6 +441,13 @@ run_ptests(struct ptest_list *head, const
> >     struct ptest_options opts,
> >      >                               break;
> >      >                       }
> >      >                       dirname(ptest_dir);
> >      > +                     if (ioctl(0, TIOCNOTTY) == -1) {
> >      > +                             fprintf(fp, "ERROR: Unable to
> >     detach from controlling tty, %s\n", strerror(errno));
> >      > +                     }
> >      > +
> >      > +                     if ((pgid = getpgid(0)) == -1) {
> >      > +                             fprintf(fp, "ERROR: getpgid()
> >     failed, %s\n", strerror(errno));
> >      > +                     }
> >      >
> >      >                       child = fork();
> >      >                       if (child == -1) {
> >      > @@ -395,13 +455,33 @@ run_ptests(struct ptest_list *head, const
> >     struct ptest_options opts,
> >      >                               rc = -1;
> >      >                               break;
> >      >                       } else if (child == 0) {
> >      > -                             setsid();
> >      > +                             close(0);
> >      > +                             if ((slave = setup_slave_pty(fp)) <
> >     0) {
> >      > +                                     fprintf(fp, "ERROR: could
> >     not setup pty (%d).", slave);
> >      > +                             }
> >      > +                             if (setpgid(0,pgid) == -1) {
> >      > +                                     fprintf(fp, "ERROR:
> >     setpgid() failed, %s\n", strerror(errno));
> >      > +                             }
> >      > +
> >      > +                             if (setsid() ==  -1) {
> >      > +                                     fprintf(fp, "ERROR:
> >     setsid() failed, %s\n", strerror(errno));
> >      > +                             }
> >      > +
> >      > +                             if (ioctl(0, TIOCSCTTY, NULL) ==
> -1) {
> >      > +                                     fprintf(fp, "ERROR: Unable
> >     to attach to controlling tty, %s\n", strerror(errno));
> >      > +                             }
> >      > +
> >      >                               run_child(p->run_ptest,
> >     pipefd_stdout[1], pipefd_stderr[1]);
> >      > +
> >      >                       } else {
> >      >                               int status;
> >      >                               int fds[2]; fds[0] =
> >     pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
> >      >                               FILE *fps[2]; fps[0] = fp; fps[1] =
> >     fp_stderr;
> >      >
> >      > +                             if (setpgid(child, pgid) == -1) {
> >      > +                                     fprintf(fp, "ERROR:
> >     setpgid() failed, %s\n", strerror(errno));
> >      > +                             }
> >      > +
> >      >                               sttime = time(NULL);
> >      >                               fprintf(fp, "%s\n",
> >     get_stime(stime, GET_STIME_BUF_SIZE, sttime));
> >      >                               fprintf(fp, "BEGIN: %s\n",
> ptest_dir);
> >      >
> >
> >
> >     --
> >     # Randy MacLeod
> >     # Wind River Linux
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--0000000000006f3462058c4fc9bc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdiBkaXI9Imx0ciI+PGJyPjwvZGl2PjxkaXYgZGlyPSJsdHIiPjxk
aXYgZGlyPSJsdHIiPjxicj48L2Rpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYg
ZGlyPSJsdHIiIGNsYXNzPSJnbWFpbF9hdHRyIj5PbiBXZWQsIDI2IEp1biAyMDE5IGF0IDEwOjU2
LCBSYW5keSBNYWNMZW9kICZsdDs8YSBocmVmPSJtYWlsdG86cmFuZHkubWFjbGVvZEB3aW5kcml2
ZXIuY29tIiB0YXJnZXQ9Il9ibGFuayI+cmFuZHkubWFjbGVvZEB3aW5kcml2ZXIuY29tPC9hPiZn
dDsgd3JvdGU6PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNsYXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9
Im1hcmdpbjowcHggMHB4IDBweCAwLjhleDtib3JkZXItbGVmdDoxcHggc29saWQgcmdiKDIwNCwy
MDQsMjA0KTtwYWRkaW5nLWxlZnQ6MWV4Ij5PbiA2LzI1LzE5IDk6NTEgUE0sIEFuaWJhbCBMaW1v
biB3cm90ZTo8YnI+DQomZ3Q7IDxicj4NCiZndDsgPGJyPg0KJmd0OyBPbiBXZWQsIDE5IEp1biAy
MDE5IGF0IDEyOjUwLCBSYW5keSBNYWNMZW9kICZsdDs8YSBocmVmPSJtYWlsdG86cmFuZHkubWFj
bGVvZEB3aW5kcml2ZXIuY29tIiB0YXJnZXQ9Il9ibGFuayI+cmFuZHkubWFjbGVvZEB3aW5kcml2
ZXIuY29tPC9hPiA8YnI+DQomZ3Q7ICZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOnJhbmR5Lm1h
Y2xlb2RAd2luZHJpdmVyLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnJhbmR5Lm1hY2xlb2RAd2luZHJp
dmVyLmNvbTwvYT4mZ3Q7Jmd0OyB3cm90ZTo8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoE9u
IDYvMTQvMTkgMTA6NDggQU0sIFJhbmR5IE1hY0xlb2Qgd3JvdGU6PGJyPg0KJmd0O8KgIMKgIMKg
ICZndDsgV2hlbiBydW5uaW5nIHRoZSBydW4tZXhlY3NjcmlwdCBiYXNoIHB0ZXN0IGFzIGEgdXNl
ciByYXRoZXIgdGhhbjxicj4NCiZndDvCoCDCoCDCoHJvb3QsIGEgd2FybmluZzo8YnI+DQomZ3Q7
wqAgwqAgwqAgJmd0O8KgIMKgIGJhc2g6IGNhbm5vdCBzZXQgdGVybWluYWwgcHJvY2VzcyBncm91
cCAoMTYwMzYpOiBJbmFwcHJvcHJpYXRlPGJyPg0KJmd0O8KgIMKgIMKgaW9jdGwgZm9yIGRldmlj
ZTxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqAgYmFzaDogbm8gam9iIGNvbnRyb2wgaW4gdGhp
cyBzaGVsbDxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IGNvbnRhbWluYXRlcyB0aGUgYmFzaCBsb2cg
ZmlsZXMgY2F1c2luZyB0aGUgdGVzdCB0byBmYWlsLiBUaGlzPGJyPg0KJmd0O8KgIMKgIMKgaGFw
cGVucyBvbmx5PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgd2hlbiBydW4gdW5kZXIgcHRlc3QtcnVu
bmVyIGFuZCBub3Qgd2hlbiBpbnRlcmFjdGl2ZWx5IHRlc3RpbmchPGJyPg0KJmd0O8KgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyBUaGUgY2hhbmdlcyBtYWRlIHRvIGZpeCB0aGlz
IGluY2x1ZGU6PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgMS4gR2V0IHRoZSBwcm9jZXNzIGdyb3Vw
IGlkIChwZ2lkKSBiZWZvcmUgZm9ya2luZyw8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyAyLiBTZXQg
dGhlIHBnaWQgaW4gYm90aCB0aGUgcGFyZW50IGFuZCBjaGlsZCB0byBhdm9pZCBhIHJhY2UsPGJy
Pg0KJmd0O8KgIMKgIMKgICZndDsgMy4gRmluZCwgb3BlbiBhbmQgc2V0IHBlcm1pc3Npb24gb24g
dGhlIGNoaWxkIHR0eSwgYW5kPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgNC4gQWxsb3cgdGhlIGNo
aWxkIHRvIGF0dGFjaCB0byBjb250cm9sbGluZyB0dHkuPGJyPg0KJmd0O8KgIMKgIMKgICZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyBBbHNvIGFkZCAmIzM5Oy1sdXRpbCYjMzk7IHRvIE1ha2Vm
aWxlLiBUaGlzIGxpYiBpcyBmcm9tIGxpYmMgYW5kIHByb3ZpZGVzPGJyPg0KJmd0O8KgIMKgIMKg
b3BlbnB0eS48YnI+DQomZ3Q7IDxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgSG1tbSwgSSB3
YXMgbWFraW5nIHRoZSBjb2RlIGNvbXBpbGUgY2xlYW5seSB1bmRlciBjbGFuZyB1c2luZzxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoC1XZXZlcnl0aGluZzxicj4NCiZndDvCoCDCoCDCoHdoZW4gSSBu
b3RpY2VkOjxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgIMKgMS4gdGhlICYjMzk7bWFrZSBjaGVj
ayYjMzk7IHRlc3RzLiBUaGV5IHN0aWxsIHdvcmsgZmluZS48YnI+DQomZ3Q7wqAgwqAgwqAyLiBU
aGUgJiMzOTsuL3B0ZXN0LXJ1bm5lciAtZCB0ZXN0cy9kYXRhIC10IDEmIzM5OyB0ZXN0czxicj4N
CiZndDvCoCDCoCDCoCDCoCDCoCB3aGljaCBub3cgZ2VuZXJhdGUgbG9hZHMgb2YgZXJyb3IgbGlr
ZTo8YnI+DQomZ3Q7wqAgwqAgwqAgwqAgwqAgwqBFUlJPUjogVW5hYmxlIHRvIGRldGFjaCBmcm9t
IGNvbnRyb2xsaW5nIHR0eSwgSW5hcHByb3ByaWF0ZSBpb2N0bDxicj4NCiZndDvCoCDCoCDCoGZv
ciBkZXZpY2U8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoHNvIHdoaWxlIHRoaXMgY2hhbmdl
IGZpeGVkIHRoZSBiYXNoLXB0ZXN0LCB0aGUgcHRlc3QtcnVubmVyIHNlbGYtdGVzdDxicj4NCiZn
dDvCoCDCoCDCoGl0IGRpZCBzb21ldGhpbmcgd3JvbmcuLi4uIEFoLCBJJiMzOTttIGNhbGxpbmc6
PGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKgIGlvY3RsKDAsIFRJT0NOT1RUWSkgPT0gLTEpPGJyPg0K
Jmd0O8KgIMKgIMKgcmVwZWF0ZWRseSBpbiB0aGUgcGFyZW50IHNvIHRoYXQmIzM5O3Mgd2hhdCYj
Mzk7cyBnZW5lcmF0aW5nIHRoZSBleHRyYSBsb2dzLjxicj4NCiZndDvCoCDCoCDCoEZpeGVkIGxv
Y2FsbHkgYW5kIEkmIzM5O2xsIHNlbmQgYSBwYXRjaCBidXQgaXQmIzM5O3Mgbm90IHVyZ2VudC4g
UGhldyEgOik8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoEFuaWJhbCw8YnI+DQomZ3Q7IDxi
cj4NCiZndDvCoCDCoCDCoElmIHlvdSBjb3VsZCByZXBseSB0byBleHBsYWluIHlvdXIgcGxhbnMg
Zm9yIFJpY2hhcmQmIzM5O3MgcGF0Y2hlczxicj4NCiZndDvCoCDCoCDCoHRoYXQgd291bGQgaGVs
cCBtZSBmaWd1cmUgb3V0IHdoZW4gdG8gc2VuZCB0aGUgY2xhbmcgd2FybmluZyBjbGVhbi11cHM8
YnI+DQomZ3Q7wqAgwqAgwqBjb21taXRzIGFuZCB3aGF0IGNvbW1pdCB0byBiYXNlIG15IHdvcmsg
b24uPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IDxicj4NCiZndDsgSGksPGJyPg0KJmd0OyA8YnI+DQom
Z3Q7IEkgcGxhbiB0byB0YWtlIHRoZSBSaWNoYXJkIHBhdGNoZXMsIEhlIGFkZGVkIGluIHRoZSBy
ZWNpcGUgdG8gaGF2ZSByZWFsIDxicj4NCiZndDsgdGVzdGluZyBhbmQgbG9va3MgbGlrZTxicj4N
CiZndDsgdGhlcmUgYXJlbiYjMzk7dCBwcm9ibGVtcyByZWxhdGVkIHRvLCBSaWNoYXJkIGNhbiB5
b3UgY29uZmlybSBpdD8sPGJyPg0KJmd0OyA8YnI+DQomZ3Q7IFJlZ2FyZGluZyB0aGUgb3BlbnB0
eSBpbmNsdWRlLCBJIHNlZSBzb21lIGxpbmthZ2UgcHJvYmxlbSB3aGVuIHJ1bm5pbmcgPGJyPg0K
Jmd0OyBtYWtlIGNoZWNrLCBwcm9wb3NlZCBmaXg6PGJyPg0KPGJyPg0KWWVzLCBJIGhhZCBub3Rp
Y2VkIHRoYXQgYW5kIGZpeGVkIGl0IGFzIHdlbGwuPGJyPg0KPGJyPg0KSSYjMzk7bGwgc2VuZCBt
eSBsYXRlc3QgcGF0Y2ggc2VyaWVzIG9uY2UgeW91IGhhdmUgbWVyZ2VkPGJyPg0KUmljaGFyZCYj
Mzk7cyBjaGFuZ2VzIGludG8gbWFzdGVyLiBIb3BlZnVsbHkgdGhhdCB3aWxsIGJlIHRvZGF5Li4u
IDopPGJyPjwvYmxvY2txdW90ZT48ZGl2Pjxicj48L2Rpdj48ZGl2PkkganVzdCBtZXJnZWQgdGhl
IGNoYW5nZXMsPC9kaXY+PGRpdj48YnI+PC9kaXY+PGRpdj5UaGFua3MsPC9kaXY+PGRpdj5Bbmli
YWw8L2Rpdj48ZGl2PsKgPC9kaXY+PGJsb2NrcXVvdGUgY2xhc3M9ImdtYWlsX3F1b3RlIiBzdHls
ZT0ibWFyZ2luOjBweCAwcHggMHB4IDAuOGV4O2JvcmRlci1sZWZ0OjFweCBzb2xpZCByZ2IoMjA0
LDIwNCwyMDQpO3BhZGRpbmctbGVmdDoxZXgiPg0KPGJyPg0KSSBkZWNpZGVkIHRvIGNvbXBpbGUg
d2l0aDo8YnI+DQrCoCDCoGNsYW5nIC1XZXZlcnl0aGluZzxicj4NCnRvIHNlZSBpZiB0aGVyZSB3
ZXJlIGFueSBwcm9ibGVtcyBhbmQgdGhlcmU8YnI+DQp3ZXJlIHF1aXRlIGEgZmV3IHRoaW5ncyB0
byBmaXguIE5vdywgZm9yIHRoZSBtb3N0IHBhcnQsPGJyPg0KbmVpdGhlciBjbGFuZyBub3IgZ2Nj
IGNvbXBsYWluIGFib3V0IHRoZSBjb2RlLjxicj4NCjxicj4NCi4uL1JhbmR5PGJyPg0KPGJyPg0K
Jmd0OyA8YnI+DQomZ3Q7IC4uLjxicj4NCiZndDsgLS0tIGEvTWFrZWZpbGU8YnI+DQomZ3Q7ICsr
KyBiL01ha2VmaWxlPGJyPg0KJmd0OyBAQCAtMjIsMTkgKzIyLDIwIEBAIFRFU1RfU09VUkNFUz10
ZXN0cy9tYWluLmMgdGVzdHMvcHRlc3RfbGlzdC5jIDxicj4NCiZndDsgdGVzdHMvdXRpbHMuYyAk
KEJBU0VfU09VUkNFUyk8YnI+DQomZ3Q7wqAgwqBURVNUX09CSkVDVFM9JChURVNUX1NPVVJDRVM6
LmM9Lm8pPGJyPg0KJmd0O8KgIMKgVEVTVF9FWEVDVVRBQkxFPXB0ZXN0LXJ1bm5lci10ZXN0PGJy
Pg0KJmd0O8KgIMKgVEVTVF9MREZMQUdTPS1sbSAtbHJ0IC1scHRocmVhZDxicj4NCiZndDsgLVRF
U1RfTElCU1RBVElDPS1sY2hlY2sgLWxzdWJ1bml0PGJyPg0KJmd0OyArVEVTVF9MSUJTVEFUSUM9
LWx1dGlsPGJyPg0KJmd0OyArVEVTVF9MSUJTVEFUSUNfVEVTVD0kKFRFU1RfTElCU1RBVElDKSAt
bGNoZWNrIC1sc3VidW5pdDxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgVEVTVF9EQVRBPSQoc2hl
bGwgZWNobyBgcHdkYC90ZXN0cy9kYXRhKTxicj4NCiZndDsgPGJyPg0KJmd0O8KgIMKgYWxsOiAk
KFNPVVJDRVMpICQoRVhFQ1VUQUJMRSk8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCQoRVhFQ1VU
QUJMRSk6ICQoT0JKRUNUUyk8YnI+DQomZ3Q7IC0gwqAgwqAgwqAgJChDQykgJChMREZMQUdTKSAk
KE9CSkVDVFMpIC1sdXRpbCAtbyAkQDxicj4NCiZndDsgKyDCoCDCoCDCoCAkKENDKSAkKExERkxB
R1MpICQoT0JKRUNUUykgLW8gJEAgJChURVNUX0xJQlNUQVRJQyk8YnI+DQomZ3Q7IDxicj4NCiZn
dDvCoCDCoHRlc3RzOiAkKFRFU1RfU09VUkNFUykgJChURVNUX0VYRUNVVEFCTEUpPGJyPg0KJmd0
OyA8YnI+DQomZ3Q7wqAgwqAkKFRFU1RfRVhFQ1VUQUJMRSk6ICQoVEVTVF9PQkpFQ1RTKTxicj4N
CiZndDsgLSDCoCDCoCDCoCAkKENDKSAkKExERkxBR1MpICQoVEVTVF9MREZMQUdTKSAkKFRFU1Rf
T0JKRUNUUykgLW8gJEAgPGJyPg0KJmd0OyAkKFRFU1RfTElCU1RBVElDKTxicj4NCiZndDsgKyDC
oCDCoCDCoCAkKENDKSAkKExERkxBR1MpICQoVEVTVF9MREZMQUdTKSAkKFRFU1RfT0JKRUNUUykg
LW8gJEAgPGJyPg0KJmd0OyAkKFRFU1RfTElCU1RBVElDX1RFU1QpPGJyPg0KJmd0OyA8YnI+DQom
Z3Q7wqAgwqBjaGVjazogJChURVNUX0VYRUNVVEFCTEUpPGJyPg0KJmd0O8KgIMKgIMKgIMKgIMKg
IC4vJChURVNUX0VYRUNVVEFCTEUpIC1kICQoVEVTVF9EQVRBKTxicj4NCiZndDsgLi4uPGJyPg0K
Jmd0OyA8YnI+DQomZ3Q7IEJlc3QgcmVnYXJkcyw8YnI+DQomZ3Q7IEFuaWJhbDxicj4NCiZndDsg
PGJyPg0KJmd0OyA8YnI+DQomZ3Q7IDxicj4NCiZndDvCoCDCoCDCoC4uL1JhbmR5PGJyPg0KJmd0
OyA8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IFNpZ25lZC1v
ZmYtYnk6IFNha2liIFNhamFsICZsdDs8YSBocmVmPSJtYWlsdG86c2FraWIuc2FqYWxAd2luZHJp
dmVyLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnNha2liLnNhamFsQHdpbmRyaXZlci5jb208L2E+PGJy
Pg0KJmd0O8KgIMKgIMKgJmx0O21haWx0bzo8YSBocmVmPSJtYWlsdG86c2FraWIuc2FqYWxAd2lu
ZHJpdmVyLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPnNha2liLnNhamFsQHdpbmRyaXZlci5jb208L2E+
Jmd0OyZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyBTaWduZWQtb2ZmLWJ5OiBSYW5keSBNYWNM
ZW9kICZsdDs8YSBocmVmPSJtYWlsdG86UmFuZHkuTWFjTGVvZEB3aW5kcml2ZXIuY29tIiB0YXJn
ZXQ9Il9ibGFuayI+UmFuZHkuTWFjTGVvZEB3aW5kcml2ZXIuY29tPC9hPjxicj4NCiZndDvCoCDC
oCDCoCZsdDttYWlsdG86PGEgaHJlZj0ibWFpbHRvOlJhbmR5Lk1hY0xlb2RAd2luZHJpdmVyLmNv
bSIgdGFyZ2V0PSJfYmxhbmsiPlJhbmR5Lk1hY0xlb2RAd2luZHJpdmVyLmNvbTwvYT4mZ3Q7Jmd0
Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IC0tLTxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqBN
YWtlZmlsZSB8wqAgwqAyICstPGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoHV0aWxzLmPCoCB8
IDEwMjxicj4NCiZndDvCoCDCoCDCoCsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKystLS0tLS08YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgMiBmaWxlcyBj
aGFuZ2VkLCA5MiBpbnNlcnRpb25zKCspLCAxMiBkZWxldGlvbnMoLSk8YnI+DQomZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IGRpZmYgLS1naXQgYS9NYWtlZmlsZSBiL01h
a2VmaWxlPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgaW5kZXggMWJkZTdiZS4uNDM5ZWI3OSAxMDA2
NDQ8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyAtLS0gYS9NYWtlZmlsZTxicj4NCiZndDvCoCDCoCDC
oCAmZ3Q7ICsrKyBiL01ha2VmaWxlPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgQEAgLTI5LDcgKzI5
LDcgQEAgVEVTVF9EQVRBPSQoc2hlbGwgZWNobyBgcHdkYC90ZXN0cy9kYXRhKTxicj4NCiZndDvC
oCDCoCDCoCAmZ3Q7wqAgwqBhbGw6ICQoU09VUkNFUykgJChFWEVDVVRBQkxFKTxicj4NCiZndDvC
oCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCQoRVhFQ1VUQUJMRSk6ICQo
T0JKRUNUUyk8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyAtwqAgwqAgwqAkKENDKSAkKExERkxBR1Mp
ICQoT0JKRUNUUykgLW8gJEA8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAkKENDKSAk
KExERkxBR1MpICQoT0JKRUNUUykgLWx1dGlsIC1vICRAPGJyPg0KJmd0O8KgIMKgIMKgICZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgdGVzdHM6ICQoVEVTVF9TT1VSQ0VTKSAkKFRFU1Rf
RVhFQ1VUQUJMRSk8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7
IGRpZmYgLS1naXQgYS91dGlscy5jIGIvdXRpbHMuYzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IGlu
ZGV4IGFkNzM3YzIuLmYxMWNlMzkgMTAwNjQ0PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgLS0tIGEv
dXRpbHMuYzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICsrKyBiL3V0aWxzLmM8YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyBAQCAtMSw1ICsxLDYgQEA8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgLyoq
PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCAqIENvcHlyaWdodCAoYykgMjAxNiBJbnRlbCBD
b3Jwb3JhdGlvbjxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICsgKiBDb3B5cmlnaHQgKEMpIDIwMTkg
V2luZCBSaXZlciBTeXN0ZW1zLCBJbmMuPGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCAqPGJy
Pg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCAqIFRoaXMgcHJvZ3JhbSBpcyBmcmVlIHNvZnR3YXJl
OyB5b3UgY2FuIHJlZGlzdHJpYnV0ZSBpdCBhbmQvb3I8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8Kg
IMKgICogbW9kaWZ5IGl0IHVuZGVyIHRoZSB0ZXJtcyBvZiB0aGUgR05VIEdlbmVyYWwgUHVibGlj
IExpY2Vuc2U8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyBAQCAtMjIsMjMgKzIzLDI3IEBAPGJyPg0K
Jmd0O8KgIMKgIMKgICZndDvCoCDCoCAqLzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgICZndDvCoCDCoCNkZWZpbmUgX0dOVV9TT1VSQ0U8YnI+DQomZ3Q7wqAgwqAgwqAg
Jmd0OyArPGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCNpbmNsdWRlICZsdDtzdGRpby5oJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKyNpbmNsdWRl
ICZsdDtkaXJlbnQuaCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArI2luY2x1ZGUgJmx0O2Vy
cm5vLmgmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKyNpbmNsdWRlICZsdDtmY250bC5oJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICsjaW5jbHVkZSAmbHQ7Z3JwLmgmZ3Q7PGJyPg0KJmd0
O8KgIMKgIMKgICZndDvCoCDCoCNpbmNsdWRlICZsdDtsaWJnZW4uaCZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyAtI2luY2x1ZGUgJmx0O3NpZ25hbC5oJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAm
Z3Q7wqAgwqAjaW5jbHVkZSAmbHQ7cG9sbC5oJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IC0j
aW5jbHVkZSAmbHQ7ZmNudGwuaCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArI2luY2x1ZGUg
Jmx0O3B0eS5oJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICsjaW5jbHVkZSAmbHQ7c2lnbmFs
LmgmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKyNpbmNsdWRlICZsdDtzdGRsaWIuaCZndDs8
YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArI2luY2x1ZGUgJmx0O3N0cmluZy5oJmd0Ozxicj4NCiZn
dDvCoCDCoCDCoCAmZ3Q7wqAgwqAjaW5jbHVkZSAmbHQ7dGltZS5oJmd0Ozxicj4NCiZndDvCoCDC
oCDCoCAmZ3Q7IC0jaW5jbHVkZSAmbHQ7ZGlyZW50LmgmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZn
dDsgKyNpbmNsdWRlICZsdDt1bmlzdGQuaCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArPGJy
Pg0KJmd0O8KgIMKgIMKgICZndDsgKyNpbmNsdWRlICZsdDtzeXMvaW9jdGwuaCZndDs8YnI+DQom
Z3Q7wqAgwqAgwqAgJmd0O8KgIMKgI2luY2x1ZGUgJmx0O3N5cy9yZXNvdXJjZS5oJmd0Ozxicj4N
CiZndDvCoCDCoCDCoCAmZ3Q7ICsjaW5jbHVkZSAmbHQ7c3lzL3N0YXQuaCZndDs8YnI+DQomZ3Q7
wqAgwqAgwqAgJmd0O8KgIMKgI2luY2x1ZGUgJmx0O3N5cy90eXBlcy5oJmd0Ozxicj4NCiZndDvC
oCDCoCDCoCAmZ3Q7wqAgwqAjaW5jbHVkZSAmbHQ7c3lzL3dhaXQuaCZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyAtI2luY2x1ZGUgJmx0O3N5cy9zdGF0LmgmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKg
ICZndDsgLSNpbmNsdWRlICZsdDt1bmlzdGQuaCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyAt
I2luY2x1ZGUgJmx0O3N0cmluZy5oJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IC0jaW5jbHVk
ZSAmbHQ7c3RkbGliLmgmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgLTxicj4NCiZndDvCoCDC
oCDCoCAmZ3Q7IC0jaW5jbHVkZSAmbHQ7ZXJybm8uaCZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0
Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqAjaW5jbHVkZSAmcXVvdDtwdGVzdF9saXN0Lmgm
cXVvdDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgI2luY2x1ZGUgJnF1b3Q7dXRpbHMuaCZx
dW90Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IEBAIC0zNDYsNiArMzUxLDUzIEBAIHdhaXRfY2hp
bGQoY29uc3QgY2hhciAqcHRlc3RfZGlyLCBjb25zdCBjaGFyPGJyPg0KJmd0O8KgIMKgIMKgKnJ1
bl9wdGVzdCwgcGlkX3QgcGlkLDxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqByZXR1
cm4gc3RhdHVzOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKg
ICZndDs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArLyogUmV0dXJucyBhbiBpbnRlZ2VyIGZpbGUg
ZGVzY3JpcHRvci48YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArICogSWYgaXQgcmV0dXJucyAmbHQ7
IDAsIGFuIGVycm9yIGhhcyBvY2N1cnJlZC48YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArICogT3Ro
ZXJ3aXNlLCBpdCBoYXMgcmV0dXJuZWQgdGhlIHNsYXZlIHB0eSBmaWxlIGRlc2NyaXB0b3IuPGJy
Pg0KJmd0O8KgIMKgIMKgICZndDsgKyAqIGZwIHNob3VsZCBiZSB3cml0YWJsZSwgbGlrZWx5IHN0
ZG91dC9lcnIuPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKyAqLzxicj4NCiZndDvCoCDCoCDCoCAm
Z3Q7ICtzdGF0aWMgaW50PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK3NldHVwX3NsYXZlX3B0eShG
SUxFICpmcCkgezxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoGludCBwdHlfbWFzdGVy
ID0gLTE7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgaW50IHB0eV9zbGF2ZSA9IC0x
Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoGNoYXIgcHR5X25hbWVbMjU2XTs8YnI+
DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqBzdHJ1Y3QgZ3JvdXAgKmdwdHI7PGJyPg0KJmd0
O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgZ2lkX3QgZ2lkOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7
ICvCoCDCoCDCoGludCBzbGF2ZSA9IC0xOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICs8YnI+DQom
Z3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqBpZiAob3BlbnB0eSgmYW1wO3B0eV9tYXN0ZXIsICZh
bXA7cHR5X3NsYXZlLCBwdHlfbmFtZSwgTlVMTCwgTlVMTCk8YnI+DQomZ3Q7wqAgwqAgwqAmbHQ7
IDApIHs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqBmcHJpbnRm
KGZwLCAmcXVvdDtFUlJPUjogb3BlbnB0eSgpIGZhaWxlZCB3aXRoOiAlcy5cbiZxdW90Oyw8YnI+
DQomZ3Q7wqAgwqAgwqBzdHJlcnJvcihlcnJubykpOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvC
oCDCoCDCoCDCoCDCoCDCoCDCoHJldHVybiAtMTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAg
wqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvC
oCDCoCDCoGlmICgoZ3B0ciA9IGdldGdybmFtKHB0eV9uYW1lKSkgIT0gMCkgezxicj4NCiZndDvC
oCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoGdpZCA9IGdwdHItJmd0O2dyX2dpZDs8
YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqB9IGVsc2Ugezxicj4NCiZndDvCoCDCoCDC
oCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoC8qIElmIHRoZSB0dHkgZ3JvdXAgZG9lcyBub3Qg
ZXhpc3QsIGRvbiYjMzk7dCBjaGFuZ2UgdGhlPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKg
IMKgIMKgIMKgIMKgIMKgICogZ3JvdXAgb24gdGhlIHNsYXZlIHB0eSwgb25seSB0aGUgb3duZXI8
YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgKi88YnI+DQomZ3Q7
wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqBnaWQgPSAtMTs8YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyArwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKzxicj4NCiZndDvC
oCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoC8qIGNob3duL2NobW9kIHRoZSBjb3JyZXNwb25kaW5nIHB0
eSwgaWYgcG9zc2libGUuPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgICogVGhpcyB3
aWxsIG9ubHkgd29yayBpZiB0aGUgcHJvY2VzcyBoYXMgcm9vdCBwZXJtaXNzaW9ucy48YnI+DQom
Z3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgKi88YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAg
wqAgwqBpZiAoY2hvd24ocHR5X25hbWUsIGdldHVpZCgpLCBnaWQpICE9IDApIHs8YnI+DQomZ3Q7
wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqBmcHJpbnRmKGZwLCAmcXVvdDtFUlJP
UjsgY2hvd24oKSBmYWlsZWQgd2l0aDogJXMuXG4mcXVvdDssPGJyPg0KJmd0O8KgIMKgIMKgc3Ry
ZXJyb3IoZXJybm8pKTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqB9PGJyPg0KJmd0
O8KgIMKgIMKgICZndDsgKzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoC8qIE1ha2Vz
IHRoZSBzbGF2ZSByZWFkL3dyaXRlYWJsZSBmb3IgdGhlIHVzZXIuICovPGJyPg0KJmd0O8KgIMKg
IMKgICZndDsgK8KgIMKgIMKgaWYgKGNobW9kKHB0eV9uYW1lLCBTX0lSVVNSfFNfSVdVU1IpICE9
IDApIHs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqBmcHJpbnRm
KGZwLCAmcXVvdDtFUlJPUjogY2htb2QoKSBmYWlsZWQgd2l0aDogJXMuXG4mcXVvdDssPGJyPg0K
Jmd0O8KgIMKgIMKgc3RyZXJyb3IoZXJybm8pKTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAg
wqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvC
oCDCoCDCoGlmICgoc2xhdmUgPSBvcGVuKHB0eV9uYW1lLCBPX1JEV1IpKSA9PSAtMSkgezxicj4N
CiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoGZwcmludGYoZnAsICZxdW90
O0VSUk9SOiBvcGVuKCkgZmFpbGVkIHdpdGg6ICVzLlxuJnF1b3Q7LDxicj4NCiZndDvCoCDCoCDC
oHN0cmVycm9yKGVycm5vKSk7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgfTxicj4N
CiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoHJldHVybiAoc2xhdmUpOzxicj4NCiZndDvCoCDC
oCDCoCAmZ3Q7ICt9PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKzxicj4NCiZndDvCoCDCoCDCoCAm
Z3Q7ICs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgaW50PGJyPg0KJmd0O8KgIMKgIMKgICZn
dDvCoCDCoHJ1bl9wdGVzdHMoc3RydWN0IHB0ZXN0X2xpc3QgKmhlYWQsIGNvbnN0IHN0cnVjdCBw
dGVzdF9vcHRpb25zPGJyPg0KJmd0O8KgIMKgIMKgb3B0cyw8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0
O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY29uc3QgY2hhciAqcHJvZ25hbWUsIEZJTEUgKmZwLCBG
SUxFICpmcF9zdGRlcnIpPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgQEAgLTM2Miw2ICs0MTQsOCBA
QCBydW5fcHRlc3RzKHN0cnVjdCBwdGVzdF9saXN0ICpoZWFkLCBjb25zdDxicj4NCiZndDvCoCDC
oCDCoHN0cnVjdCBwdGVzdF9vcHRpb25zIG9wdHMsPGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDC
oCDCoCDCoGludCB0aW1lb3V0ZWQ7PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoHRp
bWVfdCBzdHRpbWUsIGVudGltZTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgaW50
IGR1cmF0aW9uOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoGludCBzbGF2ZTs8YnI+
DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqBpbnQgcGdpZCA9IC0xOzxicj4NCiZndDvCoCDC
oCDCoCAmZ3Q7PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoGlmIChvcHRzLnhtbF9m
aWxlbmFtZSkgezxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB4
aCA9IHhtbF9jcmVhdGUocHRlc3RfbGlzdF9sZW5ndGgoaGVhZCksPGJyPg0KJmd0O8KgIMKgIMKg
b3B0cy54bWxfZmlsZW5hbWUpOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IEBAIC0zNzksNyArNDMz
LDYgQEAgcnVuX3B0ZXN0cyhzdHJ1Y3QgcHRlc3RfbGlzdCAqaGVhZCwgY29uc3Q8YnI+DQomZ3Q7
wqAgwqAgwqBzdHJ1Y3QgcHRlc3Rfb3B0aW9ucyBvcHRzLDxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBjbG9zZShwaXBlZmRfc3Rkb3V0WzFd
KTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgYnJlYWs7PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08
YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyAtPGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoGZwcmludGYoZnAsICZxdW90O1NUQVJUOiAlc1xuJnF1b3Q7LCBwcm9nbmFt
ZSk7PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoFBURVNUX0xJ
U1RfSVRFUkFURV9TVEFSVChoZWFkLCBwKTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgY2hhciAqcHRlc3RfZGlyID0gc3RyZHVwKHAtJmd0
O3J1bl9wdGVzdCk7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgQEAgLTM4OCw2ICs0NDEsMTMgQEAg
cnVuX3B0ZXN0cyhzdHJ1Y3QgcHRlc3RfbGlzdCAqaGVhZCwgY29uc3Q8YnI+DQomZ3Q7wqAgwqAg
wqBzdHJ1Y3QgcHRlc3Rfb3B0aW9ucyBvcHRzLDxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBicmVhazs8YnI+DQomZ3Q7
wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfTxicj4NCiZn
dDvCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBkaXJuYW1l
KHB0ZXN0X2Rpcik7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgaWYgKGlvY3RsKDAsIFRJT0NOT1RUWSkgPT0gLTEpIHs8YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBm
cHJpbnRmKGZwLCAmcXVvdDtFUlJPUjogVW5hYmxlIHRvPGJyPg0KJmd0O8KgIMKgIMKgZGV0YWNo
IGZyb20gY29udHJvbGxpbmcgdHR5LCAlc1xuJnF1b3Q7LCBzdHJlcnJvcihlcnJubykpOzxicj4N
CiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+
DQomZ3Q7wqAgwqAgwqAgJmd0OyArPGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKChwZ2lkID0gZ2V0cGdpZCgwKSkgPT0gLTEpIHs8YnI+
DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBmcHJpbnRmKGZwLCAmcXVvdDtFUlJPUjogZ2V0cGdpZCgpPGJyPg0KJmd0O8KgIMKg
IMKgZmFpbGVkLCAlc1xuJnF1b3Q7LCBzdHJlcnJvcihlcnJubykpOzxicj4NCiZndDvCoCDCoCDC
oCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqBjaGlsZCA9IGZvcmsoKTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKGNoaWxkID09IC0xKSB7PGJyPg0KJmd0O8KgIMKg
IMKgICZndDsgQEAgLTM5NSwxMyArNDU1LDMzIEBAIHJ1bl9wdGVzdHMoc3RydWN0IHB0ZXN0X2xp
c3QgKmhlYWQsIGNvbnN0PGJyPg0KJmd0O8KgIMKgIMKgc3RydWN0IHB0ZXN0X29wdGlvbnMgb3B0
cyw8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgcmMgPSAtMTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgYnJlYWs7PGJyPg0KJmd0O8KgIMKg
IMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH0gZWxzZSBpZiAoY2hp
bGQgPT0gMCkgezxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7IC3CoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoHNldHNpZCgpOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGNsb3NlKDApOzxicj4N
CiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoGlmICgoc2xhdmUgPSBzZXR1cF9zbGF2ZV9wdHkoZnApKSAmbHQ7PGJyPg0KJmd0O8Kg
IMKgIMKgMCkgezxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZwcmludGYoZnAsICZxdW90O0VSUk9S
OiBjb3VsZDxicj4NCiZndDvCoCDCoCDCoG5vdCBzZXR1cCBwdHkgKCVkKS4mcXVvdDssIHNsYXZl
KTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgaWYgKHNldHBnaWQoMCxwZ2lkKSA9PSAtMSkgezxi
cj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZwcmludGYoZnAsICZxdW90O0VSUk9SOjxicj4NCiZndDvC
oCDCoCDCoHNldHBnaWQoKSBmYWlsZWQsICVzXG4mcXVvdDssIHN0cmVycm9yKGVycm5vKSk7PGJy
Pg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgfTxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0
OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBpZiAoc2V0c2lk
KCkgPT3CoCAtMSkgezxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGZwcmludGYoZnAsICZxdW90O0VS
Uk9SOjxicj4NCiZndDvCoCDCoCDCoHNldHNpZCgpIGZhaWxlZCwgJXNcbiZxdW90Oywgc3RyZXJy
b3IoZXJybm8pKTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB9PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgKzxicj4NCiZn
dDvCoCDCoCDCoCAmZ3Q7ICvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoGlmIChpb2N0bCgwLCBUSU9DU0NUVFksIE5VTEwpID09IC0xKSB7PGJyPg0KJmd0O8KgIMKg
IMKgICZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgZnByaW50ZihmcCwgJnF1b3Q7RVJST1I6IFVuYWJsZTxicj4NCiZndDvCoCDCoCDC
oHRvIGF0dGFjaCB0byBjb250cm9sbGluZyB0dHksICVzXG4mcXVvdDssIHN0cmVycm9yKGVycm5v
KSk7PGJyPg0KJmd0O8KgIMKgIMKgICZndDsgK8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgfTxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICs8YnI+DQomZ3Q7wqAgwqAg
wqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgcnVu
X2NoaWxkKHAtJmd0O3J1bl9wdGVzdCw8YnI+DQomZ3Q7wqAgwqAgwqBwaXBlZmRfc3Rkb3V0WzFd
LCBwaXBlZmRfc3RkZXJyWzFdKTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyArPGJyPg0KJmd0O8Kg
IMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH0gZWxzZSB7PGJy
Pg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoGludCBzdGF0dXM7PGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoGludCBmZHNbMl07IGZkc1swXSA9PGJy
Pg0KJmd0O8KgIMKgIMKgcGlwZWZkX3N0ZG91dFswXTsgZmRzWzFdID0gcGlwZWZkX3N0ZGVyclsw
XTs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0O8KgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIMKgIMKgRklMRSAqZnBzWzJdOyBmcHNbMF0gPSBmcDsgZnBzWzFdID08YnI+DQom
Z3Q7wqAgwqAgwqBmcF9zdGRlcnI7PGJyPg0KJmd0O8KgIMKgIMKgICZndDs8YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyArwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBp
ZiAoc2V0cGdpZChjaGlsZCwgcGdpZCkgPT0gLTEpIHs8YnI+DQomZ3Q7wqAgwqAgwqAgJmd0OyAr
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBm
cHJpbnRmKGZwLCAmcXVvdDtFUlJPUjo8YnI+DQomZ3Q7wqAgwqAgwqBzZXRwZ2lkKCkgZmFpbGVk
LCAlc1xuJnF1b3Q7LCBzdHJlcnJvcihlcnJubykpOzxicj4NCiZndDvCoCDCoCDCoCAmZ3Q7ICvC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoH08YnI+DQomZ3Q7wqAg
wqAgwqAgJmd0OyArPGJyPg0KJmd0O8KgIMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHN0dGltZSA9IHRpbWUoTlVMTCk7PGJyPg0KJmd0O8Kg
IMKgIMKgICZndDvCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oGZwcmludGYoZnAsICZxdW90OyVzXG4mcXVvdDssPGJyPg0KJmd0O8KgIMKgIMKgZ2V0X3N0aW1l
KHN0aW1lLCBHRVRfU1RJTUVfQlVGX1NJWkUsIHN0dGltZSkpOzxicj4NCiZndDvCoCDCoCDCoCAm
Z3Q7wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqBmcHJpbnRm
KGZwLCAmcXVvdDtCRUdJTjogJXNcbiZxdW90OywgcHRlc3RfZGlyKTs8YnI+DQomZ3Q7wqAgwqAg
wqAgJmd0Ozxicj4NCiZndDsgPGJyPg0KJmd0OyA8YnI+DQomZ3Q7wqAgwqAgwqAtLSA8YnI+DQom
Z3Q7wqAgwqAgwqAjIFJhbmR5IE1hY0xlb2Q8YnI+DQomZ3Q7wqAgwqAgwqAjIFdpbmQgUml2ZXIg
TGludXg8YnI+DQomZ3Q7IDxicj4NCjxicj4NCjxicj4NCi0tIDxicj4NCiMgUmFuZHkgTWFjTGVv
ZDxicj4NCiMgV2luZCBSaXZlciBMaW51eDxicj4NCjwvYmxvY2txdW90ZT48L2Rpdj48L2Rpdj4N
CjwvZGl2Pg0K

--0000000000006f3462058c4fc9bc--
