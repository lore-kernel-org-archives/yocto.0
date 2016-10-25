Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BFE8E00815; Tue, 25 Oct 2016 13:27:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f182.google.com (mail-qt0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66357E00571
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 13:27:47 -0700 (PDT)
Received: by mail-qt0-f182.google.com with SMTP id r21so13917162qtr.4
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2016 13:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XS4dRD3HlWR16el2xzhIhD091Gt26XND9+PtNRMfjzg=;
	b=DekeYeTT8x8YEIVN7hADA4B8SZ89wfK/7OJTUEoWLuTkKY+hb/aXJ/wnpUWtphHAbz
	duXHxmje4igIKXEEUuHvLzhIJdE63+I7gEP26C3dUvSwG3KDVAQNB4JRV9fdjOAkNHK9
	T93EKg+ot8V7tF/MBoS6B9FEnkMDyRfgqfTsLqNfyb0HumJESk/FAy7l6e0ZSJjAMclG
	rMFP7QHhn6OIegiwppsaXm8NqvM30Tp0q+ez24HAka7mfU1bfmoIIM3iGvroT5SgXi5T
	5BolgYV3T7RkgSzJsiQ0tIlpk/ulG3FxgCFElDGVuQx0Qh1s03ffmbR++dJRkxzpNDgO
	lskg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XS4dRD3HlWR16el2xzhIhD091Gt26XND9+PtNRMfjzg=;
	b=hD/yTNJ7uJszOYPGeCnsFOeFPh9iuuTDGNVaEEVrWAWxlZexz467Lp9UQCzdvk8FMY
	2pm4w9bJgCyFroOqPMwL/uwAwN8z7aLhZCfBFjh8yqaI7uOFNd21cFdM1wxWWfzpQieO
	h9hS5MFys3SAnJrd4Q5zJBit4mBVEaNMYk8HIRoYIvBbU8/ojdZpqC2dxijfz4+u2VZL
	uKM9JVSrPJii9tFQCVerUYGrtRiLoB4wcUT5QrOP6ZeFiMbOaEXBoVEyu0QmWalu7Z1P
	2C11Jtl+MdeaqYzXf3yooKEYRqkYByb7gh6tHiDb/B7luUNA8u9lq0g4AhzyYrKy3YIk
	at0A==
X-Gm-Message-State: ABUngvd1UBfnAa/y6uxs47NSjE/O3XG3CpL2JKoiU82OjZFDEnqQycrlnhl+J5x3v2LsksmAUkx1BM4B29DDnw==
X-Received: by 10.200.46.184 with SMTP id h53mr21881452qta.133.1477427267239; 
	Tue, 25 Oct 2016 13:27:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.1 with HTTP; Tue, 25 Oct 2016 13:27:46 -0700 (PDT)
In-Reply-To: <92e3cde4-8269-d41f-1244-be8fd43d0f2e@decelettronica.com>
References: <92e3cde4-8269-d41f-1244-be8fd43d0f2e@decelettronica.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 25 Oct 2016 16:27:46 -0400
Message-ID: <CAHUNapRDk20w-+Jg9LSUqN7B3GXkuX7=Xsi3yyyDy7RWmGJKAQ@mail.gmail.com>
To: Luca Boscariol DEC <lboscariol@decelettronica.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: YoctoProject: problem bitbake core-image-minimal
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
X-List-Received-Date: Tue, 25 Oct 2016 20:27:53 -0000
Content-Type: text/plain; charset=UTF-8

Hi Luca,

In order for us to help you, could you please provide more information
which better describes exactly what you did?

I have no experience with any of the paid SUSE products, but I do know
that poky can be built fine with openSUSE Leap 42.1 or 13.2 on x86-64
hardware.

There is a lot of documentation discussing Yocto; some of it good,
some of it not so good. Which Yocto documentation were you following?
Can you provide a link?

In addition to the "bitbake core-image-minimal" command, what commands
did you type before that (git clone, source <...>)? Did you edit any
of the configuration files before you tried building? What additional
packages have you installed on your development host?

Looking through the details you provided...

On Tue, Oct 25, 2016 at 11:33 AM, Luca Boscariol DEC
<lboscariol@decelettronica.com> wrote:
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "qemuarm"
> DISTRO            = "poky"
> DISTRO_VERSION    = "2.1.1"
> TUNE_FEATURES     = "arm armv5 thumb dsp"
> TARGET_FPU        = "soft"
> meta
> meta-poky
> meta-yocto-bsp    = "<unknown>:<unknown>"


It looks like you're trying to build krogoth by downloading the
krogoth tarball from https://www.yoctoproject.org/downloads?

I would suggest opening a fresh terminal and following
http://www.yoctoproject.org/docs/2.1/yocto-project-qs/yocto-project-qs.html
exactly (by using git clone instead of the downloads) and see if that
helps.

