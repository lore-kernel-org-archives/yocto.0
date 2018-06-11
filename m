Return-Path: <pidge@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 073BBE02214; Mon, 11 Jun 2018 08:55:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 178A8E00D97
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 08:55:02 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id j15-v6so17584666wme.0
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2018 08:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=MGJdFgcjoOk5QKpr1HcwZIWMqaRf9vRBGQxM6fudMbo=;
	b=DA2OvMPlOpW65rHDBXCPBZKIMAuDFmnCisobL0ROINirflzggWyN2vts3X+q69qoSE
	+C5zBzNctHuMq1/rX3zoRqcBVugM4Y4mO0vIb9588HpXX3pb9iNhc+3eK4exNK8rexdP
	kCd/gcEY7D66nTUQixjqyax30brBTAa4Lbpa3z4NplODgvgGI67k8UVALnLvfIQEPR3A
	/6R8GWVCed1s+eQ1weAUrgg1+Z0Nf2KZUSp31d6VKcgt7frE7k0JJASzb2ny78TtTo/r
	0+QUTLjkTm7Vbcdj2Aj5ZCESetxXaEAxPbidTHsOAkDQs2Gib/yQhBAxtOiSFTyLyrxM
	Ls0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=MGJdFgcjoOk5QKpr1HcwZIWMqaRf9vRBGQxM6fudMbo=;
	b=Q4mfcl3mMIiv3TGpKbB12T3GGq4cvqJ0GEFpaoyhgzYU6TWHo7+BBN9wFl6KrmvB9Z
	tPF/rkWxfw9lEuhdLAUH54U+MZyE3Y+e6FzfUChY+dFibaNCk+iXiyBxxkU61em+XYpu
	T4CIZ/gM5CI9OKxwtKdYiaDYZGEPCPB3x2PL+HzEfEqbSt6fFoDVSTeGuLvintPkoZDT
	R6ThSggWAq1ZEMwm46s8h/YRmye6K9AcYX+iBkf958PNcOID10hRSsfnHA/UkthIgIAE
	mPz54Wo3VNw5m2NQaDSz0wAVPbY5DCnxvND0PrhBQrHEKxtmmExAdCDSSlSlt+B0+ASU
	pF3w==
X-Gm-Message-State: APt69E2BB3efx26Y7OURUvZ14Qi+ALNoBBYkkKXLAIryDH/F1aVey9r6
	bd0SKUMVVqf1PTBubh6w/DEkLmB5qRiMcHbkfb373g==
X-Google-Smtp-Source: ADUXVKKefGjIpejIYT5xigJIhO2vhRKP09zdx/pxEFemJ5gN8M/mDJMXFq2b6Uu2WYaTboltrYvKuBqcEh4NqloZPlE=
X-Received: by 2002:aa7:c756:: with SMTP id
	c22-v6mr19411615eds.144.1528732501322; 
	Mon, 11 Jun 2018 08:55:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:b566:0:0:0:0:0 with HTTP; Mon, 11 Jun 2018 08:55:00
	-0700 (PDT)
In-Reply-To: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
References: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
From: Beth Flanagan <pidge@toganlabs.com>
Date: Mon, 11 Jun 2018 16:55:00 +0100
Message-ID: <CANik3vGehMFhJZdReNZ3eJo=bp8SRFBRnP1G2ntqB8xri009eA@mail.gmail.com>
To: Michael Habibi <mikehabibi@gmail.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Generating license/manifest for a specific layer?
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
X-List-Received-Date: Mon, 11 Jun 2018 15:55:03 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jun 11, 2018 at 2:46 PM, Michael Habibi <mikehabibi@gmail.com> wrote:
> Our use case is to capture the license files, manifest (package/version),
> and download information only for packages we modify/add. We use our own
> layer to modify/add packages, everything coming from standard Yocto layers
> are untouched.
>
> Is there a way to generate this information on a layer-by-layer basis,
> instead of a full manifest that includes all standard, unmodified packages?

The easy (cheating) way, would be to modify the tmp/deploy/licenses
artifact post build (I do it to remove -native- and -cross- from
things I distribute as I'm not actually distributing them) or put in a
post do_rootfs function that does it.

I guess my question would be (and this is less a technical question
and more of a legal one) is why would you want to only include a
manifest for only part of what you're distributing (or am I
misunderstanding what you're trying to do here?)

-b
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

