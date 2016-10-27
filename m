Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34C34E00C7A; Wed, 26 Oct 2016 23:22:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.181 listed in dnsbl.sorbs.net]
Received: from mail-yb0-f181.google.com (mail-yb0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F37A3E00C41
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 23:22:35 -0700 (PDT)
Received: by mail-yb0-f181.google.com with SMTP id g68so11373052ybi.0
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2016 23:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VDwiUUK0hvpImpgFmjpUR25ivrBREuOj7iIWbIQ1tBQ=;
	b=wkCaKkGw0p4yPizazP9JxZd1xz7Fw0XOBFkeTxznG+JivJcC7qP0glGTTe7Lipzb80
	Gxnp1hmFaOOEiq9lHd7eGRAHtB+jz3Iq7q+dxVhpaZtc/26kPxAazcqQMZK0/42/Z8Rc
	jktslgzomnzVunaRmrVrx98XnOPCr3zSYzmQReGir79nmBuo9P5ncuh0jhECwrxcVerq
	xfdJmAiLX1EtCtzmYA8GmCk2T63FzFCUnnuiqHAa+/wCUuRRFGVZuAwU4+uMM6pm6EZz
	2I2giI47Opyg8ndvG7uEVAHb9D5v5Tfoy5kdxijtFojWUqaFEtwjRx1D8Zk7Wq7hSaNq
	1LpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VDwiUUK0hvpImpgFmjpUR25ivrBREuOj7iIWbIQ1tBQ=;
	b=S5tdvqMEV9kND/BNum9FV9UNr0hiG9ejB3WgEV4K/xdg0kXjxvi91heYL3JZcuPB0e
	GoMsfnJiDGEO4iq6WQktkgSQthsHdUnObXBFMbpSN/ROFKZ0L8XE9UZMHtzljLFYtNJA
	k6MkEAZB6H5lb1UFpHKwmLybHL17y/qCq+1tg+KEEtMLgzfsrZd7QHhXaR/AbFGqFUhP
	wapsuwZl2Yj322PpuZEhA9zZczB1/x0uWghTrwWBH+E2VmHPJwqIdO8kL0RsONFgsT3g
	OhxOSEpTKSajnkhLFRvaxbIHKWZ3VXUi9ZMrDPaddUyO8S+hUToZW86NRrRyFE4mTMEx
	+z4g==
X-Gm-Message-State: ABUngveElYU2XKn11d4276NCoJI7gJVevK5rozUlng6MPBKeEZaKlxSKL1CJAbsoPyvEw8WD8KaNPrz1VOdzAQ==
X-Received: by 10.37.171.43 with SMTP id u40mr5496486ybi.30.1477549354738;
	Wed, 26 Oct 2016 23:22:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.75.23 with HTTP; Wed, 26 Oct 2016 23:22:34 -0700 (PDT)
In-Reply-To: <56D865D5.2010702@windriver.com>
References: <f9a57cb411c94c0c8f191bad3d391b35@SI-MBX1022.de.bosch.com>
	<56D865D5.2010702@windriver.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Wed, 26 Oct 2016 23:22:34 -0700
Message-ID: <CAGMdoFkRJbK=YXzm2GDxEd-oLh2hWh+OHNQ9RoOgvB6Dwm2DYA@mail.gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to handle meta-intel/openembedded repos with multiple developers
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
X-List-Received-Date: Thu, 27 Oct 2016 06:22:41 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 3, 2016 at 8:27 AM, Mark Hatle <mark.hatle@windriver.com> wrote:
>  At some point during product development a lead/architect needs to make the
> decision to 'freeze' development and at that point everything is tagged/branched
> and only backports are used from them on.  (If the number of backports gets too
> large, you MIGHT decide to selectively rebase.)

I'm currently trying to figure out with how to control external layers
in my Yocto build and found this thread.  I'm a little unclear on how
to track a release to the version used on non-company layers.  Say I'm
using poky, meta-openembedded, meta-xilinx and then my own layer,
meta-me. When I freeze development and do a release, I can tag
meta-me, but because I also treat non-company assets as RO, I
shouldn't tag poky, meta-openembedded nor meta-xilinx (or should I? Is
this where I use git's lightweight tagging as opposed to annotated
tags?) When "everything is tagged/branched", does that somehow include
tagging the non-company assets?  Thanks for any help.

Ed

