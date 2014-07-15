Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E158E006ED; Tue, 15 Jul 2014 06:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
Received: from mail-qc0-f171.google.com (mail-qc0-f171.google.com
	[209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8150E00543
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 06:48:05 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id i17so2372925qcy.2
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 06:48:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LiB/Nawj8/bO6MrYEFJ70RMmOIj9TRzsgRGtmYQhoSc=;
	b=VCQ6QzEO2xnC7RBZdyeRpdri9fOH9u1AYXDBmNa3c/gST7j5i6PolhaKi+6nId2xhv
	NHn4IQNc/0OMpva4piQpOsfIRr9ZWStghy9x3PxPwEtI65NJ4YUxfrgoMp2JQMzHCzLp
	CCjZYykv3bwKRQq0/fhm/oGCkxoaZyg+xWn0pZBVw5eeF2RhdX+fk9TGHd45jH+SLBi0
	HveAR0s0QSRgEo7LinFLvRXLmcvF2mVMrOKYdPWPjSYiv/IhMQw5HcbzUOv0bMSSI/fP
	X4a/56vywhRsy1QUO8wzLzfESGZHAD1M7DNwAv6d3kPWM6/0VU/Wks04o8u7nB3a6hd0
	ABTw==
X-Gm-Message-State: ALoCoQnKutSoTvSCK7V13EkllFlHuqKP6CUBqe05yMqCiLUpZ6VuLbPHAx2Va5ktMpwZAay83xxD
X-Received: by 10.224.167.136 with SMTP id q8mr33397177qay.35.1405432084467;
	Tue, 15 Jul 2014 06:48:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Tue, 15 Jul 2014 06:47:44 -0700 (PDT)
In-Reply-To: <1405431059-47938-1-git-send-email-daniel.bornaz@enea.com>
References: <1405431059-47938-1-git-send-email-daniel.bornaz@enea.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 15 Jul 2014 14:47:44 +0100
Message-ID: <CAJTo0LZUau7rrNkpuO2CxaGH979CnBr=ONcmyPHRJ5gWs6Pz8A@mail.gmail.com>
To: Daniel BORNAZ <daniel.bornaz@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH 1/1] Qemu security patch: CVE-2014-3471
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
X-List-Received-Date: Tue, 15 Jul 2014 13:48:14 -0000
Content-Type: text/plain; charset=UTF-8

On 15 July 2014 14:30, Daniel BORNAZ <daniel.bornaz@enea.com> wrote:
> +++ b/meta/recipes-devtools/qemu/files/pcie_better_hotplug_support.patch
> @@ -0,0 +1,74 @@
> +The current code is broken: it does surprise removal which crashes guests.
> +
> +Reimplemented the steps:
> + - Hotplug triggers both 'present detect change' and
> +   'attention button pressed'.
> +
> + - Hotunplug starts by triggering 'attention button pressed',
> +   then waits for the OS to power off the device and only
> +   then detaches it.
> +
> +Fixes CVE-2014-3471.
> +
> +Originated-by: Marcel Apfelbaum <address@hidden>
> +Updated-by: Daniel BORNAZ <daniel.bornaz@enea.com>

Missing upstream-status (and a proper signed-off-by).

Ross

