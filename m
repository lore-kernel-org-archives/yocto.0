Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BD90E00D4E; Sun, 12 Nov 2017 01:59:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8B01E00D3A
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 01:59:34 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id l8so4219290wmg.4
	for <yocto@yoctoproject.org>; Sun, 12 Nov 2017 01:59:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=nAGYD2GAc+qz42Rsa8/G3nPFfQtf7EXguYmpsWsVQXA=;
	b=tGJHFVrOupPG9bOuqKrzohMnu0Qv3OGV2lm4axP7aGa+xClo5J2B5SzH//FlWKZwJe
	tvjB5nk7q/3T2mMbZ+2o2IiUgnbesZ3fgCE4jkc5CbtzW08Fmac/Fpj/EG5LbFfvn08O
	f2BjibMgr/9gjsBLQkqDx4/50mV9WT0wci1jMi4X5PZX/Zwp9mV4hQr/VEAvjjxUX5TY
	tFBmIhLk5/97lLm36o7obmvWmnjuajDIcXFQG8IO42HjyKEVdguuR2np4H5zdSe/qi1f
	YVq0vzfCmYpvIw/FxSfrTAXCDRRbBqyfQ07gyHy1KuYNDrd2X/ZIjiMb2+feTb8NoNlx
	w8Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=nAGYD2GAc+qz42Rsa8/G3nPFfQtf7EXguYmpsWsVQXA=;
	b=GwjiHCK0OVayhscpuEGW42kYy6hrQSXkWCMvNEahBfo/N6dQKHPDtNiHY0167tFUrn
	knv9+Rc6y37VwXjrXhvHptBpyddZE9M0buFf8z8HEA5du5AXa5u8aSveq9l6JKn1mU1v
	fdGF++gtH2JD/K4L0KCK64bQjMJE9QBHZO+3v+5t58MKMdc/PzM42C5yh0r4UbAGzemQ
	wsGRtfEuBqgrTHgcefYNe8Ne+FfNtpTQV2YdBssr7l+qvxMB324oms7QXUL5OGBzkYTg
	X44Sgi3eYLig5vuC/xH2g6obuhWyaoD5uUNRswngWUVfp57Go/4XNalbgpNtIyqbxiJ5
	jHnQ==
X-Gm-Message-State: AJaThX4ZQPskTqF06gYqLzMtPkqatU962ElWplqMKZgAeVgpa4ldhvbT
	PB11yphXGjzaNlynvZNdpWVYrjRHpRL3aA1PZ/PZ+A==
X-Google-Smtp-Source: AGs4zMaMh74lwHfKXIcrJuySIkGEiigDEy+6EaeuNpaLfymVqFUfiqltxTUU6+0+5WONhG0Fw1qMRshsk5rhpqXa3ZA=
X-Received: by 10.80.218.72 with SMTP id a8mr8201337edk.221.1510480772770;
	Sun, 12 Nov 2017 01:59:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Sun, 12 Nov 2017 01:59:32 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Sun, 12 Nov 2017 11:59:32 +0200
Message-ID: <CAJ2oMhKC0+nozu1p04mzPym1O4FNnJ0aoR2zxQvcsTL7sMt2dQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Can I force gstreamer into specific version with my image ?
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
X-List-Received-Date: Sun, 12 Nov 2017 09:59:37 -0000
Content-Type: text/plain; charset="UTF-8"

hELLO,

For some reason my image is installed with gstreamer 1.6, and I don't
understnad why the image (fsl-image-qt5) prefer 1.6.
Is there a way to force gsreamer specific version (1.8.2) ? I need
specific version 1.8.2, because of required package openvivoe, which
expects that version only:
https://github.com/Openwide-Ingenierie/meta-openvivoe/tree/master/recipes-multimedia/gstreamer


This is what I see in my source recipes:
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
user@user-VirtualBox:/media/yocto/build_yocto/build$ cd ../sources/
user@user-VirtualBox:/media/yocto/build_yocto/sources$ find . | grep gstre
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-ugly_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/imx-gst1.0-plugin
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/imx-gst1.0-plugin/0001-MMFMWK-7167-Fix-http-streaming-memory-leakage.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_%.bbappend
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-rtsp-server_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0/0004-gstbaseparse-Need-push-adapter-remainning-data-in-passthrough-mode.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0/0003-baseparse-unset-FLAG_DISCONT-when-push-to-adapter.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0/0001-handle-base-parse-error.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0/0002-Fix-crash-with-gst-inspect-Chris-Lord-chris-openedha.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/imx-gst1.0-plugin_4.0.9.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-libav
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-libav/0001-Disable-yasm-for-libav-when-disable-yasm.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-libav/workaround-to-build-gst-libav-for-i586-with-gcc.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-libav_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good/0003-Revert-pulsesink-uncork-if-needed-upon-commit.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good/0001-gstrtpmp4gpay-set-dafault-value-for-MPEG4-without-co.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good/0002-Fix-aacpase-error-tolerance-issue.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad.inc
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.6.%.bbappend
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0_%.bbappend
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.6.0.bb
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0023-glplugin-glupload-crash-in-glupload-with-a-gst-launc.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0019-glplugin-gl-wayland-fix-loop-test-hang-in-glimagesin.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0007-opencv-Add-video-stitching-support-based-on-Open-CV.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0021-glplugin-fix-gleffects-fisheye-shader-co.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0009-camerabin-Add-one-property-to-set-sink-element-for-v.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0020-glplugin-Fix-glimagesink-wayland-resize-showed-blurr.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0005-modifiy-the-videoparse-rank.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0018-glplugin-glwindow-fix-memory-leak-of-navigation-thre.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0013-glplugin-support-video-crop-for-glimagesink.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0001-intall-the-header-file-of-gstaggregator-and-gstvideo.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0008-Adding-some-fragment-shaders-for-glshader-plugin.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0002-mpegtsmux-Need-get-pid-when-create-streams.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0017-glplugin-Add-fps-print-in-glimagesink.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0016-Add-one-deinterlacing-fragment-shader-file.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0012-glplugin-Accelerate-gldownload-with-directviv-API.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0004-mpegvideoparse-Need-detect-picture-coding-type-when-.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0022-vidoeparse-Roll-back-h264parse-rank.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0014-glplugin-Support-fb-backend-for-gl-plugins.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0010-Fix-for-gl-plugin-not-built-in-wayland-backend.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0006-glfilter-Lost-frame-rate-info-when-fixate-caps.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0011-glplugin-Add-directviv-to-glimagesink-to-improve-playback-performance.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0003-mpeg4videoparse-Need-detect-picture-coding-type-when.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0015-glplugin-Change-wayland-default-res-to-1024x768.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0008-handle-audio-video-decoder-error.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0003-ssaparse-enhance-SSA-text-lines-parsing.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0005-encodebin-Need-more-buffers-in-output-queue-for-bett.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0002-gstplaysink-don-t-set-async-of-custom-text-sink-to-f.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0004-subparse-set-need_segment-after-sink-pad-received-GS.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0007-taglist-not-send-to-down-stream-if-all-the-frame-cor.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0012-MMFMWK-7030-Linux_MX6QP_ARD-IMXCameraApp-When-Enable.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0009-gstaudiobasesink-print-warning-istead-of-return-ERRO.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0006-ENGR00312515-get-caps-from-src-pad-when-query-caps.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0010-Disable-orc-optimization-for-lib-video-in-plugins-ba.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0011-convertframe-Support-video-crop-when-convert-frame.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0001-basetextoverlay-make-memory-copy-when-video-buffer-s.patch
./meta-fsl-bsp-release/imx/meta-bsp/recipes-multimedia/pulseaudio/pulseaudio/0001-Fix-pulseaudio-mutex-issue-when-do-pause-in-gstreame.patch
./meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/packagegroup-fsl-multimedia-gstreamer1.0-testapps.bb
./meta-fsl-bsp-release/imx/meta-sdk/recipes-fsl/packagegroup/packagegroup-fsl-multimedia-gstreamer1.0-core.bb
./meta-fsl-demos/recipes-fsl/packagegroups/packagegroup-fsl-gstreamer1.0-commercial.bb
./meta-fsl-demos/recipes-fsl/packagegroups/packagegroup-fsl-gstreamer1.0.bb
./meta-fsl-demos/recipes-fsl/packagegroups/packagegroup-fsl-gstreamer1.0-full.bb
./meta-fsl-demos/recipes-graphics/fsl-gpu-sdk/fsl-gpu-sdk/0001-update-gstreamer1.0-include-directory.patch
./poky/meta/recipes-multimedia/gstreamer
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-libav.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-omx-fixed-type-error-in-printf-call.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0/inputselector-sticky-events-haven-t-send-out-when-ac-1-4-1.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0/0001-gstinfo-Shorten-__FILE__-on-all-platforms.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0/0001-Fix-crash-with-gst-inspect.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0/0003-basesink-Shouldn-t-drop-buffer-when-sync-false.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0/0002-basesink-Fix-QoS-lateness-checking-if-subclass-imple.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_git.bb
./poky/meta/recipes-multimedia/gstreamer/gst-player
./poky/meta/recipes-multimedia/gstreamer/gst-player/filechooser.patch
./poky/meta/recipes-multimedia/gstreamer/gst-player/gst-player.desktop
./poky/meta/recipes-multimedia/gstreamer/gst-player/Add-error-signal-emission-for-missing-plugins.patch
./poky/meta/recipes-multimedia/gstreamer/gst-player/gtk2.patch
./poky/meta/recipes-multimedia/gstreamer/gst-player/Fix-pause-play.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-libav
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-libav/0001-Disable-yasm-for-libav-when-disable-yasm.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-libav/workaround-to-build-gst-libav-for-i586-with-gcc.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-meta-base.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.4.5.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-rtsp-server.inc
./poky/meta/recipes-multimedia/gstreamer/gst-player_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good/decrease_asteriskh263_rank.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good/0001-gstrtpmp4gpay-set-dafault-value-for-MPEG4-without-co.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-ugly_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-ugly.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-ugly_1.4.5.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0_1.4.5.bb
./poky/meta/recipes-multimedia/gstreamer/gst-plugins-package.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_1.4.5.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-rtsp-server_1.4.5.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0001-glimagesink-Downrank-to-marginal.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/configure-allow-to-disable-libssh2.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0001-gl-do-not-check-for-GL-GLU-EGL-GLES2-libs-if-disable.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-libav_1.4.5.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0003-ssaparse-enhance-SSA-text-lines-parsing.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/fix-id3demux-utf16-to-utf8-issue.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/do-not-change-eos-event-to-gap-event2.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/get-caps-from-src-pad-when-query-caps.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0002-gstplaysink-don-t-set-async-of-custom-text-sink-to-f.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0004-subparse-set-need_segment-after-sink-pad-received-GS.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/taglist-not-send-to-down-stream-if-all-the-frame-cor.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0001-video-frame-Don-t-ref-buffers-twice-when-mapping.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0003-videofilter-Use-new-GST_VIDEO_FRAME_MAP_FLAG_NO_REF.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/videoencoder-Keep-sticky-events-around-when-doing-a-soft-.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/handle-audio-video-decoder-error.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0001-basetextoverlay-make-memory-copy-when-video-buffer-s.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/do-not-change-eos-event-to-gap-event-if.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/do-not-change-eos-event-to-gap-event3.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/videobuffer_updata_alignment_update.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/encodebin-Need-more-buffers-in-output-queue-for-bett.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0002-video-frame-Add-GST_VIDEO_FRAME_MAP_FLAG_NO_REF.patch
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-omx.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-libav_git.bb
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base.inc
./poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.4.5.bb
./meta-openvivoe/recipes-multimedia/gstreamer
./meta-openvivoe/recipes-multimedia/gstreamer/gstreamer1.0-plugins-good_1.8.2.bbappend
./meta-openvivoe/recipes-multimedia/gstreamer/files
./meta-openvivoe/recipes-multimedia/gstreamer/files/0001-fix-multicast.patch
./meta-fsl-arm/recipes-multimedia/gstreamer
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_%.bbappend
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-imx_0.12.1.bb
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad/0001-PATCH-install-gstaggregator-and-gstvideoaggregator-h.patch
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base
./meta-fsl-arm/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/gstplaybin-remove-flag-deinterlace.patch
./meta-fsl-arm/recipes-multimedia/gstreamer/gst1.0-fsl-plugin_4.0.8.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/gst123_0.3.1.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/files
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer/files/display.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-rtsp_0.10.8.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-base-0.10.36
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-base-0.10.36/configure.ac-fix-subparse-plugin.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-base-0.10.36/gst-plugins-base-tremor.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-base-0.10.36/audioresample-Fix-build-on-x86-if-emmintrin.h-is-ava.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-good_0.10.31.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-meta-base_0.10.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-openmax_0.10.1.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36/gstregistrybinary.h
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36/check_fix.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36/0001-parse-make-grammar.y-work-with-Bison-3.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36/0001-baseparse-Fix-self-comparison-always-evaluates-to-tr.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36/gstregistrybinary.c
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer-0.10.36/gst-inspect-check-error.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/python-gst
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/python-gst/python-path.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-fluendo-mpegdemux_0.10.85.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-bad
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-bad/buffer-overflow-mp4.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-gl
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-gl/0001-conditional-gl-framebuffer-undefined-use.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-good-0.10.31
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-good-0.10.31/0407-mulawdec-fix-integer-overrun.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-good-0.10.31/0001-v4l2-fix-build-with-recent-kernels-the-v4l2_buffer-i.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-good-0.10.31/0001-v4l2_calls-define-V4L2_CID_HCENTER-and-V4L2_CID_VCEN.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-gl_0.10.3.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-ugly_0.10.19.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg_0.10.13.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-ugly
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-ugly/0002-Fix-opencore-include-paths.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-ugly/0001-cdio-compensate-for-libcdio-s-recent-cd-text-api-cha.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-base_0.10.36.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/python-gst_0.10.22.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins.inc
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/lower-rank.diff
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-smackerdec-Check-that-the-last-indexes-are-within-th.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-8546.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-avcodec-rpza-Perform-pointer-advance-and-checks-befo.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-h264-skip-error-concealment-when-SPS-and-slices-are-.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-error_concealment-Check-that-the-picture-is-not-in-a.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-8547.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-9318.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-ffserver-set-oformat.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-7933.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-huffyuvdec-Check-init_vlc-return-codes.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0002-avcodec-mjpegdec-check-bits-per-pixel-for-changes-si.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-avcodec-dsputil-fix-signedness-in-sizeof-comparissio.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-8544.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-lavf-compute-probe-buffer-size-more-reliably.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-8543.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-CVE-2013-0855.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-avcodec-msrle-use-av_image_get_linesize-to-calculate.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/libav_e500mc.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-h264_sei-Fix-infinite-loop.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/libav-9.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-h264-correct-ref-count-check-and-limit-fix-out-of-ar.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-8542.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-eamad-fix-out-of-array-accesses.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-vqavideo-check-chunk-sizes-before-reading-chunks.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/libav_e5500.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-pgssubdec-check-RLE-size-before-copying.-Fix-out-of-.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-huffyuvdec-Skip-len-0-cases.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/configure-fix.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-pngdec-filter-dont-access-out-of-array-elements-at-t.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-h264-set-parameters-from-SPS-whenever-it-changes.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-avformat-mpegtsenc-Check-data-array-size-in-mpegts_w.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-qdm2-check-array-index-before-use-fix-out-of-array-a.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/h264_qpel_mmx.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-avcodec-smc-fix-off-by-1-error.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-roqvideodec-check-dimensions-validity.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-alsdec-check-block-length.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-alac-fix-nb_samples-order-case.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-8545.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-mjpegdec-check-SE.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-qdm2dec-fix-buffer-overflow.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2014-9603.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-vp3-Copy-all-3-frames-for-thread-updates.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-vp3-fix-oob-read-for-negative-tokens-and-memleaks-on.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-avcodec-parser-reset-indexes-on-realloc-failure.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-atrac3dec-Check-coding-mode-against-channels.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-aacdec-check-channel-count.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/0001-error-concealment-initialize-block-index.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-fix-CVE-2011-4352.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-ffmpeg-0.10.13/gst-ffmpeg-CVE-2013-3674.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-plugins-bad_0.10.23.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gstreamer_0.10.36.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-fluendo-mp3_0.10.31.bb
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-rtsp
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-rtsp/0001-change-deprecated-INCLUDES-to-AM_CPPFLAGS-for-automa.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-openmax
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-openmax/ptr-array.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-openmax/gcc_4.6.patch
./meta-openembedded/meta-multimedia/recipes-multimedia/gstreamer-0.10/gst-fluendo.inc
user@user-VirtualBox:/media/yocto/build_yocto/sources$


Best Regards,
Ran

