Return-Path: <bds@bsmucker.eu.org>
Received: from mxout-07.mxes.net (mxout-07.mxes.net [216.86.168.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FBFE011AB
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 14:43:36 -0800 (PST)
Received: from [192.168.0.42] (unknown [50.37.140.69])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.mxes.net (Postfix) with ESMTPSA id 3A5BD22E253;
	Wed,  2 Jan 2013 17:43:35 -0500 (EST)
Message-ID: <50E4B814.6060003@bsmucker.eu.org>
Date: Wed, 02 Jan 2013 14:43:32 -0800
From: Brian Smucker <bds@bsmucker.eu.org>
User-Agent: Mozilla/5.0 (Windows NT 5.1; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <50E4A287.3050607@bsmucker.eu.org> <50E4A2D0.8020205@windriver.com>
	<50E4AB07.9090208@bsmucker.eu.org>
	<CADkTA4OqaB2J9QHbKrp0Prq0MMM=CtKO4ZsYhbXUWi6t3Aa8rg@mail.gmail.com>
In-Reply-To: <CADkTA4OqaB2J9QHbKrp0Prq0MMM=CtKO4ZsYhbXUWi6t3Aa8rg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Magic kernel config option.
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
X-List-Received-Date: Wed, 02 Jan 2013 22:43:37 -0000
Content-Type: multipart/alternative;
	boundary="------------010105030700090806070707"

--------------010105030700090806070707
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I take everything back.  The entry in the defconfig did the trick.  My 
problem was that the recipe was grabbing its defconfig from the wrong 
directory, costing me much confusion.

So sorry for the false alarm.  Thanks again for your help.  When you 
said the defconfig was a straight copy, the light finally dawned that 
there was something else going on.

The silver lining to all this thrashing around for me was the fact that 
I do understand the kernel bitbake process much better.

Brian

On 1/2/2013 2:15 PM, Bruce Ashfield wrote:
>
>
>
> On Wed, Jan 2, 2013 at 4:47 PM, Brian Smucker <bds@bsmucker.eu.org 
> <mailto:bds@bsmucker.eu.org>> wrote:
>
>     On 1/2/2013 1:12 PM, Bruce Ashfield wrote:
>
>         On 13-01-02 04:11 PM, Brian Smucker wrote:
>
>             On 1/2/2013 10:06 AM, Bruce Ashfield wrote:
>              > On 12-12-24 02:59 PM, Brian Smucker wrote:
>              >> Hi,
>              >>
>              >
>              > Catching up on email from the holidays. Did you ever
>             get an answer
>              > to this ?
>             Not yet,  resumed my quest today.
>
>              >> I'm a yocto mostly-newbie, trying to find my way.  I
>             have a custom
>             layer
>              >> that I am using to build a kernel. The layer right now
>             consists of a
>             few
>              >> kernel patches and a defconfig and is based on the
>             standard kernel
>              >> otherwise.
>              >>
>              >> When I do a diff on my defconfig and the bitbake
>             generated .config,
>             they
>              >> are quite similar, but the CONFIG_UNION_FS=y line
>             magically shows up.
>              >> I'm wondering where it comes from and how to disable it.
>              >
>              > CONFIG_UNION_FS is being enabled by the standard kernel
>             (and all
>              > kernels that inherit it). Since you are based on that
>             kernel, you
>              > get the option enabled.
>              >
>              >>
>              >> I can do a bitbake -c menuconfig virtual/kernel and
>             eliminate that
>              >> option giving me the kernel I want, but those changes
>             are gone after a
>              >> bitbake -c cleansstate ...
>              >
>              > Have you tried putting
>              >
>              > # CONFIG_UNION_FS is not set
>              >
>              > in your defconfig ? That should disable it.
>              >
>             I did try that, but that did not disable it.
>
>
>         Hmmm. It worked here. I'll run another test shortly (I'm
>         working on
>         3.8-rc1 at the moment).
>
>
>             So after much pain and thrashing about to figure things
>             out, now I see
>             that in the standard-nocfg.scc file, the unionfs feature
>             is set. This
>             file is found in the following path: tmp/work/..
>             ../linux/meta/cfg/kernel-cache/ktypes/standard/ directory.
>
>             My current burning question is:  Where is does this file
>             come from? It
>             does not seem to be part of the kernel git repository.  I
>             can changes
>             this file and affect the kernel build, but again, those
>             changes are
>             transitory and do not persist after cleaning.
>
>
>         It's from the meta branch of the kernel git repository. Those
>         are all the fragments that are used to construct and configure
>         the kernel. Part of the build process makes them available to the
>         configuration phase.
>
>         As something else to try, call your file <foo>.cfg and add it
>         to the
>         SRC_URI the same way you added the defconfig. defconfig's get
>         special
>         processing, calling it <foo>.cfg will simply get your changes
>         added
>         to the end of the build and they teka precedence.
>
>
>     Tried your above suggestion, didn't seem to work.
>
>     So with a bit of further testing it looks like by the time the
>     defconfig and the <foo>.cfg are copied into the linux directory,
>     the commented out config option: # CONFIG_UNION_FS is not set
>     line is totally gone.
>
>
> Interesting .. and not really possible if you are talking about the 
> version in $WORKDIR (i.e
> the directory above the linux/ source directory). Those are straight 
> copies from your
> layer, with zero processing. Same with the copy within the 
> linux/meta/cfg/* directory
> structure, they are straight copies and are only processed after being 
> ordered and
> concatenated.
>
>
>
>         That being said, if
>         a feature with a Kconfig of the kernel has a "select UNIONFS"
>         then you
>         can't override it with a config/defconfig option, you need to
>         patch
>         the kernel.
>
>     Not sure what you are saying here.  If you mean that the unionfs
>     kernel option is required by another selected kernel config
>     option, I'm pretty sure that's not the case.  I can bitbake -c
>     menuconfig virtual/kernel and merely deselect the unionfs option
>     and the kernel is good.
>
>
> I can't see your source tree, so it was always an option. I know it 
> definitely isn't
> the case in the linux-yocto tree. But the ability to deselect it in 
> menuconfig isn't
> contingent on something else not selecting it from within another Kconfig.
>
> Again, if you send me your defconfig and local.conf changes (for the 
> BSP), I'll
> run a kernel configuration test and be able to easily tell you what is 
> happening.
>
> Cheers,
>
> Bruce
>
>
>     Brian
>
>
>
>
>
>         If you send me your defconfig, I can run some test builds here.
>
>         Bruce
>
>
>
>
>
>             Thanks,
>
>             Brian
>
>
>
>
>     _______________________________________________
>     yocto mailing list
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> -- 
> "Thou shalt not follow the NULL pointer, for chaos and madness await 
> thee at its end"


--------------010105030700090806070707
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">I take everything back.&nbsp; The entry in
      the defconfig did the trick.&nbsp; My problem was that the recipe was
      grabbing its defconfig from the wrong directory, costing me much
      confusion.<br>
      <br>
      So sorry for the false alarm.&nbsp; Thanks again for your help.&nbsp; When
      you said the defconfig was a straight copy, the light finally
      dawned that there was something else going on.<br>
      <br>
      The silver lining to all this thrashing around for me was the fact
      that I do understand the kernel bitbake process much better.<br>
      <br>
      Brian<br>
      <br>
      On 1/2/2013 2:15 PM, Bruce Ashfield wrote:<br>
    </div>
    <blockquote
cite="mid:CADkTA4OqaB2J9QHbKrp0Prq0MMM=CtKO4ZsYhbXUWi6t3Aa8rg@mail.gmail.com"
      type="cite">
      <div dir="ltr"><br>
        <div class="gmail_extra"><br>
          <br>
          <div class="gmail_quote">On Wed, Jan 2, 2013 at 4:47 PM, Brian
            Smucker <span dir="ltr">&lt;<a moz-do-not-send="true"
                href="mailto:bds@bsmucker.eu.org" target="_blank">bds@bsmucker.eu.org</a>&gt;</span>
            wrote:<br>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div class="HOEnZb">
                <div class="h5">On 1/2/2013 1:12 PM, Bruce Ashfield
                  wrote:<br>
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">
                    On 13-01-02 04:11 PM, Brian Smucker wrote:<br>
                    <blockquote class="gmail_quote" style="margin:0 0 0
                      .8ex;border-left:1px #ccc solid;padding-left:1ex">
                      On 1/2/2013 10:06 AM, Bruce Ashfield wrote:<br>
                      &nbsp;&gt; On 12-12-24 02:59 PM, Brian Smucker wrote:<br>
                      &nbsp;&gt;&gt; Hi,<br>
                      &nbsp;&gt;&gt;<br>
                      &nbsp;&gt;<br>
                      &nbsp;&gt; Catching up on email from the holidays. Did
                      you ever get an answer<br>
                      &nbsp;&gt; to this ?<br>
                      Not yet, &nbsp;resumed my quest today.<br>
                      <br>
                      &nbsp;&gt;&gt; I'm a yocto mostly-newbie, trying to
                      find my way. &nbsp;I have a custom<br>
                      layer<br>
                      &nbsp;&gt;&gt; that I am using to build a kernel. The
                      layer right now consists of a<br>
                      few<br>
                      &nbsp;&gt;&gt; kernel patches and a defconfig and is
                      based on the standard kernel<br>
                      &nbsp;&gt;&gt; otherwise.<br>
                      &nbsp;&gt;&gt;<br>
                      &nbsp;&gt;&gt; When I do a diff on my defconfig and the
                      bitbake generated .config,<br>
                      they<br>
                      &nbsp;&gt;&gt; are quite similar, but the
                      CONFIG_UNION_FS=y line magically shows up.<br>
                      &nbsp;&gt;&gt; I'm wondering where it comes from and
                      how to disable it.<br>
                      &nbsp;&gt;<br>
                      &nbsp;&gt; CONFIG_UNION_FS is being enabled by the
                      standard kernel (and all<br>
                      &nbsp;&gt; kernels that inherit it). Since you are
                      based on that kernel, you<br>
                      &nbsp;&gt; get the option enabled.<br>
                      &nbsp;&gt;<br>
                      &nbsp;&gt;&gt;<br>
                      &nbsp;&gt;&gt; I can do a bitbake -c menuconfig
                      virtual/kernel and eliminate that<br>
                      &nbsp;&gt;&gt; option giving me the kernel I want, but
                      those changes are gone after a<br>
                      &nbsp;&gt;&gt; bitbake -c cleansstate ...<br>
                      &nbsp;&gt;<br>
                      &nbsp;&gt; Have you tried putting<br>
                      &nbsp;&gt;<br>
                      &nbsp;&gt; # CONFIG_UNION_FS is not set<br>
                      &nbsp;&gt;<br>
                      &nbsp;&gt; in your defconfig ? That should disable it.<br>
                      &nbsp;&gt;<br>
                      I did try that, but that did not disable it.<br>
                    </blockquote>
                    <br>
                    Hmmm. It worked here. I'll run another test shortly
                    (I'm working on<br>
                    3.8-rc1 at the moment).<br>
                    <br>
                    <blockquote class="gmail_quote" style="margin:0 0 0
                      .8ex;border-left:1px #ccc solid;padding-left:1ex">
                      <br>
                      So after much pain and thrashing about to figure
                      things out, now I see<br>
                      that in the standard-nocfg.scc file, the unionfs
                      feature is set. This<br>
                      file is found in the following path: tmp/work/..<br>
                      ../linux/meta/cfg/kernel-cache/ktypes/standard/
                      directory.<br>
                      <br>
                      My current burning question is: &nbsp;Where is does
                      this file come from? It<br>
                      does not seem to be part of the kernel git
                      repository. &nbsp;I can changes<br>
                      this file and affect the kernel build, but again,
                      those changes are<br>
                      transitory and do not persist after cleaning.<br>
                    </blockquote>
                    <br>
                    It's from the meta branch of the kernel git
                    repository. Those<br>
                    are all the fragments that are used to construct and
                    configure<br>
                    the kernel. Part of the build process makes them
                    available to the<br>
                    configuration phase.<br>
                    <br>
                    As something else to try, call your file
                    &lt;foo&gt;.cfg and add it to the<br>
                    SRC_URI the same way you added the defconfig.
                    defconfig's get special<br>
                    processing, calling it &lt;foo&gt;.cfg will simply
                    get your changes added<br>
                    to the end of the build and they teka precedence. <br>
                  </blockquote>
                  <br>
                </div>
              </div>
              Tried your above suggestion, didn't seem to work.<br>
              <br>
              So with a bit of further testing it looks like by the time
              the defconfig and the &lt;foo&gt;.cfg are copied into the
              linux directory, the commented out config option: #
              CONFIG_UNION_FS is not set<br>
              line is totally gone.
              <div class="im"><br>
              </div>
            </blockquote>
            <div><br>
            </div>
            <div style="">Interesting .. and not really possible if you
              are talking about the version in $WORKDIR (i.e</div>
            <div style="">the directory above the linux/ source
              directory). Those are straight copies from your</div>
            <div style="">layer, with zero processing. Same with the
              copy within the linux/meta/cfg/* directory</div>
            <div style="">structure, they are straight copies and are
              only processed after being ordered and&nbsp;</div>
            <div style="">concatenated.</div>
            <div>&nbsp;</div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <div class="im">
                <br>
                <br>
                <blockquote class="gmail_quote" style="margin:0 0 0
                  .8ex;border-left:1px #ccc solid;padding-left:1ex">
                  That being said, if<br>
                  a feature with a Kconfig of the kernel has a "select
                  UNIONFS" then you<br>
                  can't override it with a config/defconfig option, you
                  need to patch<br>
                  the kernel.<br>
                </blockquote>
              </div>
              Not sure what you are saying here. &nbsp;If you mean that the
              unionfs kernel option is required by another selected
              kernel config option, I'm pretty sure that's not the case.
              &nbsp;I can bitbake -c menuconfig virtual/kernel and merely
              deselect the unionfs option and the kernel is good.<span
                class="HOEnZb"><font color="#888888"><br>
                  <br>
                </font></span></blockquote>
            <div><br>
            </div>
            <div style="">I can't see your source tree, so it was always
              an option. I know it definitely isn't</div>
            <div style="">the case in the linux-yocto tree. But the
              ability to deselect it in menuconfig isn't</div>
            <div style="">contingent on something else not selecting it
              from within another Kconfig.</div>
            <div style=""><br>
            </div>
            <div style="">Again, if you send me your defconfig and
              local.conf changes (for the BSP), I'll</div>
            <div style="">
              run a kernel configuration test and be able to easily tell
              you what is happening.</div>
            <div style=""><br>
            </div>
            <div style="">Cheers,</div>
            <div style=""><br>
            </div>
            <div style="">Bruce</div>
            <div>&nbsp;</div>
            <blockquote class="gmail_quote" style="margin:0 0 0
              .8ex;border-left:1px #ccc solid;padding-left:1ex">
              <span class="HOEnZb"><font color="#888888">
                  <br>
                  Brian</font></span>
              <div class="HOEnZb">
                <div class="h5"><br>
                  <br>
                  <br>
                  <br>
                  <br>
                  <blockquote class="gmail_quote" style="margin:0 0 0
                    .8ex;border-left:1px #ccc solid;padding-left:1ex">
                    If you send me your defconfig, I can run some test
                    builds here.<br>
                    <br>
                    Bruce<br>
                    <br>
                    <br>
                    <br>
                    <br>
                    <blockquote class="gmail_quote" style="margin:0 0 0
                      .8ex;border-left:1px #ccc solid;padding-left:1ex">
                      <br>
                      Thanks,<br>
                      <br>
                      Brian<br>
                      <br>
                      <br>
                    </blockquote>
                    <br>
                  </blockquote>
                  <br>
                  _______________________________________________<br>
                  yocto mailing list<br>
                  <a moz-do-not-send="true"
                    href="mailto:yocto@yoctoproject.org" target="_blank">yocto@yoctoproject.org</a><br>
                  <a moz-do-not-send="true"
                    href="https://lists.yoctoproject.org/listinfo/yocto"
                    target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
                </div>
              </div>
            </blockquote>
          </div>
          <br>
          <br clear="all">
          <div><br>
          </div>
          -- <br>
          "Thou shalt not follow the NULL pointer, for chaos and madness
          await thee at its end"
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------010105030700090806070707--
