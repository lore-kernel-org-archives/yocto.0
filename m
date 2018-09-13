Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B62E3E0093B; Thu, 13 Sep 2018 09:57:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f52.google.com (mail-oi0-f52.google.com
	[209.85.218.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E0D1E005B1
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 09:57:17 -0700 (PDT)
Received: by mail-oi0-f52.google.com with SMTP id t68-v6so10055491oie.12
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 09:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=cTazgHJEqEzxFGTSEYz6kV9OCWSkEs/aLWWOCLr0WjU=;
	b=KlSsU0jkBYftjjzow9/3AQbA/lUnAzzT7xX5Dc4zHI2K42NoWEMaspkexEwK3vYht1
	nR8ECpmYkD3prMxEV3R/3+ZxNxCWEqvQiDWZG7zIUrbROoppCR7raKFpnEymAyZfRIRQ
	PgrOcBBr2vYMGFD+gKuoxbrrfx6qKJuCal7Fp1gcYKdSuwSh8SLwPhqN9fAQuwLcISxT
	RVxoQk41rJ/uBj+AhiiBEDKbbMDbQIGJaYKmQs1vBlraPmgYBNiMUaPVWvWPmlOSMhbw
	+7tQdxuBE/DztppPDNhPIBg/aonFcIXATEkEgP6/XgvcHS/taV91Xvgy1+JG7YN3D5Xu
	hZYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=cTazgHJEqEzxFGTSEYz6kV9OCWSkEs/aLWWOCLr0WjU=;
	b=Fu3s1MU24bgTXverVrO6r4Yfuj6RSXbsPUVbLjLGJVKaGkVndbFtxLm4l0iwdhG647
	RMHca5qaOidZm26ZE0OKTz8LvHi1I6PUXKHPPrzidtfbVFG5/lYftFoLXb82ARHdDn6r
	GHpCC3Aud9pOdM8cmqANitpR7qoKIzxzpVey9bJlLL2zI7P8nZmNVWDIUWe0p+PMHBeq
	sguBZ9yTzJWLczzPptKVYVZtx588mBltL9RL0yhIVTNx4HpVG3oZjBuLS4u+JtCcVHCf
	y3k4n5QefvHE/zQiWbWqzI+Cgbywa/4ESuohK6XWp2XLH/nLzaSzUr60TBh/uJR4xHKv
	B4AQ==
X-Gm-Message-State: APzg51AO9dKLJs3OSA3E3fZOGcZR9pmurUastq/+eAxtqVrwUFKNpl+s
	xyhLzbwdZQNsoFqZlkjLE5b0i+xabdAzwTlrXZ6D0Q0eRs0=
X-Google-Smtp-Source: ANB0Vdb2Spxgd9SorjaKa9jnSwQPzXuR7BpN1+d0ySpvV/+5yQnQOD4FdQwcwrGd5+mAj3AVmVhT7mCFkjU3W4nmgK0=
X-Received: by 2002:aca:ba83:: with SMTP id
	k125-v6mr6715221oif.226.1536857837377; 
	Thu, 13 Sep 2018 09:57:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:b48b:0:0:0:0:0 with HTTP; Thu, 13 Sep 2018 09:57:16
	-0700 (PDT)
In-Reply-To: <op.zo9636t6mnlnty@pc-mls.ecafaros.local>
References: <op.zo9636t6mnlnty@pc-mls.ecafaros.local>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Sep 2018 18:57:16 +0200
Message-ID: <CANNYZj9UKxFHObAuS-7x+bGLwcXakRJ-879Pf5W6iGwAxei0ng@mail.gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bitbake error
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
X-List-Received-Date: Thu, 13 Sep 2018 16:57:18 -0000
Content-Type: text/plain; charset="UTF-8"

It seems as though the build system is unable to create this directory:

/home/b/yocto-krogoth/../../yocto/downloads//uninative/acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8

You probably have a permission problem there, working from /home/b but
attempting to create /home/yocto.

Alex

2018-09-13 15:15 GMT+02:00 idealsim <idealsim@laposte.net>:
> Hi, i'm trying to build an image with Yocto on a new machine (ubuntu 16.04
> LTS)but i have this error that i can't resolve. Can you help ?
>
> ERROR: Execution of event handler 'uninative_event_fetchloader' failed
> Traceback (most recent call last):
>   File "/home/b/yocto-krogoth/sources/poky/meta/classes/uninative.bbclass",
> line 55, in uninative_event_fetchloader(e=<bb.event.BuildStarted object at
> 0x7f2015027790>):
>              if not os.path.exists(tarballpath):
>     >            bb.utils.mkdirhier(tarballdir)
>                  if d.getVar("UNINATIVE_URL", True) == "unset":
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/utils.py", line
> 716, in
> mkdirhier(directory='/home/b/yocto-krogoth/../../yocto/downloads//uninative/acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8'):
>              if e.errno != errno.EEXIST:
>     >            raise e
>
> OSError: [Errno 13] Permission denied: '/home/b/yocto-krogoth/../../yocto'
>
> ERROR: Command execution failed: Traceback (most recent call last):
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/command.py", line
> 104, in runAsyncCommand
>     commandmethod(self.cmds_async, self, options)
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/command.py", line
> 325, in buildTargets
>     command.cooker.buildTargets(pkgs_to_build, task)
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/cooker.py", line
> 1423, in buildTargets
>     bb.event.fire(bb.event.BuildStarted(buildname, ntargets), self.data)
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line
> 178, in fire
>     fire_class_handlers(event, d)
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line
> 110, in fire_class_handlers
>     execute_handler(name, handler, event, d)
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/event.py", line
> 82, in execute_handler
>     ret = handler(event)
>   File "/home/b/yocto-krogoth/sources/poky/meta/classes/uninative.bbclass",
> line 55, in uninative_event_fetchloader
>     bb.utils.mkdirhier(tarballdir)
>   File "/home/b/yocto-krogoth/sources/poky/bitbake/lib/bb/utils.py", line
> 716, in mkdirhier
>     raise e
> OSError: [Errno 13] Permission denied: '/home/b/yocto-krogoth/../../yocto'
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

