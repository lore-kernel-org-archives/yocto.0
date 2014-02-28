Return-Path: <ashcharles@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6A6AE00991
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 10:46:00 -0800 (PST)
Received: by mail-ve0-f180.google.com with SMTP id jz11so1123766veb.25
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 10:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=kk+zeLDorLOZopwGJfREXJVsxFI9GRZE5bLpOUrnK6I=;
	b=KbBlHYfOQ5zRZG+Q1fN1Qa5EosmiXdy+ybBhdCWX+UfkAVfigX+xNOg/s8LR1bJN5P
	cE/GFlj6MIhdiOLdVzE3/RC7JkYL+5bwS2Hwa8R8H2dYuMeROV46tpVW46LVlGPdgw1g
	6NLLyawVP7rZLee9+vvaAICRRYZQFq/b/L92T+sGMSsVkk4W3HsABugbWUEdshY8o5Cx
	Fk5aew/IMul0ZH4zk+W92NenfX9VtKsQEJVPkDGCifqwAliqEa11MH28FTHYvnltnBZ5
	xNihg+2Tj98y0BfQcrPMfubnrlY0grgBY6/fTLM0tdajkhzbl/ZSxhUBdyb9CQQnkcIf
	cr5Q==
X-Received: by 10.52.190.1 with SMTP id gm1mr14313464vdc.21.1393613160085;
	Fri, 28 Feb 2014 10:46:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.45.134 with HTTP; Fri, 28 Feb 2014 10:45:30 -0800 (PST)
In-Reply-To: <CAK8F28=Z5=T2+z1a=66Jzsi_nOyMWLBOA-F8NZovR8Z=1hTVgg@mail.gmail.com>
References: <CAK8F28nj1CNzSGxJegJDjgP7f=OGAUbNPY9ak9ea+JoAOEKhYg@mail.gmail.com>
	<CAMKF1srAGgNbQqE62_Jts+fUfOzq04nu1XFW7uABLg0QsaMgng@mail.gmail.com>
	<CAK8F28mEj01FWh6=0XRSduXAVGtvk1vR4+=7pxQn2qfUmjtFkQ@mail.gmail.com>
	<CAMKF1srsi2EfUBsPam0n8DqLJw8+WiZBDMYQoquf0yQGu4VmoA@mail.gmail.com>
	<CAK8F28=Z5=T2+z1a=66Jzsi_nOyMWLBOA-F8NZovR8Z=1hTVgg@mail.gmail.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Fri, 28 Feb 2014 10:45:30 -0800
Message-ID: <CAK8F28m8AZX3ea0tqJvVQgphF8rSFnJV34hCkdJgOWR1oCdQnA@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using MACHINE_EXTRA_RDEPENDS to install wifi Firmware
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
X-List-Received-Date: Fri, 28 Feb 2014 18:46:02 -0000
Content-Type: text/plain; charset=UTF-8

I think my response yesterday was slightly premature...

If I understand correctly, packages of the form
'kernel-firmware-<xxxx>' are provided by the kernel recipe for any
firmware that is licensed such that it can be included directly with
the kernel source i.e. in the <linux>/firmware directory.  A superset
of this firmware is available from the linux-firmware repository with
different licensing.  Firmware can be pulled into an image with the
addition of a 'linux-firmward-<xxxx>' package.

It seems though that adding a 'linux-firmware-<xxxx>' package pulls in
the basic 'linux-firmware' package that includes firmware binaries
already shipped with the kernel.

If this is correct, I see two options:
1. 'linux-firmware-<xxxx>' should only pull in the explicit firmware
specified, or
2. if 'linux-firmware' is getting pulled in, the kernel recipe
shouldn't populate any firmware

Am I on the right track?

--Ash

On Thu, Feb 27, 2014 at 5:09 PM, Ash Charles <ashcharles@gmail.com> wrote:
> On Thu, Feb 27, 2014 at 4:54 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> as you can see kernel-firmware-whiteheat is the package name under
>> which kernel is packaging it
>> so include that if you want the kernel provided one.
> Ah---perfect.  That makes sense.
> I had
> MACHINE_EXTRA_RDEPENDS += "linux-firmware-sd8686"
> I should have had
> MACHINE_EXTRA_RDEPENDS += "kernel-firmware-sd8686"
>
> Thanks for your help!
> --Ash

