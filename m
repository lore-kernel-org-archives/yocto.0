Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1AAFE00C4C; Thu,  7 Apr 2016 07:18:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8253BE007C5
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 07:18:20 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id f52so64109884qga.3
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 07:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mVDbqynYJ5B8mYvjdkbUbs8zINjGpkEnaz1FE7ujAPA=;
	b=axuvmUykjWg6blR/AjPA7yiZRDi8fdrRoVLyq6LNmkNqGd6/TyU5RGj99MSD79SIib
	H8LCF0rvGKVyuTuZMgFO/wnyqMTBDUuprsGpOT9crbac3SpqEWLT1g0OYuLc7ciHfNJD
	KDN/2EpefS/buVWzj4gF7ZuZalnyAZVVKUnIOjpKypKRmI9LXdurtVXQavbQ32hQHVuf
	4FlY3GAdb16Zxd4K/kYll08nXE5pEqUBt496W1qSbjyUFFmGdn4BiSWO/XBMczubi2d/
	p8dkgqhJsa0slS/Rv1xh33bo7G+DQySRrYJpxj6r0QnzqlDNqOryBd27X7yPU4f204tC
	aJzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mVDbqynYJ5B8mYvjdkbUbs8zINjGpkEnaz1FE7ujAPA=;
	b=iorhmPlE8sO7AeFM0T5wVfZpgfT6+WRkBmcx20EojKNyymnKGXH2iPKP/uIKUyffuV
	x/SS8EL4UKpRqrc1h/bIooRiQCT4pHLXNhsbTIBC66b+vfJtKyc9/WK3iy/R7zNRGI4k
	WHft3i0weSjRhnqfaGRuRc+ThBttyeUa9M60TX6G7snccJdqnNO+bqicHd5REFSh04QD
	dI6Es+zkeQ3wBnzl01jpnOQPZxx9yUtvyBzZWdq9cmV0bHK5HaKD/b6/4X0NxSImAM1h
	WZWUnf6dy/f9A8hEGNuKgKbGBsQKMW+1upvAJBFVnl6U3qXCheIln9hXl8doExUgt9yX
	hAhg==
X-Gm-Message-State: AD7BkJJBt+Hi+pQvvIvjhI0L1xliz4+2Ck+ddn9c096N8Dv45jrXJDoeSThSgJztK8k7gChKAxeUmaakbzArtA==
X-Received: by 10.140.148.134 with SMTP id 128mr4204754qhu.98.1460038699364;
	Thu, 07 Apr 2016 07:18:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Thu, 7 Apr 2016 07:17:50 -0700 (PDT)
In-Reply-To: <CAJTo0La2dvZQz2KxXC4T-vV6ZMC1FvOj1LpNDHVSHbGjUOXuqQ@mail.gmail.com>
References: <1460012758-19090-1-git-send-email-raj.khem@gmail.com>
	<CAJTo0La2dvZQz2KxXC4T-vV6ZMC1FvOj1LpNDHVSHbGjUOXuqQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 7 Apr 2016 07:17:50 -0700
Message-ID: <CAMKF1so9UkMHJBJmyxEpxHK1crKdKw3SCb02T0KrYTKvSyewQg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-poky][PATCH] poky-tiny: Switch to using kernel 4.4 and busybox for init
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
X-List-Received-Date: Thu, 07 Apr 2016 14:18:23 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 7, 2016 at 5:56 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 7 April 2016 at 08:05, Khem Raj <raj.khem@gmail.com> wrote:
>>
>> busybox based init system is available and used in many
>> other distributions e.g. buildroot, therefore use that
>> combination with mdev gives a scalable image and chance
>> to execute sysvinit scripts as well, adding nothing to
>> image size.
>
>
>>
>> +VIRTUAL-RUNTIME_initscripts = "initscripts"
>> +VIRTUAL-RUNTIME_keymaps = "keymaps"
>> +DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
>
>
> Do you really want to have sysvinit removed from DISTRO_FEATURES if you're
> claiming this lets you support init scripts?
>

 Scripts would be fine, however the minimal
image boots fine with above and the scripts add about 15K compressed.
thats why its removed

