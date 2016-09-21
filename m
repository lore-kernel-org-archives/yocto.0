Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 673BCE00444; Wed, 21 Sep 2016 09:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C7ADE00404
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:04:27 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id w84so9415247wmg.0
	for <yocto@yoctoproject.org>; Wed, 21 Sep 2016 09:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=B6IbAJ4z8oNValNfcrvlfshRIF3YgrxdohqpPa/qDlA=;
	b=vuFbxyy9bWKTNH1A8vNZVwlwpzzkhB3bcQMhsCsoeXYKaBG07rTu0A0vFdGFl45a7X
	FMg72FVp311jLknYMay78wja07YvJcdxGLQu8jPX8L6CCGdpUqEgmWncbwlH6uW26s+E
	CFbEsSWak1zy71YJStJdTwFjbBXAxwfqqrJzIPdQkqIpCYYttdFcCQx7wR7j7EPGF+qA
	nEHMTXkDi6t9+4xZsuI9CJ7BQC0uCCpXQ0tYuOWx0U4P2RXcbqe/AmVSRSFj6nVLRr9W
	mJcNou60ENtbrFCtXzoB35Q1CtFJslzTTDrhNrST0UbjBu+kx0ydGGAAUMa75KapzlsB
	zslA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=B6IbAJ4z8oNValNfcrvlfshRIF3YgrxdohqpPa/qDlA=;
	b=QARXp2D+JmNpLPon6GgT8ywFYL+SGD/vZBXD9/WBOer6kt+HLupswPlbRYMt9WZwZZ
	Wp8Vr0RQkjUCC3Jjt/7VSEPmARw8Wbn3aAL5xoyV86Ticit+1chLnzFFTWE8j38I1GkT
	sHAY2KO3p5W+GCbmX0W0Wlcc8nC5DrLznryqs0yOpBPkguGtRlsevLa3263VJItgpS72
	eAB/3+Y8eUSdbsINzJZ8EanvZw8joRsQkr7rWvGkGLsUNNpyTyR4jrqoOLiLnwd/e7HI
	wzHxh66RlprtEwEygd303Ll2774yvtytOiexkYjHlqRP4xt30otvFfFae1NXLvvDXYrz
	cNDg==
X-Gm-Message-State: AE9vXwPyuxv8+dcb1ZoQAZqCbGO7dNOiBr+WmmwQIE6Ubfb6PD6C0FADvoJzWL5AsvxEKg==
X-Received: by 10.194.19.67 with SMTP id c3mr32991323wje.90.1474473866938;
	Wed, 21 Sep 2016 09:04:26 -0700 (PDT)
Received: from resin (host86-179-71-51.range86-179.btcentralplus.com.
	[86.179.71.51]) by smtp.gmail.com with ESMTPSA id
	jn7sm34265612wjb.5.2016.09.21.09.04.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Sep 2016 09:04:25 -0700 (PDT)
Date: Wed, 21 Sep 2016 17:04:20 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160921160420.GA32726@resin>
References: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1469104337-21068-1-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.7.0 (2016-08-17)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v4 00/12] Support for VC4 graphics driver
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
X-List-Received-Date: Wed, 21 Sep 2016 16:04:32 -0000
X-Groupsio-MsgNum: 32023
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="T4sUOijqQbZv57TR"
Content-Disposition: inline

--T4sUOijqQbZv57TR
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 21, 2016 at 08:32:05PM +0800, Herve Jourdain wrote:
> v4 series:
> a. rebased
> b. Upstream-Status added to the patch to the VC4 driver (needed only for kernel 4.4, accepted upstream in 4.7)
>
> v3 series:
> a. patch rebased
> b. new revision of kernel, to get a version of the VC4 graphics driver that handles render nodes
> c. patch to the VC4 driver to enable proper working of the render nodes (need to add authorization for IOCTLs)
>
> v2 series:
> a. Fix the 4.4.10 kernel revision
> b. Effectively add vc4-kms-v3d overlay to the list of overlays to build (forgotten previously)
> c. Make the parameter to the v4c-kms-v3d overlay configurable
> d. Add default values for the cma parameter to the v4c-kms-v3d overlay, depending on the board (and the memory it has)
>
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> There was a previous patch series by Javier Martinez Canillas, but it required use of a different kernel.
> VC4 is now supported in the raspberrypi official kernel, at least for 4.4.9+.
> The support in 4.1 exists, but it is NOT STABLE, so it has been deemed unreasonable to support VC4 with 4.1 kernels.
>
> THEREFORE, VC4 graphics is supported ONLY for kernel versions 4.4.9 and later.
>
> This patch series proposes to support VC4 by only adding 'vc4graphics' to MACHINE_FEATURES, for raspberrypi. If this is set, it will trigger all the necessary configuration/changes to use the VC4 driver, including mesa/wayland/weston currently, and adding the overlay required.
> In order for this series to work, some previous patches are needed (support for .dtbo, and fix of the mesa packaging when there is no DRI driver).
> The memory reserved for the VC4 driver has default values depending on the version of the board used, but it can be configured by setting VC4_CMA_SIZE to a value supported by the overlay ('cma-256', 'cma-192', 'cma-128', 'cma-96', 'cma-64').
> 'cma-256' is the recommended value, but it might not be possible on boards with 512MB or DRAM, or less...
> 'cma-64' is known to not being able to support FHD/1080p.
>
> It was tested with wayland/weston, without the support for X11.
>
> This patch series depends on two other patch series previously posted, that enable the support for .dtbo overlay files.
>
> Herve Jourdain (12):
>   rpi-default-providers.inc: change default providers to support
>     vc4graphics
>   rpi-base.inc: add vc4-kms-v3d to the overlays to support vc4graphics
>   raspberrypi.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi0.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi2.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   raspberrypi3.conf: set the default value of VC4_CMA_SIZE to support
>     vc4graphics
>   rpi-config_git.bb: add v4c overlay to config.txt to support
>     vc4graphics
>   wayland/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   weston/weston_%.bbappend: modify configuration options to support
>     vc4graphics
>   mesa_%.bbappend: new file to add the correct configuration options to
>     support vc4graphics
>   linux-rpi.inc: add the configuration options required to support
>     vc4graphics
>   linux-raspberrypi-4.4: add patch to enable proper operation of
>     renderD128 device
>
>  conf/machine/include/rpi-base.inc                  |  1 +
>  conf/machine/include/rpi-default-providers.inc     |  8 +++---
>  conf/machine/raspberrypi.conf                      |  2 ++
>  conf/machine/raspberrypi0.conf                     |  2 ++
>  conf/machine/raspberrypi2.conf                     |  2 ++
>  conf/machine/raspberrypi3.conf                     |  2 ++
>  recipes-bsp/bootfiles/rpi-config_git.bb            | 10 +++++++-
>  recipes-graphics/mesa/mesa_%.bbappend              |  4 +++
>  recipes-graphics/wayland/weston_%.bbappend         |  6 ++---
>  recipes-graphics/weston/weston_%.bbappend          | 13 +++++-----
>  .../0002-vc4-ioctl-rendering-allow.patch           | 29 ++++++++++++++++++++++
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb      |  1 +
>  recipes-kernel/linux/linux-rpi.inc                 | 10 ++++++++
>  13 files changed, 75 insertions(+), 15 deletions(-)
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi-4.4/0002-vc4-ioctl-rendering-allow.patch
>
> --
> 2.7.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

The entire patch set was merged to master. Thanks.

--
Andrei Gherzan

--T4sUOijqQbZv57TR
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJX4q+EAAoJEHO76Gt+erfP4AgP/0NPV9pB6T+24YO/PS0igT69
xjdtx7BLAtbNqQ0Q7e0GZP0z1CT24XkdgMjdLBgFDsFXrRkGudvbN0VEuGVLFR2k
UU728H36/IE9w9GSrqUgsECKfCvMEIYpKrfKgr8wOzKEBJNWT+KCFZpwiWLwH6AU
Ra5c1EPKcQQo5D4RpskMPVoLtzRc8+XXG7WS7yVILZq5OtZb4n69BHztD0GddYBC
s/Cd9c++OrYwmX+GLMko8WJTjg0euXSiD9amOrn5aSUpo35OG2LQHo9mjVBfJanK
nhni38ppt8Z7M0l9JVYM2KgrXMtj0mY6PMJv2yrGFbDGtgOrEm8IymNmbMR51u5a
C34hHq8zQDwWWyEwiLYOxIbwzfFEWxx040rlgRmxiBz5r/WBWRrrSGNjm0CaItON
alUMqzoC372QJ5PoRZf+vGJJ0nljlR925ka0FQlNhXA35EVJwobsT4lKuMdH+X+c
950DPrnw9TczOgAvN5+ctsSvNkCQIE0Xr1lW1BevJR7nw9e3/JbNed1AnX8KJk96
Dv868zBn6GV97AxTSrUQO9OSb3DPW0ttLRb8awgLDa8AF9jOoYkSWI/yGRD1+HEi
tKIa5MxTbdVS+56EmPWE3hCBuYH1dd6wERzNIaVoQ9VcY69ioDSS/iuF2uL61paU
MMpbvi3rbfjjM3NWEyP6
=IB6s
-----END PGP SIGNATURE-----

--T4sUOijqQbZv57TR--
