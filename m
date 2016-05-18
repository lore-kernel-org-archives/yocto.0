Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 832E6E00CF4; Wed, 18 May 2016 15:02:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E87FFE00CA4
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 15:02:30 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id c189so9243187vkb.3
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 15:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=BxpxYZQXKitiWH2h1Wtn4mb9pn7Pu2mZqeXfN4At74o=;
	b=BzCO5yuUKmN0QhrB/rMPFx6zeutVIlYE7WuvSzUerzbsVEQi7UkFhg+g5qMGbhVIhQ
	9nmZzMC2Ou6w425Q6ENUvD7Xt4RqB1WDmugxpufPW4LiUkjPtKYw4VbOa6svcY5LpxX/
	wCX7GaTm3oCFill8iy1RFhWBpHVJS9TI1JyObo8po4TdhCvNto4/tj/EZcl4QMcWzT28
	XAlfjx0adjpOBBbwgAfFRRE+GvZi735GbHSckKVukjoY8ETPJra9WpR/9hjRzfJVDFFK
	dxgee31V39Fx/HT1Or6ZV2DFO5j67PbSkdZLRvRMfMoejPKMVtAoh37gy0dXIEjDXRXg
	Y8Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=BxpxYZQXKitiWH2h1Wtn4mb9pn7Pu2mZqeXfN4At74o=;
	b=TSOL+fYhIcdwkfKb4DNotPdHXpi55L5wQ/3/Rj1K3DiMJHCE8qqlYMi++hxcHytsd8
	GZunLM6zziLw4rxce9Ask9/ja6jzl9kShO4IGqIKGxIey/G2SfR1UCEXAovVdnRnXk9g
	V+oGRs9WYfxI3pbH6aAR515WDH+1qON5kPD7xkaSiboUgVwXN6dWri8X66SMKqB5Iqww
	dJUZ1dA5H4w8ijUVKnmVn4uW+r0NiH2oSg17sG0ED9c0HvUQASVJ9C0Vsd6/TIXFqfLh
	aDj8lq+s9FQeNhKS4bbn+K4WqX28tbtsNOV3cCtmPOyoyKyKLCGPt2qVdQC7hKT6cui3
	jeVA==
X-Gm-Message-State: AOPr4FV+VjUlySdDfbR4wfFx2to/Nb5KTDoj4LxmCRvhKsvnqS1j/PPSdZ2i8fgMhRdm6cec6Z0+KUpyoTf2EQ==
MIME-Version: 1.0
X-Received: by 10.31.15.16 with SMTP id 16mr5256071vkp.30.1463608949865; Wed,
	18 May 2016 15:02:29 -0700 (PDT)
Received: by 10.159.39.68 with HTTP; Wed, 18 May 2016 15:02:29 -0700 (PDT)
In-Reply-To: <1463574082-126198-9-git-send-email-herve.jourdain@neuf.fr>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-9-git-send-email-herve.jourdain@neuf.fr>
Date: Thu, 19 May 2016 00:02:29 +0200
Message-ID: <CALbNGRSVrA_bE8-YeaVV4ih8AdiGrYVZv0i3UgnL7sOoY8iDZg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 8/8] Support for vc4 graphics driver: modify the configuration for mesa
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
X-List-Received-Date: Wed, 18 May 2016 22:02:31 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 18, 2016 at 2:21 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> Add some configuration for building mesa, on raspberrypi, when VC4 is in use.
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-graphics/mesa/mesa_%.bbappend | 4 ++++
>  1 file changed, 4 insertions(+)
>  create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
>
> diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
> new file mode 100644
> index 0000000..b182388
> --- /dev/null
> +++ b/recipes-graphics/mesa/mesa_%.bbappend
> @@ -0,0 +1,4 @@
> +PACKAGECONFIG_append_rpi = " gallium"
> +GALLIUMDRIVERS_rpi = "vc4"
> +DRIDRIVERS_rpi = ""
> +
> --
> 2.7.4
>
> --
FWIW: An update of mesa would at least help for Qt applications [1]

[1] https://github.com/anholt/mesa/issues/26

Andreas

