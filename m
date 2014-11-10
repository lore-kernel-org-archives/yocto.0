Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70B37E00901; Sun,  9 Nov 2014 19:36:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickdademo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CD05E008D7
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 19:36:49 -0800 (PST)
Received: by mail-oi0-f52.google.com with SMTP id u20so4757806oif.39
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 19:36:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=tufbPsRWZ7asOrWFez5zgcjhMeVVlQtepaMip9zDB0c=;
	b=Mffl5uwTcl+N5+cGUACVZbD+gUU7PJydcYJNZgGJhKMfHFvmztVeIIA23CXPMqHGSa
	jASelQprS/AL75QWA3tXltvSA/+p8RGvgRu0lIOdxzXLGm8P7Xdb1r3eS8USqkX+8Rdl
	1NCwhMUzuJP5nbhqr8fqD4wg/hYEjrbFUUCUbjA3hr/J3LUfx3xmqE+VjQy4KXdkSGKk
	SsadFKKxs1GrWdxeCSLkMfyJVrx+J9uZOnmV6ziH79fpk2bFLE7MVnL2DevAGRzC15Vv
	0W0NjPer5kgzD4nIeZBDH0r/POL84lf4UC7/+sAeMw33Te178YhJLV4zVYgaj+RfXbMB
	FUqA==
X-Received: by 10.60.119.9 with SMTP id kq9mr24138294oeb.6.1415590608326; Sun,
	09 Nov 2014 19:36:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.167.163 with HTTP; Sun, 9 Nov 2014 19:36:28 -0800 (PST)
In-Reply-To: <54602A9F.1040907@gmail.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<54601032.8020203@gmail.com>
	<CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
	<546013FD.5080802@gmail.com>
	<CANR6C57voYqR9t-7P-=qUuudn6t7u=PFgGcWTy92xUUOy4H-Kw@mail.gmail.com>
	<5460169F.8090001@gmail.com>
	<CANR6C56k7M=kQV=sq8dXf3KK5zEXk_KPZ+TmrL5BqDoWV_hYMg@mail.gmail.com>
	<546018F8.2030201@gmail.com>
	<CANR6C55j8Q08JhyGx1nekPqPyuwGcau52tJe=8=r59ACjewrfA@mail.gmail.com>
	<54601BC4.1080409@gmail.com>
	<CANR6C54hAYqnvjrtg6_pNcTqAibrCKhaCFEOhkfr=6j2jLPjZg@mail.gmail.com>
	<54602A9F.1040907@gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Mon, 10 Nov 2014 14:36:28 +1100
Message-ID: <CANR6C57+VqbBTT1UwE-JNqdaqt4+tg2J9OPqs+u=i-z98NgsOQ@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Unable to find the ncurses libraries when running menuconfig
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
X-List-Received-Date: Mon, 10 Nov 2014 03:36:53 -0000
Content-Type: multipart/alternative; boundary=047d7b3a97da5b562e050778df8b

--047d7b3a97da5b562e050778df8b
Content-Type: text/plain; charset=UTF-8

Just tried with the latest 3.17.2 kernel. 'make menuconfig' works fine and
loads the interactive kernel config.


On Mon, Nov 10, 2014 at 2:01 PM, nick <xerofoify@gmail.com> wrote:

> Try downloading a stock kernel for kernel.org and extract it in your home
> directory and run make menuconfig in
> the root of the kernel source tree, if this works then I am assuming
> either ncurses or your machine conf is wrong
> somewhere.
> Cheers Nick
>
> On 14-11-09 09:51 PM, Nick D'Ademo wrote:
> > Hi Nick,
> >
> > I removed build/tmp/ and performed a rebuild - I'm still experiencing the
> > same error message unfortunately.
> >
> >
> > On Mon, Nov 10, 2014 at 12:58 PM, nick <xerofoify@gmail.com> wrote:
> >
> >> Seems to after reading and doing some research a build issue with
> multiple
> >> jobs or try running rm -r tmp in your
> >> build and then rebuild as it may be an issue with out of date temp
> files.
> >> Cheers Nick
> >>
> >> On 14-11-09 08:51 PM, Nick D'Ademo wrote:
> >>> Thanks for trying that out Nick.
> >>>
> >>> Issue is present on both 3.14 and 3.17 for me.
> >>> All paths in the require lines are correct too.
> >>>
> >>> Any other ideas?
> >>>
> >>>
> >>>
> >>> On Mon, Nov 10, 2014 at 12:46 PM, nick <xerofoify@gmail.com> wrote:
> >>>
> >>>> I tried bitbake linux-yocto -c menuconfig on my own system running the
> >>>> same distro and it seems to my
> >>>> default use kernel 3.14 not 3.17 otherwise this seems be fine from my
> >>>> understanding. Also check all the
> >>>> paths in your require lines as there may be an issue with your builds
> >> and
> >>>> the path set up by these files
> >>>> that you are linking to for your kernel build.
> >>>> Nick
> >>>> On 14-11-09 08:40 PM, Nick D'Ademo wrote:
> >>>>> Thanks Nick.
> >>>>>
> >>>>> Machine conf is as follows (it's actually nearly identical to
> nuc.conf
> >> -
> >>>>> however, BT support, multilib, and preferred providers have been
> >> added):
> >>>>>
> >>>>> #@TYPE: Machine
> >>>>> #@NAME: chiefriver
> >>>>>
> >>>>> #@WEBTITLE: Intel Next Unit of Computing (NUC) Model: DC3217IYE
> >>>>>
> >>>>> #@DESCRIPTION: Machine configuration for Intel NUC model DC3217IYE
> >>>>> # i.e. Ivy Bridge + Panther Point
> >>>>>
> >>>>> PREFERRED_VERSION_linux-yocto ?= "3.17%"
> >>>>> MACHINE_FEATURES += "va-impl-intel wifi efi bluetooth"
> >>>>> MACHINE_FEATURES += "intel-ucode"
> >>>>>
> >>>>> require conf/machine/include/meta-intel.inc
> >>>>> require conf/machine/include/intel-corei7-64-common.inc
> >>>>> require conf/machine/include/intel-common-pkgarch.inc
> >>>>> require multilib.conf
> >>>>>
> >>>>> MACHINE_HWCODECS ?= "va-intel gst-va-intel"
> >>>>>
> >>>>> XSERVER ?= "${XSERVER_X86_BASE} \
> >>>>>            ${XSERVER_X86_EXT} \
> >>>>>            ${XSERVER_X86_I965} \
> >>>>>            "
> >>>>>
> >>>>> MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2b-6 lms8"
> >>>>>
> >>>>> # disable the serial port configuration
> >>>>> SERIAL_CONSOLE = ""
> >>>>>
> >>>>> PREFERRED_PROVIDER_jpeg = "jpeg"
> >>>>> PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
> >>>>> PREFERRED_PROVIDER_virtual/fftw = "fftw"
> >>>>>
> >>>>>
> >>>>>
> >>>>> On Mon, Nov 10, 2014 at 12:36 PM, nick <xerofoify@gmail.com> wrote:
> >>>>>
> >>>>>> Hey Nick,
> >>>>>> This seems to then be an issue with incorrect paths or build
> >> information
> >>>>>> in your nuc.conf
> >>>>>> as the most likely culprit. If you can post your machine's conf
> file I
> >>>>>> will be glad to see
> >>>>>> if there are any issues I can spot.
> >>>>>> Nick
> >>>>>>
> >>>>>> On 14-11-09 08:33 PM, Nick D'Ademo wrote:
> >>>>>>> 1) source oe-init-build-env is run before building.
> >>>>>>> 2) We are actually using a custom machine .conf based on nuc.conf,
> so
> >>>>>>> actually: MACHINE = "custom_machine_name". I replaced it with "nuc"
> >> in
> >>>>>> this
> >>>>>>> post to avoid confusion.
> >>>>>>>
> >>>>>>> On Mon, Nov 10, 2014 at 12:25 PM, nick <xerofoify@gmail.com>
> wrote:
> >>>>>>>
> >>>>>>>> Do you run source oe-init-build-env before building and why is
> your
> >>>>>> machine
> >>>>>>>> set to nuc seems this may be an issue?
> >>>>>>>> Nick
> >>>>>>>>
> >>>>>>>> On 14-11-09 08:15 PM, Nick D'Ademo wrote:
> >>>>>>>>> Thanks for the quick reply Nick.
> >>>>>>>>>
> >>>>>>>>> Host system is Ubuntu 14.04. ncurses is already installed:
> >>>>>>>>>
> >>>>>>>>> sudo apt-get install libncurses5-dev
> >>>>>>>>> Reading package lists... Done
> >>>>>>>>> Building dependency tree
> >>>>>>>>> Reading state information... Done
> >>>>>>>>> libncurses5-dev is already the newest version.
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com>
> >> wrote:
> >>>>>>>>>
> >>>>>>>>>> Check to see if you actuality have it installed on your host
> >> system
> >>>>>> for
> >>>>>>>>>> your package manager.
> >>>>>>>>>> The library for ncurses for compiling the kernel is different
> >> based
> >>>> on
> >>>>>>>>>> your distro, check
> >>>>>>>>>> your distro's installer and install the correct ncurses package
> >>>> first.
> >>>>>>>> If
> >>>>>>>>>> this is still an
> >>>>>>>>>> issue please reply with a newer error message.
> >>>>>>>>>> Cheers Nick
> >>>>>>>>>>
> >>>>>>>>>> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
> >>>>>>>>>>> Getting a strange error when attempting to configure the Yocto
> >>>> Linux
> >>>>>>>>>> kernel
> >>>>>>>>>>> via: bitbake linux-yocto -c menuconfig.
> >>>>>>>>>>>
> >>>>>>>>>>> Does anyone have any ideas? (error message below)
> >>>>>>>>>>> Much appreciated.
> >>>>>>>>>>>
> >>>>>>>>>>> Build Configuration:
> >>>>>>>>>>> BB_VERSION        = "1.24.0"
> >>>>>>>>>>> BUILD_SYS         = "x86_64-linux"
> >>>>>>>>>>> NATIVELSBSTRING   = "Ubuntu-14.04"
> >>>>>>>>>>> TARGET_SYS        = "x86_64-poky-linux"
> >>>>>>>>>>> MACHINE           = "nuc"
> >>>>>>>>>>> DISTRO            = "poky"
> >>>>>>>>>>> DISTRO_VERSION    = "1.7"
> >>>>>>>>>>> TUNE_FEATURES     = "m64 corei7"
> >>>>>>>>>>> TARGET_FPU        = ""
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>> *make[1]: Entering directory
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>
> >>>>>>
> >>>>
> >>
> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
> >>>>>>>>>>> GEN     ./Makefile *** Unable to find the ncurses libraries or
> >> the
> >>>>>> ***
> >>>>>>>>>>> required header files. *** 'make menuconfig' requires the
> ncurses
> >>>>>>>>>>> libraries. ***  *** Install ncurses (ncurses-devel) and try
> >> again.
> >>>>>> ***
> >>>>>>>>>>> make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]:
> >> ***
> >>>>>>>>>>> [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: ***
> >>>>>>>> [__sub-make]
> >>>>>>>>>>> Error 2Command failed.Press any key to continue... *
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>>
> >>>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>
> >>>>>
> >>>>
> >>>
> >>
> >
>

--047d7b3a97da5b562e050778df8b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Just tried with the latest 3.17.2 kernel. &#39;make menuco=
nfig&#39; works fine and loads the interactive kernel config.<br><br><div><=
div class=3D"gmail_extra">
<br><div class=3D"gmail_quote">On Mon, Nov 10, 2014 at 2:01 PM, nick <span =
dir=3D"ltr">&lt;<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">xe=
rofoify@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">T=
ry downloading a stock kernel for <a href=3D"http://kernel.org" target=3D"_=
blank">kernel.org</a> and extract it in your home directory and run make me=
nuconfig in<br>
the root of the kernel source tree, if this works then I am assuming either=
 ncurses or your machine conf is wrong<br>
somewhere.<br>
Cheers Nick<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On 14-11-09 09:51 PM, Nick D&#39;Ademo wrote:<br>
&gt; Hi Nick,<br>
&gt;<br>
&gt; I removed build/tmp/ and performed a rebuild - I&#39;m still experienc=
ing the<br>
&gt; same error message unfortunately.<br>
&gt;<br>
&gt;<br>
&gt; On Mon, Nov 10, 2014 at 12:58 PM, nick &lt;<a href=3D"mailto:xerofoify=
@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Seems to after reading and doing some research a build issue with =
multiple<br>
&gt;&gt; jobs or try running rm -r tmp in your<br>
&gt;&gt; build and then rebuild as it may be an issue with out of date temp=
 files.<br>
&gt;&gt; Cheers Nick<br>
&gt;&gt;<br>
&gt;&gt; On 14-11-09 08:51 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt; Thanks for trying that out Nick.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Issue is present on both 3.14 and 3.17 for me.<br>
&gt;&gt;&gt; All paths in the require lines are correct too.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Any other ideas?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Nov 10, 2014 at 12:46 PM, nick &lt;<a href=3D"mailto:x=
erofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; I tried bitbake linux-yocto -c menuconfig on my own system=
 running the<br>
&gt;&gt;&gt;&gt; same distro and it seems to my<br>
&gt;&gt;&gt;&gt; default use kernel 3.14 not 3.17 otherwise this seems be f=
ine from my<br>
&gt;&gt;&gt;&gt; understanding. Also check all the<br>
&gt;&gt;&gt;&gt; paths in your require lines as there may be an issue with =
your builds<br>
&gt;&gt; and<br>
&gt;&gt;&gt;&gt; the path set up by these files<br>
&gt;&gt;&gt;&gt; that you are linking to for your kernel build.<br>
&gt;&gt;&gt;&gt; Nick<br>
&gt;&gt;&gt;&gt; On 14-11-09 08:40 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt; Thanks Nick.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Machine conf is as follows (it&#39;s actually nearly i=
dentical to nuc.conf<br>
&gt;&gt; -<br>
&gt;&gt;&gt;&gt;&gt; however, BT support, multilib, and preferred providers=
 have been<br>
&gt;&gt; added):<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; #@TYPE: Machine<br>
&gt;&gt;&gt;&gt;&gt; #@NAME: chiefriver<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; #@WEBTITLE: Intel Next Unit of Computing (NUC) Model: =
DC3217IYE<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; #@DESCRIPTION: Machine configuration for Intel NUC mod=
el DC3217IYE<br>
&gt;&gt;&gt;&gt;&gt; # i.e. Ivy Bridge + Panther Point<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; PREFERRED_VERSION_linux-yocto ?=3D &quot;3.17%&quot;<b=
r>
&gt;&gt;&gt;&gt;&gt; MACHINE_FEATURES +=3D &quot;va-impl-intel wifi efi blu=
etooth&quot;<br>
&gt;&gt;&gt;&gt;&gt; MACHINE_FEATURES +=3D &quot;intel-ucode&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; require conf/machine/include/meta-intel.inc<br>
&gt;&gt;&gt;&gt;&gt; require conf/machine/include/intel-corei7-64-common.in=
c<br>
&gt;&gt;&gt;&gt;&gt; require conf/machine/include/intel-common-pkgarch.inc<=
br>
&gt;&gt;&gt;&gt;&gt; require multilib.conf<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; MACHINE_HWCODECS ?=3D &quot;va-intel gst-va-intel&quot=
;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; XSERVER ?=3D &quot;${XSERVER_X86_BASE} \<br>
&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86=
_EXT} \<br>
&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ${XSERVER_X86=
_I965} \<br>
&gt;&gt;&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; MACHINE_EXTRA_RRECOMMENDS +=3D &quot;linux-firmware-iw=
lwifi-6000g2b-6 lms8&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; # disable the serial port configuration<br>
&gt;&gt;&gt;&gt;&gt; SERIAL_CONSOLE =3D &quot;&quot;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_jpeg =3D &quot;jpeg&quot;<br>
&gt;&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_jpeg-native =3D &quot;jpeg-native&q=
uot;<br>
&gt;&gt;&gt;&gt;&gt; PREFERRED_PROVIDER_virtual/fftw =3D &quot;fftw&quot;<b=
r>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 12:36 PM, nick &lt;<a href=3D"=
mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; Hey Nick,<br>
&gt;&gt;&gt;&gt;&gt;&gt; This seems to then be an issue with incorrect path=
s or build<br>
&gt;&gt; information<br>
&gt;&gt;&gt;&gt;&gt;&gt; in your nuc.conf<br>
&gt;&gt;&gt;&gt;&gt;&gt; as the most likely culprit. If you can post your m=
achine&#39;s conf file I<br>
&gt;&gt;&gt;&gt;&gt;&gt; will be glad to see<br>
&gt;&gt;&gt;&gt;&gt;&gt; if there are any issues I can spot.<br>
&gt;&gt;&gt;&gt;&gt;&gt; Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 08:33 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; 1) source oe-init-build-env is run before buil=
ding.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; 2) We are actually using a custom machine .con=
f based on nuc.conf, so<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; actually: MACHINE =3D &quot;custom_machine_nam=
e&quot;. I replaced it with &quot;nuc&quot;<br>
&gt;&gt; in<br>
&gt;&gt;&gt;&gt;&gt;&gt; this<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; post to avoid confusion.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 12:25 PM, nick &lt;<a =
href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Do you run source oe-init-build-env before=
 building and why is your<br>
&gt;&gt;&gt;&gt;&gt;&gt; machine<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; set to nuc seems this may be an issue?<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 08:15 PM, Nick D&#39;Ademo wro=
te:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Thanks for the quick reply Nick.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Host system is Ubuntu 14.04. ncurses i=
s already installed:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; sudo apt-get install libncurses5-dev<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Reading package lists... Done<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Building dependency tree<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Reading state information... Done<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; libncurses5-dev is already the newest =
version.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On Mon, Nov 10, 2014 at 12:09 PM, nick=
 &lt;<a href=3D"mailto:xerofoify@gmail.com">xerofoify@gmail.com</a>&gt;<br>
&gt;&gt; wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Check to see if you actuality have=
 it installed on your host<br>
&gt;&gt; system<br>
&gt;&gt;&gt;&gt;&gt;&gt; for<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; your package manager.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; The library for ncurses for compil=
ing the kernel is different<br>
&gt;&gt; based<br>
&gt;&gt;&gt;&gt; on<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; your distro, check<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; your distro&#39;s installer and in=
stall the correct ncurses package<br>
&gt;&gt;&gt;&gt; first.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; If<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; this is still an<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; issue please reply with a newer er=
ror message.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; On 14-11-09 08:05 PM, Nick D&#39;A=
demo wrote:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Getting a strange error when a=
ttempting to configure the Yocto<br>
&gt;&gt;&gt;&gt; Linux<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; kernel<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; via: bitbake linux-yocto -c me=
nuconfig.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Does anyone have any ideas? (e=
rror message below)<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Much appreciated.<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Build Configuration:<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =3D &quot;1.24.0&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=3D &quot;x86_64-linux&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; NATIVELSBSTRING=C2=A0 =C2=A0=
=3D &quot;Ubuntu-14.04&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =3D &quot;x86_64-poky-linux&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0=3D &quot;nuc&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =3D &quot;poky&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; DISTRO_VERSION=C2=A0 =C2=A0 =
=3D &quot;1.7&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=
=A0=3D &quot;m64 corei7&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =3D &quot;&quot;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; *make[1]: Entering directory<b=
r>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/=
linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-inte=
l-common-standard-build&#39;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; GEN=C2=A0 =C2=A0 =C2=A0./Makef=
ile *** Unable to find the ncurses libraries or<br>
&gt;&gt; the<br>
&gt;&gt;&gt;&gt;&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; required header files. *** &#3=
9;make menuconfig&#39; requires the ncurses<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; libraries. ***=C2=A0 *** Insta=
ll ncurses (ncurses-devel) and try<br>
&gt;&gt; again.<br>
&gt;&gt;&gt;&gt;&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; make[3]: *** [scripts/kconfig/=
dochecklxdialog] Error 1make[2]:<br>
&gt;&gt; ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [menuconfig] Error 2make[1]: *=
** [sub-make] Error 2make: ***<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; [__sub-make]<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; Error 2Command failed.Press an=
y key to continue... *<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div></div>

--047d7b3a97da5b562e050778df8b--
