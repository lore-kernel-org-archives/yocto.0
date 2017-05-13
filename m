Return-Path: <romain.perier@collabora.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 056C6E00973; Sat, 13 May 2017 09:20:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACEDBE007DD
	for <yocto@yoctoproject.org>; Sat, 13 May 2017 09:20:44 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: rperier) with ESMTPSA id CC288260687
To: yocto@yoctoproject.org
References: <1492013128-5920-1-git-send-email-ayaka@soulik.info>
	<1492013128-5920-4-git-send-email-ayaka@soulik.info>
From: Romain Perier <romain.perier@collabora.com>
Message-ID: <018a6ea6-38c1-92aa-9a32-6dee2e7d6e6e@collabora.com>
Date: Sat, 13 May 2017 18:20:35 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <1492013128-5920-4-git-send-email-ayaka@soulik.info>
Subject: Re: [meta-rockchip] [PATCH v2 3/3] recipes-multimedia: images: rockchip media image
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
X-List-Received-Date: Sat, 13 May 2017 16:20:57 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

Hello,


Le 12/04/2017 à 18:05, ayaka a écrit :
> A image for debugging the hardware video encoder/decoder.
> I also use this image for developing the Gstreamer.
>
> Signed-off-by: ayaka <ayaka@soulik.info>
> ---
>  recipes-multimedia/images/rockchip-media-image.bb | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>  create mode 100644 recipes-multimedia/images/rockchip-media-image.bb
>
> diff --git a/recipes-multimedia/images/rockchip-media-image.bb b/recipes-multimedia/images/rockchip-media-image.bb
> new file mode 100644
> index 0000000..ea993c1
> --- /dev/null
> +++ b/recipes-multimedia/images/rockchip-media-image.bb
> @@ -0,0 +1,21 @@
> +# Copyright (C) 2017 Randy Li <ayaka@soulik.info>
> +# Released under the MIT license (see COPYING.MIT for the terms)
> +
> +include recipes-core/images/core-image-minimal.bb
> +
> +LICENSE = "MIT"
> +DESCRIPTION = "Multimedia image for Rockchip devices."
> +
> +IMAGE_FEATURES_append = " package-management ssh-server-dropbear"
> +IMAGE_INSTALL_append = " gdbserver gstreamer1.0-rockchip      \
> + gstreamer1.0-meta-base gstreamer1.0-meta-video gstreamer1.0-meta-audio \
> + gstreamer1.0-plugins-good-isomp4 gstreamer1.0-plugins-good-multifile \
> + gstreamer1.0-plugins-good-imagefreeze \
> + gstreamer1.0-plugins-bad-autoconvert  gstreamer1.0-plugins-bad-camerabin2 \
> + gstreamer1.0-plugins-bad-kmssink gstreamer1.0-plugins-bad-rawparse \
> + gstreamer1.0-plugins-bad-videoparsersbad \
> + gstreamer1.0-plugins-bad-mpegtsdemux \
> + gstreamer1.0-meta-debug \
> +"
> +
> +TOOLCHAIN_HOST_TASK += "nativesdk-cmake"
Clearly a NAK here. I don't want yet another image for this, that's a
bsp meta layer, it is supposed to contain the recipes and rules to
propose support for Rockchip SocS in in yocto/oe and its reference
distros. But it is also supposed to be minimal, I don't want "all the
world"  in meta-rockchip, to be honest :)

I am not fan to have recipes or rules for development...

Trevor, as a co-maintainer, what is your point about this ? (always welcome)

Regards,
Romain

