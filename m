Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD658E00AF0; Wed, 24 May 2017 21:17:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.173 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1170E00726
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 21:17:42 -0700 (PDT)
Received: by mail-ua0-f173.google.com with SMTP id j17so108648518uag.3
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 21:17:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dyjVmydEvAJFcLE9FpAmZQNsz1XTzIl9GgAh4skwzH4=;
	b=uX5zsGDz8jNF0MoBM2wi3+cYMfM726DxnMlT9MA4Nxl6Ne9GYQL0JU2p6s5BvhZxnl
	jNUExPpNowzxuZdb2SK++60ziUSG7DkodPvrjMW22vOwc/wHuILgg/40WmEcrIHvwFJU
	OxuQJyFpY0GbMpztRrnD5PLJserF/mjgdb+CbQTjhC7avVqUh9+LlnWgQSZal/cdMk1b
	SZmKNbkrWojdH2UdSZMRUIrFC4GoZjEP7b1I186v3DT25aWxVxCskpoIEZVIhVVruajT
	I4MSF/sZC1fLuE5+kUQMLAcJpXaTSH2z0t4nLaZI1tVq6WHZvsGEsF9Z5Vkk54IeOzAD
	QfNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dyjVmydEvAJFcLE9FpAmZQNsz1XTzIl9GgAh4skwzH4=;
	b=YYqzyjJ1sryh5HhwBrFRHr76iW0QLJAzMXbULlaoDgoPRpRG9i4IeiaXrc+GQp2Uwy
	wXdU3xN75o5LckqGbZM5986bGo2bK9YzsEQ7xh/1/q3PQus2ZXCRDQL2ikJhyp74GJ4I
	N+3/lsuse8UaNNjqvthmngsot2nawPejkxA+4WVhIfIb98igey7uV5hgyklccEjwnPuK
	wL8sPSQavNW0pWeZnBDw6wmFNTa+bsxM1Bf4R9IsjwY83AvFwgYFun5n2Aol25zjqDcy
	iwcRcPwLRPNy1JKE8te3vMfUgMW3q5sFDb2NCmA+yn70SbKT5TMqjAi5CmzARnk/cloS
	JdJw==
X-Gm-Message-State: AODbwcACaF/1RNt1LYZfBDAZG721IyuBQBi1oXYSLb/iuI4IntJGDG2i
	c9H2dkOkIUAtn4uGHWVKHloI06j3JQ==
X-Received: by 10.159.33.71 with SMTP id 65mr20319585uab.50.1495685861569;
	Wed, 24 May 2017 21:17:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Wed, 24 May 2017 21:17:40 -0700 (PDT)
In-Reply-To: <CA+chaQeKQqN-6M49Myi91RBxVM5ADT8Qu=oFQkik9sqKZKEbsA@mail.gmail.com>
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
	<50e98ce0-ba47-6071-062a-b2ca557c419c@linux.intel.com>
	<CA+chaQeKQqN-6M49Myi91RBxVM5ADT8Qu=oFQkik9sqKZKEbsA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 25 May 2017 00:17:40 -0400
Message-ID: <CAHUNapS84mosYCebgN2wNvd=NV-WQN9rT5XRK8vOSBcd0JNf_A@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Thu, 25 May 2017 04:17:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 24, 2017 at 1:16 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
> My "bitbake world" builds have few components like this, webkitgtk (used to
> have webkit1, webkit2 and webkit2-efl as separate builds), 2 chromiums (x11
> and wayland), cef (luckily broken and whitelisted for a while), firefox,
> qtwebengine, qtwebkit. Each taking usually even more time than "simplest"
> webkitgtk2.

...speaking of which...

It's probably about time someone sends a patch to remove cef, it has
been a while since anyone cared for it.

