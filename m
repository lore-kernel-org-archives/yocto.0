Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F084E00B18; Tue, 13 Jun 2017 18:01:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.176 listed in list.dnswl.org]
Received: from mail-wr0-f176.google.com (mail-wr0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 289F0E00888
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 18:01:36 -0700 (PDT)
Received: by mail-wr0-f176.google.com with SMTP id q97so166850454wrb.2
	for <yocto@yoctoproject.org>; Tue, 13 Jun 2017 18:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=F5PAyc+/RvvPFRddoapJGOjtzB0nylH4Wg9l8v5UBUg=;
	b=MQ+wlIuGGg3bkAvfTO+ZB08MjJSiQd2XEeXxd257JMzldN+t95LzICJK/rNkTsMD/i
	tY5tklpCjQDzduwVhqFsnI/mQcNwq0CsU4kjlIIlIayNnuUz9dac80AeWKvPu+MupLUC
	ft02vKHA96KQATmv2jB1X6bpccRUHPif8MlafnfZl86+5XAwBEKARnG5irTSi4RgI/kr
	o0C7fgP0pH1dpv0tPZGsropkn0Pxa2s5WwmQHifxvGhnxQXIOG+LfjWRxklUAKRi1SH2
	C6BP8x4qGCsZ5B99nfAkzv835aMXVGaLmhixlCLDTgfG+pBDqLRMy74h1x4C+PJ+m0nf
	UMuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=F5PAyc+/RvvPFRddoapJGOjtzB0nylH4Wg9l8v5UBUg=;
	b=Pksi1xIyuxGpf55N545/38V1kTSGPEpGKJVf4SpAKHh/Xx2vMNH5s3yxN0Q1VOXGyT
	IGAP7iazRxQCKZdxKD+JOFtZPUgW+bISOOuykkx7IYlfJsYAzHPOrq0xwsa9bkdeKtWd
	a0HqBrNDM69q8GBcoZ/03UgFwRFVMSL5b5Y23+bGpEIoP0EBAilH41rjfEE2yIo8Jh4V
	uEqIyfeuUeXzivkw8/0BG/p9mz0KETfDWdt+QQEjTK7CAJ/nG/WJtXUeKSzoJs2RfXl0
	tUf0kCGwh9TR9rGw6XHY5Fk3TX6u2loZ1h/lg0PbwQDnQUcepFOakh4IRVhI1w5qjVo+
	cmZw==
X-Gm-Message-State: AKS2vOy0lp+UToIQOVLZfVLFIbndFCxshYVsycxbJOXWGIXn9f8qUSA0
	Y/IkhdNDA8nfsUf84fpvcqSd3boT6T10
X-Received: by 10.223.170.7 with SMTP id p7mr5051588wrd.72.1497402095902; Tue,
	13 Jun 2017 18:01:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.176.170 with HTTP; Tue, 13 Jun 2017 18:01:35 -0700 (PDT)
In-Reply-To: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
References: <BFC5B361F1B24D4CBD6CB3483A12B103@PAULD>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 13 Jun 2017 18:01:35 -0700
Message-ID: <CAJ86T=VA9KfPzc+ZLJNNjDyZ0rP7_=drbiPfFci3xm3qi9N83A@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Image lacks libraries needed by SDK
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
X-List-Received-Date: Wed, 14 Jun 2017 01:01:41 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jun 13, 2017 at 4:24 PM, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> I have a working system image for my 32-bit Atom-based hardware, based on
> Morty. My application is a C++ program that runs as a systemd service.
> I've always built the application outside Yocto, using the Eclipse CDT and
> whatever GCC was on my Ubuntu system. It gets installed into my hardware
> on a separate partition, but runs fine because my build host and target
> are both x86 machines.
>
> In order to try out the much more recent compiler in the Yocto SDK (and to
> prepare for converting to a different architecture in the future), I built
> a standard SDK by using do_populate_sdk on my image. I managed to modify
> my project to use the toolchain and libraries in the sysroot in the SDK,
> and it successfully produces an executable. But when I copy this into my
> system, it barfs because there is no libstdc++.o (and perhaps other
> libraries) on my system. And there is no libstdc++.a in the SDK.
>
> Why would the SDK, built against a particular image, not include the same
> shared libraries as that image?

The SDK explicitly includes various gcc-runtime packages (including
libstdc++) via packagegroup-core-standalone-sdk-target, whereas an
image will only include libstdc++ if something else in the image has a
runtime dependency on it (e.g. a c++ application, etc).

> I noticed that when I built an SDK under
> core-image-minimal, it didn't include libasound, but that was included
> when I built it under my own image which includes ALSA. So it's obviously
> paying attention to what's in the image. So is there some package I need
> to include in my image to complete the set of libraries to match what's in
> the SDK?

Not directly. You could add packagegroup-core-standalone-sdk-target to
the image, but then you'd get the corresponding -dev packages too
(header files, etc). Your best bet may be to add libstdc++ plus any
other individual packages to the image as you find you need them.

>
> --
>
> Ciao,               Paul D. DeRocco
> Paul                mailto:pderocco@ix.netcom.com
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

