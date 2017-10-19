Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 376A8E00D46; Thu, 19 Oct 2017 14:18:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7DA0E00D41
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:18:43 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id z11so7811215pfk.4
	for <yocto@yoctoproject.org>; Thu, 19 Oct 2017 14:18:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pE9L4BLb8A/IyZThpWdbF0fdNCuj7BYoF1kEFKqTiwE=;
	b=Q894fnbKhxLVk+EJGFjmdDZxWooSo9I0kFVtavtnrn+LReb7gcSua0SkjQw5viV8NY
	ckxB/RfBxVTsQGxcMvf9qCRg9EGBi7+4WwcvefcY2ea/NiismIOUH66ePUusy8sm4xxa
	HqQdoqIEa7VQYRlU7dmeZnQVbyjAU6J6TKlPgALJ9jzERmgGqxYoubv7wfFka8SwMx/s
	8ghAnXlV89xO+46xMVWefxDlsBjv22aFCbt1wtl0PCL41sduayUghDK+7Y1S9XZ/aTde
	AXyZb5GXczq981OkbwE7eF2zo8/C+/ny4V8Rr5sPIUTDnLVfwk5jfp3fr+7F0x6vGdtW
	XpFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pE9L4BLb8A/IyZThpWdbF0fdNCuj7BYoF1kEFKqTiwE=;
	b=SKT8tgv1INxUg+/OFzCUN/X5B/0hFVXhQ0Tz04zqyZp8HO8UiOKTfDhCz9tRlJfpmx
	gHvIfHYERp8TDoeKp3tGeoEPA/eSTpZbzQCmfQoijujOdabudha8RlNCW+iyR3ADFdGP
	2a7FJtZ3khU10lXMlS+PPG15lvUke5mx6FvhMxpEZ864AQ17+cuft5MZNBYeIa3Rtn6l
	+NcqwhGb0MVbg2qb+hOiAh9GYjNa0Diad5MGJTnEgSTxl2H/z9t/WOlO1+83MP9ZfnoC
	vcnKyVUIGWNGNVS1W1b81fdTcJsFwZnOgd++1OtJuq80LmvaFpmgw5qA8JVkY5IlduHm
	knUQ==
X-Gm-Message-State: AMCzsaX9mqiiJSvTDcUBP6RjEF7fC+ZElc2GYOJ9G/WH6o36F/2hVHEb
	/rpUAS8QLdU5sYurQjYk1C5CqJVOKz+Q1DGT0bg=
X-Google-Smtp-Source: ABhQp+QjhwyhI4sug7WX7XIwmbj89XLjjQodoS242crAcwLDBzS0PJTaMqW9Y59o90altV/NOLNa8SRXHkdKVOGACNM=
X-Received: by 10.98.166.205 with SMTP id r74mr2741128pfl.285.1508447922579;
	Thu, 19 Oct 2017 14:18:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Thu, 19 Oct 2017 14:18:11 -0700 (PDT)
In-Reply-To: <1508441896.4636.70.camel@gmail.com>
References: <1508364829.4636.30.camel@gmail.com>
	<CAMKF1srFzdJusbLTTEikKQHrzKinot3=YgR+nkegsKGUCbM6tQ@mail.gmail.com>
	<1508441896.4636.70.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 19 Oct 2017 14:18:11 -0700
Message-ID: <CAMKF1sqz8cCN=cE4zoc-HVH1K5FhAQdTkXDMuTCw1H763Www3g@mail.gmail.com>
To: Marlon Smith <marlon.smith10@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building kernel backports for ARM with Yocto
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
X-List-Received-Date: Thu, 19 Oct 2017 21:18:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 19, 2017 at 12:38 PM, Marlon Smith <marlon.smith10@gmail.com> wrote:
> On Wed, 2017-10-18 at 22:50 -0700, Khem Raj wrote:
>> On Wed, Oct 18, 2017 at 3:13 PM, Marlon Smith <marlon.smith10@gmail.c
>> om> wrote:
>> >
>> > Hi everyone,
>> >
>> > I'm trying to build the Linux backports project to get updated wifi
>> > drivers
>> > on an older kernel.  The problem is that when building backports,
>> > it first
>> > builds several tools that need to be run natively before cross-
>> > compiling the
>> > rest of the project.
>> >
>> > I know how to write a bitbake recipe to compile natively, and how
>> > to write
>> > one to build for the target, but I can't figure out how to combine
>> > the two.
>> > The backports project has steps for LTIB:
>> >
>> >  %Build
>> >  export PATH=$UNSPOOF_PATH
>> >
>> >  make menuconfig prefix=%{_prefix} \
>> >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>> >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>> >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>> >
>> >  export PATH=$SPOOF_PATH
>> >
>> >  make prefix=%{_prefix} \
>> >    CROSS_COMPILE=${TOOLCHAIN_PATH}/bin/${TOOLCHAIN_PREFIX} \
>> >    ARCH=$LINTARCH KLIB=${TOP}/rootfs/lib/modules/%{kversion} \
>> >    KLIB_BUILD=${TOP}/rpm/BUILD/linux
>> >
>> >
>> > I believe what I need is an equivalent to the line export
>> > PATH=$UNSPOOF_PATH
>> > but I can't find anything in the Yocto documentation or mailing
>> > lists that
>> > would be equivalent to that.
>> >
>> >
>> > Any help would be much appreciated!
>> You might try this out
>>
>> https://github.com/kraj/meta-himvis/blob/master/recipes-kernel/linux-
>> backports/linux-backports_4.14-rc4.bb
>>
>> it does not work out of box but with few fixes here and there it
>> should work
>
> It looks like that recipe inherits backports_module and kernel-
> backports_module-split.. do I need those files as well?
>

backports_module is merged into recipe itsellf. Other one can be
replaced with inehrtiting
module bbclasss

>>
>> >
>> >
>> >
>> > Thanks
>> >
>> >
>> > Marlon
>> >
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >

