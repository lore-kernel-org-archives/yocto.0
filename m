Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03E09E00786; Wed, 24 Sep 2014 03:05:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.53 listed in list.dnswl.org]
Received: from mail-qg0-f53.google.com (mail-qg0-f53.google.com
	[209.85.192.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD88CE0034C
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 03:05:23 -0700 (PDT)
Received: by mail-qg0-f53.google.com with SMTP id e89so5320486qgf.12
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 03:05:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bEE9foGxuVS2uqtmrEoQG7Ux70FrygYGIp6n2K+4oW0=;
	b=g333hoCHBdQd/NANmWksVD8VyQQm4i1VFP0R1ina0FAVzSeBuRyEERxx6xLVSb2W84
	mvwnm1+K5akfdBtjTUSX9gA9CKrvd4k02ZqXvtb6gb/BdZGrKw2x8jAt/pm969/XxKpI
	iLtiQDExEnqFrE8RCotnGdIbLL1tIbPuh5N/trjZ9TUiLqwCm2OeNY6mdfBFpN7kdG42
	77+gJsUhQOAZDwgImyGK2i05j05Dux7BvvB/lc6sweuURyimGwApeWX/fxVJvvTluHG1
	SnCfRAbWhjO65Bpgq1VfU4Vf9avfdy3p6+xda05zEPcQc5HPDCR0Qi4A4Ux0dlT01mWI
	vKyQ==
X-Gm-Message-State: ALoCoQmGbQZXDYbhYORFqN9JGpWl+uHUggK7B7o2NzvBV78a87AlEJsXTSpK8irU/H2y+Pupswa4
X-Received: by 10.140.27.139 with SMTP id 11mr6658814qgx.59.1411553122552;
	Wed, 24 Sep 2014 03:05:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 24 Sep 2014 03:05:02 -0700 (PDT)
In-Reply-To: <9c7f907ca73448338304b78ceb440afd@SRV-MAIL.greenflex.group>
References: <9c7f907ca73448338304b78ceb440afd@SRV-MAIL.greenflex.group>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Sep 2014 11:05:02 +0100
Message-ID: <CAJTo0LZY0JAifk+RMc5YMz7CnUsh3grvOEPM4rCBuQPt70pkzA@mail.gmail.com>
To: Simon Andrieu <sandrieu@greenflex.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Support to install TUN/TAP kernel-module-tun
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
X-List-Received-Date: Wed, 24 Sep 2014 10:05:34 -0000
Content-Type: text/plain; charset=UTF-8

On 24 September 2014 10:48, Simon Andrieu <sandrieu@greenflex.com> wrote:
> Thanks for your various helpful answers that enable me to understand better the possible solutions to connect a cellular modem.
>
> I am first trying the Ofono solution, and came to this message error (dmesg):
> Jun 11 09:11:13 igep00x0 daemon.info ofonod[1261]: Modem support (CDC support: unknown)
> Jun 11 09:11:14 igep00x0 daemon.err ofonod[1261]: Missing support for TUN/TAP devices
>
> From my search, I have to install the kernel-module-tun module.
> Could you help me to know the repository to configure for using zipper and installing it please?
> (Could you also confirm me that installing kernel-module-tun is the right solution please?)

An easier way would be to add it to your image recipe:

http://www.yoctoproject.org/docs/1.6.1/mega-manual/mega-manual.html#usingpoky-extend-customimage

Although maybe we should be adding a rrecommends on kernel-module-tun
to ofono (patch welcome).

Ross

