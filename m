Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f182.google.com (mail-ea0-f182.google.com
	[209.85.215.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDAFEE015A6
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 18:34:18 -0700 (PDT)
Received: by mail-ea0-f182.google.com with SMTP id o10so2440275eaj.27
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 18:34:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=bw23tRzMQ+kPecih0i2N5wI642J+SSnB8hqGo3x/L6Q=;
	b=Jm9od9pGDxzQISvRO0h/lMWdl7b99jhFEKwin40fQLzJbTVpM/raZtPf13W08Dd8Ae
	AL2RWA2h8tmrLSvNnocHkYopxrsaUmctwC7j8Cz0FOuyz0oFqkMV/Wq1rfpr5axjecfm
	6dZbfewdPZLOf3gyFSd0y6z0jDWBYf2cXpNXd9A71rmryz8z3Fhkmn08ZVykltetbwCX
	5vPkIqkTtwiIs6yGD4XhQr2RXm/zc0eoHvj9ZEQke7wf4U0zYxy70kOYEDHG3AXLXpq7
	h0zID/1g7jDxO5elzknysOreBMGmGWjTYr517tW5e31mUuQ2v1HD73ujaaznI90pwsG1
	hOsw==
X-Gm-Message-State: ALoCoQlfAaKe180HWOQpIngW9ocLZVGk7+dS3uiYYzXkv5l+bQhNiZto7DhFSxnDa1nc1O2OHWIl
MIME-Version: 1.0
X-Received: by 10.15.22.67 with SMTP id e43mr7920636eeu.47.1379381658137; Mon,
	16 Sep 2013 18:34:18 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Mon, 16 Sep 2013 18:34:18 -0700 (PDT)
In-Reply-To: <20130824141107.GG3544@jama>
References: <CALmOhgkofBhyjM_MyFQ8tYYoVHtMNTY4S6G2oNuj+NEMw0GtCw@mail.gmail.com>
	<CA+AhUGz7SqxrfrmfDk+421viOUm3K=AbO-rAZF1+YqW7B=YB2A@mail.gmail.com>
	<20130824141107.GG3544@jama>
Date: Mon, 16 Sep 2013 21:34:18 -0400
Message-ID: <CALmOhgn0tvpdSPs4RnJGy0HnRz2i_87Woww=B=bfoyWMNLxCQQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Martin Jansa <martin.jansa@gmail.com>, marek.belisko@gmail.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [DYLAN] RPATH issue with qt5's qtwebkit
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
X-List-Received-Date: Tue, 17 Sep 2013 01:34:21 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Martin,

On 24 August 2013 10:11, Martin Jansa <martin.jansa@gmail.com> wrote:
> You can see do_configure_append in qtwebkit.inc which is removing bad
> rpath from qmake generated Makefile, this sometimes doesn't work

Yes, I've been seeing the exact same thing. Although this _append
claims to be fixing the rpath issue, I'm still seeing QA issues (which
lead to errors) build packaging qtwebkit.

Interestingly enough, the _append you mention is only trying to fix
QtWebProcess but I'm seeing this rpath error occur on both it and
QtWebPluginProcess.

> Of course the real fix for both issues would be to fix .pri/.prf files
> to prevent incorrect Makefile to be generated at all.

As you, Richard, and everyone else has mentioned it would be nice to
have a "proper" fix instead of things which patch up files afterward.
This is why I like Marek's proposal since it fixes the *.prf file
before the build. Looking through that patch, however, I'm wondering
if it couldn't be a little cleaner? Marek's patch simply comments out
a couple lines. I think it would be cleaner to just remove the lines
that are causing problems and/or investigate whether or not that *.prf
file is actually needed at all in this build environment.

Are there any comments on what Marek has targetted? Would others
consider this a "proper" fix (if the patch were cleaned up)?

Best regards,
    Trevor

