Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 650E3E00A54; Tue, 12 Mar 2019 13:02:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
	[209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F888E00994
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 13:02:02 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id b17so2365844vsr.13
	for <yocto@yoctoproject.org>; Tue, 12 Mar 2019 13:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=H7Gwtz/EfVZSNE+QrUf9wPq33sNqiweOqGhqxArBbZw=;
	b=rlfrSZoXwer7ek/7P5ixNwhbaAx264yeuCrJGdtMuVJbQh1tsRXYcGZeKDHHFud607
	w9Vyi7FUBHASJYUa9fBgV++441SbNFaAk0DDriwcCJMvRQxxDB8yIPo5BIfkgqlp4cD8
	OluMDSPmZVowx23rcf8Eoy3hwIxOFo5ndYOV9aMzkzjfHnWVpnGDEQu/fGWwNEVVzVW5
	hwCgqBl8c/zmD7FPJRl0/XFikg4bWeCxsEoaHI9U/at05NRx3eBVDCSP3KQc+S6RTu6z
	d1RBPVeWh4t4zlAnRkNtpOSqaZrYccdSOQcvaUNRuMOrVxhM2B848ZFxd0w6kFVoFOU+
	mNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=H7Gwtz/EfVZSNE+QrUf9wPq33sNqiweOqGhqxArBbZw=;
	b=Lqp2mt4zbJejakEI5+DSTGykBpU8okbozk3DBJPC2/3xioYxaB/cfCbPI7uIZIKD5o
	7/avFLh/laxPI6B0cZFnR1O/F92VEHw9/NvNIZ8hbYyTM7N4ZKzTRfsHyQ/ne27pGdRH
	APSDAUllweUDVTeVcHeUmZHy42vH3MyZQx9FXmdsQ/NGklQxawJpJ9w5qqNVaYtUWIer
	i0oiEDLSgk2yIgagx9fCTesbIY2rA8HZEODvKPMq7VQC9BQzp/uZCJjICeXSJLmXx6hF
	U34gVboCaR9h3HkH7ASdaJl3xyK24q/t5pRXGkfaRPDYBM44ipb4T2Fp4EBz3f96/vOL
	m3Mw==
X-Gm-Message-State: APjAAAWj5w1/uFBH1Ga3YgwRDE7hHwJIZ2dUqJvyU8831ePtpNhC6cOM
	C0gsNuXCJgTcFCI7hCULEld5WlcL6+BYpqwprg6TUg==
X-Google-Smtp-Source: APXvYqxOw3MbCYwZTkuom9dP3PECfAWJOpu7IEfqqcvh6oXuO5hMh5l4vMdjCSN4EO8RdiBrJAmfiCcUj8uUD3Xyx3c=
X-Received: by 2002:a67:8c08:: with SMTP id o8mr21108529vsd.59.1552420921999; 
	Tue, 12 Mar 2019 13:02:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
In-Reply-To: <CAAV2bM3odyNWNPMdOyM3xiKpiDKgaTVCW4MA8ayOsen3RkTAVA@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 12 Mar 2019 21:01:50 +0100
Message-ID: <CAMjhiJgiag68y4UmRGN16NnPoRZt9iC=L=-Q8kDHMQjzsjEVMg@mail.gmail.com>
To: Emily S <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: /usr/bin/env requires coreutils?
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
X-List-Received-Date: Tue, 12 Mar 2019 20:02:06 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Emily,

On Tue, Mar 12, 2019 at 7:45 PM Emily S <easmith5555@gmail.com> wrote:
>
> It seems like now you need to depend on coreutils to get /usr/bin/env working, why is that? Coreutils is a bit big and takes awhile to compile.
> This wasn't the previous behavior, and I'm wondering why it was changed.
>
What issue do you see without core-utils?

Regards, Leon.

