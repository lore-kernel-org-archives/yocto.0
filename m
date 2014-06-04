Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C900E00B68; Wed,  4 Jun 2014 02:58:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B98FFE00B20
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 02:58:03 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id w8so6592504qac.38
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 02:58:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=WCV7alZRAR+H2rSAMwS9/fIBY7Z5P8IfJhnxuAlKBlg=;
	b=aLNedliS+CR4ncBf8nwOKTJ6ym7xn1MPCsbBtlVSIr59vNcofbvTY+4saLX1F775Gq
	NPPif9RiXFWY4oocoeabAblEOnZqjJ/Z1HOEYeytbZM9oRVkXupSBgLHQi4fUBwgnjAU
	sn80wSk0dqw24Z25ajBeoazawirxK5LvIbb7MJzwK82JAZjNHiqqDaH76pKy+VmCOqPa
	uFmQsfK8PLdHzC5c2iWiodd+1x6WZrWlHJCt879xsaX0RQBHFt7tZvI61tC8U48bHt/h
	QFYEbQ1nfmnjaGfQ0rna36hIRYRH9Aai96Gof+GehJBrFnfgrNBi42DutRnY394WtMjq
	vrNA==
X-Gm-Message-State: ALoCoQlDyKcSE0Jp6+yESGcabvdBLCZo8Njy3UKjUxUIiqisUA/VrHUP2yd7GuYKewsiXq7xm0kl
X-Received: by 10.140.25.37 with SMTP id 34mr65852903qgs.60.1401875883214;
	Wed, 04 Jun 2014 02:58:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 4 Jun 2014 02:57:43 -0700 (PDT)
In-Reply-To: <lmmokk$hkl$2@ger.gmane.org>
References: <lmmmm6$o20$1@ger.gmane.org>
	<CAJTo0LZsgxt9des=d=WQJy1E0VsJh_e9+8RCcHscodG=_V=woA@mail.gmail.com>
	<lmmo0c$bda$1@ger.gmane.org> <lmmoff$hkl$1@ger.gmane.org>
	<lmmokk$hkl$2@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 4 Jun 2014 10:57:43 +0100
Message-ID: <CAJTo0La0oqqg1Qwodo87+YJTwjEDy4whkbu-6pAR1=EDP2jReg@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: best way to add conditional configure option
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
X-List-Received-Date: Wed, 04 Jun 2014 09:58:07 -0000
Content-Type: text/plain; charset=UTF-8

On 4 June 2014 10:24, Neuer User <auslands-kv@gmx.de> wrote:
> EXTRA_OECONF_append_mx6 = "--enable-imx6"
>
> Main difference is the mx6 versus imx6.

Yeah I didn't know what your machine type is, so was guessing.

Ross

