Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A12AE00BAA; Wed, 14 May 2014 07:27:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f47.google.com (unknown [209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 914DBE00B94
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:27:30 -0700 (PDT)
Received: by mail-qg0-f47.google.com with SMTP id j107so2864504qga.6
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:27:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=I6rCwvc7VSmYuu/7Wr4tVskg+tlzTPq0n3MFsy0/G/Q=;
	b=AdHKxrQfpLIH7rOFoqHSte96C5AH2Gsu56TldTspU9a2XtfFBmWfepVJUPIPTy2vmO
	J6Ddu0Y/E002K1QXFLoeLajsPK6ZLTDfiLTzf7pTI230+JsQzncMsp98RnAZN3uwtfqk
	wWBnJXppEkwyu0FUfIwx9wCywibWgfiHAANrDbKJlCXA0/abT8SReuMWTXjt0tAqg105
	wakAuv4zl3ol6kMYhnncSHx8BBwmcg+e0+BTpDfgYsU3q+Kz2TgR+T+juxQymyw6P8p7
	0V/fRq5zpDrkG3D11V6WhdwZzq9XAIs1B0lwHfT6Y6Rd5bRI6TA1Njxx5A/HqwdY4reR
	PaOg==
X-Gm-Message-State: ALoCoQldJ+h7MAIlZ/Qwdwor4Fj1g5BeY7wL8oQumidx68i9JpAFprrj8K0r+tEbZ4DKKhnCmtAZ
X-Received: by 10.229.134.198 with SMTP id k6mr6524456qct.13.1400077650019;
	Wed, 14 May 2014 07:27:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 14 May 2014 07:27:09 -0700 (PDT)
In-Reply-To: <lkvu7b$qf$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>
	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<lkvsj2$vof$1@ger.gmane.org>
	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
	<lkvt3i$bhu$1@ger.gmane.org>
	<CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>
	<lkvu7b$qf$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 May 2014 15:27:09 +0100
Message-ID: <CAJTo0LZM1BAkH4BHS8=nn86MfVPah5U-HxCGbHyCLjR5XjZXwg@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:27:59 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 15:22, Neuer User <auslands-kv@gmx.de> wrote:
> Then started a bitbake. Got a strange error "LCONF_VERSION is 6, should
> be 5 in bblayers.conf". So I changed it to 5.

So that's because the Poky layers are a version higher than the
oe-core layers.  Once you stop using Poky the version drops.  Annoying
but you won't have to do it again.

> Then bitbake works, but it seems to recompile ALL packages?! Is this
> correct. (I stopped it as it will take half a day to finish).

Yes.  bitbake doesn't know that "nfc" only actually impacts a few
recipes, so a changed DISTRO_FEATURES means a new toolchain which
means everything else rebuilds.

Half a day for a build suggests you're building in a VM or a slow
laptop: I recommend using a desktop machine with plenty of RAM.

Ross

