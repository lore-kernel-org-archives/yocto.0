Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 653C1E004DD; Thu, 14 Aug 2014 10:14:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74087E0034B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:14:54 -0700 (PDT)
Received: by mail-wi0-f174.google.com with SMTP id d1so9298214wiv.1
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:14:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=bG9gfKsoXl9nISrk/89oKfJhyS98FKbg1Hk1M6vVGPc=;
	b=JYzVyh5WqD+YICDQzqoy/G6nkcH97mcbg60p/kP6xIxgGLmVyEFmhgRiiuxpSuYaCz
	3OqGOY4iMFjQk3Uv6DhQjqYaEU1gmCxq+JnrooaqE18ffJ6UwoYuAeU3FMneSqrVvsrV
	tKJN3sA1Jy9wL6bxVskoH4XLMZqkk/1AMfTz13YCAQmVnOLb/eUgmh43+cnACb+bLNdU
	oSTkqQI5CyRVdSoNiN8AMlXoY70UI0z0Awu1vG7ByfaFuhmH0RZpfrMdwrRWD+g3Pw3Y
	2vkaMsXbKA1Tv/RiS4+5hN2flCiZKzVs7LYQeRziucflU9ioenA4S0RyQW1VDAa6FB6+
	f0NA==
X-Gm-Message-State: ALoCoQmzKEMb/CNNsVayuv6sW7Xy3bW1ERpb5Dj2I+Rw+TfF0QxyaAjsakldBkkwSjW7wBPAZr1h
X-Received: by 10.180.198.100 with SMTP id jb4mr48899366wic.72.1408036493696; 
	Thu, 14 Aug 2014 10:14:53 -0700 (PDT)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id lg8sm12681373wjb.9.2014.08.14.10.14.52
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 10:14:53 -0700 (PDT)
Date: Thu, 14 Aug 2014 19:14:47 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Koen Kooi <koen@dominion.thruhere.net>
Message-ID: <20140814171333.GD18247@gmail.com>
References: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
MIME-Version: 1.0
In-Reply-To: <1405501129-28327-1-git-send-email-koen@dominion.thruhere.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][for-daisy][PATCH 1/7] rpi-default-versions: Use 3.12.X as default kernel version
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
X-List-Received-Date: Thu, 14 Aug 2014 17:14:58 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Wed, Jul 16, 2014 at 10:58:43AM +0200, Koen Kooi wrote:
> From: Andrei Gherzan <andrei@gherzan.ro>
>
> Change-Id: Ief7949be4b9726b5b6ba58e6280f6b6ca3fdfdc4
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-default-versions.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
> index 04297ba..1ca9701 100644
> --- a/conf/machine/include/rpi-default-versions.inc
> +++ b/conf/machine/include/rpi-default-versions.inc
> @@ -1,3 +1,3 @@
>  # RaspberryPi BSP default versions
>
> -PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
> +PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
> --
> 1.9.0
>

Merged all these patches in daisy branch.

--
Andrei Gherzan

