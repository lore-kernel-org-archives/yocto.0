Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A6F7E0083C; Thu, 20 Apr 2017 05:58:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.172 listed in dnsbl.sorbs.net]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.172 listed in list.dnswl.org]
Received: from mail-ua0-f172.google.com (mail-ua0-f172.google.com
	[209.85.217.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17DB5E00777
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 05:58:50 -0700 (PDT)
Received: by mail-ua0-f172.google.com with SMTP id h2so49478962uaa.1
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 05:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JQiMYFpZ2q7BrKGac3Uk/tcXSNhllnfobLGSxfdLEBQ=;
	b=Rg0i1ve/ik3FewfcP2KoLUbg8u5YxUbBYNNLa7PaYkzCQPy51T4mhk77oLkxosyxeY
	ysr4PZythoXwZ16qYu2MaJgL+jdtdhvOGataBcfhhYhrxATFr36S3hI/KMyiOWZqP+lw
	UFWFrvUJa43yowMWlRhO8FVQRxMncvUz3iyehg6y0y0XLpGA2/qnqROFUxWrTwEhH2x6
	N47ErTpR7GTUKYSQ6beJEofnRglEbFXRiaOhSRy/OfzqpnlpyVCMHTyB50W+PiSNU8rn
	IMnPTt0NsFEmhw200I5B12rvWp0YHCC9OxMJT7Cj4vcM9GQS9rMKE/nJJk+m/DL+WTfE
	mkyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JQiMYFpZ2q7BrKGac3Uk/tcXSNhllnfobLGSxfdLEBQ=;
	b=KLv0oitJK6XWKmTl1arUAhVHNJyUKWMEr3vaaju8tqvergiHoc8e9lLgU83MHRO8NS
	TB5/LQpFZZUnKuxyn/wl2oYVfY2sowppkZdxaR7c+Bmcy27lg0V7jS/l4s9nYfxOhXvH
	mlw0rVGC24WrtTY5eDd1a+8H7f/gmMHakh+QPLhLUZA8PGdUdiXq67ChhxB33ujyr3/M
	HI5tVoes8vFPqGlnDHyb/9abFMXiRXLlchGm2l0gXUkecxBUapeqlh2RC9BtXCx2oOFp
	u7dBpH/yqcR9KdYZXBkF7QVX0vOk8G3jUk0t18hJ9uoAiWz6hqNn8chd+Zz20CjjZZqW
	4yhQ==
X-Gm-Message-State: AN3rC/5Ym0+2Eux+EnxBC2/QKHaOeGHSgB72OSovRtUZt0LTt7BLUB2O
	TKYARGSZlOJ/bkAsV/4KZBsetftShg==
X-Received: by 10.176.25.18 with SMTP id v18mr3529709uag.81.1492693129831;
	Thu, 20 Apr 2017 05:58:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.5 with HTTP; Thu, 20 Apr 2017 05:58:49 -0700 (PDT)
In-Reply-To: <007c01d2b9cd$27706fc0$76514f40$@neuf.fr>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
	<20170420071321.GA25443@linux-uys3>
	<007c01d2b9cd$27706fc0$76514f40$@neuf.fr>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 20 Apr 2017 14:58:49 +0200
Message-ID: <CALbNGRQ+NpFKMtVd=iBr1dg7fzke1gYQqiNEqNfjkZOOVf+G4Q@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Thu, 20 Apr 2017 12:58:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Apr 20, 2017 at 1:56 PM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi Trevor,
>
> I agree with you that VC4 is easier to work with - and can be patched if there are issues.
> But normally you lose the H.264 and MPEG2 HW decoders, and a bunch of audio codecs, provided by the userland/omx.
> Depending on what you're doing, you may or may not notice the difference. But I'm not sure how well you can handle 1080p30 or 1080p60 in H.264 using only ffmpeg - if you're using chromium, that's what you should be using I guess.
> My personal preference would be to use VC4, and that's what I do most of the time, but there is still a limitation for the moment, that I just wanted to point out.
> And that's why I think we can't do only VC4, and probably have to keep userland a while longer.
Thanks for clarification - and I agree with you. For me it is not a
use case but others have different needs.

Andreas

