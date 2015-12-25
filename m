Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17F38E00D0C; Thu, 24 Dec 2015 21:56:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5407DE00546
	for <yocto@yoctoproject.org>; Thu, 24 Dec 2015 21:56:22 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id m11so90483023igk.1
	for <yocto@yoctoproject.org>; Thu, 24 Dec 2015 21:56:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=g/HTHt60BW1NoSoQbQ6aGcFodwF1pawS/hyERUFvixs=;
	b=eul3iGfK7bRlT+z5Wq0TCDFO9Yz5gHMh2WDasyXwcjdWq3ySlm0ZK9jxG7zqU0l9C/
	r6mBEJ9KIJll5wfzz+HOe3HZY+eNIBqLoyAAuNYdxv6j/xQunlI/nLaBZmEAvQQXW5Y8
	Sfe4SfrT6Jrn+EqOe0q6+J4JOKIzmN7MX5H+pSI6mBBkHOUEQe1Yg8fXZXgF5LXqT5UL
	EK3a7mahFg54BH/ydwUe6PFit339ByR0SD6wH7s8gCyi0DCWm19JspvfxxIa9XMnCbDp
	RcsmnptqzBKOgZBaXbdlu8OxNif3dS7YF0x1Sa9HHniVduRvcPBV1kepgffdKomrnuvy
	nfPg==
X-Received: by 10.50.20.138 with SMTP id n10mr40128550ige.11.1451022982362;
	Thu, 24 Dec 2015 21:56:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Thu, 24 Dec 2015 21:55:53 -0800 (PST)
In-Reply-To: <567CA2F0.5000201@huawei.com>
References: <567CA2F0.5000201@huawei.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Dec 2015 21:55:53 -0800
Message-ID: <CAMKF1sr6o=oNsA9gKP9g3jWQqqDcqr8oXsZE5eqg2Dj=gX+J1A@mail.gmail.com>
To: Jin Li <lijin14@huawei.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use systemd as system init manager
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
X-List-Received-Date: Fri, 25 Dec 2015 05:56:26 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 24, 2015 at 5:59 PM, Jin Li <lijin14@huawei.com> wrote:
> Hi,
>
> I am trying to build yocto project which use systemd as system init manager.
> But the qemu boot up and still use INIT as usual. The rootfs even fail to install systemd.
>
> I refers to yocto docs http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#ref-features-distro
> I use meta/recipes-extended/images/core-image-full-cmdline.bb and add the following part
> to support systemd:
>
> DISTRO_FEATURES_append = "systemd"

space after first "

> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>
> Did I miss somethings ?
>

DISTRO_FEATURES_append = " systemd"
DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
VIRTUAL-RUNTIME_init_manager = "systemd"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"


> Any help would be appreciated.
>
> Jin
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

