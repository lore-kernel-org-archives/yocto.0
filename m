Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5CA4E0083E; Tue,  7 Apr 2015 08:52:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE38FE00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 08:51:55 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id BCC3EF811DA; Tue,  7 Apr 2015 09:51:54 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id CAC52F811D8;
	Tue,  7 Apr 2015 09:51:53 -0600 (MDT)
Message-ID: <5523FD27.3030905@mlbassoc.com>
Date: Tue, 07 Apr 2015 09:52:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Christopher Larson <clarson@kergoth.com>
References: <5523EF34.1000604@mlbassoc.com>
	<CABcZANkkVq+WXx_+qBidBjTPtd4gdctUcrUkocXZK-vuY3paEQ@mail.gmail.com>
In-Reply-To: <CABcZANkkVq+WXx_+qBidBjTPtd4gdctUcrUkocXZK-vuY3paEQ@mail.gmail.com>
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
X-List-Received-Date: Tue, 07 Apr 2015 15:52:00 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-07 09:27, Christopher Larson wrote:
>
> On Tue, Apr 7, 2015 at 7:52 AM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I'm building for multiple ARM i.MX6 platforms.  These have
>     the same SoC, but slightly different peripherals. As far as
>     I can tell, they should be able to share everything except
>     for a few ${MACHINE} specific packages, e.g. the kernel and
>     u-boot.
>
>     Sadly, that doesn't seem to be the case.  The architecture
>     specific packages are being split into two categories - plain
>     ARM/Cortex-A9 and those that have i.MX6 specific optimizations.
>     For example, after building a complete image (on the order of
>     core-image-sato), I have this split:
>     $ ls tmp/work/cortexa9hf-vfp-neon-__amltd-linux-gnueabi/
>     acl                  gst-player                 libsamplerate0         modutils-initscripts  shadow-sysroot
>     alsa-utils           gst-plugins-bad            libsm                  mpeg2dec              shared-mime-info
>     apmd                 gst-plugins-good           libsndfile1            mplayer2              speex
>     atk                  gst-plugins-ugly           libsoup-2.4            mtdev                 sqlite3
>     attr                 gstreamer                  libtheora              ncurses               startup-notification
>     base-passwd          gstreamer1.0               libtirpc               neon                  strace
>         ...
>     gst-ffmpeg           libpostproc                matchbox-wm            scrnsaverproto        zlib
>     gst-fluendo-mpegmux  libproxy                   mkfontdir              settings-daemon
>     gst-meta-base        libpthread-stubs           mkfontscale            shadow
>
>     $ ls tmp/work/cortexa9hf-vfp-neon-__mx6qdl-amltd-linux-gnueabi/
>     alsa-lib      gst-plugins-base           imx-gpu-viv  libfslparser   libsdl      xf86-video-imxfb-vivante
>     cairo         gstreamer1.0-plugins-bad   libdrm       libfslvpuwrap  mesa        xserver-xorg
>     firmware-imx  gstreamer1.0-plugins-base  libfslcodec  libglu         pulseaudio
>
>     It's the second category that is causing problems.  They do not
>     seem to end up in any shareable sstate at all.  If I try to rebuild
>     using only sstate, i.e. build my complete image to success, then
>     remove 'tmp' and rebuild, using the sstate-cache from the first go,
>     all of the above packages (alsa-lib, ..., xserver-xorg) are all
>     rebuilt from scratch.  Those recipes do seem to end in my sstate-cache,
>     but they are never reused from it.
>
>     What would make this happen?  How can I prevent it?
>
>     As is, sstate is not really shareable between these i.MX6 targets
>     as so much is being rebuilt all the time...
>
>
> bitbake -S printdiff <target> (e.g. a specific recipe, your image, whatever) will tell you why the sstate wasn't used, by finding the ones that are in SSTATE_DIR which most closely
> match the current configuration, and displaying a detailed delta between the two. You might need https://gist.github.com/kergoth/3713d779c14dc8b98f36.

Sorry, that didn't seem to do anything (I didn't apply your
patch since I'm not looking at any native or sdk packages).

Here's what I got:
   $ bitbake -S printdiffs xserver-xorg
   ...
   NOTE: Preparing RunQueue
   NOTE: Reparsing files to collect dependency data
   Writing locked sigs to /local/imx6_2015-03-26/locked-sigs.inc
   NOTE: Tasks Summary: Attempted 0 tasks of which 0 didn't need to be rerun and all succeeded.

No other output.

I can see [manually] that there are a number of cache entries, e.g.

$ find sstate-cache/ -name "*xserver-xorg*package.tgz"
sstate-cache/48/sstate:xserver-xorg:cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi:1.16.3:r0:cortexa9hf-vfp-neon-mx6qdl:3:487ec958840dd9ed48ff3da86e2dabdb_package.tgz
sstate-cache/4f/sstate:xserver-xorg:cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi:1.16.3:r0:cortexa9hf-vfp-neon-mx6qdl:3:4f7a493630c7f29762714430ea6be4d1_package.tgz
sstate-cache/80/sstate:xserver-xorg:cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi:1.16.3:r0:cortexa9hf-vfp-neon-mx6qdl:3:8041b9f7bda788038e011829939e2049_package.tgz
sstate-cache/2d/sstate:xserver-xorg:cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi:1.16.3:r0:cortexa9hf-vfp-neon-mx6qdl:3:2de173b1c4875889f124ce4560f42ed7_package.tgz
sstate-cache/b4/sstate:xserver-xorg:cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi:1.16.3:r0:cortexa9hf-vfp-neon-mx6qdl:3:b492f53c05ca6cbeb51b2e574dd60495_package.tgz

So I would think that something would be printed.  Do I need to do something
else to make this work, e.g. cleaning the target package, etc?

Note: I looked at the 'locked-sigs.inc' that was generated and I noticed
that there is no section for the recipes I'm interested in:
   $ grep ^SIG locked-sigs.inc
   SIGGEN_LOCKEDSIGS_t-imx6qsabresd = "\
   SIGGEN_LOCKEDSIGS_t-x86-64 = "\
   SIGGEN_LOCKEDSIGS_t-x86-64-arm = "\
   SIGGEN_LOCKEDSIGS_t-cortexa9hf-vfp-neon = "\
   SIGGEN_LOCKEDSIGS_TYPES_imx6qsabresd = "t-imx6qsabresd t-x86-64 t-x86-64-arm t-cortexa9hf-vfp-neon"

I would think there would need to be a "SIGGEN_LOCKEDSIGS_t-cortexa9hf-vfp-neon-mx6qdl" section?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

