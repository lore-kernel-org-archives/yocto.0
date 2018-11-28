Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17E60E00C74; Wed, 28 Nov 2018 04:51:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.166.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f194.google.com (mail-it1-f194.google.com
	[209.85.166.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B668E00718
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:51:11 -0800 (PST)
Received: by mail-it1-f194.google.com with SMTP id o19so4085016itg.5
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 04:51:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qvNF6BkW9GRCfURfejiEQR5OYQqMuGswfxNksAKC3TU=;
	b=lPYfh0+kVb+0JtJ8/kGGf/OZAHWrD+sb9UJQuCsMF+L2dKDZ2fowiB1oiLRdL+0eFN
	lhLlvZg9E4aCUZbckUhAFqG0trSyO3SKPMZqCuxpgSxU1MSj1wIfTKhxeAs1KDibx/rm
	OOFX3r2A7GOidTbwh0O1rRenzM/xaQSXjbz35ilrCxTfum+9ZtGJ4btrnONAl/V+nH4W
	AaSp4o4vIkuptqffqpjBGLqZXC+/BzOSTP1MBSsN+UVDuuOK1/HDK3VXGtgTPQZQiAIs
	aWySrqiA/h1iG40Lm9SFoPHwChCozxHzTP/H7Crl0OOvjm7pAcZWY1M2YsmNMsgb4G5S
	Z1/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qvNF6BkW9GRCfURfejiEQR5OYQqMuGswfxNksAKC3TU=;
	b=FfTRdasWc9SyNa2ht4Y5KV7TXTBSAzSNe6ONhgx2WfTQHv38LOty8g29tiaagMLzf2
	735Bt8NPp64dBzywqXs33062c/vErAg8xtVvHODflPn4nTkDaY2Y+yca/VlRe+c+ONtd
	5cQmD17JlCz6yJT9Qz7G0MxdohZDVwx2O82+ULSXXoUQ8knCdGS7sxk4q0/9f+ev+bqK
	nHcLS5w09EcwlEwPWkum5/vHPMsaLduvc7L6d3KwHBA7KJSQNobdlh03cuY6J8Qf0H4j
	qfJH0N6JODCiUATMnnu0EfjmpuQ5vqNIw+zIQPQe/xVp0bM24985kKq6LNNZeEOPubt7
	zSkg==
X-Gm-Message-State: AGRZ1gK0bpP5NGri1JRVyrpfe4kQB5YAtdFFV1UOUzq9TluympQiBz+F
	4i1m6ZZxXbo8O+VudgBvQH1j10OYxcJEI1bBTam/kA==
X-Google-Smtp-Source: AJdET5e2owX1dQ0KI5qsQfAqyQSGdj7sCcankLzAxeHj/XniZITViXFE8qgHRfDU0dnmNvN13NdLD2X4ALMObQ4xRLA=
X-Received: by 2002:a02:9c53:: with SMTP id h19mr32969327jal.31.1543409471534; 
	Wed, 28 Nov 2018 04:51:11 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8LzfRHc6m-ixKdU8s0icQ-XFiGvfgr-+Kw9UAEqrsdCK3A@mail.gmail.com>
	<86583590-a56f-5fa7-18d3-86f0555cdadb@denx.de>
	<CAGAf8LyBmxi4fGQer_80GH2EfcvG_zmsztpWKgP8Dxf+1wKLPw@mail.gmail.com>
	<CAJTo0LayJuXgtpzOCTnPPh5-sQQABBFU9V-eFU9mbNui1GP_dQ@mail.gmail.com>
	<CAGAf8LzXyVS1N3C3b7aG73Tn-Cs-ga71f9M_Y6A4hucnxekKtQ@mail.gmail.com>
	<CAJTo0LYpWRRHAW2V+btYmWMu5sT-Q21aL4NoK0PE91vLYusmQg@mail.gmail.com>
	<CAGAf8Lys-HNqArNa7cqJ-swg8YQbdRmaXpK58RMaoM64bukRsw@mail.gmail.com>
In-Reply-To: <CAGAf8Lys-HNqArNa7cqJ-swg8YQbdRmaXpK58RMaoM64bukRsw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 28 Nov 2018 12:51:00 +0000
Message-ID: <CAJTo0LZK6tmjpk9AjdKCMFBm-T_JH_ryOKvRUvfgpN-oc7J1tg@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Jan Kiszka <jan.kiszka@siemens.com>,
	Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Git tool/command problems with YOCTO Open Source repos
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
X-List-Received-Date: Wed, 28 Nov 2018 12:51:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 28 Nov 2018 at 12:42, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> > What can you not do with Yocto's git repositories?
>
> Please, refer to my initial email. Not referring to Poky, I guess, the
> Poky repo is equivalent to kernel.org. In other words, everything with
> it can be done with git tool.
>
> I am referring to many others, associated with github. Maybe it is
> ONLY github, which does not support git tool in full extend.
>
> So, as I said/wrote in the initial email. The concrete meta-bbb does
> not support git tag, git describe.
>
> Once I have no tags, I could not do anything with git log. And... You
> can imagine.

Why does the lack of tags mean you can't do anything with git log?

Tags are simply a way of naming arbitrary commits, typically "This is
version 1.0".  If a repository doesn't make releases then it doesn't
need to use tags.  This isn't a problem.

Ross

