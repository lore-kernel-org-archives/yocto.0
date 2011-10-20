Return-Path: <raj.khem@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2B37E01341
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 14:10:54 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by gyh3 with SMTP id 3so4391225gyh.35
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 14:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=jiYH2dVgMc0ce4YDsYX1mE/4t9J8QCl8dSctAzGsEkI=;
	b=HcecPH4j6Ga2f/XHD3EDYwIahtYnYo/7G25SJFFR+Rg5Nv7yP6OsOgDPalcbbDudW8
	6BhNL0f/1b+F8cIbMNq/6XvPgNfzjaBktHR9KEmYW0MCpbrHfXWfCjvBnbXZRqf9xnUr
	tN4pW2laqnlcQ1VO9q/iNGbrDBeca1/1BBexA=
Received: by 10.68.17.193 with SMTP id q1mr22273361pbd.98.1319145053059; Thu,
	20 Oct 2011 14:10:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.48.230 with HTTP; Thu, 20 Oct 2011 14:10:23 -0700 (PDT)
In-Reply-To: <4EA025EF.8020008@communistcode.co.uk>
References: <4EA025EF.8020008@communistcode.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 20 Oct 2011 14:10:23 -0700
Message-ID: <CAMKF1spiM4Hrz=GWBK=MF3JHhKkLy55vX8HKsu3cFdo7+P9d7A@mail.gmail.com>
To: Jack Mitchell <ml@communistcode.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Sysprof build error
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Oct 2011 21:10:55 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 20, 2011 at 6:45 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> I have tried cleaning and recompiling glib-2.0 due to this error:
>
> |
> mnt/yocto/poky/qemuarm-toolchain/tmp/sysroots/qemuarm/usr/lib/libgtk-x11-2.0.so:
> undefined reference to `g_datalist_get_data'
>
> Which I believe is glib related, however this might not be the fundamental
> error?
>

This means you need to rebuild glib-2.0 along with libgtk-x11
bitbake -ccleansstate glib-2.0
bitbake sysprof

