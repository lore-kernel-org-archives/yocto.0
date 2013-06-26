Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vc0-f171.google.com (mail-vc0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF50DE01403
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 14:17:11 -0700 (PDT)
Received: by mail-vc0-f171.google.com with SMTP id gd11so1363378vcb.16
	for <yocto@yoctoproject.org>; Wed, 26 Jun 2013 14:17:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=z7IPx6BFkSIMLzq6vDc/7/aPdqqezB+T8beHL3qJPFo=;
	b=m8UnIsnejAHzAfWVqPJdIlYVsaOJH3e+WyaJ47XlWChWSi7pPZxybZs7jJkuWpHs0Q
	xqDxndepWsEp1JXBetkyqe7Le53SkZ7NIXcsZ6iV4EtiC32VPZu4658ZY/QtiClTL2KY
	qdKUSOIZRvd18A+hl+RehHsTn0MxAU6Z6LuQ/0UOogSVoYbtlklZviRclpF6wjMWhnJv
	uR79HGSUTV5ypZhaabX5BgZQ+LsseIlKW5UgEBpQBN697EaKGgNAg04SeI2I4cwRFj3V
	NFrvIVRokjCMbCTDStQqYc5r74wxUCgHNUtIg/Q6EhFu7Lp4MtZh6XGAiPHaimCEicHB
	301w==
MIME-Version: 1.0
X-Received: by 10.58.108.8 with SMTP id hg8mr2449093veb.6.1372281430245; Wed,
	26 Jun 2013 14:17:10 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Wed, 26 Jun 2013 14:17:10 -0700 (PDT)
In-Reply-To: <CE7F8427-5728-4299-BFC3-0C3A03C7A914@keylevel.com>
References: <CE7F8427-5728-4299-BFC3-0C3A03C7A914@keylevel.com>
Date: Wed, 26 Jun 2013 14:17:10 -0700
Message-ID: <CAPhnLPDgmgzPhqFcVAsbWbeZSz_CFWV2sQAaE==43_r83bxj1A@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQlYu+e3VFb9zYHZZ3igk6HHz2AruZ2bmbqDLUHcA7Vw/bb4l04JHsUBXsTZnTveEyURoeDF
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Using meta-fsl-arm with 'danny'
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
X-List-Received-Date: Wed, 26 Jun 2013 21:17:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jun 26, 2013 at 1:59 PM, Chris Tapp <opensource@keylevel.com> wrote:
> I'm trying to get core-image-minimal to build using meta-fsl-arm / meta-fsl-arm-extras under 'danny' for the 'wandboard-dual' machine.
>
> However, I can't find a tag/branch that works with 'danny'. Specifically, when I use the 'danny' branch there is a udev_173.bbappend in meta-fsl-arm, but 'danny' only supports udev_164.


Is this perhaps what you are hitting?

from the meta-fsl-arm danny branch:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-arm/tree/README?h=danny

To avoid the meta-oe dependency add to local.conf:

BBMASK = "udev_.*\.bbappend$"


-b

>
> I also find a similar problem with meta-fsl-arm-extras.
>
> I must be missing something here...
>
> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

