Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CF43E00D1C; Wed, 16 Sep 2015 21:14:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E77EEE00B74
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 21:14:22 -0700 (PDT)
Received: by padhk3 with SMTP id hk3so8290473pad.3
	for <yocto@yoctoproject.org>; Wed, 16 Sep 2015 21:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=KhDyK49T4U1qU1GL4kOyrrEBWVD3V69SbmB+XpkxTus=;
	b=SmjC3Sj31OwFKKsScVJQ38zW1xnpSQ2MtVcup9wz00CeGGrwBUfp0FSjqESi4eT84S
	GyJyIBmP1udXPsG0RXBKu8X4dFD+SRWQh0x5AiXJ0zGZweZ/6vvlRdeaQ3GmnPXKG+mT
	NVfu8kELXzw3AvRNtNBrV73R7p5xACT14ASmFBplODarxzDPzzIYzrZgV4suWwn6l2WO
	9ztBC5hbNLYRaEijzbLXlRcPpvf5ODJgZ9qFuyCXItZRc5PmJM/lYXrsrxbfugma4ZWV
	Wo6fviAEnvLAAlyeVxZmYbW/vbXGgzuXYrKxODU89+W5krFwcejQxTf2Ld0PEtne3gEq
	UeeQ==
MIME-Version: 1.0
X-Received: by 10.69.17.1 with SMTP id ga1mr66829320pbd.163.1442463261799;
	Wed, 16 Sep 2015 21:14:21 -0700 (PDT)
Received: by 10.66.80.131 with HTTP; Wed, 16 Sep 2015 21:14:21 -0700 (PDT)
In-Reply-To: <55F2304B.6070601@gmail.com>
References: <55ECF934.80902@gmail.com>
	<55F2304B.6070601@gmail.com>
Date: Thu, 17 Sep 2015 14:14:21 +1000
Message-ID: <CANwerB3PB=JQRQmjcHkCrpW8_fTSN1DrmPFFT70CA3WJtN6CYw@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Thu, 17 Sep 2015 04:14:24 -0000
Content-Type: text/plain; charset=UTF-8

On 11 September 2015 at 11:37, Trevor Woerner <twoerner@gmail.com> wrote:
> From the feedback, it looks like I'm the only one seeing this issue.
> That's okay, but I'll update this issue with new information in case
> it's useful to others. Today I also had some other strangeness with the
> "make sd card image" portion of a build, this time for cubietruck
> (meta-sunxi):
>
>
>     ERROR: Error: The image creation script
>     '/z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg'
>     returned 1:
>     0+0 records in
>     0+0 records out
>     0 bytes (0 B) copied, 3.0606e-05 s, 0.0 kB/s
>     expr: non-integer argument
>     WARNING:
>     /z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg:1
>     exit 1 from
>       parted -s
>     /z/tmp/build/tmp/deploy/images/cubietruck/core-image-minimal-cubietruck-20150910182624.rootfs.sunxi-sdimg
>     unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ 2048)
>     $(expr ${BOOT_SPACE_ALIGNED} \+ 2048 \+ 10240.0)
>
>
>
> Not only am I getting the floating point again, but it looks like
> "BOOT_SPACE_ALIGNED" isn't getting expanded!
>
> The frustrating part is that simply rerunning "bitbake
> core-image-minimal" fixes the problem. The second time it completes
> without error.
> --

I sent a patch to openembedded-core mailing list for ROOTFS_SIZE not
being an integer.
It seems http://git.openembedded.org/openembedded-core/commit/?id=af37bb8ae71c4f932e2126bb620b3fb2b11cc466
results in ROOTFS_SIZE now being set as a bitbake variable.
meta-raspberrypi will need to be updated to not have a conflicting
ROOTFS_SIZE variable as ${ROOTFS_SIZE} is being substituted by bitbake
instead of the shell there.

Regards,
Jonathan

