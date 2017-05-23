Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F40FCE00812; Tue, 23 May 2017 05:13:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ticotimo[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.53 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f53.google.com (mail-it0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35FCCE00724;
	Tue, 23 May 2017 05:13:32 -0700 (PDT)
Received: by mail-it0-f53.google.com with SMTP id r63so18142376itc.1;
	Tue, 23 May 2017 05:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=FuphUcEaDtqQPEhS/T0Tq/lNLzZok+xQCLW4pS2nL1Y=;
	b=qx46CKUNgfr7ir0v1cALwMHiDOoj+i2sm7UgyhacoNWNOsBXZlBDawu0ZuV5O4EyD2
	RevcZqzEM8b9o75MVcXqZtLhD1MCJQ8D/KFeCtIfvzUvFVGikSrccmGutktWCSOhnF4d
	HgErZ+eb2FcYA6Y6xIGVfg17EpN7rfP70w7MnV5ufvjYndvT7FUpP31evbn/kS8bDT1b
	BW2L3DR7fINj/SfIkTsfvspwBQkhwqq6XS+I/LRnoVSlrN0BwI6XJ5ho6lgqtfjXoWFC
	2CtrztG6uJIJ8SaUnUxf6uIqrLxgA9hEEzdWgfaNcG/6qR60mUAkurjiaAYmIXEFkIRy
	qLPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=FuphUcEaDtqQPEhS/T0Tq/lNLzZok+xQCLW4pS2nL1Y=;
	b=NBEGJpdR/FNJXGTMa2jsQcj3Ijt4g43EEioSbkT0SmW8agF/ORlDkke/lAm2xJr7bA
	+BuIiM/nL6nUyAO5TI2f6bRV51ayHCsVDnJSizQc8E3NshcHH1YvYjwgpa4Iw9jp6c5U
	+uuIigNroCqtmBoMlHv+LfTTdjvN/aVeH4jSjIzEcey9ks9PdR/Ow/nbHdB27kEcSFSt
	FPLLIZy/WHOpJV1ahS1rKBvr9Q7k1LYR4QRlx7Uz73RBKtcGJf+Kd9/p94bab3jDFHwP
	KkDdGCyTvTZKAOCwpRgR+y3T+FxxOR1R9aoDazurvEikcf39cvTZF+VF+NfoVMxPULHN
	NyQA==
X-Gm-Message-State: AODbwcDEP2D3MMx5+xcRxUt2Wah61pmUuiHNtpN4QtFvbs87IsfOMnZh
	qsLichRQq12Ayyo21sHD6lh27z5DaQ==
X-Received: by 10.36.34.135 with SMTP id o129mr2526622ito.70.1495541612061;
	Tue, 23 May 2017 05:13:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAFL6qn7X7uTeF1xuMMOyoWbGWvmLXpCScHgq7Lq259Uej6xZoQ@mail.gmail.com>
	<CAKmqyKMsM_mZs-R9SkBogZhJaG+KTRVv_Y3DEdTn0sLvYo=rww@mail.gmail.com>
	<CAFL6qn6H5zJpKM9x2JvgJFu_qU4H-wk2szdgxucapE5RASNXpw@mail.gmail.com>
	<CAKmqyKNLi0p0aT5TcjA-oZ2UW8EuW8BMYH7Kn0y1Fr7YT3HHfw@mail.gmail.com>
	<CAFL6qn7wcvBSD-_9baYMajAdqry0fuUXqjO4HG_GWf_3zzDp2w@mail.gmail.com>
	<CAKmqyKOKqpdwc-HOc5azoxiXLKm4odd1myeTBA7YjzjNddELQQ@mail.gmail.com>
	<CAFL6qn5RSS7K+3k+cVWw-ww2fHQtGJReqobF2x-K+4JtZ8dtgQ@mail.gmail.com>
In-Reply-To: <CAFL6qn5RSS7K+3k+cVWw-ww2fHQtGJReqobF2x-K+4JtZ8dtgQ@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 23 May 2017 12:13:21 +0000
Message-ID: <CANx9H-CeaJaFY7+Wduyxoi77r5DWKOfo16RDva5U2i6ehtGnGg@mail.gmail.com>
To: Pello Heriz <pello.heriz@alumni.mondragon.edu>, 
	Alistair Francis <alistair23@gmail.com>, meta-xilinx@yoctoproject.org, 
	meta-virtualization@yoctoproject.org,
	meta-xilinx-request@yoctoproject.org, yocto@yoctoproject.org
Subject: Re: [meta-xilinx] Trying to build xen-guest-image-minimal
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
X-List-Received-Date: Tue, 23 May 2017 12:13:35 -0000
Content-Type: multipart/alternative; boundary="001a1144d1ba88d85505502fea51"

--001a1144d1ba88d85505502fea51
Content-Type: text/plain; charset="UTF-8"

Your poky is not at master, your oe-core is at an older version where the
smart package manager was used. It has been replaced with dnf. You are
missing this commit:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=d4efcded26706f50f8ca98d76df2b349ed1f1792

On Tue, May 23, 2017 at 2:39 AM Pello Heriz <
pello.heriz@alumni.mondragon.edu> wrote:

> Hi Alistair,
>
> I have checked that all the included layers belong to the same branch
> (master branch in this case). Anyway, the compiling error is still there.
> If you don't know what's happening, can you please put me on contact with
> someone that knows more about it?
>
> In the other hand, what do you mean by 'you can also try searching the
> error on the mailing list'?
>
> Thanks for your help,
> Best regards,
> Pello
>
> 2017-05-23 1:44 GMT+02:00 Alistair Francis <alistair23@gmail.com>:
>
>> On Thu, May 18, 2017 at 11:23 PM, Pello Heriz
>> <pello.heriz@alumni.mondragon.edu> wrote:
>> > Hi Alistair,
>> >
>> > how can I assure that all the cloned layers match the same version?
>> Which
>> > command do I need to use?
>>
>> You will manually need to check to make sure the releases all line up.
>> For example they should all be morty.
>>
>> You can also try searching the error on the mailing list, sometimes
>> there are already patches posted.
>>
>> Thanks,
>>
>> Alistair
>>
>> >
>> > Thanks,
>> > Pello
>>
>
>> >
>> > 2017-05-19 0:17 GMT+02:00 Alistair Francis <alistair23@gmail.com>:
>> >>
>> >> On Thu, May 18, 2017 at 12:48 AM, Pello Heriz
>> >> <pello.heriz@alumni.mondragon.edu> wrote:
>> >> > Hi Alistair,
>> >> >
>> >> > I have deleted the two lines that you have told me:
>> >> >
>> >> > -IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', '
>> >> > xf86-video-fbdev', '', d)}"
>> >> > -IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', '
>> >> > xf86-video-vesa', '', d)}"
>> >> >
>> >> > Anyway, now I'm getting another problem:
>> >> >
>> >> > generalelectric@mlan11214m117linux:/opt/yocto_GE/poky/master/build$
>> >> > bitbake
>> >> > xen-guest-image-minimal
>> >> > Loading cache: 100% |############################################|
>> Time:
>> >> > 0:00:00
>> >> > Loaded 2865 entries from dependency cache.
>> >> > Parsing recipes: 100% |##########################################|
>> Time:
>> >> > 0:00:01
>> >> > Parsing of 2097 .bb files complete (2079 cached, 18 parsed). 2881
>> >> > targets,
>> >> > 198 skipped, 0 masked, 0 errors.
>> >> > WARNING: No recipes available for:
>> >> >
>> >> >
>> >> >
>> /opt/yocto_GE/poky/master/meta-petalinux/recipes-devtools/python/python-smartpm_%.bbappend
>> >> > NOTE: Resolving any missing task queue dependencies
>> >> > ERROR: Nothing RPROVIDES 'nativesdk-smartpm' (but
>> >> > /opt/yocto_GE/poky/master/meta/recipes-core/meta/
>> buildtools-tarball.bb
>> >> > RDEPENDS on or otherwise requires it)
>> >> > NOTE: Runtime target 'nativesdk-smartpm' is unbuildable, removing...
>> >> > Missing or unbuildable dependency chain was: ['nativesdk-smartpm']
>> >> > ERROR: Required build target 'xen-guest-image-minimal' has no
>> buildable
>> >> > providers.
>> >> > Missing or unbuildable dependency chain was:
>> ['xen-guest-image-minimal',
>> >> > 'buildtools-tarball', 'nativesdk-smartpm']
>> >> >
>> >> > Summary: There was 1 WARNING message shown.
>> >> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
>> >> > code.
>> >> > generalelectric@mlan11214m117linux:/opt/yocto_GE/poky/master/build$
>> >> >
>> >> > Do you know how can I solve this issue?
>> >>
>> >> Strange, I haven't seen this before. Are you sure you have all the
>> >> layers that you need and that the versions match?
>> >>
>> >> Thanks,
>> >>
>> >> Alistair
>> >>
>> >> >
>> >> > Best regards,
>> >> > Pello
>> >> >
>> >> >
>> >> > 2017-05-17 17:16 GMT+02:00 Alistair Francis <alistair23@gmail.com>:
>> >> >>
>> >> >> On Wed, May 17, 2017 at 12:37 AM, Pello Heriz
>> >> >> <pello.heriz@alumni.mondragon.edu> wrote:
>> >> >> > Hi all,
>> >> >> >
>> >> >> > I'm trying to build a xen-guest-image-minimal, but I have the next
>> >> >> > error:
>> >> >> >
>> >> >> > generalelectric@mlan11214m117linux
>> :/opt/yocto_GE/poky/master/build$
>> >> >> > bitbake
>> >> >> > xen-guest-image-minimal
>> >> >> > Loading cache: 100% |############################################|
>> >> >> > Time:
>> >> >> > 0:00:01
>> >> >> > Loaded 2865 entries from dependency cache.
>> >> >> > Parsing recipes: 100% |##########################################|
>> >> >> > Time:
>> >> >> > 0:00:01
>> >> >> > Parsing of 2097 .bb files complete (2080 cached, 17 parsed). 2881
>> >> >> > targets,
>> >> >> > 198 skipped, 0 masked, 0 errors.
>> >> >> > WARNING: No recipes available for:
>> >> >> >
>> >> >> >
>> >> >> >
>> >> >> >
>> /opt/yocto_GE/poky/master/meta-petalinux/recipes-devtools/python/python-smartpm_%.bbappend
>> >> >> > NOTE: Resolving any missing task queue dependencies
>> >> >> > ERROR: Nothing RPROVIDES 'xf86-video-vesa' (but
>> >> >> >
>> >> >> >
>> >> >> >
>> /opt/yocto_GE/poky/master/meta-virtualization/recipes-extended/images/
>> xen-guest-image-minimal.bb
>> >> >> > RDEPENDS on or otherwise requires it)
>> >> >> > ERROR: xf86-video-vesa was skipped: incompatible with host
>> >> >> > aarch64-poky-linux (not in COMPATIBLE_HOST)
>> >> >> > NOTE: Runtime target 'xf86-video-vesa' is unbuildable, removing...
>> >> >> > Missing or unbuildable dependency chain was: ['xf86-video-vesa']
>> >> >> > ERROR: Required build target 'xen-guest-image-minimal' has no
>> >> >> > buildable
>> >> >> > providers.
>> >> >> > Missing or unbuildable dependency chain was:
>> >> >> > ['xen-guest-image-minimal',
>> >> >> > 'xf86-video-vesa']
>> >> >> >
>> >> >> > Summary: There was 1 WARNING message shown.
>> >> >> > Summary: There were 2 ERROR messages shown, returning a non-zero
>> exit
>> >> >> > code.
>> >> >> >
>> >> >> > As you can see next, this requiring file is in the meta directory
>> so
>> >> >> > I
>> >> >> > don't
>> >> >> > know why I'm getting the issue.
>> >> >> >
>> >> >> > generalelectric@mlan11214m117linux
>> :/opt/yocto_GE/poky/master/build$
>> >> >> > cd
>> >> >> > ../meta/recipes-graphics/xorg-driver/
>> >> >> >
>> >> >> >
>> >> >> > generalelectric@mlan11214m117linux
>> :/opt/yocto_GE/poky/master/meta/recipes-graphics/xorg-driver$
>> >> >> > ls
>> >> >> > xf86-input-evdev_2.10.5.bb     xf86-video-omap_0.4.5.bb
>> >> >> > xf86-input-keyboard_1.9.0.bb   xf86-video-omapfb
>> >> >> > xf86-input-libinput_0.24.0.bb  xf86-video-omapfb_git.bb
>> >> >> > xf86-input-mouse_1.9.2.bb      xf86-video-vesa_2.3.4.bb
>> >> >> > xf86-input-synaptics_1.9.0.bb  xf86-video-vmware
>> >> >> > xf86-input-vmmouse_13.1.0.bb   xf86-video-vmware_13.2.1.bb
>> >> >> > xf86-video-cirrus_1.5.3.bb     xorg-driver-common.inc
>> >> >> > xf86-video-fbdev_0.4.4.bb      xorg-driver-input.inc
>> >> >> > xf86-video-intel               xorg-driver-video.inc
>> >> >> > xf86-video-intel_git.bb
>> >> >> >
>> >> >> >
>> >> >> > generalelectric@mlan11214m117linux
>> :/opt/yocto_GE/poky/master/meta/recipes-graphics/xorg-driver$
>> >> >> >
>> >> >> > Can any body help me with this problem?
>> >> >>
>> >> >> It looks like this should fix your problem:
>> >> >>
>> >> >> diff --git a/recipes-extended/images/xen-guest-image-minimal.bb
>> >> >> b/recipes-extended/images/xen-guest-image-minimal.bb
>> >> >> index ab7e92c..0143867 100644
>> >> >> --- a/recipes-extended/images/xen-guest-image-minimal.bb
>> >> >> +++ b/recipes-extended/images/xen-guest-image-minimal.bb
>> >> >> @@ -7,9 +7,6 @@ IMAGE_INSTALL += " \
>> >> >>      ${@bb.utils.contains('MACHINE_FEATURES', 'acpi',
>> >> >> 'kernel-module-xen-acpi-processor', '', d)} \
>> >> >>      "
>> >> >>
>> >> >> -IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', '
>> >> >> xf86-video-fbdev', '', d)}"
>> >> >> -IMAGE_INSTALL += "${@bb.utils.contains('DISTRO_FEATURES', 'x11', '
>> >> >> xf86-video-vesa', '', d)}"
>> >> >> -
>> >> >>  LICENSE = "MIT"
>> >> >>
>> >> >>  # Send console messages to xen console
>> >> >>
>> >> >> It's a bug in meta-virtualisation, I just don't know how to fix it
>> >> >> without just deleting the code.
>> >> >>
>> >> >> Thanks,
>> >> >>
>> >> >> Alistair
>> >> >>
>> >> >> >
>> >> >> > Any answer will be welcome,
>> >> >> >
>> >> >> > Best regards,
>> >> >> > Pello
>> >> >> >
>> >> >> >
>> >> >> > --
>> >> >> > _______________________________________________
>> >> >> > meta-xilinx mailing list
>> >> >> > meta-xilinx@yoctoproject.org
>> >> >> > https://lists.yoctoproject.org/listinfo/meta-xilinx
>> >> >> >
>> >> >
>> >> >
>> >
>> >
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1144d1ba88d85505502fea51
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Your poky is not at master, your oe-core is at an older version where the s=
mart package manager was used. It has been replaced with dnf. You are missi=
ng this commit:<br><a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/pok=
y/commit/?id=3Dd4efcded26706f50f8ca98d76df2b349ed1f1792">http://git.yoctopr=
oject.org/cgit/cgit.cgi/poky/commit/?id=3Dd4efcded26706f50f8ca98d76df2b349e=
d1f1792</a><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Tue, May =
23, 2017 at 2:39 AM Pello Heriz &lt;<a href=3D"mailto:pello.heriz@alumni.mo=
ndragon.edu">pello.heriz@alumni.mondragon.edu</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><div><div>Hi Alis=
tair, <br><br></div>I have checked that all the included layers belong to t=
he same branch (master branch in this case). Anyway, the compiling error is=
 still there. If you don&#39;t know what&#39;s happening, can you please pu=
t me on contact with someone that knows more about it?<br><br></div>In the =
other hand, what do you mean by &#39;you can also try searching the error o=
n the mailing list&#39;? <br><br></div>Thanks for your help,<br></div>Best =
regards, <br></div>Pello<br></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">2017-05-23 1:44 GMT+02:00 Alistair Francis <span dir=3D"lt=
r">&lt;<a href=3D"mailto:alistair23@gmail.com" target=3D"_blank">alistair23=
@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Thu, May 18=
, 2017 at 11:23 PM, Pello Heriz<br>
&lt;<a href=3D"mailto:pello.heriz@alumni.mondragon.edu" target=3D"_blank">p=
ello.heriz@alumni.mondragon.edu</a>&gt; wrote:<br>
&gt; Hi Alistair,<br>
&gt;<br>
<span>&gt; how can I assure that all the cloned layers match the same versi=
on? Which<br>
&gt; command do I need to use?<br>
<br>
</span>You will manually need to check to make sure the releases all line u=
p.<br>
For example they should all be morty.<br>
<br>
You can also try searching the error on the mailing list, sometimes<br>
there are already patches posted.<br>
<br>
Thanks,<br>
<br>
Alistair<br>
<div class=3D"m_-2728590159943394085HOEnZb"><div class=3D"m_-27285901599433=
94085h5"><br>
&gt;<br>
&gt; Thanks,<br>
&gt; Pello</div></div></blockquote></div></div><div class=3D"gmail_extra"><=
div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div class=3D"m_-2=
728590159943394085HOEnZb"><div class=3D"m_-2728590159943394085h5"><br>
&gt;<br>
&gt; 2017-05-19 0:17 GMT+02:00 Alistair Francis &lt;<a href=3D"mailto:alist=
air23@gmail.com" target=3D"_blank">alistair23@gmail.com</a>&gt;:<br>
&gt;&gt;<br>
&gt;&gt; On Thu, May 18, 2017 at 12:48 AM, Pello Heriz<br>
&gt;&gt; &lt;<a href=3D"mailto:pello.heriz@alumni.mondragon.edu" target=3D"=
_blank">pello.heriz@alumni.mondragon.edu</a>&gt; wrote:<br>
&gt;&gt; &gt; Hi Alistair,<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I have deleted the two lines that you have told me:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; -IMAGE_INSTALL +=3D &quot;${@bb.utils.contains(&#39;DISTRO_FE=
ATURES&#39;, &#39;x11&#39;, &#39;<br>
&gt;&gt; &gt; xf86-video-fbdev&#39;, &#39;&#39;, d)}&quot;<br>
&gt;&gt; &gt; -IMAGE_INSTALL +=3D &quot;${@bb.utils.contains(&#39;DISTRO_FE=
ATURES&#39;, &#39;x11&#39;, &#39;<br>
&gt;&gt; &gt; xf86-video-vesa&#39;, &#39;&#39;, d)}&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Anyway, now I&#39;m getting another problem:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; generalelectric@mlan11214m117linux:/opt/yocto_GE/poky/master/=
build$<br>
&gt;&gt; &gt; bitbake<br>
&gt;&gt; &gt; xen-guest-image-minimal<br>
&gt;&gt; &gt; Loading cache: 100% |########################################=
####| Time:<br>
&gt;&gt; &gt; 0:00:00<br>
&gt;&gt; &gt; Loaded 2865 entries from dependency cache.<br>
&gt;&gt; &gt; Parsing recipes: 100% |######################################=
####| Time:<br>
&gt;&gt; &gt; 0:00:01<br>
&gt;&gt; &gt; Parsing of 2097 .bb files complete (2079 cached, 18 parsed). =
2881<br>
&gt;&gt; &gt; targets,<br>
&gt;&gt; &gt; 198 skipped, 0 masked, 0 errors.<br>
&gt;&gt; &gt; WARNING: No recipes available for:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; /opt/yocto_GE/poky/master/meta-petalinux/recipes-devtools/pyt=
hon/python-smartpm_%.bbappend<br>
&gt;&gt; &gt; NOTE: Resolving any missing task queue dependencies<br>
&gt;&gt; &gt; ERROR: Nothing RPROVIDES &#39;nativesdk-smartpm&#39; (but<br>
&gt;&gt; &gt; /opt/yocto_GE/poky/master/meta/recipes-core/meta/<a href=3D"h=
ttp://buildtools-tarball.bb" rel=3D"noreferrer" target=3D"_blank">buildtool=
s-tarball.bb</a><br>
&gt;&gt; &gt; RDEPENDS on or otherwise requires it)<br>
&gt;&gt; &gt; NOTE: Runtime target &#39;nativesdk-smartpm&#39; is unbuildab=
le, removing...<br>
&gt;&gt; &gt; Missing or unbuildable dependency chain was: [&#39;nativesdk-=
smartpm&#39;]<br>
&gt;&gt; &gt; ERROR: Required build target &#39;xen-guest-image-minimal&#39=
; has no buildable<br>
&gt;&gt; &gt; providers.<br>
&gt;&gt; &gt; Missing or unbuildable dependency chain was: [&#39;xen-guest-=
image-minimal&#39;,<br>
&gt;&gt; &gt; &#39;buildtools-tarball&#39;, &#39;nativesdk-smartpm&#39;]<br=
>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Summary: There was 1 WARNING message shown.<br>
&gt;&gt; &gt; Summary: There were 2 ERROR messages shown, returning a non-z=
ero exit<br>
&gt;&gt; &gt; code.<br>
&gt;&gt; &gt; generalelectric@mlan11214m117linux:/opt/yocto_GE/poky/master/=
build$<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Do you know how can I solve this issue?<br>
&gt;&gt;<br>
&gt;&gt; Strange, I haven&#39;t seen this before. Are you sure you have all=
 the<br>
&gt;&gt; layers that you need and that the versions match?<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; Alistair<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt; Pello<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; 2017-05-17 17:16 GMT+02:00 Alistair Francis &lt;<a href=3D"ma=
ilto:alistair23@gmail.com" target=3D"_blank">alistair23@gmail.com</a>&gt;:<=
br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, May 17, 2017 at 12:37 AM, Pello Heriz<br>
&gt;&gt; &gt;&gt; &lt;<a href=3D"mailto:pello.heriz@alumni.mondragon.edu" t=
arget=3D"_blank">pello.heriz@alumni.mondragon.edu</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; I&#39;m trying to build a xen-guest-image-minimal, b=
ut I have the next<br>
&gt;&gt; &gt;&gt; &gt; error:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; generalelectric@mlan11214m117linux:/opt/yocto_GE/pok=
y/master/build$<br>
&gt;&gt; &gt;&gt; &gt; bitbake<br>
&gt;&gt; &gt;&gt; &gt; xen-guest-image-minimal<br>
&gt;&gt; &gt;&gt; &gt; Loading cache: 100% |###############################=
#############|<br>
&gt;&gt; &gt;&gt; &gt; Time:<br>
&gt;&gt; &gt;&gt; &gt; 0:00:01<br>
&gt;&gt; &gt;&gt; &gt; Loaded 2865 entries from dependency cache.<br>
&gt;&gt; &gt;&gt; &gt; Parsing recipes: 100% |#############################=
#############|<br>
&gt;&gt; &gt;&gt; &gt; Time:<br>
&gt;&gt; &gt;&gt; &gt; 0:00:01<br>
&gt;&gt; &gt;&gt; &gt; Parsing of 2097 .bb files complete (2080 cached, 17 =
parsed). 2881<br>
&gt;&gt; &gt;&gt; &gt; targets,<br>
&gt;&gt; &gt;&gt; &gt; 198 skipped, 0 masked, 0 errors.<br>
&gt;&gt; &gt;&gt; &gt; WARNING: No recipes available for:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; /opt/yocto_GE/poky/master/meta-petalinux/recipes-dev=
tools/python/python-smartpm_%.bbappend<br>
&gt;&gt; &gt;&gt; &gt; NOTE: Resolving any missing task queue dependencies<=
br>
&gt;&gt; &gt;&gt; &gt; ERROR: Nothing RPROVIDES &#39;xf86-video-vesa&#39; (=
but<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; /opt/yocto_GE/poky/master/meta-virtualization/recipe=
s-extended/images/<a href=3D"http://xen-guest-image-minimal.bb" rel=3D"nore=
ferrer" target=3D"_blank">xen-guest-image-minimal.bb</a><br>
&gt;&gt; &gt;&gt; &gt; RDEPENDS on or otherwise requires it)<br>
&gt;&gt; &gt;&gt; &gt; ERROR: xf86-video-vesa was skipped: incompatible wit=
h host<br>
&gt;&gt; &gt;&gt; &gt; aarch64-poky-linux (not in COMPATIBLE_HOST)<br>
&gt;&gt; &gt;&gt; &gt; NOTE: Runtime target &#39;xf86-video-vesa&#39; is un=
buildable, removing...<br>
&gt;&gt; &gt;&gt; &gt; Missing or unbuildable dependency chain was: [&#39;x=
f86-video-vesa&#39;]<br>
&gt;&gt; &gt;&gt; &gt; ERROR: Required build target &#39;xen-guest-image-mi=
nimal&#39; has no<br>
&gt;&gt; &gt;&gt; &gt; buildable<br>
&gt;&gt; &gt;&gt; &gt; providers.<br>
&gt;&gt; &gt;&gt; &gt; Missing or unbuildable dependency chain was:<br>
&gt;&gt; &gt;&gt; &gt; [&#39;xen-guest-image-minimal&#39;,<br>
&gt;&gt; &gt;&gt; &gt; &#39;xf86-video-vesa&#39;]<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Summary: There was 1 WARNING message shown.<br>
&gt;&gt; &gt;&gt; &gt; Summary: There were 2 ERROR messages shown, returnin=
g a non-zero exit<br>
&gt;&gt; &gt;&gt; &gt; code.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; As you can see next, this requiring file is in the m=
eta directory so<br>
&gt;&gt; &gt;&gt; &gt; I<br>
&gt;&gt; &gt;&gt; &gt; don&#39;t<br>
&gt;&gt; &gt;&gt; &gt; know why I&#39;m getting the issue.<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; generalelectric@mlan11214m117linux:/opt/yocto_GE/pok=
y/master/build$<br>
&gt;&gt; &gt;&gt; &gt; cd<br>
&gt;&gt; &gt;&gt; &gt; ../meta/recipes-graphics/xorg-driver/<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; generalelectric@mlan11214m117linux:/opt/yocto_GE/pok=
y/master/meta/recipes-graphics/xorg-driver$<br>
&gt;&gt; &gt;&gt; &gt; ls<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-input-evdev_2.10.5.bb" rel=3D=
"noreferrer" target=3D"_blank">xf86-input-evdev_2.10.5.bb</a>=C2=A0 =C2=A0 =
=C2=A0<a href=3D"http://xf86-video-omap_0.4.5.bb" rel=3D"noreferrer" target=
=3D"_blank">xf86-video-omap_0.4.5.bb</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-input-keyboard_1.9.0.bb" rel=
=3D"noreferrer" target=3D"_blank">xf86-input-keyboard_1.9.0.bb</a>=C2=A0 =
=C2=A0xf86-video-omapfb<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-input-libinput_0.24.0.bb" rel=
=3D"noreferrer" target=3D"_blank">xf86-input-libinput_0.24.0.bb</a>=C2=A0 <=
a href=3D"http://xf86-video-omapfb_git.bb" rel=3D"noreferrer" target=3D"_bl=
ank">xf86-video-omapfb_git.bb</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-input-mouse_1.9.2.bb" rel=3D"=
noreferrer" target=3D"_blank">xf86-input-mouse_1.9.2.bb</a>=C2=A0 =C2=A0 =
=C2=A0 <a href=3D"http://xf86-video-vesa_2.3.4.bb" rel=3D"noreferrer" targe=
t=3D"_blank">xf86-video-vesa_2.3.4.bb</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-input-synaptics_1.9.0.bb" rel=
=3D"noreferrer" target=3D"_blank">xf86-input-synaptics_1.9.0.bb</a>=C2=A0 x=
f86-video-vmware<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-input-vmmouse_13.1.0.bb" rel=
=3D"noreferrer" target=3D"_blank">xf86-input-vmmouse_13.1.0.bb</a>=C2=A0 =
=C2=A0<a href=3D"http://xf86-video-vmware_13.2.1.bb" rel=3D"noreferrer" tar=
get=3D"_blank">xf86-video-vmware_13.2.1.bb</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-video-cirrus_1.5.3.bb" rel=3D=
"noreferrer" target=3D"_blank">xf86-video-cirrus_1.5.3.bb</a>=C2=A0 =C2=A0 =
=C2=A0xorg-driver-common.inc<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-video-fbdev_0.4.4.bb" rel=3D"=
noreferrer" target=3D"_blank">xf86-video-fbdev_0.4.4.bb</a>=C2=A0 =C2=A0 =
=C2=A0 xorg-driver-input.inc<br>
&gt;&gt; &gt;&gt; &gt; xf86-video-intel=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0xorg-driver-video.inc<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"http://xf86-video-intel_git.bb" rel=3D"no=
referrer" target=3D"_blank">xf86-video-intel_git.bb</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; generalelectric@mlan11214m117linux:/opt/yocto_GE/pok=
y/master/meta/recipes-graphics/xorg-driver$<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Can any body help me with this problem?<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; It looks like this should fix your problem:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; diff --git a/recipes-extended/images/<a href=3D"http://xe=
n-guest-image-minimal.bb" rel=3D"noreferrer" target=3D"_blank">xen-guest-im=
age-minimal.bb</a><br>
&gt;&gt; &gt;&gt; b/recipes-extended/images/<a href=3D"http://xen-guest-ima=
ge-minimal.bb" rel=3D"noreferrer" target=3D"_blank">xen-guest-image-minimal=
.bb</a><br>
&gt;&gt; &gt;&gt; index ab7e92c..0143867 100644<br>
&gt;&gt; &gt;&gt; --- a/recipes-extended/images/<a href=3D"http://xen-guest=
-image-minimal.bb" rel=3D"noreferrer" target=3D"_blank">xen-guest-image-min=
imal.bb</a><br>
&gt;&gt; &gt;&gt; +++ b/recipes-extended/images/<a href=3D"http://xen-guest=
-image-minimal.bb" rel=3D"noreferrer" target=3D"_blank">xen-guest-image-min=
imal.bb</a><br>
&gt;&gt; &gt;&gt; @@ -7,9 +7,6 @@ IMAGE_INSTALL +=3D &quot; \<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 ${@bb.utils.contains(&#39;MACHINE_FEA=
TURES&#39;, &#39;acpi&#39;,<br>
&gt;&gt; &gt;&gt; &#39;kernel-module-xen-acpi-processor&#39;, &#39;&#39;, d=
)} \<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 =C2=A0 &quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; -IMAGE_INSTALL +=3D &quot;${@bb.utils.contains(&#39;DISTR=
O_FEATURES&#39;, &#39;x11&#39;, &#39;<br>
&gt;&gt; &gt;&gt; xf86-video-fbdev&#39;, &#39;&#39;, d)}&quot;<br>
&gt;&gt; &gt;&gt; -IMAGE_INSTALL +=3D &quot;${@bb.utils.contains(&#39;DISTR=
O_FEATURES&#39;, &#39;x11&#39;, &#39;<br>
&gt;&gt; &gt;&gt; xf86-video-vesa&#39;, &#39;&#39;, d)}&quot;<br>
&gt;&gt; &gt;&gt; -<br>
&gt;&gt; &gt;&gt;=C2=A0 LICENSE =3D &quot;MIT&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 # Send console messages to xen console<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; It&#39;s a bug in meta-virtualisation, I just don&#39;t k=
now how to fix it<br>
&gt;&gt; &gt;&gt; without just deleting the code.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Thanks,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Alistair<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Any answer will be welcome,<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Best regards,<br>
&gt;&gt; &gt;&gt; &gt; Pello<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; --<br>
&gt;&gt; &gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt;&gt; &gt; meta-xilinx mailing list<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:meta-xilinx@yoctoproject.org" targ=
et=3D"_blank">meta-xilinx@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/m=
eta-xilinx" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/listinfo/meta-xilinx</a><br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--001a1144d1ba88d85505502fea51--
