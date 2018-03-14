Return-Path: <nickaein.i@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CDF8E00E96; Wed, 14 Mar 2018 00:56:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nickaein.i[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 894D8E00DA4
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 00:56:44 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id m13so2440694qtg.13
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 00:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1RGCuLTn6umKLnefoac/I9jA4zKh38k4IYZFBNzRmRA=;
	b=Tg/5p6LwdDmlUCsInpl3SnfD4V2YYDvvodc8isjjunDxjpyK84uLnXj9EsBXkr4ou6
	F6D5st6Rq+v1/9Mo1ajADPHh+NrecDlVV20MtPS/DjAlyGvTzeerBKrBDCdPNA8GXqJw
	hDVbbRLlZWu3OiDsMpG9MIl2fhDjlZSATEUShBx6zFRET+6aXyo3OQ+YRTUhS+xl8iU6
	SMm7iOTn1eP54vOqYV5Bjozmg0vTXgPiAw2qKCF/C5tbjciJ8OF7BCwX7AyEf4hf84tb
	JFSwoKssFLK4o3Mzi/ynQ0jVb66pIFi59XH895erJed/DwNvG4VdFYXPUWCb3vc9BNoP
	Z3Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1RGCuLTn6umKLnefoac/I9jA4zKh38k4IYZFBNzRmRA=;
	b=j8QSrCp59UxJjJHNU97ENYmhihNALQbkUUdE7abqihcqzaViW6TaQa0CUsg3qrVSBe
	rT1juOLP/CI1Om2D/M0QcejPi2+u+fmtVzrHxNAkHJk00LrnPJrtasTAf82MFQpf3NNA
	C+zbRFISmZL6Ymnqn8/d2jjMB0yM9zeB/iaDqIBO0QcoiOkup6Ls6MyVgl8tn3254qxp
	2TQciqNvFav/vJZt5n6LVVonCqLBR7OOhDTBs8edBnJNHwpf6F+jsEYgr2+nW2Y/yF5l
	tWXfIjfIkAq2pvgH14YBIoG1qTkG3wouEuYrbhSVnQVrQsnVaSbimivv/dTGkothYz1H
	kx0A==
X-Gm-Message-State: AElRT7E5gLJE2RCq3S4ft4ARaJnY22zD3jlqWxvKtrRWRolMrkFoKHCF
	B+Up0GlU0Agn2CjqUeHCCLw5PwOXKa3skd8czzABgfPJ
X-Google-Smtp-Source: AG47ELsIPvD1H3TRfDVQoyJxwWG50FcPZQ6TproswylyN8ILyFK7X0iQ7LPTxBeJI6crAZ69bBWIwzhIRsl8C+ZtDz0=
X-Received: by 10.200.27.216 with SMTP id m24mr5738918qtk.212.1521014203502;
	Wed, 14 Mar 2018 00:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.139.145 with HTTP; Wed, 14 Mar 2018 00:56:13 -0700 (PDT)
From: Isaac Nickaein <nickaein.i@gmail.com>
Date: Wed, 14 Mar 2018 11:26:13 +0330
Message-ID: <CA+NJmkej3do9Niya2a322PraL+bRUYNct-iwcEL5VJRgGJpyyw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Targeting Windows platform
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
X-List-Received-Date: Wed, 14 Mar 2018 07:56:45 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Florian,

> The SDKs and images are very helpful for (cross platform) CI and deployment.

Indeed. I don't know any platform or tool as capable as Yocto to
provide such convenience for C++ development.

> A real Windows SDK support would be awesome (exspecially for deploying
> library dependencies)

Exactly. Library dependencies are a hell in C++ and there is still no
package manager that solves this.
Conan, vcpkg and other package managers haven't made significant
progress and they are nowhere near the maturity and versatility of
Yocto.

> There is already some kind of "first try" with the mingw meta layer at
> http://git.yoctoproject.org/cgit.cgi/meta-mingw - but I tried to use it
> with our windows projects and failed, since the mingw version there is
> extremly old.

While meta-mingw is intended to build an SDK running on Windows,  I'm
afraid it still targets Linux platform and does not provide a
**MACHINE** type for Windows.
It certainly can be used as a basis for building a Windows-To-Windows
SDK though.

Thanks for sharing your experience. It is relieving to see that you
have the same perspective.
I hope there will be an initiative to target Windows and I will be
glad to contribute.

Cheers,
Isaac

