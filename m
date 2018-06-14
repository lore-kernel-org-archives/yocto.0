Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D32CE00D3F; Thu, 14 Jun 2018 08:49:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak.foss[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f50.google.com (mail-oi0-f50.google.com
	[209.85.218.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB9FE00D3F
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 08:49:29 -0700 (PDT)
Received: by mail-oi0-f50.google.com with SMTP id l22-v6so6093136oib.4
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 08:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to; bh=bHszPzz8CCkpbK9aGYOyqS8uwSNu5i2/YKOneBjUllE=;
	b=GG9Jzd7BpNerOqgEu09yUKvBihwoevr5BS/OLT40nzgu7apr0b+qTpbbD+sVNCtTnc
	kdgxvRAR/WvEoOjdaBNEl806ZV2lEMmjPVQltaFI9YL+hyaidYjcclfVXn+YGLh2+Fdi
	AxVKJQ36aycl2vGi3dWFne/o5xkMWflH8CLiW/wvXbqOgP9PfbOW+uEEF/Cc+64af9FP
	RorNw8wahezFXmugxM4F0ty8Nozy74aYzil/lxYsBkJH0v3jglan3Fr+dXenqsH7OO3l
	ssDow2OcqYUesGtaGQnyJ3k5Cp/qPI5ACTtwwljxrTkHOhcezrqQOIOPxX8d23yzSBV4
	GyMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to;
	bh=bHszPzz8CCkpbK9aGYOyqS8uwSNu5i2/YKOneBjUllE=;
	b=H6lHRMe+Z/biPo+0LRw0/Q2rbyeTrgIQlJpGwAbF/6dtouyVnwmHFTXVP1MeNcFK9d
	UPmB1FKrQvt0x8ovAxZRZoWV4MWrHv4twQDM8ZoJYJ+vP1evsTyCAsUA9Md8+lssKWeU
	tbwLuW+wHZUD073jP/qhuibDp7zkIBHC/3M3nSvutGIwPiqQOvLkO9Htkpx11ZA41e8x
	NiAlpwOuhcscg5d/ipCvLkHr5KCxyX1rNkMcvyy4GLbxjxfzp/5gl2hQ22MIFqtv1V6q
	ZhQRNIWPNL2al/I6cL8tTPR/mKmjiVFLAFZCTYwIdHPXk0fxH0oLk5NZ1NYX/89573ym
	7bOg==
X-Gm-Message-State: APt69E2Xv3qmqD8dcLoccY3llhBO+sKTheF+Oi5hXbiYwdGhJZXiwab0
	K9oKmRyTvpqw7iMBPWMX4xwV57XJmZ0KVgyR4yMO3w==
X-Google-Smtp-Source: ADUXVKKJcjAxIGT5D0TmhKKblaEy8fLo6lwieEC1MZ+3f6iKGJeP2r8k/xbI5TAfq6U1mgaJfSKUSceXlIw0r2KyQNs=
X-Received: by 2002:aca:5094:: with SMTP id
	e142-v6mr1439626oib.190.1528991369223; 
	Thu, 14 Jun 2018 08:49:29 -0700 (PDT)
MIME-Version: 1.0
Sender: jon.szymaniak@gmail.com
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Thu, 14 Jun 2018 08:49:08 -0700 (PDT)
In-Reply-To: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
References: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
From: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Date: Thu, 14 Jun 2018 10:49:08 -0500
X-Google-Sender-Auth: _G2zZTrcXny8bdVpww2_t247UbU
Message-ID: <CANge7vWC+p7Df41A5uFLDYfP5EpaFiGhBxtEt5N_DJ3mOwvq3g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Thu, 14 Jun 2018 15:49:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 1, 2018 at 1:00 AM, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
> When attempting to build core-image-minimal on sumo (@b369e61) with a
> largely default local.conf, I'm experiencing qemu-native build failures due
> to what appear to be an include path issue.
>
> Below is one of the failures -- those not listed here also pertain to a
> missing capstone.h.
>
> |   CC      aarch64-softmmu/monitor.o
> | In file included from
> /snip/build/yocto/sumo/rpi/tmp/work/x86_64-linux/qemu-native/2.11.1-r0/qemu-2.11.1/disas.c:9:0:
> |
> /snip/build/yocto/sumo/rpi/tmp/work/x86_64-linux/qemu-native/2.11.1-r0/qemu-2.11.1/include/disas/capstone.h:6:10:
> fatal error: capstone.h: No such file or directory
> |  #include <capstone.h>
> |           ^~~~~~~~~~~~
> | compilation terminated.
>
> In the qemu-native build directory, the config.log shows an "
> -I/usr/include/capstone" parameter being used during compilation, despite
> other -I parameters using ${prefix} correctly.
>
> capstone is pulled into the qemu source tree as a git submodule, and has a
> CMake-based build -- so I'm guessing this is the result of not providing
> prefix information to the CMake build? However, I'm honestly not sure why
> there's a dependency on the capstone disassembler at this point, and whether
> the Yocto use-case warrants even enabling support for it.
>
> Adding --disable-capstone to the qemu.inc EXTRA_OECONF definition seemed to
> address the build failure, but I haven't tried any QEMU targets yet.
>
> I still need to dig into this a bit further, but just wanted to check in
> before I go too far down the rabbit hole... this strikes me as something
> that would have broken the nightly builds and therefore might just be an
> issue on my end somehow.
>
> Thanks,
> Jon Szymaniak

Sorry to be a bother -- just wanted to bump this.

Happy to work on a patch, but just wanted a sanity check to confirm
that other folks are seeing this too.

