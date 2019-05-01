Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 694A2E00D2F; Wed,  1 May 2019 01:57:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE200E0053F
	for <yocto@yoctoproject.org>; Wed,  1 May 2019 01:57:53 -0700 (PDT)
Received: by mail-wm1-f43.google.com with SMTP id b188so938995wmb.0
	for <yocto@yoctoproject.org>; Wed, 01 May 2019 01:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=vQCv6R1l8IhSV+NkvrtDTY7lj4hpH64yC57iFcUwqBs=;
	b=XNaqYjGg76f9uQcG5JN/DuuUrP0pMTF6JVz/DOCmC7Mizbc3IwuM/jgMjpDAw27fGz
	uxKU1A+vhVjGb22AY0tRZK5A4VS9BNuWp6vEgEriH3LeFMA8F7SzilYLm2PcurjUnz+X
	gnzMDKSpf1Ouzt93IVi3OcusLLF4wIYFKViKQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=vQCv6R1l8IhSV+NkvrtDTY7lj4hpH64yC57iFcUwqBs=;
	b=cfrvYZ6LQE4r7i7HgeBhZtv9KgeBZHWtWq/kH4kAWL8M5BPuGmlCbqNrBOFOViIdso
	ZFFqW0CHy+nm0AYGzzYgQ8GzKRa+19z6dM9BDwty8I5+RowKXtJAFdqUeB5Q/72oGDq6
	p2YZoEDnx8Ydu18BGvOSPAH+WXdAlKNf37WmiPP2hRxbqIfk+yhKqPL0xh/YXCiuo9mj
	HxdxqGkYNqZsk99wd5vC0zjPT5ONLDW4uJVkmfw3KKvdBP4dAao6cP3uejTAudXmUf7h
	zyOuRupD/74rhSaE/jQXhFDhvZVZWcQJUSd8PRFnzTYNxZ3gJyA70RTb7Qjri5zqtiXI
	faNA==
X-Gm-Message-State: APjAAAUXxnT0sT4C7PbrRsth1UZFMwQFoddcU0OSUg5d8VPbw1b2WhCq
	CNohoE6TNEKD9SSQZnNCmh4GaQ==
X-Google-Smtp-Source: APXvYqzTCjd7VHojqzJx2su5ueOYVcqOSgmYgsuFr0vMNbVVsjHIP6fKjNnHJq5SoHJ1UL/XoKS9jA==
X-Received: by 2002:a1c:7310:: with SMTP id d16mr5938373wmb.65.1556701073110; 
	Wed, 01 May 2019 01:57:53 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id u2sm508266wmb.11.2019.05.01.01.57.51
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 01 May 2019 01:57:52 -0700 (PDT)
Message-ID: <3ca8cb2d31e9c295e6da1bfb161ce9ffbb0e0318.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>
Date: Wed, 01 May 2019 09:57:50 +0100
In-Reply-To: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
References: <CAA=hcWSvZZ_wTjpdKF+-0=UeMESA45VFvmauQh-FcF+B7i6_-w@mail.gmail.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: Could not find glib.h
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
X-List-Received-Date: Wed, 01 May 2019 08:57:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-05-01 at 10:43 +1000, JH wrote:
> Hi,
> 
> I added glib-2.0 to DEPENDS but it still could find the glib.h, what
> I
> could be missing here?
> 
> fatal error: glib.h: No such file or directory
> >  #include <glib.h>
> >           ^~~~~~~~
> > compilation terminated.

You probably need to use pkg-config to find out which CFLAGS to use for
glib-2.0...

Cheers,

Richard


