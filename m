Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C335E00BB9; Tue,  1 Mar 2016 05:26:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84491E00B97
	for <yocto@yoctoproject.org>; Tue,  1 Mar 2016 05:26:33 -0800 (PST)
Received: by mail-wm0-f43.google.com with SMTP id p65so33389567wmp.0
	for <yocto@yoctoproject.org>; Tue, 01 Mar 2016 05:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=to62/aM90foTbNWcORIZBx/z9Omx9boJAIP954Z+KU4=;
	b=TXBZc+CoWfOvgh2xIG/xGldpF2Vp/pF/L6BGU3onoodJxPSrjsVQGVZ0srkkzfdhd2
	BI38lC1KgvLk0ZjHTTMTKGoYVL/xzu/tlcmAXDKU6ytmXDFIzYbdzSkVyF0WuLefgP4v
	+4f+stiiTS9R1H0MAzk6uSRv38w90ssaN5yiT2M5IPYlo540aluqeah6SExzqT68ymR6
	BkSKp+DILs3zsSQkgYJlofZIjWItHwJORGiUxpSQPEXhrkedTfVC3QCSF9d54aHyTdyB
	n8XrKQqDwmjw31s1SykMenQOcu1XIIAVy5zMXxKY8t8yzPvC1tWnZDGDTF+ZL/ev1L4n
	VCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=to62/aM90foTbNWcORIZBx/z9Omx9boJAIP954Z+KU4=;
	b=UTmDDoQYg3Y4tWGh8FMSGjV316IJLlJDKDDDoFcJJR5vVNy43SvV8x1rHvsF+bZl2N
	foVuzXpwntrWewgJsut3JrGXtz+QSFxK4B7PN71z7GUKJNhMQR7wGAnKOpJ772L+UuX8
	S9J+IHslLdEMaqJtQhrbSExpyGzVAuAhXTEJvvLTCF8MGAeSv5r8aLlpZIb1bFEvP4gD
	QoeK2grJRk9dKwIHCFvH2NGoJQgwQdjLPdWvJkh23cyvVMhh6t+iGNPUckv2XrGGI5Ju
	7WGvcsqXSCdUklLAl+1fC3M/4sPRrmHKatsgfNG96SqdseEC0u93y0lFXQgGgnuphZDv
	Gweg==
X-Gm-Message-State: AD7BkJInFaJpnObCLxAYI52Ha/XzcHe2fXXiESBbdb7PRD8pWBGgazYBYJPmyeSNRr3HCQ==
X-Received: by 10.194.216.99 with SMTP id op3mr20947692wjc.26.1456838792392;
	Tue, 01 Mar 2016 05:26:32 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ka7sm30893833wjb.8.2016.03.01.05.26.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 01 Mar 2016 05:26:31 -0800 (PST)
Date: Tue, 1 Mar 2016 14:26:29 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20160301132629.GB21641@resin.home>
References: <1456667173-28743-1-git-send-email-petter@technux.se>
	<1456667173-28743-5-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1456667173-28743-5-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v3 4/6] rpi-base.inc: Allow MACHINE_FEATURES appends
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
X-List-Received-Date: Tue, 01 Mar 2016 13:26:35 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Sun, Feb 28, 2016 at 02:46:11PM +0100, Petter Mabäcker wrote:
> Ensure that it's possible to add MACHINE_FEATURES from places that will
> be executed before rpi-base.inc (like e.g. local.conf), without having
> them overrided.
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---
>  conf/machine/include/rpi-base.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
> index e097702..c8f6cd6 100644
> --- a/conf/machine/include/rpi-base.inc
> +++ b/conf/machine/include/rpi-base.inc
> @@ -37,7 +37,7 @@ KERNEL_DEVICETREE ?= " \
>      "
>  KERNEL_IMAGETYPE ?= "Image"
>
> -MACHINE_FEATURES = "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
> +MACHINE_FEATURES += "kernel26 apm usbhost keyboard vfat ext2 screen touchscreen alsa bluetooth wifi sdio"
>
>  # Raspberry Pi has no hardware clock
>  MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"

Merged to master. Thanks.

--
Andrei Gherzan

