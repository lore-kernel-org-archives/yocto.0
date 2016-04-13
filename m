Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B79AE00D37; Wed, 13 Apr 2016 01:11:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EC25E00C75
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 01:11:56 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id o126so60808268iod.0
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 01:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=muOfFIhgX6HTerR/VlYcrbwXizgSOgQeDM86Pc7RM0s=;
	b=DPYVA10hytIwSNUPENPkbFWfIJAcvvrMzG7iNbJxekOFBQK1g/e3F0mu63Mn3FePDC
	oswvHQBLe+gU4UK3grf7HohQSSTVNHPdIl9QdHQ/hrOnpzGQdfoecoCmPlZx4Iqbl0lP
	H0weFGw36RBkCmK6V7jLl4G2uCzmDLBvc8r73LrLWEWXzO+33l/aEtYH1JJnvQ6MQSR1
	mMUrJH+x3K+MpoG38ZuHl54i+FXt1TiVGDLqrvOebA9H2KgS725k1W6Sa59DgKtzXvcZ
	obATsHcDho0HwIsmcpFgIkS6lVfIBVIHVEx00Q9vAPMnPb6aTn4/0HCRBxGJ4jTqFgrN
	578g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=muOfFIhgX6HTerR/VlYcrbwXizgSOgQeDM86Pc7RM0s=;
	b=dyRFPJZy8ofU2ja5mvA3RVXcFe5cuJ2uNIzavHebducKt3VFIIP+FnamEHQPuxNUvm
	NauAA3okgTRx3dWHYyZW3iazuajdleSolI2IZ2DnX3Ugvv7zO8MOmPASZ8YR5D/OQuu/
	Y9tCrgTnl+kGjh1q+OK91avJP7oDC4K9CYIufuu/p19EY7mQP+dN+7VVpRc2IBbFWjpM
	snczOOPy32XcBaoxzslrxbKz4NrigaIYShmimpbvIH5aMVMvLMw3Eo5Dfa4RAcnD6mty
	D3186M6mgTHn+LVIJo4aFybmWaA0y1tfkXmT5YtRr0uSp3ISU99v05N6DKrXogfWu06g
	+D+Q==
X-Gm-Message-State: AOPr4FW7tXDFR3FCLqpMU6WGidltHR6Vsz3KfvyVLk9v1ltGAevahv8TyS8XfB6c3AEAnj0quIJTUeJoifYqVQ==
MIME-Version: 1.0
X-Received: by 10.107.12.67 with SMTP id w64mr9568884ioi.114.1460535115671;
	Wed, 13 Apr 2016 01:11:55 -0700 (PDT)
Received: by 10.36.69.12 with HTTP; Wed, 13 Apr 2016 01:11:55 -0700 (PDT)
In-Reply-To: <20160413031235.GH22139@resin>
References: <1459510631-20294-1-git-send-email-andrei@gherzan.ro>
	<20160413031235.GH22139@resin>
Date: Wed, 13 Apr 2016 18:11:55 +1000
Message-ID: <CANwerB21B3J71n7WYBxpf2V4mQPhxKHehh_39FVY5Ow+hCQuxQ@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] userland: In case of wayland configuration build needs wayland-native
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
X-List-Received-Date: Wed, 13 Apr 2016 08:11:59 -0000
Content-Type: text/plain; charset=UTF-8

Hi Andrei,

This is breaking non-Wayland builds... the second value in the
PACKAGECONFIG is the configure arguments for when the PACKAGECONFIG is
disabled.

I have sent a patch to fix it.

Regards,
Jonathan

On 13 April 2016 at 13:12, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, Apr 01, 2016 at 01:37:11PM +0200, Andrei Gherzan wrote:
>> Building wayland support requires availability of wayland-scanner to avoid
>> build errors like:
>>
>> | /bin/sh:
>> | /home/andrei/work/yocto/build-rpi-master/tmp/sysroots/x86_64-linux/usr/bin/wayland-scanner:
>> | No such file or directory
>>
>> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
>> ---
>>  recipes-graphics/userland/userland_git.bb | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
>> index ca9123e..536c3ec 100644
>> --- a/recipes-graphics/userland/userland_git.bb
>> +++ b/recipes-graphics/userland/userland_git.bb
>> @@ -45,7 +45,7 @@ EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-a
>>
>>  PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
>>
>> -PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,,wayland"
>> +PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=${STAGING_BINDIR_NATIVE}/wayland-scanner,wayland-native,wayland"
>>
>>  CFLAGS_append = " -fPIC"
>>
>> --
>> 2.7.4
>>
>
> Merged to master.
>
> --
> Andrei Gherzan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

