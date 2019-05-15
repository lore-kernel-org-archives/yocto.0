Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28134E00D6C; Tue, 14 May 2019 22:41:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18020E0049C
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 22:41:32 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id a10so1319139ljf.6
	for <yocto@yoctoproject.org>; Tue, 14 May 2019 22:41:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=DH9Um0o2+ETFD/rIP1JbZ8wLiKDALGPOyLrfwZ0BAjc=;
	b=eJsujSLGO5Yt+7qNQW9ntvIHNugOBljaXAJxC1qj+PToMchDhbAr745rUROazSGYxZ
	QpIhrsnrkNRqsXqdHQqaHbpjQh2p0IFNaKszqICoE0LXCPbEbk5Ll2JPUAJz92J2TY/C
	WJyUqzSyMsJbvmQQ8WGV+2st3WShe88PUsY0cVlMSWUXn1VUt7/6SaBVIeocQjR59Nn+
	q8fxAfW/AM9resuAxlRAm1lm0nKCe9PyArEhOKRg/FZYHr2JkHHIG1goxyRIwf/f+WtZ
	zWzNffhfmtIKiiHcV/2rh3KNjzzP7YqyTA5ZroTYc67L1v25Np/E/i+gs320MubpO1+f
	9TuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=DH9Um0o2+ETFD/rIP1JbZ8wLiKDALGPOyLrfwZ0BAjc=;
	b=pMgEDcGdNYZTijbrES/54V2n+kcE9czPilE6DjVWwdtZ/x/gQU3Q33vNfmlCGZBovY
	KG01hLspdTSftPg9mBLrK5tl8lPqDhN6OZpL2tBTo0ywFcNDmgDnEi1LcloqbhLlOUoG
	2gt498uldRUqMplKnctADRmsRo1RDodU6HucEvBEWtWBCcndP7a83XkV93rjwWVLArK3
	+vdDQthkZ/8bWsk9p8Yss9awdw/YkTQnBuSZuHmgKPTn4GVzywu0cB66bI7nhTZ/7qHD
	ep71DJG7sgaZyG/wUmYK5+YxieqmtT2LhlyvNMdDTDrzBspH+KyrQRatOxa0BbalXY7Y
	5h/A==
X-Gm-Message-State: APjAAAUsSIrLjouG3uKEliqU6WY6M6xK6WbI+6BLfkV2v6Prf28JRDsB
	sK4fdv2zPj8XKIexTGuF/awu5hbroc0yEEihHno=
X-Google-Smtp-Source: APXvYqyyCq1MtNnj2aC55Tjv75bX9rLpqPZXPEZlWZuZprRxbo0QARPPn4Vce/yE+/aa0tovRCF7b4wTOMJrxPk05cI=
X-Received: by 2002:a2e:321a:: with SMTP id y26mr20901794ljy.109.1557898891859;
	Tue, 14 May 2019 22:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
	<903d2bf0-2711-b734-d844-ef032fb67d58@2net.co.uk>
	<CAGAf8LyRa0AXf-097GAoJa=jUY3pK8fWxCaDXGReu+GqVJOi4A@mail.gmail.com>
In-Reply-To: <CAGAf8LyRa0AXf-097GAoJa=jUY3pK8fWxCaDXGReu+GqVJOi4A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 15 May 2019 01:41:21 -0400
Message-ID: <CADkTA4MQc=OYaTqTwoGv0mzLcQ3a6R911_UjCuCpRCootgtiwA@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Building Out-of-Tree Modules on the BBB Target
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
X-List-Received-Date: Wed, 15 May 2019 05:41:35 -0000
Content-Type: multipart/alternative; boundary="0000000000000b999c0588e69a29"

--0000000000000b999c0588e69a29
Content-Type: text/plain; charset="UTF-8"

On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Chris, Bruce,
>
> I have some additional data to share with you both, since I have tried
> something. And here is my take on the things!
>
> > 1. Build using a bb recipe.
> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.
> > You just need to add meta-skeleton to your bblayers.conf and then
> >  bitbake hello-mod
>
> I looked into this example, and, yes, it is classic kernel module
> definition out of the tree. With some outdated data, all cool, the
> YOCTO designer should take care himself to fix these data, if using
> this stuff.
>
> But this is NOT mandatory, since I can add out of the tree module NOT
> actually using built-in module. I just use .../tmp/deploy/images/bbb/*
> generated stuff, since I have automated scripts which are bringing all
> these on my BBB target. Then I tftp my source code module to the
> target.
>
> > 2. Build from the SDK:
> > First, add the kernel source to the SDK by adding this to conf/local.conf
> >  TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
>
> YES, this is THE command which should generate
> /usr/src/kernel(s)/`uname -r` or similar... But adding it to
> local.conf and after deleting kernel, then regenerating bitbake -k
> core-image-minimal does not bring this path into the rootfs image!?
>

That's correct. That command only adds the kernel source and build
infrastructure to the SDK, not to your target image. You'd still need to
arrange to have the kernel-devsrc package installed on the target image if
you want it on the board's rootfs. How you arrange to have the package
installed to the image varies with the image (since they all don't have the
same image install variables, etc).



>
> I did it actually using meta-bbb, and using poky referent distro as
> two additional layers to the more complex bbb image!
> https://github.com/jumpnow/meta-bbb.git
>
> The (KAS - you can figure out out of it local.conf) script I am using
> to build such a BBB image is here:
>
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-releases/bbb-warrior/kas-bbb-warrior.yml
>
> I did not try it with BBB reference poky only! Maybe I should try it
> as only referent poky? What do you think?
>
> Does in this case is SDK build really mandatory??? Should NOT be!
>
>
You only do the SDK steps if you want to support building out of tree
modules in an SDK install. So it is not mandatory for on target module
builds.

Bruce



> > Once the SDK is installed, generate the kernel headers:
> >  sudo -i
> >  . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
> >  cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
> >  cd /usr/src/kernel
> >  make oldconfig scripts
> >  exit
>
> This is in nutshell the same what I did (a bit different) for Embedded
> Debian. This is already on the target BBB, NOT while building YOCTO
> BBB image!
>
> > Finally, build your module using a Makefile like this
> >  obj-m := hello-mod.o
> >  all:
> >        make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)
>
> As said before: bringing my own module into the target BBB (I have my
> own examples, and I build them on the target with the almost the same
> Makefiles)
>
> Zoran
> _______
>
> On Sun, May 12, 2019 at 3:15 PM Chris Simmonds <chris@2net.co.uk> wrote:
> >
> > Hi Zoran,
> >
> > There are two ways to do this
> >
> > 1. Build using a bb recipe.
> > Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.
> > You just need to add meta-skeleton to your bblaysers.conf and then
> >   bitbake hello-mod
> >
> >
> > 2. Build from the SDK:
> > First, add the kernel source to the SDK by adding this to conf/local/conf
> >   TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc"
> >
> > Then build the SDK
> >   bitbake -c populate_sdk [your image recipe]
> >
> > Once the SDK is installed, generate the kernel headers:
> >   sudo -i
> >   . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-gnueabi
> >   cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi
> >   cd /usr/src/kernel
> >   make oldconfig scripts
> >   exit
> >
> > Finally, build your module using a Makefile like this
> >
> >   obj-m := hello-mod.o
> >   all:
> >         make -C $(SDKTARGETSYSROOT)/usr/src/kernel M=$(shell pwd)
> >
> >
> > HTH,
> > Chris
> >
> > On 12/05/2019 11:53, Zoran Stojsavljevic wrote:
> > > Hello to the YOCTO community,
> > >
> > > I am using (to build the target for Beagle Bone Black) the following
> script:
> > > https://github.com/ZoranStojsavljevic/bbb-yocto
> > >
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
> > >
> > > The latest kernel I am using from the following repo:
> > > https://github.com/jumpnow/meta-bbb
> > >
> > > Is kernel 5.0.14 .
> > >
> > > Here is the snippet of the boot traces:
> > > Starting kernel ...
> > >
> > > [    0.000000] Booting Linux on physical CPU 0x0
> > > [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gcc
> > > version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
> > > [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=10c5387d
> > > [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> > > instruction cache
> > > [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> > > [    0.000000] Memory policy: Data cache writeback
> > > [    0.000000] cma: Reserved 16 MiB at 0x9f000000
> > > [    0.000000] CPU: All CPU(s) started in SVC mode.
> > > [    0.000000] AM335X ES2.1 (sgx neon)
> > > [    0.000000] random: get_random_bytes called from
> > > start_kernel+0xa4/0x460 with crng_init=0
> > > [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 130048
> > > [    0.000000] Kernel command line: console=ttyO0,115200n8
> > > root=/dev/ram0 ip=dhcp
> > >
> > > According to the documentation, the following:
> > > 2.10.1. Building Out-of-Tree Modules on the Target
> > > https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
> > >
> > > I tried to find /usr/src/kernels/5.0.14... Directory, since I see
> > > from the build that kernel-dev and kernel-devsrc are included:
> > > [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
> > > core-image-kernel-dev                                 :1.0-r0
> > > kernel-devsrc                                         :1.0-r0
> > > kernel-selftest                                       :1.0-r0
> > >
> > > THE PROBLEM: But I could not find ob BBB target /usr/src/kernels
> > > directory at all!?
> > >
> > > Two questions here?
> > > [1] Do you have any advice on this problem (what I am missing here)?
> > > [2] Alternative to [1]: how I can use cross compiler from
> > > .../build/tmp to build Out-of-Tree Module for the BBB target on the
> > > host?
> > >
> > > Thank you,
> > > Zoran
> > > _______
> > >
> >
> >
> > --
> > Chris Simmonds, trainer and consultant at 2net
> > http://www.2net.co.uk
> > Author of "Mastering Embedded Linux Programming"
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000000b999c0588e69a29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, May 14, 2019 at 1:30 PM Zoran Stojsavljevic=
 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hello Chris, Bruce,<br>
<br>
I have some additional data to share with you both, since I have tried<br>
something. And here is my take on the things!<br>
<br>
&gt; 1. Build using a bb recipe.<br>
&gt; Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.<=
br>
&gt; You just need to add meta-skeleton to your bblayers.conf and then<br>
&gt;=C2=A0 bitbake hello-mod<br>
<br>
I looked into this example, and, yes, it is classic kernel module<br>
definition out of the tree. With some outdated data, all cool, the<br>
YOCTO designer should take care himself to fix these data, if using<br>
this stuff.<br>
<br>
But this is NOT mandatory, since I can add out of the tree module NOT<br>
actually using built-in module. I just use .../tmp/deploy/images/bbb/*<br>
generated stuff, since I have automated scripts which are bringing all<br>
these on my BBB target. Then I tftp my source code module to the<br>
target.<br>
<br>
&gt; 2. Build from the SDK:<br>
&gt; First, add the kernel source to the SDK by adding this to conf/local.c=
onf<br>
&gt;=C2=A0 TOOLCHAIN_TARGET_TASK_append =3D &quot; kernel-devsrc&quot;<br>
<br>
YES, this is THE command which should generate<br>
/usr/src/kernel(s)/`uname -r` or similar... But adding it to<br>
local.conf and after deleting kernel, then regenerating bitbake -k<br>
core-image-minimal does not bring this path into the rootfs image!?<br></bl=
ockquote><div><br></div><div><div class=3D"gmail_default" style=3D"font-siz=
e:small">That&#39;s correct. That command only adds the kernel source and b=
uild infrastructure to the SDK, not to your target image. You&#39;d still n=
eed to arrange to have the kernel-devsrc package installed on the target im=
age if you want it on the board&#39;s rootfs. How you arrange to have the p=
ackage installed to the image varies with the image (since they all don&#39=
;t have the same image install variables, etc).</div><br></div><div>=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
I did it actually using meta-bbb, and using poky referent distro as<br>
two additional layers to the more complex bbb image!<br>
<a href=3D"https://github.com/jumpnow/meta-bbb.git" rel=3D"noreferrer" targ=
et=3D"_blank">https://github.com/jumpnow/meta-bbb.git</a><br>
<br>
The (KAS - you can figure out out of it local.conf) script I am using<br>
to build such a BBB image is here:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-=
releases/bbb-warrior/kas-bbb-warrior.yml" rel=3D"noreferrer" target=3D"_bla=
nk">https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-release=
s/bbb-warrior/kas-bbb-warrior.yml</a><br>
<br>
I did not try it with BBB reference poky only! Maybe I should try it<br>
as only referent poky? What do you think?<br>
<br>
Does in this case is SDK build really mandatory??? Should NOT be!<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">You only do the SDK steps if you want to support building =
out of tree modules in an SDK install. So it is not mandatory for on target=
 module builds.</div><br></div><div><div class=3D"gmail_default" style=3D"f=
ont-size:small">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
&gt; Once the SDK is installed, generate the kernel headers:<br>
&gt;=C2=A0 sudo -i<br>
&gt;=C2=A0 . /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-linux-g=
nueabi<br>
&gt;=C2=A0 cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnueabi<b=
r>
&gt;=C2=A0 cd /usr/src/kernel<br>
&gt;=C2=A0 make oldconfig scripts<br>
&gt;=C2=A0 exit<br>
<br>
This is in nutshell the same what I did (a bit different) for Embedded<br>
Debian. This is already on the target BBB, NOT while building YOCTO<br>
BBB image!<br>
<br>
&gt; Finally, build your module using a Makefile like this<br>
&gt;=C2=A0 obj-m :=3D hello-mod.o<br>
&gt;=C2=A0 all:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 make -C $(SDKTARGETSYSROOT)/usr/src/kernel =
M=3D$(shell pwd)<br>
<br>
As said before: bringing my own module into the target BBB (I have my<br>
own examples, and I build them on the target with the almost the same<br>
Makefiles)<br>
<br>
Zoran<br>
_______<br>
<br>
On Sun, May 12, 2019 at 3:15 PM Chris Simmonds &lt;<a href=3D"mailto:chris@=
2net.co.uk" target=3D"_blank">chris@2net.co.uk</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Zoran,<br>
&gt;<br>
&gt; There are two ways to do this<br>
&gt;<br>
&gt; 1. Build using a bb recipe.<br>
&gt; Take a look at meta-skeleton/recipes-kernel/hello-mod for an example.<=
br>
&gt; You just need to add meta-skeleton to your bblaysers.conf and then<br>
&gt;=C2=A0 =C2=A0bitbake hello-mod<br>
&gt;<br>
&gt;<br>
&gt; 2. Build from the SDK:<br>
&gt; First, add the kernel source to the SDK by adding this to conf/local/c=
onf<br>
&gt;=C2=A0 =C2=A0TOOLCHAIN_TARGET_TASK_append =3D &quot; kernel-devsrc&quot=
;<br>
&gt;<br>
&gt; Then build the SDK<br>
&gt;=C2=A0 =C2=A0bitbake -c populate_sdk [your image recipe]<br>
&gt;<br>
&gt; Once the SDK is installed, generate the kernel headers:<br>
&gt;=C2=A0 =C2=A0sudo -i<br>
&gt;=C2=A0 =C2=A0. /opt/poky/2.6.2/environment-setup-cortexa8hf-neon-poky-l=
inux-gnueabi<br>
&gt;=C2=A0 =C2=A0cd /opt/poky/2.6.2/sysroots/cortexa8hf-neon-poky-linux-gnu=
eabi<br>
&gt;=C2=A0 =C2=A0cd /usr/src/kernel<br>
&gt;=C2=A0 =C2=A0make oldconfig scripts<br>
&gt;=C2=A0 =C2=A0exit<br>
&gt;<br>
&gt; Finally, build your module using a Makefile like this<br>
&gt;<br>
&gt;=C2=A0 =C2=A0obj-m :=3D hello-mod.o<br>
&gt;=C2=A0 =C2=A0all:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0make -C $(SDKTARGETSYSROOT)/usr/src/k=
ernel M=3D$(shell pwd)<br>
&gt;<br>
&gt;<br>
&gt; HTH,<br>
&gt; Chris<br>
&gt;<br>
&gt; On 12/05/2019 11:53, Zoran Stojsavljevic wrote:<br>
&gt; &gt; Hello to the YOCTO community,<br>
&gt; &gt;<br>
&gt; &gt; I am using (to build the target for Beagle Bone Black) the follow=
ing script:<br>
&gt; &gt; <a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/ZoranStojsavljevic/bbb=
-yocto</a><br>
&gt; &gt; <a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/m=
aster/bbb-yocto.sh" rel=3D"noreferrer" target=3D"_blank">https://github.com=
/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh</a><br>
&gt; &gt;<br>
&gt; &gt; The latest kernel I am using from the following repo:<br>
&gt; &gt; <a href=3D"https://github.com/jumpnow/meta-bbb" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/jumpnow/meta-bbb</a><br>
&gt; &gt;<br>
&gt; &gt; Is kernel 5.0.14 .<br>
&gt; &gt;<br>
&gt; &gt; Here is the snippet of the boot traces:<br>
&gt; &gt; Starting kernel ...<br>
&gt; &gt;<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Booting Linux on physical CPU 0x0<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Linux version 5.0.14-jumpnow (oe-user@oe=
-host) (gcc<br>
&gt; &gt; version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: ARMv7 Processor [413fc082] revision=
 2 (ARMv7), cr=3D10c5387d<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache,=
 VIPT aliasing<br>
&gt; &gt; instruction cache<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] OF: fdt: Machine model: TI AM335x Beagle=
Bone Black<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Memory policy: Data cache writeback<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] cma: Reserved 16 MiB at 0x9f000000<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] CPU: All CPU(s) started in SVC mode.<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] AM335X ES2.1 (sgx neon)<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] random: get_random_bytes called from<br>
&gt; &gt; start_kernel+0xa4/0x460 with crng_init=3D0<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=
=C2=A0 Total pages: 130048<br>
&gt; &gt; [=C2=A0 =C2=A0 0.000000] Kernel command line: console=3DttyO0,115=
200n8<br>
&gt; &gt; root=3D/dev/ram0 ip=3Ddhcp<br>
&gt; &gt;<br>
&gt; &gt; According to the documentation, the following:<br>
&gt; &gt; 2.10.1. Building Out-of-Tree Modules on the Target<br>
&gt; &gt; <a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/ke=
rnel-dev.html" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoprojec=
t.org/docs/latest/kernel-dev/kernel-dev.html</a><br>
&gt; &gt;<br>
&gt; &gt; I tried to find /usr/src/kernels/<a href=3D"http://5.0.14." rel=
=3D"noreferrer" target=3D"_blank">5.0.14.</a>.. Directory, since I see<br>
&gt; &gt; from the build that kernel-dev and kernel-devsrc are included:<br=
>
&gt; &gt; [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel<br>
&gt; &gt; core-image-kernel-dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0:1.0-r0<br>
&gt; &gt; kernel-devsrc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0:1.0-r0<br>
&gt; &gt; kernel-selftest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0:1.0-r0<br>
&gt; &gt;<br>
&gt; &gt; THE PROBLEM: But I could not find ob BBB target /usr/src/kernels<=
br>
&gt; &gt; directory at all!?<br>
&gt; &gt;<br>
&gt; &gt; Two questions here?<br>
&gt; &gt; [1] Do you have any advice on this problem (what I am missing her=
e)?<br>
&gt; &gt; [2] Alternative to [1]: how I can use cross compiler from<br>
&gt; &gt; .../build/tmp to build Out-of-Tree Module for the BBB target on t=
he<br>
&gt; &gt; host?<br>
&gt; &gt;<br>
&gt; &gt; Thank you,<br>
&gt; &gt; Zoran<br>
&gt; &gt; _______<br>
&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; Chris Simmonds, trainer and consultant at 2net<br>
&gt; <a href=3D"http://www.2net.co.uk" rel=3D"noreferrer" target=3D"_blank"=
>http://www.2net.co.uk</a><br>
&gt; Author of &quot;Mastering Embedded Linux Programming&quot;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--0000000000000b999c0588e69a29--
