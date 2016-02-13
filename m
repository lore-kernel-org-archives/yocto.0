Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 253B9E00CEC; Sat, 13 Feb 2016 07:50:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBE79E00CDC
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 07:50:21 -0800 (PST)
Received: by mail-qg0-f46.google.com with SMTP id b67so83596678qgb.1
	for <yocto@yoctoproject.org>; Sat, 13 Feb 2016 07:50:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=mv7K47lEzV94wuKEEzCvyTvpvkDXEW1DYJiE5QVrqYc=;
	b=WJmxICNInH9QYd1Uh+hvw+OHRemey9l5M4o/bc7x4nvYd1HEpuD2WuGe8j622U5vZD
	6irgkgmxrIPWXPo63+O38Ru9RjUnS62p1dL5HxB9YGkdBzAiy7fxExFQL8d9Bvdf8t5e
	qCMsHcH+ujAhpjkTUyQKzwsH2V7hGHo2zbZvzOb1W/g/aKOkdg8atzFHMmjBRHe2O8Xd
	BiEjkQm1DIsuw3P3RUyBLKRXI6Ui7DAFknSRsPtDQFwHMWG0ZYtpjjInicDDoTngVK4P
	6bBQBtA0lgC1Ff8Z8ObD0r09SIkIlulQSA+JeLIzZd3dzvdAxnCp/SxZHCZasR/mwMEX
	XnxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=mv7K47lEzV94wuKEEzCvyTvpvkDXEW1DYJiE5QVrqYc=;
	b=gbrsGzfFVCX8DANo4OEsvlQyuw1uKvnyRKNobvZ8d3Hmlzc/oOqK898Oj7l5y/uVLz
	6mQCaJy6K1xHhL/6Whrb2AmpJ/sArakqQRgVeuEJkgMCwIMNw/ivstBE0Nh9JmMlZ7U1
	tr5tjRxpRgbfH5qeJHIeSuHSeQFNLgN5bXJaukRy/afZEjfLUvfDnS+oBCcwKACmoTzU
	cwozJyshkb6Fgt+dXoi4st7P4cWsa/VbCuqI38mYi2yKH0B1xjuhzYmJ3ZCOud/8Rmqh
	IHFy424y+fkC+TDygIpFrvaK86yA5IuwPuZyhrZ6UZ/80E+v8GijSb2/uqVpH4qEA9gA
	mtYw==
X-Gm-Message-State: AG10YORUs0agr3vr5KgAF8PzI+ImZvawuQdjOaCyRMidyu17c+dAxrccwChJWr/00t54irdYwdj+iRcb9DFTPw==
X-Received: by 10.140.108.181 with SMTP id j50mr9206133qgf.104.1455378620744; 
	Sat, 13 Feb 2016 07:50:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Sat, 13 Feb 2016 07:49:50 -0800 (PST)
In-Reply-To: <CAGuQk8qVipkwpmi3TR1+4Uixf4QJ-CmYuUZvwWcTjnEFiE7bWw@mail.gmail.com>
References: <CAGuQk8qVipkwpmi3TR1+4Uixf4QJ-CmYuUZvwWcTjnEFiE7bWw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 13 Feb 2016 07:49:50 -0800
Message-ID: <CAMKF1so+eGBdHvvQR7bes4T383nNB0eHBtga-yQAHbaiLvMVpg@mail.gmail.com>
To: Marius Liebenberg <mdlcameras@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libzqm recipe fails
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
X-List-Received-Date: Sat, 13 Feb 2016 15:50:23 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 6:03 AM, Marius Liebenberg <mdlcameras@gmail.com> wrote:
> I reinstalled the complete poky-jethro project. I also installed the latest
> meta-qt5 as well as the openembedded recipe.
>
> There seems to be a problem with libzqm. These are the first errors.
>
>  arm-poky-linux-gnueabi-libtool:   error: 'src/libzmq_la-tcp_address.lo' is
> not a valid libtool object
> | Makefile:1800: recipe for target 'libzmq.la' failed
> | make[1]: *** [libzmq.la] Error 1
>
> Has anyone else experienced these problems or am I cooking my rubbish up
> again?

as a test can you disable parallel build of this component and see if
that works.

set PARALLEL_MAKE = "" in recipe.

>
> Greetings
> Marius
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

