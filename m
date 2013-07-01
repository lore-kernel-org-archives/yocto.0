Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 521C8E013B8
	for <yocto@yoctoproject.org>; Mon,  1 Jul 2013 02:30:20 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id ib11so1841831vcb.3
	for <yocto@yoctoproject.org>; Mon, 01 Jul 2013 02:30:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=lUnQtvGPEY5VfcCTlHm1sql/Zr6fzYecKKycMzMzd58=;
	b=Bk9UH2B8q5R6VOJCWBWVcW1WxrnNnYbvf5yTRl+a9T4wv68rqxdsYA+rKziilEYBv4
	deMb0i4sX/5MSPZ0qfI2z7MsDVKStGgUEsvuNQ1iNGLXZX5No2CNOO6iA9hON6o1kXOs
	rsGh4TnOL3nk6vIAmSTFOm8ZJCUVarXx+d80eSYRQrJ2UpXkAHWH+e2tUqzr2+7V2Svg
	QLOL4NfSolcom7lG0CD8R28lXcj3pLeGrTsrPnpHhXtYaKcVmh4UxEi3uzK3hZlSqqF9
	MKy83Z18dqsH1g3vfE6YcDSHFsYoKrrMwT4SaCmfvEFLyfLhCTNb/k0kj00KmJhDLvJW
	B2Zg==
X-Received: by 10.52.21.232 with SMTP id y8mr7544169vde.6.1372671020034; Mon,
	01 Jul 2013 02:30:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Mon, 1 Jul 2013 02:29:59 -0700 (PDT)
In-Reply-To: <CALaXJ9kPeBKf0u2pnbso_+P97ZWtVz8ZhffUL9JaLC+gqvm4vA@mail.gmail.com>
References: <1372327574-32009-1-git-send-email-ross.burton@intel.com>
	<51CE03D9.6070202@mlbassoc.com>
	<1372670218.7808.4.camel@flashheart.burtonini.com>
	<CALaXJ9kPeBKf0u2pnbso_+P97ZWtVz8ZhffUL9JaLC+gqvm4vA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Jul 2013 10:29:59 +0100
Message-ID: <CAJTo0LYX_89+yYyS_3ChQPb3k3jgqitWwmwbGtjGJDhmVAwvrg@mail.gmail.com>
To: Kumita Bruce <bruce.kumita@gmail.com>
X-Gm-Message-State: ALoCoQl0V1aYEIeTghXMA16RUXHAF5+dI9EmHaXPXRXLEHfEQ2oWHWGYld3ajlb/eN21l9l9f0Ad
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] buildset-config: build core-image-sato SDK
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
X-List-Received-Date: Mon, 01 Jul 2013 09:30:21 -0000
Content-Type: text/plain; charset=UTF-8

On 1 July 2013 10:24, Kumita Bruce <bruce.kumita@gmail.com> wrote:
> What's the reason to deprecate meta-toolchain that is for standalone
> cross-compiler generation? Is there a replacement?

For full SDKs, generation from images is trivial now and means you
don't need to replicate everything.  I've no idea about the production
of standalone cross-compilers.

Ross

