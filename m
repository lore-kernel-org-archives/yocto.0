Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFC65E00D68; Wed, 14 Dec 2016 12:27:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 574A5E00D01
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 12:27:22 -0800 (PST)
Received: by mail-vk0-f67.google.com with SMTP id x186so5115621vkd.2
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 12:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7MmpZ/+beN1q5IXIL1JUd6y7Xp2nBJvk7a3i+yHWTm8=;
	b=Zgl8eFQWNl1SqEUoatE8l+3YszKkv7aSJ0VRYjFppzw0pqKPQw+TsmGAQr+MXjwGKm
	YOeCzHCJyQuxf/4YwNuJUcr1OopY7Z0THLvkeW3HGxiWwKjSjmGGOsCtiPSCm941A2lU
	7//GXbKk6/BVCd9l66tu4Xqje4N7cYd5yJOQLkitlIwZ2LHJeP8zQTF2I4OFps9SLTN+
	IHGPpTZn24j7GxNJnkckjFCqe98MXsLYjZNjO5ILrgx/BJK3VatgqGjTLpeOPOEK/wA+
	wjegnficfFhr6eGvJSdwedHucKMHVXQP3jnRGPJl73NGI9Uv0SKSgut4LCRqGcTL78LY
	qlsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7MmpZ/+beN1q5IXIL1JUd6y7Xp2nBJvk7a3i+yHWTm8=;
	b=Vm3FZReYBSh+glaJNPXunn0RT+YVoSA0wBODJHmQiEQuuNS+gK03fI9EqNjzHdMvm/
	tDG49w8L6F9+/5h3BzhOvYeI2AMEUPUvshRd3vlvpOiUupklbiJyCrHf85cq+Yue5XSh
	pAcu90x3DXAuGMf9Sc4LXvyuAnXY+tYt40RCV2czcxvgSqx2y/D1J9sW8Hiy9x0LHMiQ
	60oxS4csBgGLAGe5sStBFUPT0ttSF3smrY+JHI++4HeAErGPXVkdHZwTnrmhSbon9tBB
	tBxxwWKrCVvvRiTsFkAs90xObArZJSQQdA6zpyMJsiHpL6gYwT6YbTrPht+2BuDrWPhw
	j9jg==
X-Gm-Message-State: AKaTC02OmwsSZWgAr5G2QW33BXhiPS7JOHf4GjI6f1PGKMjGLwjPd1le8xg8pELYiV4fvWpNlYuuryC+eFXiKw==
X-Received: by 10.31.234.199 with SMTP id i190mr46750654vkh.31.1481747242304; 
	Wed, 14 Dec 2016 12:27:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Wed, 14 Dec 2016 12:26:51 -0800 (PST)
In-Reply-To: <80fb4491-6f66-0317-84d5-7b3e7efa8645@elfin.de>
References: <80fb4491-6f66-0317-84d5-7b3e7efa8645@elfin.de>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 Dec 2016 12:26:51 -0800
Message-ID: <CAMKF1sr6fJUR47pk5ieGAJaGqEjttm-uRnTi4iiqcO4FKOd1iQ@mail.gmail.com>
To: Piotr Lewicki <piotr.lewicki@elfin.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] How to set the kernel config variables in the recipe?
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
X-List-Received-Date: Wed, 14 Dec 2016 20:27:23 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 14, 2016 at 3:14 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
> Hi,
>
> I need to set some kernel parameters and I thought that it would work with
> "do_configure_prepend()" task in my "linux-raspberrypi_%.bbappend" file.
>
> I have do configure like so:
>
> do_configure_prepend() {
>
>     kernel_configure_variable USB_PRINTER n
>
> # and some other variables
>
> }
>
>
> Now I have noticed that what I get in the real do_configure task is:
>
> do_configure() {
>     kernel_configure_variable USB_PRINTER n
>
> # and some other variables
>     # Clean .config
>     echo "" >
> /home/piotr.lewicki/2016-12-09/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.4.28+gitAUTOINC+5afda48c34-r0/linux-raspberrypi3-standard-build/.config
>     CONF_SED_SCRIPT=""
>
> ...
>
> }
>
>
> Does this mean that my configuration does not get into the recipe?

this should regerate .config which should account for your change too.

>
> Is there a better (working) way to do it?
>
>
> Best regards,
>
> Piotr Lewicki
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

