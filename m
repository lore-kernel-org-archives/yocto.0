Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BE67E00B58; Sat, 24 Oct 2015 12:37:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DD60E00473
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:36:56 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so68692583wic.1
	for <yocto@yoctoproject.org>; Sat, 24 Oct 2015 12:36:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=kcSnKZcei+KBXc9jW4f5JVYhPloe95GTsP0R/i6bWpc=;
	b=YD3MpOYZUnOY/wzxOUMWNUr5fTVQpNc7dodnw2qmmcPQB5p+yMuUPZW0Gw4w08K4Rk
	wK0q3YO2YDyPejZbfrNmKdazew+O4nAi7Zm5AHTMG4w60xw1vgScqNzcki0C7g6H319V
	jJYrvpS47Egipf6eXU3iMS8hg2P+PMnTKDhOWUH+sSecVB39IWC5Gzqtu87F8xeallU/
	rWxjWURSV8/Y2GIvuYV5Ho+PtjfMlgLUtDw+6ulY9iOnZjZfS/U20iJL5N9xAkCdHYtD
	vr8asAeezQ1dTd+y0npGKsd/9ne8BrnmPxIPbazu5EQVG8pUSZv8m97hGiqSVC2yS2En
	3xgw==
X-Gm-Message-State: ALoCoQmSWG/Wk0oHVk8Eju36kAjKPRiM9bcwvGArOm4nEoKfX8iXkLnDYqLMPXFR5ouNggZSZGnR
X-Received: by 10.194.91.143 with SMTP id ce15mr12822058wjb.93.1445715415443; 
	Sat, 24 Oct 2015 12:36:55 -0700 (PDT)
Received: from resin (dslb-088-067-185-162.088.067.pools.vodafone-ip.de.
	[88.67.185.162]) by smtp.gmail.com with ESMTPSA id
	bh5sm29674616wjb.42.2015.10.24.12.36.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Oct 2015 12:36:54 -0700 (PDT)
Date: Sat, 24 Oct 2015 21:36:50 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Message-ID: <20151024193650.GA3960@resin>
References: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
MIME-Version: 1.0
In-Reply-To: <1445461931-18349-1-git-send-email-andrei@gherzan.ro>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [meta-raspberrypi][PATCH 01/11] linux-raspberrypi: Update kernel to 3.18.16
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
X-List-Received-Date: Sat, 24 Oct 2015 19:37:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 21, 2015 at 11:12:01PM +0200, Andrei Gherzan wrote:
> From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> 
> This requires some changes to KERNEL_DEVICETREE as the dtb
> layout has changed to support overlays. This change also
> makes us ready to support kernel 4.x series
> 
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---

Entire patch set was merged to master. Thanks.

-- 
Andrei Gherzan

