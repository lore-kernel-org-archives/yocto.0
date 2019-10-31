Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47C20E00DA9; Wed, 30 Oct 2019 23:56:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B595E004F6
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 23:56:22 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id s4so5387578ljj.10
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2019 23:56:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ZVbFOaE0mniUiGa/3lPLSvj/Zl0lk038toQJcQgCdAw=;
	b=iIx9qWhLcqCdFd7bSbPTS5KtbUuqJNtL964/d0O5HeE+TBwMrWfoFgSPYf8LoZUV0J
	9d1tzoiFVVnPO/03PCXe7keTcd7g1uXspjLQLjFXyvotin/dOzgM3Pitunw59GbG6ncU
	QWgQnd3icPPCCnIkaRxeaElLICc6e+QKvSUBLCNh3453gUBLRKXsTHIoFLpLlNPpzzo3
	cTzZ+vynLRjRnzlJK1keg1kGzqAvCfHFo8wSsvWDMET61u05JclBDu80rPwUh8GeYtJu
	bB9BFja+0XsywFHzIk29uYPIYngGWlIH45zxMJ/eXcJRneEf/r1qmcLbq0yd0BGFovzD
	r6zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ZVbFOaE0mniUiGa/3lPLSvj/Zl0lk038toQJcQgCdAw=;
	b=WzWW4ziJaCP+JOCcIzYqf6nBb7ZgEN+AeUMBUAQ7xVO4py5OVzvd43Pwro65crZFm4
	pbA3DsuHuvjJr8J4jQkVgzkYdzREm3DczwrQQ6xmN29JsjEBtn03hSkdNro+qTO7r8EQ
	lVKAbEYuWHoQTCxyTQqOvc8YQuUMuLyLcdcouYBT3TspI97nmB8/O6wpx8sns0VXOY58
	3UgCqdgkVEoX5SR2Y2HrzbgM3h5MP6Sky9kWni0tK0YWXT6qG5qgdLnZbPHfw5QF2nAI
	rtunN8IfkuEG/QXu1ZfOqr4zqojB/JfKHrS0WKblaGcNG32mN7SNr7CHqVEgmDljCoWs
	aL6A==
X-Gm-Message-State: APjAAAX+MUbDVHtv/Nw0t4ja4bihkx+ynvUfugk+M6ej2Kr9AXln4drx
	f2m99ENj9z3HXHUke6aotgZ1nwKuaRnvZkHecHW5QA==
X-Google-Smtp-Source: APXvYqwbIItuAXTD5XiFr6rVgXvaOof7o9icWtU+qT5/5IbEEhr+5Nw7rRhNntDy8j2IouD3fc76HDoqX37xOFK/PYs=
X-Received: by 2002:a2e:90b:: with SMTP id 11mr2703845ljj.233.1572504981160;
	Wed, 30 Oct 2019 23:56:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWQgrC0LGdejAEP=i9pnR4BS3q5XqnqBYbwD9221wkGA2Q@mail.gmail.com>
In-Reply-To: <CAA=hcWQgrC0LGdejAEP=i9pnR4BS3q5XqnqBYbwD9221wkGA2Q@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 31 Oct 2019 07:56:09 +0100
Message-ID: <CAP71Wjwk-X6Aa+KsZjTwf-JnoKjwZPHnE0ctTYxEGzn8kSDskw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Which recipe for qmicli?
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
X-List-Received-Date: Thu, 31 Oct 2019 06:56:23 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 31, 2019 at 7:26 AM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> The qmicli is in libqmi-utils in Ubuntu package, but I could not find
> Yocto libqmi-utils, only libqmi recipe, is qmicli in libqmi?

yes, it is there. There isn't a 1 to 1 mapping between debian and OE
package names. But if you build libqmi recipe, you will see that the
libqmi package includes qmicli.

>
> Thank you.
>
> Kind regards,
>
> - jh
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

