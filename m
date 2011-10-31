Return-Path: <miketsukerman@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A515E013BB
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 11:42:04 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qyk30 with SMTP id 30so7609354qyk.14
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 11:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=NpJsWGZslwV49EtQMnX8QiaV6tsVjfEFNKIH28jUyCM=;
	b=SuUWfOsjWEivW+Vr2NJLTCO7iVzK2NMJwvgmKmGtX2wNGCajxtus5EwfEZkrjb23Jh
	OG9CFmgrAEWugNjs5CJRlvjqPBLbIxNJijv6HVuWB7DPzcHunRBr1TgeHMxuz0zMineE
	op918Ihlb/mhB6rNyG9H6K5UOlYVYzeQYflws=
MIME-Version: 1.0
Received: by 10.68.26.100 with SMTP id k4mr25344453pbg.5.1320086521757; Mon,
	31 Oct 2011 11:42:01 -0700 (PDT)
Received: by 10.68.52.202 with HTTP; Mon, 31 Oct 2011 11:42:01 -0700 (PDT)
In-Reply-To: <mailman.205.1320085760.2193.yocto@yoctoproject.org>
References: <mailman.205.1320085760.2193.yocto@yoctoproject.org>
Date: Mon, 31 Oct 2011 22:42:01 +0400
Message-ID: <CALs2vtcT-MhE5cPrTyNdFk1DO7o8yrBaPSHnMy7z6Hz-FjtY6w@mail.gmail.com>
From: Mike Tsukerman <miketsukerman@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: yocto Digest, Vol 13, Issue 54
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
X-List-Received-Date: Mon, 31 Oct 2011 18:42:05 -0000
Content-Type: multipart/alternative; boundary=bcaec52156ab33bfab04b09c982d

--bcaec52156ab33bfab04b09c982d
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Oct 31, 2011 at 10:29 PM, <yocto-request@yoctoproject.org> wrote:

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
>   1. Re: any objection to adding a PREMIRRORS section to the QS
>      guide? (Robert P. J. Day)
>   2. Re: root paths in packages (McClintock Matthew-B29882)
>   3. Re: [PATCH 1/2] meta-romley: Fix BSP description in
>      romley.conf (Bodke, Kishore K)
>   4. Re: [PATCH 2/2] meta-romley: change references to sugarbay in
>      linux-yocto-rt_3.0.bbappend (Bodke, Kishore K)
>   5. Re: root paths in packages (Mark Hatle)
>   6. Re: what's the proper value for BB_NUMBER_THREADS? (Mark Hatle)
>   7. Re: what's the proper value for BB_NUMBER_THREADS?
>      (Robert P. J. Day)
>   8. Re: what's the proper value for BB_NUMBER_THREADS? (Gary Thomas)
>   9. Re: root paths in packages (McClintock Matthew-B29882)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Mon, 31 Oct 2011 12:01:26 -0400 (EDT)
> From: "Robert P. J. Day" <rpjday@crashcourse.ca>
> To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
> Cc: Yocto discussion list <yocto@yoctoproject.org>
> Subject: Re: [yocto] any objection to adding a PREMIRRORS section to
>        the QS guide?
> Message-ID:
>        <alpine.DEB.2.02.1110311150440.7448@localhost6.localdomain6>
> Content-Type: TEXT/PLAIN; charset=US-ASCII
>
> On Mon, 31 Oct 2011, Rifenbark, Scott M wrote:
>
> > Robert,
> >
> > We do have a question addressed in the Yocto Project Reference
> > Manual that talks about premirrors and how Poky finds stuff.  See
> > the H.24 section of the manual
> >
> http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html
> .
> > Maybe this information is a bit too buried to be useful.  I could
> > specifically reference that FAQ entry from within the QS in the same
> > area that I mention the other "useful" items to consider in the
> > local.conf file, such as BB_NUMBER_THREADS, etc.
> >
> > Scott
>
>  i know about the PREMIRRORS stuff in the poky reference manual -- i
> was just toying with the idea that knowing how PREMIRRORS works would
> be useful, even for a beginner.
>
>  perhaps i'm not using it properly, but in my case, it's handy since
> i have a downloads directory of nothing but tarballs that i've been
> accumulating over the last while that i've used for openembedded and
> other projects. i'm using PREMIRRORS_prepend to take advantage of all
> that content to avoid any unnecessary downloading.  and every time i
> *do* end up downloading a newer version of a tarball that i didn't
> have, i copy it to that central downloads directory for the next time.
> does that make sense?  and, as i said, even beginners should be able
> to appreciate taking advantage of local content they may have
> collected for other reasons.
>
>  in any event, i have some different ideas for the design of a
> beginner's guide i plan on using in some of my own presentations, so i
> don't have to inflict all of my ideas on everyone else.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
>
> ------------------------------
>
> Message: 2
> Date: Mon, 31 Oct 2011 16:32:23 +0000
> From: McClintock Matthew-B29882 <B29882@freescale.com>
> To: Mike Tsukerman <miketsukerman@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] root paths in packages
> Message-ID:
>        <CAEsOVNd18cWS5JeaxHMLTR9-pr+65bb4s=qc7H_6Prq1PpTzbw@mail.gmail.com
> >
> Content-Type: text/plain; charset="iso-8859-1"
>
> On Mon, Oct 31, 2011 at 5:57 AM, Mike Tsukerman <miketsukerman@gmail.com>
> wrote:
> > Hello,
> > I've build rpm packages and met some interesting things.
> > In the rpm all scripts and files include root paths from machine that
> i've
> > build on.
> > how can i change that?
>
> Which package? Can you give some examples?
>
> -M
>
> - Hide quoted text -
On Mon, Oct 31, 2011 at 10:26 PM, McClintock Matthew-B29882 <
B29882@freescale.com> wrote:

> On Mon, Oct 31, 2011 at 11:40 AM, Mike Tsukerman
> <miketsukerman@gmail.com> wrote:
>
   What commands did you run to generate this rpm? What file is this in?

> Usually the shebang should be updated to remove any references to
> build environment but it looks like it's still referencing perl-native
> from the build environment.
>
> Is this script used on the target machine or just during the build
> process? It might not be explicitly required.
>
>
I've run MACHINE=beagleboard bitbake world. Then i get a lot of rpms in
armv7a-vfp-neon folder.
I have an igep0020 board, and core-image-minimal-dev running on it. I use
these rpm's on the board.
And as expected dpkg is not working before i found that it includes these
paths.
But all other rpm's have the same problems - in INSTALL and UPGRADE scripts
i've found root paths.

rpm --nosignature -ivh
/media/mdev/yocto/poky/build/tmp/deploy/rpm/armv7a-vfp-neon/zip-dev-3.0-r0.armv7a.rpm



>
> ------------------------------
>
> Message: 3
> Date: Mon, 31 Oct 2011 10:01:06 -0700
> From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
> To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
>        <yocto@yoctoproject.org>
> Subject: Re: [yocto] [PATCH 1/2] meta-romley: Fix BSP description in
>        romley.conf
> Message-ID:
>        <
> 4BD43A85686FC34D819098DB1C3999D9018F70901D@orsmsx502.amr.corp.intel.com>
>
> Content-Type: text/plain; charset="us-ascii"
>
> Acked-by: Kishore Bodke  <Kishore.k.bodke@intel.com>
>
> Thanks
> Kishore.
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of tom.zanussi@intel.com
> Sent: Friday, October 28, 2011 7:00 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [PATCH 1/2] meta-romley: Fix BSP description in
> romley.conf
>
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> The description still had a reference to Sugar Bay; this changes it to
> Romley.
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  meta-romley/conf/machine/romley.conf |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
>
> diff --git a/meta-romley/conf/machine/romley.conf
> b/meta-romley/conf/machine/romley.conf
> index 38bd17a..2dcb5db 100644
> --- a/meta-romley/conf/machine/romley.conf
> +++ b/meta-romley/conf/machine/romley.conf
> @@ -1,7 +1,7 @@
>  #@TYPE: Machine
>  #@NAME: romley
>
> -#@DESCRIPTION: Machine configuration for Sugar Bay systems
> +#@DESCRIPTION: Machine configuration for Romley systems
>  # i.e. Sandy Bridge + Patsburg Chipset
>
>  require conf/machine/include/tune-x86_64.inc
> --
> 1.7.0.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 4
> Date: Mon, 31 Oct 2011 10:03:47 -0700
> From: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
> To: "Zanussi, Tom" <tom.zanussi@intel.com>, "yocto@yoctoproject.org"
>        <yocto@yoctoproject.org>
> Subject: Re: [yocto] [PATCH 2/2] meta-romley: change references to
>        sugarbay in     linux-yocto-rt_3.0.bbappend
> Message-ID:
>        <
> 4BD43A85686FC34D819098DB1C3999D9018F709021@orsmsx502.amr.corp.intel.com>
>
> Content-Type: text/plain; charset="us-ascii"
>
> Acked-by: Kishore Bodke  <Kishore.k.bodke@intel.com>
>
> Thanks
> Kishore.
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of tom.zanussi@intel.com
> Sent: Friday, October 28, 2011 7:00 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] [PATCH 2/2] meta-romley: change references to sugarbay in
> linux-yocto-rt_3.0.bbappend
>
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> There are still references to sugarbay in linux-yocto-rt_3.0.bbappend;
> this changes them to romley.
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>  .../linux/linux-yocto-rt_3.0.bbappend              |    6 +++---
>  1 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> index d630dc4..1551ccf 100644
> --- a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> +++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
> @@ -3,6 +3,6 @@ COMPATIBLE_MACHINE_romley = "romley"
>  KMACHINE_romley  = "romley"
>
>  # Update the following to use a different BSP branch or meta SRCREV
> -#KBRANCH_sugarbay  = "yocto/standard/preempt-rt/base"
> -#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?= XXXX
> -#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?= XXXX
> +#KBRANCH_romley  = "yocto/standard/preempt-rt/base"
> +#SRCREV_machine_pn-linux-yocto-rt_romley ?= XXXX
> +#SRCREV_meta_pn-linux-yocto-rt_romley ?= XXXX
> --
> 1.7.0.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> ------------------------------
>
> Message: 5
> Date: Mon, 31 Oct 2011 12:12:08 -0500
> From: Mark Hatle <mark.hatle@windriver.com>
> To: <yocto@yoctoproject.org>
> Subject: Re: [yocto] root paths in packages
> Message-ID: <4EAED6E8.3080800@windriver.com>
> Content-Type: text/plain; charset="ISO-8859-1"
>
> On 10/31/11 5:57 AM, Mike Tsukerman wrote:
> > Hello,
> >
> > I've build rpm packages and met some interesting things.
> > In the rpm all scripts and files include root paths from machine that
> i've build on.
> > how can i change that?
>
> Examples of the problem are definitely needed.  There are some cases where
> embedded paths simply refer to the place on the disk a source file or
> similar
> came from during the build.  Depending on where these references are, they
> may
> be considered safe and acceptable.  However, in most places something like
> this
> would be considered an error.
>
> --Mark
>
> > --
> > Best regards, Mike Tsukerman
> >
> > jabber: miketsukerman@gmail.com <mailto:miketsukerman@gmail.com>
> > jabber: warzon@jabnet.org <mailto:warzon@jabnet.org>
> > skype: w_a_r_z_o_n
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> ------------------------------
>
> Message: 6
> Date: Mon, 31 Oct 2011 12:15:28 -0500
> From: Mark Hatle <mark.hatle@windriver.com>
> To: <yocto@yoctoproject.org>
> Subject: Re: [yocto] what's the proper value for BB_NUMBER_THREADS?
> Message-ID: <4EAED7B0.4050909@windriver.com>
> Content-Type: text/plain; charset="ISO-8859-1"
>
> On 10/30/11 11:15 AM, Robert P. J. Day wrote:
> > On Sun, 30 Oct 2011, Christian Gagneraud wrote:
> >
> >> On 30/10/11 15:32, Robert P. J. Day wrote:
> >>>
> >>>    all the docs recommend twice the number of cores (AFAICT), yet the
> >>> template local.conf file suggests that, for a quad core, the value of
> >>> 4 would be appropriate.  shouldn't that say 8?  same with
> >>> PARALLEL_MAKE?
> >>
> >> Hi Robert,
> >>
> >> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
> >> and x1.5 for PARALLEL_MAKE.
> >
> >   if that's the case, anyone object to my submitting a patch to
> > update local.conf.sample appropriately?
> >
> > rday
> >
>
> I agree the manual and local.conf files should match.  The issue seems to
> be
> that the perfect values are subjective.  Things like memory, disk speed,
> chipset
> latency, and of course processor speed/cores all affect the optimal
> setting.
> But we do need a consistent rule of thumb..  I myself usually use x2 for
> both
> THREADS and MAKE.
>
> --Mark
>
>
> ------------------------------
>
> Message: 7
> Date: Mon, 31 Oct 2011 13:25:03 -0400 (EDT)
> From: "Robert P. J. Day" <rpjday@crashcourse.ca>
> To: Mark Hatle <mark.hatle@windriver.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] what's the proper value for BB_NUMBER_THREADS?
> Message-ID:
>        <alpine.DEB.2.02.1110311323050.8545@localhost6.localdomain6>
> Content-Type: TEXT/PLAIN; charset=US-ASCII
>
> On Mon, 31 Oct 2011, Mark Hatle wrote:
>
> > On 10/30/11 11:15 AM, Robert P. J. Day wrote:
> > > On Sun, 30 Oct 2011, Christian Gagneraud wrote:
> > >
> > >> On 30/10/11 15:32, Robert P. J. Day wrote:
> > >>>
> > >>>    all the docs recommend twice the number of cores (AFAICT), yet the
> > >>> template local.conf file suggests that, for a quad core, the value of
> > >>> 4 would be appropriate.  shouldn't that say 8?  same with
> > >>> PARALLEL_MAKE?
> > >>
> > >> Hi Robert,
> > >>
> > >> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
> > >> and x1.5 for PARALLEL_MAKE.
> > >
> > >   if that's the case, anyone object to my submitting a patch to
> > > update local.conf.sample appropriately?
> > >
> > > rday
> > >
> >
> > I agree the manual and local.conf files should match.  The issue
> > seems to be that the perfect values are subjective.  Things like
> > memory, disk speed, chipset latency, and of course processor
> > speed/cores all affect the optimal setting. But we do need a
> > consistent rule of thumb..  I myself usually use x2 for both THREADS
> > and MAKE.
>
>  that's what i would normally use, assuming that having an overly
> high value for either of those settings can't possibly hurt.  if
> that's the consensus, i can adjust the references to say 2x everywhere
> that i know of.  just let me know.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
>
> ------------------------------
>
> Message: 8
> Date: Mon, 31 Oct 2011 11:39:06 -0600
> From: Gary Thomas <gary@mlbassoc.com>
> To: "Robert P. J. Day" <rpjday@crashcourse.ca>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] what's the proper value for BB_NUMBER_THREADS?
> Message-ID: <4EAEDD3A.9070601@mlbassoc.com>
> Content-Type: text/plain; charset=ISO-8859-1; format=flowed
>
> On 2011-10-31 11:25, Robert P. J. Day wrote:
> > On Mon, 31 Oct 2011, Mark Hatle wrote:
> >
> >> On 10/30/11 11:15 AM, Robert P. J. Day wrote:
> >>> On Sun, 30 Oct 2011, Christian Gagneraud wrote:
> >>>
> >>>> On 30/10/11 15:32, Robert P. J. Day wrote:
> >>>>>
> >>>>>     all the docs recommend twice the number of cores (AFAICT), yet
> the
> >>>>> template local.conf file suggests that, for a quad core, the value of
> >>>>> 4 would be appropriate.  shouldn't that say 8?  same with
> >>>>> PARALLEL_MAKE?
> >>>>
> >>>> Hi Robert,
> >>>>
> >>>> The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,
> >>>> and x1.5 for PARALLEL_MAKE.
> >>>
> >>>    if that's the case, anyone object to my submitting a patch to
> >>> update local.conf.sample appropriately?
> >>>
> >>> rday
> >>>
> >>
> >> I agree the manual and local.conf files should match.  The issue
> >> seems to be that the perfect values are subjective.  Things like
> >> memory, disk speed, chipset latency, and of course processor
> >> speed/cores all affect the optimal setting. But we do need a
> >> consistent rule of thumb..  I myself usually use x2 for both THREADS
> >> and MAKE.
> >
> >    that's what i would normally use, assuming that having an overly
> > high value for either of those settings can't possibly hurt.  if
> > that's the consensus, i can adjust the references to say 2x everywhere
> > that i know of.  just let me know.
>
> Look back in the archives - I think it was Richard that did a fairly
> extensive study of this and he (whoever it was) found that there were
> saturation points and trying to get beyond them had a negative impact.
>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
>
>
> ------------------------------
>
> Message: 9
> Date: Mon, 31 Oct 2011 18:27:27 +0000
> From: McClintock Matthew-B29882 <B29882@freescale.com>
> To: Mike Tsukerman <miketsukerman@gmail.com>
> Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
> Subject: Re: [yocto] root paths in packages
> Message-ID:
>        <CAEsOVNeP_tPvsB0BEX2tLXK=sEHP1=NSSEPEX4GVwMiAwr2-_Q@mail.gmail.com
> >
> Content-Type: text/plain; charset="iso-8859-1"
>
> On Mon, Oct 31, 2011 at 11:40 AM, Mike Tsukerman
> <miketsukerman@gmail.com> wrote:
> > I'am using upstream release from git repository.
> > my building path is /media/mdev/yocto/poky/build/.
> > For example dpkg rpm package for armv7 neon. But it's the same for ?all
> > other packages. This cause many many errors and faults.
> > i've attached to the letter screenshot with example.
> > On Mon, Oct 31, 2011 at 8:32 PM, McClintock Matthew-B29882
> > <B29882@freescale.com> wrote:
> >>
> >> On Mon, Oct 31, 2011 at 5:57 AM, Mike Tsukerman <
> miketsukerman@gmail.com>
> >> wrote:
> >> > Hello,
> >> > I've build rpm packages and met some interesting things.
> >> > In the rpm all scripts and files include root paths from machine that
> >> > i've
> >> > build on.
> >> > how can i change that?
>
> Mike,
>
> You need to reply all to include the mailing list.
>
> What commands did you run to generate this rpm? What file is this in?
> Usually the shebang should be updated to remove any references to
> build environment but it looks like it's still referencing perl-native
> from the build environment.
>
> Is this script used on the target machine or just during the build
> process? It might not be explicitly required.
> -------------- next part --------------
> A non-text attachment was scrubbed...
> Name: example.png
> Type: image/png
> Size: 162063 bytes
> Desc: example.png
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20111031/af29d2b9/attachment.png
> >
>
> ------------------------------
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 13, Issue 54
> *************************************
>



-- 
Best regards, Mike Tsukerman

jabber: miketsukerman@gmail.com
jabber: warzon@jabnet.org
skype: w_a_r_z_o_n

--bcaec52156ab33bfab04b09c982d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Mon, Oct 31, 2011 at 10:29 PM,  <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:yocto-request@yoctoproject.org">yocto-re=
quest@yoctoproject.org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex;">
Send yocto mailing list submissions to<br>
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
 =A0 1. Re: any objection to adding a PREMIRRORS section to the QS<br>
 =A0 =A0 =A0guide? (Robert P. J. Day)<br>
 =A0 2. Re: root paths in packages (McClintock Matthew-B29882)<br>
 =A0 3. Re: [PATCH 1/2] meta-romley: Fix BSP description in<br>
 =A0 =A0 =A0romley.conf (Bodke, Kishore K)<br>
 =A0 4. Re: [PATCH 2/2] meta-romley: change references to sugarbay in<br>
 =A0 =A0 =A0linux-yocto-rt_3.0.bbappend (Bodke, Kishore K)<br>
 =A0 5. Re: root paths in packages (Mark Hatle)<br>
 =A0 6. Re: what&#39;s the proper value for BB_NUMBER_THREADS? (Mark Hatle)=
<br>
 =A0 7. Re: what&#39;s the proper value for BB_NUMBER_THREADS?<br>
 =A0 =A0 =A0(Robert P. J. Day)<br>
 =A0 8. Re: what&#39;s the proper value for BB_NUMBER_THREADS? (Gary Thomas=
)<br>
 =A0 9. Re: root paths in packages (McClintock Matthew-B29882)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Mon, 31 Oct 2011 12:01:26 -0400 (EDT)<br>
From: &quot;Robert P. J. Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse=
.ca">rpjday@crashcourse.ca</a>&gt;<br>
To: &quot;Rifenbark, Scott M&quot; &lt;<a href=3D"mailto:scott.m.rifenbark@=
intel.com">scott.m.rifenbark@intel.com</a>&gt;<br>
Cc: Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.org">yoc=
to@yoctoproject.org</a>&gt;<br>
Subject: Re: [yocto] any objection to adding a PREMIRRORS section to<br>
 =A0 =A0 =A0 =A0the QS guide?<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;alpine.DEB.2.02.1110311150440.7448@localhost6.localdoma=
in6&gt;<br>
Content-Type: TEXT/PLAIN; charset=3DUS-ASCII<br>
<br>
On Mon, 31 Oct 2011, Rifenbark, Scott M wrote:<br>
<br>
&gt; Robert,<br>
&gt;<br>
&gt; We do have a question addressed in the Yocto Project Reference<br>
&gt; Manual that talks about premirrors and how Poky finds stuff. =A0See<br=
>
&gt; the H.24 section of the manual<br>
&gt; <a href=3D"http://www.yoctoproject.org/docs/current/poky-ref-manual/po=
ky-ref-manual.html" target=3D"_blank">http://www.yoctoproject.org/docs/curr=
ent/poky-ref-manual/poky-ref-manual.html</a>.<br>
&gt; Maybe this information is a bit too buried to be useful. =A0I could<br=
>
&gt; specifically reference that FAQ entry from within the QS in the same<b=
r>
&gt; area that I mention the other &quot;useful&quot; items to consider in =
the<br>
&gt; local.conf file, such as BB_NUMBER_THREADS, etc.<br>
&gt;<br>
&gt; Scott<br>
<br>
 =A0i know about the PREMIRRORS stuff in the poky reference manual -- i<br>
was just toying with the idea that knowing how PREMIRRORS works would<br>
be useful, even for a beginner.<br>
<br>
 =A0perhaps i&#39;m not using it properly, but in my case, it&#39;s handy s=
ince<br>
i have a downloads directory of nothing but tarballs that i&#39;ve been<br>
accumulating over the last while that i&#39;ve used for openembedded and<br=
>
other projects. i&#39;m using PREMIRRORS_prepend to take advantage of all<b=
r>
that content to avoid any unnecessary downloading. =A0and every time i<br>
*do* end up downloading a newer version of a tarball that i didn&#39;t<br>
have, i copy it to that central downloads directory for the next time.<br>
does that make sense? =A0and, as i said, even beginners should be able<br>
to appreciate taking advantage of local content they may have<br>
collected for other reasons.<br>
<br>
 =A0in any event, i have some different ideas for the design of a<br>
beginner&#39;s guide i plan on using in some of my own presentations, so i<=
br>
don&#39;t have to inflict all of my ideas on everyone else.<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Mon, 31 Oct 2011 16:32:23 +0000<br>
From: McClintock Matthew-B29882 &lt;<a href=3D"mailto:B29882@freescale.com"=
>B29882@freescale.com</a>&gt;<br>
To: Mike Tsukerman &lt;<a href=3D"mailto:miketsukerman@gmail.com">miketsuke=
rman@gmail.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] root paths in packages<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;CAEsOVNd18cWS5JeaxHMLTR9-pr+65bb4s=3D<a href=3D"mailto:=
qc7H_6Prq1PpTzbw@mail.gmail.com">qc7H_6Prq1PpTzbw@mail.gmail.com</a>&gt;<br=
>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
On Mon, Oct 31, 2011 at 5:57 AM, Mike Tsukerman &lt;<a href=3D"mailto:miket=
sukerman@gmail.com">miketsukerman@gmail.com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt; I&#39;ve build rpm packages and met some interesting things.<br>
&gt; In the rpm all scripts and files include root paths from machine that =
i&#39;ve<br>
&gt; build on.<br>
&gt; how can i change that?<br>
<br>
Which package? Can you give some examples?<br>
<br>
-M<br>
<br></blockquote><div><span class=3D"Apple-style-span" style=3D"font-family=
: arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255);=
 "><div><div><span id=3D"q_1335b5ba9fc3ea20_1" class=3D"h4" style=3D"cursor=
: pointer; color: rgb(80, 0, 80); font-size: 9px; ">- Hide quoted text -</s=
pan></div>
<div class=3D"im" style=3D"color: rgb(80, 0, 80); ">On Mon, Oct 31, 2011 at=
 10:26 PM, McClintock Matthew-B29882=A0<span dir=3D"ltr">&lt;<a href=3D"mai=
lto:B29882@freescale.com" target=3D"_blank" style=3D"color: rgb(6, 88, 181)=
; ">B29882@freescale.com</a>&gt;</span>=A0wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin-top: 0px; margin-right: 0=
px; margin-bottom: 0px; margin-left: 0.8ex; border-left-width: 1px; border-=
left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex=
; ">
<div>On Mon, Oct 31, 2011 at 11:40 AM, Mike Tsukerman<br>&lt;<a href=3D"mai=
lto:miketsukerman@gmail.com" target=3D"_blank" style=3D"color: rgb(6, 88, 1=
81); ">miketsukerman@gmail.com</a>&gt; wrote:</div></blockquote></div></div=
></span><span class=3D"Apple-style-span" style=3D"color: rgb(80, 0, 80); fo=
nt-family: arial, sans-serif; font-size: 13px; background-color: rgb(255, 2=
55, 255); ">=A0 =A0What commands did you run to generate this rpm? What fil=
e is this in?</span><span class=3D"Apple-style-span" style=3D"font-family: =
arial, sans-serif; font-size: 13px; background-color: rgb(255, 255, 255); "=
><div>
<div class=3D"im" style=3D"color: rgb(80, 0, 80); "><blockquote class=3D"gm=
ail_quote" style=3D"margin-top: 0px; margin-right: 0px; margin-bottom: 0px;=
 margin-left: 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 20=
4, 204); border-left-style: solid; padding-left: 1ex; ">
Usually the shebang should be updated to remove any references to<br>build =
environment but it looks like it&#39;s still referencing perl-native<br>fro=
m the build environment.<br><br>Is this script used on the target machine o=
r just during the build<br>
process? It might not be explicitly required.<br><font color=3D"#888888"><b=
r></font></blockquote><div>=A0</div></div></div><div>I&#39;ve run MACHINE=
=3Dbeagleboard bitbake world. Then i get a lot of rpms in armv7a-vfp-neon f=
older.=A0</div>
<div>I have an igep0020 board, and core-image-minimal-dev running on it. I =
use these rpm&#39;s on the board.</div><div>And as expected dpkg is not wor=
king before i found that it includes these paths.</div><div>But all other r=
pm&#39;s have the same problems - in INSTALL and UPGRADE scripts i&#39;ve f=
ound root paths. =A0</div>
<div><br></div><div><div>rpm --nosignature -ivh /media/mdev/yocto/poky/buil=
d/tmp/deploy/rpm/armv7a-vfp-neon/zip-dev-3.0-r0.armv7a.rpm</div></div><div>=
<br></div></span></div><div>=A0</div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

<br>
------------------------------<br>
<br>
Message: 3<br>
Date: Mon, 31 Oct 2011 10:01:06 -0700<br>
From: &quot;Bodke, Kishore K&quot; &lt;<a href=3D"mailto:kishore.k.bodke@in=
tel.com">kishore.k.bodke@intel.com</a>&gt;<br>
To: &quot;Zanussi, Tom&quot; &lt;<a href=3D"mailto:tom.zanussi@intel.com">t=
om.zanussi@intel.com</a>&gt;, &quot;<a href=3D"mailto:yocto@yoctoproject.or=
g">yocto@yoctoproject.org</a>&quot;<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopr=
oject.org</a>&gt;<br>
Subject: Re: [yocto] [PATCH 1/2] meta-romley: Fix BSP description in<br>
 =A0 =A0 =A0 =A0romley.conf<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:4BD43A85686FC34D819098DB1C3999D9018F7=
0901D@orsmsx502.amr.corp.intel.com">4BD43A85686FC34D819098DB1C3999D9018F709=
01D@orsmsx502.amr.corp.intel.com</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Acked-by: Kishore Bodke =A0&lt;<a href=3D"mailto:Kishore.k.bodke@intel.com"=
>Kishore.k.bodke@intel.com</a>&gt;<br>
<br>
Thanks<br>
Kishore.<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of <a href=3D"mailto:tom.zanus=
si@intel.com">tom.zanussi@intel.com</a><br>

Sent: Friday, October 28, 2011 7:00 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [PATCH 1/2] meta-romley: Fix BSP description in romley.con=
f<br>
<br>
From: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@=
intel.com</a>&gt;<br>
<br>
The description still had a reference to Sugar Bay; this changes it to<br>
Romley.<br>
<br>
Signed-off-by: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom=
.zanussi@intel.com</a>&gt;<br>
---<br>
=A0meta-romley/conf/machine/romley.conf | =A0 =A02 +-<br>
=A01 files changed, 1 insertions(+), 1 deletions(-)<br>
<br>
diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machin=
e/romley.conf<br>
index 38bd17a..2dcb5db 100644<br>
--- a/meta-romley/conf/machine/romley.conf<br>
+++ b/meta-romley/conf/machine/romley.conf<br>
@@ -1,7 +1,7 @@<br>
=A0#@TYPE: Machine<br>
=A0#@NAME: romley<br>
<br>
-#@DESCRIPTION: Machine configuration for Sugar Bay systems<br>
+#@DESCRIPTION: Machine configuration for Romley systems<br>
=A0# i.e. Sandy Bridge + Patsburg Chipset<br>
<br>
=A0require conf/machine/include/tune-x86_64.inc<br>
--<br>
1.7.0.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
------------------------------<br>
<br>
Message: 4<br>
Date: Mon, 31 Oct 2011 10:03:47 -0700<br>
From: &quot;Bodke, Kishore K&quot; &lt;<a href=3D"mailto:kishore.k.bodke@in=
tel.com">kishore.k.bodke@intel.com</a>&gt;<br>
To: &quot;Zanussi, Tom&quot; &lt;<a href=3D"mailto:tom.zanussi@intel.com">t=
om.zanussi@intel.com</a>&gt;, &quot;<a href=3D"mailto:yocto@yoctoproject.or=
g">yocto@yoctoproject.org</a>&quot;<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctopr=
oject.org</a>&gt;<br>
Subject: Re: [yocto] [PATCH 2/2] meta-romley: change references to<br>
 =A0 =A0 =A0 =A0sugarbay in =A0 =A0 linux-yocto-rt_3.0.bbappend<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;<a href=3D"mailto:4BD43A85686FC34D819098DB1C3999D9018F7=
09021@orsmsx502.amr.corp.intel.com">4BD43A85686FC34D819098DB1C3999D9018F709=
021@orsmsx502.amr.corp.intel.com</a>&gt;<br>
<br>
Content-Type: text/plain; charset=3D&quot;us-ascii&quot;<br>
<br>
Acked-by: Kishore Bodke =A0&lt;<a href=3D"mailto:Kishore.k.bodke@intel.com"=
>Kishore.k.bodke@intel.com</a>&gt;<br>
<br>
Thanks<br>
Kishore.<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yocto=
project.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.org">y=
octo-bounces@yoctoproject.org</a>] On Behalf Of <a href=3D"mailto:tom.zanus=
si@intel.com">tom.zanussi@intel.com</a><br>

Sent: Friday, October 28, 2011 7:00 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: [yocto] [PATCH 2/2] meta-romley: change references to sugarbay in =
linux-yocto-rt_3.0.bbappend<br>
<br>
From: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom.zanussi@=
intel.com</a>&gt;<br>
<br>
There are still references to sugarbay in linux-yocto-rt_3.0.bbappend;<br>
this changes them to romley.<br>
<br>
Signed-off-by: Tom Zanussi &lt;<a href=3D"mailto:tom.zanussi@intel.com">tom=
.zanussi@intel.com</a>&gt;<br>
---<br>
=A0.../linux/linux-yocto-rt_3.0.bbappend =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =
=A06 +++---<br>
=A01 files changed, 3 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend b=
/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend<br>
index d630dc4..1551ccf 100644<br>
--- a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend<br>
+++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend<br>
@@ -3,6 +3,6 @@ COMPATIBLE_MACHINE_romley =3D &quot;romley&quot;<br>
=A0KMACHINE_romley =A0=3D &quot;romley&quot;<br>
<br>
=A0# Update the following to use a different BSP branch or meta SRCREV<br>
-#KBRANCH_sugarbay =A0=3D &quot;yocto/standard/preempt-rt/base&quot;<br>
-#SRCREV_machine_pn-linux-yocto-rt_sugarbay ?=3D XXXX<br>
-#SRCREV_meta_pn-linux-yocto-rt_sugarbay ?=3D XXXX<br>
+#KBRANCH_romley =A0=3D &quot;yocto/standard/preempt-rt/base&quot;<br>
+#SRCREV_machine_pn-linux-yocto-rt_romley ?=3D XXXX<br>
+#SRCREV_meta_pn-linux-yocto-rt_romley ?=3D XXXX<br>
--<br>
1.7.0.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
------------------------------<br>
<br>
Message: 5<br>
Date: Mon, 31 Oct 2011 12:12:08 -0500<br>
From: Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle=
@windriver.com</a>&gt;<br>
To: &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
>&gt;<br>
Subject: Re: [yocto] root paths in packages<br>
Message-ID: &lt;<a href=3D"mailto:4EAED6E8.3080800@windriver.com">4EAED6E8.=
3080800@windriver.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;ISO-8859-1&quot;<br>
<br>
On 10/31/11 5:57 AM, Mike Tsukerman wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;ve build rpm packages and met some interesting things.<br>
&gt; In the rpm all scripts and files include root paths from machine that =
i&#39;ve build on.<br>
&gt; how can i change that?<br>
<br>
Examples of the problem are definitely needed. =A0There are some cases wher=
e<br>
embedded paths simply refer to the place on the disk a source file or simil=
ar<br>
came from during the build. =A0Depending on where these references are, the=
y may<br>
be considered safe and acceptable. =A0However, in most places something lik=
e this<br>
would be considered an error.<br>
<br>
--Mark<br>
<br>
&gt; --<br>
&gt; Best regards, Mike Tsukerman<br>
&gt;<br>
&gt; jabber: <a href=3D"mailto:miketsukerman@gmail.com">miketsukerman@gmail=
.com</a> &lt;mailto:<a href=3D"mailto:miketsukerman@gmail.com">miketsukerma=
n@gmail.com</a>&gt;<br>
&gt; jabber: <a href=3D"mailto:warzon@jabnet.org">warzon@jabnet.org</a> &lt=
;mailto:<a href=3D"mailto:warzon@jabnet.org">warzon@jabnet.org</a>&gt;<br>
&gt; skype: w_a_r_z_o_n<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
<br>
------------------------------<br>
<br>
Message: 6<br>
Date: Mon, 31 Oct 2011 12:15:28 -0500<br>
From: Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle=
@windriver.com</a>&gt;<br>
To: &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a=
>&gt;<br>
Subject: Re: [yocto] what&#39;s the proper value for BB_NUMBER_THREADS?<br>
Message-ID: &lt;<a href=3D"mailto:4EAED7B0.4050909@windriver.com">4EAED7B0.=
4050909@windriver.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;ISO-8859-1&quot;<br>
<br>
On 10/30/11 11:15 AM, Robert P. J. Day wrote:<br>
&gt; On Sun, 30 Oct 2011, Christian Gagneraud wrote:<br>
&gt;<br>
&gt;&gt; On 30/10/11 15:32, Robert P. J. Day wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =A0 =A0all the docs recommend twice the number of cores (AFAIC=
T), yet the<br>
&gt;&gt;&gt; template local.conf file suggests that, for a quad core, the v=
alue of<br>
&gt;&gt;&gt; 4 would be appropriate. =A0shouldn&#39;t that say 8? =A0same w=
ith<br>
&gt;&gt;&gt; PARALLEL_MAKE?<br>
&gt;&gt;<br>
&gt;&gt; Hi Robert,<br>
&gt;&gt;<br>
&gt;&gt; The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THREADS,=
<br>
&gt;&gt; and x1.5 for PARALLEL_MAKE.<br>
&gt;<br>
&gt; =A0 if that&#39;s the case, anyone object to my submitting a patch to<=
br>
&gt; update local.conf.sample appropriately?<br>
&gt;<br>
&gt; rday<br>
&gt;<br>
<br>
I agree the manual and local.conf files should match. =A0The issue seems to=
 be<br>
that the perfect values are subjective. =A0Things like memory, disk speed, =
chipset<br>
latency, and of course processor speed/cores all affect the optimal setting=
.<br>
But we do need a consistent rule of thumb.. =A0I myself usually use x2 for =
both<br>
THREADS and MAKE.<br>
<br>
--Mark<br>
<br>
<br>
------------------------------<br>
<br>
Message: 7<br>
Date: Mon, 31 Oct 2011 13:25:03 -0400 (EDT)<br>
From: &quot;Robert P. J. Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse=
.ca">rpjday@crashcourse.ca</a>&gt;<br>
To: Mark Hatle &lt;<a href=3D"mailto:mark.hatle@windriver.com">mark.hatle@w=
indriver.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] what&#39;s the proper value for BB_NUMBER_THREADS?<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;alpine.DEB.2.02.1110311323050.8545@localhost6.localdoma=
in6&gt;<br>
Content-Type: TEXT/PLAIN; charset=3DUS-ASCII<br>
<br>
On Mon, 31 Oct 2011, Mark Hatle wrote:<br>
<br>
&gt; On 10/30/11 11:15 AM, Robert P. J. Day wrote:<br>
&gt; &gt; On Sun, 30 Oct 2011, Christian Gagneraud wrote:<br>
&gt; &gt;<br>
&gt; &gt;&gt; On 30/10/11 15:32, Robert P. J. Day wrote:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; =A0 =A0all the docs recommend twice the number of cores (=
AFAICT), yet the<br>
&gt; &gt;&gt;&gt; template local.conf file suggests that, for a quad core, =
the value of<br>
&gt; &gt;&gt;&gt; 4 would be appropriate. =A0shouldn&#39;t that say 8? =A0s=
ame with<br>
&gt; &gt;&gt;&gt; PARALLEL_MAKE?<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; Hi Robert,<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_THR=
EADS,<br>
&gt; &gt;&gt; and x1.5 for PARALLEL_MAKE.<br>
&gt; &gt;<br>
&gt; &gt; =A0 if that&#39;s the case, anyone object to my submitting a patc=
h to<br>
&gt; &gt; update local.conf.sample appropriately?<br>
&gt; &gt;<br>
&gt; &gt; rday<br>
&gt; &gt;<br>
&gt;<br>
&gt; I agree the manual and local.conf files should match. =A0The issue<br>
&gt; seems to be that the perfect values are subjective. =A0Things like<br>
&gt; memory, disk speed, chipset latency, and of course processor<br>
&gt; speed/cores all affect the optimal setting. But we do need a<br>
&gt; consistent rule of thumb.. =A0I myself usually use x2 for both THREADS=
<br>
&gt; and MAKE.<br>
<br>
 =A0that&#39;s what i would normally use, assuming that having an overly<br=
>
high value for either of those settings can&#39;t possibly hurt. =A0if<br>
that&#39;s the consensus, i can adjust the references to say 2x everywhere<=
br>
that i know of. =A0just let me know.<br>
<br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0<a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
<br>
------------------------------<br>
<br>
Message: 8<br>
Date: Mon, 31 Oct 2011 11:39:06 -0600<br>
From: Gary Thomas &lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbassoc.co=
m</a>&gt;<br>
To: &quot;Robert P. J. Day&quot; &lt;<a href=3D"mailto:rpjday@crashcourse.c=
a">rpjday@crashcourse.ca</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br=
>
Subject: Re: [yocto] what&#39;s the proper value for BB_NUMBER_THREADS?<br>
Message-ID: &lt;<a href=3D"mailto:4EAEDD3A.9070601@mlbassoc.com">4EAEDD3A.9=
070601@mlbassoc.com</a>&gt;<br>
Content-Type: text/plain; charset=3DISO-8859-1; format=3Dflowed<br>
<br>
On 2011-10-31 11:25, Robert P. J. Day wrote:<br>
&gt; On Mon, 31 Oct 2011, Mark Hatle wrote:<br>
&gt;<br>
&gt;&gt; On 10/30/11 11:15 AM, Robert P. J. Day wrote:<br>
&gt;&gt;&gt; On Sun, 30 Oct 2011, Christian Gagneraud wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 30/10/11 15:32, Robert P. J. Day wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; =A0 =A0 all the docs recommend twice the number of cor=
es (AFAICT), yet the<br>
&gt;&gt;&gt;&gt;&gt; template local.conf file suggests that, for a quad cor=
e, the value of<br>
&gt;&gt;&gt;&gt;&gt; 4 would be appropriate. =A0shouldn&#39;t that say 8? =
=A0same with<br>
&gt;&gt;&gt;&gt;&gt; PARALLEL_MAKE?<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Hi Robert,<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The Poky ref manual says (rule of thumb) x2 for BB_NUMBER_=
THREADS,<br>
&gt;&gt;&gt;&gt; and x1.5 for PARALLEL_MAKE.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; =A0 =A0if that&#39;s the case, anyone object to my submitting =
a patch to<br>
&gt;&gt;&gt; update local.conf.sample appropriately?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; rday<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I agree the manual and local.conf files should match. =A0The issue=
<br>
&gt;&gt; seems to be that the perfect values are subjective. =A0Things like=
<br>
&gt;&gt; memory, disk speed, chipset latency, and of course processor<br>
&gt;&gt; speed/cores all affect the optimal setting. But we do need a<br>
&gt;&gt; consistent rule of thumb.. =A0I myself usually use x2 for both THR=
EADS<br>
&gt;&gt; and MAKE.<br>
&gt;<br>
&gt; =A0 =A0that&#39;s what i would normally use, assuming that having an o=
verly<br>
&gt; high value for either of those settings can&#39;t possibly hurt. =A0if=
<br>
&gt; that&#39;s the consensus, i can adjust the references to say 2x everyw=
here<br>
&gt; that i know of. =A0just let me know.<br>
<br>
Look back in the archives - I think it was Richard that did a fairly<br>
extensive study of this and he (whoever it was) found that there were<br>
saturation points and trying to get beyond them had a negative impact.<br>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
<br>
<br>
------------------------------<br>
<br>
Message: 9<br>
Date: Mon, 31 Oct 2011 18:27:27 +0000<br>
From: McClintock Matthew-B29882 &lt;<a href=3D"mailto:B29882@freescale.com"=
>B29882@freescale.com</a>&gt;<br>
To: Mike Tsukerman &lt;<a href=3D"mailto:miketsukerman@gmail.com">miketsuke=
rman@gmail.com</a>&gt;<br>
Cc: &quot;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a>&quot; &lt;<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a>&gt;<br>
Subject: Re: [yocto] root paths in packages<br>
Message-ID:<br>
 =A0 =A0 =A0 =A0&lt;CAEsOVNeP_tPvsB0BEX2tLXK=3DsEHP1=3D<a href=3D"mailto:NS=
SEPEX4GVwMiAwr2-_Q@mail.gmail.com">NSSEPEX4GVwMiAwr2-_Q@mail.gmail.com</a>&=
gt;<br>
Content-Type: text/plain; charset=3D&quot;iso-8859-1&quot;<br>
<br>
On Mon, Oct 31, 2011 at 11:40 AM, Mike Tsukerman<br>
&lt;<a href=3D"mailto:miketsukerman@gmail.com">miketsukerman@gmail.com</a>&=
gt; wrote:<br>
&gt; I&#39;am using upstream release from git repository.<br>
&gt; my building path is /media/mdev/yocto/poky/build/.<br>
&gt; For example dpkg rpm package for armv7 neon. But it&#39;s the same for=
 ?all<br>
&gt; other packages. This cause many many errors and faults.<br>
&gt; i&#39;ve attached to the letter screenshot with example.<br>
&gt; On Mon, Oct 31, 2011 at 8:32 PM, McClintock Matthew-B29882<br>
&gt; &lt;<a href=3D"mailto:B29882@freescale.com">B29882@freescale.com</a>&g=
t; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Oct 31, 2011 at 5:57 AM, Mike Tsukerman &lt;<a href=3D"mai=
lto:miketsukerman@gmail.com">miketsukerman@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt; &gt; Hello,<br>
&gt;&gt; &gt; I&#39;ve build rpm packages and met some interesting things.<=
br>
&gt;&gt; &gt; In the rpm all scripts and files include root paths from mach=
ine that<br>
&gt;&gt; &gt; i&#39;ve<br>
&gt;&gt; &gt; build on.<br>
&gt;&gt; &gt; how can i change that?<br>
<br>
Mike,<br>
<br>
You need to reply all to include the mailing list.<br>
<br>
What commands did you run to generate this rpm? What file is this in?<br>
Usually the shebang should be updated to remove any references to<br>
build environment but it looks like it&#39;s still referencing perl-native<=
br>
from the build environment.<br>
<br>
Is this script used on the target machine or just during the build<br>
process? It might not be explicitly required.<br>
-------------- next part --------------<br>
A non-text attachment was scrubbed...<br>
Name: example.png<br>
Type: image/png<br>
Size: 162063 bytes<br>
Desc: example.png<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20111031/af29d2b9/attachment.png" target=3D"_blank">http://lists.yoctopr=
oject.org/pipermail/yocto/attachments/20111031/af29d2b9/attachment.png</a>&=
gt;<br>

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
End of yocto Digest, Vol 13, Issue 54<br>
*************************************<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><font style=
=3D"color:rgb(51, 51, 51)" size=3D"2">Best regards, Mike Tsukerman<br><br><=
span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:miketsuk=
erman@gmail.com" target=3D"_blank">miketsukerman@gmail.com</a><br>
<span style=3D"color:rgb(0, 0, 0)">jabber</span>: <a href=3D"mailto:warzon@=
jabnet.org" target=3D"_blank">warzon@jabnet.org</a><br><span style=3D"color=
:rgb(0, 0, 0)">skype</span>: w_a_r_z_o_n</font><br><br>

--bcaec52156ab33bfab04b09c982d--
