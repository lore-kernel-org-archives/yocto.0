Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC87BE00CE4; Fri, 11 Jan 2019 17:36:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F4E1E009B1
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 17:36:26 -0800 (PST)
Received: by mail-qt1-f172.google.com with SMTP id t13so20963506qtn.3
	for <yocto@yoctoproject.org>; Fri, 11 Jan 2019 17:36:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=80apn5/mSwTb2iVK31g+s5P6R5O3Wkz/GxyeMflXFH8=;
	b=GBtMDQ4aYa+RdQvZ8/KMli//YG2WaEJRxPBpOmq9HrTfGh/zAjuYrvx0pByymQ2ozm
	HoDW0s5Du0LfDODuUaL9m4AY3o2jg10ycC2tRJIzG0fh5kl2OQ0FxnCKXSlCvlDIK+zl
	L5gFK8JiHctw362nMoE0V5TpKy4CeHF5N/S7XSELG1hgS3SKtQKY6BwyVddpHvRWXWMG
	u7UQNYIHtFzgC55F3RoFRct9bFLED1Eye9Jv738LNZ4NIfZLhLeLGq9mPYTDIH/tmv2B
	26jScd3OHPJPTIBI8zEkh1hMQ4dTfTAz0vJDHA4DfJB4A4HJ/Nw5NCm/B6TA7AFUG8wX
	oFaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=80apn5/mSwTb2iVK31g+s5P6R5O3Wkz/GxyeMflXFH8=;
	b=WHGz0m4h8itbExeVxaH62a60xhmLgdgr0JT9MPon99Nf4GwpQssEBFH61rbb7sfkC/
	dT6/obeGXGMSZXPsYJA62DLhojqBpvh+bH9Z89GfqDDqI8B86DJgNYaRwLM6eUssRJox
	StmTFRGtiRwnnZsP6l58mc228u0R+LjDjF5B/VAji6iop5v/oenjq4oILJrrF14Hi3Ly
	tfFhhjDgjpcgwQ13lscuv8es1/1r+VCyRF3qhedww7JrlJBDTlCyBoexVjy9jNyiHTPh
	UJdOXvl1ykkfUvU5U51iE9Jwecb876kvjCsJ5RqfrJqVjHnATSKIqrJWCe8qvw1+0s+M
	0UlA==
X-Gm-Message-State: AJcUukewt9MauRxWVdOPeg/fSfbzLs8bnG1oZ7SiPfF3Je2fiO/UqVYH
	QnLi/UWAOMRs0JxqYSVju0u186d531y3Lt/yJZk=
X-Google-Smtp-Source: ALg8bN7bQIbYy9xhuGOjuoUt1wGOUJUOC6iLLQqmVZN3YDuz/qcvus2ZMMjzJMl8HyjoyQ3IOmdSdJPh4FS0LmCoeAI=
X-Received: by 2002:ac8:518d:: with SMTP id c13mr15499064qtn.254.1547256985608;
	Fri, 11 Jan 2019 17:36:25 -0800 (PST)
MIME-Version: 1.0
References: <CAMhs-H9iE3-aajmgbJHxKk0=dA0xkkJZjER06jjdCuq_0=PypA@mail.gmail.com>
	<CAMhs-H_HoneeQYsWf2xq_9yaxoGZ34uLBGT7hjBg1WsMzfhXhQ@mail.gmail.com>
In-Reply-To: <CAMhs-H_HoneeQYsWf2xq_9yaxoGZ34uLBGT7hjBg1WsMzfhXhQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Jan 2019 17:36:14 -0800
Message-ID: <CAMKF1srMwRpTapZVS6k2kCnRuyAh_=92aYLZG6ge9jWmUf9EFQ@mail.gmail.com>
To: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc: yocto@yoctoproject.org, akuster808@gmail.com
Subject: Re: Unable to cross compile libgfortran for arm64
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
X-List-Received-Date: Sat, 12 Jan 2019 01:36:27 -0000
Content-Type: multipart/alternative; boundary="00000000000000e55c057f38d783"

--00000000000000e55c057f38d783
Content-Type: text/plain; charset="UTF-8"

It will be intrrrdting to see if we still have this issue on master

On Thu, Jan 10, 2019 at 5:29 AM Sergio Paracuellos <
sergio.paracuellos@gmail.com> wrote:

> On Wed, Jan 9, 2019 at 8:17 AM Sergio Paracuellos
> <sergio.paracuellos@gmail.com> wrote:
> >
> > Hi all,
> >
> > I am trying to compile a complete system with fortran support using
> > yocto and I am having problems cross compiling libgfortran. The target
> > architecture is arm64 because the system will run in a xilinx mpsoc
> > based board. I need fortran support to compile lapack, openblas, scipy
> > and other python stuff that seems to need them. The yocto branch I am
> > using is the stable 'sumo'. So I do the following for enable fortran
> > support:
> >
> > 1) Add to my local.conf the following line:
> > FORTRAN_forcevariable = ",fortran"
> > 2) Add a bbappend file for recipes-devtools/gcc/gcc-runtime_7.3.bb with:
> > RUNTIMETARGET += "libgfortran"
>
> It seems this RUNTIMETARGET not needed anymore since libgfortran has
> now its own recipe.
> Setting FORTRAN_forcevariable = ",fortran" in local.conf and adding to the
> image
> the following:
> ...
> FORTRAN_TOOLS = " \
>     gfortran \
>     gfortran-symlinks \
>     libgfortran \
>     libgfortran-dev \
>  "
> ...
> IMAGE_INSTALL += " \
>     ...
>     ${FORTRAN_TOOLS} \
>     ...
>  "
>
> seems to work as it is without any patches. Sorry for the noise.
>
> Best regards,
>     Sergio Paracuellos
>
> >
> > With the branch as it is when gcc-runtime is being build I end up with
> > an error because libbacktrace headers can't be found so I have to
> > apply the following PATCH to solve this first issue:
> >
> > diff -Naur gcc-7.3.0/libgfortran/Makefile.in
> > gcc-7.3.0.modif/libgfortran/Makefile.in
> > --- gcc-7.3.0/libgfortran/Makefile.in 2018-01-25 09:17:54.059232055 +0100
> > +++ gcc-7.3.0.modif/libgfortran/Makefile.in 2019-01-08
> 12:42:00.583138367 +0100
> > @@ -582,7 +582,7 @@
> >  toolexeclib_DATA = libgfortran.spec
> >  libgfortran_la_LINK = $(LINK) $(libgfortran_la_LDFLAGS)
> >  libgfortran_la_LDFLAGS = -version-info `grep -v '^\#'
> > $(srcdir)/libtool-version` \
> > - $(LTLDFLAGS) $(LIBQUADLIB) ../libbacktrace/libbacktrace.la \
> > + $(LTLDFLAGS) $(LIBQUADLIB) ../../libbacktrace/libbacktrace.la \
> >   $(HWCAP_LDFLAGS) \
> >   -lm $(extra_ldflags_libgfortran) \
> >   $(version_arg) -Wc,-shared-libgcc
> > @@ -603,7 +603,7 @@
> >        -I$(MULTIBUILDTOP)../libgcc \
> >        -I$(srcdir)/$(MULTISRCTOP)../libbacktrace \
> >        -I$(MULTIBUILDTOP)../libbacktrace \
> > -      -I../libbacktrace
> > +      -I../../libbacktrace
> >
> > But then I get the following error:
> >
> > |
> /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in
> > generic ELF (EM: 62)
> > |
> /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in
> > generic ELF (EM: 62)
> > |
> /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> > ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in
> > generic ELF (EM: 62)
> > | ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): error adding
> > symbols: File in wrong format
> > | collect2: error: ld returned 1 exit status
> > | Makefile:1364: recipe for target 'libgfortran.la' failed
> > | make[1]: *** [libgfortran.la] Error 1
> > | make[1]: Leaving directory
> >
> '/home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/gcc-7.3.0/build.aarch64-poky-linux.aarch64-poky-linux/aarch64-poky-linux/libgfortran'
> > | Makefile:1242: recipe for target 'all' failed
> > | make: *** [all] Error 2
> > | ERROR: oe_runmake failed
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_compile (log file is located at
> >
> /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0-r0/temp/log.do_compile.24547)
> > ERROR: Task
> (/home/sergio/YOCTO/workspace/poky/meta/recipes-devtools/gcc/gcc-runtime_7.3.bb:
> do_compile)
> > failed with exit code '1'
> >
> > So It seems that libbacktrace is always built for my host architecture
> > instead of for arm64 bits...
> > Is this a known problem? Am I doing something wrong?
> >
> > Thanks in advance for your time.
> >
> > Best regards,
> >     Sergio Paracuellos
> >
> > PD: I updated this info also in a bug related here which seems to be
> > fixed https://bugzilla.yoctoproject.org/show_bug.cgi?id=12394
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--00000000000000e55c057f38d783
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">It will be intrrrdting to see if we still have this =
issue on master=C2=A0</div></div><div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr">On Thu, Jan 10, 2019 at 5:29 AM Sergio Paracuellos &lt;<a href=
=3D"mailto:sergio.paracuellos@gmail.com">sergio.paracuellos@gmail.com</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">On Wed, Jan 9, 2019 at 8:=
17 AM Sergio Paracuellos<br>
&lt;<a href=3D"mailto:sergio.paracuellos@gmail.com" target=3D"_blank">sergi=
o.paracuellos@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I am trying to compile a complete system with fortran support using<br=
>
&gt; yocto and I am having problems cross compiling libgfortran. The target=
<br>
&gt; architecture is arm64 because the system will run in a xilinx mpsoc<br=
>
&gt; based board. I need fortran support to compile lapack, openblas, scipy=
<br>
&gt; and other python stuff that seems to need them. The yocto branch I am<=
br>
&gt; using is the stable &#39;sumo&#39;. So I do the following for enable f=
ortran<br>
&gt; support:<br>
&gt;<br>
&gt; 1) Add to my local.conf the following line:<br>
&gt; FORTRAN_forcevariable =3D &quot;,fortran&quot;<br>
&gt; 2) Add a bbappend file for recipes-devtools/gcc/<a href=3D"http://gcc-=
runtime_7.3.bb" rel=3D"noreferrer" target=3D"_blank">gcc-runtime_7.3.bb</a>=
 with:<br>
&gt; RUNTIMETARGET +=3D &quot;libgfortran&quot;<br>
<br>
It seems this RUNTIMETARGET not needed anymore since libgfortran has<br>
now its own recipe.<br>
Setting FORTRAN_forcevariable =3D &quot;,fortran&quot; in local.conf and ad=
ding to the image<br>
the following:<br>
...<br>
FORTRAN_TOOLS =3D &quot; \<br>
=C2=A0 =C2=A0 gfortran \<br>
=C2=A0 =C2=A0 gfortran-symlinks \<br>
=C2=A0 =C2=A0 libgfortran \<br>
=C2=A0 =C2=A0 libgfortran-dev \<br>
=C2=A0&quot;<br>
...<br>
IMAGE_INSTALL +=3D &quot; \<br>
=C2=A0 =C2=A0 ...<br>
=C2=A0 =C2=A0 ${FORTRAN_TOOLS} \<br>
=C2=A0 =C2=A0 ...<br>
=C2=A0&quot;<br>
<br>
seems to work as it is without any patches. Sorry for the noise.<br>
<br>
Best regards,<br>
=C2=A0 =C2=A0 Sergio Paracuellos<br>
<br>
&gt;<br>
&gt; With the branch as it is when gcc-runtime is being build I end up with=
<br>
&gt; an error because libbacktrace headers can&#39;t be found so I have to<=
br>
&gt; apply the following PATCH to solve this first issue:<br>
&gt;<br>
&gt; diff -Naur gcc-7.3.0/libgfortran/Makefile.in<br>
&gt; gcc-7.3.0.modif/libgfortran/Makefile.in<br>
&gt; --- gcc-7.3.0/libgfortran/Makefile.in 2018-01-25 09:17:54.059232055 +0=
100<br>
&gt; +++ gcc-7.3.0.modif/libgfortran/Makefile.in 2019-01-08 12:42:00.583138=
367 +0100<br>
&gt; @@ -582,7 +582,7 @@<br>
&gt;=C2=A0 toolexeclib_DATA =3D libgfortran.spec<br>
&gt;=C2=A0 libgfortran_la_LINK =3D $(LINK) $(libgfortran_la_LDFLAGS)<br>
&gt;=C2=A0 libgfortran_la_LDFLAGS =3D -version-info `grep -v &#39;^\#&#39;<=
br>
&gt; $(srcdir)/libtool-version` \<br>
&gt; - $(LTLDFLAGS) $(LIBQUADLIB) ../libbacktrace/<a href=3D"http://libback=
trace.la" rel=3D"noreferrer" target=3D"_blank">libbacktrace.la</a> \<br>
&gt; + $(LTLDFLAGS) $(LIBQUADLIB) ../../libbacktrace/<a href=3D"http://libb=
acktrace.la" rel=3D"noreferrer" target=3D"_blank">libbacktrace.la</a> \<br>
&gt;=C2=A0 =C2=A0$(HWCAP_LDFLAGS) \<br>
&gt;=C2=A0 =C2=A0-lm $(extra_ldflags_libgfortran) \<br>
&gt;=C2=A0 =C2=A0$(version_arg) -Wc,-shared-libgcc<br>
&gt; @@ -603,7 +603,7 @@<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -I$(MULTIBUILDTOP)../libgcc \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -I$(srcdir)/$(MULTISRCTOP)../libbacktrace \=
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 -I$(MULTIBUILDTOP)../libbacktrace \<br>
&gt; -=C2=A0 =C2=A0 =C2=A0 -I../libbacktrace<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 -I../../libbacktrace<br>
&gt;<br>
&gt; But then I get the following error:<br>
&gt;<br>
&gt; | /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3=
.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:<br>
&gt; ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in<br>
&gt; generic ELF (EM: 62)<br>
&gt; | /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3=
.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:<br>
&gt; ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in<br>
&gt; generic ELF (EM: 62)<br>
&gt; | /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3=
.0-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch6=
4-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:<br>
&gt; ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): Relocations in<br>
&gt; generic ELF (EM: 62)<br>
&gt; | ../../libbacktrace/.libs/libbacktrace.a(dwarf.o): error adding<br>
&gt; symbols: File in wrong format<br>
&gt; | collect2: error: ld returned 1 exit status<br>
&gt; | Makefile:1364: recipe for target &#39;<a href=3D"http://libgfortran.=
la" rel=3D"noreferrer" target=3D"_blank">libgfortran.la</a>&#39; failed<br>
&gt; | make[1]: *** [<a href=3D"http://libgfortran.la" rel=3D"noreferrer" t=
arget=3D"_blank">libgfortran.la</a>] Error 1<br>
&gt; | make[1]: Leaving directory<br>
&gt; &#39;/home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/=
7.3.0-r0/gcc-7.3.0/build.aarch64-poky-linux.aarch64-poky-linux/aarch64-poky=
-linux/libgfortran&#39;<br>
&gt; | Makefile:1242: recipe for target &#39;all&#39; failed<br>
&gt; | make: *** [all] Error 2<br>
&gt; | ERROR: oe_runmake failed<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_compile (log file is located at<br>
&gt; /home/sergio/YOCTO/build/tmp/work/aarch64-poky-linux/gcc-runtime/7.3.0=
-r0/temp/log.do_compile.24547)<br>
&gt; ERROR: Task (/home/sergio/YOCTO/workspace/poky/meta/recipes-devtools/g=
cc/gcc-runtime_7.3.bb:do_compile)<br>
&gt; failed with exit code &#39;1&#39;<br>
&gt;<br>
&gt; So It seems that libbacktrace is always built for my host architecture=
<br>
&gt; instead of for arm64 bits...<br>
&gt; Is this a known problem? Am I doing something wrong?<br>
&gt;<br>
&gt; Thanks in advance for your time.<br>
&gt;<br>
&gt; Best regards,<br>
&gt;=C2=A0 =C2=A0 =C2=A0Sergio Paracuellos<br>
&gt;<br>
&gt; PD: I updated this info also in a bug related here which seems to be<b=
r>
&gt; fixed <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1=
2394" rel=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.or=
g/show_bug.cgi?id=3D12394</a><br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--00000000000000e55c057f38d783--
