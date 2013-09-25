Return-Path: <raj.khem@gmail.com>
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E229BE01601
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 12:40:38 -0700 (PDT)
Received: by mail-qc0-f177.google.com with SMTP id x12so97388qcv.36
	for <yocto@yoctoproject.org>; Wed, 25 Sep 2013 12:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=McnBfaSeXjd5GMddKmyWSf7PYMqPzOZxN7XGkltavMs=;
	b=JKAdfye4+qSZnUmSR78W4o+1P+PGmoW721dRmiXlZxmDZqgcMkBJAHe3Tn0RyHdFrJ
	9SdiDOHlI/4Tv/AJspGtfmhxGxInLZPb7Y/QhbOkR2HJtrP7VkPkT82k8D9mdvSFLUBk
	XFS9pG0TRvJs44XAgT3in4QfF+dVtbX2N88lRbv4+gWqUbMJBSGuPZZyfN62tjYCr0+x
	33UWAmfx5jROJyCL5WKbuhHsF9sAAMk+P3dO8dnIq1NcsgErZ4uj8t70LRH4fjSKCB5w
	im0E1KLMO4zl6C0ym8CEbGsCFe+onai1G/bFth+XldnXPqldsGXGctB2CnVlqpMZdgUp
	tpTA==
X-Received: by 10.49.48.168 with SMTP id m8mr4795181qen.25.1380138037963; Wed,
	25 Sep 2013 12:40:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.224.10.201 with HTTP; Wed, 25 Sep 2013 12:40:07 -0700 (PDT)
In-Reply-To: <ACB3EB40-42EC-4F93-925B-284095121BF9@vtkloud.com>
References: <52348262.6060706@vtkloud.com>
	<ACB3EB40-42EC-4F93-925B-284095121BF9@vtkloud.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 25 Sep 2013 12:40:07 -0700
Message-ID: <CAMKF1sri3BSObWxcipXXriQY7=M0ekUwmQ3QPxJ+G=71_1zZBA@mail.gmail.com>
To: =?UTF-8?Q?Jean=2DCharles_JC_Verdi=C3=A9?= <jc@vtkloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to install some cpan modules - dumper.so wrong ELF class???
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
X-List-Received-Date: Wed, 25 Sep 2013 19:40:40 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2013 at 12:32 PM, Jean-Charles JC Verdi=C3=A9 <jc@vtkloud.c=
om> wrote:
>> Can't load '/media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemu=
arm/usr/lib/perl/5.14.3/auto/Data/Dumper/Dumper.so' for module Data::Dumper=
: /media/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/qemuarm/usr/lib/p=
erl/5.14.3/auto/Data/Dumper/Dumper.so: wrong ELF class: ELFCLASS32 at /medi=
a/yocto/var_yocto/var_yocto/rpi-build/tmp/sysroots/x86_64-linux/usr/lib/per=
l-native/perl/5.14.3/XSLoader.pm li

this is reaching out to native-perl mods there. seems its not cross
compiler friendly
look out for variables that are being used to construct path for
XSLoader.pm and use
the correct target paths

