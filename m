Return-Path: <waynli329@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E008E0091A; Wed,  6 Nov 2019 08:56:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (waynli329[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7232CE0083C
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 08:56:53 -0800 (PST)
Received: by mail-il1-f181.google.com with SMTP id s5so12159716iln.4
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2019 08:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3E7pxWzsRdlmuX3UeRNfOreEqZWo1Jx/8HPO2pYr0rw=;
	b=ELPixKreDfyI3Vq011R7nZXYpUbo+RV+JpdD80xY/g7IbWgPwl8Lwsz8NNXmnepPi8
	V+jIuOUS9ZQOT4NgtyqfZXH4LhqR7HLBFrn0ibz2/QWZhPOlPzNrlyRfvzq0qyCwx6V7
	u4mR3sqBjDkdzPOYjMUo8LxrY9sbANNh3A/g66bX+uGeY+6DmFk6+u8JOceiuHYrLf2M
	tO2Gk7WvhR+ordTtDpWHyNIjHPCIuPPVSzIgiOIpe/0OjsUFOlsaZHobBpwuNMdnS9Bd
	BOSuuSqpQf7rXGSUpZQDblxIt2J8IxQGP1si432hBF/9VdBkEEuBUqA2lo+7mS55+YhL
	HMeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3E7pxWzsRdlmuX3UeRNfOreEqZWo1Jx/8HPO2pYr0rw=;
	b=AVXbxxee+RL8UthDRpVaU28VqFSukzUiCisp4DhJ7ghoYH418uQ+TBXJJqHqsxiKaJ
	4a2o+D50Wy9nskWDccg9VvEFwT+DvuSdK9smpHh6FvdWk2ZYFOk/PcxNGcNvJQbN7nuQ
	rODufRDz7nL5SDwWopzFjBX4siiFdQhgEmj7Mo0uqg9zI6BO8aggXm0oaAgth6eoNDVA
	9SSa308lNe1FvezcJmI9PqAkj4s5aQNBVKN2ym3lgEIQDnXc+AY5nUACoGfKeWaaG1L5
	0tz/R7Z/XdWbCNfzaaHkjzCq/vKemwgkWMkhQPrTNymUNd2J/Y/5pfibgYP8b8xmcvZV
	IP3w==
X-Gm-Message-State: APjAAAUJqm3HVPw/vNORkZeudFxWJRnOncaAKJccDrWNRO3cKh+q+7FI
	oD3x299ht1/6P+L3r1nohh1f+bfJwHD/CXU0d+c=
X-Google-Smtp-Source: APXvYqxAhza/JwKVVdAI5K0qh4cdg1oak+w5bJza3EPiNC/+ruDZYKUmuBmG3xADXi2VItztxOGbvNGnIlmmkVyCWN0=
X-Received: by 2002:a92:831d:: with SMTP id f29mr3821366ild.263.1573059412140; 
	Wed, 06 Nov 2019 08:56:52 -0800 (PST)
MIME-Version: 1.0
References: <CAM2K0np6XuF7kQfzr8guexucFNqWMg=CY5sAL+LS7BTWTStaUg@mail.gmail.com>
	<CADkTA4MMf4YJEdqGzCcA2uYT1qEujVrJY8U7TpZ2xi9zoHnQXg@mail.gmail.com>
In-Reply-To: <CADkTA4MMf4YJEdqGzCcA2uYT1qEujVrJY8U7TpZ2xi9zoHnQXg@mail.gmail.com>
From: Wayne Li <waynli329@gmail.com>
Date: Wed, 6 Nov 2019 10:56:40 -0600
Message-ID: <CAM2K0nq7kgsbnJRXhTJNc_6yhcvBdbpFE14=QYU0-Y2D5a1GiQ@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: Adding KVM kernel modules to Yocto Kernel
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
X-List-Received-Date: Wed, 06 Nov 2019 16:56:54 -0000
Content-Type: multipart/alternative; boundary="00000000000078a9820596b06f66"

--00000000000078a9820596b06f66
Content-Type: text/plain; charset="UTF-8"

The thing is I don't know how to pick specific kernel modules and add it to
the system.  Me and my coworker were able to add missing TUN/TAP kernel
modules using the same process I described (i.e. pulling up the GUI, saving
a .config file for TUN/TAP device driver support, and copying the .config
file's content into the kernel configuration file).  And that worked and
the TUN module was added.  So I was just trying the same thing as that but
for KVM.  I assumed that picking the right option in the GUI and using the
right .config file from there would build the right specific kernel modules
into the kernel.

I mean is there another way to specify specific kernel modules I want built
into the system?  What do you mean by the generic meta package
"kernel-modules".  Just so you know, my coworker was the one who did most
of the work building the Yocto kernel.  But he's left the company so now
I'm picking up the pieces.

-Thanks!, Wayne Li

On Wed, Nov 6, 2019 at 10:40 AM Bruce Ashfield <bruce.ashfield@gmail.com>
wrote:

> On Wed, Nov 6, 2019 at 11:30 AM Wayne Li <waynli329@gmail.com> wrote:
> >
> > Dear Yocto Developers,
> >
> > I'm trying to get KVM added and working on a Yocto kernel I built up for
> a T4240 RDB (has a PowerPC CPU).  KVM isn't working and the reason why it
> isn't working seems to be I'm missing the necessary kernel modules.  More
> specifically, I don't seem to have a kvm.ko file that I can load.  Here's
> how I attempted to add KVM to the kernel.
> >
> > I went to the SDK install folder and ran ". fsl-setup-env -m
> t4240rdb-64b" and then "bitbake virtual/kernel -c menuconfig".  After the
> GUI comes up, I went to Virtualization -> KVM support for PowerPC
> E500MC/E5500/E6500 processors and hit "Save" to save the configuration.  I
> then went and copied the content of the .config file created by this into
> the kernel configuration file specified by the following path;
> "build_t4240rdb-64b/virt1.config".  This path was specified by the variable
> KERNEL_DEFCONFIG in sources/meta_freescale/conf/machine/t4240rdb-64b.conf.
> Here's what I currently have in the kernel configuration file (i.e. the
> virt1.config file I mentioned above):
> >
> > https://gist.github.com/WayneZhenLi/4172cd4a819b71a11b85fc5aaa57ebd1
> >
> > After this, I built the kernel by running "bitbake -c compile -f
> virtual/kernel" and rebuilt the full linux image.  I re-added everything to
> the SD card and booted up the T4240 RDB with the newly modified Yocto
> kernel.  At this point if I run lsmod, only the following two kernel
> modules show up:
> >
> > Module                  Size  Used by
> > nfsd                  100940  11
> > exportfs                6723  1 nfsd
> >
> > But if I do a "find . -name "kvm"" I get the following:
> >
> > ./usr/src/kernel/Documentation/virtual/kvm
> > ./usr/src/kernel/arch/arm/kvm
> > ./usr/src/kernel/arch/arm64/kvm
> > ./usr/src/kernel/arch/mips/kvm
> > ./usr/src/kernel/arch/powerpc/kvm
> > ./usr/src/kernel/arch/s390/kvm
> > ./usr/src/kernel/arch/tile/kvm
> > ./usr/src/kernel/arch/x86/kvm
> > ./usr/src/kernel/drivers/s390/kvm
> > ./usr/src/kernel/include/config/kvm
> > ./usr/src/kernel/include/config/have/kvm
> > ./usr/src/kernel/include/kvm
> > ./usr/src/kernel/virt/kvm
> > ./dev/kvm
> > ./sys/devices/virtual/misc/kvm
> > ./sys/class/misc/kvm
> > ./sys/kernel/debug/kvm
> > ./sys/module/kvm
> >
> > So it does look like kvm-related files were added to the Yocto kernel
> because of the changes I made to the kernel configuration file.  But there
> is no kvm.ko (or any .ko file related to kvm) anywhere in the file system.
>
> Is the image you are building installing the specific kernel modules
> you need, or the generic meta package "kernel-modules" ? Without
> something like that, you can build the support, but the modules won't
> be present on the image.
>
> Bruce
>
> >
> > Is there something I'm doing wrong here?  Am I missing important lines
> in my kernel configuration file?  Let me know your thoughts.
> >
> > -Thanks!, Wayne Li
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>

--00000000000078a9820596b06f66
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The thing is I don&#39;t know how to pick specific ke=
rnel modules and add it to the system.=C2=A0 Me and my coworker were able t=
o add missing TUN/TAP kernel modules using the same process I described (i.=
e. pulling up the GUI, saving a .config file for TUN/TAP device driver supp=
ort, and copying the .config file&#39;s content into the kernel configurati=
on file).=C2=A0 And that worked and the TUN module was added.=C2=A0 So I wa=
s just trying the same thing as that but for KVM.=C2=A0 I assumed that pick=
ing the right option in the GUI and using the right .config file from there=
 would build the right specific kernel modules into the kernel.<br></div><d=
iv><br></div><div>I mean is there another way to specify specific kernel mo=
dules I want built into the system?=C2=A0 What do you mean by the generic m=
eta package &quot;kernel-modules&quot;.=C2=A0 Just so you know, my coworker=
 was the one who did most of the work building the Yocto kernel.=C2=A0 But =
he&#39;s left the company so now I&#39;m picking up the pieces.</div><div><=
br></div><div>-Thanks!, Wayne Li<br></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 6, 2019 at 10:40 AM B=
ruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfiel=
d@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">On Wed, Nov 6, 2019 at 11:30 AM Wayne Li &lt;<a href=3D"mailto:w=
aynli329@gmail.com" target=3D"_blank">waynli329@gmail.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; Dear Yocto Developers,<br>
&gt;<br>
&gt; I&#39;m trying to get KVM added and working on a Yocto kernel I built =
up for a T4240 RDB (has a PowerPC CPU).=C2=A0 KVM isn&#39;t working and the=
 reason why it isn&#39;t working seems to be I&#39;m missing the necessary =
kernel modules.=C2=A0 More specifically, I don&#39;t seem to have a kvm.ko =
file that I can load.=C2=A0 Here&#39;s how I attempted to add KVM to the ke=
rnel.<br>
&gt;<br>
&gt; I went to the SDK install folder and ran &quot;. fsl-setup-env -m t424=
0rdb-64b&quot; and then &quot;bitbake virtual/kernel -c menuconfig&quot;.=
=C2=A0 After the GUI comes up, I went to Virtualization -&gt; KVM support f=
or PowerPC E500MC/E5500/E6500 processors and hit &quot;Save&quot; to save t=
he configuration.=C2=A0 I then went and copied the content of the .config f=
ile created by this into the kernel configuration file specified by the fol=
lowing path; &quot;build_t4240rdb-64b/virt1.config&quot;.=C2=A0 This path w=
as specified by the variable KERNEL_DEFCONFIG in sources/meta_freescale/con=
f/machine/t4240rdb-64b.conf.=C2=A0 Here&#39;s what I currently have in the =
kernel configuration file (i.e. the virt1.config file I mentioned above):<b=
r>
&gt;<br>
&gt; <a href=3D"https://gist.github.com/WayneZhenLi/4172cd4a819b71a11b85fc5=
aaa57ebd1" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/Way=
neZhenLi/4172cd4a819b71a11b85fc5aaa57ebd1</a><br>
&gt;<br>
&gt; After this, I built the kernel by running &quot;bitbake -c compile -f =
virtual/kernel&quot; and rebuilt the full linux image.=C2=A0 I re-added eve=
rything to the SD card and booted up the T4240 RDB with the newly modified =
Yocto kernel.=C2=A0 At this point if I run lsmod, only the following two ke=
rnel modules show up:<br>
&gt;<br>
&gt; Module=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 S=
ize=C2=A0 Used by<br>
&gt; nfsd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100=
940=C2=A0 11<br>
&gt; exportfs=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 6723=
=C2=A0 1 nfsd<br>
&gt;<br>
&gt; But if I do a &quot;find . -name &quot;kvm&quot;&quot; I get the follo=
wing:<br>
&gt;<br>
&gt; ./usr/src/kernel/Documentation/virtual/kvm<br>
&gt; ./usr/src/kernel/arch/arm/kvm<br>
&gt; ./usr/src/kernel/arch/arm64/kvm<br>
&gt; ./usr/src/kernel/arch/mips/kvm<br>
&gt; ./usr/src/kernel/arch/powerpc/kvm<br>
&gt; ./usr/src/kernel/arch/s390/kvm<br>
&gt; ./usr/src/kernel/arch/tile/kvm<br>
&gt; ./usr/src/kernel/arch/x86/kvm<br>
&gt; ./usr/src/kernel/drivers/s390/kvm<br>
&gt; ./usr/src/kernel/include/config/kvm<br>
&gt; ./usr/src/kernel/include/config/have/kvm<br>
&gt; ./usr/src/kernel/include/kvm<br>
&gt; ./usr/src/kernel/virt/kvm<br>
&gt; ./dev/kvm<br>
&gt; ./sys/devices/virtual/misc/kvm<br>
&gt; ./sys/class/misc/kvm<br>
&gt; ./sys/kernel/debug/kvm<br>
&gt; ./sys/module/kvm<br>
&gt;<br>
&gt; So it does look like kvm-related files were added to the Yocto kernel =
because of the changes I made to the kernel configuration file.=C2=A0 But t=
here is no kvm.ko (or any .ko file related to kvm) anywhere in the file sys=
tem.<br>
<br>
Is the image you are building installing the specific kernel modules<br>
you need, or the generic meta package &quot;kernel-modules&quot; ? Without<=
br>
something like that, you can build the support, but the modules won&#39;t<b=
r>
be present on the image.<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; Is there something I&#39;m doing wrong here?=C2=A0 Am I missing import=
ant lines in my kernel configuration file?=C2=A0 Let me know your thoughts.=
<br>
&gt;<br>
&gt; -Thanks!, Wayne Li<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
<br>
<br>
<br>
-- <br>
- Thou shalt not follow the NULL pointer, for chaos and madness await<br>
thee at its end<br>
- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
</blockquote></div>

--00000000000078a9820596b06f66--
