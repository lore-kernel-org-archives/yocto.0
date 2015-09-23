Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4855E00F74; Wed, 23 Sep 2015 15:25:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D9E7E0055C
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:24:56 -0700 (PDT)
Received: by wicfx3 with SMTP id fx3so4177793wic.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 15:24:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=jUoYZUcDudZCa7iay2B5laFpiXrq86THkiCJxP1dTjk=;
	b=YEx9RNPH8z+BWBpz7aEKHZaUFNWs8EHxWGwRFpGZS2uzQcD29Sd2raDAzHukp9px2o
	DWKJXlj5UWY/TjDwYCcGaQqPEuRvAcjP3wzJr/qO4YFYdkLhCSM6ZUYm35dqs+6DiAcD
	JOw9NDa8Bh/2dvjGPi7MmQlFADQ/m1dJemlMKoiXfAOJppigwkVzselcCL0bhQSt80e6
	Xr78dR9bcngB2lrkwPKkWn6fibafshkNzAKXmicSIsxccOU2zVpg8ua3dQsdL40PEaT9
	f2f9X3rQo1SVoZy26y6KBSGoaOl+0zQz/kaXBE4HKegAro368qNhTA3YnSVG7vQUI71q
	3xSw==
X-Gm-Message-State: ALoCoQnFtvMRHmdmRE+TehcxXooVZ00gqOYF5WJwsZnbTA/WOjECFLHMf2mdh1j5zt9jdMLKRNm7
X-Received: by 10.194.204.195 with SMTP id la3mr22089936wjc.77.1443047095890; 
	Wed, 23 Sep 2015 15:24:55 -0700 (PDT)
Received: from resin (dslb-088-067-185-139.088.067.pools.vodafone-ip.de.
	[88.67.185.139])
	by smtp.gmail.com with ESMTPSA id uq5sm9367093wjc.3.2015.09.23.15.24.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 15:24:54 -0700 (PDT)
Date: Thu, 24 Sep 2015 01:24:52 +0300
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20150923222452.GB23493@resin>
References: <1442632046-6793-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1442632046-6793-1-git-send-email-net147@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: use existing ROOTFS_SIZE variable
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
X-List-Received-Date: Wed, 23 Sep 2015 22:25:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Sat, Sep 19, 2015 at 01:07:26PM +1000, Jonathan Liu wrote:
> The ROOTFS_SIZE variable is already set to the aligned root filesystem size.
>
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

Merged to master. Thanks.

--
Andrei Gherzan

