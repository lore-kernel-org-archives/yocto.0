Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02CEAE0146C
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 03:27:27 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id ib11so2076244vcb.34
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 03:27:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=KaJpr/a8r1Gq2pJIxJlLrUu8/8pXSJKHMtPHJt5Z0Pc=;
	b=mP6sdxEE9lyLoJ/Ymr/lIAm+VMqwB5M3eupDQz/iicTJy08O9AyP7YamAVv753cAb/
	KaUR/MTuTPcrUfFiAOFE65abANsRBFgmjThQ4abA81u9KGkqP6rNk5La5XAKbjfUHQbg
	Y9d+s3PZHkxuTXJJm3SbYzygUwXxJ99otGXjFNwUgfrxHzOsDBWkgI9mZjagbDMnYMXh
	kXXauoT4yWZQGWeJk+WllfHd8S9oMA5kgqJl9cwKE0nl3qTcQpV75Kxhw07/b1KI+ySF
	lLea4TCjQMSg9+uJmI9H3GdVUiIAKfApKiV/vJvVFrw+n+nIUQxHbu152yUOmpygelCM
	yrjQ==
X-Received: by 10.52.73.234 with SMTP id o10mr6793307vdv.29.1365762447044;
	Fri, 12 Apr 2013 03:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Fri, 12 Apr 2013 03:27:06 -0700 (PDT)
In-Reply-To: <000d01ce3742$c91dddb0$5b599910$@gmail.com>
References: <003701ce3434$f487d750$dd9785f0$@gmail.com>
	<CAJTo0LZn4dD97s66fkGOnYtmj86ZLEcdfNk2wGk989WTYi6ZEw@mail.gmail.com>
	<009101ce343e$8db88560$a9299020$@gmail.com>
	<CAJTo0LaQ76oZK3PDPnjhgVoQFjMnMkr1tGiVtXJ-U=qfhNg5Pg@mail.gmail.com>
	<00e801ce3452$67c501d0$374f0570$@gmail.com>
	<CAJTo0LZ_j=GiuDT=9QFWSEmUGc-t9U209WqJpgb5ULYKNYtBbw@mail.gmail.com>
	<001b01ce3480$ac63e850$052bb8f0$@gmail.com>
	<CAJTo0LZQ2ZhDFU-5ggpa1COfXVSs9_-W5k4muJyLpNFi2FQzVA@mail.gmail.com>
	<001701ce35b5$708f5f40$51ae1dc0$@gmail.com>
	<51657C37.9000901@windriver.com>
	<000d01ce3742$c91dddb0$5b599910$@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Apr 2013 11:27:06 +0100
Message-ID: <CAJTo0LY4eFJDY3fPCaO-cYm_tyJSjqvGjx0HYgf84jp79P1DTg@mail.gmail.com>
To: Andreas Enbacka <aenbacka@gmail.com>
X-Gm-Message-State: ALoCoQkhmYIZecmSik10A/RWuaLew8wk5s6t9HsN+6k2q6J+9eO/3x4CTLISJ4wgl/UNmB5V7nzZ
Cc: yocto@yoctoproject.org
Subject: Re: Problem with mouse and keyboard detection in yocto (core-image-sato on emenlow)
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
X-List-Received-Date: Fri, 12 Apr 2013 10:27:28 -0000
Content-Type: text/plain; charset=UTF-8

On 12 April 2013 06:58, Andreas Enbacka <aenbacka@gmail.com> wrote:
> I tried to execute zcat /proc/config.gz | grep EVDEV, and it produced the
> following output:
>
> #  CONFIG_INPUT_EVDEV is not set
> CONFIG_USB_VIDEO_CLASS_INPUT_EVDEV=y
>
> Does the above shed some light what could be the problem with the image?

Erm, yes.  My atom-pc kernel has CONFIG_INPUT_EVDEV set.

There was a bug where kernel configuration was dropping fragments, so
you may want to try fetching the dylan branch (as we're about to
release) and trying again.

Ross

