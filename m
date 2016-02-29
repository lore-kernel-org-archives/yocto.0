Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A5ABE00A27; Mon, 29 Feb 2016 13:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECB48E00D41
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:18:58 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id l68so9273620wml.0
	for <yocto@yoctoproject.org>; Mon, 29 Feb 2016 13:18:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=10w0wJWL84jujyq1kBVdkLpC2uCIvWgbjK3Zhfy3H3o=;
	b=lEooJ86jNu9n2Rn4gMyGxfAU4DG4z1ONLn6nBLhqR7nYVhruK38w6AqOVKYtgAQfac
	FNMpYRGzXUOyIrPiGprHrsmfeJJ7S7mWa90CwqacOrmgeuK6yandErFVrrqs8s5v5u4L
	16eWLmS8KlFAjc7ouDNQNsq7AdesGpER9jVAbpsRTwrXDH7FMjbdi26BwFgk9fBN01Rg
	fnjUQRwRwVEM66shytWAlY3JKzqlTDmi89wsEnlNX5xLD5myogcxrmu5oKI+s2heZOhB
	keKMkKjGcqvGBrFaAGFpz1D1Bmwc2XOrIJTfZMMpnyhQPMDew9clecjqGvL2AkRXd4Sw
	AidA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=10w0wJWL84jujyq1kBVdkLpC2uCIvWgbjK3Zhfy3H3o=;
	b=fmKd5CqxGKIguO1cEFF6LsNZRnC4jfaCAx6fAGRUqEBA9UZ4N+NA6Air02l2pjuCsj
	qQ6rWZ0xVhjK5Vj11/3wMKpVtqAf9/nPb4L+AeZXlb6wuuV8YM1hbptuSq1OSSTcwLfe
	HRRQkriuuQDA9M3c9XSmfdny5GxofLpyVbWds5Jx/+meRS94b22Rj95sCc2jESPOCp2F
	HkcodyoEgnMlSkw6L/w2ShE7E8DcWclC1jllhfUDWqLK6Z6IfhziIr15BE777D3pzeAF
	WG+h6skbJXgQK/CiRxp3/yk8QyufvusZt7Xa1m6eyiBPKetE7dR05p3DvLkDieOmraA0
	H4hg==
X-Gm-Message-State: AD7BkJJk/P4leTElPr+M5k2m0qkZQX9Sx1USuzBHLww1ttsoCluWqMWDZ/f9zJT+aO6NBQ==
X-Received: by 10.28.224.84 with SMTP id x81mr82768wmg.62.1456780737998;
	Mon, 29 Feb 2016 13:18:57 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id g1sm20176256wmc.0.2016.02.29.13.18.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Feb 2016 13:18:56 -0800 (PST)
Date: Mon, 29 Feb 2016 22:18:54 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160229211854.GD2087@resin.home>
References: <cover.1456586389.git.raj.khem@gmail.com>
	<a2d16e5a63d232271d271656833d517258a1731c.1456586389.git.raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a2d16e5a63d232271d271656833d517258a1731c.1456586389.git.raj.khem@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 17/23] linux-raspberrypi: Upgrade 4.1 kernel to 4.1.17
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
X-List-Received-Date: Mon, 29 Feb 2016 21:19:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Feb 27, 2016 at 03:26:56PM +0000, Khem Raj wrote:
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  recipes-kernel/linux/linux-raspberrypi_4.1.bb | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.1.bb b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> index 3a3cf40..d5bfa45 100644
> --- a/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> +++ b/recipes-kernel/linux/linux-raspberrypi_4.1.bb
> @@ -1,6 +1,6 @@
> -LINUX_VERSION ?= "4.1.10"
> +LINUX_VERSION ?= "4.1.17"
>
> -SRCREV = "b74df9228c27f55361c065bc5dbfba88861cc771"
> +SRCREV = "cb2f10196a9b718a2d94bb4ac0887c2ea14988ae"
>  SRC_URI = "git://github.com/raspberrypi/linux.git;protocol=git;branch=rpi-4.1.y"
>
>  require linux-raspberrypi.inc

Hi Raj,

Merged to master. Thank you.

--
Andrei Gherzan

