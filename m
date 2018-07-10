Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B5EE00DB7; Mon,  9 Jul 2018 18:44:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 316D9E00B5E
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 18:44:51 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id y9-v6so11555291vky.3
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2018 18:44:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=tS8kCAVUvbIqAMi0mECgCUD0u5nta9HvWrliWZxN+WY=;
	b=rgABikhm8rZN6+hvW12GZi1FfefC5Xd2Mu89A/6MmK7zusut03DzIzuxLdL4YVp7xf
	N2y5Q0Y62c/pAwUg0vq8wg+rE77kaQkp/1lsTN1LJVq9fmEaTgSfJP7wpTaiVsaRBCr8
	JYm03lck5tclO9fd3FQZRxYGWTprJsggIHjw21858YfILU2MEfsbaZaQhymmI8eW7bOk
	F84fi2lLfLRLqHIXsXxo/TdwXdZizPCK779ZHSZqtbC6FwZR3L3p46rJOylkjDt+D0mD
	ZBh22IX3XcY5p3O84xcraLqS70Tll7ZMinmBLZpWNI6IxGbGwiKNivdp9edtp8SWaSmh
	54yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=tS8kCAVUvbIqAMi0mECgCUD0u5nta9HvWrliWZxN+WY=;
	b=aV1Hosepo1X/ui/hKKqdw0gr09h8ijJUA1LavFcwNggBlA+JCobaygjtbaNAnk3cmb
	sDxoOerWv4UvP6k3Tw23pwzOycW5CHsCEFRdc+ix8hCkF6b0RrQXktRM9z+jwzfLaI+p
	uD04+cTHh/Y4BEW8jyuqR1+bwqHGxq0puQZeOPE6pc2dJEETpnGVKieDI/BkVYpUaij5
	dA+tiBpu9/RquBPcjKK2DlyA+QrwQbB9tlObT8aSkvrjeXsP6xH1PhtBrQfjPrreuZi3
	gAB+dVnLCwgSUnUrVDPu4+hnFhQR/ppAWgj4+kGXmAXN0S8uap1anGrHeOSP4pXYZ5Ny
	BVKA==
X-Gm-Message-State: APt69E3wLzpnfetUjaf3s5pfuGFaXcFccgN0rQFX2rifDK6jLTerU2f0
	V/h7mpzzExUDtU6EKOZDKpenPyFUSI87iXFj4Lzi6g==
X-Google-Smtp-Source: AAOMgpe37Zx0bCcVhprMZZm6eR48ZGHshlUsoY9L69NAcjtoXd/PDqlsqXdMQaqfCgE8L9x3yUT7EVil5cvwSadsjxw=
X-Received: by 2002:a1f:2cce:: with SMTP id
	s197-v6mr12780737vks.106.1531187090266; 
	Mon, 09 Jul 2018 18:44:50 -0700 (PDT)
MIME-Version: 1.0
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
In-Reply-To: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 9 Jul 2018 18:44:24 -0700
Message-ID: <CAMKF1spfJ0_UXPbhS3YM1xP_y5meheoreQ67+vVc0xrXiC4_Jw@mail.gmail.com>
To: simon.chamlian@mpbc.ca
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Tue, 10 Jul 2018 01:44:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Jul 6, 2018 at 8:20 AM Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
>
> Hi,
>
> Is there a way to keep the source code of a package to be able to modify it and then compile?
>
> For example, with LTIB ( Linux Target Image Builder ), it was possible with a command to extract the source code from a package, make modifications and then re-compile?
>

Please use devtool which is aimed at exactly what you want to get done here.

https://www.yoctoproject.org/docs/2.6/sdk-manual/sdk-manual.html#sdk-a-closer-look-at-devtool-add

> Thanks,
> S
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

