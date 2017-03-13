Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AF08E007EE; Mon, 13 Mar 2017 13:54:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 980 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Mar 2017 13:54:54 PDT
Received: from chameleon.ash.relay.mailchannels.net
	(chameleon.ash.relay.mailchannels.net [23.83.222.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9ADFEE00655
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 13:54:53 -0700 (PDT)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 85421120585
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 20:38:28 +0000 (UTC)
Received: from hp181.hostpapa.com (unknown [100.96.133.29])
	by relay.mailchannels.net (Postfix) with ESMTPA id D2367123CF3
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 20:38:27 +0000 (UTC)
X-Sender-Id: hostpapa|x-authuser|pbarker@toganlabs.com
Received: from hp181.hostpapa.com (hp181.hostpapa.com [172.20.55.158])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384)
	by 0.0.0.0:2500 (trex/5.7.32); Mon, 13 Mar 2017 20:38:28 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: hostpapa|x-authuser|pbarker@toganlabs.com
X-MailChannels-Auth-Id: hostpapa
X-Abaft-Army: 1551ea666994c6f4_1489437508143_1937444530
X-MC-Loop-Signature: 1489437508143:3998858139
X-MC-Ingress-Time: 1489437508143
Received: from cpc15-shep11-2-0-cust35.8-3.cable.virginm.net
	([86.24.150.36]:63283 helo=host0.betafive.co.uk)
	by hp181.hostpapa.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.87)
	(envelope-from <pbarker@toganlabs.com>) id 1cnWjb-000pN8-QM
	for yocto@yoctoproject.org; Mon, 13 Mar 2017 21:38:28 +0100
Date: Mon, 13 Mar 2017 20:38:23 +0000
From: Paul Barker <pbarker@toganlabs.com>
To: yocto@yoctoproject.org
Message-ID: <20170313201644.5f8c4a3e@host0.betafive.co.uk>
In-Reply-To: <20170312101845.30663-1-raj.khem@gmail.com>
References: <20170312101845.30663-1-raj.khem@gmail.com>
Organization: =?UTF-8?B?VG9nw6Fu?= Labs
X-Mailer: Claws Mail 3.14.1 (GTK+ 2.24.31; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=5.8
X-AuthUser: pbarker@toganlabs.com
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
X-List-Received-Date: Mon, 13 Mar 2017 20:54:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, 12 Mar 2017 03:18:45 -0700
Khem Raj <raj.khem@gmail.com> wrote:

> The following changes since commit c768a3d1aed8d16d08afe12fddb359914e0a20=
3a:
>=20
>   linux-raspberrypi_dev: Fix build on rpi3 64bit (2017-02-16 20:53:18 +01=
00)
>=20
> are available in the git repository at:
>=20
>   https://github.com/kraj/meta-raspberrypi kraj/pu
>=20
> for you to fetch changes up to 6c8ca9ccf1748f6a40e4f30f5df49e2501259cb0:
>=20
>   sdcard_image: fix sdcard image generation (2017-03-11 17:38:06 -0800)
>=20
> ----------------------------------------------------------------
> Andreas M=C3=BCller (1):
>       xserver-xf86-config: remove evdev configuration
>=20
> Janek Filus (1):
>       sdcard_image: fix sdcard image generation
>=20
> Khem Raj (7):
>       omxplayer: Update to latest and disable on rpi64
>       linux-firmware: Bring up wifi/ble interface on rpi3
>       firmware: Update to 20170303 release
>       linux-raspberrypi_4.9.bb: Update to 4.9.13
>       linux-raspberrypi: Default to 4.9 kernel
>       userland: Update to latest
>       userland: Do not provide libgl
>=20
> Maciej Borzecki (2):
>       wic: move sdimage-raspberrypi to toplevel wic location
>       rpi-base: wic: generate entries for device tree files
>=20
> Maxin B. John (1):
>       gstreamer1.0-omx: remove bbappend for version 1.2.0 and git
>=20
> Paul Barker (6):
>       linux-raspberrypi: Fix uImage build on 4.9.y and later
>       linux-raspberrypi_dev: Use AUTOREV
>       linux-raspberrypi_dev: Allow branch override
>       linux-raspberrypi_dev: Disable version sanity check
>       linux-raspberrypi_4.4: Update to 4.4.50
>       linux-raspberrypi_dev: Add back arm64 dtbo rules patch
>=20
>  classes/sdcard_image-rpi.bbclass                   |   4 +-
>  conf/machine/include/rpi-base.inc                  |  32 ++++-
>  conf/machine/include/rpi-default-versions.inc      |   2 +-
>  conf/machine/raspberrypi3-64.conf                  |   2 -
>  recipes-bsp/common/firmware.inc                    |   6 +-
>  ...-applications-to-set-next-resource-handle.patch |   6 +-
>  ...ayland-Add-support-for-the-Wayland-winsys.patch |  14 +--
>  .../0003-wayland-Add-Wayland-example.patch         |   6 +-
>  ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   6 +-
>  ...emove-faulty-assert-to-make-weston-happy-.patch |   6 +-
>  ...6-zero-out-wl-buffers-in-egl_surface_free.patch |   6 +-
>  ...007-initialize-front-back-wayland-buffers.patch |   6 +-
>  .../userland/userland/0008-Remove-RPC_FLUSH.patch  |   6 +-
>  .../userland/0009-fix-cmake-dependency-race.patch  |   8 +-
>  ...Fix-for-framerate-with-nested-composition.patch |   6 +-
>  .../0011-build-shared-library-for-vchostif.patch   |   8 +-
>  ...nt-buffer-wrapping-interface-for-dispmanx.patch |   6 +-
>  ...13-Implement-triple-buffering-for-wayland.patch |  11 +-
>  recipes-graphics/userland/userland_git.bb          |   4 +-
>  .../rpi/xorg.conf.d/10-evdev.conf                  |  40 ------
>  .../xorg-xserver/xserver-xf86-config_0.1.bbappend  |  22 ++--
>  .../linux-firmware/files/brcmfmac43430-sdio.txt    |  66 ++++++++++
>  .../linux-firmware/linux-firmware_%.bbappend       |  12 ++
>  ...-Add-rules-for-.dtbo-files-for-dts-overla.patch |   0
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |   5 +-
>  recipes-kernel/linux/linux-raspberrypi_4.9.bb      |  10 +-
>  recipes-kernel/linux/linux-raspberrypi_dev.bb      |  18 ++-
>  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
>  .../0001-config-files-path.patch                   | 137 ---------------=
------
>  .../0002-fix-decoder-flushing.patch                |  16 ---
>  .../0003-no-timeout-on-get-state.patch             |  16 ---
>  ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
>  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
>  ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
>  ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115 ---------------=
--
>  .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  14 ---
>  .../gstreamer/gstreamer1.0-omx_git.bbappend        |  13 --
>  ...nd-headers-from-ffmpeg-are-installed-in-u.patch |  27 ++--
>  ...PEG_EXTRA_CFLAGS-and-FFMPEG_EXTRA_LDFLAGS.patch |  24 ++--
>  recipes-multimedia/omxplayer/omxplayer_git.bb      |  13 +-
>  .../canned-wks =3D> wic}/sdimage-raspberrypi.wks     |   0
>  41 files changed, 235 insertions(+), 653 deletions(-)
>  delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi=
/xorg.conf.d/10-evdev.conf
>  create mode 100644 recipes-kernel/linux-firmware/files/brcmfmac43430-sdi=
o.txt
>  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_%.bbappe=
nd
>  rename recipes-kernel/linux/{linux-raspberrypi-4.9 =3D> linux-raspberryp=
i-dev}/0001-build-arm64-Add-rules-for-.dtbo-files-for-dts-overla.patch (100=
%)
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
001-config-files-path.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
002-fix-decoder-flushing.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
003-no-timeout-on-get-state.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
004-Properly-handle-drain-requests-while-flushing.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0=
007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.b=
bappend
>  delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bba=
ppend
>  rename {scripts/lib/image/canned-wks =3D> wic}/sdimage-raspberrypi.wks (=
100%)

I'm now using this set of changes and all looks good. +1 to this pull
request.

Let me know if the patches from me need sending to the list separately.
They didn't make it to the list as I was having email problems over the
weekend.

I'm going to queue up the 4.4.y and 4.9.y updates for morty this
week based on what's in this pull request.

(Re-sent to the list as the last one got eaten. Changing over email
addresses is a pain!)

Cheers,
Paul Barker

