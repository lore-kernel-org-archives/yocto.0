Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.11886.1613755501889600611
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Feb 2021 09:25:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=A8QLAAIh;
 spf=softfail (domain: linaro.org, ip: 198.145.29.25, mailfrom: anibal.limon@linaro.org)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 23F0F38C06E6
	for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 17:25:01 +0000 (UTC)
Received: by mail-wr1-f50.google.com with SMTP id h98so4766775wrh.11
        for <yocto@yoctoproject.org>; Fri, 19 Feb 2021 09:25:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cRLf9kgC6YX4I8YU+7vN09/A5Kti1u6OreWljB83l80=;
        b=A8QLAAIh1ioOyPtei9NtHALLWm2Rdt9QphRQcuGb8qbYWhwf5RKw9HlwPTyRvhZ1AS
         iqSyBgIWuygsKEeu09jhFLygTb62SBlvOn3Lz2V9sTvY1vDT/lguU1NWpDii6GfbSO+G
         lGGyAwI/c/HXyMYcK4JD+HPp3+boaEQVYgIqMxnrfzBo79y1ZqKxicSO47XOE7wDDo+H
         qGDZcwX8ZTescycC0iSuNSfCyP1sD1mdwwQLQf8S6bf0wLGj1+qmaiWgjcVg5n6f9ntM
         3aWKqZRnt6Ri+HHJ+S1Gyc9FwYdT7iCizFYKbxI6CkTrqRl8admb7iSzDwjuvy1Lo53h
         tZng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cRLf9kgC6YX4I8YU+7vN09/A5Kti1u6OreWljB83l80=;
        b=Qecx++Wiiqxj43xzOA565nndb91duq07mhLWyfByQig5DzW3fwTc0u9XNrh7s1emFK
         EDoy6ujbEti9d8fGO9y/RYqE5N5hOOn5awWdPJk7J0cMcMPXLS1/f/KVEk7gF1X+CGYC
         +tD5QUsbG50I81d8ahiyI+6YExdzA8sJrpHvEcGuWq5/kpVVWlZEF/iLt3d3LEtHC6ku
         wetGftYpkWl08Ml44bCjVfcCIVNlhVnfJBaVX6f1kKiNlWxJAR1fFxaO1MGmDk6Cstvf
         k7wke6LFlhrWXIvUE4h/tZNoERsmFBhZrsbIEhZT/MdPYeoQ1wFampS5NNyUqMt8Ztf7
         eOZw==
X-Gm-Message-State: AOAM532FOsVlRwPEmRpiJK4KoEuiC0UzW8saOMQyq0ipizwDEjSxP2iE
	vs8Y1sAwSK7mSj8xEtmFH6z7NvWBigb0X860SbvmRg==
X-Google-Smtp-Source: ABdhPJwyiTZ5Crty3dIl2dzx22PNXo/8EXEm085NKU4/KXIovp6wN6f6nZMl1/j6q2pvPVtly9rszB4XzrNxOUl1VGE=
X-Received: by 2002:a5d:4903:: with SMTP id x3mr10042858wrq.95.1613755499435;
 Fri, 19 Feb 2021 09:24:59 -0800 (PST)
MIME-Version: 1.0
References: <20200710054432.557157-1-tero.kinnunen@vaisala.com>
 <CA+_Aqit4UM=EH5ztSHbuVx84eHzoQN0NPU+ADEY7Sfi7=WpNDA@mail.gmail.com>
 <ca58386c-51e1-770a-253d-4eb1c13441c5@windriver.com> <f98f7d42-00b8-f2e9-389d-54d77088ee22@windriver.com>
In-Reply-To: <f98f7d42-00b8-f2e9-389d-54d77088ee22@windriver.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Fri, 19 Feb 2021 11:24:47 -0600
Message-ID: <CA+_AqivDnV3eWPcvxJ-XsAOCy3C0zyho84_ekOuKHupqsmwqrQ@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner][PATCH v2] Fix inappropriate ioctl when detaching tty
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: Chen Qi <Qi.Chen@windriver.com>, Tero Kinnunen <tero.kinnunen@vaisala.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, Michael Halstead <mhalstead@linuxfoundation.org>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Trevor Gamblin <trevor.gamblin@windriver.com>, 
	Konrad Scherer <konrad.scherer@windriver.com>
Content-Type: multipart/alternative; boundary="0000000000004c6b2b05bbb3bb58"

--0000000000004c6b2b05bbb3bb58
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 19 Feb 2021 at 09:18, Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2021-02-19 1:44 a.m., Chen Qi wrote:
> > Hi Anibal,
> >
> > The ptest-runner repo seems to be messed up.
> > This patch is no longer there, yet the SRCREV in ptest-runner recipe
> > refers to this commit.
> >
> > $ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd
> > fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd
> >
> > Regards,
> > Chen Qi
>
> This was making our automated builds fail but I've added
> the fall-back tarball and that should suffice for now.
>
> We should probably do something to prevent that but
> could someone take a look soon and perhaps restore the repo
> from another location?
>
> My local clone has:
> $ git log --oneline -3
> 8346703 (HEAD -> master) Fix inappropriate ioctl when detaching tty
> 1e9a845 (tag: v2.4)
>             Add support to specify multiple folder for ptest-runner
> 287ba30 Makefile: Fix TEST_LDFLAGS gcc cmdline position
>
>
> fyi:
>
> $ cd .../ptest-runner2.git
> $ git pull
> remote: Enumerating objects: 7, done.
> remote: Counting objects: 100% (7/7), done.
> remote: Compressing objects: 100% (4/4), done.
> remote: Total 4 (delta 3), reused 0 (delta 0)
> Unpacking objects: 100% (4/4), 526 bytes | 65.00 KiB/s, done.
>  From git://git.yoctoproject.org/ptest-runner2
>   + 8346703...87f6a6e master     -> origin/master  (forced update)
> fatal: Not possible to fast-forward, aborting.
>
> $ cd .../oe-core.git
> $ git status
> $ cd ../build
> $ . ../oe-core.git/oe-init-build-env foo
> $ bitbake -c fetch ptest-runner
> ...
> WARNING: ptest-runner-2.4.0+gitAUTOINC+834670317b-r0 do_fetch: Failed to
> fetch URL git://git.yoctoproject.org/ptest-runner2, attempting MIRRORS
> if available
>
> but the fetch works since it falls back to the downloads tarball:
>

Hi Randy,

I pushed the rev, my mistake, sorry for the trouble.

Regards,
Anibal


>
>
> --2021-02-19 14:36:24--
>
> http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.o=
rg.ptest-runner2.tar.gz
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
> 198.145.29.63
> Connecting to downloads.yoctoproject.org
> (downloads.yoctoproject.org)|198.145.29.63|:80... connected.
> HTTP request sent, awaiting response... 200 OK
> Length: 185994 (182K) [application/octet-stream]
> Saving to:
> =E2=80=98/ala-lpggp31/rmacleod/src/distro/yocto/b/foo/downloads/
> git2_git.yoctoproject.org.ptest-runner2.tar.gz=E2=80=99
>
> ../Randy
> >
> > On 07/14/2020 03:29 AM, Anibal Limon wrote:
> >> Applied, Thanks!.
> >>
> >> Anibal
> >>
> >> On Fri, 10 Jul 2020 at 00:44, Tero Kinnunen <tero.kinnunen@vaisala.co=
m
> >> <mailto:tero.kinnunen@vaisala.com>> wrote:
> >>
> >>     Fixes error
> >>
> >>         ERROR: Unable to detach from controlling tty, Inappropriate
> >>     ioctl for device
> >>
> >>     when running multiple ptests
> >>
> >>         ptest-runner a b
> >>
> >>     or when invoked over ssh single command, like
> >>
> >>         $ ssh localhost ptest-runner
> >>
> >>     For ssh case, fd 0 is not a tty. (isatty(0) is false).
> >>     When running multiple ptests, deattach for parent needs to be
> >>     done only once.
> >>
> >>     Signed-off-by: Tero Kinnunen <tero.kinnunen@vaisala.com
> >>     <mailto:tero.kinnunen@vaisala.com>>
> >>     ---
> >>      utils.c | 6 +++---
> >>      1 file changed, 3 insertions(+), 3 deletions(-)
> >>
> >>     diff --git a/utils.c b/utils.c
> >>     index a8ba190..a4e190e 100644
> >>     --- a/utils.c
> >>     +++ b/utils.c
> >>     @@ -437,6 +437,9 @@ run_ptests(struct ptest_list *head, const
> >>     struct ptest_options opts,
> >>                             break;
> >>                     }
> >>                     fprintf(fp, "START: %s\n", progname);
> >>     +               if (isatty(0) && ioctl(0, TIOCNOTTY) =3D=3D -1) {
> >>     +                       fprintf(fp, "ERROR: Unable to detach from
> >>     controlling tty, %s\n", strerror(errno));
> >>     +               }
> >>                     PTEST_LIST_ITERATE_START(head, p)
> >>                             char *ptest_dir =3D strdup(p->run_ptest);
> >>                             if (ptest_dir =3D=3D NULL) {
> >>     @@ -444,9 +447,6 @@ run_ptests(struct ptest_list *head, const
> >>     struct ptest_options opts,
> >>                                     break;
> >>                             }
> >>                             dirname(ptest_dir);
> >>     -                       if (ioctl(0, TIOCNOTTY) =3D=3D -1) {
> >>     -                               fprintf(fp, "ERROR: Unable to
> >>     detach from controlling tty, %s\n", strerror(errno));
> >>     -                       }
> >>
> >>                             if ((pgid =3D getpgid(0)) =3D=3D -1) {
> >>                                     fprintf(fp, "ERROR: getpgid()
> >>     failed, %s\n", strerror(errno));
> >>     --
> >>     2.25.1
> >>
> >>
> >>
> >
> >
> >
> >=20
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--0000000000004c6b2b05bbb3bb58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 19 Feb 2021 at 09:18, Randy M=
acLeod &lt;<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@win=
driver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On 2021-02-19 1:44 a.m., Chen Qi wrote:<br>
&gt; Hi Anibal,<br>
&gt; <br>
&gt; The ptest-runner repo seems to be messed up.<br>
&gt; This patch is no longer there, yet the SRCREV in ptest-runner recipe =
<br>
&gt; refers to this commit.<br>
&gt; <br>
&gt; $ git show 834670317bd3f6e427e1ac461c07ada6b8936dfd<br>
&gt; fatal: bad object 834670317bd3f6e427e1ac461c07ada6b8936dfd<br>
&gt; <br>
&gt; Regards,<br>
&gt; Chen Qi<br>
<br>
This was making our automated builds fail but I&#39;ve added<br>
the fall-back tarball and that should suffice for now.<br>
<br>
We should probably do something to prevent that but<br>
could someone take a look soon and perhaps restore the repo<br>
from another location?<br>
<br>
My local clone has:<br>
$ git log --oneline -3<br>
8346703 (HEAD -&gt; master) Fix inappropriate ioctl when detaching tty<br>
1e9a845 (tag: v2.4)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Add support to specify multiple =
folder for ptest-runner<br>
287ba30 Makefile: Fix TEST_LDFLAGS gcc cmdline position<br>
<br>
<br>
fyi:<br>
<br>
$ cd .../ptest-runner2.git<br>
$ git pull<br>
remote: Enumerating objects: 7, done.<br>
remote: Counting objects: 100% (7/7), done.<br>
remote: Compressing objects: 100% (4/4), done.<br>
remote: Total 4 (delta 3), reused 0 (delta 0)<br>
Unpacking objects: 100% (4/4), 526 bytes | 65.00 KiB/s, done.<br>
=C2=A0From git://<a href=3D"http://git.yoctoproject.org/ptest-runner2" rel=
=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/ptest-runner2</a><b=
r>
=C2=A0 + 8346703...87f6a6e master=C2=A0 =C2=A0 =C2=A0-&gt; origin/master=
=C2=A0 (forced update)<br>
fatal: Not possible to fast-forward, aborting.<br>
<br>
$ cd .../oe-core.git<br>
$ git status<br>
$ cd ../build<br>
$ . ../oe-core.git/oe-init-build-env foo<br>
$ bitbake -c fetch ptest-runner<br>
...<br>
WARNING: ptest-runner-2.4.0+gitAUTOINC+834670317b-r0 do_fetch: Failed to <=
br>
fetch URL git://<a href=3D"http://git.yoctoproject.org/ptest-runner2" rel=
=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/ptest-runner2</a>, =
attempting MIRRORS <br>
if available<br>
<br>
but the fetch works since it falls back to the downloads tarball:<br></blo=
ckquote><div><br></div><div>Hi Randy,</div><div><br></div><div>I pushed the=
 rev, my mistake, sorry for the trouble.</div><div><br></div><div>Regards,<=
/div><div>Anibal</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">
<br>
<br>
--2021-02-19 14:36:24-- <br>
<a href=3D"http://downloads.yoctoproject.org/mirror/sources/git2_git.yocto=
project.org.ptest-runner2.tar.gz" rel=3D"noreferrer" target=3D"_blank">http=
://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.ptes=
t-runner2.tar.gz</a><br>
Resolving <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer"=
 target=3D"_blank">downloads.yoctoproject.org</a> (<a href=3D"http://downlo=
ads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctop=
roject.org</a>)... <br>
198.145.29.63<br>
Connecting to <a href=3D"http://downloads.yoctoproject.org" rel=3D"norefer=
rer" target=3D"_blank">downloads.yoctoproject.org</a> <br>
(<a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" target=
=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:80... connected=
.<br>
HTTP request sent, awaiting response... 200 OK<br>
Length: 185994 (182K) [application/octet-stream]<br>
Saving to: <br>
=E2=80=98/ala-lpggp31/rmacleod/src/distro/yocto/b/foo/downloads/<a href=3D=
"http://git2_git.yoctoproject.org" target=3D"_blank">git2_git.yoctoproject.=
org</a>.ptest-runner2.tar.gz=E2=80=99<br>
<br>
../Randy<br>
&gt; <br>
&gt; On 07/14/2020 03:29 AM, Anibal Limon wrote:<br>
&gt;&gt; Applied, Thanks!.<br>
&gt;&gt;<br>
&gt;&gt; Anibal<br>
&gt;&gt;<br>
&gt;&gt; On Fri, 10 Jul 2020 at 00:44, Tero Kinnunen &lt;<a href=3D"mailto=
:tero.kinnunen@vaisala.com" target=3D"_blank">tero.kinnunen@vaisala.com</a>=
 <br>
&gt;&gt; &lt;mailto:<a href=3D"mailto:tero.kinnunen@vaisala.com" target=3D=
"_blank">tero.kinnunen@vaisala.com</a>&gt;&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Fixes error<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 ERROR: Unable to detach from con=
trolling tty, Inappropriate<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0ioctl for device<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0when running multiple ptests<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 ptest-runner a b<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0or when invoked over ssh single command, like<=
br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 $ ssh localhost ptest-runner<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0For ssh case, fd 0 is not a tty. (isatty(0) is=
 false).<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0When running multiple ptests, deattach for par=
ent needs to be<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0done only once.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0Signed-off-by: Tero Kinnunen &lt;<a href=3D"ma=
ilto:tero.kinnunen@vaisala.com" target=3D"_blank">tero.kinnunen@vaisala.com=
</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0&lt;mailto:<a href=3D"mailto:tero.kinnunen@vai=
sala.com" target=3D"_blank">tero.kinnunen@vaisala.com</a>&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0---<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0utils.c | 6 +++---<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A01 file changed, 3 insertions(+), 3 delet=
ions(-)<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0diff --git a/utils.c b/utils.c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0index a8ba190..a4e190e 100644<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0--- a/utils.c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0+++ b/utils.c<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0@@ -437,6 +437,9 @@ run_ptests(struct ptest_li=
st *head, const<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ptest_options opts,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 }<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 fprintf(fp, &quot;START: %s\n&quot;, progname);<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0if (isatty(0) &amp;&amp; ioctl(0, TIOCNOTTY) =3D=3D -1) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(fp, &quot;ERROR: Unable to d=
etach from<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0controlling tty, %s\n&quot;, strerror(errno));=
<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 PTEST_LIST_ITERATE_START(head, p)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 char *ptest_dir =3D strdup(p-&gt;ru=
n_ptest);<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (ptest_dir =3D=3D NULL) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0@@ -444,9 +447,6 @@ run_ptests(struct ptest_li=
st *head, const<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0struct ptest_options opts,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 break;<=
br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dirname(ptest_dir);<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (ioctl(0, TIOCNOTTY) =3D=3D -1) {=
<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(=
fp, &quot;ERROR: Unable to<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0detach from controlling tty, %s\n&quot;, strer=
ror(errno));<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((pgid =3D getpgid(0)) =3D=3D -1=
) {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fprintf=
(fp, &quot;ERROR: getpgid()<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0failed, %s\n&quot;, strerror(errno));<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A02.25.1<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div></div>

--0000000000004c6b2b05bbb3bb58--
