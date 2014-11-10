Return-Path: <nickdademo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04072E008D7; Sun,  9 Nov 2014 17:40:47 -0800 (PST)
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
	*      [209.85.214.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB189E007C2
	for <yocto@yoctoproject.org>; Sun,  9 Nov 2014 17:40:43 -0800 (PST)
Received: by mail-ob0-f171.google.com with SMTP id wp18so4976863obc.2
	for <yocto@yoctoproject.org>; Sun, 09 Nov 2014 17:40:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ojerc0+SQZA6l+N4x6MdfsXXES+1RlnAyK08xMRtVF0=;
	b=unsaxC+gox6r49Y/DJpIgOmcsz9TTGk4EiVb/FZSdjEUCZRDXS7llsrBREy4YmAXjr
	ZyoGXHo3Bf2UjI7s0rFRANcvasKGyxw92ei2621sBzyBbppmNq/8CigP76AtoFoMTDdZ
	fab8YJ6yYu31/RlHU4YcshYDRksZ6yYrgDfhAVcFI5uM2e5nHO87xzgd3Gs+P/7l6T+t
	Usvh4dVuqKJvWUWFuZ8p9A/CHbZbfKqaFEpIStCiLsZwY28NFcd2qVcZBQ4+Svj3zVgO
	utbfidvWAvaC7A5wHswR8a2xP3yHXs2tKRejUXwojQMd6jhqASh/cFViibRD78+uPBrv
	drEA==
X-Received: by 10.182.5.71 with SMTP id q7mr23991584obq.28.1415583642527; Sun,
	09 Nov 2014 17:40:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.167.163 with HTTP; Sun, 9 Nov 2014 17:40:22 -0800 (PST)
In-Reply-To: <5460169F.8090001@gmail.com>
References: <CANR6C54aazdi1bArSq-DdqMMJGcbQMuR2HsygV_8LDdTy3oUHg@mail.gmail.com>
	<54601032.8020203@gmail.com>
	<CANR6C57RL+fuZdXU7wUoQgN5XkFu9mcz=Ef-VQfEH-2coViLWA@mail.gmail.com>
	<546013FD.5080802@gmail.com>
	<CANR6C57voYqR9t-7P-=qUuudn6t7u=PFgGcWTy92xUUOy4H-Kw@mail.gmail.com>
	<5460169F.8090001@gmail.com>
From: "Nick D'Ademo" <nickdademo@gmail.com>
Date: Mon, 10 Nov 2014 12:40:22 +1100
Message-ID: <CANR6C56k7M=kQV=sq8dXf3KK5zEXk_KPZ+TmrL5BqDoWV_hYMg@mail.gmail.com>
To: nick <xerofoify@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Mon, 10 Nov 2014 01:40:47 -0000
Content-Type: multipart/alternative; boundary=001a1134acaa29ac99050777408c

--001a1134acaa29ac99050777408c
Content-Type: text/plain; charset=UTF-8

Thanks Nick.

Machine conf is as follows (it's actually nearly identical to nuc.conf -
however, BT support, multilib, and preferred providers have been added):

#@TYPE: Machine
#@NAME: chiefriver

#@WEBTITLE: Intel Next Unit of Computing (NUC) Model: DC3217IYE

#@DESCRIPTION: Machine configuration for Intel NUC model DC3217IYE
# i.e. Ivy Bridge + Panther Point

PREFERRED_VERSION_linux-yocto ?= "3.17%"
MACHINE_FEATURES += "va-impl-intel wifi efi bluetooth"
MACHINE_FEATURES += "intel-ucode"

require conf/machine/include/meta-intel.inc
require conf/machine/include/intel-corei7-64-common.inc
require conf/machine/include/intel-common-pkgarch.inc
require multilib.conf

MACHINE_HWCODECS ?= "va-intel gst-va-intel"

XSERVER ?= "${XSERVER_X86_BASE} \
           ${XSERVER_X86_EXT} \
           ${XSERVER_X86_I965} \
           "

MACHINE_EXTRA_RRECOMMENDS += "linux-firmware-iwlwifi-6000g2b-6 lms8"

# disable the serial port configuration
SERIAL_CONSOLE = ""

PREFERRED_PROVIDER_jpeg = "jpeg"
PREFERRED_PROVIDER_jpeg-native = "jpeg-native"
PREFERRED_PROVIDER_virtual/fftw = "fftw"



On Mon, Nov 10, 2014 at 12:36 PM, nick <xerofoify@gmail.com> wrote:

> Hey Nick,
> This seems to then be an issue with incorrect paths or build information
> in your nuc.conf
> as the most likely culprit. If you can post your machine's conf file I
> will be glad to see
> if there are any issues I can spot.
> Nick
>
> On 14-11-09 08:33 PM, Nick D'Ademo wrote:
> > 1) source oe-init-build-env is run before building.
> > 2) We are actually using a custom machine .conf based on nuc.conf, so
> > actually: MACHINE = "custom_machine_name". I replaced it with "nuc" in
> this
> > post to avoid confusion.
> >
> > On Mon, Nov 10, 2014 at 12:25 PM, nick <xerofoify@gmail.com> wrote:
> >
> >> Do you run source oe-init-build-env before building and why is your
> machine
> >> set to nuc seems this may be an issue?
> >> Nick
> >>
> >> On 14-11-09 08:15 PM, Nick D'Ademo wrote:
> >>> Thanks for the quick reply Nick.
> >>>
> >>> Host system is Ubuntu 14.04. ncurses is already installed:
> >>>
> >>> sudo apt-get install libncurses5-dev
> >>> Reading package lists... Done
> >>> Building dependency tree
> >>> Reading state information... Done
> >>> libncurses5-dev is already the newest version.
> >>>
> >>>
> >>> On Mon, Nov 10, 2014 at 12:09 PM, nick <xerofoify@gmail.com> wrote:
> >>>
> >>>> Check to see if you actuality have it installed on your host system
> for
> >>>> your package manager.
> >>>> The library for ncurses for compiling the kernel is different based on
> >>>> your distro, check
> >>>> your distro's installer and install the correct ncurses package first.
> >> If
> >>>> this is still an
> >>>> issue please reply with a newer error message.
> >>>> Cheers Nick
> >>>>
> >>>> On 14-11-09 08:05 PM, Nick D'Ademo wrote:
> >>>>> Getting a strange error when attempting to configure the Yocto Linux
> >>>> kernel
> >>>>> via: bitbake linux-yocto -c menuconfig.
> >>>>>
> >>>>> Does anyone have any ideas? (error message below)
> >>>>> Much appreciated.
> >>>>>
> >>>>> Build Configuration:
> >>>>> BB_VERSION        = "1.24.0"
> >>>>> BUILD_SYS         = "x86_64-linux"
> >>>>> NATIVELSBSTRING   = "Ubuntu-14.04"
> >>>>> TARGET_SYS        = "x86_64-poky-linux"
> >>>>> MACHINE           = "nuc"
> >>>>> DISTRO            = "poky"
> >>>>> DISTRO_VERSION    = "1.7"
> >>>>> TUNE_FEATURES     = "m64 corei7"
> >>>>> TARGET_FPU        = ""
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>>
> >>>>> *make[1]: Entering directory
> >>>>>
> >>>>
> >>
> `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-intel-common-standard-build'
> >>>>> GEN     ./Makefile *** Unable to find the ncurses libraries or the
> ***
> >>>>> required header files. *** 'make menuconfig' requires the ncurses
> >>>>> libraries. ***  *** Install ncurses (ncurses-devel) and try again.
> ***
> >>>>> make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1make[2]: ***
> >>>>> [menuconfig] Error 2make[1]: *** [sub-make] Error 2make: ***
> >> [__sub-make]
> >>>>> Error 2Command failed.Press any key to continue... *
> >>>>>
> >>>>>
> >>>>>
> >>>>
> >>>
> >>
> >
>

--001a1134acaa29ac99050777408c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks Nick.<br><br></div><div>Machine conf is as fol=
lows (it&#39;s actually nearly identical to nuc.conf - however, BT support,=
 multilib, and preferred providers have been added):<br><br><pre>#@TYPE: Ma=
chine
#@NAME: chiefriver

#@WEBTITLE: Intel Next Unit of Computing (NUC) Model: DC3217IYE

#@DESCRIPTION: Machine configuration for Intel NUC model DC3217IYE
# i.e. Ivy Bridge + Panther Point

PREFERRED_VERSION_linux-yocto ?=3D &quot;3.17%&quot;
MACHINE_FEATURES +=3D &quot;va-impl-intel wifi efi bluetooth&quot;
MACHINE_FEATURES +=3D &quot;intel-ucode&quot;

require conf/machine/include/meta-intel.inc
require conf/machine/include/intel-corei7-64-common.inc
require conf/machine/include/intel-common-pkgarch.inc
require multilib.conf

MACHINE_HWCODECS ?=3D &quot;va-intel gst-va-intel&quot;

XSERVER ?=3D &quot;${XSERVER_X86_BASE} \
           ${XSERVER_X86_EXT} \
           ${XSERVER_X86_I965} \
           &quot;

MACHINE_EXTRA_RRECOMMENDS +=3D &quot;linux-firmware-iwlwifi-6000g2b-6 lms8&=
quot;

# disable the serial port configuration
SERIAL_CONSOLE =3D &quot;&quot;

PREFERRED_PROVIDER_jpeg =3D &quot;jpeg&quot;
PREFERRED_PROVIDER_jpeg-native =3D &quot;jpeg-native&quot;
PREFERRED_PROVIDER_virtual/fftw =3D &quot;fftw&quot;
</pre><br></div><div class=3D"gmail_extra">
<br><div class=3D"gmail_quote">On Mon, Nov 10, 2014 at 12:36 PM, nick <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:xerofoify@gmail.com" target=3D"_blank">x=
erofoify@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hey Nick,<br>
This seems to then be an issue with incorrect paths or build information in=
 your nuc.conf<br>
as the most likely culprit. If you can post your machine&#39;s conf file I =
will be glad to see<br>
if there are any issues I can spot.<br>
<span class=3D""><font color=3D"#888888">Nick<br>
</font></span><div class=3D""><div class=3D"h5"><br>
On 14-11-09 08:33 PM, Nick D&#39;Ademo wrote:<br>
&gt; 1) source oe-init-build-env is run before building.<br>
&gt; 2) We are actually using a custom machine .conf based on nuc.conf, so<=
br>
&gt; actually: MACHINE =3D &quot;custom_machine_name&quot;. I replaced it w=
ith &quot;nuc&quot; in this<br>
&gt; post to avoid confusion.<br>
&gt;<br>
&gt; On Mon, Nov 10, 2014 at 12:25 PM, nick &lt;<a href=3D"mailto:xerofoify=
@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt;&gt; Do you run source oe-init-build-env before building and why is you=
r machine<br>
&gt;&gt; set to nuc seems this may be an issue?<br>
&gt;&gt; Nick<br>
&gt;&gt;<br>
&gt;&gt; On 14-11-09 08:15 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt; Thanks for the quick reply Nick.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Host system is Ubuntu 14.04. ncurses is already installed:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; sudo apt-get install libncurses5-dev<br>
&gt;&gt;&gt; Reading package lists... Done<br>
&gt;&gt;&gt; Building dependency tree<br>
&gt;&gt;&gt; Reading state information... Done<br>
&gt;&gt;&gt; libncurses5-dev is already the newest version.<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, Nov 10, 2014 at 12:09 PM, nick &lt;<a href=3D"mailto:x=
erofoify@gmail.com">xerofoify@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; Check to see if you actuality have it installed on your ho=
st system for<br>
&gt;&gt;&gt;&gt; your package manager.<br>
&gt;&gt;&gt;&gt; The library for ncurses for compiling the kernel is differ=
ent based on<br>
&gt;&gt;&gt;&gt; your distro, check<br>
&gt;&gt;&gt;&gt; your distro&#39;s installer and install the correct ncurse=
s package first.<br>
&gt;&gt; If<br>
&gt;&gt;&gt;&gt; this is still an<br>
&gt;&gt;&gt;&gt; issue please reply with a newer error message.<br>
&gt;&gt;&gt;&gt; Cheers Nick<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; On 14-11-09 08:05 PM, Nick D&#39;Ademo wrote:<br>
&gt;&gt;&gt;&gt;&gt; Getting a strange error when attempting to configure t=
he Yocto Linux<br>
&gt;&gt;&gt;&gt; kernel<br>
&gt;&gt;&gt;&gt;&gt; via: bitbake linux-yocto -c menuconfig.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Does anyone have any ideas? (error message below)<br>
&gt;&gt;&gt;&gt;&gt; Much appreciated.<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; Build Configuration:<br>
&gt;&gt;&gt;&gt;&gt; BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;1.24.0=
&quot;<br>
&gt;&gt;&gt;&gt;&gt; BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;x=
86_64-linux&quot;<br>
&gt;&gt;&gt;&gt;&gt; NATIVELSBSTRING=C2=A0 =C2=A0=3D &quot;Ubuntu-14.04&quo=
t;<br>
&gt;&gt;&gt;&gt;&gt; TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64=
-poky-linux&quot;<br>
&gt;&gt;&gt;&gt;&gt; MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &q=
uot;nuc&quot;<br>
&gt;&gt;&gt;&gt;&gt; DISTRO=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &q=
uot;poky&quot;<br>
&gt;&gt;&gt;&gt;&gt; DISTRO_VERSION=C2=A0 =C2=A0 =3D &quot;1.7&quot;<br>
&gt;&gt;&gt;&gt;&gt; TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0=3D &quot;m64 corei7&=
quot;<br>
&gt;&gt;&gt;&gt;&gt; TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&quot;=
<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt; *make[1]: Entering directory<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt; `/home/nick/poky/build/tmp/work/corei7-64-intel-common-poky-linux/=
linux-yocto/3.17.1+gitAUTOINC+b86dd5c6f4_0caf16d385-r0/linux-corei7-64-inte=
l-common-standard-build&#39;<br>
&gt;&gt;&gt;&gt;&gt; GEN=C2=A0 =C2=A0 =C2=A0./Makefile *** Unable to find t=
he ncurses libraries or the ***<br>
&gt;&gt;&gt;&gt;&gt; required header files. *** &#39;make menuconfig&#39; r=
equires the ncurses<br>
&gt;&gt;&gt;&gt;&gt; libraries. ***=C2=A0 *** Install ncurses (ncurses-deve=
l) and try again. ***<br>
&gt;&gt;&gt;&gt;&gt; make[3]: *** [scripts/kconfig/dochecklxdialog] Error 1=
make[2]: ***<br>
&gt;&gt;&gt;&gt;&gt; [menuconfig] Error 2make[1]: *** [sub-make] Error 2mak=
e: ***<br>
&gt;&gt; [__sub-make]<br>
&gt;&gt;&gt;&gt;&gt; Error 2Command failed.Press any key to continue... *<b=
r>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div></div>

--001a1134acaa29ac99050777408c--
