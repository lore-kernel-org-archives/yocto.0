Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9D22E00A81; Mon, 10 Aug 2015 14:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30C0AE00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:23:55 -0700 (PDT)
Received: by wicne3 with SMTP id ne3so37574381wic.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=Qe3Ap4QvaeIgccrPHBKFgdCuvTfNe+zhcCyWf0Eusfs=;
	b=X7kR2EZqm4Utzg2sgc7PtKEDq3GObrKnHL39ZQmbLfzsa7/7TZmzaMNekK1nrLX/ch
	tCnf4fA3EgrhlcTMaNXc+EgbYy24pJuLxsZlZdmeThuDBDgWXVghsOjMOovxiy9h9s+o
	GG26wYROQ0qx7xZN5X9Cquh5tQIYA41uZbF3xcZTwaxoukXVDwIVLsYaJRyyMXXAvgcn
	7N3+WrpS7zG7m6NmCwQ8Af8sp/GKYuQIVO4RXVHiAJWhka6wNU8DYTb6zvflHKVcLhRR
	s+CfZpk4zDeuPPmvR9E04RWQh5TH+NFqob2nHLlYyI4n/DbL0I+E35o4tMiCAestDc2P
	9XZQ==
X-Gm-Message-State: ALoCoQlFxbQ5YctBEZpCL5lVcZCqMC9hkS2UgaRVdcmYo3R3/cV9fWyl4cgZPyNRppVGSc2lHCLD
X-Received: by 10.180.104.68 with SMTP id gc4mr17963386wib.78.1439241834739;
	Mon, 10 Aug 2015 14:23:54 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	ej5sm31283374wjd.22.2015.08.10.14.23.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 14:23:54 -0700 (PDT)
Date: Mon, 10 Aug 2015 23:23:52 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20150810212352.GA3025@resin>
References: <1439241756-4610-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1439241756-4610-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Pierre FICHEUX <pierre.ficheux@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/1] rpi-default-providers: Let users overwrite the default providers
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
X-List-Received-Date: Mon, 10 Aug 2015 21:23:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 10, 2015 at 11:22:36PM +0200, Andrei Gherzan wrote:
> [Feature #65]
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> Signed-off-by: Pierre FICHEUX <pierre.ficheux@gmail.com>
> ---
>  conf/machine/include/rpi-default-providers.inc | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
> index ee3a3ac..cabbd43 100644
> --- a/conf/machine/include/rpi-default-providers.inc
> +++ b/conf/machine/include/rpi-default-providers.inc
> @@ -1,10 +1,10 @@
>  # RaspberryPi BSP default providers
>
> -PREFERRED_PROVIDER_virtual/kernel = "linux-raspberrypi"
> -PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
> -PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
> +PREFERRED_PROVIDER_virtual/kernel ?= "linux-raspberrypi"
> +PREFERRED_PROVIDER_u-boot ?= "u-boot-rpi"
> +PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
>  PREFERRED_PROVIDER_virtual/egl ?= "userland"
>  PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
>  PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
>  PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
> -PREFERRED_PROVIDER_jpeg = "jpeg"
> +PREFERRED_PROVIDER_jpeg ?= "jpeg"
> --
> 2.5.0
>

Merged.

--
Andrei Gherzan

