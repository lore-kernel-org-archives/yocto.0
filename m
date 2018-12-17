Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8FBBE00C62; Mon, 17 Dec 2018 02:34:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com
	[209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42801E00AC5
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 02:34:11 -0800 (PST)
Received: by mail-wm1-f67.google.com with SMTP id q26so12002552wmf.5
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 02:34:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=Kgd5MgwnVlDIqfAFHDTphVq8Hs2CFkmwhOXFhqWrvaU=;
	b=g3rUNOQmGcJeeu0p0PyppZrTQTCe0siiEBPl5RFfVcheZKeOw3yzY77tkEy55NiWKv
	8niRGwDk2lybz5FYT02hN6VNIyYpjWEo9jOb7PR8rK/zN77djX2BbOhTnenV5nKewvt3
	yKqxZSoD4TBD5JbJsm9vGdIwOCu4Ml0x5gBV8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=Kgd5MgwnVlDIqfAFHDTphVq8Hs2CFkmwhOXFhqWrvaU=;
	b=itBe6LZiQV9F5GNCcYGzrUApNmksJC8mvtsqlbZUIzOPciY4O4Q3Az2DRGXEiHb0o2
	jgywIcSpqt25SFUAr4QkMDg2Dt0Dx07+m2oCNBVfKzdikSPzKFSfPmkvM0bSRW0dlibT
	C+RgL+cGEwllbIrCiOwYYG8O0pQg5jxKelHMeGA7y0Iv7wt540ubW7r6TZYiBkW9+Yxm
	jvr2pWgZbVPwWdot7koRam2f77OybWGMF8L1Ttj1i32LHXW5CWeRGnbZjZbPVvQSXHQV
	wB7wCqSA2i3/I9IFyVQd9LBkvNFQzjs/wWmWLjaum+VUu3TzV/0DLb1N+4nQuO1UfRCJ
	An8A==
X-Gm-Message-State: AA+aEWYFfc4NzvXQsarSttkOhtt+0Xcsyc5SDKs35IuxB7FX/gXc1E9u
	beL6ESGjPbjyAVgrgZIx7EOEXA==
X-Google-Smtp-Source: AFSGD/VA2EuUTjD4hJXlTpBnG933v3VdRd7/X/Gju1nj/TpL1MRHlb0U6BIb9Dx/UgvMvEsGS5sA3w==
X-Received: by 2002:a1c:f207:: with SMTP id s7mr10736821wmc.87.1545042850314; 
	Mon, 17 Dec 2018 02:34:10 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	j129sm10617267wmb.39.2018.12.17.02.34.09
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Mon, 17 Dec 2018 02:34:09 -0800 (PST)
Message-ID: <d17af21817915d847a9bb508f6380195cd76d8dc.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Richard Weinberger <richard.weinberger@gmail.com>
Date: Mon, 17 Dec 2018 10:34:08 +0000
In-Reply-To: <CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
References: <CAFLxGvzvQyM+V1=PVHKMWEa3T6MDEC-7Sxd5D_8vG1PvWNX5Ag@mail.gmail.com>
	<9505876392c2d718fbe113e56a541de7bcc2dd41.camel@linuxfoundation.org>
	<CAFLxGvwJg5nvc7cL12fN_R0CJcvLmy3eW5k29zERWCW4WqMi_Q@mail.gmail.com>
User-Agent: Evolution 3.30.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: x86_64 kernel with i586 userland plus SDK?
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
X-List-Received-Date: Mon, 17 Dec 2018 10:34:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-12-17 at 11:26 +0100, Richard Weinberger wrote:
> On Wed, Nov 28, 2018 at 9:42 AM Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > The system can definitely do it, its just not something we tend to
> > do
> > very often so its not entirely clear the best way to do it.
> > 
> > What may work is selecting the i586 tune from an x64-64 target
> > machine?
> > 
> > Copying qemux86-64.conf to qemux86-64-2.conf and changing it to
> > have
> > DEFAULTTUNE ?= "i586" did appear to start to build at least in a
> > quick
> > test here...
> 
> I went this approach for now.
> That way I get i586 userland and an SDK with both 32bit and 64bit
> toolchains.
> The SDK offers me multiple environment files to include.
> 
> What I don't understand right now is, how can i tell the kernel
> recipe
> that it has
> to use the 64bit toolchain to build the kernel?
> 
> Any hints?

I think (but am going from memory) that the x86 toolchains can generate
64 and 32 bit code with the right compiler option. The kernel just
passes in the right options if configured to build as 64 bit even if it
has the 32 bit toolchain?

Cheers,

Richard


