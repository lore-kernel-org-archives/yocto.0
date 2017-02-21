Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EFDDE00566; Tue, 21 Feb 2017 08:01:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5059E00519
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 08:01:15 -0800 (PST)
Received: by mail-qt0-f194.google.com with SMTP id h53so18125733qth.3
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 08:01:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=D/eswmCK6MXQE45s0YTjT+1vBZoWnIC74J2hAqoUz9o=;
	b=NWrVuqEvISGG85j7ObxQWATbZIJzUQNp4z8xKJDIdV+5cwa6O4n+xOd/y0hXPphi+R
	Rchrl/HKdPpEjXyJmUM/u+Lx7+V9ZGhSMqPSpayV1h+AONVPL2eqGku+7J2shZgCGXVv
	Yuquq1ysxEaANUht2CMHbqXGRahWUce1IIGAlAjAkI3Gz6y0bMco8XfEZkC3NXI7ybKi
	ogQqTamiSTqrlk9jTzHfUqhU5cNuQC1psurcPO9h439+6NpW5TbZTHFO4zZf6fU++FGA
	u8Z3yw3oxK/9DPxPsJMWutPPiEtbQ7rnLuCP+Fqe99FOn0ulbHcbkAQBwy8TnVpdAUeX
	rRSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=D/eswmCK6MXQE45s0YTjT+1vBZoWnIC74J2hAqoUz9o=;
	b=ZC09HIhZzXZtvqY8jGviXytOzV/1zLxQJPu9T8XULpqge5HpVdkukyBScoMhZVwSMN
	d7FTu4apy4+uBvXFUiQzgeVlmLG7bc0229dYoiP6SwyMOjqNDaMOvw/GUKydVHLHaPQ9
	uOLUp5ukn0iHqmfpPSV0JhlXZzRyfLZ1oLxlcPQ+X2mo6aDJKzb36BEZThonnSzSGaK5
	n6Cl553LnEmKl+r+WlbgyLN4ryeuLuoqDRnxULvapUFFw1aIhkabPg1ILgOi+XssHZJi
	436Qxpw+t0HPX/L8s2XIFEXwrQ6oLPafwIhxgNSRLSzIsLBAR5XD2EAZ1plnYewi2f0k
	1Qdg==
X-Gm-Message-State: AMke39nQ07XYbHgAEqhIGfAgI17m5n3qkuh9p1LPpwbbXZjHnL6owXUO6HRLokuFkzBv9y6TujbN8NMY+iGsMA==
X-Received: by 10.200.38.50 with SMTP id u47mr27314805qtu.293.1487692874222;
	Tue, 21 Feb 2017 08:01:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.39.252 with HTTP; Tue, 21 Feb 2017 08:01:13 -0800 (PST)
In-Reply-To: <CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
References: <20170219024340.23664-1-twoerner@gmail.com>
	<20170219024340.23664-3-twoerner@gmail.com>
	<CAFLEztS7U_s2Np48_Kb=+TMjNReDaGAE_uSRB-Gan+yHQRyC7g@mail.gmail.com>
	<CAJrj+DMdmcBqnFgfJ4B3t+HCScH_ANCCm3wLcvDyDROMBowpYg@mail.gmail.com>
	<CAJrj+DO24Y3Wwx-yoRcY0OrwoudO6y0-qppAi=4tDMm+bJzRgQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 21 Feb 2017 11:01:13 -0500
Message-ID: <CAHUNapQM6ABxtp+5xy_0YjHUiy8F6VqVCK_9hcQPcxQaWeQq3A@mail.gmail.com>
To: Eddie Cai <eddie.cai.linux@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH v2 2/5] u-boot-rockchip: add
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
X-List-Received-Date: Tue, 21 Feb 2017 16:01:19 -0000
Content-Type: text/plain; charset=UTF-8

I'll have to investigate this further. From a completely clean build
do_install_prepend always fails the first time, but simply restarting
the build again causes it to succeed. With do_deploy_prepend it always
succeeds without issue whether its the first or subsequent tries.

On Mon, Feb 20, 2017 at 6:14 AM, Eddie Cai <eddie.cai.linux@gmail.com> wrote:
>
>
> 2017-02-19 22:33 GMT+08:00 Eddie Cai <eddie.cai.linux@gmail.com>:
>>
>>
>>
>> 2017-02-19 22:22 GMT+08:00 Jacob Chen <jacobchen110@gmail.com>:
>>>
>>> Hi,
>>>
>>> 2017-02-19 10:43 GMT+08:00 Trevor Woerner <twoerner@gmail.com>:
>>> > This recipe was taken from the Rockchip team's recipe at
>>> >
>>> > https://github.com/rockchip-linux/meta-rockchip/commit/6a139d5b7510c7ba36aace82c239b894d5741cac
>>> >
>>> > It was mostly written by Jacob Chen <jacob-chen@iotwrt.com> and I've
>>> > made a
>>> > couple small modifications.
>>> >
>>> > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>>> > ---
>>> >  recipes-bsp/u-boot/u-boot-rockchip_git.bb | 19 +++++++++++++++++++
>>> >  1 file changed, 19 insertions(+)
>>> >  create mode 100644 recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>> >
>>> > diff --git a/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>> > b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>> > new file mode 100644
>>> > index 0000000..3b4f109
>>> > --- /dev/null
>>> > +++ b/recipes-bsp/u-boot/u-boot-rockchip_git.bb
>>> > @@ -0,0 +1,19 @@
>>> > +# Copyright (C) 2017 Fuzhou Rockchip Electronics Co., Ltd
>>> > +# Copyright (C) 2017 Trevor Woerner <twoerner@gmail.com>
>>> > +# Released under the MIT license (see COPYING.MIT for the terms)
>>> > +
>>> > +require recipes-bsp/u-boot/u-boot.inc
>>> > +
>>> > +DESCRIPTION = "Rockchip next-dev U-Boot"
>>> > +LICENSE = "GPLv2+"
>>> > +LIC_FILES_CHKSUM =
>>> > "file://Licenses/README;md5=a2c678cfd4a4d97135585cad908541c6"
>>> > +COMPATIBLE_MACHINE = "(firefly-rk3288)"
>>> > +
>>> > +SRC_URI = "git://github.com/rockchip-linux/u-boot.git;branch=release;"
>>> > +SRCREV = "${AUTOREV}"
>>> > +S = "${WORKDIR}/git"
>>> > +
>>> > +do_deploy_prepend () {
>>> > +       # copy to default search path
>>> > +       cp ${B}/spl/${SPL_BINARY} ${B}/
>>> > +}
>>>
>>> I can't pass build if use do_deploy_prepend instead of
>>> do_install_prepend.
>>
>> It works for me. Did you delete build/tmp?
>
> I failed when i did a clean build(delete build dir). I modify
> do_deploy_prepend to do_install_prepend. Everything is fine.   I guess i can
> build before because sstate-cache cache the previous build data.
>>>
>>>
>>> > --
>>> > 2.12.0.rc1.48.g076c053
>>> >
>>> > --
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

