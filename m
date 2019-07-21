Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FDA3E00D4D; Sun, 21 Jul 2019 12:21:47 -0700 (PDT)
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
	*      [209.85.217.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 325AAE00927
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2019 12:21:46 -0700 (PDT)
Received: by mail-vs1-f66.google.com with SMTP id 2so24729494vso.8
	for <yocto@yoctoproject.org>; Sun, 21 Jul 2019 12:21:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=d1a1teQscq4VvhuKkyZ9uPuQ/OFgo5e7PMOTatOIRlA=;
	b=xM6de0fCrbvftVNhEaqnqk1aHTuPLVfI/ur7UhntorGXzx4/s7YpgxpxXvSCrqTjlE
	URHsrFgRuywFyZ/63tFiVfFmTl2edf78Mm3MhadQNZC+hvPv9LmtGzo1k6JcXw7K0PjP
	LrckYlohTV6+9yfDTyRcjOZg10S0Yb7326KcvEdrkgKpDPeE9k3C/zPCYwzGw8+znzcC
	ltjjjlf78vMSs/MZ30RHpYopCX94UxxckhuByrTDItV55hGTreaiGr/KBe7VSJZL1vDO
	jecCBfv8/NACJURFTjuABYkx2gb0FRu4jPDG+LXzIqkHZVm9+ZJtimqDvNwARrDnDACS
	LVoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=d1a1teQscq4VvhuKkyZ9uPuQ/OFgo5e7PMOTatOIRlA=;
	b=mbDBsZ/EQc5LUmZEUu+RaAxHa9+gkQzVLzrlJ1/m2Zbep9Dvn69DfTx9PBjM0MHTl9
	upYR2/xMA6lnJOfuPbR0eBcSfVdPBAfo8vUdafQy8WS4F/gRV+IyomgLGm7pWkNZFLZr
	+rHjnEKk4Byz/6Ia9dRpnZQYutpVcUrXR/40I35TZImnT+cL8kRg/JmeafTj/lGq1nxc
	PA7HOR1bX/wGOG82paIIIctNATPhbRwzYRZgrvWj5/mEQAL8PUVyV4pp4BjzXrpqAbqH
	e0udp/d+b9nKBDZWYv34b7MNgYURSXtYTo+Ml/HNn+bxwUt108MA7fSzYfW3Qou3Fd4I
	gQjg==
X-Gm-Message-State: APjAAAWpQLCPegmNFCXBsrIWdAd0bYoGJ2C3ajxpuHDaxP5A5rKfZCB+
	x7mTQimAEWSQSwol0MMwOJFYIHN9qMiSLP5KHkPEScj5
X-Google-Smtp-Source: APXvYqwobydnvOXe0dgZX9e17MXgHa0bVkc7G5SE4GZ5fPWTNdH162rCHY7jm9ZmqjhcQXnh2zlXnm13+X6Yeal5Fz8=
X-Received: by 2002:a67:f657:: with SMTP id u23mr5281033vso.154.1563736905457; 
	Sun, 21 Jul 2019 12:21:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
In-Reply-To: <20190717183530.24893-1-Randy.MacLeod@windriver.com>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Sun, 21 Jul 2019 14:22:44 -0500
Message-ID: <CA+_Aqivozsh==f+ifCwYtHBnDRJwPt7AvJYPDTqMkj3f63kcKQ@mail.gmail.com>
To: Randy MacLeod <Randy.MacLeod@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [ptest-runner][PATCH 1/4] utils: ensure child can be session leader
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
X-List-Received-Date: Sun, 21 Jul 2019 19:21:47 -0000
Content-Type: multipart/alternative; boundary="000000000000c5b994058e35def9"

--000000000000c5b994058e35def9
Content-Type: text/plain; charset="UTF-8"

Hi Randy,

Thanks for the patches, I pushed this one to master, I will review the
clang warning patches.

Cheers,
Anibal

On Wed, 17 Jul 2019 at 13:35, Randy MacLeod <Randy.MacLeod@windriver.com>
wrote:

> When running the run-execscript bash ptest as a user rather than root, a
> warning:
>   bash: cannot set terminal process group (16036): Inappropriate ioctl for
> device
>   bash: no job control in this shell
> contaminates the bash log files causing the test to fail. This happens only
> when run under ptest-runner and not when interactively testing!
>
> The changes made to fix this include:
> 1. Get the process group id (pgid) before forking,
> 2. Set the pgid in both the parent and child to avoid a race,
> 3. Find, open and set permission on the child tty, and
> 4. Allow the child to attach to controlling tty.
>
> Also add '-lutil' to Makefile. This lib is from libc and provides openpty.
>
> Upstream-Status: Submitted [yocto@yoctoproject.org]
>
> Signed-off-by: Sakib Sajal <sakib.sajal@windriver.com>
> Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
> ---
>  Makefile |   2 +-
>  utils.c  | 102 +++++++++++++++++++++++++++++++++++++++++++++++++------
>  2 files changed, 92 insertions(+), 12 deletions(-)
>
> diff --git a/Makefile b/Makefile
> index 1bde7be..439eb79 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -29,7 +29,7 @@ TEST_DATA=$(shell echo `pwd`/tests/data)
>  all: $(SOURCES) $(EXECUTABLE)
>
>  $(EXECUTABLE): $(OBJECTS)
> -       $(CC) $(LDFLAGS) $(OBJECTS) -o $@
> +       $(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@
>
>  tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)
>
> diff --git a/utils.c b/utils.c
> index ad737c2..f11ce39 100644
> --- a/utils.c
> +++ b/utils.c
> @@ -1,5 +1,6 @@
>  /**
>   * Copyright (c) 2016 Intel Corporation
> + * Copyright (C) 2019 Wind River Systems, Inc.
>   *
>   * This program is free software; you can redistribute it and/or
>   * modify it under the terms of the GNU General Public License
> @@ -22,23 +23,27 @@
>   */
>
>  #define _GNU_SOURCE
> +
>  #include <stdio.h>
>
> +#include <dirent.h>
> +#include <errno.h>
> +#include <fcntl.h>
> +#include <grp.h>
>  #include <libgen.h>
> -#include <signal.h>
>  #include <poll.h>
> -#include <fcntl.h>
> +#include <pty.h>
> +#include <signal.h>
> +#include <stdlib.h>
> +#include <string.h>
>  #include <time.h>
> -#include <dirent.h>
> +#include <unistd.h>
> +
> +#include <sys/ioctl.h>
>  #include <sys/resource.h>
> +#include <sys/stat.h>
>  #include <sys/types.h>
>  #include <sys/wait.h>
> -#include <sys/stat.h>
> -#include <unistd.h>
> -#include <string.h>
> -#include <stdlib.h>
> -
> -#include <errno.h>
>
>  #include "ptest_list.h"
>  #include "utils.h"
> @@ -346,6 +351,53 @@ wait_child(const char *ptest_dir, const char
> *run_ptest, pid_t pid,
>         return status;
>  }
>
> +/* Returns an integer file descriptor.
> + * If it returns < 0, an error has occurred.
> + * Otherwise, it has returned the slave pty file descriptor.
> + * fp should be writable, likely stdout/err.
> + */
> +static int
> +setup_slave_pty(FILE *fp) {
> +       int pty_master = -1;
> +       int pty_slave = -1;
> +       char pty_name[256];
> +       struct group *gptr;
> +       gid_t gid;
> +       int slave = -1;
> +
> +       if (openpty(&pty_master, &pty_slave, pty_name, NULL, NULL) < 0) {
> +               fprintf(fp, "ERROR: openpty() failed with: %s.\n",
> strerror(errno));
> +               return -1;
> +       }
> +
> +       if ((gptr = getgrnam(pty_name)) != 0) {
> +               gid = gptr->gr_gid;
> +       } else {
> +               /* If the tty group does not exist, don't change the
> +                * group on the slave pty, only the owner
> +                */
> +               gid = -1;
> +       }
> +
> +       /* chown/chmod the corresponding pty, if possible.
> +        * This will only work if the process has root permissions.
> +        */
> +       if (chown(pty_name, getuid(), gid) != 0) {
> +               fprintf(fp, "ERROR; chown() failed with: %s.\n",
> strerror(errno));
> +       }
> +
> +       /* Makes the slave read/writeable for the user. */
> +       if (chmod(pty_name, S_IRUSR|S_IWUSR) != 0) {
> +               fprintf(fp, "ERROR: chmod() failed with: %s.\n",
> strerror(errno));
> +       }
> +
> +       if ((slave = open(pty_name, O_RDWR)) == -1) {
> +               fprintf(fp, "ERROR: open() failed with: %s.\n",
> strerror(errno));
> +       }
> +       return (slave);
> +}
> +
> +
>  int
>  run_ptests(struct ptest_list *head, const struct ptest_options opts,
>                 const char *progname, FILE *fp, FILE *fp_stderr)
> @@ -362,6 +414,8 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>         int timeouted;
>         time_t sttime, entime;
>         int duration;
> +       int slave;
> +       int pgid = -1;
>
>         if (opts.xml_filename) {
>                 xh = xml_create(ptest_list_length(head),
> opts.xml_filename);
> @@ -379,7 +433,6 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                         close(pipefd_stdout[1]);
>                         break;
>                 }
> -
>                 fprintf(fp, "START: %s\n", progname);
>                 PTEST_LIST_ITERATE_START(head, p);
>                         char *ptest_dir = strdup(p->run_ptest);
> @@ -388,6 +441,13 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                                 break;
>                         }
>                         dirname(ptest_dir);
> +                       if (ioctl(0, TIOCNOTTY) == -1) {
> +                               fprintf(fp, "ERROR: Unable to detach from
> controlling tty, %s\n", strerror(errno));
> +                       }
> +
> +                       if ((pgid = getpgid(0)) == -1) {
> +                               fprintf(fp, "ERROR: getpgid() failed,
> %s\n", strerror(errno));
> +                       }
>
>                         child = fork();
>                         if (child == -1) {
> @@ -395,13 +455,33 @@ run_ptests(struct ptest_list *head, const struct
> ptest_options opts,
>                                 rc = -1;
>                                 break;
>                         } else if (child == 0) {
> -                               setsid();
> +                               close(0);
> +                               if ((slave = setup_slave_pty(fp)) < 0) {
> +                                       fprintf(fp, "ERROR: could not
> setup pty (%d).", slave);
> +                               }
> +                               if (setpgid(0,pgid) == -1) {
> +                                       fprintf(fp, "ERROR: setpgid()
> failed, %s\n", strerror(errno));
> +                               }
> +
> +                               if (setsid() ==  -1) {
> +                                       fprintf(fp, "ERROR: setsid()
> failed, %s\n", strerror(errno));
> +                               }
> +
> +                               if (ioctl(0, TIOCSCTTY, NULL) == -1) {
> +                                       fprintf(fp, "ERROR: Unable to
> attach to controlling tty, %s\n", strerror(errno));
> +                               }
> +
>                                 run_child(p->run_ptest, pipefd_stdout[1],
> pipefd_stderr[1]);
> +
>                         } else {
>                                 int status;
>                                 int fds[2]; fds[0] = pipefd_stdout[0];
> fds[1] = pipefd_stderr[0];
>                                 FILE *fps[2]; fps[0] = fp; fps[1] =
> fp_stderr;
>
> +                               if (setpgid(child, pgid) == -1) {
> +                                       fprintf(fp, "ERROR: setpgid()
> failed, %s\n", strerror(errno));
> +                               }
> +
>                                 sttime = time(NULL);
>                                 fprintf(fp, "%s\n", get_stime(stime,
> GET_STIME_BUF_SIZE, sttime));
>                                 fprintf(fp, "BEGIN: %s\n", ptest_dir);
> --
> 2.17.0
>
>

--000000000000c5b994058e35def9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Randy,<div><br></div><div>Thanks for the patches, I pus=
hed this one to master, I will review the clang warning patches.</div><div>=
<br></div><div>Cheers,</div><div>Anibal</div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 17 Jul 2019 at 13:35, =
Randy MacLeod &lt;<a href=3D"mailto:Randy.MacLeod@windriver.com">Randy.MacL=
eod@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">When running the run-execscript bash ptest as a user rathe=
r than root, a warning:<br>
=C2=A0 bash: cannot set terminal process group (16036): Inappropriate ioctl=
 for device<br>
=C2=A0 bash: no job control in this shell<br>
contaminates the bash log files causing the test to fail. This happens only=
<br>
when run under ptest-runner and not when interactively testing!<br>
<br>
The changes made to fix this include:<br>
1. Get the process group id (pgid) before forking,<br>
2. Set the pgid in both the parent and child to avoid a race,<br>
3. Find, open and set permission on the child tty, and<br>
4. Allow the child to attach to controlling tty.<br>
<br>
Also add &#39;-lutil&#39; to Makefile. This lib is from libc and provides o=
penpty.<br>
<br>
Upstream-Status: Submitted [<a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank">yocto@yoctoproject.org</a>]<br>
<br>
Signed-off-by: Sakib Sajal &lt;<a href=3D"mailto:sakib.sajal@windriver.com"=
 target=3D"_blank">sakib.sajal@windriver.com</a>&gt;<br>
Signed-off-by: Randy MacLeod &lt;<a href=3D"mailto:Randy.MacLeod@windriver.=
com" target=3D"_blank">Randy.MacLeod@windriver.com</a>&gt;<br>
---<br>
=C2=A0Makefile |=C2=A0 =C2=A02 +-<br>
=C2=A0utils.c=C2=A0 | 102 +++++++++++++++++++++++++++++++++++++++++++++++++=
------<br>
=C2=A02 files changed, 92 insertions(+), 12 deletions(-)<br>
<br>
diff --git a/Makefile b/Makefile<br>
index 1bde7be..439eb79 100644<br>
--- a/Makefile<br>
+++ b/Makefile<br>
@@ -29,7 +29,7 @@ TEST_DATA=3D$(shell echo `pwd`/tests/data)<br>
=C2=A0all: $(SOURCES) $(EXECUTABLE)<br>
<br>
=C2=A0$(EXECUTABLE): $(OBJECTS)<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) $(LDFLAGS) $(OBJECTS) -o $@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0$(CC) $(LDFLAGS) $(OBJECTS) -lutil -o $@<br>
<br>
=C2=A0tests: $(TEST_SOURCES) $(TEST_EXECUTABLE)<br>
<br>
diff --git a/utils.c b/utils.c<br>
index ad737c2..f11ce39 100644<br>
--- a/utils.c<br>
+++ b/utils.c<br>
@@ -1,5 +1,6 @@<br>
=C2=A0/**<br>
=C2=A0 * Copyright (c) 2016 Intel Corporation<br>
+ * Copyright (C) 2019 Wind River Systems, Inc.<br>
=C2=A0 *<br>
=C2=A0 * This program is free software; you can redistribute it and/or<br>
=C2=A0 * modify it under the terms of the GNU General Public License<br>
@@ -22,23 +23,27 @@<br>
=C2=A0 */<br>
<br>
=C2=A0#define _GNU_SOURCE <br>
+<br>
=C2=A0#include &lt;stdio.h&gt;<br>
<br>
+#include &lt;dirent.h&gt;<br>
+#include &lt;errno.h&gt;<br>
+#include &lt;fcntl.h&gt;<br>
+#include &lt;grp.h&gt;<br>
=C2=A0#include &lt;libgen.h&gt;<br>
-#include &lt;signal.h&gt;<br>
=C2=A0#include &lt;poll.h&gt;<br>
-#include &lt;fcntl.h&gt;<br>
+#include &lt;pty.h&gt;<br>
+#include &lt;signal.h&gt;<br>
+#include &lt;stdlib.h&gt;<br>
+#include &lt;string.h&gt;<br>
=C2=A0#include &lt;time.h&gt;<br>
-#include &lt;dirent.h&gt;<br>
+#include &lt;unistd.h&gt;<br>
+<br>
+#include &lt;sys/ioctl.h&gt;<br>
=C2=A0#include &lt;sys/resource.h&gt;<br>
+#include &lt;sys/stat.h&gt;<br>
=C2=A0#include &lt;sys/types.h&gt;<br>
=C2=A0#include &lt;sys/wait.h&gt;<br>
-#include &lt;sys/stat.h&gt;<br>
-#include &lt;unistd.h&gt;<br>
-#include &lt;string.h&gt;<br>
-#include &lt;stdlib.h&gt;<br>
-<br>
-#include &lt;errno.h&gt;<br>
<br>
=C2=A0#include &quot;ptest_list.h&quot;<br>
=C2=A0#include &quot;utils.h&quot;<br>
@@ -346,6 +351,53 @@ wait_child(const char *ptest_dir, const char *run_ptes=
t, pid_t pid,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return status;<br>
=C2=A0}<br>
<br>
+/* Returns an integer file descriptor.<br>
+ * If it returns &lt; 0, an error has occurred.<br>
+ * Otherwise, it has returned the slave pty file descriptor.<br>
+ * fp should be writable, likely stdout/err.<br>
+ */<br>
+static int<br>
+setup_slave_pty(FILE *fp) { <br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int pty_master =3D -1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int pty_slave =3D -1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0char pty_name[256];<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0struct group *gptr;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0gid_t gid;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int slave =3D -1;<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (openpty(&amp;pty_master, &amp;pty_slave, pt=
y_name, NULL, NULL) &lt; 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;E=
RROR: openpty() failed with: %s.\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return -1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((gptr =3D getgrnam(pty_name)) !=3D 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gid =3D gptr-&gt;gr=
_gid;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0} else {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* If the tty group=
 does not exist, don&#39;t change the<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 * group on the sla=
ve pty, only the owner<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gid =3D -1;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* chown/chmod the corresponding pty, if possib=
le.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 * This will only work if the process has root =
permissions.<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (chown(pty_name, getuid(), gid) !=3D 0) {<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;E=
RROR; chown() failed with: %s.\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/* Makes the slave read/writeable for the user.=
 */<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if (chmod(pty_name, S_IRUSR|S_IWUSR) !=3D 0) {<=
br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;E=
RROR: chmod() failed with: %s.\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave =3D open(pty_name, O_RDWR)) =3D=3D -=
1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;E=
RROR: open() failed with: %s.\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0return (slave);<br>
+}<br>
+<br>
+<br>
=C2=A0int<br>
=C2=A0run_ptests(struct ptest_list *head, const struct ptest_options opts,<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 const char *prognam=
e, FILE *fp, FILE *fp_stderr)<br>
@@ -362,6 +414,8 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int timeouted;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 time_t sttime, entime;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 int duration;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int slave;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0int pgid =3D -1;<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 if (opts.xml_filename) {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 xh =3D xml_create(p=
test_list_length(head), opts.xml_filename);<br>
@@ -379,7 +433,6 @@ run_ptests(struct ptest_list *head, const struct ptest_=
options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 close(pipefd_stdout[1]);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;S=
TART: %s\n&quot;, progname);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 PTEST_LIST_ITERATE_=
START(head, p);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 char *ptest_dir =3D strdup(p-&gt;run_ptest);<br>
@@ -388,6 +441,13 @@ run_ptests(struct ptest_list *head, const struct ptest=
_options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 dirname(ptest_dir);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERROR: Unable to de=
tach from controlling tty, %s\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0if ((pgid =3D getpgid(0)) =3D=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERROR: getpgid() fa=
iled, %s\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 child =3D fork();<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 if (child =3D=3D -1) {<br>
@@ -395,13 +455,33 @@ run_ptests(struct ptest_list *head, const struct ptes=
t_options opts,<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rc =3D -1;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 } else if (child =3D=3D 0) {<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0setsid();<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0close(0);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave =3D setup_slave_pty(fp)) &=
lt; 0) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(f=
p, &quot;ERROR: could not setup pty (%d).&quot;, slave);<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (setpgid(0,pgid) =3D=3D -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(f=
p, &quot;ERROR: setpgid() failed, %s\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (setsid() =3D=3D=C2=A0 -1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(f=
p, &quot;ERROR: setsid() failed, %s\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ioctl(0, TIOCSCTTY, NULL) =3D=3D =
-1) {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(f=
p, &quot;ERROR: Unable to attach to controlling tty, %s\n&quot;, strerror(e=
rrno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 run_child(p-&gt;run_ptest, pipefd_st=
dout[1], pipefd_stderr[1]);<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 } else {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int status;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 int fds[2]; fds[0] =3D pipefd_stdout=
[0]; fds[1] =3D pipefd_stderr[0];<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 FILE *fps[2]; fps[0] =3D fp; fps[1] =
=3D fp_stderr;<br>
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (setpgid(child, pgid) =3D=3D -1) {=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(f=
p, &quot;ERROR: setpgid() failed, %s\n&quot;, strerror(errno));<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
+<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sttime =3D time(NULL);<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;%s\n&quot;, get_st=
ime(stime, GET_STIME_BUF_SIZE, sttime));<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf(fp, &quot;BEGIN: %s\n&quot;,=
 ptest_dir);<br>
-- <br>
2.17.0<br>
<br>
</blockquote></div>

--000000000000c5b994058e35def9--
