Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C481E00769; Fri,  8 Aug 2014 00:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.219.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oa0-f43.google.com (mail-oa0-f43.google.com
	[209.85.219.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECEB5E00744
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 00:54:46 -0700 (PDT)
Received: by mail-oa0-f43.google.com with SMTP id i7so3824748oag.16
	for <yocto@yoctoproject.org>; Fri, 08 Aug 2014 00:54:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4Wc3DtbYANMwpg9+Qz2XZSB4bR+p+ArymZiz8esP/Ck=;
	b=bt8QzcC37l1sEYncFNLr4LKH214mj+nEqN+VX/H+cv41G8ZQKUj8t22lPyfSAgq8NC
	4dUXrgbyAbCogrl1jIT2eUnHpzTKVKCWjkD49CP9sTftOTzlfURjFG+m+qn69r8c/Wfz
	fkYIH8PxXZyLtA3K03zlypJ3sdV9Nb1TSkmViNwP8djiMTY/BoaaRLGjwuKnHTzQ8wEM
	bA/EsQe6nl9pFRPsPgofbrgAWzbwLD7wo7ErPhWixzPbQ73SGL/Md7+fYzdY4AZ51emH
	XjJN6tE8PdEIQQ0+TGo4fLzluPgSHkFkjhFJYvXfrja3bxfs9ATyRnYJ2LCvB0Os3sMW
	Cq3g==
X-Gm-Message-State: ALoCoQnCsIw6pmu1oKFcOEGvDpAJk+gQlpyEcumJh3tWZDbmXJ/dHQ/BgWU/QXGLyRLv6ZoBOHfB
X-Received: by 10.182.29.234 with SMTP id n10mr28687752obh.67.1407484485506;
	Fri, 08 Aug 2014 00:54:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.171.168 with HTTP; Fri, 8 Aug 2014 00:54:25 -0700 (PDT)
In-Reply-To: <2374073.Q4LByM6bcI@peggleto-mobl5.ger.corp.intel.com>
References: <1571948.CrPtZqAbFm@peggleto-mobl5.ger.corp.intel.com>
	<53E3512E.5090008@dynamicdevices.co.uk>
	<2374073.Q4LByM6bcI@peggleto-mobl5.ger.corp.intel.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 8 Aug 2014 09:54:25 +0200
Message-ID: <CAP71WjwFb-wtMa_CcXkK+Cv5KY_CEQao+rUb=pYMoWmbT80G-A@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: RFC: Improving the developer workflow
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
X-List-Received-Date: Fri, 08 Aug 2014 07:54:56 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 7, 2014 at 3:05 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Personally with how fragile package management can end up being, I'm convinced
> that full-image updates are the way to go for a lot of cases, but ideally with
> some intelligence so that you only ship the changes (at a filesystem level
> rather than a package or file level). This ensures that an upgraded image on
> one device ends up exactly identical to any other device including a newly
> deployed one. Of course it does assume that you have a read-only rootfs and
> keep your configuration data / logs / other writeable data on a separate
> partition or storage medium. However, beyond improvements to support for
> having a read-only rootfs we haven't really achieved anything in terms of out-
> of-the-box support for this, mainly due to lack of resources.
>
> However, whilst I haven't had a chance to look at it closely, there has been
> some work on this within the community:
>
> http://sbabic.github.io/swupdate/swupdate.html
> https://github.com/sbabic/swupdate
> https://github.com/sbabic/meta-swupdate/
>

fwiw, Ubuntu has started to do something like that for their phone images, see

https://wiki.ubuntu.com/ImageBasedUpgrades

I haven't used nor looked into the details... i just had heard about
it, and thought it was worth mentioning it here. however the main
design idea from that wiki page is exactly what we are discussing
here. e.g. build images on the 'server' side using our regular tools,
but deploy binary differences on targets.

