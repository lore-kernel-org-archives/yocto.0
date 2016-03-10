Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56CF0E00CB8; Thu, 10 Mar 2016 06:11:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A12CE00CAF
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:10:52 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id n186so4102735wmn.0
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=MhRa4zISvXYgsQKK2F6DJGs0nFCUBx6W/ByyECs1vRg=;
	b=A59lx/+gf4YOd5XbeCYGQWRlJq2vfuHc9iWV3wwsWk+UNJG7cA3/Va06V7tqpC29xv
	vzazeMqUlFsj2Zfd42e9y+T/DvkFflYMGS+31NzmdBw+1bWII7bCRdMynzXajWkl83Qe
	/iQDgARYF+kY5bm/qe/W0mqW04KhzyQ09HVd7fDsQyFCLbMLzDkoUm32pRWSE/JQ/Gn0
	C5zyl7S9kRIMBYAnvTQFl/ywlJkD5V0hJvgkpcXtHm4IPkdRtmEhvSb38dtSJIl4x1Ii
	8FXBH3Jum+QGY+9cZaKFsXaT17HBK57YOcebc/zNCRtqcbIFtCs1wLkPMmdLkYBpC2Jz
	qm9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=MhRa4zISvXYgsQKK2F6DJGs0nFCUBx6W/ByyECs1vRg=;
	b=eQp02f749DXGlxKm5UrvE3BXlHU/nEe+GINixzQVJhbw8wbMXU8YVg2D07iUqNfjep
	tGteeKEyI9sKFzY0DcnTPu/x8VJt/lPYtkjLXSr7tFHUgkrCQQYT+80SG3b05SbeppfI
	tU4oUVyW728vaep064zeDs6dB1re+SXrQHsFnwaebwowOricaiczBPduOlHW+Fi9sK3S
	y9P1/XxeyhwLN9oETh1+76V9l7uIc4+PByiu42kPQ1XiA2Xuu0Kp2PrysYwHIBcW7kYV
	x2ZNdcyuHpXGfqZPb7sNlpWN/vZ0u1uH7DIJzYMu6YUNWQSeWArJ6P3lLVteHwxHyJeC
	5M7g==
X-Gm-Message-State: AD7BkJIt5j1X7fFnAZgLsLtFdOok63UeY2wBJL9n16wKXD7/x4T2+O5jqzE6kc98++JCoA==
X-Received: by 10.194.189.143 with SMTP id gi15mr4010486wjc.54.1457619051669; 
	Thu, 10 Mar 2016 06:10:51 -0800 (PST)
Received: from resin ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id y3sm3705339wmy.17.2016.03.10.06.10.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Mar 2016 06:10:50 -0800 (PST)
Date: Thu, 10 Mar 2016 15:10:49 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160310141049.GB20329@resin>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<2fd22fccd2de90ffeb79279e791d58d9b334325b.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <2fd22fccd2de90ffeb79279e791d58d9b334325b.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 18/23] firmware: Upgrade to latest stable 20160209
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
X-List-Received-Date: Thu, 10 Mar 2016 14:11:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:57PM +0000, Khem Raj wrote:
> Readme change a bit thats why LIC_FILES_CHKSUM changed
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-bsp/bootfiles/bcm2835-bootfiles.bb | 2 +-
>  recipes-bsp/common/firmware.inc            | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/recipes-bsp/bootfiles/bcm2835-bootfiles.bb b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
> index 0665944..b279e15 100644
> --- a/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
> +++ b/recipes-bsp/bootfiles/bcm2835-bootfiles.bb
> @@ -1,7 +1,7 @@
>  DESCRIPTION = "Closed source binary files to help boot the ARM on the BCM2835."
>  LICENSE = "Proprietary"
>  
> -LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=e86e693d19572ee64cc8b17fb062faa9"
> +LIC_FILES_CHKSUM = "file://LICENCE.broadcom;md5=4a4d169737c0786fb9482bb6d30401d1"
>  
>  inherit deploy
>  
> diff --git a/recipes-bsp/common/firmware.inc b/recipes-bsp/common/firmware.inc
> index 020f0ed..2e0864e 100644
> --- a/recipes-bsp/common/firmware.inc
> +++ b/recipes-bsp/common/firmware.inc
> @@ -1,5 +1,5 @@
> -RPIFW_SRCREV ?= "f7108cfdc715f79c5fd051fb4c3ae6f4b1b01f23"
> -RPIFW_DATE ?= "20151021"
> +RPIFW_SRCREV ?= "3442862c10fab68c2e88d660d2e69c143bb1f00c"
> +RPIFW_DATE ?= "20160209"
>  RPIFW_SRC_URI ?= "git://github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"
>  
> -- 
> 1.9.1
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Dropped as rpi3 patch set updated firmware to a newer version. Thanks.

-- 
Andrei Gherzan

