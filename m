Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DFA5E00A62; Tue, 21 Nov 2017 09:04:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f175.google.com (mail-ot0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8021DE006CA
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 09:04:30 -0800 (PST)
Received: by mail-ot0-f175.google.com with SMTP id b54so11113033otd.8
	for <yocto@yoctoproject.org>; Tue, 21 Nov 2017 09:04:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wqewMi+yuYhbKrd+1AZzKQRxI4pHFt5WchDB8n8cb6o=;
	b=Spwxl5FMLJNqmw9LrAu4AfXKwwdLG35cbpVZVLciGPj+ejXvU19btbeiu8Y+JL+th9
	r9mQM8zWx0XoDYxBkFhRr32xqQg2ZQkgslsbJTLcOXTVNOa7+56E0bTZxnVgiehQNCX1
	4pZBUpNWJGfliGQeJqA9P75S42xWH0nkellluDw3Lg9P/Kwii2CXPki+uWeKGjjsLo9C
	dkxQ7/vHmdT42XulfM+yaSin+6eu0UFfF123gY5LgT8ugXkCApWA85+FffPFsiqg9RV1
	U1AJccuU07di+lKlswGRNSL1NPUpchgtqBzQAYtedmXhDPJPxPJNzlPpI60z3ce7Tvio
	9rfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wqewMi+yuYhbKrd+1AZzKQRxI4pHFt5WchDB8n8cb6o=;
	b=Uo929xoXGb07jCwjcKbrvpIkkR3v3FjtzWtMPqmDVO+oEN3WWjT7MS88vKOr6x5uWb
	9lZTMIL2LF9SP8BuqgD49unqnjX3Nf15XrDe31h6ZcEnhpeBst2mjAr+rWNU88K65nB6
	HXzys/sh6tdxnzuBjzgNvKy0/HKeFvWCw+55mMMNVSJq8Freo2X7K8hGpv/dJW6CTh3R
	VQjqPGejiyM8weLakUCpn1omQhTz+r59wL2Aln8fP0XeRHmoH+dDuVL1mp8BrAmTaWa0
	6CxylWZshi8YRyO/en294kNmR0HS99of3mXkG+JnL8N8Jg+RemPDUrTWJqJAk4qS8G9P
	ZKGA==
X-Gm-Message-State: AJaThX7Y3gIOhlIBmlVgLKkHUocdKUFIv1Pi3zbDvBb5XY2QDbX++yKo
	Sn8eaxmmzNzTjFwkSw1U9pSQVsbyPUmf2qpfmEVhRw==
X-Google-Smtp-Source: AGs4zMbcYbK6QhUMFIBsF8slPeVCddjoyZOlPZntS3zyv/+SZeQ+OLeocaahPiOy9TZMkn047W7ofPWm1Gd2/gyR4y4=
X-Received: by 10.157.68.157 with SMTP id v29mr10844807ote.274.1511283869561; 
	Tue, 21 Nov 2017 09:04:29 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Tue, 21 Nov 2017 09:04:29 -0800 (PST)
In-Reply-To: <CAE0QtjN1jE1ci2J1cMC8sQ2Pw70AOTc5bP8rQsrN2fBRpbhGxw@mail.gmail.com>
References: <CAE0QtjN1jE1ci2J1cMC8sQ2Pw70AOTc5bP8rQsrN2fBRpbhGxw@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 21 Nov 2017 18:04:29 +0100
Message-ID: <CAOT_U5YEjzDEo=AUBdmkaQ0eLeV98YDuqrpxtOHCoZJqr1bvrQ@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: How to add support for "usb WIFI dongle"?
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
X-List-Received-Date: Tue, 21 Nov 2017 17:04:32 -0000
Content-Type: text/plain; charset="UTF-8"

Some hints on where to start at:

> What should I do to add support for "usb WIFI dongle"

Am guessing the dongle works with Raspbian or id gets detected
once you plug it into a desktop Linux machine.
Once you do that type:

    dmesg

And it will list the kernel modules related to your dongle.
You can use those buzzwords to google for what does
enabling the dongle actually translates to in terms of kernel config.

After that (depending what linux you're using) figure out how to
run menuconfig. It might be something like:

    bitbake your-kernel-package-name -c menuconfig

and try checking out the boxes that you found out
might be relevant to your wifi dongle.
Save it, build the image, and see if it got you somewhere.







On Tue, Nov 21, 2017 at 5:32 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> I am confused on adding support for "usb WIFI dongle":
> * My boards do NOT have WIFI capability, so I will add a "usb WIFI dongle".
>   (I have two boards: Raspberri-PI-2, SIMATIC IOT-2020)
> * Suppose we start from "core-image-sato"
> * What should I do to add support for "usb WIFI dongle"
> * After we build/boot the image, how can we verify and bring the WIFI up?
>
> Thanks!
> Jerry
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

