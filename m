Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 079C6E00EDD; Fri, 15 Jul 2016 03:35:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FEF8E00ECE
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 03:35:29 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id f65so20592636wmi.0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 03:35:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=IHrBzScj2IkH+2Lvv0V9rr08lcNPqYQMOR4OLd47vkA=;
	b=er30rUckm0TR6y1BPkcEuStzFIo4x1uh978ToOrEOG1gbLkDrSmTTbCJPUe7lupMGR
	BhkJur9R1G/zcrXoEyffzLaskHY9fnuWvT3obmefYywSjuUMsUXsTGb9Vr/kq6++toi3
	09Dp+ACn++Ob2vMPPPSbedsLoczzuEjo5QFgU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=IHrBzScj2IkH+2Lvv0V9rr08lcNPqYQMOR4OLd47vkA=;
	b=mgDA97820W1ezGmWkZAr/W9uomxQQfNz9NkDFeZ5f5bucMUKy1MNERNQ4109Oolg0n
	2+qGurn9L3zXB5dmL/zn4GGyObWXk0JkeYbDy7hS+UV+9mePHkaluhYz+DdyfVk5HL3P
	zVvEc2K3x4jSOZgUAoWdUwU1WmtMe9Djrvf+u+DvjF5d0s9lWMjJEdCpiCnEl89kF2kK
	3NIYmM7xvxYkD3rFsuqNuSlavfHOQ6BCcOHtgbsF1KYi+7CPRN3KWkiUM+mWa8yz9v7f
	X+4En9N7eS4mEX9/D4/oCWsHs3K4JgY+pBGxEMLf+6SVsPVQgqKyBm2WVeT14vzzo+Qt
	+lUA==
X-Gm-Message-State: ALyK8tLGd4ZdaciaZVS1TSYE7vtCcPyi+C57En9T4HQjr4L49fvg96cMHn+OhV4CFu9wN7PjqLApEyBLA6uBMflx
X-Received: by 10.194.242.168 with SMTP id wr8mr58371wjc.99.1468578928847;
	Fri, 15 Jul 2016 03:35:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.34.132 with HTTP; Fri, 15 Jul 2016 03:35:09 -0700 (PDT)
In-Reply-To: <CALf_N3YxDKyEKA++cioGfn6WHzo7sUbBZfccajduZ33dCJoUGQ@mail.gmail.com>
References: <CALf_N3YxDKyEKA++cioGfn6WHzo7sUbBZfccajduZ33dCJoUGQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 15 Jul 2016 14:35:09 +0400
Message-ID: <CAP71WjyAVTUW1AYU6ouDvXOn_3ExuM2zytcXEjctRq1C6vQcWw@mail.gmail.com>
To: Mark T <mtl1nuxd3v@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake parsing but not attempting to build recipes in layer.
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
X-List-Received-Date: Fri, 15 Jul 2016 10:35:34 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 15, 2016 at 2:26 PM, Mark T <mtl1nuxd3v@gmail.com> wrote:
> I have several recipes in a layer. I have added the layer to
> build/conf/bblayers.conf.
>
> The layer.conf in that layer looks correct for the BBFILES+= etc.
>
> when I run "bitbake core-image-base" the recipes are bing parsed ( as it
> picked up errors for missing dependencies). With those fixed it runs clean
> and builds successfully - but its omitted the recipes from my layer - there
> is nothing in build/tmp/work etc
>
> If I build my_recipe from my layer via
> "bitbake my_recipe"     it builds and I see products in build/tmp/work etc.
>
> Any idea why its not attempting to build my_recipe  when using bitbake
> core-image-base ?

You need to add your custom packages into the image. By default, they
won't be there , nor would they be built (but as you noticed your
recipes are being parsed).

see http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#usingpoky-extend-customimage

