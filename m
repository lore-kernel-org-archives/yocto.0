Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 562BBE00B28; Wed, 25 Apr 2018 03:48:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9862BE00A4F
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 03:48:26 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id 19-v6so18788753itw.3
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 03:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XOOacPIrGwGC4djw40TjFeLxkesI5QyqWcznoMlb9ZA=;
	b=sdk9WkvjeiTALkLbYhp1H3kV+nUtgbJLnUhwCYivOGCxtm5WKfwp7ChYj/zz/AlYT8
	GSs+bq3NG/ZpcXxcqZdRZndM2N4KAmGXC09vvd2daw8uiBLWpoljiG8q1GvxTVfQ8hqk
	hCnhLq/DEgT1loSobgKnK69XgciJR7NjODG0LzhnBuiNQwEjjqezt2mBkctp730yna6Z
	9VkPC5MpLvn3MsevbDjajTEmxyIVmZTtTR8+uFK2/M/z0JlLH5JqebdiRUTlf9KzpZoT
	kaylY+B7+g4wkyrpxg2C/VL1FA47yvCl+OSAYq3t+xi6ALXRwCG9Gq1p6MstQQ6f1wOZ
	TDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XOOacPIrGwGC4djw40TjFeLxkesI5QyqWcznoMlb9ZA=;
	b=rjaPiXnWgrIRXdFj2afFMHJYWlUKnzGKpSg9S+P2AnqABhMzImgAfmOe5R+aLDUwC3
	X2DmxILTAfc6fxMLR7qVNxqo518WlSPYra2exBf3ptWEpiotlEcROL9Kp7LpgxpkE742
	3YGJ+gw1DHXW1YAjrPBpCboJxx2Jv99zYdCPVMCrk040zCDYVd5SIrWlGzdPfMPDzc4h
	yHi/olhMrHovOXBrqRNzPQEl4uVYuV2gCfI7yf0iX0Rel827j366CNXn+uwWdDVRg7Kl
	cydRg/2dzp4MGau/svuFP6VEdYLKoONSL2GDEF25GlejrNDybnsp9t3CfEnCLjklH37H
	72QQ==
X-Gm-Message-State: ALQs6tD+uivADnVkh5QcXCWU7RjV98dhIMv1yNHoM7kXTmS2eLsEk0x4
	9HniUnxdOni6zh5HMrDkIBpQvVzUneOIhiZu8SY09w==
X-Google-Smtp-Source: AB8JxZoi39+NbZ0PeTpvZsCh4QotLlSc6nDrvuLrFjyDBuZzZ8CSvkHWmY2C5fdhp4Sk8aZSuiKXiWCdEhcv3kGAF34=
X-Received: by 2002:a24:9493:: with SMTP id
	j141-v6mr5092957ite.60.1524653305701; 
	Wed, 25 Apr 2018 03:48:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Wed, 25 Apr 2018 03:48:05 -0700 (PDT)
In-Reply-To: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
References: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 25 Apr 2018 11:48:05 +0100
Message-ID: <CAJTo0LZZo3Cy82z1c8ZnVwR9LL-9+dEuFhzELk=v+A8HhHveBw@mail.gmail.com>
To: John Smith <john-s-84@gmx.net>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: building recipe with buildtools, causes sanity error: Your system needs to support the en_US.UTF-8 locale.
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
X-List-Received-Date: Wed, 25 Apr 2018 10:48:27 -0000
Content-Type: text/plain; charset="UTF-8"

So my hunch is that you've a modern system with glibc 2.27 on the
host, so that old buildtools won't work.  Try this buildtools:

http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.5_M3/buildtools/

Ross

On 24 April 2018 at 19:04, John Smith <john-s-84@gmx.net> wrote:
> bitbake stops with this error message: "Your system needs to support the en_US.UTF-8 locale."
>
> export LC_ALL=en_US.UTF-8 has no effect. Do you know how to fix that error?
>
> What I ve done:
> - installed buildtools from http://downloads.yoctoproject.org/releases/yocto/yocto-2.4.2/buildtools/
>   under /opt/poky/2.4.2
>
>> cd poky
>> . oe-init-build-env
>> . /opt/poky/2.4.2/environment-setup-x86_64-pokysdk-linux
>> bitbake <ANY RECIPE>
>
>
>
> https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/classes/sanity.bbclass
> def sanity_check_locale(d):
>     """
>     Currently bitbake switches locale to en_US.UTF-8 so check that this locale actually exists.
>     """
>     import locale
>     try:
>         locale.setlocale(locale.LC_ALL, "en_US.UTF-8")
>     except locale.Error:
>         raise_sanity_error("Your system needs to support the en_US.UTF-8 locale.", d)
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

