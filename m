Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C490E00723
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:30:08 -0700 (PDT)
Received: from mail-qa0-f45.google.com ([209.85.216.45])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 30 May 2012 07:30:07 -0700
Received: by qaeb19 with SMTP id b19so1965722qae.4
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 07:30:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=KIzkBMhX3qn3PtU26RO2d0GFzVGfBMukVZrDfau0k9c=;
	b=EiQlP7usHAf2SKJmm5lBRtCocinKlBqH/ziigmqs2vzGQi+63PhRej61YMxY+xrluV
	K77NjWsC5okVVRJoyV+gmMARuJn0BTDCIbbEOh6QHZCGdDJuHjAyyiD08JNubRgXhIhm
	B8saLVjJcQcIIr70mqA4zFLY94BbVdzQJV22R+EVQAC4vhuLHqz+uQ+08JVfKpfoBTs4
	2Ktpf3GC4UaWnQcvvahIIDnJ5fu/1nirpk184SuiDDXh7uSuQHhfMcSidNbZbxFMTnvF
	gbCv96Ghnz04bg9dhV7ui9CBGBkZLoeS282OtgM7sFagstkTEyygBt6Oe53DL1mTGnnD
	My2g==
Received: by 10.224.0.202 with SMTP id 10mr10900406qac.63.1338388206752; Wed,
	30 May 2012 07:30:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.53.212 with HTTP; Wed, 30 May 2012 07:29:46 -0700 (PDT)
In-Reply-To: <3142CB09BE468C408BD5916115E8D45F0129A8@G2W2535.americas.hpqcorp.net>
References: <3142CB09BE468C408BD5916115E8D45F0129A8@G2W2535.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 30 May 2012 15:29:46 +0100
Message-ID: <CAJTo0LbO9isDBoeO-oMf3nR5+57mgJq66Q1njfEsaR1A2whi=g@mail.gmail.com>
To: "Racine, Michel" <michel.racine@hp.com>
X-Gm-Message-State: ALoCoQkuUfIHEcDKV8pd2NCArFwYlpwnXgquhFxImV20qYrYvXs3+zTh1/r3vEAyHZhuel/0vm3e
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue (syslinux ext2_fs.h error) in Edison 6.0.1
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 30 May 2012 14:30:08 -0000
Content-Type: text/plain; charset=UTF-8

Hi Michel,

On 30 May 2012 15:23, Racine, Michel <michel.racine@hp.com> wrote:
> We are creating a distro for Intel N2600/NM10 using Edison 6.0.1 and BSP
> Cedar Trail 6.0.1. The build stops with a failure on syslinux (see below for
> the last few lines). I checked the Yocto bugzilla, and that seemed to have
> been an issue in the past, but I'm not sure how to get the fix or work
> around it.

Funnily enough I was just looking at this.

The relevant bug is
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2236.  As it says,
this is fixed in master.  You can either cherry-pick the commit if
you're working from a git clone of Edison, or apply the final patch to
your edison.

I think this is a good candidate for backporting to the next Edison
point release.

Ross

