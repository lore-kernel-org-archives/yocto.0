Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62587E00C28; Tue, 13 Oct 2015 10:46:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DAFFE00B2B
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 10:46:27 -0700 (PDT)
Received: by wicge5 with SMTP id ge5so68970678wic.0
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 10:46:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=rHI6pqji6az+jtB0TiQRYSZ9x5VjvKmnLFlm34SC+5c=;
	b=C8dN+76m1AxxdwcBaBsTFiN1HhiSwpc1kIhaAsEgKCcTq/2+z2hstrumDX0+ewoqhr
	QZFiJqf0nbk7/lyk5utLjlZ2GAjTJ/l/PnehhAcsvUvx4fw/Iuh4csvWRx4ZHYhnll9h
	YMrL8x/Hb9aqxWS2A6lOkA1aNWD0by9FNzveTf7tZZ+6cLuvNri2uhRaJ5++aaWRV96/
	4f4/MMaEkf2pcW5TuF+WK0MvErMR2UlzadbQqxWu6jwavga6ZB/43yU28kMJx4chmscv
	5FPahhZmXup/nEzEvY+9BsQxvLgh8hmbcj90S54iYCbHnR3n2TPIZh1SAMwhYE6xviS1
	1xcQ==
X-Gm-Message-State: ALoCoQnHSOoe8HyfNpD7stq8H0lBth0mEpNaLD1cr/rtIA3J/JjYUbbQDAu28H84+CpRzJc2eAFe
X-Received: by 10.194.9.97 with SMTP id y1mr45054741wja.84.1444758386948;
	Tue, 13 Oct 2015 10:46:26 -0700 (PDT)
Received: from resin (ipservice-092-217-119-031.092.217.pools.vodafone-ip.de.
	[92.217.119.31])
	by smtp.gmail.com with ESMTPSA id iw8sm4983534wjb.5.2015.10.13.10.46.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 13 Oct 2015 10:46:26 -0700 (PDT)
Date: Tue, 13 Oct 2015 19:46:24 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151013174624.GA8800@resin>
References: <1443924933-29412-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1443924933-29412-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Tue, 13 Oct 2015 17:46:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Oct 04, 2015 at 01:15:33PM +1100, Jonathan Liu wrote:
> SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
> index d60a3e9..70e8bfe 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -12,7 +12,8 @@ SRC_URI += " \
>
>  COMPATIBLE_MACHINE = "raspberrypi"
>
> -PV = "${LINUX_VERSION}+git${SRCREV}"
> +PE = "1"
> +PV = "${LINUX_VERSION}+git${SRCPV}"
>
>  # NOTE: For now we pull in the default config from the RPi kernel GIT tree.
>  KERNEL_DEFCONFIG_raspberrypi ?= "bcmrpi_defconfig"
> --
> 2.6.0
>

I tested build locally and based on your comments on PE I merged this patch.

Thanks,

--
Andrei Gherzan

