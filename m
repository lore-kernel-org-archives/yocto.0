Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11821E00DC2; Wed, 31 Jan 2018 04:13:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAB1AE00D91
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 Jan 2018 04:13:23 -0800 (PST)
Received: by mail-wm0-f67.google.com with SMTP id v123so7539929wmd.5
	for <yocto@lists.yoctoproject.org>;
	Wed, 31 Jan 2018 04:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mMJeAU+F70/m2rOvQ/8Ehp5eUX6yXw8EURvedqjZ/u8=;
	b=EM4DM6eXeEkNQOwupEkTS44yM0l4gqnmegPTda5sphl3L045H1lAvECbVlGdZWZy0l
	H0TWvyGP7b7ZaCPZwqonaEmWptyp/otXhUYt708VeRDPDM6zYlq9kJwK7MHTzaSbpgT3
	mxztz5DmJAcuSvd6mc6XIBC0JaEAZULi9jdOxCxWwC2A3HEljcA1LDVtnbVe8fRh+1pv
	XOoUiPscHevBV2QOW3hgtwElpjbjbliBlAsbcNehIg3rZkPBqEmpmEqplx1wlM/09vkW
	Le8Snnb63R5AtX4CTdpcdtfZhZnsGLCbDiItFo0MftWgjaqtkzfkOammrTQy/EKpkfSn
	mYbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mMJeAU+F70/m2rOvQ/8Ehp5eUX6yXw8EURvedqjZ/u8=;
	b=pZhQzjzn+nKGFhCzDIsKZjHmQhhvDs6Vv4TOTDs1RTnH8Q/63qa/Er+rVRevF7vIo5
	xXizc8++PYdrwIkxfOSR4khzHCt+Bjwj7vNfCHIDb2Imch2S++5vMG6DhQAOwmGTZFm8
	76yGo6WWYlp9owd6E+oYNoCCuPwLCRbtm0dQ6wI8y4yQnYniVmYOSFiQWZn7UWAfkZ7w
	wbNb9Y5JKiDGnK2QjWNegP/tjYw2PI6Lo+/Hh2LaGPYd0RzXooWAr8LMnNcNeX9pAsmr
	k/0FrGM3XTV8SdzIW+O1dcpeHLeKuwWLLLj0UriyTyhEFTHOhhXzphDDYRhOc7SAJA9Z
	edPw==
X-Gm-Message-State: AKwxytdCtMTvuh6CUhAeoI5mWeJIM8hMHw2V6sr6Ql2Obbx0SR/vcE5O
	v7bu2QqlPJUO5whPXziSHwsstHjpfBUQqujA35s=
X-Google-Smtp-Source: AH8x225ZCDv+4zXX7GL6aDrKxgO2wBjIDgmaTLQZygfBMfpzszLiqicXH+Wp1Csf76+O+EdX0S7Xg8NvChNshRJkKNk=
X-Received: by 10.28.13.18 with SMTP id 18mr24910090wmn.112.1517400802730;
	Wed, 31 Jan 2018 04:13:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.74.211 with HTTP; Wed, 31 Jan 2018 04:13:22 -0800 (PST)
In-Reply-To: <CAC+thW34WEVbuEYWTxWQQUO_jqjdSGqv94ALFD9iARBc2j_cdg@mail.gmail.com>
References: <20180130133100.1288-1-Martin.Jansa@gmail.com>
	<CAC+thW0L-wC2hcD=mu1jK1V3BLy2=BKWmKwzoqJnOuHCVn8Etw@mail.gmail.com>
	<CAC+thW2mR1CX3c3ws1s9gMBME7rvrA3_bkoEAAQ6qBQayV9z7A@mail.gmail.com>
	<CAC+thW34WEVbuEYWTxWQQUO_jqjdSGqv94ALFD9iARBc2j_cdg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 31 Jan 2018 13:13:22 +0100
Message-ID: <CA+chaQcoarppf9iK7nSheRB2JN+4+vuKfk8+sjf7ABPYP=Y2_g@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] recipes: use oe.utils.conditional instead of deprecated base_conditional
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
X-List-Received-Date: Wed, 31 Jan 2018 12:13:25 -0000
Content-Type: multipart/alternative; boundary="001a11443614d42bda05641167e2"

--001a11443614d42bda05641167e2
Content-Type: text/plain; charset="UTF-8"

https://github.com/agherzan/meta-raspberrypi/pull/188

On Wed, Jan 31, 2018 at 8:23 AM, Andrea Galbusera <gizero@gmail.com> wrote:

> On Wed, Jan 31, 2018 at 8:19 AM, Andrea Galbusera <gizero@gmail.com>
> wrote:
> > On Wed, Jan 31, 2018 at 8:05 AM, Andrea Galbusera <gizero@gmail.com>
> wrote:
> >> Hi Martin,
> >>
> >> On Tue, Jan 30, 2018 at 2:31 PM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> >>> Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
> >>> ---
> >>>  recipes-kernel/linux/linux-raspberrypi.inc | 6 +++---
> >>>  1 file changed, 3 insertions(+), 3 deletions(-)
> >>>
> >>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc
> b/recipes-kernel/linux/linux-raspberrypi.inc
> >>> index df3a3d7..a1c4e52 100644
> >>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> >>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> >>> @@ -22,10 +22,10 @@ KBUILD_DEFCONFIG_raspberrypi3-64 ?=
> "bcmrpi3_defconfig"
> >>>  CMDLINE ?= "dwc_otg.lpm_enable=0 console=serial0,115200
> root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
> >>>
> >>>  # Add the kernel debugger over console kernel command line option if
> enabled
> >>> -CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1",
> "kgdboc=serial0,115200", "", d)}'
> >>> +CMDLINE_append = ' ${@oe.utils.conditional("ENABLE_KGDB", "1",
> "kgdboc=serial0,115200", "", d)}'
> >>>
> >>>  # Disable rpi logo on boot
> >>> -CMDLINE_append += ' ${@base_conditional("DISABLE_RPI_BOOT_LOGO",
> "1", "logo.nologo", "", d)}'
> >>> +CMDLINE_append += ' ${@oe.utils.conditional("DISABLE_RPI_BOOT_LOGO",
> "1", "logo.nologo", "", d)}'
> >>>
> >>>  # You can define CMDLINE_DEBUG as "debug" in your local.conf or
> distro.conf
> >>>  # to enable kernel debugging.
> >>> @@ -124,7 +124,7 @@ do_configure_prepend() {
> >>>          kernel_configure_variable ROOT_NFS y
> >>>          kernel_configure_variable CMDLINE "\"${CMDLINE_NFSROOT_USB}\""
> >>>      fi
> >>> -    if [ "${@base_conditional('INITRAMFS_IMAGE_BUNDLE', '1', 'True',
> 'False', d)}" ]; then
> >>> +    if [ "${@oe.utils.conditional('INITRAMFS_IMAGE_BUNDLE', '1',
> 'True', 'False', d)}" ]; then
> >>>          kernel_configure_variable BLK_DEV_INITRD y
> >>>          kernel_configure_variable INITRAMFS_SOURCE ""
> >>>          kernel_configure_variable RD_GZIP y
> >>> --
> >>> 2.15.1
> >>>
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >> Although it's trivial, this one doesn't look to apply neither to
> >> current master nor to any object in the index of meta-raspberrypi
> >> repo...
> >>
> >> $ git show df3a3d7
> >> fatal: ambiguous argument 'df3a3d7': unknown revision or path not in
> >> the working tree.
> >
> > Also consider that, according to [1] patches should be submitted as
> > pull request on github, being the mailing list only a
> >
> > [1] https://github.com/agherzan/meta-raspberrypi/blob/master/
> docs/contributing.md#patches-and-pull-requests
>
> Sorry! Hit "send" too early on my previous one... Well you know what I
> meant: "...being the mailing list only an additional place for
> discussion".
>

--001a11443614d42bda05641167e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://github.com/agherzan/meta-raspberrypi/pu=
ll/188">https://github.com/agherzan/meta-raspberrypi/pull/188</a><br></div>=
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Jan 31, 2=
018 at 8:23 AM, Andrea Galbusera <span dir=3D"ltr">&lt;<a href=3D"mailto:gi=
zero@gmail.com" target=3D"_blank">gizero@gmail.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On =
Wed, Jan 31, 2018 at 8:19 AM, Andrea Galbusera &lt;<a href=3D"mailto:gizero=
@gmail.com">gizero@gmail.com</a>&gt; wrote:<br>
&gt; On Wed, Jan 31, 2018 at 8:05 AM, Andrea Galbusera &lt;<a href=3D"mailt=
o:gizero@gmail.com">gizero@gmail.com</a>&gt; wrote:<br>
&gt;&gt; Hi Martin,<br>
&gt;&gt;<br>
&gt;&gt; On Tue, Jan 30, 2018 at 2:31 PM, Martin Jansa &lt;<a href=3D"mailt=
o:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;&gt;&gt; Signed-off-by: Martin Jansa &lt;<a href=3D"mailto:Martin.Jansa=
@gmail.com">Martin.Jansa@gmail.com</a>&gt;<br>
&gt;&gt;&gt; ---<br>
&gt;&gt;&gt;=C2=A0 recipes-kernel/linux/linux-<wbr>raspberrypi.inc | 6 +++-=
--<br>
&gt;&gt;&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; diff --git a/recipes-kernel/linux/linux-<wbr>raspberrypi.inc b=
/recipes-kernel/linux/linux-<wbr>raspberrypi.inc<br>
&gt;&gt;&gt; index df3a3d7..a1c4e52 100644<br>
&gt;&gt;&gt; --- a/recipes-kernel/linux/linux-<wbr>raspberrypi.inc<br>
&gt;&gt;&gt; +++ b/recipes-kernel/linux/linux-<wbr>raspberrypi.inc<br>
&gt;&gt;&gt; @@ -22,10 +22,10 @@ KBUILD_DEFCONFIG_raspberrypi3-<wbr>64 ?=3D=
 &quot;bcmrpi3_defconfig&quot;<br>
&gt;&gt;&gt;=C2=A0 CMDLINE ?=3D &quot;dwc_otg.lpm_enable=3D0 console=3Dseri=
al0,115200 root=3D/dev/mmcblk0p2 rootfstype=3Dext4 rootwait&quot;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 # Add the kernel debugger over console kernel command li=
ne option if enabled<br>
&gt;&gt;&gt; -CMDLINE_append =3D &#39; ${@base_conditional(&quot;ENABLE_<wb=
r>KGDB&quot;, &quot;1&quot;, &quot;kgdboc=3Dserial0,115200&quot;, &quot;&qu=
ot;, d)}&#39;<br>
&gt;&gt;&gt; +CMDLINE_append =3D &#39; ${@oe.utils.conditional(&quot;<wbr>E=
NABLE_KGDB&quot;, &quot;1&quot;, &quot;kgdboc=3Dserial0,115200&quot;, &quot=
;&quot;, d)}&#39;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 # Disable rpi logo on boot<br>
&gt;&gt;&gt; -CMDLINE_append +=3D &#39; ${@base_conditional(&quot;DISABLE_<=
wbr>RPI_BOOT_LOGO&quot;, &quot;1&quot;, &quot;logo.nologo&quot;, &quot;&quo=
t;, d)}&#39;<br>
&gt;&gt;&gt; +CMDLINE_append +=3D &#39; ${@oe.utils.conditional(&quot;<wbr>=
DISABLE_RPI_BOOT_LOGO&quot;, &quot;1&quot;, &quot;logo.nologo&quot;, &quot;=
&quot;, d)}&#39;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt;=C2=A0 # You can define CMDLINE_DEBUG as &quot;debug&quot; in y=
our local.conf or distro.conf<br>
&gt;&gt;&gt;=C2=A0 # to enable kernel debugging.<br>
&gt;&gt;&gt; @@ -124,7 +124,7 @@ do_configure_prepend() {<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable RO=
OT_NFS y<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable CM=
DLINE &quot;\&quot;${CMDLINE_NFSROOT_USB}\&quot;&quot;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 fi<br>
&gt;&gt;&gt; -=C2=A0 =C2=A0 if [ &quot;${@base_conditional(&#39;<wbr>INITRA=
MFS_IMAGE_BUNDLE&#39;, &#39;1&#39;, &#39;True&#39;, &#39;False&#39;, d)}&qu=
ot; ]; then<br>
&gt;&gt;&gt; +=C2=A0 =C2=A0 if [ &quot;${@oe.utils.conditional(&#39;<wbr>IN=
ITRAMFS_IMAGE_BUNDLE&#39;, &#39;1&#39;, &#39;True&#39;, &#39;False&#39;, d)=
}&quot; ]; then<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable BL=
K_DEV_INITRD y<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable IN=
ITRAMFS_SOURCE &quot;&quot;<br>
&gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 kernel_configure_variable RD=
_GZIP y<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; 2.15.1<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.o=
rg</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;&gt;<br>
&gt;&gt; Although it&#39;s trivial, this one doesn&#39;t look to apply neit=
her to<br>
&gt;&gt; current master nor to any object in the index of meta-raspberrypi<=
br>
&gt;&gt; repo...<br>
&gt;&gt;<br>
&gt;&gt; $ git show df3a3d7<br>
&gt;&gt; fatal: ambiguous argument &#39;df3a3d7&#39;: unknown revision or p=
ath not in<br>
&gt;&gt; the working tree.<br>
&gt;<br>
&gt; Also consider that, according to [1] patches should be submitted as<br=
>
&gt; pull request on github, being the mailing list only a<br>
&gt;<br>
&gt; [1] <a href=3D"https://github.com/agherzan/meta-raspberrypi/blob/maste=
r/docs/contributing.md#patches-and-pull-requests" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/agherzan/<wbr>meta-raspberrypi/blob/master/<=
wbr>docs/contributing.md#patches-<wbr>and-pull-requests</a><br>
<br>
</div></div>Sorry! Hit &quot;send&quot; too early on my previous one... Wel=
l you know what I<br>
meant: &quot;...being the mailing list only an additional place for<br>
discussion&quot;.<br>
</blockquote></div><br></div>

--001a11443614d42bda05641167e2--
