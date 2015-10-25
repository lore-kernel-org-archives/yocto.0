Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94601E00B8F; Sun, 25 Oct 2015 12:12:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f177.google.com (mail-wi0-f177.google.com
	[209.85.212.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09441E00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:12:25 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so88021231wic.0
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:12:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=fPYBNz1/lMXRV5Lsac4Dpue5o/oqBE5ox1xeTGRP7Gg=;
	b=irtYUBYxNjxBMQxyVn5v+CbMWv0CfCzv/9Gw7/CgZsKJQuv0of8AP5PZu7GFTvDfEc
	Qp5yZ7eKLX4+E4JogHKXFOGjVfcI+5rjmAt9EKWYLTQBGllJOvCOp/5nFg/GrznLPAfV
	Z/7Bwu3Tfg3xeuB9IIHAjgUJnlRLnaag6K8q6akxIUz4nCPPmWbRChy9x9sky110v9UR
	JsEzoQ4HPjXu0kTIRfqWDZ+y3Pj0aeOstjmm6+MwBR7o4BXaz+6Csjuo1H0vdRZfCTmL
	kUqANPG/n9NGjgaHXtL47MnaljySJIbiJDfnRWXbcRJXxJlnfVZ7tZRe6EojgrtD8h31
	Rcxg==
X-Gm-Message-State: ALoCoQlhLtgpgftYRataEtLZQyB2vYoDlSY1QEVeWoureQgSnAkoqd7hRcbh/A2DTjGIFrGgI+9T
X-Received: by 10.180.9.172 with SMTP id a12mr14814285wib.37.1445800345059;
	Sun, 25 Oct 2015 12:12:25 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	cv1sm11123372wib.18.2015.10.25.12.12.23
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 25 Oct 2015 12:12:23 -0700 (PDT)
Date: Sun, 25 Oct 2015 20:12:21 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Erik =?iso-8859-1?Q?Bot=F6?= <erik.boto@pelagicore.com>
Message-ID: <20151025191221.GB11349@resin>
References: <1445799925-3758-1-git-send-email-erik.boto@pelagicore.com>
MIME-Version: 1.0
In-Reply-To: <1445799925-3758-1-git-send-email-erik.boto@pelagicore.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Add rpi-ft5406-overlay to KERNEL_DEVICETREE
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
X-List-Received-Date: Sun, 25 Oct 2015 19:12:29 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Erik,

On Sun, Oct 25, 2015 at 08:05:25PM +0100, Erik Botö wrote:
> This is DTB overlay is needed for the official 7" touchscreen.
>
> Signed-off-by: Erik Botö <erik.boto@pelagicore.com>
> ---
>  conf/machine/include/rpi-base.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index 8caa5ba..97c7465 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -31,6 +31,7 @@ KERNEL_DEVICETREE ?= " \
>      overlays/iqaudio-dacplus-overlay.dtb \
>      overlays/lirc-rpi-overlay.dtb \
>      overlays/pps-gpio-overlay.dtb \
> +    overlays/rpi-ft5406-overlay.dtb \

In what kernel versions is this dts available?

>      overlays/w1-gpio-overlay.dtb \
>      overlays/w1-gpio-pullup-overlay.dtb \
>      "
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

