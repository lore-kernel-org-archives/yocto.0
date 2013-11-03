Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 532BFE017E9
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 12:49:47 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id tp5so11075642ieb.16
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2013 12:49:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=c06RpN4zieegMRS62diFMbmwj32/B59UySS+HsCN+zo=;
	b=Y8W7wVEnyRZaHW/yE+WB8G7/V3N7Q2IBUNyILUnG5fe76FTPcq559gHBYeYy9F7f25
	cJ5JuxfnKVgbl8elpjKvbt5/F74G4MaOX3p2IeIzb18sGstiA0WRh9eS/bcqsPIRQFop
	xfZVc0FfywnIIwYtBszeuzcI531wAIlKqdvjfUmC0EmU4QhU2IPRK7pKc1Tvxj/9FdXB
	yxzEdSCSHKsIDrTdWE88NdtumycsrKbqgyi1yYXC9UkLEnJ/7kTjmRj5/vlkjK8vrlHo
	yf4mp/Ktg0hh/ssMnZyBraS94Rl5driVJFUmjE3FptDR0E2XS227oQjb7aoQblPG8MZX
	Fbtw==
X-Received: by 10.50.22.67 with SMTP id b3mr9630605igf.39.1383511786211; Sun,
	03 Nov 2013 12:49:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Sun, 3 Nov 2013 12:49:16 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311020624570.21875@oneiric>
References: <alpine.DEB.2.02.1311020624570.21875@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 3 Nov 2013 12:49:16 -0800
Message-ID: <CAMKF1so3X0P=A5fvVpzj-3RMntH_bGVJsGX2iJFJoiFZgJyksQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY = "1" or "true"?
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
X-List-Received-Date: Sun, 03 Nov 2013 20:49:48 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Nov 2, 2013 at 3:27 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   (i can see it's going to be that kind of weekend.) ref manual reads:
>
>      BB_DANGLINGAPPENDS_WARNONLY = "1"
>
> but some layers define:
>
> meta-linaro/meta-aarch64/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY = "true"
> meta-linaro/meta-linaro-toolchain/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY = "true"
> meta-linaro/meta-linaro/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY = "true"
> poky-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY ?= "true"
>
> so general question(s) -- is it understood that "1" and "true" are
> equivalent? should there be a standard? should the ref manual be
> enhanced, or should the above layers clean themselves up?

They are all correct. Accepted values are

"1", "yes", "true"

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

