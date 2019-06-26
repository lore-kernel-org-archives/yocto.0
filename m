Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1EF7E00D4C; Tue, 25 Jun 2019 18:50:44 -0700 (PDT)
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
	*      [209.85.217.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f68.google.com (mail-vs1-f68.google.com
	[209.85.217.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF3AEE00A7D
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 18:50:42 -0700 (PDT)
Received: by mail-vs1-f68.google.com with SMTP id v6so526428vsq.4
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 18:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=g1xA4Cyl4q8WbRmQ1wZ7nKQ0XJOQ+CDk8Achy4KRN14=;
	b=EwK0xUG1zdlaC2ko1WMSuVas9nzoEkjmrWwLNmMXqE+GHA/8W8GDrg+5NrfXpL7kkW
	s0G0seXhYM9BSyCO+pfC4Kr1toRkLhGKvOApaNPgQCHECXhl4mLk1nUvulvAf6uzfOCg
	F4MGmdkTwqp0usFA/5IHT5dTGVwXxX7O/uQSDgtSHpuYrZyGdDJPh90truN4QNUofLlP
	GRha3L9t7kbQTJD3YAxedrKozEK2lNjNMSNx8slZmZUOBBXDQgWPlcKzk+nJd5L9SzwH
	MnszZY2ZcI76iE/V1UWiH2KPr0jiQQdNxGyMiniUZsbQ1CKsz1iZi4Ai76DeKA+0SHV6
	yJaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=g1xA4Cyl4q8WbRmQ1wZ7nKQ0XJOQ+CDk8Achy4KRN14=;
	b=HDsYf4BF71KUFRDPzQ4UL79dnDxv8ORhTnTLtMKIFpDz0qemt4Y1UMtj6LnOVHcRRA
	yXXSrl0Stwdjo/37Av9N313vpCqW3/gGQfDP3Plm+h3WbrYd+4hLI+2q4BqnWe+7y5fE
	hU59b5cYa2jbP/4igtHyszm6001blpLXgtjuykPxVqZgoKM58djawSh6jT0A68XjKXaS
	+ClyfYpkIJY6WuTeq4Hw0xpvBmGGeZDg5OB7nyO0jSySUAwbU+gi/lthnLt/2DtFGx6Y
	p3y6XfYaRuaML8SWL7gl6B6Q4pwEH9Aw/LQYe43ZQhw7KS8sFM2LR2RZ5WM5RzzWzkr3
	IuOA==
X-Gm-Message-State: APjAAAVoAobtYa0yQQ20RElhgQifHV4Rnl5OknF0DSJ/NJnLcUFOfnT1
	GvmG+l5jb3Q88DeeKaxHITl3+i00jq4DXQ/mSmEyZg==
X-Google-Smtp-Source: APXvYqzY8YP5b8RMjgRGefz3kssvJgHFOKfbq9ooDmmIwhuyjI/telj4Jh+J1S1hGWR4508j8aZ92OMJqeAzx3AaH1s=
X-Received: by 2002:a67:fe5a:: with SMTP id m26mr1394224vsr.230.1561513842245; 
	Tue, 25 Jun 2019 18:50:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-5-Randy.MacLeod@windriver.com>
	<98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
In-Reply-To: <98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Tue, 25 Jun 2019 20:51:13 -0500
Message-ID: <CA+_AqisMBmPaNy7xyt1+9c73RnMcChugCcxz6Bb4cBOCHG=-kQ@mail.gmail.com>
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
X-List-Received-Date: Wed, 26 Jun 2019 01:50:44 -0000
Content-Type: multipart/alternative; boundary="000000000000e11f7b058c3045a3"

--000000000000e11f7b058c3045a3
Content-Type: text/plain; charset="UTF-8"

On Wed, 19 Jun 2019 at 12:50, Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 6/14/19 10:48 AM, Randy MacLeod wrote:
> > When running the run-execscript bash ptest as a user rather than root, a
> warning:
> >    bash: cannot set terminal process group (16036): Inappropriate ioctl
> for device
> >    bash: no job control in this shell
> > contaminates the bash log files causing the test to fail. This happens
> only
> > when run under ptest-runner and not when interactively testing!
> >
> > The changes made to fix this include:
> > 1. Get the process group id (pgid) before forking,
> > 2. Set the pgid in both the parent and child to avoid a race,
> > 3. Find, open and set permission on the child tty, and
> > 4. Allow the child to attach to controlling tty.
> >
> > Also add '-lutil' to Makefile. This lib is from libc and provides
> openpty.
>
>
> Hmmm, I was making the code compile cleanly under clang using
>    -Weverything
> when I noticed:
>
> 1. the 'make check' tests. They still work fine.
> 2. The './ptest-runner -d tests/data -t 1' tests
>     which now generate loads of error like:
>      ERROR: Unable to detach from controlling tty, Inappropriate ioctl
> for device
>
> so while this change fixed the bash-ptest, the ptest-runner self-test
> it did something wrong.... Ah, I'm calling:
>     ioctl(0, TIOCNOTTY) == -1)
> repeatedly in the parent so that's what's generating the extra logs.
> Fixed locally and I'll send a patch but it's not urgent. Phew! :)
>
> Anibal,
>
> If you could reply to explain your plans for Richard's patches
> that would help me figure out when to send the clang warning clean-ups
> commits and what commit to base my work on.
>

Hi,

I plan to take the Richard patches, He added in the recipe to have real
testing and looks like
there aren't problems related to, Richard can you confirm it?,

Regarding the openpty include, I see some linkage problem when running make
check, proposed fix:

...
--- a/Makefile
+++ b/Makefile
@@ -22,19 +22,20 @@ TEST_SOURCES=tests/main.c tests/ptest_list.c
tests/utils.c $(BASE_SOURCES)
 TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
 TEST_EXECUTABLE=ptest-runner-test
 TEST_LDFLAGS=-lm -lrt -lpthread
-TEST_LIBSTATIC=-lcheck -lsubunit
+TEST_LIBSTATIC=-lutil
+TEST_LIBSTATIC_TEST=$(TEST_LIBSTATIC) -lcheck -lsubunit

 TEST_DATA=$(shell echo `pwd`/tests/data)

 all: $(SOURCES) $(EXECUTABLE)

 $(EXECUTABLE): $(OBJECTS)
-       $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
+       $(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(TEST_LIBSTATIC)

 tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)

 $(TEST_EXECUTABLE): $(TEST_OBJECTS)
-       $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@
$(TEST_LIBSTATIC)
+       $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@
$(TEST_LIBSTATIC_TEST)

 check: $(TEST_EXECUTABLE)
        ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
...

Best regards,
Anibal



>
>
> ../Randy
>
> >
> > Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> > Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> > ---
> >   Makefile |   2 +-
> >   utils.c  | 102 +++++++++++++++++++++++++++++++++++++++++++++++++------
> >   2 files changed, 92 insertions(+), 12 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 1bde7be..439eb79 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -29,7 +29,7 @@ TEST_DATA=$(shell echo `pwd`/tests/data)
> >   all: $(SOURCES) $(EXECUTABLE)
> >
> >   $(EXECUTABLE): $(OBJECTS)
> > -     $(CC) $(LDFLAGS) $(OBJECTS) -o $@
> > +     $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
> >
> >   tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
> >
> > diff --git a/utils.c b/utils.c
> > index ad737c2..f11ce39 100644
> > --- a/utils.c
> > +++ b/utils.c
> > @@ -1,5 +1,6 @@
> >   /**
> >    * Copyright (c) 2016 Intel Corporation
> > + * Copyright (C) 2019 Wind River Systems, Inc.
> >    *
> >    * This program is free software; you can redistribute it and/or
> >    * modify it under the terms of the GNU General Public License
> > @@ -22,23 +23,27 @@
> >    */
> >
> >   #define _GNU_SOURCE
> > +
> >   #include <stdio.h>
> >
> > +#include <dirent.h>
> > +#include <errno.h>
> > +#include <fcntl.h>
> > +#include <grp.h>
> >   #include <libgen.h>
> > -#include <signal.h>
> >   #include <poll.h>
> > -#include <fcntl.h>
> > +#include <pty.h>
> > +#include <signal.h>
> > +#include <stdlib.h>
> > +#include <string.h>
> >   #include <time.h>
> > -#include <dirent.h>
> > +#include <unistd.h>
> > +
> > +#include <sys/ioctl.h>
> >   #include <sys/resource.h>
> > +#include <sys/stat.h>
> >   #include <sys/types.h>
> >   #include <sys/wait.h>
> > -#include <sys/stat.h>
> > -#include <unistd.h>
> > -#include <string.h>
> > -#include <stdlib.h>
> > -
> > -#include <errno.h>
> >
> >   #include "ptest_list.h"
> >   #include "utils.h"
> > @@ -346,6 +351,53 @@ wait_child(const char *ptest_dir, const char
> *run_ptest, pid_t pid,
> >       return status;
> >   }
> >
> > +/* Returns an integer file descriptor.
> > + * If it returns < 0, an error has occurred.
> > + * Otherwise, it has returned the slave pty file descriptor.
> > + * fp should be writable, likely stdout/err.
> > + */
> > +static int
> > +setup_slave_pty(FILE *fp) {
> > +     int pty_master = -1;
> > +     int pty_slave = -1;
> > +     char pty_name[256];
> > +     struct group *gptr;
> > +     gid_t gid;
> > +     int slave = -1;
> > +
> > +     if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL) < 0) {
> > +             fprintf(fp, "ERROR: openpty() failed with: %s.\n",
> strerror(errno));
> > +             return -1;
> > +     }
> > +
> > +     if ((gptr = getgrnam(pty_name)) != 0) {
> > +             gid = gptr->gr_gid;
> > +     } else {
> > +             /* If the tty group does not exist, don't change the
> > +              * group on the slave pty, only the owner
> > +              */
> > +             gid = -1;
> > +     }
> > +
> > +     /* chown/chmod the corresponding pty, if possible.
> > +      * This will only work if the process has root permissions.
> > +      */
> > +     if (chown(pty_name, getuid(), gid) != 0) {
> > +             fprintf(fp, "ERROR; chown() failed with: %s.\n",
> strerror(errno));
> > +     }
> > +
> > +     /* Makes the slave read/writeable for the user. */
> > +     if (chmod(pty_name, S_IRUSR|S_IWUSR) != 0) {
> > +             fprintf(fp, "ERROR: chmod() failed with: %s.\n",
> strerror(errno));
> > +     }
> > +
> > +     if ((slave = open(pty_name, O_RDWR)) == -1) {
> > +             fprintf(fp, "ERROR: open() failed with: %s.\n",
> strerror(errno));
> > +     }
> > +     return (slave);
> > +}
> > +
> > +
> >   int
> >   run_ptests(struct ptest_list *head, const struct ptest_options opts,
> >               const char *progname, FILE *fp, FILE *fp_stderr)
> > @@ -362,6 +414,8 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
> >       int timeouted;
> >       time_t sttime, entime;
> >       int duration;
> > +     int slave;
> > +     int pgid = -1;
> >
> >       if (opts.xml_filename) {
> >               xh = xml_create(ptest_list_length(head),
> opts.xml_filename);
> > @@ -379,7 +433,6 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
> >                       close(pipefd_stdout[1]);
> >                       break;
> >               }
> > -
> >               fprintf(fp, "START: %s\n", progname);
> >               PTEST_LIST_ITERATE_START(head, p);
> >                       char *ptest_dir = strdup(p->run_ptest);
> > @@ -388,6 +441,13 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
> >                               break;
> >                       }
> >                       dirname(ptest_dir);
> > +                     if (ioctl(0, TIOCNOTTY) == -1) {
> > +                             fprintf(fp, "ERROR: Unable to detach from
> controlling tty, %s\n", strerror(errno));
> > +                     }
> > +
> > +                     if ((pgid = getpgid(0)) == -1) {
> > +                             fprintf(fp, "ERROR: getpgid() failed,
> %s\n", strerror(errno));
> > +                     }
> >
> >                       child = fork();
> >                       if (child == -1) {
> > @@ -395,13 +455,33 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
> >                               rc = -1;
> >                               break;
> >                       } else if (child == 0) {
> > -                             setsid();
> > +                             close(0);
> > +                             if ((slave = setup_slave_pty(fp)) < 0) {
> > +                                     fprintf(fp, "ERROR: could not
> setup pty (%d).", slave);
> > +                             }
> > +                             if (setpgid(0,pgid) == -1) {
> > +                                     fprintf(fp, "ERROR: setpgid()
> failed, %s\n", strerror(errno));
> > +                             }
> > +
> > +                             if (setsid() ==  -1) {
> > +                                     fprintf(fp, "ERROR: setsid()
> failed, %s\n", strerror(errno));
> > +                             }
> > +
> > +                             if (ioctl(0, TIOCSCTTY, NULL) == -1) {
> > +                                     fprintf(fp, "ERROR: Unable to
> attach to controlling tty, %s\n", strerror(errno));
> > +                             }
> > +
> >                               run_child(p->run_ptest, pipefd_stdout[1],
> pipefd_stderr[1]);
> > +
> >                       } else {
> >                               int status;
> >                               int fds[2]; fds[0] = pipefd_stdout[0];
> fds[1] = pipefd_stderr[0];
> >                               FILE *fps[2]; fps[0] = fp; fps[1] =
> fp_stderr;
> >
> > +                             if (setpgid(child, pgid) == -1) {
> > +                                     fprintf(fp, "ERROR: setpgid()
> failed, %s\n", strerror(errno));
> > +                             }
> > +
> >                               sttime = time(NULL);
> >                               fprintf(fp, "%s\n", get_stime(stime,
> GET_STIME_BUF_SIZE, sttime));
> >                               fprintf(fp, "BEGIN: %s\n", ptest_dir);
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--000000000000e11f7b058c3045a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 19 Jun 2019 at 12:50, Randy M=
acLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com" target=3D"_blank"=
>randy.macleod@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On 6/14/19 10:48 AM, Randy MacLeod wrote:<br>
&gt; When running the run-execscript bash ptest as a user rather than root,=
 a warning:<br>
&gt;=C2=A0 =C2=A0 bash: cannot set terminal process group (16036): Inapprop=
riate ioctl for device<br>
&gt;=C2=A0 =C2=A0 bash: no job control in this shell<br>
&gt; contaminates the bash log files causing the test to fail. This happens=
 only<br>
&gt; when run under ptest-runner and not when interactively testing!<br>
&gt; <br>
&gt; The changes made to fix this include:<br>
&gt; 1. Get the process group id (pgid) before forking,<br>
&gt; 2. Set the pgid in both the parent and child to avoid a race,<br>
&gt; 3. Find, open and set permission on the child tty, and<br>
&gt; 4. Allow the child to attach to controlling tty.<br>
&gt; <br>
&gt; Also add &#39;-lutil&#39; to Makefile. This lib is from libc and provi=
des openpty.<br>
<br>
<br>
Hmmm, I was making the code compile cleanly under clang using<br>
=C2=A0 =C2=A0-Weverything<br>
when I noticed:<br>
<br>
1. the &#39;make check&#39; tests. They still work fine.<br>
2. The &#39;./ptest-runner -d tests/data -t 1&#39; tests<br>
=C2=A0 =C2=A0 which now generate loads of error like:<br>
=C2=A0 =C2=A0 =C2=A0ERROR: Unable to detach from controlling tty, Inappropr=
iate ioctl <br>
for device<br>
<br>
so while this change fixed the bash-ptest, the ptest-runner self-test<br>
it did something wrong.... Ah, I&#39;m calling:<br>
=C2=A0 =C2=A0 ioctl(0, TIOCNOTTY) =3D=3D -1)<br>
repeatedly in the parent so that&#39;s what&#39;s generating the extra logs=
.<br>
Fixed locally and I&#39;ll send a patch but it&#39;s not urgent. Phew! :)<b=
r>
<br>
Anibal,<br>
<br>
If you could reply to explain your plans for Richard&#39;s patches<br>
that would help me figure out when to send the clang warning clean-ups<br>
commits and what commit to base my work on.<br></blockquote><div><br></div>=
<div>Hi,=C2=A0</div><div><br></div><div>I plan to take the Richard patches,=
 He added in the recipe to have real testing and looks like</div><div>there=
 aren&#39;t problems related to, Richard can you confirm it?,</div><div><br=
></div><div>Regarding the openpty include, I see some linkage problem when =
running make check, proposed fix:</div><div><br></div><div>...</div><div>--=
- a/Makefile<br>+++ b/Makefile<br>@@ -22,19 +22,20 @@ TEST_SOURCES=3Dtests/=
main.c tests/ptest_list.c tests/utils.c $(BASE_SOURCES)<br>=C2=A0TEST_OBJEC=
TS=3D$(TEST_SOURCES:.c=3D.o)<br>=C2=A0TEST_EXECUTABLE=3Dptest-runner-test<b=
r>=C2=A0TEST_LDFLAGS=3D-lm -lrt -lpthread<br>-TEST_LIBSTATIC=3D-lcheck -lsu=
bunit<br>+TEST_LIBSTATIC=3D-lutil<br>+TEST_LIBSTATIC_TEST=3D$(TEST_LIBSTATI=
C) -lcheck -lsubunit <br>=C2=A0<br>=C2=A0TEST_DATA=3D$(shell echo `pwd`/tes=
ts/data)<br>=C2=A0<br>=C2=A0all: $(SOURCES) $(EXECUTABLE)<br>=C2=A0<br>=C2=
=A0$(EXECUTABLE): $(OBJECTS)<br>- =C2=A0 =C2=A0 =C2=A0 $(CC) $(LDFLAGS) $(O=
BJECTS) -lutil -o $@<br>+ =C2=A0 =C2=A0 =C2=A0 $(CC) $(LDFLAGS) $(OBJECTS) =
-o $@ $(TEST_LIBSTATIC)<br>=C2=A0<br>=C2=A0tests: $(TEST_SOURCES) $(TEST_EX=
ECUTABLE)<br>=C2=A0<br>=C2=A0$(TEST_EXECUTABLE): $(TEST_OBJECTS)<br>- =C2=
=A0 =C2=A0 =C2=A0 $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@ $(=
TEST_LIBSTATIC)<br>+ =C2=A0 =C2=A0 =C2=A0 $(CC) $(LDFLAGS) $(TEST_LDFLAGS) =
$(TEST_OBJECTS) -o $@ $(TEST_LIBSTATIC_TEST)<br>=C2=A0<br>=C2=A0check: $(TE=
ST_EXECUTABLE)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ./$(TEST_EXECUTABLE) -d $(TES=
T_DATA)<br></div><div>...</div><div><br></div><div>Best regards,</div><div>=
Anibal</div><div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">
<br>
<br>
../Randy<br>
<br>
&gt; <br>
&gt; Signed-off-by: Sakib Sajal &lt;<a href=3D"mailto:sakib.sajal@windriver=
.com" target=3D"_blank">sakib.sajal@windriver.com</a>&gt;<br>
&gt; Signed-off-by: Randy MacLeod &lt;<a href=3D"mailto:Randy.MacLeod@windr=
iver.com" target=3D"_blank">Randy.MacLeod@windriver.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0Makefile |=C2=A0 =C2=A02 +-<br>
&gt;=C2=A0 =C2=A0utils.c=C2=A0 | 102 ++++++++++++++++++++++++++++++++++++++=
+++++++++++------<br>
&gt;=C2=A0 =C2=A02 files changed, 92 insertions(+), 12 deletions(-)<br>
&gt; <br>
&gt; diff --git a/Makefile b/Makefile<br>
&gt; index 1bde7be..439eb79 100644<br>
&gt; --- a/Makefile<br>
&gt; +++ b/Makefile<br>
&gt; @@ -29,7 +29,7 @@ TEST_DATA=3D$(shell echo `pwd`/tests/data)<br>
&gt;=C2=A0 =C2=A0all: $(SOURCES) $(EXECUTABLE)<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0$(EXECUTABLE): $(OBJECTS)<br>
&gt; -=C2=A0 =C2=A0 =C2=A0$(CC) $(LDFLAGS) $(OBJECTS) -o $@<br>
&gt; +=C2=A0 =C2=A0 =C2=A0$(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)<br>
&gt;=C2=A0 =C2=A0<br>
&gt; diff --git a/utils.c b/utils.c<br>
&gt; index ad737c2..f11ce39 100644<br>
&gt; --- a/utils.c<br>
&gt; +++ b/utils.c<br>
&gt; @@ -1,5 +1,6 @@<br>
&gt;=C2=A0 =C2=A0/**<br>
&gt;=C2=A0 =C2=A0 * Copyright (c) 2016 Intel Corporation<br>
&gt; + * Copyright (C) 2019 Wind River Systems, Inc.<br>
&gt;=C2=A0 =C2=A0 *<br>
&gt;=C2=A0 =C2=A0 * This program is free software; you can redistribute it =
and/or<br>
&gt;=C2=A0 =C2=A0 * modify it under the terms of the GNU General Public Lic=
ense<br>
&gt; @@ -22,23 +23,27 @@<br>
&gt;=C2=A0 =C2=A0 */<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0#define _GNU_SOURCE<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0#include &lt;stdio.h&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +#include &lt;dirent.h&gt;<br>
&gt; +#include &lt;errno.h&gt;<br>
&gt; +#include &lt;fcntl.h&gt;<br>
&gt; +#include &lt;grp.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;libgen.h&gt;<br>
&gt; -#include &lt;signal.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;poll.h&gt;<br>
&gt; -#include &lt;fcntl.h&gt;<br>
&gt; +#include &lt;pty.h&gt;<br>
&gt; +#include &lt;signal.h&gt;<br>
&gt; +#include &lt;stdlib.h&gt;<br>
&gt; +#include &lt;string.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;time.h&gt;<br>
&gt; -#include &lt;dirent.h&gt;<br>
&gt; +#include &lt;unistd.h&gt;<br>
&gt; +<br>
&gt; +#include &lt;sys/ioctl.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;sys/resource.h&gt;<br>
&gt; +#include &lt;sys/stat.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;sys/types.h&gt;<br>
&gt;=C2=A0 =C2=A0#include &lt;sys/wait.h&gt;<br>
&gt; -#include &lt;sys/stat.h&gt;<br>
&gt; -#include &lt;unistd.h&gt;<br>
&gt; -#include &lt;string.h&gt;<br>
&gt; -#include &lt;stdlib.h&gt;<br>
&gt; -<br>
&gt; -#include &lt;errno.h&gt;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0#include &quot;ptest_list.h&quot;<br>
&gt;=C2=A0 =C2=A0#include &quot;utils.h&quot;<br>
&gt; @@ -346,6 +351,53 @@ wait_child(const char *ptest_dir, const char *run=
_ptest, pid_t pid,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0return status;<br>
&gt;=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +/* Returns an integer file descriptor.<br>
&gt; + * If it returns &lt; 0, an error has occurred.<br>
&gt; + * Otherwise, it has returned the slave pty file descriptor.<br>
&gt; + * fp should be writable, likely stdout/err.<br>
&gt; + */<br>
&gt; +static int<br>
&gt; +setup_slave_pty(FILE *fp) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int pty_master =3D -1;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int pty_slave =3D -1;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0char pty_name[256];<br>
&gt; +=C2=A0 =C2=A0 =C2=A0struct group *gptr;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0gid_t gid;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int slave =3D -1;<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (openpty(&amp;pty_master, &amp;pty_slave, pty_=
name, NULL, NULL) &lt; 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERR=
OR: openpty() failed with: %s.\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((gptr =3D getgrnam(pty_name)) !=3D 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gid =3D gptr-&gt;gr_g=
id;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0} else {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* If the tty group d=
oes not exist, don&#39;t change the<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * group on the slave=
 pty, only the owner<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gid =3D -1;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* chown/chmod the corresponding pty, if possible=
.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 * This will only work if the process has root pe=
rmissions.<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 */<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (chown(pty_name, getuid(), gid) !=3D 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERR=
OR; chown() failed with: %s.\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0/* Makes the slave read/writeable for the user. *=
/<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if (chmod(pty_name, S_IRUSR|S_IWUSR) !=3D 0) {<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERR=
OR: chmod() failed with: %s.\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0if ((slave =3D open(pty_name, O_RDWR)) =3D=3D -1)=
 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERR=
OR: open() failed with: %s.\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0return (slave);<br>
&gt; +}<br>
&gt; +<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0int<br>
&gt;=C2=A0 =C2=A0run_ptests(struct ptest_list *head, const struct ptest_opt=
ions opts,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0const char *prog=
name, FILE *fp, FILE *fp_stderr)<br>
&gt; @@ -362,6 +414,8 @@ run_ptests(struct ptest_list *head, const struct p=
test_options opts,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int timeouted;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0time_t sttime, entime;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0int duration;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int slave;<br>
&gt; +=C2=A0 =C2=A0 =C2=A0int pgid =3D -1;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if (opts.xml_filename) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0xh =3D xml_creat=
e(ptest_list_length(head), opts.xml_filename);<br>
&gt; @@ -379,7 +433,6 @@ run_ptests(struct ptest_list *head, const struct p=
test_options opts,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0close(pipefd_stdout[1]);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; -<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quo=
t;START: %s\n&quot;, progname);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0PTEST_LIST_ITERA=
TE_START(head, p);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0char *ptest_dir =3D strdup(p-&gt;run_ptest);<br>
&gt; @@ -388,6 +441,13 @@ run_ptests(struct ptest_list *head, const struct =
ptest_options opts,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0dirname(ptest_dir);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERROR: Unable to detac=
h from controlling tty, %s\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0if ((pgid =3D getpgid(0)) =3D=3D -1) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERROR: getpgid() faile=
d, %s\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0}<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0child =3D fork();<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0if (child =3D=3D -1) {<br>
&gt; @@ -395,13 +455,33 @@ run_ptests(struct ptest_list *head, const struct=
 ptest_options opts,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rc =3D -1;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0break;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0} else if (child =3D=3D 0) {<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0setsid();<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0close(0);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave =3D setup_slave_pty(fp)) &lt;=
 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, =
&quot;ERROR: could not setup pty (%d).&quot;, slave);<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (setpgid(0,pgid) =3D=3D -1) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, =
&quot;ERROR: setpgid() failed, %s\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (setsid() =3D=3D=C2=A0 -1) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, =
&quot;ERROR: setsid() failed, %s\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ioctl(0, TIOCSCTTY, NULL) =3D=3D -1)=
 {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, =
&quot;ERROR: Unable to attach to controlling tty, %s\n&quot;, strerror(errn=
o));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0run_child(p-&gt;run_ptest, pipefd_=
stdout[1], pipefd_stderr[1]);<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0} else {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int status;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0int fds[2]; fds[0] =3D pipefd_stdo=
ut[0]; fds[1] =3D pipefd_stderr[0];<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0FILE *fps[2]; fps[0] =3D fp; fps[1=
] =3D fp_stderr;<br>
&gt;=C2=A0 =C2=A0<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (setpgid(child, pgid) =3D=3D -1) {<br=
>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, =
&quot;ERROR: setpgid() failed, %s\n&quot;, strerror(errno));<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; +<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sttime =3D time(NULL);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;%s\n&quot;, get_=
stime(stime, GET_STIME_BUF_SIZE, sttime));<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;BEGIN: %s\n&quot=
;, ptest_dir);<br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div></div>

--000000000000e11f7b058c3045a3--
