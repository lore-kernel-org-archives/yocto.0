Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE751E00D35; Thu,  4 Jul 2019 02:27:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com
	[209.85.222.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82818E00B65
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 02:27:17 -0700 (PDT)
Received: by mail-qk1-f169.google.com with SMTP id r21so4796485qke.2
	for <yocto@yoctoproject.org>; Thu, 04 Jul 2019 02:27:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9oNuuvOapBTeq5ebbWQGFLLbKH6nTLRWXDXh7VTXqDY=;
	b=Wx9/L6ZPDe1Ae3nSmioLinOermlYayzQ7HonL9iB7zzUG7UttCm/EybUXe43BGjCpy
	hc97vmV3I/2bxtf0EzeR8uwelHUydb9jsJihFG33OMcfLhmf/0xUaiJTo6wcd36FyGR8
	LAbiRLk4Z58lbXlBZApLxQ/bfWrlrdf0YEr7I7IELw1e121Y0rzOmPonqA2sEM1mQRO4
	rzDpY+76ZJ4gfnTE+ZB8y74PJloezFN82lKrRQdjVvCu4KHDZ6HOXwuR8eh4NI6YQ1AD
	//lrvQdEtD9wPNwggLqKqrmCLuu5zMBgTySqqM7y7rCFX6+A6+1HfDfM3fvOrJdTKgeD
	f0bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9oNuuvOapBTeq5ebbWQGFLLbKH6nTLRWXDXh7VTXqDY=;
	b=E0VTG1bR04pHYxJNMJ5Vf+NvmXpF9URaVm2w5dXqiP/8J46U09bbIvSt3EHYD0EoU8
	KeDQHU/4MkNQDKtChMWcHH7zO7ZKPd7G6EPtN2MtBqysvCEXwr8DMUHvwBzPiZLZq0ir
	2qBIhyn0Es/qPAxmsTcnhusdJ/EKhJIcot1iKe0RWsoEEJQs2KHkdZ9u3eV6Tu2MQZJZ
	UjEk4fDC4Rnxeq/UfbCWMp99U9HRpuxb4LgPxmPq4XFBrVUhfm0nl9oNCEpghyp0KXxD
	5qKG9z5/7b39MT3YKXocxWGk8HWZiM8Rd0XfUX2/AT6dMSRicGyPXhZfzPqalktLLzBv
	KYcA==
X-Gm-Message-State: APjAAAXR3QL07CeHd7HIGWtnzREHhmPwvg9cZ0PQu3bswxSvntodIQPC
	dKNMjCE4y0bXAoBohBKfW5KxPtjNMrX6QePOzPY=
X-Google-Smtp-Source: APXvYqzRuSpK9RKkvyLad6vost9wh76ymMLYrVM/cQPa/dQpHb5p+N+6rpR6OnnYguoWYPnYxG6woz5uSX3jmMv0LH8=
X-Received: by 2002:ae9:e217:: with SMTP id c23mr34033583qkc.227.1562232436948;
	Thu, 04 Jul 2019 02:27:16 -0700 (PDT)
MIME-Version: 1.0
References: <mailman.16451.1562092664.2881.yocto@yoctoproject.org>
	<CAD5qJ_sNwTt_ksAKcP-rFu58Kw3-Kw5eOBKG97KT_AuwL0wzTg@mail.gmail.com>
In-Reply-To: <CAD5qJ_sNwTt_ksAKcP-rFu58Kw3-Kw5eOBKG97KT_AuwL0wzTg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 4 Jul 2019 11:27:05 +0200
Message-ID: <CAGAf8LzJqeB6ecNF6B3R1t+irnESWC+0rxmqeM_HgcPDi9yD8g@mail.gmail.com>
To: Gaurav Kalra <gvkalra@gmail.com>, onureser12@gmail.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Anyone built Yocto with Qt5 layer for imx6?
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
X-List-Received-Date: Thu, 04 Jul 2019 09:27:19 -0000
Content-Type: text/plain; charset="UTF-8"

https://developer.toradex.com/knowledge-base/board-support-package/openembedded-(core)#Adding_the_Qt5_Layer

Zoran
_______


On Thu, Jul 4, 2019 at 2:53 AM Gaurav Kalra <gvkalra@gmail.com> wrote:
>
> >
> > Date: Tue, 2 Jul 2019 17:48:23 +0300
> > From: Onur Eser <onureser12@gmail.com>
> > To: yocto@yoctoproject.org
> > Subject: [yocto] Anyone built Yocto with Qt5 layer for imx6?
> > Message-ID:
> >         <CAG+Ob8YPP5=7hH0eE2iuUOJsPmBKuQds2SfX+PyZViaWfo0R5w@mail.gmail.com>
> > Content-Type: text/plain; charset="utf-8"
> >
> > Hello, Yocto Community!
> > Trying to build Yocto with Qt5 layer for Humming Board 2. But I had almost
> > a billion of errors and I am so bored. Does anyone had it built? Can you
> > guys share some steps or configurations with me?
>
> If I am not mistaken, boot2qt has support for imx6.
> Have a look here:
> https://codereview.qt-project.org/gitweb?p=yocto/meta-boot2qt.git;a=blob;f=b2qt-init-build-env;h=bec9db92b8b06e01afcea7a75d204382c6f81742;hb=refs/heads/thud
>
> >
> > Thanks!
> > Onur
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

