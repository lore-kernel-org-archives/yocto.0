Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24340E008F6; Thu, 22 Jan 2015 00:20:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 008DAE0089B
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 00:20:18 -0800 (PST)
Received: by mail-oi0-f43.google.com with SMTP id z81so210255oif.2
	for <yocto@yoctoproject.org>; Thu, 22 Jan 2015 00:20:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PijvliDYBrQb0U1wVW6AIdx9n/MAM0zyO/AqQHgQXGQ=;
	b=dHaad9l7EtTRMA8c7ahoFTE3WDp9argCxICo/RY7S/21BWgoIDVVtzA7mxMuBuS8xy
	dgv9p40f3yq7GeJksfwKxXTu2fB0qhH/jWd0VTXYMJEVELrLFCUltEF6ri/C6FYirkfg
	RhRSPUgtpjM0xWV3cJeOPPSeXtH1Gj+3/VYsO0AOukCKa2A2t8C83wZ/w1zb+qNQbp0F
	1cfFDgXAkUgxkj7UI+k2vOWU74DNFZsF3/2ngJo7pA5Kc7NnWOD69u6z97jhLlb3ah7L
	KOKxp1V/LQ7Xx/KtYk/ttnboZ6lajicbF94cWV0fj4Aw2e6uaUb5DFkyvyAVp8Z0XtlX
	PWqw==
X-Gm-Message-State: ALoCoQk+3I1mzvHEcmn88PmcJi+e0IizzBlXZ8x70bumrkDThPBP0oMap4yMFhBTiqGeuy4DWRyG
X-Received: by 10.202.195.199 with SMTP id t190mr29601oif.105.1421914817430;
	Thu, 22 Jan 2015 00:20:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.79.1 with HTTP; Thu, 22 Jan 2015 00:19:57 -0800 (PST)
In-Reply-To: <3204FE6663E1F14CAF4CA6928E60C8522763E282@USSTLZ-PMSG012.emrsn.org>
References: <3204FE6663E1F14CAF4CA6928E60C8522035764B@USSTLZ-PMSG012.emrsn.org>
	<CAMKF1spkVua7kS-Ac9Mk4iU56sHj8Jf66x_=QFsMZtkjnX9EuQ@mail.gmail.com>
	<3204FE6663E1F14CAF4CA6928E60C8522763E282@USSTLZ-PMSG012.emrsn.org>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 22 Jan 2015 09:19:57 +0100
Message-ID: <CAP71Wjw4VgvQH0rZt6q7BmG_Gs5MFO8+KeB87=VeTCt3E2xvGw@mail.gmail.com>
To: Neil.Wu@emerson.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: The problem of do_rootfs_append
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
X-List-Received-Date: Thu, 22 Jan 2015 08:20:27 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jan 22, 2015 at 9:13 AM,  <Neil.Wu@emerson.com> wrote:
> Hi, all
> I'm building specific rootfs image. Add the do_rootfs_append() task  in core-image-specific.bb,
> core-image-specific.bb:
>
> SUMMARY = "creaet the customer rootfs"
> require ${TOPDIR}/../meta/recipes-core/images/core-image-minimal.bb
> IMAGE_INSTALL = "readline-dev linux-libc-headers-dev json-glib busybox-udhcpc "
> do_rootfs_append() {
>         cp -rf ${IMAGE_ROOTFS}/data/etc/ ${IMAGE_ROOTFS}/etc/
>         rm -rf ${IMAGE_ROOTFS}/data/etc/
> }
>
> It always meet the error as follows:
> ERROR: ExpansionError during parsing /home/ectrs/poky/meta-emerson-ecosys/recipes-core/images/core-image-ecosys.bb: Failure expanding variable do_rootfs: IndentationError: unexpected indent (<string>, line 14)
>
> I'm pleasant receive your reply. If you know how to solve it , please help me .
> Thank you very much.

do_rootfs() in a Python function, not Shell in image.bbclass, so while
I have never tried that specifically, i guess you cannot append a
Shell snipped in that case.

cheers
nico

