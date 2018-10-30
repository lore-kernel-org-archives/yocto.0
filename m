Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA830E00AB9; Tue, 30 Oct 2018 13:44:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com
	[209.85.217.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 414D5E00901
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 13:44:29 -0700 (PDT)
Received: by mail-vs1-f53.google.com with SMTP id x64so1895157vsa.5
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 13:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CBG5aZDpoqKdtQ019/ayrpW7npuacZ+CVU4WJOaqHNQ=;
	b=JTdn65gTTi1jcxQR+4Q6jNv27sJgLubIZ86H5jl3gz1Mnky58OZzrktVxu62GEsSj4
	3YHzSevpRgmYyaVbnXwa78Kij7//d0TCIlckrkJHtQNZVhfbgKi/kKC3r7UVquLazY73
	juQ/2tIF+iTadpNV1QCYRsJdAyTF3uhLrnMaW5qleI1/TgvDbNsNP3wnU6Sl6SwfAP5N
	8ttn5FFQCu5XWj08nFV/gAU4+O7m0d+SIM04w1m4huCtGrHEQce07kgb90hh+Ry63C5j
	KMAyZS6h+y/SLUpRb4MPZjvVc0wi4cUH6dBz+f24a4kpwvUfhnC4aMiNkr0EZ5kmKC1i
	eB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CBG5aZDpoqKdtQ019/ayrpW7npuacZ+CVU4WJOaqHNQ=;
	b=GJp663fSJeO1L4/NGR27L8uv6y7MGhmognpcGElOvPTgb/Gxk5a00ykuJ4uLGMvqVR
	VJoxOLt+n0t2d5moUAI5GstrdOIIuoaNnkUB6PI03akqxQ4mjEDpHa6jukky8Yz6f3zn
	in8RlO3yTjhmeqwB/vg3ioDksSEvhOXQaovZDmW3rU+iWpkJufDQuZSMDy+WM2WaG8NU
	nEYfev8dogQpXqyty4ljY+yjaQwOgSt49OmegG00s8oRxksaWV5l/XVpfsN+Lr42+6Mz
	farNcg534aWMCN0tTjfBpVmO6L/89AbPrT06fDoZb6RC/4PJ+oRAX4S1kRhWjD5L4JBu
	TsrQ==
X-Gm-Message-State: AGRZ1gLmjamEhJtXPCMUD6GRmLD+YDUSK0mrX0nc96MckwS/cLIo8vZS
	Xil7IYLeoByhAx5DrN+qyV/txFMnadqqR5UOHoV2eQEr
X-Google-Smtp-Source: AJdET5eANfklIl23OXgIvo4yiFLTACiQo2+uLxpzX0dcYMuhWfGEtJErzkpboTX3osM1J+D9zNMDEmwHIwr8V4fXXA8=
X-Received: by 2002:a67:1fcf:: with SMTP id t76mr114078vsf.137.1540932268498; 
	Tue, 30 Oct 2018 13:44:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAPuMWT1upLTHK93SQEj_rgpqdhyr9B_sviKcHurZ4bRZmhbMyQ@mail.gmail.com>
In-Reply-To: <CAPuMWT1upLTHK93SQEj_rgpqdhyr9B_sviKcHurZ4bRZmhbMyQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 30 Oct 2018 13:44:16 -0700
Message-ID: <CAJ86T=XaxUNTe47nDe57cwYxY84J8vdm6C0KUdh+1EsaVJspzg@mail.gmail.com>
To: mrsinger@usa.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: busybox build failure
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
X-List-Received-Date: Tue, 30 Oct 2018 20:44:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Oct 30, 2018 at 5:49 AM Matthew Singer <mrsinger@usa.net> wrote:
>
> I turned on syslog in busybox via its menu config and the build now fails with the following error

The correct way to turn on syslog in busybox is to ensure that
"file://syslog.cfg" is included in SRC_URI.

However, it looks like it's included by default so in your case you
may need to find and disable a custom local .bbappend etc which is
removing it?

In general, if a busybox config fragment exists for a particular
feature then it should be used (added or removed from SRC_URI) to
enable or disable that feature. Manually editing the busybox config
should be reserved for features which don't have their own config
fragment.

> ERROR: busybox-1.24.1-r0 do_package: QA Issue: busybox: Files/directories were installed but not shipped in any package:
>   /lib
>   /lib/systemd
>   /lib/systemd/system
>   /lib/systemd/system/busybox-syslog.service
> Please set FILES such that these items are packaged. Alternatively if they are unneeded, avoid installing them or delete them within do_install.
> busybox: 4 installed and not shipped files. [installed-vs-shipped]
> ERROR: busybox-1.24.1-r0 do_package: Fatal QA errors found, failing task.
> ERROR: busybox-1.24.1-r0 do_package: Function failed: do_package
> ERROR: Logfile of failure stored in: /home/keyw/projects/phytec/yocto/build/tmp/work/cortexa9hf-neon-phytec-linux-gnueabi/busybox/1.24.1-r0/temp/log.do_package.15516
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

