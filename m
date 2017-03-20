Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C48AE00901; Mon, 20 Mar 2017 10:30:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65334E007B5
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:30:02 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id u132so15847617wmg.1
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 10:30:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Jy84Ik3MJD7J+UWQoIjRAu/VgAOpK3fL8oF0NBGrJ+Y=;
	b=BdY9RhEvK6TjVIxu5mgwBKiSLdmId9nh5LIYgbi0knye0Al7U69ZyzVepHlIz3+blM
	RoyG8Yb9YvwNxAYdc9IsKByGbpCiQVCWfPhUU5upcgPTUzuAKAY+itpYSdWUO+NGy4mF
	2rBnbwysJaRmRwzbw+2p2wUG8YhONG0CyEhPbzT5OQ8mJCEOp5q/NkM9JRZ4SWt5LrBf
	eREUZM95Nqxwob+QZgKehEX1qQS+W8cauRaMF97VXbgAmJMqxPUTkDchGH7bsIFQncW/
	PZl1at9SBEyLe3mf1RXTIb7nhwVFWtus6twscEmqVJPOdl+/OHn0lJNF15A5JWoapU08
	cjwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Jy84Ik3MJD7J+UWQoIjRAu/VgAOpK3fL8oF0NBGrJ+Y=;
	b=m22fBy1bGJ5lX92c6ClVffxgFg9b5NxhbyD9Y5Hp6X0NvNtzgyv/cGn8vB6V16gTVd
	LuVEE/eIYpMwK8kQlPHkFoXJVNtE5WjSojG+b5b8bMlmzy1VevOe5s33teVk5L6SZVNU
	iKUM6rsKpFGHNFns8JIZ4lcsGHXHmcou6WD7VJARni/FkgJ41qso0vshmdtF6CJMn+lf
	18wDfGJNVWeAzZ6FsN0slOKYAXdtbld4zanmRyryPV9z3U7GIkuK2hXcAKpACWkUTLLr
	DAwQWXkgqKgNrNHwdJ1Ulml2/Ir5A2oi4+8MNYCX6qg4VTol26KAa7GhFDZEOjGeygyB
	Tbnw==
X-Gm-Message-State: AFeK/H2WZBRG+nogNxwkxjrNLveDAo6h+HMQ6oqP9QWRtvj4BVPSvJDCtMxxmdY6xqKo0Q==
X-Received: by 10.28.61.11 with SMTP id k11mr11845877wma.119.1490031001268;
	Mon, 20 Mar 2017 10:30:01 -0700 (PDT)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id m7sm2244442wmi.34.2017.03.20.10.30.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 20 Mar 2017 10:30:00 -0700 (PDT)
Date: Mon, 20 Mar 2017 17:29:58 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Paul Barker <pbarker@toganlabs.com>
Message-ID: <20170320172958.GI28563@carbonA>
References: <20170312101845.30663-1-raj.khem@gmail.com>
	<20170313201644.5f8c4a3e@host0.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20170313201644.5f8c4a3e@host0.betafive.co.uk>
User-Agent: Mutt/1.8.0 (2017-02-23)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Consolidated pull
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
X-List-Received-Date: Mon, 20 Mar 2017 17:30:05 -0000
X-Groupsio-MsgNum: 35125
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fDP66DSfTvWAYVew"
Content-Disposition: inline

--fDP66DSfTvWAYVew
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 13, 2017 at 08:38:23PM +0000, Paul Barker wrote:
> On Sun, 12 Mar 2017 03:18:45 -0700
> Khem Raj <raj.khem@gmail.com> wrote:
>
> > The following changes since commit c768a3d1aed8d16d08afe12fddb359914e0a=
203a:
> >
> >   linux-raspberrypi_dev: Fix build on rpi3 64bit (2017-02-16 20:53:18 +=
0100)
> >
> > are available in the git repository at:
> >
> >   https://github.com/kraj/meta-raspberrypi kraj/pu
> >
> > for you to fetch changes up to 6c8ca9ccf1748f6a40e4f30f5df49e2501259cb0:
> >
> >   sdcard_image: fix sdcard image generation (2017-03-11 17:38:06 -0800)
> >
> > ----------------------------------------------------------------
> > Andreas M=FCller (1):
> >       xserver-xf86-config: remove evdev configuration
> >
> > Janek Filus (1):
> >       sdcard_image: fix sdcard image generation
> >
> > Khem Raj (7):
> >       omxplayer: Update to latest and disable on rpi64
> >       linux-firmware: Bring up wifi/ble interface on rpi3
> >       firmware: Update to 20170303 release
> >       linux-raspberrypi_4.9.bb: Update to 4.9.13
> >       linux-raspberrypi: Default to 4.9 kernel
> >       userland: Update to latest
> >       userland: Do not provide libgl
> >
> > Maciej Borzecki (2):
> >       wic: move sdimage-raspberrypi to toplevel wic location
> >       rpi-base: wic: generate entries for device tree files
> >
> > Maxin B. John (1):
> >       gstreamer1.0-omx: remove bbappend for version 1.2.0 and git
> >
> > Paul Barker (6):
> >       linux-raspberrypi: Fix uImage build on 4.9.y and later
> >       linux-raspberrypi_dev: Use AUTOREV
> >       linux-raspberrypi_dev: Allow branch override
> >       linux-raspberrypi_dev: Disable version sanity check
> >       linux-raspberrypi_4.4: Update to 4.4.50
> >       linux-raspberrypi_dev: Add back arm64 dtbo rules patch
> >
> >  classes/sdcard_image-rpi.bbclass                   |   4 +-
> >  conf/machine/include/rpi-base.inc                  |  32 ++++-
> >  conf/machine/include/rpi-default-versions.inc      |   2 +-
> >  conf/machine/raspberrypi3-64.conf                  |   2 -
> >  recipes-bsp/common/firmware.inc                    |   6 +-
> >  ...-applications-to-set-next-resource-handle.patch |   6 +-
> >  ...ayland-Add-support-for-the-Wayland-winsys.patch |  14 +--
> >  .../0003-wayland-Add-Wayland-example.patch         |   6 +-
> >  ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   6 +-
> >  ...emove-faulty-assert-to-make-weston-happy-.patch |   6 +-
> >  ...6-zero-out-wl-buffers-in-egl_surface_free.patch |   6 +-
> >  ...007-initialize-front-back-wayland-buffers.patch |   6 +-
> >  .../userland/userland/0008-Remove-RPC_FLUSH.patch  |   6 +-
> >  .../userland/0009-fix-cmake-dependency-race.patch  |   8 +-
> >  ...Fix-for-framerate-with-nested-composition.patch |   6 +-
> >  .../0011-build-shared-library-for-vchostif.patch   |   8 +-
> >  ...nt-buffer-wrapping-interface-for-dispmanx.patch |   6 +-
> >  ...13-Implement-triple-buffering-for-wayland.patch |  11 +-
> >  recipes-graphics/userland/userland_git.bb          |   4 +-
> >  .../rpi/xorg.conf.d/10-evdev.conf                  |  40 ------
> >  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  22 ++--
> >  .../linux-firmware/files/brcmfmac43430-sdio.txt    |  66 ++++++++++
> >  .../linux-firmware/linux-firmware_%.bbappend       |  12 ++
> >  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch |   0
> >  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   5 +-
> >  recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  10 +-
> >  recipes-kernel/linux/linux-raspberrypi_dev.bb      |  18 ++-
> >  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
> >  .../0001-config-files-path.patch                   | 137 -------------=
--------
> >  .../0002-fix-decoder-flushing.patch                |  16 ---
> >  .../0003-no-timeout-on-get-state.patch             |  16 ---
> >  ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
> >  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
> >  ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
> >  ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115 -------------=
----
> >  .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  14 ---
> >  .../gstreamer/gstreamer1.0-omx_git.bbappend        |  13 --
> >  ...nd-headers-from-ffmpeg-are-installed-in-u.patch |  27 ++--
> >  ...PEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch |  24 ++--
> >  recipes-multimedia/omxplayer/omxplayer_git.bb      |  13 +-
> >  .../canned-wks =3D> wic}/sdimage-raspberrypi.wks     |   0
> >  41 files changed, 235 insertions(+), 653 deletions(-)
> >  delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/r=
pi/xorg.conf.d/10-evdev.conf
> >  create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac43430-s=
dio.txt
> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbap=
pend
> >  rename recipes-kernel/linux/{linux-raspberrypi-4.9 =3D> linux-raspberr=
ypi-dev}/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch (1=
00%)
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0001-config-files-path.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0002-fix-decoder-flushing.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0003-no-timeout-on-get-state.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0004-Properly-handle-drain-requests-while-flushing.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0=
/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0=
=2Ebbappend
> >  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.b=
bappend
> >  rename {scripts/lib/image/canned-wks =3D> wic}/sdimage-raspberrypi.wks=
 (100%)
>
> I'm now using this set of changes and all looks good. +1 to this pull
> request.
>
> Let me know if the patches from me need sending to the list separately.
> They didn't make it to the list as I was having email problems over the
> weekend.
>
> I'm going to queue up the 4.4.y and 4.9.y updates for morty this
> week based on what's in this pull request.
>
> (Re-sent to the list as the last one got eaten. Changing over email
> addresses is a pain!)
>
> Cheers,
> Paul Barker
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Doing some testing. Will come back with results.

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

--fDP66DSfTvWAYVew
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEE90oi/MnVCYFbB1m0Jrqo2vaxFPYFAljQEZYACgkQJrqo2vax
FPYYsRAAgzrbciSNjPsevNgbVwKpy57NZ9arW2KWfrlJWgIin+kuI7oprZg6xQwU
4yjM3EKMYSOCJLLtpV1CbozLjVkLFkneAQ5fDMGR3FN5izVvUpuHoB0bovQJllf3
u8wpEIJCGw57lTPs8c5Y7i7J27x6ixuLcHhDYu4X+nS0+zs+PJxcrhEE2P5ZeePp
W1gwU6gRfFQqfQ5N31VgOdrxfrUxCQSecPI6Hu2VD7SqOPFwHxdFRyNDGy1CC7Ah
44TpaXUL+tuhKLEdsThsvL+lABvlQESKrQt0fk4pgpsfPa2mx12JbNERMuNEyXHe
MbN2arYT9pi54K7uWz/FvU8nAh+lw0a87k9yNSOuftkQzUJda/xQq4+eqJs8q/b8
9a6N+SjJWSQTiGdMq5RF7yWkXbj9tt2PZflm4uBOJI0tbwL+jNqPxr0HXWujCeui
YOAjGQC6yzbwncKTAiyaJNvjCPRn/be0om2mv9GcqOmoeQw0l5zjWshb3qt/e/UQ
2OCAG+0DRnGwPVdu3sC/iIKYr77qqMcILN0ay4TkPjcNXucmnRVmKbh57uHoPYAN
EPO7egoJ4rMj9Ky9xnZXiwWdTRUzlV7CmYOGKsLttuN5/QifShnbqr/Jljx/ZngR
7qKs6Ql61n0ozUxMhSXhWlGLeBdv/cniYRRdB46QCoRc3kR8jZA=
=Arks
-----END PGP SIGNATURE-----

--fDP66DSfTvWAYVew--
