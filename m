Return-Path: <skandigraun@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D837DCCD193
	for <webhook@archiver.kernel.org>; Wed, 15 Oct 2025 09:47:01 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web11.11892.1760521614612031766
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Oct 2025 02:46:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TGYWUtDF;
 spf=pass (domain: gmail.com, ip: 209.85.221.50, mailfrom: skandigraun@gmail.com)
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-426f9ba85a2so138310f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 15 Oct 2025 02:46:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760521613; x=1761126413; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MC/zMOUJ9+hkJmQY0p9a5VsewOQcNUOz+XfkPgXRMIc=;
        b=TGYWUtDFmYumFxTgADXNGMvsZtvl9jGczDPnHXtDFVq5ubub/76RMscoM0jplEutvR
         cjBZ0YHCOsx+eGo64WJSJEdKpCvyTdZSPQOnEkiQAOEj4O4yDx1pXbqFvoZs4gpoX8GL
         xCtoyUN2jPKeLHsMBIty+rsNqtfGIqwAeO+TEK5Po8Dgq9fnaOedOXIDvRX0MKpNeyK8
         9zyKrqcFNBybNSZp78EYOp4hnb4Y9yKTECqbmjcJZbviy4jcRWWsgQkraM1gbAJtF6gm
         df0OaUnJo2aoU8Af2wRecDsLoykJUIih6R67330bB9rK1GP8zvrkXD4niF68cSBpe/S9
         88Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760521613; x=1761126413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MC/zMOUJ9+hkJmQY0p9a5VsewOQcNUOz+XfkPgXRMIc=;
        b=cDZbsnfjcAs1pPmfI3sABsPx+bw3J2kedN2FOwMLv92Pwvs6Q7/9uM50oU9D9lUDfK
         Vs/swmyRp2lzi1s2/zNog0NNb21c77nzxu2LERM8hMvN8N+2BxRarnbLCxVbX4p20PxE
         a2xKvFSZLW6QC4071YWG0W7YA2WIDp/GKRMZEpHZuolMfJ8HhqJggaqOPuaA+v32Vj/B
         8VbDJetzc6ddxxHrfTRAtNMdrG5LAyqpJi+jrXR39++xdGfHzcy2W0mgNIWYs6z3NsXu
         cRmdnHWH9//e10C2MkVWiukUFb/FGY+fQTDZyMbVkeP7AZBuRUVROTJZ6mBULemLSxnz
         Fh5A==
X-Gm-Message-State: AOJu0YzdINL84mr1S1CCmHNxvdwdoGRTrRvdHoNR++4h9ZjfyDqYsqft
	vVpLmsIxdYP+aN83wo2gWu3BhcE43KpMyK6LZBQVTjWUnpm6sUOt4FhD
X-Gm-Gg: ASbGnctIT9siaftzRf20MQGrOFWaU+tMNv4lN7hyhh6dfwgPQh+WjQAy53RumgfdjJ9
	dL9OwQ33MFTAJ7LOYY//1AaIs0dBCIhOxB51ERLKzv7zBrG91gZBTNNDP1Gcbi5XX7kGbKbUEpr
	OxE+/N71yMt1ip1yBJHEslX9/Q/7w664HoTcpyYd5OxCkWkXuqcbIX07FhCfnyENseauoxvYI6U
	Ear1kWYOtoG+P6PqpZsb9Nd+v4gIpo3qTGsOdOmdaVebWmI4oMdcjOqppzEensOj6GcYF7JnRO6
	AxpazOaRZRPK2NFGUPt3l5cZGokE47oJsBCsWEVSUcK/Ist5eVidpULX6RXI1Kih4RPgjWqNmck
	eN3pdypZIHzS6h5fvCLekpL/buBVEqcBFS5oBQEjWneGTozVuY8Ngy+lRMdnI
X-Google-Smtp-Source: AGHT+IHd3lmY/R8EIhis3AtRZRCD3V8Zw/VJUysxADxIiUBPN0ssySlkIWTAoVVnw0n3U1a5c9Pjcg==
X-Received: by 2002:a05:6000:2504:b0:3ec:a019:3936 with SMTP id ffacd0b85a97d-4266e8e4a51mr18132956f8f.55.1760521612781;
        Wed, 15 Oct 2025 02:46:52 -0700 (PDT)
Received: from [192.168.1.106] ([51.154.145.205])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-426ce5cfe69sm28861358f8f.32.2025.10.15.02.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 02:46:52 -0700 (PDT)
Message-ID: <35e0d767-7f83-4084-b0d7-d716a8c3e92c@gmail.com>
Date: Wed, 15 Oct 2025 11:46:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [yocto] [Scarthgap] "ModuleNotFoundError: No module named 'imp'"
To: simone bongini <bongini.simone@gmail.com>
Cc: yocto@lists.yoctoproject.org
References: <CAHdr16oXZoe5fVbvqRvv5Q3SOTodRfMKKdRrR0uY6dZTN7xTQA@mail.gmail.com>
 <b3332a61-b4a9-44dc-a1dc-84543f45192a@gmail.com>
 <CAHdr16qK++o8tZpYrUQkTb_hSzpX4HfYOD7ijSoPQrpEppo40Q@mail.gmail.com>
Content-Language: en-US
From: Gyorgy Sarvari <skandigraun@gmail.com>
In-Reply-To: <CAHdr16qK++o8tZpYrUQkTb_hSzpX4HfYOD7ijSoPQrpEppo40Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Oct 2025 09:47:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65936

On 10/15/25 11:20, simone bongini wrote:
> Hello,
> I'm not able to find log.do_configure from libdnf-native, but....
>

You can recreate is with "bitbake -c configure libdnf-native"

> From the generated error.py of libdnf file I can read
>
> # This file was automatically generated by SWIG (http://www.swig.org).
> # Version 3.0.8
> #
> # Do not make changes to this file unless you know what you are
> doing--modify
> # the SWIG interface file instead.
>
> Indeed I got that the proper version is the 4.2.1, but seems generated
> from 3.0.8 version
>

I guess the question is, where does this version come from.

Do you have swig installed on the build host? If yes, which version? I'm
just curious is maybe somehow cmake breaks out of the build environment,
and uses a wrong swig... (I just did a test in docker with swig
installed, and it used the correct version. But that doesn't mean that
it's impossible.)
Also, do you happen to have any bbappend or similar modifications for
either the swig of libdnf recipes?


>
> Il giorno mer 15 ott 2025 alle ore 09:56 Gyorgy Sarvari
> <skandigraun@gmail.com> ha scritto:
>
>     On 10/14/25 12:43, simone bongini via lists.yoctoproject.org
>     <http://lists.yoctoproject.org> wrote:
>     > Hello All
>     > i'm trying to build an image based on scarthgap.
>     > I'm facing 
>     >
>     > ERROR: our-image-initramfs-1.0-r0 do_rootfs: Could not invoke dnf.
>     > Command
>     >
>     '/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf
>     > -v --rpmverbosity=info -y -c
>     >
>     /home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/dnf/dnf.conf
>     >
>     --setopt=reposdir=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs/etc/yum.repos.d
>     >
>     --installroot=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/rootfs
>     >
>     --setopt=logdir=/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp
>     >
>     --repofrompath=oe-repo,/home/devlinux/board.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/oe-rootfs-repo
>     > makecache --refresh' returned 1:
>     > Traceback (most recent call last):
>     >   File
>     >
>     "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/bin/dnf.real",
>     > line 61, in <module>
>     >     from dnf.cli import main
>     >   File
>     >
>     "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/__init__.py",
>     > line 30, in <module>
>     >     import dnf.base
>     >   File
>     >
>     "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/dnf/base.py",
>     > line 29, in <module>
>     >     import libdnf.transaction
>     >   File
>     >
>     "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/__init__.py",
>     > line 8, in <module>
>     >     from . import error
>     >   File
>     >
>     "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py",
>     > line 28, in <module>
>     >     _error = swig_import_helper()
>     >              ^^^^^^^^^^^^^^^^^^^^
>     >   File
>     >
>     "/home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/recipe-sysroot-native/usr/lib/python3.12/site-packages/libdnf/error.py",
>     > line 15, in swig_import_helper
>     >     import imp
>     > ModuleNotFoundError: No module named 'imp'
>     >
>     > ERROR: Logfile of failure stored in:
>     >
>     /home/devlinux/BOARD.1/scarthgap/board-bsp/build-sd96/tmp/work/sama5d27-poky-linux-gnueabi/our-image-initramfs/1.0/temp/log.do_rootfs.3572531
>     > ERROR: Task
>     >
>     (/home/devlinux/BOARD.1/scarthgap/board-bsp/meta-sd96/meta-sd96/recipes-core/initramfs/our-image-initramfs.bb:do_rootfs)
>     > failed with exit code '1'
>     >
>     > issue caused by Python 3.12 that is not compatible with "imp"
>     library.
>     > But, why swig in scarthgap generate error.py that includes "imp"
>     library?
>
>     Interesting question - I think also that it shouldn't do that.
>     Random first thought: if you look into the log.do_configure of
>     libdnf-native, what does it say, which version of swig did it
>     find, and
>     at what path? Is it v4.2.1, somewhere from ${RECIPE_SYSROOT_NATIVE}?
>
>     >
>     > our-image-initramfs.bb <http://our-image-initramfs.bb>
>     <http://our-image-initramfs.bb> is an our
>     > recipes that inherit core-image in order to create a DM-Verity
>     fitImage.
>     > Note that it works with kirkstone poky. 
>     >
>     > Thank you all,
>     > SB
>     >
>     > -=-=-=-=-=-=-=-=-=-=-=-
>     > Links: You receive all messages sent to this group.
>     > View/Reply Online (#65930):
>     https://lists.yoctoproject.org/g/yocto/message/65930
>     > Mute This Topic: https://lists.yoctoproject.org/mt/115750455/6084445
>     > Group Owner: yocto+owner@lists.yoctoproject.org
>     <mailto:yocto%2Bowner@lists.yoctoproject.org>
>     > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub
>     [skandigraun@gmail.com]
>     > -=-=-=-=-=-=-=-=-=-=-=-
>     >
>


