Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1507BE00CA4; Thu, 10 Mar 2016 05:46:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C20C9E00B45
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 05:46:40 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id l68so3920064wml.3
	for <yocto@yoctoproject.org>; Thu, 10 Mar 2016 05:46:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=x8/RmC1beQK3K9l8vT52qXpASR3eHU5OTnPiVLMyx/g=;
	b=c3VgQCBSi5NkkLPj0psI25Hjbtr1q05tA7Q4AYdGCBwhZryDld4HT7cHJJog1yCnkT
	Ci8vcB6ucEpsoYqr7Yl/5Vi/0x5eWtFkgkRheIKEmiKcrE4Rq/ior3dOd4cLllNnghVr
	rId9mLmN+X2ayr8BpyAayVRNIXg+PgziJvcNGe8LvUmV0Vh91Y8OZbYLZedtmfUw6fmk
	Me85Oa50/B2RJqJlgPkL+tu9mDnh7oBVp3n5l+zcQNB+tazHwAZ0AlvtkC6DQt0b1LNV
	28l3mVfCtGU2CUwk/HDUpezYC6sakLdMyLAjNgp6lF72JNUfwffsVKfiIQl89tKcutv+
	pYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=x8/RmC1beQK3K9l8vT52qXpASR3eHU5OTnPiVLMyx/g=;
	b=H1864jBvYSAVymrSvlVcoj/caz2dHK2hT3Cb1AcqQGIJrvcMGwRHV52LXnbjh+XPSD
	vedQ3q3/FnNVH5WtooZW/wHw3GF6nfLuIqnQnYH7lNg0Wwnvf0KuCMyW5hH7UK1qZa2a
	HBnSdBKP3qHRupgx5ky6Lqh0N5T9T+/vm7fa2lNB1H5Ur6lMuBTjnUrfrsDI/xQuNY1m
	5Yb6L6fjlx7x4ou4PKSTtRjT4StQSu+4PqlxeluU3x8QnhthQyv0Tnj/5R6tgyH11B04
	Z0wqx35UVAWgzSfK1mXQM6hEia+PIQevXMzRQOP6eXbkE717PK9UPsdB4607JkFwdRmt
	te2g==
X-Gm-Message-State: AD7BkJJuMTufTJ742ulIz9wiNadbjFdWVTw1Xl1KwnTf9i66tF50e3oBN+s0SNfCmgBv9w==
X-Received: by 10.28.145.8 with SMTP id t8mr4095268wmd.103.1457617599271;
	Thu, 10 Mar 2016 05:46:39 -0800 (PST)
Received: from resin ([109.100.140.128])
	by smtp.gmail.com with ESMTPSA id t8sm3593952wjy.41.2016.03.10.05.46.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 10 Mar 2016 05:46:38 -0800 (PST)
Date: Thu, 10 Mar 2016 14:46:32 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Theodor Gherzan <theodor@gherzan.ro>
Message-ID: <20160310134632.GA20329@resin>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Update revision to include rpi3 support
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
X-List-Received-Date: Thu, 10 Mar 2016 13:46:43 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 09, 2016 at 04:15:02PM +0200, Theodor Gherzan wrote:
> From: Theodor Gherzan <theodor@resin.io>
> 
> Signed-off-by: Theodor Gherzan <theodor@resin.io>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index e26019e..b55c9ff 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,8 +1,8 @@
>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
>  
> -LINUX_VERSION ?= "4.1.17"
> +LINUX_VERSION ?= "4.1.18"
>  
> -SRCREV = "cb2f10196a9b718a2d94bb4ac0887c2ea14988ae"
> +SRCREV = "fcc9ad149fbe78e9931b8e769ac54d5430587465"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y \
>             file://0001-dts-add-overlay-for-pitft22.patch \
>            "
> -- 
> 2.1.4
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Merged the entire patch set to master. Thanks.

-- 
Andrei Gherzan

