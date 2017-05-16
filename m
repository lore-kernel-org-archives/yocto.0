Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A10BE00BA3; Tue, 16 May 2017 07:25:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B605E00B45
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 07:25:27 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id m18so444543lfj.0
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 07:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3vJWFNRXuyhIqVh2dZEatvOE9ubyBDXsUSAP02uuqs0=;
	b=WA+8W9CDETlDni5SjhenmLi+/wPOR/yO0bKv2tFuK7lMq+V2EyBMOGFajNOG48qPqL
	oulsL3OzK+e9LMTK3HLMq8a79RQgr6LLsCb+ON03m0n7/4mfjGI9ISfdaqC3gfQRFafO
	lROBbk15F8L6lRH5WnL1YC+1/u4MST44dQdmjVQrRLjgmNDdDvhmuAlRJfs1ad0Mko42
	zMCDIwyCDp9BOgAliS+YajCxo46Xd06IKEIDo+zT1tLseK3h5WPOFxFLlfFfgcPva3Q3
	V9cPLHdeyP7AI9U2t4+PhEScLUinr0AycjSK+QpjGHhbO3P5js9+edOlopIaVjV97ky5
	y+8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3vJWFNRXuyhIqVh2dZEatvOE9ubyBDXsUSAP02uuqs0=;
	b=XtFKHMMcyw9UgnLtv5ZnMhAITOoKYPTuoxsfdV95J24miTjyeORUEDpoGgKRQXB+Cr
	gE+cUfB5flMClpWutrjtAlbqFB7yLxAxEIA1XBUsYIekEwCfBPtgTbD1rcmAYppt+9Be
	yhDpvtDQiDb7i8Bvvw4PyCS6Z8aoA36TQBwNqQUaaExJWAcxPiG7K6i+ThIAGYg/G06l
	PSqG/2Pl2PukAqGDytNer77Eotzbg/jkXlQeMOLH6MZ6lyBQskS0AGLMphc5dsUj/qPL
	M0Bcx9G5BS7zHTj3GOpkuguyud11XbVpOWgNL8deAobi9QKFD3FJajOjXN6C2otbxo+p
	Th6Q==
X-Gm-Message-State: AODbwcDlOBqR8aCc6VQOQloj7fFNEUXNoMpHQ8wE/O8/M/EPReu9qO4R
	oOD4ODmpxozogGBGnOBeBOksphVqww==
X-Received: by 10.80.154.165 with SMTP id p34mr3138853edb.127.1494944726235;
	Tue, 16 May 2017 07:25:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.195.143 with HTTP; Tue, 16 May 2017 07:24:55 -0700 (PDT)
In-Reply-To: <20170516141808.26629-1-ayaka@soulik.info>
References: <20170516141808.26629-1-ayaka@soulik.info>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 16 May 2017 07:24:55 -0700
Message-ID: <CAMKF1spmPuwJMh7EU0JXPGJoUz2w7fGBFW-+0nkhdTZCL0GqJQ@mail.gmail.com>
To: ayaka <ayaka@soulik.info>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip] [PATCH v3 0/3] Add video codec recipes
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
X-List-Received-Date: Tue, 16 May 2017 14:25:38 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 16, 2017 at 7:18 AM, ayaka <ayaka@soulik.info> wrote:
> Those packages are the userspace libraries for the Rockchip
> Android video codec driver.
>
> Also a minimal image used for verified the media framework is included.
>

some recipes are pinned with GPL-2.0 and some with other licenses. Usually
metadata is better under MIT, is it intentional ? if not then it would
be good to follow consistent license for metadata

> ayaka (3):
>   recipes-multimedia: add Rockchip MPP library
>   recipes-multimedia: add gstreamer rockchip support
>   recipes-multimedia: images: rockchip media image
>
>  .../gstreamer/gstreamer1.0-rockchip.inc            | 32 ++++++++++++++++++++++
>  .../gstreamer/gstreamer1.0-rockchip_20170516.bb    |  9 ++++++
>  .../gstreamer/gstreamer1.0-rockchip_git.bb         | 13 +++++++++
>  recipes-multimedia/images/rockchip-media-image.bb  | 21 ++++++++++++++
>  recipes-multimedia/rockchip-mpp/rockchip-mpp.inc   | 21 ++++++++++++++
>  .../rockchip-mpp/rockchip-mpp_20170412.bb          |  9 ++++++
>  .../rockchip-mpp/rockchip-mpp_git.bb               | 16 +++++++++++
>  7 files changed, 121 insertions(+)
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip.inc
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_20170516.bb
>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-rockchip_git.bb
>  create mode 100644 recipes-multimedia/images/rockchip-media-image.bb
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp.inc
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_20170412.bb
>  create mode 100644 recipes-multimedia/rockchip-mpp/rockchip-mpp_git.bb
>
> --
> 2.9.4
>

