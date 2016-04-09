Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D87EE00ACF; Fri,  8 Apr 2016 17:49:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24DB8E007D2
	for <yocto@yoctoproject.org>; Fri,  8 Apr 2016 17:49:45 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id l6so82207457wml.1
	for <yocto@yoctoproject.org>; Fri, 08 Apr 2016 17:49:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-transfer-encoding;
	bh=AKUBbx1W1fxtva0L8XpeG+qJfOs5k8NNf8i0/FikZFg=;
	b=DH+RsEE7YAtNeL27FZsjOURuB4soBYRaCbpfn2BpppzFjoKBooQY3IUaQEnurvALOk
	Z4fb3YxJI+SsudkrzkzXIENmLuJxx+OTKw2zvq9jUbuETy5RyaqfTdZKOCdJrs5rAfTK
	JxJIv/8iYY6bEg/Dgx6FxK48NKjeVbriRhdprj3UXZj57KgqzRjI6JafS2oTHuNn6LZp
	GahQ5fOCsV8UEPAy3zTjVmNbRu0Qw8hy+A9O6kIdnBKioAf3BvI/ly+SbddEpPh6NbzR
	71s8yT4IPd/DI41mAaGmawLs/x/vG052+lBRxYnBoAhlX5gBZeD1+70H1xPL/a5/804S
	cjEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-transfer-encoding;
	bh=AKUBbx1W1fxtva0L8XpeG+qJfOs5k8NNf8i0/FikZFg=;
	b=Gt7rl+GuRZTrM3TPmXHh+rpKAao927YFb+o6kyMjAQPcdFPAJTLjkdRRS5BI7BQhIw
	xG3YyewEYz8Y1ncFZxI+QzhHTrASaDj3EZ80Ep9VzB3Z+ToZn1fZytatwxcfPUB3rLUJ
	wNjRRT1cOhG4eYNbYFsB4OcDQflJTNWPo6SxK78Ch4t/9csLDHKAIsDQJTJXpAoYFmY9
	ZSz65n2UChjytA+rPv1BqCGAo8yY3XBqQ1Lij1nwQuRQHj5py8Uq0NNyZNJLil64CkZo
	YlE45c83eT8/cCvpm+u11RVl8g9UqAj9/nFqtLs6pyBRsNxRR6H15cwEl3N/g3v8Xtz8
	1k/Q==
X-Gm-Message-State: AD7BkJIZ5uPH4vPLv+X7aH4G1zAKSyYutQJ9goXDdN4jWfR58rW14MXMF85W9LwkpAnB7zuw+qFySg4ODj2ApQ==
MIME-Version: 1.0
X-Received: by 10.28.49.3 with SMTP id x3mr6343195wmx.4.1460162985133; Fri, 08
	Apr 2016 17:49:45 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Fri, 8 Apr 2016 17:49:45 -0700 (PDT)
In-Reply-To: <3804BDFE6D2105429FC87BEC5F7ABA16CCD56C@MXEX2010.minnetronix.com>
References: <3804BDFE6D2105429FC87BEC5F7ABA16CCD48B@MXEX2010.minnetronix.com>
	<CAJTo0LZVdjL6GtZVnTnabz_cnHwrraD8vyq_B58R2o0SpqEyVg@mail.gmail.com>
	<3804BDFE6D2105429FC87BEC5F7ABA16CCD4F3@MXEX2010.minnetronix.com>
	<CAJTo0LYxqkorjARwMUZ-mCTYUruJmOcf-Y2gnM2D5s0pOfZbbw@mail.gmail.com>
	<3804BDFE6D2105429FC87BEC5F7ABA16CCD56C@MXEX2010.minnetronix.com>
Date: Fri, 8 Apr 2016 17:49:45 -0700
Message-ID: <CAJ86T=WSeBPPRBYxLiygMwLJfJ0qEv=QQ2CaM=rb2ObkT11tNg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Andy Gikling <agikling@minnetronix.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Prescribed way to make global variables in recipes?
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
X-List-Received-Date: Sat, 09 Apr 2016 00:49:52 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 8, 2016 at 10:22 AM, Andy Gikling <agikling@minnetronix.com> wr=
ote:
> This doesn=E2=80=99t seem to be a viable option.  I=E2=80=99m still missi=
ng something I
> think.
>
> We are adding our own layer on top of our soc vendor=E2=80=99s layer.  In=
 their
> layer there is a specialized u-boot recipe for the imx6 we are using.
>
> So I try to make a recipe for uboot (u-boot-faux_2014.04.bb) that include=
s
> the vendor=E2=80=99s uboot recipe with =E2=80=9Cinclude
> recipes-bsp/u-boot/u-boot_2014.04.bb=E2=80=9D as suggested and try to bui=
ld an image
> that is going to IMAGE_INSTALL my customized version of u-boot instead of
> the soc vendor=E2=80=99s.  However, I get an error at bitbake parse time =
saying:
>
> ERROR: Multiple .bb files are due to be built which each provide u-boot
>
> This makes sense because bitbake sees that yes, in fact now there are two
> recipes that provide u-boot.

I guess the problem here is not that you have two versions of u-boot
but that you are trying to include both of them at once - e.g. one you
added explicitly via IMAGE_INSTALL and one that the machine config
probably added via MACHINE_EXTRA_RDEPENDS or similar. To fix that,
you'll need to find a way to disable the dependency being added via
the machine config (it's not a perfect solution though because if you
then try to build an image to which you have not explicitly added a
u-boot dependency too you'll end up with a build which doesn't contain
any u-boot image at all...).

> I suppose I can do something like use
> =E2=80=9CPREFERRED_PROVIDER_u-boot=E2=80=9D in my local.conf, but now I n=
eed to change my
> local.conf any time I want to build a different image (ie bitbake faux-ap=
p
> and bitbake faux-app-debug).  I really want a workflow that doesn=E2=80=
=99t require
> me to change configuration files, instead just bitbake different image
> recipes.
>
> In this project I also need to conditionally patch the kernel and I=E2=80=
=99m going
> to have this same problem with multiple kernel providers as well.

If you want to change the kernel too then maybe your best option is
just to define a new machine config (you can use a similar approach as
you used for the u-boot recipe of including the original and then
over-riding just the options you want to change).

Since the machine config is a global config file which affects all
recipes, you can also use it to set the global variables etc you were
planning to use to conditionally apply u-boot patches, so you would no
longer need multiple u-boot recipes or multiple images.

> Also, I
> don=E2=80=99t want to remove our soc vendor=E2=80=99s layer to get around=
 this error.  Their
> layer sets up the machine and all sorts of other things.  If I got rid of=
 it
> I would need to build all that functionality into my project=E2=80=99s la=
yer=E2=80=A6  or is
> this what I=E2=80=99m going to need to do?
>
>
>
> Thoughts?
>
>
> ~Andy
>
>
>
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Friday, April 08, 2016 10:10 AM
> To: Andy Gikling
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Prescribed way to make global variables in recipes?
>
>
>
>
>
> On 8 April 2016 at 16:05, Andy Gikling <agikling@minnetronix.com> wrote:
>
> So what do I do in that case? Just make two of my own versions of the
> u-boot_2014.04.bb file, and give them different names?  For example
> =E2=80=9Cu-boot-faux_2014.04.bb=E2=80=9D and =E2=80=9Cu-boot-faux-debug_2=
014.04.bb=E2=80=9D ?  That should
> work but does that make sense to do?
>
>
> As the stock u-boot appears to be sufficient I'd say use that and then ad=
d a
> u-boot-faux-debug_2014.04.bb recipe that just does "include u-boot-${PV}.=
bb"
> and then whatever SRC_URI changes you want in that version.
>
>
>
> Hopefully you don't need to make any fiddly changes to the recipe as PN i=
s
> now different.
>
>
>
> Ross
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

