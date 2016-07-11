Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 920F4E00E10; Mon, 11 Jul 2016 16:00:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AA2DE00E0C
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 16:00:55 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id f6so82466ith.2
	for <yocto@yoctoproject.org>; Mon, 11 Jul 2016 16:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=S42ROSjp/z/r3ojr9SbX8Rth+Em8Iz739bFHhANMrfw=;
	b=C/IpAPgbTXIIuZm52UOknhqMT4bVG53sPq/IpA31b0CtshC1dod/d1Zizb6BJGd8I1
	XdZDKKh0wQkrbHRtzkSMVWtCV6Pg6UN3GCGV9f7U0u5z4c9B5sjjbCrPLKtvKuS8W+Dm
	iqb8H9tnt+RzyzRviSenMDu7B+vTAwlEdEcgrqyiS8lRtfJsR1WtTtg+pGeZR/xNMTFn
	JVx4FOYVKbo3JEt7p0Hrgsj84mbhmRAgBTbU6lCSxrTq6OSaH/QXB2NVVFyGUvsFkAEF
	zqdgzdL4ieUOlUwHYIwncPAd1hOQ7X2HY/LcWBUTmmZVd4gPrA5o21cL0gtuhh3AC2bS
	KwJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=S42ROSjp/z/r3ojr9SbX8Rth+Em8Iz739bFHhANMrfw=;
	b=Nvmov6WtHQrUGLkp9RMg2wLEtXta949dMG8R9Vz3j3ZIB0JsZW3+/yBh7+Y5B/K66l
	7WhAsuVPvIlgwyFs9HRto4M7KTSHgSGDZissVMpg9z0ftc8ZuwyECzmWxhsBWpp164iW
	rfxQWEzDwhWDlUa2z3asQz1duJDmHiqExbDxBEYF2iIDJNlYUCQx/Q99cvntyCCaegLn
	fXrE8McMU+TATCI0byqa30yn2/bDKK65VsLpAi4iHSaivKpXiV+NPBJYdnfkH391F5/h
	Uf0mhRKYXsrDnAhk+kz24/WZfApH+cQnEQKUO7zSo5XZ/qBXt8wczWtRn38/n2Y6T3FY
	RAeg==
X-Gm-Message-State: ALyK8tJi9Rwf/Tgnwr8KuQxr8KhCcWfk+UnDkxRSlUuEXtL1/o2ts1680F8ZIC/0nji5/JIxi+AoNLNr8yt4Xw==
X-Received: by 10.36.216.5 with SMTP id b5mr18074851itg.19.1468278054541; Mon,
	11 Jul 2016 16:00:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.150.130 with HTTP; Mon, 11 Jul 2016 16:00:54 -0700 (PDT)
In-Reply-To: <20160623213431.5513-4-raj.khem@gmail.com>
References: <20160623213431.5513-1-raj.khem@gmail.com>
	<20160623213431.5513-4-raj.khem@gmail.com>
From: Jonathan Liu <net147@gmail.com>
Date: Tue, 12 Jul 2016 09:00:54 +1000
Message-ID: <CANwerB0-kwTu93ybFFpMwdSZ1KOVGOTO2=PgoKuoqwgv_MOtAQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/4] sdcard_image-rpi.bbclass: Exclude DATETIME from task stamp
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
X-List-Received-Date: Mon, 11 Jul 2016 23:00:58 -0000
Content-Type: text/plain; charset=UTF-8

Hi Khem,

On 24 June 2016 at 07:34, Khem Raj <raj.khem@gmail.com> wrote:
> This helps in fixing occasional error seen quite often
>
> ERROR: wpe-image-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4 for /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wp
> e-image.bb.do_image_rpi_sdimg
> ERROR: Taskhash mismatch 7ea6b505bb7a2cc5ca03552bcf3333fa verses 3be7cdad8c4532430d96368c5ca523d4 for /a/builder/home/kraj/work/oe/meta-metrological/recipes-core/images/wpe-image.bb.do_image_rpi_sdimg
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/classes/sdcard_image-rpi.bbclass b/classes/sdcard_image-rpi.bbclass
> index 4dfd7a3..e566669 100644
> --- a/classes/sdcard_image-rpi.bbclass
> +++ b/classes/sdcard_image-rpi.bbclass
> @@ -73,6 +73,7 @@ FATPAYLOAD ?= ""
>
>  IMAGEDATESTAMP = "${@time.strftime('%Y.%m.%d',time.gmtime())}"
>  IMAGE_CMD_rpi-sdimg[vardepsexclude] = "IMAGEDATESTAMP"
> +IMAGE_CMD_rpi-sdimg[vardepsexclude] = "DATETIME"

Did you mean to append DATETIME to vardepsexclude or override IMAGEDATESTAMP?

>
>  IMAGE_CMD_rpi-sdimg () {
>
> --
> 2.9.0
>

Regards,
Jonathan

