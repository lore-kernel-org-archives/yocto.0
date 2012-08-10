Return-Path: <twoerner@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 480FEE0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 07:36:23 -0700 (PDT)
Received: by lagr15 with SMTP id r15so992944lag.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 07:36:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=o2g7J212AUtPrhF7qOJQGkzDex5NMaqilng2oruDEAQ=;
	b=vXHVhsSKsUU0CysSGEzzQbxtyIPjgpjuttsW4ARRhkGab3jo1Dku+0S0vX54Dyc3Wd
	1uLKn/NxpCF6x3IzeRYnEzweID69/VkMKlWghv8dnoROa7iSb/LXanafzW9Mm5xkWnum
	FLIJFiYTVsnnTawGnjkUx3YYp/ILq8UQQ5/0sI1mGbleGBToB2CnIhNk8K+CtF25F/U4
	KQy0gm6lkRY+ZsauykvwaqsW2nA/a52Zp7FbyylHwf8OBixT2jN0HZ9o6siLrm6M72vU
	nOJEVzLOvDK80Iy198t+gUhfn22D4YaYY2g03LhOYO6/5xMioAWe9zO+NFo+21Xf03Mv
	NbMw==
MIME-Version: 1.0
Received: by 10.112.43.135 with SMTP id w7mr2556796lbl.48.1344609381650; Fri,
	10 Aug 2012 07:36:21 -0700 (PDT)
Received: by 10.112.21.9 with HTTP; Fri, 10 Aug 2012 07:36:21 -0700 (PDT)
In-Reply-To: <tencent_76959D0312B06D5226AE40E8@qq.com>
References: <tencent_76959D0312B06D5226AE40E8@qq.com>
Date: Fri, 10 Aug 2012 10:36:21 -0400
Message-ID: <CAHUNapR1FD+vwNPVfa2Dc84xMar_KqWk9NVm8Bu9UxiNcNHpsQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?UTF-8?B?4piG5pif56m64piG?= <treebody@embedstudy.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Questions about 'bitbake core-image-minimal'
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
X-List-Received-Date: Fri, 10 Aug 2012 14:36:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 9, 2012 at 5:38 AM, =E2=98=86=E6=98=9F=E7=A9=BA=E2=98=86 <treeb=
ody@embedstudy.com> wrote:
> 1)I find some package like "automake, autoconf" existing on my host ,can =
I
> use "automake" which is already installed on my host rather than to do ta=
sks
> to install (do_fetch,do_compile) and How  .

The job of automake/automake is just to create the Makefiles which the
"make" utility can use to compile software; this is but one small
component in the overall task of cross-compiling software for an
embedded target. So your question would be similar to someone asking
"Why does Yocto have to build the software? Can't I just use wget and
download the sources myself?" Which you can, but once you're done you
still don't have anything you can use on your embedded device.

> 2)Why first do_fetch quilt-native ,where the dependency on native devtool=
s
> things are from.

One of the many things making embedded cross-development complicated
is that everyone is free to use whatever version of whatever Linux
distribution they want on their host systems. As it turns out, the
small differences between distributions and (more importantly) the
different versions of the various tools used to do embedded
development on each of these system often leads to not being able to
successfully complete various tasks (of which there are many).
Therefore tools like OE or Yocto are smart in that they start off by
checking your host system and setting up a known-to-work set of native
tools which it then will use to perform the remainder of its tasks.

Where these dependencies are specifically being pulled in from I'm not
100% sure, but it's probably not too hard to find, and you wouldn't
want to disable them anyway.

One concrete example of this sort of issue is: recently it wasn't
possible to compile certain version of the Linux kernel using the
"make" utility version 3.82.

