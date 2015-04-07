Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48F0EE00830; Tue,  7 Apr 2015 08:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69D71E00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 08:27:52 -0700 (PDT)
Received: by qkgx75 with SMTP id x75so53545729qkg.1
	for <yocto@yoctoproject.org>; Tue, 07 Apr 2015 08:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=5sLj5YXXKdFzmPWqC/t/NIwE31OMJ+hBV1ESYOHAmgU=;
	b=D9d0fCINaL01Xqd97WiLBs1Nzhog8L1TXG7J0co6u4tdrlX8ElEy1N5xhMzwNyCgC7
	nCSb18l6TEbsEuWBAss424Z1SEjg8KHE47CouvVNMGm6Tmlgvblg/xblLlHDHp1k1UIb
	Br6v99ei0IDfINkBPy21K3M13+LY3LRuLVp5fnNN/kZkGrxgVRfhoB/KFa6bBnZzQUor
	11Fmz4QN12Ri4jVXupRdIk9g9/F0wRca9YWO0cg991kBS9IrQ4YiNhLs72ts3RyPweGM
	txzMHk90MxnYAzmlVhcYqcF63AlsUsHc4Wpso2f1HIyTgByR8S0EEVmNHgOadMN0wH2D
	1uVw==
X-Received: by 10.55.50.20 with SMTP id y20mr39524099qky.58.1428420472399;
	Tue, 07 Apr 2015 08:27:52 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.140.108.34 with HTTP; Tue, 7 Apr 2015 08:27:32 -0700 (PDT)
In-Reply-To: <5523EF34.1000604@mlbassoc.com>
References: <5523EF34.1000604@mlbassoc.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Tue, 7 Apr 2015 08:27:32 -0700
X-Google-Sender-Auth: fZorHUPK1i9Vacr39BF58CF7qF0
Message-ID: <CABcZANkkVq+WXx_+qBidBjTPtd4gdctUcrUkocXZK-vuY3paEQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Tue, 07 Apr 2015 15:27:56 -0000
Content-Type: multipart/alternative; boundary=001a11471392d8ecb20513240e98

--001a11471392d8ecb20513240e98
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 7, 2015 at 7:52 AM, Gary Thomas <gary@mlbassoc.com> wrote:

> I'm building for multiple ARM i.MX6 platforms.  These have
> the same SoC, but slightly different peripherals. As far as
> I can tell, they should be able to share everything except
> for a few ${MACHINE} specific packages, e.g. the kernel and
> u-boot.
>
> Sadly, that doesn't seem to be the case.  The architecture
> specific packages are being split into two categories - plain
> ARM/Cortex-A9 and those that have i.MX6 specific optimizations.
> For example, after building a complete image (on the order of
> core-image-sato), I have this split:
> $ ls tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/
> acl                  gst-player                 libsamplerate0
>  modutils-initscripts  shadow-sysroot
> alsa-utils           gst-plugins-bad            libsm
> mpeg2dec              shared-mime-info
> apmd                 gst-plugins-good           libsndfile1
> mplayer2              speex
> atk                  gst-plugins-ugly           libsoup-2.4
> mtdev                 sqlite3
> attr                 gstreamer                  libtheora
> ncurses               startup-notification
> base-passwd          gstreamer1.0               libtirpc
>  neon                  strace
>    ...
> gst-ffmpeg           libpostproc                matchbox-wm
> scrnsaverproto        zlib
> gst-fluendo-mpegmux  libproxy                   mkfontdir
> settings-daemon
> gst-meta-base        libpthread-stubs           mkfontscale
> shadow
>
> $ ls tmp/work/cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi/
> alsa-lib      gst-plugins-base           imx-gpu-viv  libfslparser
>  libsdl      xf86-video-imxfb-vivante
> cairo         gstreamer1.0-plugins-bad   libdrm       libfslvpuwrap  mesa
>       xserver-xorg
> firmware-imx  gstreamer1.0-plugins-base  libfslcodec  libglu
>  pulseaudio
>
> It's the second category that is causing problems.  They do not
> seem to end up in any shareable sstate at all.  If I try to rebuild
> using only sstate, i.e. build my complete image to success, then
> remove 'tmp' and rebuild, using the sstate-cache from the first go,
> all of the above packages (alsa-lib, ..., xserver-xorg) are all
> rebuilt from scratch.  Those recipes do seem to end in my sstate-cache,
> but they are never reused from it.
>
> What would make this happen?  How can I prevent it?
>
> As is, sstate is not really shareable between these i.MX6 targets
> as so much is being rebuilt all the time...
>

bitbake -S printdiff <target> (e.g. a specific recipe, your image,
whatever) will tell you why the sstate wasn't used, by finding the ones
that are in SSTATE_DIR which most closely match the current configuration,
and displaying a detailed delta between the two. You might need
https://gist.github.com/kergoth/3713d779c14dc8b98f36.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11471392d8ecb20513240e98
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Apr 7, 2015 at 7:52 AM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-le=
ft-style:solid;padding-left:1ex"><div id=3D":2b5" class=3D"" style=3D"overf=
low:hidden">I&#39;m building for multiple ARM i.MX6 platforms.=C2=A0 These =
have<br>
the same SoC, but slightly different peripherals. As far as<br>
I can tell, they should be able to share everything except<br>
for a few ${MACHINE} specific packages, e.g. the kernel and<br>
u-boot.<br>
<br>
Sadly, that doesn&#39;t seem to be the case.=C2=A0 The architecture<br>
specific packages are being split into two categories - plain<br>
ARM/Cortex-A9 and those that have i.MX6 specific optimizations.<br>
For example, after building a complete image (on the order of<br>
core-image-sato), I have this split:<br>
$ ls tmp/work/cortexa9hf-vfp-neon-<u></u>amltd-linux-gnueabi/<br>
acl=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gst-playe=
r=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libsamplerat=
e0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0modutils-initscripts=C2=A0 shadow-sysro=
ot<br>
alsa-utils=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gst-plugins-bad=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libsm=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mpeg2dec=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 shared-mime-info<br>
apmd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gst-plugi=
ns-good=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libsndfile1=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mplayer2=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 speex<br>
atk=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gst-plugi=
ns-ugly=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libsoup-2.4=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mtdev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0sqlite3<br>
attr=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gstreamer=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 libtheora=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ncurses=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0startup-notification<br>
base-passwd=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 gstreamer1.0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libtirpc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0neon=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 strace<br>
=C2=A0 =C2=A0...<br>
gst-ffmpeg=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0libpostproc=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 matchbox-wm=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 scrnsaverproto=C2=A0 =C2=A0 =C2=A0 =C2=A0 zlib<br>
gst-fluendo-mpegmux=C2=A0 libproxy=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0mkfontdir=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 settings-daemon<br>
gst-meta-base=C2=A0 =C2=A0 =C2=A0 =C2=A0 libpthread-stubs=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0mkfontscale=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 shadow<br>
<br>
$ ls tmp/work/cortexa9hf-vfp-neon-<u></u>mx6qdl-amltd-linux-gnueabi/<br>
alsa-lib=C2=A0 =C2=A0 =C2=A0 gst-plugins-base=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0imx-gpu-viv=C2=A0 libfslparser=C2=A0 =C2=A0libsdl=C2=A0 =C2=A0=
 =C2=A0 xf86-video-imxfb-vivante<br>
cairo=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gstreamer1.0-plugins-bad=C2=A0 =C2=
=A0libdrm=C2=A0 =C2=A0 =C2=A0 =C2=A0libfslvpuwrap=C2=A0 mesa=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 xserver-xorg<br>
firmware-imx=C2=A0 gstreamer1.0-plugins-base=C2=A0 libfslcodec=C2=A0 libglu=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pulseaudio<br>
<br>
It&#39;s the second category that is causing problems.=C2=A0 They do not<br=
>
seem to end up in any shareable sstate at all.=C2=A0 If I try to rebuild<br=
>
using only sstate, i.e. build my complete image to success, then<br>
remove &#39;tmp&#39; and rebuild, using the sstate-cache from the first go,=
<br>
all of the above packages (alsa-lib, ..., xserver-xorg) are all<br>
rebuilt from scratch.=C2=A0 Those recipes do seem to end in my sstate-cache=
,<br>
but they are never reused from it.<br>
<br>
What would make this happen?=C2=A0 How can I prevent it?<br>
<br>
As is, sstate is not really shareable between these i.MX6 targets<br>
as so much is being rebuilt all the time...</div></blockquote></div><br>bit=
bake -S printdiff &lt;target&gt; (e.g. a specific recipe, your image, whate=
ver) will tell you why the sstate wasn&#39;t used, by finding the ones that=
 are in SSTATE_DIR which most closely match the current configuration, and =
displaying a detailed delta between the two. You might need=C2=A0<a href=3D=
"https://gist.github.com/kergoth/3713d779c14dc8b98f36">https://gist.github.=
com/kergoth/3713d779c14dc8b98f36</a>.<br>-- <br><div class=3D"gmail_signatu=
re">Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBake, =
OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engineer,=
 Mentor Graphics</div>
</div></div>

--001a11471392d8ecb20513240e98--
