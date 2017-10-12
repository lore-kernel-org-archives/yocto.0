Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1B64E00A9C; Thu, 12 Oct 2017 11:03:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.46 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C465E007EF
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:03:58 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id b189so15250760wmd.4
	for <yocto@yoctoproject.org>; Thu, 12 Oct 2017 11:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DHbzqPCNTMrxmMzPqyNGUiOIAdSFf7hYxf2gXM+Rhw4=;
	b=AOhOtlAl5mdqudxbNcY4dMzl+ePkqAr57vts7/Fv8/9XgDrAS/Q4M+bP/vwnMaK6V9
	VUJF3BJSEytOeMbiXXxjhkberxfChKQgxOnmZvkPt6OmCSQ3GlQj0yeS1FE3gxHgmhGx
	+Q8kqRIWX8+83IjR0ie5+xNlNWET9HSMz6RuMKfAkXkF1X/ppGLu5DDFmRpmjBWkjpdM
	pFFHsoz5Fjwzll6r4WO5I2Sn9q/eulyZI0oHPOtMY57j8dKq8Nmzj3AZGMN2dIYTTttP
	hl+e7mgprA8JHNngOCWciTqcHK3A9z/Hcy1nfC6z3nUZnJXoBS3+t88FaqTioJlhsoSV
	/rNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DHbzqPCNTMrxmMzPqyNGUiOIAdSFf7hYxf2gXM+Rhw4=;
	b=tw/yf3RpQ/SuaI6Tvfd49twkq/WXub5feGiiwns3YsrpTn/eKIfqrYnq6PfPnJOL6X
	1NGdyTWPxqdiOCxyVpqzT2S4wsSWahfWijry+eMlQqcrfVviWsa4ezvNRjYNUUotOff9
	R5AW0ocPr4N1XLhbIv/Did/PYc0HCSIPa0vDExEx6QjV40uog3GVdYnMSctGMnvOAXa2
	dAdU4B04IgZlsVuxHYyvrdq1yUQucCF076OCuIf9NaXz7N//U7wIOzM7it/iu0gazz4M
	CBbwkBx5m39fpZp+PMpq+tjVk3B4PDr2gWTZoYpmIi9MXjtVU9SrVqj79FLqU+PchUlI
	pNeg==
X-Gm-Message-State: AMCzsaXgp4MqkCkJHHL5gAeRvHN87Bs4Y9VBewwaXb+3daVVLveyTWKJ
	UrWwOdTDXz/YGBs10WjgA+3qXFDF1gGe+zeOAqY=
X-Google-Smtp-Source: AOwi7QBCrBGhdME48jCMcrwfla0ZxqHgXJkodH+q5jZNIqmuOUvgKrvUk5BAZ4hSvBg/uxfrMiq90N5PDn3dcEwhqT8=
X-Received: by 10.223.186.140 with SMTP id p12mr2651804wrg.235.1507831437977; 
	Thu, 12 Oct 2017 11:03:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Thu, 12 Oct 2017 11:03:57 -0700 (PDT)
In-Reply-To: <CAAkg2-n4nmbTHezWJk-JTjABhVEgdNyWGtJVqkEJ2KD9tfX7HA@mail.gmail.com>
References: <CAAkg2-n4nmbTHezWJk-JTjABhVEgdNyWGtJVqkEJ2KD9tfX7HA@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 12 Oct 2017 11:03:57 -0700
Message-ID: <CAJ86T=U4qfFGPxu5MvijfdvpaLnriar_FAxUSsFNpDkiRa8SMQ@mail.gmail.com>
To: Bernd <prof7bit@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: possible to append or patch existing machine .conf file?
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
X-List-Received-Date: Thu, 12 Oct 2017 18:03:59 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 12, 2017 at 3:32 AM, Bernd <prof7bit@gmail.com> wrote:
> Suppose I have the following bugfix patch for a 3rd party machine conf
> file I am using:
>
> diff --git a/conf/machine/colibri-vf.conf b/conf/machine/colibri-vf.conf
> index 3ddef79..ba47488 100644
> --- a/conf/machine/colibri-vf.conf
> +++ b/conf/machine/colibri-vf.conf
> @@ -35,6 +35,6 @@ MKUBIFS_ARGS = " -c 8112 -e 124KiB -m 2KiB -F"
>  UBINIZE_ARGS = " -p 128KiB -m 2048 -s 2048"
>  UBI_VOLNAME = "rootfs"
>
> -SERIAL_CONSOLE ?= "115200 ttyLP0"
> +SERIAL_CONSOLE = "115200 ttyLP0"
>
>  MACHINE_FEATURES += "usbgadget usbhost vfat alsa touchscreen"
>
> Is there a proper way to somehow temporarily add something to my layer
> to apply this patch until it makes its way upstream and into the
> branch I am using? Or should I make my own machine file, include the
> original one and then change the variable?

That would be one way. You could also over-ride from any other global
config file, e.g. local.conf or the distro config file (if you have
one).

> So far I have not found any elegant way to otherwise force this
> variable to its correct value in my image recipe

Right, the variable is not used by the image recipe, so setting it
there won't change anything. Variables in an image recipe generally
only relate to how the image is constructed (what packages it contains
and format of the final image - tar.gz, squashfs, etc).

>, the only way I have
> found to work around this bug is to .bbappend the inittab recipe where
> this variable is actually used and change the value of another
> variable (SERIAL_CONSOLES, note the S at the end) which is derived
> from SERIAL_CONSOLE right there in this bbappend file. This seems to
> help.

For variables which are specific to one recipe then over-riding in the
context of that recipe is OK. However, SERIAL_CONSOLES is used in a
few different recipes, so over-riding from a global config file would
necessary to be sure of changing it consistently wherever it's used.

> But while doing this I have also noticed a strange anomaly in the
> output of bitbake -e:
>
> * When I change the variable in my image recipe then bitbake -e will
> show another "set" access and both variables SERIAL_CONSOLE and
> SERIAL_CONSOLES will have the correct value as intended by me but the
> produced image will have the **wrong** entry in its inittab.

If you run bitbake -e for inittab and for the image recipe and compare
the two it should show that setting the variable from within the image
recipe has no effect on the inittab recipe. That's not a bug.

> * When I bbappend the inittab recipe to set SERIAL_CONSOLES right
> there where it is used then my final image will have a correct inittab
> and the serial console will work bit there is **no** mention of that
> variable change in the output of bitbake -e

Similar to above, bitbake -e will give different results for each recipe.

> * Only when I change the machine conf file iitself to set the variable
> then bitbake -e and the produced image both show the correct entry.
> Why does it behave that way?

Because the machine config is a global config file and any variables
it sets are seen by every recipe.

