Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FA9FE00901; Mon, 15 May 2017 04:53:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CBD8E003E1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 04:53:07 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id k74so92098392qke.1
	for <yocto@yoctoproject.org>; Mon, 15 May 2017 04:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fW082BU2n70YSR16xW2XwOD77/5pbM24y5bjNt072dM=;
	b=qYdjEwGjDQ7BV1BdckabhXH8aJrKdxMhQUCvm0IyAPgSOAnc/lOEtqFzLqT+KKUz+i
	+m9M7oG6n53oJGMKtYVJGod6BOuzfow4k7fzK3pxGFRwoPjOzW70Uyak5m71ZFM3lbyp
	77ji8zB6z8I0u3B93PUHivosw1JrOtgs8eYvF25hX7UTm1wlJETWZ1NXG1MHIMajF+0w
	VxlPF9gP5zeDhyZb/+ktNLavruENW7e1qELxPirXUdXw3diUnLHCWkpH+GUxdFI8O/R7
	id3twisYxM41DyISrHdfyVoiMke2tDVOpLZ6UIpZv/jMjV/U+JT6D8MDN6kFETFUZpXN
	GlyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fW082BU2n70YSR16xW2XwOD77/5pbM24y5bjNt072dM=;
	b=tCsVKCIJXOXHRqqi0ZC5U9G7WsB+EhzP7JzAKEFo05ZFjSh76lRUAimWZxMTI/ReE2
	FwhAY4+t8CMaVu1gdmgrDculqlxvjGyDqxWkMogJs1RUAzGHe+EHVaF+GIBG6QrePWXd
	yPRp8vyij0+Jh1DyRxJLlk2/8QvNgHsuJDCmqqnpHfj5RNPuWgFFXnktjpyJaVdEMk4p
	7FQtwRS5RHqry9Mv4Jknc8fV0dhGBaN56ffFBx+jpMxvwjfrr9TyR5m0to0mA6+KUYCd
	/bIrqWPkyliU1JB0rTffjqxuaOgGHV1poWRdQUHeGg4a8Xm8hReOGAYGvmI9N4isBo83
	qing==
X-Gm-Message-State: AODbwcCvj59TCAWaFRyQBToR1vq887ynWdoF8Tevarninh+m5L17YVXW
	EiFeuxe+qOyZTS26i+IIadce3HvqvTSB
X-Received: by 10.55.146.68 with SMTP id u65mr4794007qkd.77.1494849186634;
	Mon, 15 May 2017 04:53:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.136 with HTTP; Mon, 15 May 2017 04:52:46 -0700 (PDT)
In-Reply-To: <59165130.4000409@intel.com>
References: <59165130.4000409@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 May 2017 12:52:46 +0100
Message-ID: <CAJTo0LaT62340-U_=5RUhX2GsBFgiOqMgUh3q3KC5t2NvzYeBQ@mail.gmail.com>
To: Tracy Graydon <tracy.graydon@intel.com>
Cc: yocto-announce@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.3 (pyro 17.0.0) Released
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
X-List-Received-Date: Mon, 15 May 2017 11:53:11 -0000
Content-Type: multipart/alternative; boundary="94eb2c08bb90c358ae054f8eb2d1"

--94eb2c08bb90c358ae054f8eb2d1
Content-Type: text/plain; charset="UTF-8"

On 13 May 2017 at 01:20, Tracy Graydon <tracy.graydon@intel.com> wrote:

> The latest release of the Yocto Project 2.3 (pyro-17.0.0) is now available
> for download at:
>

Thanks to everyone who contributed to this over the last six months!

Ross

--94eb2c08bb90c358ae054f8eb2d1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 May 2017 at 01:20, Tracy Graydon <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:tracy.graydon@intel.com" target=3D"_blank">tracy.graydon@intel.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":1df" class=
=3D"a3s aXjCH m15bff302a8004e1d">The latest release of the Yocto Project 2.=
3 (pyro-17.0.0) is now available for download at:<br></div></blockquote></d=
iv><br></div><div class=3D"gmail_extra">Thanks to everyone who contributed =
to this over the last six months!</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div></div>

--94eb2c08bb90c358ae054f8eb2d1--
