Return-Path: <philippe.gislard@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BD95E00E49; Tue, 23 Jan 2018 10:31:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (philippe.gislard[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 265FAE0085E
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 10:31:53 -0800 (PST)
Received: by mail-wr0-f171.google.com with SMTP id d9so1639744wre.3
	for <yocto@yoctoproject.org>; Tue, 23 Jan 2018 10:31:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=pJ9DRwA9IwFB4jtqB6lD6PDzAzLp0MV+jdhbqcCNNMM=;
	b=WVUn68UHrzd+ZzRlxGFJWFgj0jY9QZjIrH/TyVrkfyl9PVWG21fxXtOx+oZ9MT+VZI
	UFPvhwTcOIjQl60KgbKSodQUHOeVJYP+TkRy0ASlo9wMeqH6RbbEOEkkNyp8m0r+Uxre
	+Cf5yjoStkEH2jNpNfZysdcon2P7NqvjU4ZUrt0qC2AwcBG1wqcUYIGAQhSRIf+em9t/
	Tw5TxkiaxOBK0sVZ0TGa9iADzYUGoU1HwtqVo+GUr03DDIk45zt3JNW0vDG+06yYAK2F
	sPsqlTJ/6bbKD9pie3bfaAzJ5v50gY3KVjGV6pVgpsuAEAfj3U+H17kWWDcrlpggOflN
	SBNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=pJ9DRwA9IwFB4jtqB6lD6PDzAzLp0MV+jdhbqcCNNMM=;
	b=T1HqcpC1dPd+ziqiP9/sYmLbTSDA/hrC6WLFo9H3LxAn8N7p0eRiY0r4wjCpfiO50Q
	nlk6FdZlT+NE4GP5DyoMP38jfQGf7THSkSVuIQNCLGAzOcB0BorD7SF/DRsxh2yMoKGv
	AD/mvUZR534uH110ChGUuf+zRiWtJNhD5Cnr3EMxEx8gpMCZYRpLyeQWVRaR/pETZ/64
	/zvheSzWXZasYSTtSN6QC3Aq+7ZxAfXHY9wa6SzuO4RhmaJNlkNH7rDTvWQ4yhZSqmN2
	u5fQ45FaUx/0lhjt7EgVTIZPx0T0opRzm1y1byd5a93rNzqXrEJRPRQACdXmcjmvVtHd
	hyGg==
X-Gm-Message-State: AKwxytdq72SytuqplTI9KaaxY0oOwXO6f7W97U9bFhy0UW8Xrsu2y6Hg
	GAEPg9X8mAfs+M2FkyJUgxk1ougvAwIEBabUSLBEgw==
X-Google-Smtp-Source: AH8x226E3am+Of19HDZk+lpvDElBfYGyw1yNU81nAf+EqF7aUA1XQb8CUnD2t2gYALLJAy/9KRb17t/iR5IdxlBwYvU=
X-Received: by 10.223.185.21 with SMTP id k21mr3340548wrf.37.1516732312490;
	Tue, 23 Jan 2018 10:31:52 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.178.232 with HTTP; Tue, 23 Jan 2018 10:31:32 -0800 (PST)
In-Reply-To: <CAM0bAiUQ05Z0R=MN-nLCFjCE5eu29bs6rTORJSKeia9Vj19wTw@mail.gmail.com>
References: <CAM0bAiUQ05Z0R=MN-nLCFjCE5eu29bs6rTORJSKeia9Vj19wTw@mail.gmail.com>
From: philippe gislard <philippe.gislard@gmail.com>
Date: Tue, 23 Jan 2018 19:31:32 +0100
Message-ID: <CAM0bAiVaoaTHmF7C6hVKF=TneeQQwxmZf7UvPBJFBr+r8_xpaw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [Eclipse Yocto Plugin] Standalone pre-built toolchain
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
X-List-Received-Date: Tue, 23 Jan 2018 18:31:55 -0000
Content-Type: text/plain; charset="UTF-8"

2018-01-19 20:54 GMT+01:00 philippe gislard <philippe.gislard@gmail.com>:
> Hello,
>
> I tried to follow this wiki:
> https://wiki.yoctoproject.org/wiki/TipsAndTricks/RunningEclipseAgainstBuiltImage
> But with Eclipse Oxygen and the corresponding Yocto plugin.
>
> The Plugin won't let me save the Standalone pre-built toolchain.
> Clicking on "save as ..." or "Rename" has no effect when the radio
> button is set to "Standalone pre-built toolchain"
> When I close and reopen the seting window, my settings are lost.
> Clicking on "save as ..." or "Rename" works well when the radio button
> is set to "Build system derived toolchain" and my settings are saved.
>
> Am I missing something ?
>
> Also, when I try to setup the "Standalone pre-built toolchain" it
> seems I have to rename the sysroot/host_folder in the sdk installation
> directory.
> By default it is named with: ${SDK_ARCH}${SDK_VENDOR}-${SDK_OS}
> It seems that if SDK_VENDOR contains the word "sdk" the plugin won't
> accept the directory (ex: "i686-mysdk-linux").
> It displays a "Toolchain and host arch mismatch." error.
>
> Should I downgrade to a previous eclipse version ? Neon, Mars ?
>
> --
> Philippe GISLARD

I'm ashamed... My SDKMACHINE was not set properly.

Sorry for the bother.

-- 
Philippe GISLARD

