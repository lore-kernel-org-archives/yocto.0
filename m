Return-Path: <miketsukerman@gmail.com>
Received: from mail-vw0-f48.google.com (mail-vw0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EFA5E01363
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 02:51:01 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vws7 with SMTP id 7so1305619vws.35
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2011 02:51:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=G7saRBUkNzrOhjQvsePzg01xHmFB0xW4UyZ2jWxXPJY=;
	b=PZcc8jI77Auv+UlVKv6MJoCDmAG1leCDlWj9KKBDWzcgRMeY1yuol3+PgtSpnGCIzU
	KBfv7ly1Ry6I6J/XBgcljgvr5snMYFY+zygcVF7cdcFtzQNpiLPqcNtVOi+1M2nrJqIA
	4UM2DRgfGIHhYuiDMIazn6Vpq/zCp2wufs/jw=
MIME-Version: 1.0
Received: by 10.182.232.38 with SMTP id tl6mr1703203obc.22.1320313857241; Thu,
	03 Nov 2011 02:50:57 -0700 (PDT)
Received: by 10.182.16.170 with HTTP; Thu, 3 Nov 2011 02:50:57 -0700 (PDT)
Date: Thu, 3 Nov 2011 13:50:57 +0400
Message-ID: <CALs2vteB3NaOGvAL4fB_GUVhaV=pYsg1V=H=+f_NtEXs9z2gmQ@mail.gmail.com>
From: Mike Tsukerman <miketsukerman@gmail.com>
To: yocto@yoctoproject.org
Subject: libtool can't read a la files
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
X-List-Received-Date: Thu, 03 Nov 2011 09:51:02 -0000
Content-Type: multipart/alternative; boundary=f46d044472c173f13504b0d186c4

--f46d044472c173f13504b0d186c4
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello, I've build core-image-minimal-dev (it does not metter for what
architecture, the same bugs appears in arm and i586) image and faced a
problem. When i'm trying to build something from tarball, i get a libtool
errors. It's not only for libz and not every time happens. What is going
wrong?
But all .la files exists.

libtool: link: (cd ".libs" && rm -f "librpmbuild.so.2" && ln -s
"librpmbuild.so.2.0.1" "librpmbuild.so.2")
libtool: link: (cd ".libs" && rm -f "librpmbuild.so" && ln -s
"librpmbuild.so.2.0.1" "librpmbuild.so")
/bin/sed: can't read =3D/usr/lib/libz.la: No such file or directory
libtool: link: `=3D/usr/lib/libz.la' is not a valid libtool archive
make[2]: *** [librpmbuild.la] Error 1
make[2]: Leaving directory `/home/root/rpm-4.9.1.2/build'
make[1]: *** [all-recursive] Error 1
make[1]: Leaving directory `/home/root/rpm-4.9.1.2'
make: *** [all] Error 2


On Thu, Nov 3, 2011 at 8:49 AM, <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>        yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>        https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>        yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>        yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>   1. Announcement: pseudo 1.2 released (Mark Hatle)
>   2. Re: Build error while following Appendix A. Yocto Project
>      Development manual (Jim Abernathy)
>   3. Help diagnosing a build failure involving ncurses, gettext,
>      and eglibc (Darren Hart)
>   4. [PATCH 0/1] Development Manual Appendix A changes
>      (tom.zanussi@intel.com)
>   5. [PATCH 1/1] documentation/dev-manual: BSP Development     Example
>      changes (tom.zanussi@intel.com)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Wed, 2 Nov 2011 15:49:10 -0500
> From: Mark Hatle <mark.hatle@windriver.com>
> To: Yocto Project <yocto@yoctoproject.org>
> Cc: "Seebach, Peter" <Peter.Seebach@windriver.com>
> Subject: [yocto] Announcement: pseudo 1.2 released
> Message-ID: <4EB1ACC6.8040900@windriver.com>
> Content-Type: text/plain; charset=3D"ISO-8859-1"
>
> Making a release announcement on behalf of the pseudo maintainer...
>
> pseudo 1.2 is now released.  It can be pulled from:
>
> Via git:
>
> git://github.com/wrpseudo/pseudo.git
> git://git.yoctoproject.org/pseudo.git
>
> branch PSEUDO_1_2
>
> or the tarball from
>
> http://downloads.yoctoproject.org/releases/pseudo/pseudo-1.2.tar.bz2
>
> The included ChangeLog.txt
> (
> http://git.yoctoproject.org/cgit/cgit.cgi/pseudo/tree/ChangeLog.txt?h=3DP=
SEUDO_1_2
> )
>
> Contains a full list of changes.
>
> --Mark
>
>
> ------------------------------
>
> Message: 2
> Date: Wed, 02 Nov 2011 18:05:05 -0400
> From: Jim Abernathy <jfabernathy@gmail.com>
> To: Tom Zanussi <tom.zanussi@intel.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] Build error while following Appendix A. Yocto
>        Project Development manual
> Message-ID: <1320271505.13661.20.camel@jim-ubuntu-10>
> Content-Type: text/plain; charset=3D"UTF-8"
>
> I'm noticing fetcher failures while my bitbake is working. They are
> listed as warning. Do I ignore these??
>
> WARNING: Fetcher failure for URL: 'None'. Fetch command export
> HOME=3D"/home/jim"; export SSH_AGENT_PID=3D"1500"; export
> SSH_AUTH_SOCK=3D"/tmp/keyring-Zcbzax/ssh"; export
> GIT_CONFIG=3D"/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/e=
tc/gitconfig";
> export
> PATH=3D"/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/bin/cor=
e2-poky-linux:/home/jim/bsp-test/poky/build/tmp/sysroots/mymachine/usr/bin/=
crossscripts:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/sbin=
:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/bs=
p-test/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/bsp-test/poky/buil=
d/tmp/sysroots/i686-linux//bin:/home/jim/bsp-test/poky/scripts:/home/jim/bs=
p-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test=
/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test/poky/=
bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test/poky/bitbak=
e/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/sc=
ripts:/home/jim/poky/bitbake/bin/:/home/jim/CodeSourcery/Sourcery_G++_Lite/=
bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games=
:
>  /home/jim/bsp-test/poky/scripts"; /usr/bin/env wget -t 5 -q --passive-ft=
p
> --no-check-certificate -P /home/jim/bsp-test/poky/build/downloads '
> https://fedorahosted.org/releases/l/i/liberation-fonts/liberation-fonts-1=
.04.tar.gz'
> failed with signal 4, output:
>
> >
> >
>
>
>
>
> ------------------------------
>
> Message: 3
> Date: Wed, 02 Nov 2011 17:53:05 -0700
> From: Darren Hart <dvhart@linux.intel.com>
> To: Yocto Project <yocto@yoctoproject.org>
> Subject: [yocto] Help diagnosing a build failure involving ncurses,
>        gettext,        and eglibc
> Message-ID: <4EB1E5F1.3050106@linux.intel.com>
> Content-Type: text/plain; charset=3DISO-8859-1
>
> I ran into various issues trying to add mtd-utils to an image today. As
> I worked through the issues, I found after fixing a couple things, I was
> more guessing and grasping at straws than anything else. I'll recount
> what I did, and if anyone can offer a better approach to what I did that
> would have resulted in a more deterministic result, I'd appreciate it
> very much.
>
> I copied meta-tiny to a new layer. I disabled uclibc (so I'm building
> with eglibc). I added mtd-utils from OE and used the DEPENDS line using
> util-linux (and not util-linux-ng which we don't have in yocto). This
> resulted in ncurses failing the qa configure with host contamination
> with the widec headers. I first attempted to enable widechar support in
> my DISTRO_FEATURES_LIBC, and rebuild eglibc. This didn't solve the
> problem. This turns out to be due to ncurses configuring in widechar
> support regardless of whether or not you plan to use it (it does a widec
> and a narrowc configure and only builds and installs widec if you set
> ENABLE_WIDEC=3D"true". I set that to false and hacked out the widec confi=
g
> step which allowed ncurses to build. I'll send a proper fix for this
> tomorrow.
>
> The next failure was with gettext compilation. Several errors about
> wchar related functions being redefined in incompatible ways. I thought
> this might be related to DISTRO_FEATURES_LIBC changes I made, so I
> commented them all out and rebuilt eglibc so it should be using the
> default Poky distro configuration for eglibc (which I assumed gettext
> was known to compile with). Gettext would still not compile, claiming
> the redefined functions were first defined in /usr/include/wchar.h.
> Confused, thinking I had just rebuilt eglibc, I did another cleanall of
> eglibc and gettext and a rebuild. Same result.
>
> Not trusting the sanity of my tmp tree at this point, I deleted tmp and
> pseudodone and rebuilt the image. Everything succeeded and my final
> image with mtd-utils included was built.
>
> I tried to capture my complete log, but screen froze on me while trying
> to paste the buffer into a log :( So besides writing a bitbake wrapper
> to ensure I record ALL my bitbake sessions for reference, what would you
> recommend I change in the above process? What could I have done to
> either avoid deleting tmp or to have identified a possible bug that
> required me to delete tmp?
>
> Thanks,
>
> --
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Linux Kernel
>
>
> ------------------------------
>
> Message: 4
> Date: Wed,  2 Nov 2011 23:49:27 -0500
> From: tom.zanussi@intel.com
> To: yocto@yoctoproject.org, rpjday@crashcourse.ca,
>        scott.m.rifenbark@linux.intel.com, jfabernathy@gmail.com
> Subject: [yocto] [PATCH 0/1] Development Manual Appendix A changes
> Message-ID: <cover.1320295198.git.tom.zanussi@intel.com>
>
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> Here are a set of changes that attempt to clean up the BSP Development
> Manual a bit.  Thanks to Robert P. J. Day and Jim Abernathy for their
> input.
>
> I went through the resulting doc and set things up exactly as written,
> and so far the build is looking ok - will report if it doesn't turn out
> as expected in the morning...
>
> Tom
>
> The following changes since commit
> 9b76e6a2cfc5a4d779f3b06e3acc5ff7b8275470:
>  Simon Busch (1):
>        meta: glib-2.0: don't apply qsort_r test removable patch for nativ=
e
> version
>
> are available in the git repository at:
>
>  git://git.yoctoproject.org/poky-contrib.git tzanussi/appendix-a-changes
>  http://git.yoctoproject.org/cgit.cgi//log/?h=3Dtzanussi/appendix-a-chang=
es
>
> Tom Zanussi (1):
>  documentation/dev-manual: BSP Development Example changes
>
>  .../dev-manual/dev-manual-bsp-appendix.xml         |  188
> ++++++++++++++++----
>  1 files changed, 154 insertions(+), 34 deletions(-)
>
>
>
> ------------------------------
>
> Message: 5
> Date: Wed,  2 Nov 2011 23:49:38 -0500
> From: tom.zanussi@intel.com
> To: yocto@yoctoproject.org, rpjday@crashcourse.ca,
>        scott.m.rifenbark@linux.intel.com, jfabernathy@gmail.com
> Subject: [yocto] [PATCH 1/1] documentation/dev-manual: BSP Development
>        Example changes
> Message-ID:
>        <
> d1e372132a9cb40f48ed4b96f5893a3acba78787.1320295198.git.tom.zanussi@intel=
.com
> >
>
>
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> This patch contains a set of changes to The Yocto Project Development
> Manual's 'Appendix A. BSP Development Example' to reflect input from
> several users and to add some changes for problems and opportunities
> for enhancement that I noted when doing my own testing.
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../dev-manual/dev-manual-bsp-appendix.xml         |  188
> ++++++++++++++++----
>  1 files changed, 154 insertions(+), 34 deletions(-)
>
> diff --git a/documentation/dev-manual/dev-manual-bsp-appendix.xml
> b/documentation/dev-manual/dev-manual-bsp-appendix.xml
> index 485064d..00f5edf 100644
> --- a/documentation/dev-manual/dev-manual-bsp-appendix.xml
> +++ b/documentation/dev-manual/dev-manual-bsp-appendix.xml
> @@ -11,7 +11,8 @@
>     <itemizedlist>
>         <listitem><para>No previous preparation or use of the Yocto
> Project.</para></listitem>
>         <listitem><para>Use of the Crown Bay Board Support Package (BSP)
> as a base BSP from
> -            which to work from.</para></listitem>
> +            which to work from (we'll be starting with the Crown Bay BSP
> but will be building
> +            a new 'atom-pc' BSP using the Crown Bay as as starting
> point).</para></listitem>
>         <listitem><para>Shell commands assume
> <filename>bash</filename></para></listitem>
>         <listitem><para>Example was developed on an Intel-based Core i7
> platform running
>             Ubuntu 10.04 LTS released in April of 2010.</para></listitem>
> @@ -29,6 +30,24 @@
>         "<link linkend=3D'local-yp-release'>Yocto Project Release</link>"
>         for information on how to get these files.
>     </para>
> +    <para>
> +        For example, one way to get the Yocto Project files using git is
> to clone the poky repo:
> +        <literallayout class=3D'monospaced'>
> +     $ git clone git://git.yoctoproject.org/poky
> +     $ cd poky
> +        </literallayout>
> +    </para>
> +    <para>
> +        Alternatively, you can start with the downloaded poky edison
> tarball:
> +        <literallayout class=3D'monospaced'>
> +     $ tar xfj poky-edison-6.0.tar.bz2
> +     $ cd poky
> +        </literallayout>
> +        Note that if you're using the tarball method, you can ignore all
> the steps below that
> +        ask you to carry out git operations - you already have the
> results of those operations
> +        in the form of the edison release tarballs, and there's nothing
> left to do other than
> +        extract those tarballs into the proper locations.
> +    </para>
>
>     <para>
>         Once you have the local <filename>poky</filename> Git repository
> set up,
> @@ -44,7 +63,6 @@
>         These commands create a local branch named
> <filename>edison</filename>
>         that tracks the remote branch of the same name.
>         <literallayout class=3D'monospaced'>
> -     $ cd poky
>      $ git checkout -b edison origin/edison
>      Switched to a new branch 'edison'
>         </literallayout>
> @@ -58,7 +76,10 @@
>         For this example, the base BSP is the <trademark
> class=3D'registered'>Intel</trademark>
>         <trademark class=3D'trade'>Atom</trademark> Processor E660 with
> Intel Platform
>         Controller Hub EG20T Development Kit, which is otherwise referred
> to as "Crown Bay."
> -        The BSP layer is <filename>meta-crownbay</filename>.
> +        The BSP layer is <filename>meta-crownbay</filename>.  The Base
> BSP is simply the BSP
> +        we'll be using as a starting point, so don't worry if you don't
> actually have Crown Bay
> +        hardware - using the steps below, we'll be transforming it into =
a
> BSP that should be
> +        able to boot on generic atom-pc (netbook) hardware.
>     </para>
>
>     <para>
> @@ -73,27 +94,48 @@
>     <para>
>         You need to have the base BSP layer on your development system.
>         Similar to the local Yocto Project files, you can get the BSP
> -        layer one of two ways:
> +        layer in one of two ways:
>         download the BSP tarball and extract it, or set up a local Git
> repository that
>         has the Yocto Project BSP layers.
>         You should use the same method that you used to get the local
> Yocto Project files earlier.
>         See "<link linkend=3D'getting-setup'>Getting Setup</link>" for
> information on how to get
>         the BSP files.
>     </para>
> -
>     <para>
> -        This example assumes the local <filename>meta-intel</filename>
> Git repository is
> -        inside the local <filename>poky</filename> Git repository.
> -        The <filename>meta-intel</filename> Git repository contains all
> the metadata
> -        that supports BSP creation.
> +        This example assumes the BSP layer will be located within a
> directory named
> +        <filename>meta-intel</filename> contained within the
> <filename>poky</filename>
> +        parent directory.  The steps below will automatically create the
> +        <filename>meta-intel</filename> directory and the contained
> meta-crownbay
> +        starting point in both the git and the tarball cases.
>     </para>
> -
>     <para>
> +        If you're using the git method, you could do the following to
> create
> +        the starting layout (you should make sure you've already cd'ed
> into
> +        the poky directory in the steps above):
> +        <literallayout class=3D'monospaced'>
> +     $ git clone git://git.yoctoproject.org/meta-intel.git
> +     $ cd meta-intel
> +        </literallayout>
> +    </para>
> +    <para>
> +        Alternatively, you can start with the downloaded meta-intel
> edison tarball
> +        (again, you should make sure you've already cd'ed into the poky
> directory
> +        in the steps above):
> +        <literallayout class=3D'monospaced'>
> +     $ tar xfj crownbay-noemgd-edison-6.0.0.tar.bz2
> +     $ cd meta-intel
> +        </literallayout>
> +    </para>
> +
> +    <para>
> +        The <filename>meta-intel</filename> directory contains all the
> metadata
> +        that supports BSP creation.  If you're using the git method, the
> following
> +        step will make switch to the edison metadata; if you're using th=
e
> tarball
> +        method, you already have the correct metadata and can skip to th=
e
> next step.
>         Because <filename>meta-intel</filename> is its own Git repository=
,
> you will want
>         to be sure you are in the appropriate branch for your work.
>         For this example we are going to use the
> <filename>edison</filename> branch.
>         <literallayout class=3D'monospaced'>
> -     $ cd meta-intel
>      $ git checkout -b edison origin/edison
>      Switched to a new branch 'edison'
>         </literallayout>
> @@ -112,15 +154,12 @@
>
>     <para>
>         For this example, the new layer will be named
> <filename>meta-mymachine</filename>.
> -        The name must follow the BSP layer naming convention, which is
> +        The name should follow the BSP layer naming convention, which is
>         <filename>meta-&lt;name&gt;</filename>.
> -        The following example assumes your working directory is
> <filename>meta-intel</filename>
> +        The following assumes your working directory is
> <filename>meta-intel</filename>
>         inside the local Yocto Project files.
> -        If you downloaded and expanded a Crown Bay tarball then you
> simply copy the resulting
> -        <filename>meta-crownbay</filename> directory structure to a
> location of your choice.
> -        Good practice for a Git repository, however, is to just copy the
> new layer alongside
> -        the existing
> -        BSP layers in the <filename>meta-intel</filename> Git repository=
:
> +        To start your new layer, just copy the new layer alongside the
> existing
> +        BSP layers in the <filename>meta-intel</filename> directory:
>         <literallayout class=3D'monospaced'>
>      $ cp -a meta-crownbay/ meta-mymachine
>         </literallayout>
> @@ -162,9 +201,13 @@
>         </para>
>
>         <para>
> -            The next step makes changes to
> <filename>mymachine.conf</filename> itself.
> -            The only changes needed for this example are changes to the
> comment lines.
> -            Here we simply substitute the Crown Bay name with an
> appropriate name.
> +            The next step is to make changes to the
> <filename>mymachine.conf</filename> itself.
> +            The only changes we want to make for this example are to the
> comment lines.  Changing
> +            comments of course is never strictly necessary, but it's
> alway good form to make
> +            them reflect reality as far as possible.
> +
> +            Here simply substitute the Crown Bay name with an appropriat=
e
> name for the BSP (mymachine
> +            in this case) and change the description to something that
> describes your hardware.
>         </para>
>
>         <para>
> @@ -176,7 +219,8 @@
>         </para>
>
>         <para>
> -            The next configuration file in the new BSP layer we need to
> edit is <filename>layer.conf</filename>.
> +            The next configuration file in the new BSP layer we need to
> edit is
> +            <filename>meta-mymachine/conf/layer.conf</filename>.
>             This file identifies build information needed for the new
> layer.
>             You can see the
>             "<ulink url=3D'
> http://www.yoctoproject.org/docs/1.1/bsp-guide/bsp-guide.html#bsp-filelay=
out-layer'>Layer
> Configuration File</ulink>" section in
> @@ -232,7 +276,7 @@
>                 the remaining one that doesn't support EMGD.
>                 These commands take care of the
> <filename>recipes-bsp</filename> recipes:
>                 <literallayout class=3D'monospaced'>
> -     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*
> +     $ rm -rf meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay
>      $ mv
> meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd/ \
>      meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
>                 </literallayout>
> @@ -248,7 +292,6 @@
>                 be sure to rename remaining directories appropriately.
>                 The following commands clean up the
> <filename>recipes-graphics</filename> directory:
>                 <literallayout class=3D'monospaced'>
> -     $ rm -rf
> meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-emgd*
>      $ rm -rf
> meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
>      $ mv
> meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay=
-noemgd
> \
>
> meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/mymachin=
e
> @@ -304,6 +347,9 @@
>                 The <filename>SRCREV_machine</filename> and
> <filename>SRCREV_meta</filename>
>                 statements point to the exact commits used by the Yocto
> Project development team
>                 in their source repositories that identify the right
> kernel for our hardware.
> +                The SRCREV values are simply git commit ids that identif=
y
> which commit on each
> +                of the kernel branches (machine and meta) will be checke=
d
> out and used to build
> +                the kernel.
>             </para>
>
>             <para>
> @@ -323,12 +369,12 @@
>      SRCREV_machine_pn-linux-yocto_crownbay ?=3D \
>         "2247da9131ea7e46ed4766a69bb1353dba22f873"
>      SRCREV_meta_pn-linux-yocto_crownbay ?=3D \
> -        "67a46a608f47c19f16995be7de7b272025864b1b"
> +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>
>      SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D \
>         "2247da9131ea7e46ed4766a69bb1353dba22f873"
>      SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D \
> -        "67a46a608f47c19f16995be7de7b272025864b1b"
> +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>                 </literallayout>
>             </para>
>
> @@ -350,17 +396,33 @@
>                 and insert the commit identifiers to identify the kernel
> in which we
>                 are interested, which will be based on the
> <filename>atom-pc-standard</filename>
>                 kernel.
> +                In this case, because we're working with the edison
> branch of everything, we
> +                need to use the SRCREVs for the atom-pc branch which are
> associated with the
> +                edison release.  To find those, we need to find the
> SRCREVs that edison uses
> +                for the atom-pc branch, which we find in the
> +
>  <filename>poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend<=
/filename>
> +                file.  The machine SRCREV we want is in the
> SRCREV_machine_atom-pc variable.  The
> +                meta SRCREV isn't specified in this file, so it must be
> specified in the base
> +                kernel recipe in the
> +                <filename>poky/meta/recipes-kernel/linux/
> linux-yocto_3.0.bb</filename>
> +                file, in the SRCREV_meta variable found there.  It
> happens to be the same
> +                as the value we already inherited from the meta-crownbay
> BSP.
>                 Here are the final <filename>SRCREV</filename> statements=
:
>                 <literallayout class=3D'monospaced'>
>      SRCREV_machine_pn-linux-yocto_mymachine ?=3D \
> -        "06c798f25a19281d7fa944b14366dd75820ba009"
> +        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
>      SRCREV_meta_pn-linux-yocto_mymachine ?=3D \
> -        "67a46a608f47c19f16995be7de7b272025864b1b"
> +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>                 </literallayout>
>             </para>
>
>             <para>
> -                If you are familiar with Git repositories you probably
> won=92t have trouble locating the
> +                Note that in this example, we're using the SRCREVs we
> found already captured
> +                in the edison release because we're creating a BSP based
> on edison.  If instead
> +                we had based our BSP on the master branches, we'd want t=
o
> use the most recent
> +                SRCREVs taken directly from the kernel repo.  We won't b=
e
> doing that for this
> +                example, but if you do base a future BSP on master and
> +                if you are familiar with Git repositories you probably
> won=92t have trouble locating the
>                 exact commit strings in the Yocto Project source
> repositories you need to change
>                 the <filename>SRCREV</filename> statements.
>                 You can find all the <filename>machine</filename> and
> <filename>meta</filename>
> @@ -394,19 +456,25 @@
>                 Because we are not interested in supporting EMGD those
> three can be deleted.
>                 The remaining three must be changed so that
> <filename>mymachine</filename> replaces
>                 <filename>crownbay-noemgd</filename> and
> <filename>crownbay</filename>.
> +                Note that since we're using the atom-pc branch for this
> new BSP, we can also find
> +                the exact branch we need for the KMACHINE variable in ou=
r
> new BSP from the value
> +                we find in the
> +
>  <filename>poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend<=
/filename>
> +                file we looked at in a previous step.  In this case, the
> value we want is in
> +                the KMACHINE_atom-pc variable in that file.
>                 Here is the final
> <filename>linux-yocto_3.0.bbappend</filename> file after all
>                 the edits:
>                 <literallayout class=3D'monospaced'>
>      FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>
>      COMPATIBLE_MACHINE_mymachine =3D "mymachine"
> -     KMACHINE_mymachine  =3D "yocto/standard/mymachine"
> +     KMACHINE_mymachine  =3D "yocto/standard/common-pc/atom-pc"
>      KERNEL_FEATURES_append_mymachine +=3D " cfg/smp.scc"
>
>      SRCREV_machine_pn-linux-yocto_mymachine ?=3D \
> -        "06c798f25a19281d7fa944b14366dd75820ba009"
> +        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
>      SRCREV_meta_pn-linux-yocto_mymachine ?=3D \
> -        "67a46a608f47c19f16995be7de7b272025864b1b"
> +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>                 </literallayout>
>             </para>
>         </section>
> @@ -455,7 +523,7 @@
>                 Thus, entering the previous command created the
> <filename>yocto-build</filename> directory.
>                 If you do not provide a name for the build directory it
> defaults to
>                 <filename>build</filename>.
> -                The <filename>yocot-build</filename> directory contains =
a
> +                The <filename>yocto-build</filename> directory contains =
a
>                 <filename>conf</filename> directory that has
>                 two configuration files you will need to check:
>  <filename>bblayers.conf</filename>
>                 and <filename>local.conf</filename>.</para></listitem>
> @@ -492,7 +560,7 @@
>  </section>
>
>  <section id=3D'building-the-image-app'>
> -    <title>Building the Image</title>
> +    <title>Building and Booting the Image</title>
>
>     <para>
>         To build the image for our <filename>meta-mymachine</filename> BS=
P
> enter the following command
> @@ -513,6 +581,58 @@
>         If the build results in any type of error you should check for
> misspellings in the
>         files you changed or problems with your host development
> environment such as missing packages.
>     </para>
> +
> +    <para>
> +        Finally, once you have an image, you can try booting it from e.g
> a USB device.
> +        To prepare a bootable USB device, insert a USB flash drive into
> your build system and
> +        copy the .hddimage, located in the
> <filename>poky/build/tmp/deploy/images</filename>
> +        directory after a successful to the flash drive.  Assuming the
> USB flash drive
> +        takes device /dev/sdf, use dd to copy the live image to it.  For
> +        example:
> +    </para>
> +
> +        <literallayout class=3D'monospaced'>
> +        # dd if=3Dcore-image-sato-mymachine-20111101223904.hddimg
> of=3D/dev/sdf
> +        # sync
> +        # eject /dev/sdf
> +        </literallayout>
> +
> +    <para>
> +        This should give you a bootable USB flash device.  Insert the
> device
> +        into a bootable USB socket on the target, and power on.  This
> should
> +        result in a system booted to the Sato graphical desktop.
> +    </para>
> +
> +    <para>
> +        For reference, the sato image produced by the above steps for
> edison looked
> +        like this in terms of size.  If your sato image is much differen=
t
> from this,
> +        you probably made a mistake in one of the above steps:
> +    </para>
> +
> +        <literallayout class=3D'monospaced'>
> +        358715392 2011-11-01 19:11
> core-image-sato-mymachine-20111101223904.hddimg
> +        </literallayout>
> +
> +    <para>
> +        Note that the above instructions are also present in the README
> that was copied
> +        from meta-crownbay, which should also be updated to reflect the
> specifics of your
> +        new BSP.  That file and the README.hardware file in the top-leve=
l
> poky directory
> +        also provides some suggestions for things to try if booting fail=
s
> with strange
> +        error messages.
> +    </para>
> +
> +    <para>
> +        Note also that because this new image is not in any way tailored
> to the system you're
> +        booting it on, which is assumed to be some sort of atom-pc
> (netbook) system for this
> +        example, it may not be completely functional though it should at
> least boot to a text
> +        prompt.  Specifically, it may fail to boot into graphics without
> some tweaking.  One
> +        possible next step if that ends up being the case would be to
> replace the mymachine.conf
> +        contents with the contents of atom-pc.conf and replace xorg.conf
> with the atom-pc xorg.conf
> +        in meta-yocto see if it fares any better.  In any case, followin=
g
> the above steps should
> +        give you a buildable and probably bootable image.  Getting thing=
s
> working like you want
> +        them to for your hardware will normally require some amount of
> experimentation with
> +        configuration settings.
> +    </para>
>  </section>
>  </appendix>
>
> --
> 1.7.0.4
>
>
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 14, Issue 8
> ************************************
>



--=20
Best regards, Mike Tsukerman

jabber: miketsukerman@gmail.com
jabber: warzon@jabnet.org
skype: w_a_r_z_o_n

--f46d044472c173f13504b0d186c4
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div>Hello, I&#39;ve build core-image-minimal-dev (it does not metter for w=
hat architecture, the same bugs appears in arm and i586) image and faced a =
problem. When i&#39;m trying to build something from tarball, i get a libto=
ol errors. It&#39;s not only for libz and not every time happens. What is g=
oing wrong?</div>
<div>But all .la files exists.</div><div><br></div><div>libtool: link: (cd =
&quot;.libs&quot; &amp;&amp; rm -f &quot;librpmbuild.so.2&quot; &amp;&amp; =
ln -s &quot;librpmbuild.so.2.0.1&quot; &quot;librpmbuild.so.2&quot;)</div>
<div>libtool: link: (cd &quot;.libs&quot; &amp;&amp; rm -f &quot;librpmbuil=
d.so&quot; &amp;&amp; ln -s &quot;librpmbuild.so.2.0.1&quot; &quot;librpmbu=
ild.so&quot;)</div><div>/bin/sed: can&#39;t read =3D/usr/lib/<a href=3D"htt=
p://libz.la">libz.la</a>: No such file or directory</div>
<div>libtool: link: `=3D/usr/lib/<a href=3D"http://libz.la">libz.la</a>&#39=
; is not a valid libtool archive</div><div>make[2]: *** [<a href=3D"http://=
librpmbuild.la">librpmbuild.la</a>] Error 1</div><div>make[2]: Leaving dire=
ctory `/home/root/rpm-4.9.1.2/build&#39;</div>
<div>make[1]: *** [all-recursive] Error 1</div><div>make[1]: Leaving direct=
ory `/home/root/rpm-4.9.1.2&#39;</div><div>make: *** [all] Error 2</div><di=
v><br></div><br><div class=3D"gmail_quote">On Thu, Nov 3, 2011 at 8:49 AM, =
 <span dir=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org">yo=
cto-request@yoctoproject.org</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;">Send yocto mailing list submissions to<br>
 =A0 =A0 =A0 =A0<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoprojec=
t.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
 =A0 =A0 =A0 =A0<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
 =A0 =A0 =A0 =A0<a href=3D"mailto:yocto-request@yoctoproject.org">yocto-req=
uest@yoctoproject.org</a><br>
<br>
You can reach the person managing the list at<br>
 =A0 =A0 =A0 =A0<a href=3D"mailto:yocto-owner@yoctoproject.org">yocto-owner=
@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
 =A0 1. Announcement: pseudo 1.2 released (Mark Hatle)<br>
 =A0 2. Re: Build error while following Appendix A. Yocto Project<br>
 =A0 =A0 =A0Development manual (Jim Abernathy)<br>
 =A0 3. Help diagnosing a build failure involving ncurses, gettext,<br>
 =A0 =A0 =A0and eglibc (Darren Hart)<br>
 =A0 4. [PATCH 0/1] Development Manual Appendix A changes<br>
 =A0 =A0 =A0(<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.com=
</a>)<br>
 =A0 5. [PATCH 1/1] documentation/dev-manual: BSP Development =A0 =A0 Examp=
le<br>
 =A0 =A0 =A0changes (<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@i=
ntel.com</a>)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Wed, 2 Nov 2011 15:49:10 -0500<br>
From: Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle=
@windriver.com</a>&gt;<br>
To: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Cc: &quot;Seebach, Peter&quot; &lt;<a href=3D"mailto:Peter.Seebach@windrive=
r.com">Peter.Seebach@windriver.com</a>&gt;<br>
Subject: [yocto] Announcement: pseudo 1.2 released<br>
Message-ID: &lt;<a href=3D"mailto:4EB1ACC6.8040900@windriver.com">4EB1ACC6.=
8040900@windriver.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;ISO-8859-1&quot;<br>
<br>
Making a release announcement on behalf of the pseudo maintainer...<br>
<br>
pseudo 1.2 is now released. =A0It can be pulled from:<br>
<br>
Via git:<br>
<br>
git://<a href=3D"http://github.com/wrpseudo/pseudo.git" target=3D"_blank">g=
ithub.com/wrpseudo/pseudo.git</a><br>
git://<a href=3D"http://git.yoctoproject.org/pseudo.git" target=3D"_blank">=
git.yoctoproject.org/pseudo.git</a><br>
<br>
branch PSEUDO_1_2<br>
<br>
or the tarball from<br>
<br>
<a href=3D"http://downloads.yoctoproject.org/releases/pseudo/pseudo-1.2.tar=
.bz2" target=3D"_blank">http://downloads.yoctoproject.org/releases/pseudo/p=
seudo-1.2.tar.bz2</a><br>
<br>
The included ChangeLog.txt<br>
(<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/pseudo/tree/ChangeLog=
.txt?h=3DPSEUDO_1_2" target=3D"_blank">http://git.yoctoproject.org/cgit/cgi=
t.cgi/pseudo/tree/ChangeLog.txt?h=3DPSEUDO_1_2</a>)<br>
<br>
Contains a full list of changes.<br>
<br>
--Mark<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Wed, 02 Nov 2011 18:05:05 -0400<br>
From: Jim Abernathy &lt;<a href=3D"mailto:jfabernathy@gmail.com">jfabernath=
y@gmail.com</a>&gt;<br>
To: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@in=
tel.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] Build error while following Appendix A. Yocto<br>
 =A0 =A0 =A0 =A0Project Development manual<br>
Message-ID: &lt;1320271505.13661.20.camel@jim-ubuntu-10&gt;<br>
Content-Type: text/plain; charset=3D&quot;UTF-8&quot;<br>
<br>
I&#39;m noticing fetcher failures while my bitbake is working. They are<br>
listed as warning. Do I ignore these??<br>
<br>
WARNING: Fetcher failure for URL: &#39;None&#39;. Fetch command export<br>
HOME=3D&quot;/home/jim&quot;; export SSH_AGENT_PID=3D&quot;1500&quot;; expo=
rt<br>
SSH_AUTH_SOCK=3D&quot;/tmp/keyring-Zcbzax/ssh&quot;; export<br>
GIT_CONFIG=3D&quot;/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/us=
r/etc/gitconfig&quot;; export PATH=3D&quot;/home/jim/bsp-test/poky/build/tm=
p/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jim/bsp-test/poky/buil=
d/tmp/sysroots/mymachine/usr/bin/crossscripts:/home/jim/bsp-test/poky/build=
/tmp/sysroots/i686-linux/usr/sbin:/home/jim/bsp-test/poky/build/tmp/sysroot=
s/i686-linux/usr/bin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/=
sbin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/b=
sp-test/poky/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-tes=
t/poky/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky=
/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scrip=
ts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/po=
ky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/ji=
m/CodeSourcery/Sourcery_G++_Lite/bin:/usr/local/sbin:/usr/local/bin:/usr/sb=
in:/usr/bin:/sbin:/bin:/usr/games:<br>

=A0/home/jim/bsp-test/poky/scripts&quot;; /usr/bin/env wget -t 5 -q --passi=
ve-ftp --no-check-certificate -P /home/jim/bsp-test/poky/build/downloads &#=
39;<a href=3D"https://fedorahosted.org/releases/l/i/liberation-fonts/libera=
tion-fonts-1.04.tar.gz" target=3D"_blank">https://fedorahosted.org/releases=
/l/i/liberation-fonts/liberation-fonts-1.04.tar.gz</a>&#39; failed with sig=
nal 4, output:<br>

<br>
&gt;<br>
&gt;<br>
<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Wed, 02 Nov 2011 17:53:05 -0700<br>
From: Darren Hart &lt;<a href=3D"mailto:dvhart@linux.intel.com">dvhart@linu=
x.intel.com</a>&gt;<br>
To: Yocto Project &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yocto=
project.org</a>&gt;<br>
Subject: [yocto] Help diagnosing a build failure involving ncurses,<br>
 =A0 =A0 =A0 =A0gettext, =A0 =A0 =A0 =A0and eglibc<br>
Message-ID: &lt;<a href=3D"mailto:4EB1E5F1.3050106@linux.intel.com">4EB1E5F=
1.3050106@linux.intel.com</a>&gt;<br>
Content-Type: text/plain; charset=3DISO-8859-1<br>
<br>
I ran into various issues trying to add mtd-utils to an image today. As<br>
I worked through the issues, I found after fixing a couple things, I was<br=
>
more guessing and grasping at straws than anything else. I&#39;ll recount<b=
r>
what I did, and if anyone can offer a better approach to what I did that<br=
>
would have resulted in a more deterministic result, I&#39;d appreciate it<b=
r>
very much.<br>
<br>
I copied meta-tiny to a new layer. I disabled uclibc (so I&#39;m building<b=
r>
with eglibc). I added mtd-utils from OE and used the DEPENDS line using<br>
util-linux (and not util-linux-ng which we don&#39;t have in yocto). This<b=
r>
resulted in ncurses failing the qa configure with host contamination<br>
with the widec headers. I first attempted to enable widechar support in<br>
my DISTRO_FEATURES_LIBC, and rebuild eglibc. This didn&#39;t solve the<br>
problem. This turns out to be due to ncurses configuring in widechar<br>
support regardless of whether or not you plan to use it (it does a widec<br=
>
and a narrowc configure and only builds and installs widec if you set<br>
ENABLE_WIDEC=3D&quot;true&quot;. I set that to false and hacked out the wid=
ec config<br>
step which allowed ncurses to build. I&#39;ll send a proper fix for this<br=
>
tomorrow.<br>
<br>
The next failure was with gettext compilation. Several errors about<br>
wchar related functions being redefined in incompatible ways. I thought<br>
this might be related to DISTRO_FEATURES_LIBC changes I made, so I<br>
commented them all out and rebuilt eglibc so it should be using the<br>
default Poky distro configuration for eglibc (which I assumed gettext<br>
was known to compile with). Gettext would still not compile, claiming<br>
the redefined functions were first defined in /usr/include/wchar.h.<br>
Confused, thinking I had just rebuilt eglibc, I did another cleanall of<br>
eglibc and gettext and a rebuild. Same result.<br>
<br>
Not trusting the sanity of my tmp tree at this point, I deleted tmp and<br>
pseudodone and rebuilt the image. Everything succeeded and my final<br>
image with mtd-utils included was built.<br>
<br>
I tried to capture my complete log, but screen froze on me while trying<br>
to paste the buffer into a log :( So besides writing a bitbake wrapper<br>
to ensure I record ALL my bitbake sessions for reference, what would you<br=
>
recommend I change in the above process? What could I have done to<br>
either avoid deleting tmp or to have identified a possible bug that<br>
required me to delete tmp?<br>
<br>
Thanks,<br>
<br>
--<br>
Darren Hart<br>
Intel Open Source Technology Center<br>
Yocto Project - Linux Kernel<br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Wed, =A02 Nov 2011 23:49:27 -0500<br>
From: <a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.com</a><br=
>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>, <=
a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>,<br>
 =A0 =A0 =A0 =A0<a href=3D"mailto:scott.m.rifenbark@linux.intel.com">scott.=
m.rifenbark@linux.intel.com</a>, <a href=3D"mailto:jfabernathy@gmail.com">j=
fabernathy@gmail.com</a><br>
Subject: [yocto] [PATCH 0/1] Development Manual Appendix A changes<br>
Message-ID: &lt;<a href=3D"mailto:cover.1320295198.git.tom.zanussi@intel.co=
m">cover.1320295198.git.tom.zanussi@intel.com</a>&gt;<br>
<br>
From: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@=
intel.com</a>&gt;<br>
<br>
Here are a set of changes that attempt to clean up the BSP Development<br>
Manual a bit. =A0Thanks to Robert P. J. Day and Jim Abernathy for their<br>
input.<br>
<br>
I went through the resulting doc and set things up exactly as written,<br>
and so far the build is looking ok - will report if it doesn&#39;t turn out=
<br>
as expected in the morning...<br>
<br>
Tom<br>
<br>
The following changes since commit 9b76e6a2cfc5a4d779f3b06e3acc5ff7b8275470=
:<br>
 =A0Simon Busch (1):<br>
 =A0 =A0 =A0 =A0meta: glib-2.0: don&#39;t apply qsort_r test removable patc=
h for native version<br>
<br>
are available in the git repository at:<br>
<br>
 =A0git://<a href=3D"http://git.yoctoproject.org/poky-contrib.git" target=
=3D"_blank">git.yoctoproject.org/poky-contrib.git</a> tzanussi/appendix-a-c=
hanges<br>
 =A0<a href=3D"http://git.yoctoproject.org/cgit.cgi//log/?h=3Dtzanussi/appe=
ndix-a-changes" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi//log=
/?h=3Dtzanussi/appendix-a-changes</a><br>
<br>
Tom Zanussi (1):<br>
 =A0documentation/dev-manual: BSP Development Example changes<br>
<br>
=A0.../dev-manual/dev-manual-bsp-appendix.xml =A0 =A0 =A0 =A0 | =A0188 ++++=
++++++++++++----<br>
=A01 files changed, 154 insertions(+), 34 deletions(-)<br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Wed, =A02 Nov 2011 23:49:38 -0500<br>
From: <a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@intel.com</a><br=
>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>, <=
a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a>,<br>
 =A0 =A0 =A0 =A0<a href=3D"mailto:scott.m.rifenbark@linux.intel.com">scott.=
m.rifenbark@linux.intel.com</a>, <a href=3D"mailto:jfabernathy@gmail.com">j=
fabernathy@gmail.com</a><br>
Subject: [yocto] [PATCH 1/1] documentation/dev-manual: BSP Development<br>
 =A0 =A0 =A0 =A0Example changes<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:d1e372132a9cb40f48ed4b96f5893a3acba78=
787.1320295198.git.tom.zanussi@intel.com">d1e372132a9cb40f48ed4b96f5893a3ac=
ba78787.1320295198.git.tom.zanussi@intel.com</a>&gt;<br>
<br>
<br>
From: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@=
intel.com</a>&gt;<br>
<br>
This patch contains a set of changes to The Yocto Project Development<br>
Manual&#39;s &#39;Appendix A. BSP Development Example&#39; to reflect input=
 from<br>
several users and to add some changes for problems and opportunities<br>
for enhancement that I noted when doing my own testing.<br>
<br>
Signed-off-by: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom=
.zanussi@intel.com</a>&gt;<br>
---<br>
=A0.../dev-manual/dev-manual-bsp-appendix.xml =A0 =A0 =A0 =A0 | =A0188 ++++=
++++++++++++----<br>
=A01 files changed, 154 insertions(+), 34 deletions(-)<br>
<br>
diff --git a/documentation/dev-manual/dev-manual-bsp-appendix.xml b/documen=
tation/dev-manual/dev-manual-bsp-appendix.xml<br>
index 485064d..00f5edf 100644<br>
--- a/documentation/dev-manual/dev-manual-bsp-appendix.xml<br>
+++ b/documentation/dev-manual/dev-manual-bsp-appendix.xml<br>
@@ -11,7 +11,8 @@<br>
 =A0 =A0 &lt;itemizedlist&gt;<br>
 =A0 =A0 =A0 =A0 &lt;listitem&gt;&lt;para&gt;No previous preparation or use=
 of the Yocto Project.&lt;/para&gt;&lt;/listitem&gt;<br>
 =A0 =A0 =A0 =A0 &lt;listitem&gt;&lt;para&gt;Use of the Crown Bay Board Sup=
port Package (BSP) as a base BSP from<br>
- =A0 =A0 =A0 =A0 =A0 =A0which to work from.&lt;/para&gt;&lt;/listitem&gt;<=
br>
+ =A0 =A0 =A0 =A0 =A0 =A0which to work from (we&#39;ll be starting with the=
 Crown Bay BSP but will be building<br>
+ =A0 =A0 =A0 =A0 =A0 =A0a new &#39;atom-pc&#39; BSP using the Crown Bay as=
 as starting point).&lt;/para&gt;&lt;/listitem&gt;<br>
 =A0 =A0 =A0 =A0 &lt;listitem&gt;&lt;para&gt;Shell commands assume &lt;file=
name&gt;bash&lt;/filename&gt;&lt;/para&gt;&lt;/listitem&gt;<br>
 =A0 =A0 =A0 =A0 &lt;listitem&gt;&lt;para&gt;Example was developed on an In=
tel-based Core i7 platform running<br>
 =A0 =A0 =A0 =A0 =A0 =A0 Ubuntu 10.04 LTS released in April of 2010.&lt;/pa=
ra&gt;&lt;/listitem&gt;<br>
@@ -29,6 +30,24 @@<br>
 =A0 =A0 =A0 =A0 &quot;&lt;link linkend=3D&#39;local-yp-release&#39;&gt;Yoc=
to Project Release&lt;/link&gt;&quot;<br>
 =A0 =A0 =A0 =A0 for information on how to get these files.<br>
 =A0 =A0 &lt;/para&gt;<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0For example, one way to get the Yocto Project files using =
git is to clone the poky repo:<br>
+ =A0 =A0 =A0 =A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
+ =A0 =A0 $ git clone git://<a href=3D"http://git.yoctoproject.org/poky" ta=
rget=3D"_blank">git.yoctoproject.org/poky</a><br>
+ =A0 =A0 $ cd poky<br>
+ =A0 =A0 =A0 =A0&lt;/literallayout&gt;<br>
+ =A0 =A0&lt;/para&gt;<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0Alternatively, you can start with the downloaded poky edis=
on tarball:<br>
+ =A0 =A0 =A0 =A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
+ =A0 =A0 $ tar xfj poky-edison-6.0.tar.bz2<br>
+ =A0 =A0 $ cd poky<br>
+ =A0 =A0 =A0 =A0&lt;/literallayout&gt;<br>
+ =A0 =A0 =A0 =A0Note that if you&#39;re using the tarball method, you can =
ignore all the steps below that<br>
+ =A0 =A0 =A0 =A0ask you to carry out git operations - you already have the=
 results of those operations<br>
+ =A0 =A0 =A0 =A0in the form of the edison release tarballs, and there&#39;=
s nothing left to do other than<br>
+ =A0 =A0 =A0 =A0extract those tarballs into the proper locations.<br>
+ =A0 =A0&lt;/para&gt;<br>
<br>
 =A0 =A0 &lt;para&gt;<br>
 =A0 =A0 =A0 =A0 Once you have the local &lt;filename&gt;poky&lt;/filename&=
gt; Git repository set up,<br>
@@ -44,7 +63,6 @@<br>
 =A0 =A0 =A0 =A0 These commands create a local branch named &lt;filename&gt=
;edison&lt;/filename&gt;<br>
 =A0 =A0 =A0 =A0 that tracks the remote branch of the same name.<br>
 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
- =A0 =A0 $ cd poky<br>
 =A0 =A0 =A0$ git checkout -b edison origin/edison<br>
 =A0 =A0 =A0Switched to a new branch &#39;edison&#39;<br>
 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
@@ -58,7 +76,10 @@<br>
 =A0 =A0 =A0 =A0 For this example, the base BSP is the &lt;trademark class=
=3D&#39;registered&#39;&gt;Intel&lt;/trademark&gt;<br>
 =A0 =A0 =A0 =A0 &lt;trademark class=3D&#39;trade&#39;&gt;Atom&lt;/trademar=
k&gt; Processor E660 with Intel Platform<br>
 =A0 =A0 =A0 =A0 Controller Hub EG20T Development Kit, which is otherwise r=
eferred to as &quot;Crown Bay.&quot;<br>
- =A0 =A0 =A0 =A0The BSP layer is &lt;filename&gt;meta-crownbay&lt;/filenam=
e&gt;.<br>
+ =A0 =A0 =A0 =A0The BSP layer is &lt;filename&gt;meta-crownbay&lt;/filenam=
e&gt;. =A0The Base BSP is simply the BSP<br>
+ =A0 =A0 =A0 =A0we&#39;ll be using as a starting point, so don&#39;t worry=
 if you don&#39;t actually have Crown Bay<br>
+ =A0 =A0 =A0 =A0hardware - using the steps below, we&#39;ll be transformin=
g it into a BSP that should be<br>
+ =A0 =A0 =A0 =A0able to boot on generic atom-pc (netbook) hardware.<br>
 =A0 =A0 &lt;/para&gt;<br>
<br>
 =A0 =A0 &lt;para&gt;<br>
@@ -73,27 +94,48 @@<br>
 =A0 =A0 &lt;para&gt;<br>
 =A0 =A0 =A0 =A0 You need to have the base BSP layer on your development sy=
stem.<br>
 =A0 =A0 =A0 =A0 Similar to the local Yocto Project files, you can get the =
BSP<br>
- =A0 =A0 =A0 =A0layer one of two ways:<br>
+ =A0 =A0 =A0 =A0layer in one of two ways:<br>
 =A0 =A0 =A0 =A0 download the BSP tarball and extract it, or set up a local=
 Git repository that<br>
 =A0 =A0 =A0 =A0 has the Yocto Project BSP layers.<br>
 =A0 =A0 =A0 =A0 You should use the same method that you used to get the lo=
cal Yocto Project files earlier.<br>
 =A0 =A0 =A0 =A0 See &quot;&lt;link linkend=3D&#39;getting-setup&#39;&gt;Ge=
tting Setup&lt;/link&gt;&quot; for information on how to get<br>
 =A0 =A0 =A0 =A0 the BSP files.<br>
 =A0 =A0 &lt;/para&gt;<br>
-<br>
 =A0 =A0 &lt;para&gt;<br>
- =A0 =A0 =A0 =A0This example assumes the local &lt;filename&gt;meta-intel&=
lt;/filename&gt; Git repository is<br>
- =A0 =A0 =A0 =A0inside the local &lt;filename&gt;poky&lt;/filename&gt; Git=
 repository.<br>
- =A0 =A0 =A0 =A0The &lt;filename&gt;meta-intel&lt;/filename&gt; Git reposi=
tory contains all the metadata<br>
- =A0 =A0 =A0 =A0that supports BSP creation.<br>
+ =A0 =A0 =A0 =A0This example assumes the BSP layer will be located within =
a directory named<br>
+ =A0 =A0 =A0 =A0&lt;filename&gt;meta-intel&lt;/filename&gt; contained with=
in the &lt;filename&gt;poky&lt;/filename&gt;<br>
+ =A0 =A0 =A0 =A0parent directory. =A0The steps below will automatically cr=
eate the<br>
+ =A0 =A0 =A0 =A0&lt;filename&gt;meta-intel&lt;/filename&gt; directory and =
the contained meta-crownbay<br>
+ =A0 =A0 =A0 =A0starting point in both the git and the tarball cases.<br>
 =A0 =A0 &lt;/para&gt;<br>
-<br>
 =A0 =A0 &lt;para&gt;<br>
+ =A0 =A0 =A0 =A0If you&#39;re using the git method, you could do the follo=
wing to create<br>
+ =A0 =A0 =A0 =A0the starting layout (you should make sure you&#39;ve alrea=
dy cd&#39;ed into<br>
+ =A0 =A0 =A0 =A0the poky directory in the steps above):<br>
+ =A0 =A0 =A0 =A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
+ =A0 =A0 $ git clone git://<a href=3D"http://git.yoctoproject.org/meta-int=
el.git" target=3D"_blank">git.yoctoproject.org/meta-intel.git</a><br>
+ =A0 =A0 $ cd meta-intel<br>
+ =A0 =A0 =A0 =A0&lt;/literallayout&gt;<br>
+ =A0 =A0&lt;/para&gt;<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0Alternatively, you can start with the downloaded meta-inte=
l edison tarball<br>
+ =A0 =A0 =A0 =A0(again, you should make sure you&#39;ve already cd&#39;ed =
into the poky directory<br>
+ =A0 =A0 =A0 =A0in the steps above):<br>
+ =A0 =A0 =A0 =A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
+ =A0 =A0 $ tar xfj crownbay-noemgd-edison-6.0.0.tar.bz2<br>
+ =A0 =A0 $ cd meta-intel<br>
+ =A0 =A0 =A0 =A0&lt;/literallayout&gt;<br>
+ =A0 =A0&lt;/para&gt;<br>
+<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0The &lt;filename&gt;meta-intel&lt;/filename&gt; directory =
contains all the metadata<br>
+ =A0 =A0 =A0 =A0that supports BSP creation. =A0If you&#39;re using the git=
 method, the following<br>
+ =A0 =A0 =A0 =A0step will make switch to the edison metadata; if you&#39;r=
e using the tarball<br>
+ =A0 =A0 =A0 =A0method, you already have the correct metadata and can skip=
 to the next step.<br>
 =A0 =A0 =A0 =A0 Because &lt;filename&gt;meta-intel&lt;/filename&gt; is its=
 own Git repository, you will want<br>
 =A0 =A0 =A0 =A0 to be sure you are in the appropriate branch for your work=
.<br>
 =A0 =A0 =A0 =A0 For this example we are going to use the &lt;filename&gt;e=
dison&lt;/filename&gt; branch.<br>
 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
- =A0 =A0 $ cd meta-intel<br>
 =A0 =A0 =A0$ git checkout -b edison origin/edison<br>
 =A0 =A0 =A0Switched to a new branch &#39;edison&#39;<br>
 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
@@ -112,15 +154,12 @@<br>
<br>
 =A0 =A0 &lt;para&gt;<br>
 =A0 =A0 =A0 =A0 For this example, the new layer will be named &lt;filename=
&gt;meta-mymachine&lt;/filename&gt;.<br>
- =A0 =A0 =A0 =A0The name must follow the BSP layer naming convention, whic=
h is<br>
+ =A0 =A0 =A0 =A0The name should follow the BSP layer naming convention, wh=
ich is<br>
 =A0 =A0 =A0 =A0 &lt;filename&gt;meta-&amp;lt;name&amp;gt;&lt;/filename&gt;=
.<br>
- =A0 =A0 =A0 =A0The following example assumes your working directory is &l=
t;filename&gt;meta-intel&lt;/filename&gt;<br>
+ =A0 =A0 =A0 =A0The following assumes your working directory is &lt;filena=
me&gt;meta-intel&lt;/filename&gt;<br>
 =A0 =A0 =A0 =A0 inside the local Yocto Project files.<br>
- =A0 =A0 =A0 =A0If you downloaded and expanded a Crown Bay tarball then yo=
u simply copy the resulting<br>
- =A0 =A0 =A0 =A0&lt;filename&gt;meta-crownbay&lt;/filename&gt; directory s=
tructure to a location of your choice.<br>
- =A0 =A0 =A0 =A0Good practice for a Git repository, however, is to just co=
py the new layer alongside<br>
- =A0 =A0 =A0 =A0the existing<br>
- =A0 =A0 =A0 =A0BSP layers in the &lt;filename&gt;meta-intel&lt;/filename&=
gt; Git repository:<br>
+ =A0 =A0 =A0 =A0To start your new layer, just copy the new layer alongside=
 the existing<br>
+ =A0 =A0 =A0 =A0BSP layers in the &lt;filename&gt;meta-intel&lt;/filename&=
gt; directory:<br>
 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
 =A0 =A0 =A0$ cp -a meta-crownbay/ meta-mymachine<br>
 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
@@ -162,9 +201,13 @@<br>
 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
<br>
 =A0 =A0 =A0 =A0 &lt;para&gt;<br>
- =A0 =A0 =A0 =A0 =A0 =A0The next step makes changes to &lt;filename&gt;mym=
achine.conf&lt;/filename&gt; itself.<br>
- =A0 =A0 =A0 =A0 =A0 =A0The only changes needed for this example are chang=
es to the comment lines.<br>
- =A0 =A0 =A0 =A0 =A0 =A0Here we simply substitute the Crown Bay name with =
an appropriate name.<br>
+ =A0 =A0 =A0 =A0 =A0 =A0The next step is to make changes to the &lt;filena=
me&gt;mymachine.conf&lt;/filename&gt; itself.<br>
+ =A0 =A0 =A0 =A0 =A0 =A0The only changes we want to make for this example =
are to the comment lines. =A0Changing<br>
+ =A0 =A0 =A0 =A0 =A0 =A0comments of course is never strictly necessary, bu=
t it&#39;s alway good form to make<br>
+ =A0 =A0 =A0 =A0 =A0 =A0them reflect reality as far as possible.<br>
+<br>
+ =A0 =A0 =A0 =A0 =A0 =A0Here simply substitute the Crown Bay name with an =
appropriate name for the BSP (mymachine<br>
+ =A0 =A0 =A0 =A0 =A0 =A0in this case) and change the description to someth=
ing that describes your hardware.<br>
 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
<br>
 =A0 =A0 =A0 =A0 &lt;para&gt;<br>
@@ -176,7 +219,8 @@<br>
 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
<br>
 =A0 =A0 =A0 =A0 &lt;para&gt;<br>
- =A0 =A0 =A0 =A0 =A0 =A0The next configuration file in the new BSP layer w=
e need to edit is &lt;filename&gt;layer.conf&lt;/filename&gt;.<br>
+ =A0 =A0 =A0 =A0 =A0 =A0The next configuration file in the new BSP layer w=
e need to edit is<br>
+ =A0 =A0 =A0 =A0 =A0 =A0&lt;filename&gt;meta-mymachine/conf/layer.conf&lt;=
/filename&gt;.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 This file identifies build information needed for =
the new layer.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 You can see the<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &quot;&lt;ulink url=3D&#39;<a href=3D"http://www.y=
octoproject.org/docs/1.1/bsp-guide/bsp-guide.html#bsp-filelayout-layer" tar=
get=3D"_blank">http://www.yoctoproject.org/docs/1.1/bsp-guide/bsp-guide.htm=
l#bsp-filelayout-layer</a>&#39;&gt;Layer Configuration File&lt;/ulink&gt;&q=
uot; section in<br>

@@ -232,7 +276,7 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 the remaining one that doesn&#39;t support=
 EMGD.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 These commands take care of the &lt;filena=
me&gt;recipes-bsp&lt;/filename&gt; recipes:<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&=
#39;&gt;<br>
- =A0 =A0 $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*<br>
+ =A0 =A0 $ rm -rf meta-mymachine/recipes-bsp/formfactor/formfactor/crownba=
y<br>
 =A0 =A0 =A0$ mv meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-=
noemgd/ \<br>
 =A0 =A0 =A0meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
@@ -248,7 +292,6 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 be sure to rename remaining directories ap=
propriately.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 The following commands clean up the &lt;fi=
lename&gt;recipes-graphics&lt;/filename&gt; directory:<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&=
#39;&gt;<br>
- =A0 =A0 $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf8=
6-emgd*<br>
 =A0 =A0 =A0$ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-x=
f86-config/crownbay<br>
 =A0 =A0 =A0$ mv meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-=
config/crownbay-noemgd \<br>
 =A0 =A0 =A0 =A0 meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-=
config/mymachine<br>
@@ -304,6 +347,9 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 The &lt;filename&gt;SRCREV_machine&lt;/fil=
ename&gt; and &lt;filename&gt;SRCREV_meta&lt;/filename&gt;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 statements point to the exact commits used=
 by the Yocto Project development team<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 in their source repositories that identify=
 the right kernel for our hardware.<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0The SRCREV values are simply git commit id=
s that identify which commit on each<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0of the kernel branches (machine and meta) =
will be checked out and used to build<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0the kernel.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &lt;para&gt;<br>
@@ -323,12 +369,12 @@<br>
 =A0 =A0 =A0SRCREV_machine_pn-linux-yocto_crownbay ?=3D \<br>
 =A0 =A0 =A0 =A0 &quot;2247da9131ea7e46ed4766a69bb1353dba22f873&quot;<br>
 =A0 =A0 =A0SRCREV_meta_pn-linux-yocto_crownbay ?=3D \<br>
- =A0 =A0 =A0 =A0&quot;67a46a608f47c19f16995be7de7b272025864b1b&quot;<br>
+ =A0 =A0 =A0 =A0&quot;d05450e4aef02c1b7137398ab3a9f8f96da74f52&quot;<br>
<br>
 =A0 =A0 =A0SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?=3D \<br>
 =A0 =A0 =A0 =A0 &quot;2247da9131ea7e46ed4766a69bb1353dba22f873&quot;<br>
 =A0 =A0 =A0SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?=3D \<br>
- =A0 =A0 =A0 =A0&quot;67a46a608f47c19f16995be7de7b272025864b1b&quot;<br>
+ =A0 =A0 =A0 =A0&quot;d05450e4aef02c1b7137398ab3a9f8f96da74f52&quot;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
<br>
@@ -350,17 +396,33 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 and insert the commit identifiers to ident=
ify the kernel in which we<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 are interested, which will be based on the=
 &lt;filename&gt;atom-pc-standard&lt;/filename&gt;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 kernel.<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0In this case, because we&#39;re working wi=
th the edison branch of everything, we<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0need to use the SRCREVs for the atom-pc br=
anch which are associated with the<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0edison release. =A0To find those, we need =
to find the SRCREVs that edison uses<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0for the atom-pc branch, which we find in t=
he<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;filename&gt;poky/meta-yocto/recipes-ke=
rnel/linux/linux-yocto_3.0.bbappend&lt;/filename&gt;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file. =A0The machine SRCREV we want is in =
the SRCREV_machine_atom-pc variable. =A0The<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0meta SRCREV isn&#39;t specified in this fi=
le, so it must be specified in the base<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0kernel recipe in the<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;filename&gt;poky/meta/recipes-kernel/l=
inux/<a href=3D"http://linux-yocto_3.0.bb" target=3D"_blank">linux-yocto_3.=
0.bb</a>&lt;/filename&gt;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file, in the SRCREV_meta variable found th=
ere. =A0It happens to be the same<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0as the value we already inherited from the=
 meta-crownbay BSP.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Here are the final &lt;filename&gt;SRCREV&=
lt;/filename&gt; statements:<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&=
#39;&gt;<br>
 =A0 =A0 =A0SRCREV_machine_pn-linux-yocto_mymachine=A0?=3D \<br>
- =A0 =A0 =A0 =A0&quot;06c798f25a19281d7fa944b14366dd75820ba009&quot;<br>
+ =A0 =A0 =A0 =A0&quot;1e18e44adbe79b846e382370eb29bc4b8cd5a1a0&quot;<br>
 =A0 =A0 =A0SRCREV_meta_pn-linux-yocto_mymachine=A0?=3D \<br>
- =A0 =A0 =A0 =A0&quot;67a46a608f47c19f16995be7de7b272025864b1b&quot;<br>
+ =A0 =A0 =A0 =A0&quot;d05450e4aef02c1b7137398ab3a9f8f96da74f52&quot;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &lt;para&gt;<br>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0If you are familiar with Git repositories =
you probably won=92t have trouble locating the<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Note that in this example, we&#39;re using=
 the SRCREVs we found already captured<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0in the edison release because we&#39;re cr=
eating a BSP based on edison. =A0If instead<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0we had based our BSP on the master branche=
s, we&#39;d want to use the most recent<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0SRCREVs taken directly from the kernel rep=
o. =A0We won&#39;t be doing that for this<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0example, but if you do base a future BSP o=
n master and<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0if you are familiar with Git repositories =
you probably won=92t have trouble locating the<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 exact commit strings in the Yocto Project =
source repositories you need to change<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 the &lt;filename&gt;SRCREV&lt;/filename&gt=
; statements.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 You can find all the &lt;filename&gt;machi=
ne&lt;/filename&gt; and &lt;filename&gt;meta&lt;/filename&gt;<br>
@@ -394,19 +456,25 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Because we are not interested in supportin=
g EMGD those three can be deleted.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 The remaining three must be changed so tha=
t &lt;filename&gt;mymachine&lt;/filename&gt; replaces<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;filename&gt;crownbay-noemgd&lt;/filena=
me&gt; and &lt;filename&gt;crownbay&lt;/filename&gt;.<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Note that since we&#39;re using the atom-p=
c branch for this new BSP, we can also find<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0the exact branch we need for the KMACHINE =
variable in our new BSP from the value<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0we find in the<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;filename&gt;poky/meta-yocto/recipes-ke=
rnel/linux/linux-yocto_3.0.bbappend&lt;/filename&gt;<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0file we looked at in a previous step. =A0I=
n this case, the value we want is in<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0the KMACHINE_atom-pc variable in that file=
.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Here is the final &lt;filename&gt;linux-yo=
cto_3.0.bbappend&lt;/filename&gt; file after all<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 the edits:<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;literallayout class=3D&#39;monospaced&=
#39;&gt;<br>
 =A0 =A0 =A0FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
<br>
 =A0 =A0 =A0COMPATIBLE_MACHINE_mymachine =3D &quot;mymachine&quot;<br>
- =A0 =A0 KMACHINE_mymachine =A0=3D &quot;yocto/standard/mymachine&quot;<br=
>
+ =A0 =A0 KMACHINE_mymachine =A0=3D &quot;yocto/standard/common-pc/atom-pc&=
quot;<br>
 =A0 =A0 =A0KERNEL_FEATURES_append_mymachine +=3D &quot; cfg/smp.scc&quot;<=
br>
<br>
 =A0 =A0 =A0SRCREV_machine_pn-linux-yocto_mymachine ?=3D \<br>
- =A0 =A0 =A0 =A0&quot;06c798f25a19281d7fa944b14366dd75820ba009&quot;<br>
+ =A0 =A0 =A0 =A0&quot;1e18e44adbe79b846e382370eb29bc4b8cd5a1a0&quot;<br>
 =A0 =A0 =A0SRCREV_meta_pn-linux-yocto_mymachine ?=3D \<br>
- =A0 =A0 =A0 =A0&quot;67a46a608f47c19f16995be7de7b272025864b1b&quot;<br>
+ =A0 =A0 =A0 =A0&quot;d05450e4aef02c1b7137398ab3a9f8f96da74f52&quot;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/literallayout&gt;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 &lt;/para&gt;<br>
 =A0 =A0 =A0 =A0 &lt;/section&gt;<br>
@@ -455,7 +523,7 @@<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 Thus, entering the previous command create=
d the &lt;filename&gt;yocto-build&lt;/filename&gt; directory.<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 If you do not provide a name for the build=
 directory it defaults to<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;filename&gt;build&lt;/filename&gt;.<br=
>
- =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0The &lt;filename&gt;yocot-build&lt;/filena=
me&gt; directory contains a<br>
+ =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0The &lt;filename&gt;yocto-build&lt;/filena=
me&gt; directory contains a<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 &lt;filename&gt;conf&lt;/filename&gt; dire=
ctory that has<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 two configuration files you will need to c=
heck: =A0&lt;filename&gt;bblayers.conf&lt;/filename&gt;<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 and &lt;filename&gt;local.conf&lt;/filenam=
e&gt;.&lt;/para&gt;&lt;/listitem&gt;<br>
@@ -492,7 +560,7 @@<br>
=A0&lt;/section&gt;<br>
<br>
=A0&lt;section id=3D&#39;building-the-image-app&#39;&gt;<br>
- =A0 =A0&lt;title&gt;Building the Image&lt;/title&gt;<br>
+ =A0 =A0&lt;title&gt;Building and Booting the Image&lt;/title&gt;<br>
<br>
 =A0 =A0 &lt;para&gt;<br>
 =A0 =A0 =A0 =A0 To build the image for our &lt;filename&gt;meta-mymachine&=
lt;/filename&gt; BSP enter the following command<br>
@@ -513,6 +581,58 @@<br>
 =A0 =A0 =A0 =A0 If the build results in any type of error you should check=
 for misspellings in the<br>
 =A0 =A0 =A0 =A0 files you changed or problems with your host development e=
nvironment such as missing packages.<br>
 =A0 =A0 &lt;/para&gt;<br>
+<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0Finally, once you have an image, you can try booting it fr=
om e.g a USB device.<br>
+ =A0 =A0 =A0 =A0To prepare a bootable USB device, insert a USB flash drive=
 into your build system and<br>
+ =A0 =A0 =A0 =A0copy the .hddimage, located in the &lt;filename&gt;poky/bu=
ild/tmp/deploy/images&lt;/filename&gt;<br>
+ =A0 =A0 =A0 =A0directory after a successful to the flash drive. =A0Assumi=
ng the USB flash drive<br>
+ =A0 =A0 =A0 =A0takes device /dev/sdf, use dd to copy the live image to it=
. =A0For<br>
+ =A0 =A0 =A0 =A0example:<br>
+ =A0 =A0&lt;/para&gt;<br>
+<br>
+ =A0 =A0 =A0 =A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
+ =A0 =A0 =A0 =A0# dd if=3Dcore-image-sato-mymachine-20111101223904.hddimg =
of=3D/dev/sdf<br>
+ =A0 =A0 =A0 =A0# sync<br>
+ =A0 =A0 =A0 =A0# eject /dev/sdf<br>
+ =A0 =A0 =A0 =A0&lt;/literallayout&gt;<br>
+<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0This should give you a bootable USB flash device. =A0Inser=
t the device<br>
+ =A0 =A0 =A0 =A0into a bootable USB socket on the target, and power on. =
=A0This should<br>
+ =A0 =A0 =A0 =A0result in a system booted to the Sato graphical desktop.<b=
r>
+ =A0 =A0&lt;/para&gt;<br>
+<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0For reference, the sato image produced by the above steps =
for edison looked<br>
+ =A0 =A0 =A0 =A0like this in terms of size. =A0If your sato image is much =
different from this,<br>
+ =A0 =A0 =A0 =A0you probably made a mistake in one of the above steps:<br>
+ =A0 =A0&lt;/para&gt;<br>
+<br>
+ =A0 =A0 =A0 =A0&lt;literallayout class=3D&#39;monospaced&#39;&gt;<br>
+ =A0 =A0 =A0 =A0358715392 2011-11-01 19:11 core-image-sato-mymachine-20111=
101223904.hddimg<br>
+ =A0 =A0 =A0 =A0&lt;/literallayout&gt;<br>
+<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0Note that the above instructions are also present in the R=
EADME that was copied<br>
+ =A0 =A0 =A0 =A0from meta-crownbay, which should also be updated to reflec=
t the specifics of your<br>
+ =A0 =A0 =A0 =A0new BSP. =A0That file and the README.hardware file in the =
top-level poky directory<br>
+ =A0 =A0 =A0 =A0also provides some suggestions for things to try if bootin=
g fails with strange<br>
+ =A0 =A0 =A0 =A0error messages.<br>
+ =A0 =A0&lt;/para&gt;<br>
+<br>
+ =A0 =A0&lt;para&gt;<br>
+ =A0 =A0 =A0 =A0Note also that because this new image is not in any way ta=
ilored to the system you&#39;re<br>
+ =A0 =A0 =A0 =A0booting it on, which is assumed to be some sort of atom-pc=
 (netbook) system for this<br>
+ =A0 =A0 =A0 =A0example, it may not be completely functional though it sho=
uld at least boot to a text<br>
+ =A0 =A0 =A0 =A0prompt. =A0Specifically, it may fail to boot into graphics=
 without some tweaking. =A0One<br>
+ =A0 =A0 =A0 =A0possible next step if that ends up being the case would be=
 to replace the mymachine.conf<br>
+ =A0 =A0 =A0 =A0contents with the contents of atom-pc.conf and replace xor=
g.conf with the atom-pc xorg.conf<br>
+ =A0 =A0 =A0 =A0in meta-yocto see if it fares any better. =A0In any case, =
following the above steps should<br>
+ =A0 =A0 =A0 =A0give you a buildable and probably bootable image. =A0Getti=
ng things working like you want<br>
+ =A0 =A0 =A0 =A0them to for your hardware will normally require some amoun=
t of experimentation with<br>
+ =A0 =A0 =A0 =A0configuration settings.<br>
+ =A0 =A0&lt;/para&gt;<br>
=A0&lt;/section&gt;<br>
=A0&lt;/appendix&gt;<br>
<br>
--<br>
1.7.0.4<br>
<br>
<br>
<br>
------------------------------<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
End of yocto Digest, Vol 14, Issue 8<br>
************************************<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><font style=
=3D"color:rgb(51, 51, 51)" size=3D"2">Best regards, Mike Tsukerman<br><br><=
span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:miketsuk=
erman@gmail.com" target=3D"_blank">miketsukerman@gmail.com</a><br>
<span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:warzon@=
jabnet.org" target=3D"_blank">warzon@jabnet.org</a><br><span style=3D"color=
:rgb(0, 0, 0)">skype</span>: w_a_r_z_o_n</font><br><br>

--f46d044472c173f13504b0d186c4--
