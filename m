Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2697AE00C9F; Sun, 28 Feb 2016 02:49:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53288E00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:49:52 -0800 (PST)
Received: by mail-wm0-f50.google.com with SMTP id p65so34572150wmp.1
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 02:49:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=ZmfZUj1E5Mo5yLOY/taxbjOOzNt5QKJXJvRsDA6BLUE=;
	b=mj8IInUfLf1uWLfcr6rxYeD1J9KMRhGD6kIooyhE8POji2inCyY2K1Pu5ceu/yN+ns
	xFQd0CB9B3eeGMQps/vlUre9laMKe+JXIMsmyBBPoHAXfeQuFdMH8VihTCEcrB2SR08Y
	RPz4Xes5sbqzW5hUJtv9EZJX4YO0KoXl+3WFis8Yan35PcwGFR4FFum29pQM/4FbMqU1
	/j/xC6jQ0LPn9+U5Z8a4RrEloGvCdrC00aFvdl9MkW5U98tnV+C4dzdzgSuuCs0/ZTw9
	2qJVHEZchaK0NuPi3ZCKJCkrGAfclNr/6KMStj6tHVQqPVHiyltdTU13wt3E2+Z5VpCQ
	ypng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=ZmfZUj1E5Mo5yLOY/taxbjOOzNt5QKJXJvRsDA6BLUE=;
	b=JDD8/PjjkBNmX/+qNfjEaXhqoqUW/kjtic6RXlzTErwKcgT6TNQoLRGACeRo2AVEla
	Zx7pGa1Zyer9XoE4AiWTw0edoQRkjw9daUIUy0v9Jqf5z2ONlwosu/RYJFuyNrlm272K
	a4oso9iHndOcPUBx0mwz5rN0wqA53Xy28TmIglX7rULEkhznSnRsJ3Mt81PClWS/l+O0
	NhUIyRvPUSqHK/DliI/XcZx/bmI76oRGlF1R0G7PkkWWgmI2Fm88iAO4QWIvVnl7OvlG
	aiUV9E2iuBpYK8hFrE1h+ulPWMCZj5anzqPfV6yBYsbUbbK2eWSxO4epnqSP8dauI4ua
	Y4AQ==
X-Gm-Message-State: AD7BkJKkkbIyD1wjy3Dfvl9l+li3paGTSQ3MdUcCPmjoQi3/PMa492QIfGBYhAM2CHXNmg==
X-Received: by 10.28.216.141 with SMTP id p135mr6648360wmg.22.1456656591667;
	Sun, 28 Feb 2016 02:49:51 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	gt7sm20680795wjc.1.2016.02.28.02.49.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 02:49:50 -0800 (PST)
Date: Sun, 28 Feb 2016 11:49:48 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160228104948.GE12618@resin.home>
References: <1455099994-7591-1-git-send-email-voxtok@voxtok.com>
	<ce692fa73cad56b731e286cf407112dd@technux.se>
MIME-Version: 1.0
In-Reply-To: <ce692fa73cad56b731e286cf407112dd@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V2] linux-raspberry.inc: add initramfs support
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
X-List-Received-Date: Sun, 28 Feb 2016 10:49:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 09:09:33AM +0100, Petter MabÃ¤cker wrote:
>    5
> 
> 
> 
> Petter Mabäcker
> 
> Technux <petter@technux.se>
> www.technux.se
> 
>    2016-02-10 11:26 skrev Stéphane Cerveau:
> 
> append initramfs creation to install RPi bootloader trailer
> 
> Signed-off-by: Stéphane Cerveau <[1]voxtok@voxtok.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi.inc | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/l
> inux-raspberrypi.inc
> index 70e8bfe..74dbf19 100644
> --- a/recipes-kernel/linux/linux-raspberrypi.inc
> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
> @@ -64,4 +64,13 @@ do_rpiboot_mkimage() {
>          fi
>      fi
>  }
> +do_bundle_initramfs_append() {
> +    if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
> +        if test -n "${KERNEL_DEVICETREE}"; then
> +            # Add RPi bootloader trailer to kernel image to enable DeviceTree s
> upport
> +            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_
> OUTPUT}.initramfs ${KERNEL_OUTPUT}.initramfs
> +        fi
> +    fi
> +}
> +
>  addtask rpiboot_mkimage before do_install after do_compile
> --
> 2.1.4
> 
>    Hi,
> 
>    You should change the path to mkknlimg to use:
>    ${STAGING_LIBEXECDIR_NATIVE}/mkknlimg
> 
>    See the discussion about this in:
>    https://lists.yoctoproject.org/pipermail/yocto/2016-February/028769.htm
>    l
> 
>    BR Petter
> 
> References
> 
>    1. mailto:voxtok@voxtok.com

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Peter. I pushed a v3 patch which adds this change. Thanks.

-- 
Andrei Gherzan

