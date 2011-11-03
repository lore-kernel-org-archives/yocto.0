Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0480EE006F9
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2011 07:27:51 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pA3ERoeP000659
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 3 Nov 2011 07:27:50 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 3 Nov 2011 07:27:48 -0700
Message-ID: <4EB2A4E3.6040908@windriver.com>
Date: Thu, 3 Nov 2011 09:27:47 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:7.0.1) Gecko/20110929 Thunderbird/7.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CALs2vteB3NaOGvAL4fB_GUVhaV=pYsg1V=H=+f_NtEXs9z2gmQ@mail.gmail.com>
In-Reply-To: <CALs2vteB3NaOGvAL4fB_GUVhaV=pYsg1V=H=+f_NtEXs9z2gmQ@mail.gmail.com>
Subject: Re: libtool can't read a la files
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
X-List-Received-Date: Thu, 03 Nov 2011 14:27:52 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

On 11/3/11 4:50 AM, Mike Tsukerman wrote:
> Hello, I've build core-image-minimal-dev (it does not metter for what
> architecture, the same bugs appears in arm and i586) image and faced a problem.
> When i'm trying to build something from tarball, i get a libtool errors. It's
> not only for libz and not every time happens. What is going wrong?
> But all .la files exists.
> 
> libtool: link: (cd ".libs" && rm -f "librpmbuild.so.2" && ln -s
> "librpmbuild.so.2.0.1" "librpmbuild.so.2")
> libtool: link: (cd ".libs" && rm -f "librpmbuild.so" && ln -s
> "librpmbuild.so.2.0.1" "librpmbuild.so")
> /bin/sed: can't read =/usr/lib/libz.la <http://libz.la>: No such file or directory
> libtool: link: `=/usr/lib/libz.la <http://libz.la>' is not a valid libtool archive
> make[2]: *** [librpmbuild.la <http://librpmbuild.la>] Error 1
> make[2]: Leaving directory `/home/root/rpm-4.9.1.2/build'
> make[1]: *** [all-recursive] Error 1
> make[1]: Leaving directory `/home/root/rpm-4.9.1.2'
> make: *** [all] Error 2

rpm 4.9.1.2 is not part of Yocto.  So this might be part of the issue.  RPM 4
historically has had significant issues with cross compiling.  (We use RPM 5
within Yocto for this reason.)

The Link syntax of "=/usr/lib/libz.la" means link the library located within the
sysroot directory.

The version of rpm(4) which you are attempting to compile does not understand
this syntax.  Either the issue is located within the libtool command itself, or
within one of the makefile fragments.

The version of libtool shipped with Yocto understands the "=" syntax.  Did you
use it, either by running libtoolize --copy --force --or-- using the built-in
autotools recipe helper?

-Mark

> 
> On Thu, Nov 3, 2011 at 8:49 AM, <yocto-request@yoctoproject.org
> <mailto:yocto-request@yoctoproject.org>> wrote:
> 
>     Send yocto mailing list submissions to
>            yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> 
>     To subscribe or unsubscribe via the World Wide Web, visit
>            https://lists.yoctoproject.org/listinfo/yocto
>     or, via email, send a message with subject or body 'help' to
>            yocto-request@yoctoproject.org <mailto:yocto-request@yoctoproject.org>
> 
>     You can reach the person managing the list at
>            yocto-owner@yoctoproject.org <mailto:yocto-owner@yoctoproject.org>
> 
>     When replying, please edit your Subject line so it is more specific
>     than "Re: Contents of yocto digest..."
> 
> 
>     Today's Topics:
> 
>       1. Announcement: pseudo 1.2 released (Mark Hatle)
>       2. Re: Build error while following Appendix A. Yocto Project
>          Development manual (Jim Abernathy)
>       3. Help diagnosing a build failure involving ncurses, gettext,
>          and eglibc (Darren Hart)
>       4. [PATCH 0/1] Development Manual Appendix A changes
>          (tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>)
>       5. [PATCH 1/1] documentation/dev-manual: BSP Development     Example
>          changes (tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>)
> 
> 
>     ----------------------------------------------------------------------
> 
>     Message: 1
>     Date: Wed, 2 Nov 2011 15:49:10 -0500
>     From: Mark Hatle <mark.hatle@windriver.com <mailto:mark.hatle@windriver.com>>
>     To: Yocto Project <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>     Cc: "Seebach, Peter" <Peter.Seebach@windriver.com
>     <mailto:Peter.Seebach@windriver.com>>
>     Subject: [yocto] Announcement: pseudo 1.2 released
>     Message-ID: <4EB1ACC6.8040900@windriver.com
>     <mailto:4EB1ACC6.8040900@windriver.com>>
>     Content-Type: text/plain; charset="ISO-8859-1"
> 
>     Making a release announcement on behalf of the pseudo maintainer...
> 
>     pseudo 1.2 is now released.  It can be pulled from:
> 
>     Via git:
> 
>     git://github.com/wrpseudo/pseudo.git <http://github.com/wrpseudo/pseudo.git>
>     git://git.yoctoproject.org/pseudo.git <http://git.yoctoproject.org/pseudo.git>
> 
>     branch PSEUDO_1_2
> 
>     or the tarball from
> 
>     http://downloads.yoctoproject.org/releases/pseudo/pseudo-1.2.tar.bz2
> 
>     The included ChangeLog.txt
>     (http://git.yoctoproject.org/cgit/cgit.cgi/pseudo/tree/ChangeLog.txt?h=PSEUDO_1_2)
> 
>     Contains a full list of changes.
> 
>     --Mark
> 
> 
>     ------------------------------
> 
>     Message: 2
>     Date: Wed, 02 Nov 2011 18:05:05 -0400
>     From: Jim Abernathy <jfabernathy@gmail.com <mailto:jfabernathy@gmail.com>>
>     To: Tom Zanussi <tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>>
>     Cc: "yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>"
>     <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>     Subject: Re: [yocto] Build error while following Appendix A. Yocto
>            Project Development manual
>     Message-ID: <1320271505.13661.20.camel@jim-ubuntu-10>
>     Content-Type: text/plain; charset="UTF-8"
> 
>     I'm noticing fetcher failures while my bitbake is working. They are
>     listed as warning. Do I ignore these??
> 
>     WARNING: Fetcher failure for URL: 'None'. Fetch command export
>     HOME="/home/jim"; export SSH_AGENT_PID="1500"; export
>     SSH_AUTH_SOCK="/tmp/keyring-Zcbzax/ssh"; export
>     GIT_CONFIG="/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/etc/gitconfig";
>     export
>     PATH="/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/bin/core2-poky-linux:/home/jim/bsp-test/poky/build/tmp/sysroots/mymachine/usr/bin/crossscripts:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/sbin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/usr/bin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux/sbin:/home/jim/bsp-test/poky/build/tmp/sysroots/i686-linux//bin:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/bsp-test/poky/scripts:/home/jim/bsp-test/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/CodeSourcery/Sourcery_G++_Lite/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:
>      /home/jim/bsp-test/poky/scripts"; /usr/bin/env wget -t 5 -q --passive-ftp
>     --no-check-certificate -P /home/jim/bsp-test/poky/build/downloads
>     'https://fedorahosted.org/releases/l/i/liberation-fonts/liberation-fonts-1.04.tar.gz'
>     failed with signal 4, output:
> 
>     >
>     >
> 
> 
> 
> 
>     ------------------------------
> 
>     Message: 3
>     Date: Wed, 02 Nov 2011 17:53:05 -0700
>     From: Darren Hart <dvhart@linux.intel.com <mailto:dvhart@linux.intel.com>>
>     To: Yocto Project <yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>>
>     Subject: [yocto] Help diagnosing a build failure involving ncurses,
>            gettext,        and eglibc
>     Message-ID: <4EB1E5F1.3050106@linux.intel.com
>     <mailto:4EB1E5F1.3050106@linux.intel.com>>
>     Content-Type: text/plain; charset=ISO-8859-1
> 
>     I ran into various issues trying to add mtd-utils to an image today. As
>     I worked through the issues, I found after fixing a couple things, I was
>     more guessing and grasping at straws than anything else. I'll recount
>     what I did, and if anyone can offer a better approach to what I did that
>     would have resulted in a more deterministic result, I'd appreciate it
>     very much.
> 
>     I copied meta-tiny to a new layer. I disabled uclibc (so I'm building
>     with eglibc). I added mtd-utils from OE and used the DEPENDS line using
>     util-linux (and not util-linux-ng which we don't have in yocto). This
>     resulted in ncurses failing the qa configure with host contamination
>     with the widec headers. I first attempted to enable widechar support in
>     my DISTRO_FEATURES_LIBC, and rebuild eglibc. This didn't solve the
>     problem. This turns out to be due to ncurses configuring in widechar
>     support regardless of whether or not you plan to use it (it does a widec
>     and a narrowc configure and only builds and installs widec if you set
>     ENABLE_WIDEC="true". I set that to false and hacked out the widec config
>     step which allowed ncurses to build. I'll send a proper fix for this
>     tomorrow.
> 
>     The next failure was with gettext compilation. Several errors about
>     wchar related functions being redefined in incompatible ways. I thought
>     this might be related to DISTRO_FEATURES_LIBC changes I made, so I
>     commented them all out and rebuilt eglibc so it should be using the
>     default Poky distro configuration for eglibc (which I assumed gettext
>     was known to compile with). Gettext would still not compile, claiming
>     the redefined functions were first defined in /usr/include/wchar.h.
>     Confused, thinking I had just rebuilt eglibc, I did another cleanall of
>     eglibc and gettext and a rebuild. Same result.
> 
>     Not trusting the sanity of my tmp tree at this point, I deleted tmp and
>     pseudodone and rebuilt the image. Everything succeeded and my final
>     image with mtd-utils included was built.
> 
>     I tried to capture my complete log, but screen froze on me while trying
>     to paste the buffer into a log :( So besides writing a bitbake wrapper
>     to ensure I record ALL my bitbake sessions for reference, what would you
>     recommend I change in the above process? What could I have done to
>     either avoid deleting tmp or to have identified a possible bug that
>     required me to delete tmp?
> 
>     Thanks,
> 
>     --
>     Darren Hart
>     Intel Open Source Technology Center
>     Yocto Project - Linux Kernel
> 
> 
>     ------------------------------
> 
>     Message: 4
>     Date: Wed,  2 Nov 2011 23:49:27 -0500
>     From: tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>
>     To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>,
>     rpjday@crashcourse.ca <mailto:rpjday@crashcourse.ca>,
>            scott.m.rifenbark@linux.intel.com
>     <mailto:scott.m.rifenbark@linux.intel.com>, jfabernathy@gmail.com
>     <mailto:jfabernathy@gmail.com>
>     Subject: [yocto] [PATCH 0/1] Development Manual Appendix A changes
>     Message-ID: <cover.1320295198.git.tom.zanussi@intel.com
>     <mailto:cover.1320295198.git.tom.zanussi@intel.com>>
> 
>     From: Tom Zanussi <tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>>
> 
>     Here are a set of changes that attempt to clean up the BSP Development
>     Manual a bit.  Thanks to Robert P. J. Day and Jim Abernathy for their
>     input.
> 
>     I went through the resulting doc and set things up exactly as written,
>     and so far the build is looking ok - will report if it doesn't turn out
>     as expected in the morning...
> 
>     Tom
> 
>     The following changes since commit 9b76e6a2cfc5a4d779f3b06e3acc5ff7b8275470:
>      Simon Busch (1):
>            meta: glib-2.0: don't apply qsort_r test removable patch for native
>     version
> 
>     are available in the git repository at:
> 
>      git://git.yoctoproject.org/poky-contrib.git
>     <http://git.yoctoproject.org/poky-contrib.git> tzanussi/appendix-a-changes
>      http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/appendix-a-changes
> 
>     Tom Zanussi (1):
>      documentation/dev-manual: BSP Development Example changes
> 
>      .../dev-manual/dev-manual-bsp-appendix.xml         |  188 ++++++++++++++++----
>      1 files changed, 154 insertions(+), 34 deletions(-)
> 
> 
> 
>     ------------------------------
> 
>     Message: 5
>     Date: Wed,  2 Nov 2011 23:49:38 -0500
>     From: tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>
>     To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>,
>     rpjday@crashcourse.ca <mailto:rpjday@crashcourse.ca>,
>            scott.m.rifenbark@linux.intel.com
>     <mailto:scott.m.rifenbark@linux.intel.com>, jfabernathy@gmail.com
>     <mailto:jfabernathy@gmail.com>
>     Subject: [yocto] [PATCH 1/1] documentation/dev-manual: BSP Development
>            Example changes
>     Message-ID:
>          
>      <d1e372132a9cb40f48ed4b96f5893a3acba78787.1320295198.git.tom.zanussi@intel.com
>     <mailto:d1e372132a9cb40f48ed4b96f5893a3acba78787.1320295198.git.tom.zanussi@intel.com>>
> 
> 
>     From: Tom Zanussi <tom.zanussi@intel.com <mailto:tom.zanussi@intel.com>>
> 
>     This patch contains a set of changes to The Yocto Project Development
>     Manual's 'Appendix A. BSP Development Example' to reflect input from
>     several users and to add some changes for problems and opportunities
>     for enhancement that I noted when doing my own testing.
> 
>     Signed-off-by: Tom Zanussi <tom.zanussi@intel.com
>     <mailto:tom.zanussi@intel.com>>
>     ---
>      .../dev-manual/dev-manual-bsp-appendix.xml         |  188 ++++++++++++++++----
>      1 files changed, 154 insertions(+), 34 deletions(-)
> 
>     diff --git a/documentation/dev-manual/dev-manual-bsp-appendix.xml
>     b/documentation/dev-manual/dev-manual-bsp-appendix.xml
>     index 485064d..00f5edf 100644
>     --- a/documentation/dev-manual/dev-manual-bsp-appendix.xml
>     +++ b/documentation/dev-manual/dev-manual-bsp-appendix.xml
>     @@ -11,7 +11,8 @@
>         <itemizedlist>
>             <listitem><para>No previous preparation or use of the Yocto
>     Project.</para></listitem>
>             <listitem><para>Use of the Crown Bay Board Support Package (BSP) as
>     a base BSP from
>     -            which to work from.</para></listitem>
>     +            which to work from (we'll be starting with the Crown Bay BSP
>     but will be building
>     +            a new 'atom-pc' BSP using the Crown Bay as as starting
>     point).</para></listitem>
>             <listitem><para>Shell commands assume
>     <filename>bash</filename></para></listitem>
>             <listitem><para>Example was developed on an Intel-based Core i7
>     platform running
>                 Ubuntu 10.04 LTS released in April of 2010.</para></listitem>
>     @@ -29,6 +30,24 @@
>             "<link linkend='local-yp-release'>Yocto Project Release</link>"
>             for information on how to get these files.
>         </para>
>     +    <para>
>     +        For example, one way to get the Yocto Project files using git is to
>     clone the poky repo:
>     +        <literallayout class='monospaced'>
>     +     $ git clone git://git.yoctoproject.org/poky
>     <http://git.yoctoproject.org/poky>
>     +     $ cd poky
>     +        </literallayout>
>     +    </para>
>     +    <para>
>     +        Alternatively, you can start with the downloaded poky edison tarball:
>     +        <literallayout class='monospaced'>
>     +     $ tar xfj poky-edison-6.0.tar.bz2
>     +     $ cd poky
>     +        </literallayout>
>     +        Note that if you're using the tarball method, you can ignore all
>     the steps below that
>     +        ask you to carry out git operations - you already have the results
>     of those operations
>     +        in the form of the edison release tarballs, and there's nothing
>     left to do other than
>     +        extract those tarballs into the proper locations.
>     +    </para>
> 
>         <para>
>             Once you have the local <filename>poky</filename> Git repository set up,
>     @@ -44,7 +63,6 @@
>             These commands create a local branch named <filename>edison</filename>
>             that tracks the remote branch of the same name.
>             <literallayout class='monospaced'>
>     -     $ cd poky
>          $ git checkout -b edison origin/edison
>          Switched to a new branch 'edison'
>             </literallayout>
>     @@ -58,7 +76,10 @@
>             For this example, the base BSP is the <trademark
>     class='registered'>Intel</trademark>
>             <trademark class='trade'>Atom</trademark> Processor E660 with Intel
>     Platform
>             Controller Hub EG20T Development Kit, which is otherwise referred to
>     as "Crown Bay."
>     -        The BSP layer is <filename>meta-crownbay</filename>.
>     +        The BSP layer is <filename>meta-crownbay</filename>.  The Base BSP
>     is simply the BSP
>     +        we'll be using as a starting point, so don't worry if you don't
>     actually have Crown Bay
>     +        hardware - using the steps below, we'll be transforming it into a
>     BSP that should be
>     +        able to boot on generic atom-pc (netbook) hardware.
>         </para>
> 
>         <para>
>     @@ -73,27 +94,48 @@
>         <para>
>             You need to have the base BSP layer on your development system.
>             Similar to the local Yocto Project files, you can get the BSP
>     -        layer one of two ways:
>     +        layer in one of two ways:
>             download the BSP tarball and extract it, or set up a local Git
>     repository that
>             has the Yocto Project BSP layers.
>             You should use the same method that you used to get the local Yocto
>     Project files earlier.
>             See "<link linkend='getting-setup'>Getting Setup</link>" for
>     information on how to get
>             the BSP files.
>         </para>
>     -
>         <para>
>     -        This example assumes the local <filename>meta-intel</filename> Git
>     repository is
>     -        inside the local <filename>poky</filename> Git repository.
>     -        The <filename>meta-intel</filename> Git repository contains all the
>     metadata
>     -        that supports BSP creation.
>     +        This example assumes the BSP layer will be located within a
>     directory named
>     +        <filename>meta-intel</filename> contained within the
>     <filename>poky</filename>
>     +        parent directory.  The steps below will automatically create the
>     +        <filename>meta-intel</filename> directory and the contained
>     meta-crownbay
>     +        starting point in both the git and the tarball cases.
>         </para>
>     -
>         <para>
>     +        If you're using the git method, you could do the following to create
>     +        the starting layout (you should make sure you've already cd'ed into
>     +        the poky directory in the steps above):
>     +        <literallayout class='monospaced'>
>     +     $ git clone git://git.yoctoproject.org/meta-intel.git
>     <http://git.yoctoproject.org/meta-intel.git>
>     +     $ cd meta-intel
>     +        </literallayout>
>     +    </para>
>     +    <para>
>     +        Alternatively, you can start with the downloaded meta-intel edison
>     tarball
>     +        (again, you should make sure you've already cd'ed into the poky
>     directory
>     +        in the steps above):
>     +        <literallayout class='monospaced'>
>     +     $ tar xfj crownbay-noemgd-edison-6.0.0.tar.bz2
>     +     $ cd meta-intel
>     +        </literallayout>
>     +    </para>
>     +
>     +    <para>
>     +        The <filename>meta-intel</filename> directory contains all the metadata
>     +        that supports BSP creation.  If you're using the git method, the
>     following
>     +        step will make switch to the edison metadata; if you're using the
>     tarball
>     +        method, you already have the correct metadata and can skip to the
>     next step.
>             Because <filename>meta-intel</filename> is its own Git repository,
>     you will want
>             to be sure you are in the appropriate branch for your work.
>             For this example we are going to use the <filename>edison</filename>
>     branch.
>             <literallayout class='monospaced'>
>     -     $ cd meta-intel
>          $ git checkout -b edison origin/edison
>          Switched to a new branch 'edison'
>             </literallayout>
>     @@ -112,15 +154,12 @@
> 
>         <para>
>             For this example, the new layer will be named
>     <filename>meta-mymachine</filename>.
>     -        The name must follow the BSP layer naming convention, which is
>     +        The name should follow the BSP layer naming convention, which is
>             <filename>meta-&lt;name&gt;</filename>.
>     -        The following example assumes your working directory is
>     <filename>meta-intel</filename>
>     +        The following assumes your working directory is
>     <filename>meta-intel</filename>
>             inside the local Yocto Project files.
>     -        If you downloaded and expanded a Crown Bay tarball then you simply
>     copy the resulting
>     -        <filename>meta-crownbay</filename> directory structure to a
>     location of your choice.
>     -        Good practice for a Git repository, however, is to just copy the
>     new layer alongside
>     -        the existing
>     -        BSP layers in the <filename>meta-intel</filename> Git repository:
>     +        To start your new layer, just copy the new layer alongside the existing
>     +        BSP layers in the <filename>meta-intel</filename> directory:
>             <literallayout class='monospaced'>
>          $ cp -a meta-crownbay/ meta-mymachine
>             </literallayout>
>     @@ -162,9 +201,13 @@
>             </para>
> 
>             <para>
>     -            The next step makes changes to
>     <filename>mymachine.conf</filename> itself.
>     -            The only changes needed for this example are changes to the
>     comment lines.
>     -            Here we simply substitute the Crown Bay name with an
>     appropriate name.
>     +            The next step is to make changes to the
>     <filename>mymachine.conf</filename> itself.
>     +            The only changes we want to make for this example are to the
>     comment lines.  Changing
>     +            comments of course is never strictly necessary, but it's alway
>     good form to make
>     +            them reflect reality as far as possible.
>     +
>     +            Here simply substitute the Crown Bay name with an appropriate
>     name for the BSP (mymachine
>     +            in this case) and change the description to something that
>     describes your hardware.
>             </para>
> 
>             <para>
>     @@ -176,7 +219,8 @@
>             </para>
> 
>             <para>
>     -            The next configuration file in the new BSP layer we need to
>     edit is <filename>layer.conf</filename>.
>     +            The next configuration file in the new BSP layer we need to edit is
>     +            <filename>meta-mymachine/conf/layer.conf</filename>.
>                 This file identifies build information needed for the new layer.
>                 You can see the
>                 "<ulink
>     url='http://www.yoctoproject.org/docs/1.1/bsp-guide/bsp-guide.html#bsp-filelayout-layer'>Layer
>     Configuration File</ulink>" section in
>     @@ -232,7 +276,7 @@
>                     the remaining one that doesn't support EMGD.
>                     These commands take care of the
>     <filename>recipes-bsp</filename> recipes:
>                     <literallayout class='monospaced'>
>     -     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/*emgd*
>     +     $ rm -rf meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay
>          $ mv meta-mymachine/recipes-bsp/formfactor/formfactor/crownbay-noemgd/ \
>          meta-mymachine/recipes-bsp/formfactor/formfactor/mymachine
>                     </literallayout>
>     @@ -248,7 +292,6 @@
>                     be sure to rename remaining directories appropriately.
>                     The following commands clean up the
>     <filename>recipes-graphics</filename> directory:
>                     <literallayout class='monospaced'>
>     -     $ rm -rf meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-emgd*
>          $ rm -rf
>     meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay
>          $ mv
>     meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/crownbay-noemgd
>     \
>            
>     meta-mymachine/recipes-graphics/xorg-xserver/xserver-xf86-config/mymachine
>     @@ -304,6 +347,9 @@
>                     The <filename>SRCREV_machine</filename> and
>     <filename>SRCREV_meta</filename>
>                     statements point to the exact commits used by the Yocto
>     Project development team
>                     in their source repositories that identify the right kernel
>     for our hardware.
>     +                The SRCREV values are simply git commit ids that identify
>     which commit on each
>     +                of the kernel branches (machine and meta) will be checked
>     out and used to build
>     +                the kernel.
>                 </para>
> 
>                 <para>
>     @@ -323,12 +369,12 @@
>          SRCREV_machine_pn-linux-yocto_crownbay ?= \
>             "2247da9131ea7e46ed4766a69bb1353dba22f873"
>          SRCREV_meta_pn-linux-yocto_crownbay ?= \
>     -        "67a46a608f47c19f16995be7de7b272025864b1b"
>     +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
> 
>          SRCREV_machine_pn-linux-yocto_crownbay-noemgd ?= \
>             "2247da9131ea7e46ed4766a69bb1353dba22f873"
>          SRCREV_meta_pn-linux-yocto_crownbay-noemgd ?= \
>     -        "67a46a608f47c19f16995be7de7b272025864b1b"
>     +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>                     </literallayout>
>                 </para>
> 
>     @@ -350,17 +396,33 @@
>                     and insert the commit identifiers to identify the kernel in
>     which we
>                     are interested, which will be based on the
>     <filename>atom-pc-standard</filename>
>                     kernel.
>     +                In this case, because we're working with the edison branch
>     of everything, we
>     +                need to use the SRCREVs for the atom-pc branch which are
>     associated with the
>     +                edison release.  To find those, we need to find the SRCREVs
>     that edison uses
>     +                for the atom-pc branch, which we find in the
>     +              
>      <filename>poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend</filename>
>     +                file.  The machine SRCREV we want is in the
>     SRCREV_machine_atom-pc variable.  The
>     +                meta SRCREV isn't specified in this file, so it must be
>     specified in the base
>     +                kernel recipe in the
>     +                <filename>poky/meta/recipes-kernel/linux/linux-yocto_3.0.bb
>     <http://linux-yocto_3.0.bb></filename>
>     +                file, in the SRCREV_meta variable found there.  It happens
>     to be the same
>     +                as the value we already inherited from the meta-crownbay BSP.
>                     Here are the final <filename>SRCREV</filename> statements:
>                     <literallayout class='monospaced'>
>          SRCREV_machine_pn-linux-yocto_mymachine ?= \
>     -        "06c798f25a19281d7fa944b14366dd75820ba009"
>     +        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
>          SRCREV_meta_pn-linux-yocto_mymachine ?= \
>     -        "67a46a608f47c19f16995be7de7b272025864b1b"
>     +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>                     </literallayout>
>                 </para>
> 
>                 <para>
>     -                If you are familiar with Git repositories you probably
>     won’t have trouble locating the
>     +                Note that in this example, we're using the SRCREVs we found
>     already captured
>     +                in the edison release because we're creating a BSP based on
>     edison.  If instead
>     +                we had based our BSP on the master branches, we'd want to
>     use the most recent
>     +                SRCREVs taken directly from the kernel repo.  We won't be
>     doing that for this
>     +                example, but if you do base a future BSP on master and
>     +                if you are familiar with Git repositories you probably
>     won’t have trouble locating the
>                     exact commit strings in the Yocto Project source
>     repositories you need to change
>                     the <filename>SRCREV</filename> statements.
>                     You can find all the <filename>machine</filename> and
>     <filename>meta</filename>
>     @@ -394,19 +456,25 @@
>                     Because we are not interested in supporting EMGD those three
>     can be deleted.
>                     The remaining three must be changed so that
>     <filename>mymachine</filename> replaces
>                     <filename>crownbay-noemgd</filename> and
>     <filename>crownbay</filename>.
>     +                Note that since we're using the atom-pc branch for this new
>     BSP, we can also find
>     +                the exact branch we need for the KMACHINE variable in our
>     new BSP from the value
>     +                we find in the
>     +              
>      <filename>poky/meta-yocto/recipes-kernel/linux/linux-yocto_3.0.bbappend</filename>
>     +                file we looked at in a previous step.  In this case, the
>     value we want is in
>     +                the KMACHINE_atom-pc variable in that file.
>                     Here is the final
>     <filename>linux-yocto_3.0.bbappend</filename> file after all
>                     the edits:
>                     <literallayout class='monospaced'>
>          FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> 
>          COMPATIBLE_MACHINE_mymachine = "mymachine"
>     -     KMACHINE_mymachine  = "yocto/standard/mymachine"
>     +     KMACHINE_mymachine  = "yocto/standard/common-pc/atom-pc"
>          KERNEL_FEATURES_append_mymachine += " cfg/smp.scc"
> 
>          SRCREV_machine_pn-linux-yocto_mymachine ?= \
>     -        "06c798f25a19281d7fa944b14366dd75820ba009"
>     +        "1e18e44adbe79b846e382370eb29bc4b8cd5a1a0"
>          SRCREV_meta_pn-linux-yocto_mymachine ?= \
>     -        "67a46a608f47c19f16995be7de7b272025864b1b"
>     +        "d05450e4aef02c1b7137398ab3a9f8f96da74f52"
>                     </literallayout>
>                 </para>
>             </section>
>     @@ -455,7 +523,7 @@
>                     Thus, entering the previous command created the
>     <filename>yocto-build</filename> directory.
>                     If you do not provide a name for the build directory it
>     defaults to
>                     <filename>build</filename>.
>     -                The <filename>yocot-build</filename> directory contains a
>     +                The <filename>yocto-build</filename> directory contains a
>                     <filename>conf</filename> directory that has
>                     two configuration files you will need to check:
>      <filename>bblayers.conf</filename>
>                     and <filename>local.conf</filename>.</para></listitem>
>     @@ -492,7 +560,7 @@
>      </section>
> 
>      <section id='building-the-image-app'>
>     -    <title>Building the Image</title>
>     +    <title>Building and Booting the Image</title>
> 
>         <para>
>             To build the image for our <filename>meta-mymachine</filename> BSP
>     enter the following command
>     @@ -513,6 +581,58 @@
>             If the build results in any type of error you should check for
>     misspellings in the
>             files you changed or problems with your host development environment
>     such as missing packages.
>         </para>
>     +
>     +    <para>
>     +        Finally, once you have an image, you can try booting it from e.g a
>     USB device.
>     +        To prepare a bootable USB device, insert a USB flash drive into
>     your build system and
>     +        copy the .hddimage, located in the
>     <filename>poky/build/tmp/deploy/images</filename>
>     +        directory after a successful to the flash drive.  Assuming the USB
>     flash drive
>     +        takes device /dev/sdf, use dd to copy the live image to it.  For
>     +        example:
>     +    </para>
>     +
>     +        <literallayout class='monospaced'>
>     +        # dd if=core-image-sato-mymachine-20111101223904.hddimg of=/dev/sdf
>     +        # sync
>     +        # eject /dev/sdf
>     +        </literallayout>
>     +
>     +    <para>
>     +        This should give you a bootable USB flash device.  Insert the device
>     +        into a bootable USB socket on the target, and power on.  This should
>     +        result in a system booted to the Sato graphical desktop.
>     +    </para>
>     +
>     +    <para>
>     +        For reference, the sato image produced by the above steps for
>     edison looked
>     +        like this in terms of size.  If your sato image is much different
>     from this,
>     +        you probably made a mistake in one of the above steps:
>     +    </para>
>     +
>     +        <literallayout class='monospaced'>
>     +        358715392 2011-11-01 19:11
>     core-image-sato-mymachine-20111101223904.hddimg
>     +        </literallayout>
>     +
>     +    <para>
>     +        Note that the above instructions are also present in the README
>     that was copied
>     +        from meta-crownbay, which should also be updated to reflect the
>     specifics of your
>     +        new BSP.  That file and the README.hardware file in the top-level
>     poky directory
>     +        also provides some suggestions for things to try if booting fails
>     with strange
>     +        error messages.
>     +    </para>
>     +
>     +    <para>
>     +        Note also that because this new image is not in any way tailored to
>     the system you're
>     +        booting it on, which is assumed to be some sort of atom-pc
>     (netbook) system for this
>     +        example, it may not be completely functional though it should at
>     least boot to a text
>     +        prompt.  Specifically, it may fail to boot into graphics without
>     some tweaking.  One
>     +        possible next step if that ends up being the case would be to
>     replace the mymachine.conf
>     +        contents with the contents of atom-pc.conf and replace xorg.conf
>     with the atom-pc xorg.conf
>     +        in meta-yocto see if it fares any better.  In any case, following
>     the above steps should
>     +        give you a buildable and probably bootable image.  Getting things
>     working like you want
>     +        them to for your hardware will normally require some amount of
>     experimentation with
>     +        configuration settings.
>     +    </para>
>      </section>
>      </appendix>
> 
>     --
>     1.7.0.4
> 
> 
> 
>     ------------------------------
> 
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
> 
> 
>     End of yocto Digest, Vol 14, Issue 8
>     ************************************
> 
> 
> 
> 
> -- 
> Best regards, Mike Tsukerman
> 
> jabber: miketsukerman@gmail.com <mailto:miketsukerman@gmail.com>
> jabber: warzon@jabnet.org <mailto:warzon@jabnet.org>
> skype: w_a_r_z_o_n
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


