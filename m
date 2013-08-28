Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f47.google.com (mail-oa0-f47.google.com
	[209.85.219.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4793E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 08:08:42 -0700 (PDT)
Received: by mail-oa0-f47.google.com with SMTP id g12so7905951oah.34
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 08:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=DQv728FJPRogWsZwGdzUY1+2LmcxRgtbi8GLHiYa7bc=;
	b=GqNYt3BPumkTs23QiN/pW8zJV6v+XC0hdd54JEfWuBmc0EtKv4oPwnhImks65zHj75
	VougCUApn/+ttweC58kRtleBOM3HpQZcn+ouJqayTNjqzaq+vrxf/OACXxAIXPQGNzlh
	5r0Ak7Zx29IEESCtu8iZC3TdLNCXDp3DenC7g+euz/lsVD411mEJ6Bjnbf3i1LwmraNp
	QbfmgeBKZmX1rC7ZzTPMgWkkaFTYXP1veIQGoLLnbh4lZmq+MwnfHf5LyPqLIIggHyqg
	GM38+D6UHJXWZ7WZ4XzVhDO02OFevQTPUu5dKpV2xyCiVN7RBm0egUJEMHxSDh+mdMS9
	ZYwQ==
MIME-Version: 1.0
X-Received: by 10.60.63.116 with SMTP id f20mr6257593oes.29.1377702521245;
	Wed, 28 Aug 2013 08:08:41 -0700 (PDT)
Received: by 10.182.109.36 with HTTP; Wed, 28 Aug 2013 08:08:41 -0700 (PDT)
Date: Wed, 28 Aug 2013 17:08:41 +0200
Message-ID: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Wed, 28 Aug 2013 15:08:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi, I am a little bit confused about how to handle these two and what
they are supposed to solve. I have so far never used RDEPENDS but only
DEPENDS.
But I am also having severe problems when building a rootfs image when
one of my user space libraries are changed from eg. libfoo.so.1 to
libfoo.so.3. Even though all my packages that have dependencies to it
includes it in a DEPENDS.
The error I get during rootfs build is:

| Computing transaction...error: Can't install
someapp-1.0-r0@cortexa9_vfp: no package provides libfoo.so.1

But there is no libfoo.so.1 in my sysroot, it has been replaced by libfoo.so.3.
I know for sure that 'someapp' was rebuilt, but still I got the error message.
What do seem to help is to force a fetch of 'someapp' and then rebuild
which sort of indicates that some garbage was left behind. But having
a package listed in DEPENDS will not force a new fetch if I am not
mistaken.

Have I been using the DEPENDS variable incorrectly? Would it make a
difference if I used RDEPENDS instead?

Thanks.
Hans

