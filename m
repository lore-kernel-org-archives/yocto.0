Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2711CE01351
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:08:34 -0700 (PDT)
Received: by eaab16 with SMTP id b16so2154648eaa.35
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2012 13:08:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=+1SXvExuYmOi7fdV0mdgQZgL9vmtNKvHYz8sTOF4rvc=;
	b=vY6ze2lTlnBYlav4ilKjab+mxlI277FizioRLfYmBTcyysqo0DqnTDISR5Swdur7/4
	kU0LKbIi3oMRc+wy8ZiSDxvGC8iEgbUyQw/MMZN+tfaMS3i6q5XFWqMENC0MbNlmVFVI
	2SIJCXLtU5PLIaJt6ncB/BM3QB8Itl59NPB6UEsXeKpVsSPOLWqmSog+maE0XxtLeSxi
	tp79tgyEt79VFvVKKb2b2X4rNFz1TLFtfOBVr0awfjB+YsKyceFKTVBRiE7cuJlZ47qD
	NLPcBpDXGf16bQXaQKVxsCW0ZE00v8o7kfl/KXZ0CxvpjYR61oNEAdE+dfJiZ992lUcu
	gW3A==
Received: by 10.14.188.140 with SMTP id a12mr3642989een.25.1340050113797; Mon,
	18 Jun 2012 13:08:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.188.11 with HTTP; Mon, 18 Jun 2012 13:08:03 -0700 (PDT)
In-Reply-To: <CAH6UwN2LBTKk97jCgq1Z07RWhY0ko3oNVGjHg9tfGW7CkoD=HQ@mail.gmail.com>
References: <CAH6UwN2LBTKk97jCgq1Z07RWhY0ko3oNVGjHg9tfGW7CkoD=HQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Jun 2012 13:08:03 -0700
Message-ID: <CAMKF1srZsQW+t=N1nR_A-zQKpS9fnOB85mg9GLVLNi7Y7pkjiA@mail.gmail.com>
To: Jim Rucker <linux.mrjimorg@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Dependency Tree
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
X-List-Received-Date: Mon, 18 Jun 2012 20:08:35 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 18, 2012 at 11:58 AM, Jim Rucker <linux.mrjimorg@gmail.com> wrote:
> I'm trying to build using the code sourcery external compiler and I noticed
> that it's pulling in qemu. This brings up 2 questions-
> 1. Why? Qemu is not a prerequisite for building with GCC and shouldn't be a
> prerequisite for building with CS.

how did you conclude that its a prerequisite with external toolchain and not
with internal toolchain

> 2. How can I easily generate a dependency tree so I can 'fix' this?

bitbake -g <target>

>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

