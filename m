Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19DCCE002AB
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:57:01 -0800 (PST)
Received: from mail-vb0-f70.google.com ([209.85.212.70])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 23 Jan 2013 08:57:00 -0800
Received: by mail-vb0-f70.google.com with SMTP id s24so10250606vbi.9
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 08:56:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:x-received:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=LucwSE8NWJom0Yp9cH8L753qkxadNRBQWM0eVGsJHMk=;
	b=oCKkE9ix+bwxClCFiuM3rP8mq9pKL9d1PGYk6oeO+ZwmRq79NmOwK5pVn/Ay/bhst+
	ywrsT5AlMJs4GMdN7UzK3yiDWDRlbtrSTHn+AyJKas4hh6YVnlfHVEVEEWOFgEo8mj4q
	e+8HlblckmL1lx8TQClKtZhHPVJqbjZGr33qW9uTCG1dI0iRwhXpZi1XCmgiPTmrrqev
	Rmy/FoGwk2sr3SBvf9vFUm3qO/SXFAUQ2IRerTuE3G/qOlW1DAnempIY/D9JQ3PLlkXy
	XXpMgvR/u/yEQBJjM+OvJyaiKHDm6vgDgnEx4IkO5un77HElPXDaMO3W8Hpobp8c+nJE
	IZJw==
X-Received: by 10.52.66.71 with SMTP id d7mr1815517vdt.121.1358960218979;
	Wed, 23 Jan 2013 08:56:58 -0800 (PST)
X-Received: by 10.52.66.71 with SMTP id d7mr1815510vdt.121.1358960218816; Wed,
	23 Jan 2013 08:56:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.152.232 with HTTP; Wed, 23 Jan 2013 08:56:38 -0800 (PST)
In-Reply-To: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Jan 2013 16:56:38 +0000
Message-ID: <CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQmEKBLipUoMUjBNXQcO7IQecnUYi8eP9rEZShUvJjes9fQy9ZOFIIzVaN5SXWbkLNBGQrG5g0LGkm6UM4Bvss0rVMXhnLyhy1PEpgb7xzBw7fdvWpjflMBSdC0S6PT70nGcDmPVA3BVZQmcVNPjbtlmH4jIIQ==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: are separate -sdk image targets necessary Was: Build external module against Yocto kernel
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
X-List-Received-Date: Wed, 23 Jan 2013 16:57:01 -0000
Content-Type: text/plain; charset=UTF-8

On 23 January 2013 16:51, Trevor Woerner <twoerner@gmail.com> wrote:
> On Tue, Jan 15, 2013 at 2:16 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
>> According to bug 1614, the kernel dev packages should be
>> included in sdk images. Please generate your toolchain using
>> "bitbake core-image-sato-sdk -c populate_sdk" which will
>> make the toolchain target sysroot matching your image's
>> sysroot (this is a new feature of 1.3) as long as your image
>> is a sdk image.
>
> I am a bit confused by the above email. To me it appears as if Jessica
> is saying: "add '-c populate_sdk' to the build of an -sdk image".
>
> But if we look at this email from Mark Hatle:
> http://www.mail-archive.com/yocto@yoctoproject.org/msg10636.html
>
> I get the impression that Mark is saying: "now that '-c populate_sdk'
> is available, there no longer is any need for separate -sdk images".
>
> Am I confusing two different things with each other?

My understanding was that populate_sdk will take the package set from
an image, add compilers and all development packages, and produce a
SDK.  So all you need is your production image, and then you can
generate a SDK from that.

Ross

