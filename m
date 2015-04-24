Return-Path: <tom.rini@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9879CE007B6; Fri, 24 Apr 2015 06:29:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-yh0-f50.google.com (mail-yh0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39ACBE0049A
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 06:29:30 -0700 (PDT)
Received: by yhda23 with SMTP id a23so7244618yhd.2
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 06:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ROZF1OdjrEhm+TqD41S3X9tjIvMhYq3Y3jg9FMSLdMQ=;
	b=JFsrPTMBJTP4s9PKQniKds/4P7RAHJCGG/HEFavyqwzWT6Ydr0p3FiEeAUloLshWi5
	qKDG9F8iOantobWubhCp8mlQ2Zxx73bs5pWVN8CaRzmrSqqjd5mCyiZE7YGSpA5VoVU9
	i05FMvhEahjvmfDCwXUc2MtgETsqQPfjIWKH4VGAdnTBpLuA7wFkvf7rBG0E7pLwXH5j
	/MbLPfl+6qUtZosSqXmm2sOLMFKyEJTm0b3kOFqDFDMNeY2VP4XsmSSz1GG+azvZR9Bu
	Jb4SEy/e+4D0ivK9u9cMU4ldCO6+aehy1JyEllwXZ3cpAUuaxgZE6JPiLpzxR1IuDpJe
	Xw8A==
X-Received: by 10.236.19.170 with SMTP id n30mr9579768yhn.2.1429882169986;
	Fri, 24 Apr 2015 06:29:29 -0700 (PDT)
Received: from bill-the-cat (cpe-174-106-48-186.ec.res.rr.com.
	[174.106.48.186])
	by mx.google.com with ESMTPSA id q30sm8929794yhb.33.2015.04.24.06.29.28
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Fri, 24 Apr 2015 06:29:28 -0700 (PDT)
Date: Fri, 24 Apr 2015 09:29:26 -0400
From: Tom Rini <trini@konsulko.com>
To: Craig McQueen <craig.mcqueen@innerrange.com>
Message-ID: <20150424132926.GS16702@bill-the-cat>
References: <5500469A22567C4BAF673A6E86AFA3A402227F4FA4DF@IR-CENTRAL.corp.innerrange.com>
MIME-Version: 1.0
In-Reply-To: <5500469A22567C4BAF673A6E86AFA3A402227F4FA4DF@IR-CENTRAL.corp.innerrange.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Location of U-Boot environment for BeagleBone Black
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
X-List-Received-Date: Fri, 24 Apr 2015 13:29:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Apr 23, 2015 at 05:10:21PM +1000, Craig McQueen wrote:
> I'm building Yocto for BeagleBone using the meta-ti layer and the kernel and U-Boot provided by that layer.
> 
> I'm having some trouble understanding the location where U-Boot saves its environment for BeagleBone Black.
> 
> After doing some reading, it looks as though it might be saving environment on a "special" eMMC boot partition (which is not the same as the FAT16 partition 1 I created to store MLO and u-boot.img).
> 
> However, this is only when booting from the on-board eMMC I think. When booting from SD card, where is environment stored? I can do "saveenv" command in U-Boot, and it says it's saving it to MMC.
> 
> U-Boot# saveenv
> Saving Environment to MMC...
> Writing to MMC(1)... done
> 
> But then after a reboot, it says:
> 
> MMC: block number 0x100 exceeds max(0x0)
> MMC: block number 0x200 exceeds max(0x0)
> *** Error - No Valid Environment Area found
> Using default environment
> 
> So does that mean that U-Boot can't use a saved environment when booting from SD card?
> 
> Actually, based on some simple testing, it seems that it _is_ writing to the boot partition of the on-board eMMC, and loading it when it reboots from SD card, despite the error message. This is confusing.

First, please post the whole boot log, not just part.  That will make it
easier to explain what is going on I believe.

> What about the case of a board with no eMMC, such as BeagleBone White? Where would it save environment then?

There's a number of different places that env could be stored.  I forget
if meta-ti is patching things such that it saves to a file on the FAT
partition for example.

> How can I erase the saved environment when booting from eMMC, to ensure that U-Boot defaults will be used? I see that when Linux boots, there are block devices /dev/mmcblk0boot0 and /dev/mmcblk0boot1. But it seems I can't write to them:
> 
> # dd if=/dev/zero of=/dev/mmcblk0boot1 bs=1k count=1k
> dd: writing '/dev/mmcblk0boot1': Operation not permitted
> 1+0 records in
> 0+0 records out

In Linux you need to unlock these first.  Google should point out the
file you need to write to.

-- 
Tom

