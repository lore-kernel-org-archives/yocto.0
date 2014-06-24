Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 634E3E003D2; Tue, 24 Jun 2014 02:51:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.41 listed in list.dnswl.org]
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A439E00282
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:51:07 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id cm18so28204qab.28
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 02:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=SKWZUaQaxyDxpFP6TwpqZ2QQuFkdiyHH9UrOxnXY6oM=;
	b=PxhjBjiCfYxjXFiRYqCGYUY9m5h6c4wKJ93zytIiMjrTE80um+xgs4NK8XpktR1pPl
	aNdrlt8KmCqynQq9M4PVVcDcjrOjmYMYz4zm0fkWhysBi4TOwGVdvWgEWgftdpJnh/LV
	VMbWMusR28qB4ECJFSnabVT5e4bzgnuPI1axKJNu9r02f1DTADy6ThtwYd9Z4nrs1zuk
	Shi3mMC2d4a0QGkBQrqexY29l7qvOW/tzhKDi1Eqxm57NRt8T2rkc660XR2+lIq3wxIJ
	OFQIHbfDMvAPl3k++IVc58FLzL+qCgOztFDmkYktTEbppKaSoHgFYDuf/Zp87vnUszND
	z3dg==
X-Gm-Message-State: ALoCoQlbFDBQo9qUADab8LAhm6SjOX6UO882WBwmj3azccEBYB9eqHMH6GFRB50HM3U1D2k+Kf9F
X-Received: by 10.140.91.226 with SMTP id z89mr38804248qgd.65.1403603466475;
	Tue, 24 Jun 2014 02:51:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.40 with HTTP; Tue, 24 Jun 2014 02:50:46 -0700 (PDT)
In-Reply-To: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
References: <CAF_dkJActcO2Yje0EAN7bO2zaPKP9DZA9D1pqCwp3oJbA8-cFw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Jun 2014 10:50:46 +0100
Message-ID: <CAJTo0Lbwhi88Qx4K3Q=bYAkv044KPYrEVFGCRsW9=uG4Qd7hOg@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the simplest, or better yet, canonical way to add a shell script to core-image-minimal?
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
X-List-Received-Date: Tue, 24 Jun 2014 09:51:13 -0000
Content-Type: text/plain; charset=UTF-8

On 23 June 2014 16:56, Patrick Doyle <wpdster@gmail.com> wrote:
> Should I create a core-image-minimal.bbappend file with a SRC_URI
> pointing to my script and a do_install rule to install it?

Create a new recipe for the script and then add it to the image.

The documentation is useful:
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#extendpoky

Ross

