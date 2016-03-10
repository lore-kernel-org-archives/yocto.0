Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C453E00CA5; Thu, 10 Mar 2016 06:18:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B308E00C91
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:18:03 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id n205so4119993wmf.2
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 06:18:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=tNvtkBsqCw8d3IhYC0fkLf9DVSncjlzfHld1ufs5gRk=;
	b=zt8wSMNy7Qj7HBlTOY8lRLv2BjUzkxpCMYqIGlPmv8NHdlkXeAXXED9mJuatEhNrfi
	kfcWDaXBVMofgpzD13ycmj2z5E1GnopWKgYkcVlHOgHUuTOKG3dlXmfC9/hrIjxbNU3g
	TYDNWs8soiDW7G2mKLX7W6U/5L7teV6LeWffnsRx40CnMY1OHEh9ytKz3XMSvxgtg7o+
	J7GqzfsrM5XKNn8HcGQbQub8G6JwB/gFsD8hP4eRh3WaoOQ3fDmE98QFHOGD5Vr1lYGB
	Y3aQw4qv9mDVlkAgn2lTmm/wcgNzCehqy5C+lCGGSKZipKpYVn/G31wowAdFWXmzO5YL
	Opzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=tNvtkBsqCw8d3IhYC0fkLf9DVSncjlzfHld1ufs5gRk=;
	b=WFVwWoq1gcGcJGyesgKMVX2M3xa08y1oEZXJx3iQLuUW3qzMnD7M0zA405anJuVdxo
	31kqdpVy5+eIsUe6wIb1SWcNzNcszimCeQABHyxtg0uxgBTOPggPFtQhTuMjmWw+Nfq3
	6JDOBiMhNBp1kVwhIM5liZQrP6CdTaqD4iz0Hyi4ngZo2ocevWB12k8xILZtlq7rVFpm
	I7IY5tmwU02OmGF5FgDZL7GsjLWqukT0bFjDqF+6DBewgmNih0P4Ole/aV552kacJ3Ae
	IC/vRVXDl929PmhvzgGvjvZArQs5yw+Tfuc5RWmJSAKDgPkx8aR1q70NkLKAVqR96khx
	lJ2Q==
X-Gm-Message-State: AD7BkJI1Hn5SVJ8MXmzmhdGC6LlBAQ6ygnzTPHc8Z6q43ddxc9q7I+jNln+FoKpoOr7w/A==
X-Received: by 10.28.50.133 with SMTP id y127mr4157383wmy.4.1457619482323;
	Thu, 10 Mar 2016 06:18:02 -0800 (PST)
Received: from resin ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id y3sm3733743wmy.17.2016.03.10.06.18.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Mar 2016 06:18:01 -0800 (PST)
Date: Thu, 10 Mar 2016 15:17:59 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160310141759.GC20329@resin>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<f53bfb635f959e264525a04901a33ce73ae0b3db.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <f53bfb635f959e264525a04901a33ce73ae0b3db.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 20/23] linux-raspberrypi: Add recipe for 4.4 release
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
X-List-Received-Date: Thu, 10 Mar 2016 14:18:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:59PM +0000, Khem Raj wrote:
> Make it default kernel as well
> 
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  conf/machine/include/rpi-default-versions.inc | 2 +-
>  recipes-kernel/linux/linux-raspberrypi_4.4.bb | 6 ++++++
>  2 files changed, 7 insertions(+), 1 deletion(-)
>  create mode 100644 recipes-kernel/linux/linux-raspberrypi_4.4.bb
> 
> diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/include/rpi-default-versions.inc
> index c879dde..e65a4ae 100644
> --- a/conf/machine/include/rpi-default-versions.inc
> +++ b/conf/machine/include/rpi-default-versions.inc
> @@ -1,3 +1,3 @@
>  # RaspberryPi BSP default versions
>  
> -PREFERRED_VERSION_linux-raspberrypi ?= "4.1.%"
> +PREFERRED_VERSION_linux-raspberrypi ?= "4.4.%"

4.4 branch is not yet default branch in upstream so I will not yet set it.

> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.4.bb b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> new file mode 100644
> index 0000000..47084e4
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> @@ -0,0 +1,6 @@
> +LINUX_VERSION ?= "4.4.1"
> +
> +SRCREV = "52d3149aba3c684db1b6c739ca794dc330d92929"
> +SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.4.y"
> +
> +require linux-raspberrypi.inc
> -- 
> 1.9.1
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Andrei Gherzan

