Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7CC8E00D5F; Thu, 25 Jul 2019 01:52:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f68.google.com (mail-io1-f68.google.com
	[209.85.166.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF02E00D4A
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 01:52:50 -0700 (PDT)
Received: by mail-io1-f68.google.com with SMTP id i10so95537787iol.13
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2019 01:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=AMAS0d0RfCdWY0JFt/VH/5QVdjtDnaDy7Z1m8IqUM60=;
	b=uMF5SeXHr0+kDslPybQg0c2rFQO+pW4u597uOfQM7I/5anFi24/UYAhiyLXPUpz/FX
	BfHnWXZt3mYE2XdvXvRdbGopZnu1uAWVESMl2y85usoswbqYEgtYTGCDcw9fPrbylkb6
	8r+ynK0TYjFtTaUOM+DYwcLW4YvD8+4tzVCiMlYzX94pZwDCZyFmQtQFcvvx6jgPhpEX
	+tnurVO2Cx355Ni6M0s6ZzGDv5VTOlNOl2MoNACCmxxmhuPW731JRHTDjUmIQPFfBsNt
	eIUPJaU4CydvSi3YzWt1+ursRm38NCUCsLwlKrH4bD3FdRKmPZxDa7wuNuKYwKTcN7+h
	roBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=AMAS0d0RfCdWY0JFt/VH/5QVdjtDnaDy7Z1m8IqUM60=;
	b=dGQqltEt0TBW5OyzAzHkFvoBGsC7fZBN1SHbmKZbOAzn7KrfhIM6e1lduNxR3a5Dtw
	mHxnHaaujeY+ijpdaBbRgwsC5hMYVV8G15V7F+0OL6I7BxBUEeRv6PnTDWfv2t59uQun
	NiDkIjkvy66NEA2KWjToNXQJ+ue6Td5zY+Ui7C1RCm4qDjfcbxKALvoR1D54cUVRWTgO
	01AUI/rMNis6HTYr1FadXkJ1AMraGXXc35OhMNyiCk+6q4dfiUix/w5YccL+/OM7jy/i
	9bvfYZh4tCPRuuJc5YusFPU3Z0+E7no/7C6xJJq41wyAmnI9dFipJk8lphMLDH43lbBm
	lilQ==
X-Gm-Message-State: APjAAAX+7UN+ica2NJnEFQO9yQBlIgB79zWACW2zW3u0yANhA2MM+IFb
	onp4afSxI2PfJ7leE/oH4wT7mcLm9plil6RHqEL7PUNA
X-Google-Smtp-Source: APXvYqxz40Bi6W2XogV3o+KnwiE94NzozHLoS/eB0I3AZX3iliTcm8DTQthJEiNE2COxG9gMyOUlTm8jQwuUFnBYn+Q=
X-Received: by 2002:a5d:9e11:: with SMTP id h17mr31674909ioh.261.1564044769684;
	Thu, 25 Jul 2019 01:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
In-Reply-To: <CAA=hcWTJ_URf273D+6cp8JkeT=9oP5My37Lj22Ho_y5fNmT4=A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Jul 2019 09:52:37 +0100
Message-ID: <CAJTo0LYw0hH8r+KEQc43X6-CZJVwTnoQo6_=g19sQ7ZdpJXEuw@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to fix SSH interfactive promotion for Yocto Linux embedded system
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
X-List-Received-Date: Thu, 25 Jul 2019 08:52:51 -0000
Content-Type: text/plain; charset="UTF-8"

You're using busybox's scp, which is limited compared to openssh.  If
you want to use openssh's binaries install openssh-clients, otherwise
adapt your options to work with busybox's scp.

Ross

On Thu, 25 Jul 2019 at 02:10, JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I am running busybox in imx6 using ssh and scp in shell scripts, but I
> troubled to run the scripts to run ssh and scp, it did not have ssh
> options stopped at following:
>
> scp .... -o ServerAliveInterval=60 -o ExitOnForwardFailure=yes -o
> ServerAliveCountMax=3 -o StrictHostKeyChecking=no -o
> UserKnownHostsFile=/dev/null ...
>
> ECDSA key fingerprint is SHA256:rAS+4gVqPJj7yfVDHlhG1g5bQP+VgMczooGifv+H9vk.
> Are you sure you want to continue connecting (yes/no)
>
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'ServerAliveInterval=60': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'ExitOnForwardFailure=yes': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'ServerAliveCountMax=3': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'StrictHostKeyChecking=no': No such file or directory
> cp: can't stat '-o': No such file or directory
> cp: can't stat 'UserKnownHostsFile=/dev/null': No such file or directory
> root@solar:/tmp# ssh-keyscan SaController >> /home/root/.ssh/known_hosts
>
> What will be effective and simple solution in Yocto?
>
> - Replace busybox by bash recipe.
>
> - Install openssh-client to run ssh-keyscan to write the target to
> .ssh/known_hosts
>
> Appreciate your advice for Yocto Linux embedded system.
>
> Thank you.
>
> Kind regards,
>
> - jupiter
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

