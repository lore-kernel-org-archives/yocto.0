Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64181E00CE5; Mon, 28 Jan 2019 11:36:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f50.google.com (mail-io1-f50.google.com
	[209.85.166.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D50AAE00CE0
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:36:37 -0800 (PST)
Received: by mail-io1-f50.google.com with SMTP id k2so14490739iog.7
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 11:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ysBpQqECwSyEAyo0Yvcaj6pvZg8JDZrbsFTlf42JhyY=;
	b=ptCoDBuPRDZIuTRvUCSMvmCR+h7NqVX+k7wqDSBlCE7Pb+brjWVFMVS/CvnGY+Osuf
	4RcJeHIL9sQNNI2JKHJLtSy0XFXv893AQymdqCswbZwSSYoD/rTPzGLB7iruLHOQOwlt
	HaGSSBupbKY6hnVc5b+suQyuZb/a/bafI9lntEn1TTnyKktCIGjzRK3lPwsmSi0xIMaJ
	sZ/+ZdHzF7duPDCL9e7gUFVIG9SpkOVKCw5DMyh69gOAWmnoVrCz6VBJ76zd1wNPg7HS
	drfm5EPAfVTcM2t352mcwrbRMnXgVKY8TVZMpL81dU67tD+6tdWgyt9bGlMrQ5yJYpQi
	m/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ysBpQqECwSyEAyo0Yvcaj6pvZg8JDZrbsFTlf42JhyY=;
	b=SPGpHdRlT1hMk1XlcWsOeYLc4mylZyuuT9Rx8KJMhzV86orK45PgbSO4OF7fY/qYc8
	c0g3hgT2HfkSgyb+xWlzFeFHr6wHxKuX9oLbVNVV/lciK3bNBek5UvxhNEwymFQFfdVT
	DI2q2g/Ets4hhN6RWdmqg3NjFYC65M/82rnmSLjOnSDadyduQ5KMXGt2KuwtlAK1MrEY
	fC4fYl9zxTbwzIcL+KXLbJos3Vp7J+m67VIb5RyoIA2mF2UTe0Q/mqT+w+l/u9ci7EPP
	jeT1WEKk++A0PeR9N0epLjs+Z/66bxTZNeCshz7sSPHUEdzx91t497erzTvwxTE/Z/s7
	M0AQ==
X-Gm-Message-State: AHQUAubOSYJ2bsXNH3TOnitDXzw4PYCkfHfRgOuY8V22JN7y2WPdBwxR
	0Vx8vKa5XKC+9RDpKGNjhmyqY3vI2XOyvTTkKZs=
X-Google-Smtp-Source: AHgI3IZ52l+lCtUIgyK/qb+H599SYjnVLm10NIUGJV94F91cPaMlFsGuco0a+ZSdhxADWf3vuwfAku8ujeANvZA1N1E=
X-Received: by 2002:a6b:f017:: with SMTP id w23mr12559355ioc.12.1548704197331; 
	Mon, 28 Jan 2019 11:36:37 -0800 (PST)
MIME-Version: 1.0
References: <CAGMdoFm=08uPEFYp+wXOvzzfwbZHPom1pU3ASDmDtVQ9vGsXvg@mail.gmail.com>
	<CE2E43470FE5444A811B580382FE5EDF5247BAAE08@KEMPMAIL2.woodward.com>
	<CAJTo0LZvi_H7LbfqhWuzewmCEi9HFD9_5KFuV6uPYH31Toetaw@mail.gmail.com>
In-Reply-To: <CAJTo0LZvi_H7LbfqhWuzewmCEi9HFD9_5KFuV6uPYH31Toetaw@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 28 Jan 2019 11:36:25 -0800
Message-ID: <CAGMdoFmpDqDKmgcJhaoTqCrcA7-CujCoGGUbBGyEnfXawbb2-Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [EXTERNAL] SRC URI checksums
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
X-List-Received-Date: Mon, 28 Jan 2019 19:36:40 -0000
Content-Type: text/plain; charset="UTF-8"

Thank you.  I must have based the recipe on one that downloaded a
tarball, and didn't notice until now the checksums never had to be
changed.

On Mon, Jan 28, 2019 at 11:25 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> On Mon, 28 Jan 2019 at 19:23, Lukasz Zemla <Lukasz.Zemla@woodward.com> wrote:
> > Checksums were introduced to ensure data consistency. They are not checked if SRC_URI points to repository (svn, git, hg..., it is assumed that  repository provides its own mechanism to ensure data correctness).
>
> To clarify, the checksums are only used when download tarballs.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

