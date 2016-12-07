Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E611DE00CF9; Tue,  6 Dec 2016 18:18:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C199AE00CB0
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2016 18:17:59 -0800 (PST)
Received: by mail-io0-f195.google.com with SMTP id j92so10841771ioi.0
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2016 18:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=rKlgvl5GcxL58nyGeEjeZAi6HEGG2hW1RJ7i9450Z7U=;
	b=oE70JKukD6hro9SwAyfG8R/2dHsiZfaNGkhFssZcxyE1uWil2OegDR8cZJBCxkkma1
	P2Q/Pm+ZFqr5h93L/smO84DwGvfJm3XvuqNEzzu9ENBrZwXcItJgSdTPTRtlhu2WZxTW
	0LJlF97Fb0lzcPBsI8p+tawCpExCFfsSxRpK/fU2meuUPtSeOqsCFjK6C7oD9Nm0BczL
	Dt6liAOH2XEwgl4r40DBGAUg+LqkqDS5oZVeYJA3ecsCLwJy/9+YtQPTYqd+r/rf7GU9
	wW45fn4Ys9C7EiziVg5BRzo9eBXAzPcD2n2kFe62f/VkU4Xtcfqzjnc+WPjv6dDlWj7U
	8wXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=rKlgvl5GcxL58nyGeEjeZAi6HEGG2hW1RJ7i9450Z7U=;
	b=LyP2vY1GVZn92U78XN2MMZKs2TNNKTjLC7gBwu5fL1wKap8CUJjCC6E3apt815mpkl
	EqOZHD5CclJOps5m/7Qjn4DT27keW0AU98k9xHVJ4CIgu0F9UQPMFIpGYX/uUmRxoo5/
	/JDNZR1P0H/KwOl2M/rR3en/kNCNqGwTigptfcbDXzv08idep+/cwWSgqQfBgNfvDJ/r
	JHAuPlWl75qN0Xt6hVi2cul6zNdNlLUT+4RvIbunN+NSTGh316pMhhBp/ECnsuCEZXoI
	DLbee6RHGnCu1SulHKG1kZOEGG08P4hWkGxzAdsdDjfLUGlwR4Su5FZUQzdsWch8/YL5
	wgJg==
X-Gm-Message-State: AKaTC018KOWrwks2F4Dhw9sE/qRENPzl8wMkyflgY3U8L87EWMwWedHv3PypeAH0QNMCuw==
X-Received: by 10.107.2.210 with SMTP id 201mr52357429ioc.67.1481077078810;
	Tue, 06 Dec 2016 18:17:58 -0800 (PST)
Received: from openSUSE-i7.site ([45.72.150.99])
	by smtp.gmail.com with ESMTPSA id g86sm760774iod.10.2016.12.06.18.17.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 06 Dec 2016 18:17:58 -0800 (PST)
Date: Tue, 6 Dec 2016 21:17:55 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20161207021755.GA9669@openSUSE-i7.site>
References: <19a9d76a-2c15-551a-2fce-55d8b8cfe1d0@mlbassoc.com>
	<20161203141606.2899e98c@nuc.betafive.co.uk>
	<CAK18fxFm3ttr1TJxw3+-PJD0A8WMDb0SKMMq2cJxiOwuY7=H1A@mail.gmail.com>
	<9f5e8157-ba81-7486-d761-3fd0ec5de3f9@mlbassoc.com>
	<CAMKF1sq0U1G-c266eCNCGAdw=B0Dcv0dXF7LjG8G=yPd4dFBXg@mail.gmail.com>
	<CAK18fxHR-X12Hr0R2Ba8=UToVtvWmb979k9+eQi+6yqHvbUN2w@mail.gmail.com>
	<009401d24feb$33bc8f30$9b35ad90$@neuf.fr>
	<20161206181110.GG1636@carbonA>
	<00d201d25006$c3ea6530$4bbf2f90$@neuf.fr>
	<20161206230034.3f25f7b2@nuc.betafive.co.uk>
MIME-Version: 1.0
In-Reply-To: <20161206230034.3f25f7b2@nuc.betafive.co.uk>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org, 'Gary Thomas' <gary@mlbassoc.com>
Subject: Re: ***SPAM*** Re: [meta-raspberrypi] Current master broken
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
X-List-Received-Date: Wed, 07 Dec 2016 02:18:02 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2016-12-06 @ 11:00:34 PM, Paul Barker wrote:
> Upstream effectively support one version, currently 4.4. When upstream
> made that the default branch, the changes to the 4.1 branch stopped -
> there wasn't really much overlap. Everything post-4.4 is active
> development and gets rebased at will. At some point they'll move to the
> next LTS release (4.9) and 4.4 will be dropped.

Are you speaking specifically about the kernel for raspberry pi, or in
general? Because the kernel for raspberry pi has several branches that are all
maintained and kept up-to-date. It's actually quite commendable how this
repository is maintained. Branches for 4.4, 4.7, 4.8, 4.9 and others are all
usable (ignoring the constant rebasing thing...)

> I'd class all recipes for kernel versions other than default branch
> upstream as experimental. Perhaps we should just go with AUTOREV here?
> Anything else is going to need changing really often.

Not every revision of those branches are usable for raspberry pi. Someone
named "popcornmix" has been keeping everything aligned with upstream, and
merging in the support for raspberry pi.

If you took the rpi-4.8.y branch, for example, and happened to check out
commit 356ccf6d2b0cfe9dca6c5d961bfd04dc8c0f4e64, you wouldn't have something
that would build.

The problem is they keep rebasing, which messes up the SRC_URIs :-(

