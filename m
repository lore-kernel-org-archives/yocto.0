Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 627BBE006F1; Fri, 15 Jun 2018 15:04:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f176.google.com (mail-ua0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE30BE006F1
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 15:04:45 -0700 (PDT)
Received: by mail-ua0-f176.google.com with SMTP id x18-v6so7330646uaj.9
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2018 15:04:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=Wyg1JwT4it7GBKn0zE8PsJkxb1HC+v/p6rqyktutRIQ=;
	b=nJ+BnC38ioRM97zMRsM4AuvN8z338noZD4Xov10RHhMCA23kjDQe7zD7XWzcv+bopi
	fvaU6sopfiGndKgjLjtQ4TqifFLZZ7t/QcxTnBZLVv23XL0qc+qlf+pxO6p0NB2FVB9y
	t7No/xv2G9whNUjst1T0COTN4tT9EBQmOccR5hyJjq3GB9gb/OXH3drRbi8YEblq+7VQ
	bPNXIR/NS+ZDzN/iY3U2Xa5gphGFG3azw5kHcV/UCFGHxmPvpT4nNyK45D+T7788r/3a
	zOBz3zAqQoukTMDcN/wgTKgNn+BslgeWKjLxV8bQrtVEoOtoH9VjF7jnY4t/kJ5/2kR1
	OcSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=Wyg1JwT4it7GBKn0zE8PsJkxb1HC+v/p6rqyktutRIQ=;
	b=Mwud+YKW5KZ1Z0shU+x3+xNsCLbu1xSL+4es0fAIhoSePtjFpd8dLxbAsrZNf6NlBg
	U5fBiA5qVnSFwOzA9tw2+sVg1rP048U2JIZddrp1MIAVKHRiuEh+VSPMZrp+zjkx18vR
	z1rdbyF2SXxtZBLCkjO3o++G+xE60YC6/ukJgmg7Uv1Gp3K4p0fK4WL4b91uk+vQ3sBS
	IpjZwqsdZtIOrU1mavlv/4ysYe5oZZjyDk6u9a+lsgz6fbao2Mw7mYDiDYftH7pl6pNZ
	9o1WscVQR/lVob7Ehcx1Zi0aHKTdtB++vI5OWpvQJUSK/LbWN1hAhljBNdHtqloXoTsr
	qWMA==
X-Gm-Message-State: APt69E1eqhTas7e53LAPWXiewc3oT479M8Gnml98rnsjxtVo+Ln3P+HD
	3BrV/DwthuJRZMcAxpEad2oAi1JsWq1pdCxVpOI=
X-Google-Smtp-Source: ADUXVKKcRjJmNMypekT+oSVShhNR7sUl5+WFPUfnMMm5W+eDkroIlkTEhlq7zBdYgiEdeoGtfEYVBfplbnGkUcl+lLg=
X-Received: by 2002:ab0:59e7:: with SMTP id
	k36-v6mr2363427uad.81.1529100285118; 
	Fri, 15 Jun 2018 15:04:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:28a:0:0:0:0:0 with HTTP;
	Fri, 15 Jun 2018 15:04:44 -0700 (PDT)
In-Reply-To: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
References: <592B3CB7FFBCEC488DD878913E3292C08EF14891@vistrex4.vi.vector.int>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 15 Jun 2018 15:04:44 -0700
Message-ID: <CAJ86T=Vkb2sTh0PX2KqTMJxfK8p0xOAZeRaYpToG=dXKvnS_vQ@mail.gmail.com>
To: "Maas, Jonas" <Jonas.Maas@vector.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto not fetching unzip
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
X-List-Received-Date: Fri, 15 Jun 2018 22:04:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 11, 2018 at 6:33 AM, Maas, Jonas <Jonas.Maas@vector.com> wrote:
> Hello everyone,
>
> I am experiencing an issue with yocto-2.1.2:
>
> I am trying to prefetch all needed sources for a certain image, let=E2=80=
=99s say
> =E2=80=9Cmy-image=E2=80=9D, by calling:
>
> $ bitbake -c fetchall my-image
>
> Next I am archiving the whole Yocto system (including the downloads
> directory) to a tar.gz file and unpack it on another system.
>
> Now when I set BB_NO_NETWORK=3D=E2=80=9D1=E2=80=9D in the local.conf and =
try to build using
>
> $ bitbake my-image
>
> the package =E2=80=9Cunzip=E2=80=9D is missing. I can fetch it manually b=
y temporarily
> switching to online build an calling
>
> $ bitbake -c fetch unzip
>
> However I want to be able to build completely from the generated tar.gz.
>
> Is this a bug in Yocto or intended behavior? If it is intended: Is there =
a
> proper setting to solve this or do I have to fetch unzip manually bevor
> packing the archive?

You don't mention how you are using unzip.

If you are including unzip in your image then failing to download it
during fetchall is unexpected and sounds like a bug.

If you're not including unzip in your image but instead your build
actually depends on unzip-native (ie a tool to run on the host and
needed as a build dependency if a recipe you build contains .zip or
.jar files in SRC_URI) then I'm not sure what the expectation is. If
fetchall doesn't download these indirect -native dependencies then it
might just be the way it is. If so, then manually running "bitbake -c
fetch unzip-native" might be an appropriate solution.

