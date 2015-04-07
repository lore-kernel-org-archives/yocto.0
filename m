Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCBACE0083E; Tue,  7 Apr 2015 09:29:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9830BE00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 09:29:02 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B0541F811DA; Tue,  7 Apr 2015 10:29:01 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 09796F811DA;
	Tue,  7 Apr 2015 10:29:01 -0600 (MDT)
Message-ID: <552405DA.6080801@mlbassoc.com>
Date: Tue, 07 Apr 2015 10:29:14 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <5523EF34.1000604@mlbassoc.com> <20150407161935.GC22953@jama>
In-Reply-To: <20150407161935.GC22953@jama>
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
X-List-Received-Date: Tue, 07 Apr 2015 16:29:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-04-07 10:19, Martin Jansa wrote:
> On Tue, Apr 07, 2015 at 08:52:36AM -0600, Gary Thomas wrote:
>> I'm building for multiple ARM i.MX6 platforms.  These have
>> the same SoC, but slightly different peripherals. As far as
>> I can tell, they should be able to share everything except
>> for a few ${MACHINE} specific packages, e.g. the kernel and
>> u-boot.
>>
>> Sadly, that doesn't seem to be the case.  The architecture
>> specific packages are being split into two categories - plain
>> ARM/Cortex-A9 and those that have i.MX6 specific optimizations.
>> For example, after building a complete image (on the order of
>> core-image-sato), I have this split:
>> $ ls tmp/work/cortexa9hf-vfp-neon-amltd-linux-gnueabi/
>> acl                  gst-player                 libsamplerate0         modutils-initscripts  shadow-sysroot
>> alsa-utils           gst-plugins-bad            libsm                  mpeg2dec              shared-mime-info
>> apmd                 gst-plugins-good           libsndfile1            mplayer2              speex
>> atk                  gst-plugins-ugly           libsoup-2.4            mtdev                 sqlite3
>> attr                 gstreamer                  libtheora              ncurses               startup-notification
>> base-passwd          gstreamer1.0               libtirpc               neon                  strace
>>      ...
>> gst-ffmpeg           libpostproc                matchbox-wm            scrnsaverproto        zlib
>> gst-fluendo-mpegmux  libproxy                   mkfontdir              settings-daemon
>> gst-meta-base        libpthread-stubs           mkfontscale            shadow
>>
>> $ ls tmp/work/cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi/
>> alsa-lib      gst-plugins-base           imx-gpu-viv  libfslparser   libsdl      xf86-video-imxfb-vivante
>> cairo         gstreamer1.0-plugins-bad   libdrm       libfslvpuwrap  mesa        xserver-xorg
>> firmware-imx  gstreamer1.0-plugins-base  libfslcodec  libglu         pulseaudio
>>
>> It's the second category that is causing problems.  They do not
>> seem to end up in any shareable sstate at all.  If I try to rebuild
>> using only sstate, i.e. build my complete image to success, then
>> remove 'tmp' and rebuild, using the sstate-cache from the first go,
>> all of the above packages (alsa-lib, ..., xserver-xorg) are all
>> rebuilt from scratch.  Those recipes do seem to end in my sstate-cache,
>> but they are never reused from it.
>>
>> What would make this happen?  How can I prevent it?
>>
>> As is, sstate is not really shareable between these i.MX6 targets
>> as so much is being rebuilt all the time...
>>
>> Any ideas or pointers gladly welcomed.
>
> Try openembedded-core/scripts/sstate-diff-machines.sh
> to see why.
>

Can this work if I build for the two machines in separate trees?
Also, I'm really trying to find out why a build for the same machine
doesn't reuse sstate, in the same build tree, back-to-back builds
(no metadata changes)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

