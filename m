Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FF63E00D74; Wed, 26 Jun 2019 08:56:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE68E00951
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2019 08:56:57 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x5QFtcmh013882
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 26 Jun 2019 08:56:09 -0700
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.439.0;
	Wed, 26 Jun 2019 08:55:56 -0700
To: Anibal Limon <anibal.limon@linaro.org>
References: <20190613223928.14424-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-1-Randy.MacLeod@windriver.com>
	<20190614144853.25839-5-Randy.MacLeod@windriver.com>
	<98784449-a7d4-1015-2918-600e9c6f2c1c@windriver.com>
	<CA+_AqisMBmPaNy7xyt1+9c73RnMcChugCcxz6Bb4cBOCHG=-kQ@mail.gmail.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <ffe4bdfd-5a89-1c4f-87cf-dbd27b3025e5@windriver.com>
Date: Wed, 26 Jun 2019 11:55:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CA+_AqisMBmPaNy7xyt1+9c73RnMcChugCcxz6Bb4cBOCHG=-kQ@mail.gmail.com>
X-Originating-IP: [172.25.44.5]
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
X-List-Received-Date: Wed, 26 Jun 2019 15:56:59 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 6/25/19 9:51 PM, Anibal Limon wrote:
> 
> 
> On Wed, 19 Jun 2019 at 12:50, Randy MacLeod <randy.macleod@windriver.com 
> <mailto:randy.macleod@windriver.com>> wrote:
> 
>     On 6/14/19 10:48 AM, Randy MacLeod wrote:
>      > When running the run-execscript bash ptest as a user rather than
>     root, a warning:
>      >    bash: cannot set terminal process group (16036): Inappropriate
>     ioctl for device
>      >    bash: no job control in this shell
>      > contaminates the bash log files causing the test to fail. This
>     happens only
>      > when run under ptest-runner and not when interactively testing!
>      >
>      > The changes made to fix this include:
>      > 1. Get the process group id (pgid) before forking,
>      > 2. Set the pgid in both the parent and child to avoid a race,
>      > 3. Find, open and set permission on the child tty, and
>      > 4. Allow the child to attach to controlling tty.
>      >
>      > Also add '-lutil' to Makefile. This lib is from libc and provides
>     openpty.
> 
> 
>     Hmmm, I was making the code compile cleanly under clang using
>         -Weverything
>     when I noticed:
> 
>     1. the 'make check' tests. They still work fine.
>     2. The './ptest-runner -d tests/data -t 1' tests
>          which now generate loads of error like:
>           ERROR: Unable to detach from controlling tty, Inappropriate ioctl
>     for device
> 
>     so while this change fixed the bash-ptest, the ptest-runner self-test
>     it did something wrong.... Ah, I'm calling:
>          ioctl(0, TIOCNOTTY) == -1)
>     repeatedly in the parent so that's what's generating the extra logs.
>     Fixed locally and I'll send a patch but it's not urgent. Phew! :)
> 
>     Anibal,
> 
>     If you could reply to explain your plans for Richard's patches
>     that would help me figure out when to send the clang warning clean-ups
>     commits and what commit to base my work on.
> 
> 
> Hi,
> 
> I plan to take the Richard patches, He added in the recipe to have real 
> testing and looks like
> there aren't problems related to, Richard can you confirm it?,
> 
> Regarding the openpty include, I see some linkage problem when running 
> make check, proposed fix:

Yes, I had noticed that and fixed it as well.

I'll send my latest patch series once you have merged
Richard's changes into master. Hopefully that will be today... :)

I decided to compile with:
   clang -Weverything
to see if there were any problems and there
were quite a few things to fix. Now, for the most part,
neither clang nor gcc complain about the code.

../Randy

> 
> ...
> --- a/Makefile
> +++ b/Makefile
> @@ -22,19 +22,20 @@ TEST_SOURCES=tests/main.c tests/ptest_list.c 
> tests/utils.c $(BASE_SOURCES)
>   TEST_OBJECTS=$(TEST_SOURCES:.c=.o)
>   TEST_EXECUTABLE=ptest-runner-test
>   TEST_LDFLAGS=-lm -lrt -lpthread
> -TEST_LIBSTATIC=-lcheck -lsubunit
> +TEST_LIBSTATIC=-lutil
> +TEST_LIBSTATIC_TEST=$(TEST_LIBSTATIC) -lcheck -lsubunit
> 
>   TEST_DATA=$(shell echo `pwd`/tests/data)
> 
>   all: $(SOURCES) $(EXECUTABLE)
> 
>   $(EXECUTABLE): $(OBJECTS)
> -       $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
> +       $(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(TEST_LIBSTATIC)
> 
>   tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
> 
>   $(TEST_EXECUTABLE): $(TEST_OBJECTS)
> -       $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@ 
> $(TEST_LIBSTATIC)
> +       $(CC) $(LDFLAGS) $(TEST_LDFLAGS) $(TEST_OBJECTS) -o $@ 
> $(TEST_LIBSTATIC_TEST)
> 
>   check: $(TEST_EXECUTABLE)
>          ./$(TEST_EXECUTABLE) -d $(TEST_DATA)
> ...
> 
> Best regards,
> Anibal
> 
> 
> 
>     ../Randy
> 
>      >
>      > Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com
>     <mailto:sakib.sajal@windriver.com>>
>      > Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com
>     <mailto:Randy.MacLeod@windriver.com>>
>      > ---
>      >   Makefile |   2 +-
>      >   utils.c  | 102
>     +++++++++++++++++++++++++++++++++++++++++++++++++------
>      >   2 files changed, 92 insertions(+), 12 deletions(-)
>      >
>      > diff --git a/Makefile b/Makefile
>      > index 1bde7be..439eb79 100644
>      > --- a/Makefile
>      > +++ b/Makefile
>      > @@ -29,7 +29,7 @@ TEST_DATA=$(shell echo `pwd`/tests/data)
>      >   all: $(SOURCES) $(EXECUTABLE)
>      >
>      >   $(EXECUTABLE): $(OBJECTS)
>      > -     $(CC) $(LDFLAGS) $(OBJECTS) -o $@
>      > +     $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
>      >
>      >   tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
>      >
>      > diff --git a/utils.c b/utils.c
>      > index ad737c2..f11ce39 100644
>      > --- a/utils.c
>      > +++ b/utils.c
>      > @@ -1,5 +1,6 @@
>      >   /**
>      >    * Copyright (c) 2016 Intel Corporation
>      > + * Copyright (C) 2019 Wind River Systems, Inc.
>      >    *
>      >    * This program is free software; you can redistribute it and/or
>      >    * modify it under the terms of the GNU General Public License
>      > @@ -22,23 +23,27 @@
>      >    */
>      >
>      >   #define _GNU_SOURCE
>      > +
>      >   #include <stdio.h>
>      >
>      > +#include <dirent.h>
>      > +#include <errno.h>
>      > +#include <fcntl.h>
>      > +#include <grp.h>
>      >   #include <libgen.h>
>      > -#include <signal.h>
>      >   #include <poll.h>
>      > -#include <fcntl.h>
>      > +#include <pty.h>
>      > +#include <signal.h>
>      > +#include <stdlib.h>
>      > +#include <string.h>
>      >   #include <time.h>
>      > -#include <dirent.h>
>      > +#include <unistd.h>
>      > +
>      > +#include <sys/ioctl.h>
>      >   #include <sys/resource.h>
>      > +#include <sys/stat.h>
>      >   #include <sys/types.h>
>      >   #include <sys/wait.h>
>      > -#include <sys/stat.h>
>      > -#include <unistd.h>
>      > -#include <string.h>
>      > -#include <stdlib.h>
>      > -
>      > -#include <errno.h>
>      >
>      >   #include "ptest_list.h"
>      >   #include "utils.h"
>      > @@ -346,6 +351,53 @@ wait_child(const char *ptest_dir, const char
>     *run_ptest, pid_t pid,
>      >       return status;
>      >   }
>      >
>      > +/* Returns an integer file descriptor.
>      > + * If it returns < 0, an error has occurred.
>      > + * Otherwise, it has returned the slave pty file descriptor.
>      > + * fp should be writable, likely stdout/err.
>      > + */
>      > +static int
>      > +setup_slave_pty(FILE *fp) {
>      > +     int pty_master = -1;
>      > +     int pty_slave = -1;
>      > +     char pty_name[256];
>      > +     struct group *gptr;
>      > +     gid_t gid;
>      > +     int slave = -1;
>      > +
>      > +     if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL)
>     < 0) {
>      > +             fprintf(fp, "ERROR: openpty() failed with: %s.\n",
>     strerror(errno));
>      > +             return -1;
>      > +     }
>      > +
>      > +     if ((gptr = getgrnam(pty_name)) != 0) {
>      > +             gid = gptr->gr_gid;
>      > +     } else {
>      > +             /* If the tty group does not exist, don't change the
>      > +              * group on the slave pty, only the owner
>      > +              */
>      > +             gid = -1;
>      > +     }
>      > +
>      > +     /* chown/chmod the corresponding pty, if possible.
>      > +      * This will only work if the process has root permissions.
>      > +      */
>      > +     if (chown(pty_name, getuid(), gid) != 0) {
>      > +             fprintf(fp, "ERROR; chown() failed with: %s.\n",
>     strerror(errno));
>      > +     }
>      > +
>      > +     /* Makes the slave read/writeable for the user. */
>      > +     if (chmod(pty_name, S_IRUSR|S_IWUSR) != 0) {
>      > +             fprintf(fp, "ERROR: chmod() failed with: %s.\n",
>     strerror(errno));
>      > +     }
>      > +
>      > +     if ((slave = open(pty_name, O_RDWR)) == -1) {
>      > +             fprintf(fp, "ERROR: open() failed with: %s.\n",
>     strerror(errno));
>      > +     }
>      > +     return (slave);
>      > +}
>      > +
>      > +
>      >   int
>      >   run_ptests(struct ptest_list *head, const struct ptest_options
>     opts,
>      >               const char *progname, FILE *fp, FILE *fp_stderr)
>      > @@ -362,6 +414,8 @@ run_ptests(struct ptest_list *head, const
>     struct ptest_options opts,
>      >       int timeouted;
>      >       time_t sttime, entime;
>      >       int duration;
>      > +     int slave;
>      > +     int pgid = -1;
>      >
>      >       if (opts.xml_filename) {
>      >               xh = xml_create(ptest_list_length(head),
>     opts.xml_filename);
>      > @@ -379,7 +433,6 @@ run_ptests(struct ptest_list *head, const
>     struct ptest_options opts,
>      >                       close(pipefd_stdout[1]);
>      >                       break;
>      >               }
>      > -
>      >               fprintf(fp, "START: %s\n", progname);
>      >               PTEST_LIST_ITERATE_START(head, p);
>      >                       char *ptest_dir = strdup(p->run_ptest);
>      > @@ -388,6 +441,13 @@ run_ptests(struct ptest_list *head, const
>     struct ptest_options opts,
>      >                               break;
>      >                       }
>      >                       dirname(ptest_dir);
>      > +                     if (ioctl(0, TIOCNOTTY) == -1) {
>      > +                             fprintf(fp, "ERROR: Unable to
>     detach from controlling tty, %s\n", strerror(errno));
>      > +                     }
>      > +
>      > +                     if ((pgid = getpgid(0)) == -1) {
>      > +                             fprintf(fp, "ERROR: getpgid()
>     failed, %s\n", strerror(errno));
>      > +                     }
>      >
>      >                       child = fork();
>      >                       if (child == -1) {
>      > @@ -395,13 +455,33 @@ run_ptests(struct ptest_list *head, const
>     struct ptest_options opts,
>      >                               rc = -1;
>      >                               break;
>      >                       } else if (child == 0) {
>      > -                             setsid();
>      > +                             close(0);
>      > +                             if ((slave = setup_slave_pty(fp)) <
>     0) {
>      > +                                     fprintf(fp, "ERROR: could
>     not setup pty (%d).", slave);
>      > +                             }
>      > +                             if (setpgid(0,pgid) == -1) {
>      > +                                     fprintf(fp, "ERROR:
>     setpgid() failed, %s\n", strerror(errno));
>      > +                             }
>      > +
>      > +                             if (setsid() ==  -1) {
>      > +                                     fprintf(fp, "ERROR:
>     setsid() failed, %s\n", strerror(errno));
>      > +                             }
>      > +
>      > +                             if (ioctl(0, TIOCSCTTY, NULL) == -1) {
>      > +                                     fprintf(fp, "ERROR: Unable
>     to attach to controlling tty, %s\n", strerror(errno));
>      > +                             }
>      > +
>      >                               run_child(p->run_ptest,
>     pipefd_stdout[1], pipefd_stderr[1]);
>      > +
>      >                       } else {
>      >                               int status;
>      >                               int fds[2]; fds[0] =
>     pipefd_stdout[0]; fds[1] = pipefd_stderr[0];
>      >                               FILE *fps[2]; fps[0] = fp; fps[1] =
>     fp_stderr;
>      >
>      > +                             if (setpgid(child, pgid) == -1) {
>      > +                                     fprintf(fp, "ERROR:
>     setpgid() failed, %s\n", strerror(errno));
>      > +                             }
>      > +
>      >                               sttime = time(NULL);
>      >                               fprintf(fp, "%s\n",
>     get_stime(stime, GET_STIME_BUF_SIZE, sttime));
>      >                               fprintf(fp, "BEGIN: %s\n", ptest_dir);
>      >
> 
> 
>     -- 
>     # Randy MacLeod
>     # Wind River Linux
> 


-- 
# Randy MacLeod
# Wind River Linux

