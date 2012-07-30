Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5F8F5E00346
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:20:52 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so11686499pbb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 07:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=RSnCRu0TAgbwixNb5T1WtmJKf3d29o15lYKFekuYHLU=;
	b=gJCjwZUv7eNjyG+nFJc+lbxazCgoUE+gHsN9GXP5Qh/PJVI1MYphF1/SDVjiow3pCr
	JMyTyOh6/jxen7xioWwoE347gobngDN89VGmvPqNq9sXIskbDIJklfZg0Vwga47dBIPR
	DR3Bxrj2fiD/arEv4SvrrQz00OVRdgUpjRG2N4h1KX9eWu3nTSC82XSUCF5pdhGXS82k
	jqPgUSESLcHCEZtHuo+jw1OHgzkVhQd2YinUc1U5itcYOJAOPyilPxBrZo2DrnHTwntw
	blH4tYBuzQX5BXoAuTDEijef0hmHcJyScm2MqaNklKPHfLFC5eNGbKsr1o/V0CqmLBti
	2BvA==
MIME-Version: 1.0
Received: by 10.68.130.9 with SMTP id oa9mr35413381pbb.95.1343658051607; Mon,
	30 Jul 2012 07:20:51 -0700 (PDT)
Received: by 10.68.201.4 with HTTP; Mon, 30 Jul 2012 07:20:51 -0700 (PDT)
In-Reply-To: <CADkTA4Pm=bFeA9FpBeZ7usqAo+c1cS+mqaM7b=1Zcm6RnErRhQ@mail.gmail.com>
References: <CACW_hTZwzZUyWmmvDaFqaqt7do=_WfXOzA2ytAcs5CD1UmS0kA@mail.gmail.com>
	<CADkTA4Pm=bFeA9FpBeZ7usqAo+c1cS+mqaM7b=1Zcm6RnErRhQ@mail.gmail.com>
Date: Mon, 30 Jul 2012 16:20:51 +0200
Message-ID: <CACW_hTZOt=e8sWjarwip27qLJ8rY-c7cRRKttUUCtvFsmu5fag@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>, yocto@yoctoproject.org
Subject: Re: denzil kernel build issues
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
X-List-Received-Date: Mon, 30 Jul 2012 14:20:52 -0000
Content-Type: multipart/alternative; boundary=e89a8ffbaec5dd9abf04c60cc416

--e89a8ffbaec5dd9abf04c60cc416
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

Thanks for your support.
See below

2012/7/30 Bruce Ashfield <bruce.ashfield@gmail.com>

> On Mon, Jul 30, 2012 at 7:33 AM, Frans Meulenbroeks
> <fransmeulenbroeks@gmail.com> wrote:
> > Dear all,
> >
> > I finally managed to find time to pick up porting my project to denzil
> and
> > did encounter two issues that I wanted to report back:
> >
> > First is that I could not find what the preferred way was to disable a
> > kernel option in my bsp.
> > (the option concerned is CONFIG_PM).
> > Of course I can sed it out in do_configure but I'd hoped it could be
> simpler
> > (I have tried:
> > CONFIG_PM=n
> > in my config snippet)
>
> Putting:
>
> # CONFIG_PM is not set
>
> in your configuration fragment will turn off an option, the BSP guide has a
> "# CONFIG_SMP is not set" as an example for this.
>

i thought it would and I have had this in my config too, but still it get
switched on. Guess there is something else in my config that sets this.
Will dive into this.

>
> >
> > Secondly a patch of mine does not seem to apply properly the first time,
> but
> > it does apply a second time.
> > This suggests a race between do_kernel_checkout and do_patch
>
> There shouldn't be any race ..  if this doesn't work:
>
>    addtask kernel_checkout before do_patch after do_unpack
>
> Then there are some serious problems with bitbake's task scheduling.
>
> If you didn't do a clean between the two runs, the second is
> attempting to continue
> the patching and you still aren't getting what you want.
>

I did not do a clean inbetween. I figured patch would reattempt to patch
and, since the file is there it would continue.

The addtask line is there in one of the bitbake files.

The odd thing is that the exact same thing builds fine under 3.0.
Actually I was trying to move from 3.0 to 3.2 while stumbling on this.



> Without seeing what you've ported, or a work in progress I can't say
> exactly
> what is wrong, but your meta data is somehow wrong or completely missing.
> Have you set any meta or BSP SRCREVs explicitly ?
>

I have put my work-in-progress in:

https://www.dropbox.com/s/h58h6pq5b0f4u2s/patchproblem.tar.gz vi

you might want to edit conf/layer.conf as it has hardcoded paths.
If I go to meta-syrcxx/conf/machine/syrcxx.conf and set the preferred
kernel version to 3.0 things build fine.
Then I did set to 3.2 and it fails.
Note that apart from a PR bump the files
meta-syrcxx/recipes-kernel/linux/linux-yocto_3.2.bbappend
meta-syrcxx/recipes-kernel/linux/linux-yocto_3.0.bbappend
are identical (and I am just using files; so the same patches apply.

BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rds)

One other thing I noticed; do_install seems to take quite some time; not
sure why this is (haven't investigated).

Best regards, Frans

>
> Cheers,
>
> Bruce
>
> >
> > Below is a log that illustrates this and demonstrates that things are ok
> the
> > 2nd time.
> > (btw I am also a little bit concerned on the command not found messages).
> > And of course any sugguestion for a fix is greatly appreciated.
> >
> > Best regards, Frans
> >
> > frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
> > Parsing recipes: 100%
> >
> |######################################################################################################################|
> > Time: 00:00:30
> > Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets,
> 35
> > skipped, 0 masked, 0 errors.
> >
> > OE Build Configuration:
> > BB_VERSION        = "1.15.1"
> > TARGET_ARCH       = "powerpc"
> > TARGET_OS         = "linux-uclibc"
> > MACHINE           = "syrcxx"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.2"
> > TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
> > TARGET_FPU        = ""
> > meta
> > meta-yocto
> > meta-syrcxx       = "<unknown>:<unknown>"
> >
> > NOTE: Resolving any missing task queue dependencies
> > NOTE: Preparing runqueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > NOTE: Running task 162 of 664 (ID: 6,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_fetch)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_fetch: Started
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_fetch: Succeeded
> > NOTE: Running task 644 of 664 (ID: 2,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_unpack)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_unpack: Started
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_unpack: Succeeded
> > Nmeta-syrcxx/recipes-kernel/linux/linux-yocto_3.2.bbappend
> meta-syrcxx/recipes-kernel/linux/linux-yocto_3.0.bbappendOTE: Running task
> 645 of 664 (ID: 1,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_kernel_checkout)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_kernel_checkout: Started
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_kernel_checkout: Succeeded
> > NOTE: Running task 646 of 664 (ID: 0,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_validate_branches)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_validate_branches: Started
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_validate_branches: Succeeded
> > NOTE: Running task 647 of 664 (ID: 3,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_patch)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_patch: Started
> > ERROR: Function failed: do_patch (see
> >
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
> > for further information)
> > ERROR: Logfile of failure stored in:
> >
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
> > Log data follows:
> > | Branch meta-temp set up to track remote branch meta from origin.
> > | Deleted branch meta-temp (was 3499d64).
> > | warning: could not find (or was already included):
> > cfg/dmaengine/dmaengine.scc
> > | warning: could not find (or was already included):
> > cfg/usb-mass-storage.scc
> > | warning: could not find (or was already included): cfg/vfat.scc
> > | warning: could not find (or was already included):
> > cfg/dmaengine/dmaengine.scc
> > | warning: could not find (or was already included): user-patches.scc
> > | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
> > dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
> > | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:
> > dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found
> > | [INFO] validating against known patches  (syrcxx-fsl-mpc8313e-rdb-meta)
> > Branch standard/default/syrcxx set up to track remote branch
> > standard/default/base from origin.
> >   [##################################ERROR: Function failed: do_patch
> (see
> >
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211
> > for further information)
> > error: patch failed: drivers/gpio/Makefile:41        ] (-)(76 %)
> > | error: drivers/gpio/Makefile: patch does not apply
> > | To force apply this patch, use 'guilt push -f'
> > | [ERROR] unable to complete push
> > | pending patches are:
> > | Patches directory doesn't exist, try guilt-init
> > | ERROR. could not update git tree
> > | ERROR. Could not modify standard/default/fsl-mpc8313e-rdb/syrcxx
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_patch: Failed
> > ERROR: Task 3
> > (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/
> linux-yocto_3.2.bb,
> > do_patch) failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn't need to be
> > rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >   /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/
> linux-yocto_3.2.bb,
> > do_patch
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> > frans@frans-desktop:~/poky-denzil-7.0-build$ ls -l
> >
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
> > -rw-r--r-- 1 frans frans 2663 2012-07-30 12:27
> >
> /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile
> > frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel
> > Loading cache: 100%
> >
> |########################################################################################################################|
> > ETA:  00:00:00
> > Loaded 1106 entries from dependency cache.
> >
> > OE Build Configuration:
> > BB_VERSION        = "1.15.1"
> > TARGET_ARCH       = "powerpc"
> > TARGET_OS         = "linux-uclibc"
> > MACHINE           = "syrcxx"
> > DISTRO            = "poky"
> > DISTRO_VERSION    = "1.2"
> > TUNE_FEATURES     = "m32 fpu-hard ppce300c3"
> > TARGET_FPU        = ""
> > meta
> > meta-yocto
> > meta-syrcxx       = "<unknown>:<unknown>"
> >
> > NOTE: Resolving any missing task queue dependencies
> > NOTE: Preparing runqueue
> > NOTE: Executing SetScene Tasks
> > NOTE: Executing RunQueue Tasks
> > NOTE: Running task 241 of 664 (ID: 3,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_patch)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_patch: Started
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_patch: Succeeded
> > NOTE: Running task 648 of 664 (ID: 8,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_kernel_configme)
> > NOTE: Running task 649 of 664 (ID: 20,
> > /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/linux-yocto_3.2.bb
> ,
> > do_populate_lic)
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_populate_lic: Started
> > NOTE: package
> >
> linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:
> > task do_kernel_configme: Started
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>

--e89a8ffbaec5dd9abf04c60cc416
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,<br><br>Thanks for your support.<br>See below<br><br><div class=3D=
"gmail_quote">2012/7/30 Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:bruce.ashfield@gmail.com" target=3D"_blank">bruce.ashfield@gmail.com</a=
>&gt;</span><br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Mon, Jul 30, 2012 at 7:=
33 AM, Frans Meulenbroeks<br>
&lt;<a href=3D"mailto:fransmeulenbroeks@gmail.com">fransmeulenbroeks@gmail.=
com</a>&gt; wrote:<br>
&gt; Dear all,<br>
&gt;<br>
&gt; I finally managed to find time to pick up porting my project to denzil=
 and<br>
&gt; did encounter two issues that I wanted to report back:<br>
&gt;<br>
&gt; First is that I could not find what the preferred way was to disable a=
<br>
&gt; kernel option in my bsp.<br>
&gt; (the option concerned is CONFIG_PM).<br>
&gt; Of course I can sed it out in do_configure but I&#39;d hoped it could =
be simpler<br>
&gt; (I have tried:<br>
&gt; CONFIG_PM=3Dn<br>
&gt; in my config snippet)<br>
<br>
</div>Putting:<br>
<br>
# CONFIG_PM is not set<br>
<br>
in your configuration fragment will turn off an option, the BSP guide has a=
<br>
&quot;# CONFIG_SMP is not set&quot; as an example for this.<br></blockquote=
><div><br>i thought it would and I have had this in my config too, but stil=
l it get switched on. Guess there is something else in my config that sets =
this.<br>
Will dive into this. <br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div class=3D"im"><br>
&gt;<br>
&gt; Secondly a patch of mine does not seem to apply properly the first tim=
e, but<br>
&gt; it does apply a second time.<br>
&gt; This suggests a race between do_kernel_checkout and do_patch<br>
<br>
</div>There shouldn&#39;t be any race .. =A0if this doesn&#39;t work:<br>
<br>
=A0 =A0addtask kernel_checkout before do_patch after do_unpack<br>
<br>
Then there are some serious problems with bitbake&#39;s task scheduling.<br=
>
<br>
If you didn&#39;t do a clean between the two runs, the second is<br>
attempting to continue<br>
the patching and you still aren&#39;t getting what you want.<br></blockquot=
e><div><br>I did not do a clean inbetween. I figured patch would reattempt =
to patch and, since the file is there it would continue.<br><br>The addtask=
 line is there in one of the bitbake files.<br>
<br>The odd thing is that the exact same thing builds fine under 3.0.<br>Ac=
tually I was trying to move from 3.0 to 3.2 while stumbling on this.<br><br=
><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex">

<br>
Without seeing what you&#39;ve ported, or a work in progress I can&#39;t sa=
y exactly<br>
what is wrong, but your meta data is somehow wrong or completely missing.<b=
r>
Have you set any meta or BSP SRCREVs explicitly ?<br></blockquote><div><br>=
I have put my work-in-progress in:<br><br><a href=3D"https://www.dropbox.co=
m/s/h58h6pq5b0f4u2s/patchproblem.tar.gz">https://www.dropbox.com/s/h58h6pq5=
b0f4u2s/patchproblem.tar.gz</a> vi <br>
<br>you might want to edit conf/layer.conf as it has hardcoded paths.<br>If=
 I go to meta-syrcxx/conf/machine/syrcxx.conf and set the preferred kernel =
version to 3.0 things build fine.<br>Then I did set to 3.2 and it fails.<br=
>
Note that apart from a PR bump the files<br>meta-syrcxx/recipes-kernel/linu=
x/linux-yocto_3.2.bbappend<br>meta-syrcxx/recipes-kernel/linux/linux-yocto_=
3.0.bbappend<br>are identical (and I am just using files; so the same patch=
es apply.<br>
<br>BTW our board is a powerpc 8313e based board (modeled after mpc8313e-rd=
s)<br><br>One other thing I noticed; do_install seems to take quite some ti=
me; not sure why this is (haven&#39;t investigated).<br><br>Best regards, F=
rans<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">
<br>
Cheers,<br>
<br>
Bruce<br>
<div><div class=3D"h5"><br>
&gt;<br>
&gt; Below is a log that illustrates this and demonstrates that things are =
ok the<br>
&gt; 2nd time.<br>
&gt; (btw I am also a little bit concerned on the command not found message=
s).<br>
&gt; And of course any sugguestion for a fix is greatly appreciated.<br>
&gt;<br>
&gt; Best regards, Frans<br>
&gt;<br>
&gt; frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel<br=
>
&gt; Parsing recipes: 100%<br>
&gt; |#####################################################################=
#################################################|<br>
&gt; Time: 00:00:30<br>
&gt; Parsing of 829 .bb files complete (0 cached, 829 parsed). 1105 targets=
, 35<br>
&gt; skipped, 0 masked, 0 errors.<br>
&gt;<br>
&gt; OE Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.15.1&quot;<br>
&gt; TARGET_ARCH =A0 =A0 =A0 =3D &quot;powerpc&quot;<br>
&gt; TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-uclibc&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;syrcxx&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.2&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;m32 fpu-hard ppce300c3&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-syrcxx =A0 =A0 =A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot=
;<br>
&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; NOTE: Preparing runqueue<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; NOTE: Running task 162 of 664 (ID: 6,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_fetch)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_fetch: Started<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_fetch: Succeeded<br>
&gt; NOTE: Running task 644 of 664 (ID: 2,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_unpack)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_unpack: Started<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_unpack: Succeeded<br>
&gt; Nmeta-syrcxx/recipes-kernel/linux/linux-yocto_3.2.bbappend<br>meta-syr=
cxx/recipes-kernel/linux/linux-yocto_3.0.bbappendOTE: Running task 645 of 6=
64 (ID: 1,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_kernel_checkout)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_kernel_checkout: Started<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_kernel_checkout: Succeeded<br>
&gt; NOTE: Running task 646 of 664 (ID: 0,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_validate_branches)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_validate_branches: Started<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_validate_branches: Succeeded<br>
&gt; NOTE: Running task 647 of 664 (ID: 3,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_patch)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_patch: Started<br>
&gt; ERROR: Function failed: do_patch (see<br>
&gt; /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/li=
nux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bd=
f7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211<br>
&gt; for further information)<br>
&gt; ERROR: Logfile of failure stored in:<br>
&gt; /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/li=
nux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bd=
f7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211<br>
&gt; Log data follows:<br>
&gt; | Branch meta-temp set up to track remote branch meta from origin.<br>
&gt; | Deleted branch meta-temp (was 3499d64).<br>
&gt; | warning: could not find (or was already included):<br>
&gt; cfg/dmaengine/dmaengine.scc<br>
&gt; | warning: could not find (or was already included):<br>
&gt; cfg/usb-mass-storage.scc<br>
&gt; | warning: could not find (or was already included): cfg/vfat.scc<br>
&gt; | warning: could not find (or was already included):<br>
&gt; cfg/dmaengine/dmaengine.scc<br>
&gt; | warning: could not find (or was already included): user-patches.scc<=
br>
&gt; | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:<br>
&gt; dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found<br>
&gt; | ./2-syrcxx-215ef69425ed902858630c959dabd5ce.sco: line 21:<br>
&gt; dmaengine_68b329da9893e34099c7d8ad5cb9c940: command not found<br>
&gt; | [INFO] validating against known patches =A0(syrcxx-fsl-mpc8313e-rdb-=
meta)<br>
&gt; Branch standard/default/syrcxx set up to track remote branch<br>
&gt; standard/default/base from origin.<br>
&gt; =A0 [##################################ERROR: Function failed: do_patc=
h (see<br>
&gt; /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/li=
nux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bd=
f7f5ad9f2b30047a8d3493a1a2880a-r1.81/temp/log.do_patch.27211<br>
&gt; for further information)<br>
&gt; error: patch failed: drivers/gpio/Makefile:41 =A0 =A0 =A0 =A0] (-)(76 =
%)<br>
&gt; | error: drivers/gpio/Makefile: patch does not apply<br>
&gt; | To force apply this patch, use &#39;guilt push -f&#39;<br>
&gt; | [ERROR] unable to complete push<br>
&gt; | pending patches are:<br>
&gt; | Patches directory doesn&#39;t exist, try guilt-init<br>
&gt; | ERROR. could not update git tree<br>
&gt; | ERROR. Could not modify standard/default/fsl-mpc8313e-rdb/syrcxx<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_patch: Failed<br>
&gt; ERROR: Task 3<br>
&gt; (/home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http=
://linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_patch) failed with exit code &#39;1&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 647 tasks of which 642 didn&#39;t need =
to be<br>
&gt; rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt; =A0 /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"h=
ttp://linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_patch<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt; frans@frans-desktop:~/poky-denzil-7.0-build$ ls -l<br>
&gt; /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/li=
nux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bd=
f7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile<br>
&gt; -rw-r--r-- 1 frans frans 2663 2012-07-30 12:27<br>
&gt; /home/frans/poky-denzil-7.0-build/tmp/work/syrcxx-poky-linux-uclibc/li=
nux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e948c2bd=
f7f5ad9f2b30047a8d3493a1a2880a-r1.81/linux/drivers/gpio/Makefile<br>
&gt; frans@frans-desktop:~/poky-denzil-7.0-build$ bitbake virtual/kernel<br=
>
&gt; Loading cache: 100%<br>
&gt; |#####################################################################=
###################################################|<br>
&gt; ETA: =A000:00:00<br>
&gt; Loaded 1106 entries from dependency cache.<br>
&gt;<br>
&gt; OE Build Configuration:<br>
&gt; BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.15.1&quot;<br>
&gt; TARGET_ARCH =A0 =A0 =A0 =3D &quot;powerpc&quot;<br>
&gt; TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux-uclibc&quot;<br>
&gt; MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;syrcxx&quot;<br>
&gt; DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<br>
&gt; DISTRO_VERSION =A0 =A0=3D &quot;1.2&quot;<br>
&gt; TUNE_FEATURES =A0 =A0 =3D &quot;m32 fpu-hard ppce300c3&quot;<br>
&gt; TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;&quot;<br>
&gt; meta<br>
&gt; meta-yocto<br>
&gt; meta-syrcxx =A0 =A0 =A0 =3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot=
;<br>
&gt;<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; NOTE: Preparing runqueue<br>
&gt; NOTE: Executing SetScene Tasks<br>
&gt; NOTE: Executing RunQueue Tasks<br>
&gt; NOTE: Running task 241 of 664 (ID: 3,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_patch)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_patch: Started<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_patch: Succeeded<br>
&gt; NOTE: Running task 648 of 664 (ID: 8,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_kernel_configme)<br>
&gt; NOTE: Running task 649 of 664 (ID: 20,<br>
&gt; /home/frans/poky-denzil-7.0/meta/recipes-kernel/linux/<a href=3D"http:=
//linux-yocto_3.2.bb" target=3D"_blank">linux-yocto_3.2.bb</a>,<br>
&gt; do_populate_lic)<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_populate_lic: Started<br>
&gt; NOTE: package<br>
&gt; linux-yocto-3.2.11+git1+b14a08f5c7b469a5077c10942f4e1aec171faa9d_1+01e=
948c2bdf7f5ad9f2b30047a8d3493a1a2880a-r1.81:<br>
&gt; task do_kernel_configme: Started<br>
&gt;<br>
&gt;<br>
</div></div>&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;<br>
</font></span></blockquote></div><br>

--e89a8ffbaec5dd9abf04c60cc416--
