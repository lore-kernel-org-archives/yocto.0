Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAE0BE008B3; Wed, 18 Nov 2015 19:23:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9CD5E007E1
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 19:23:26 -0800 (PST)
Received: by qgcc31 with SMTP id c31so383081qgc.3
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 19:23:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=TRfaE7nmzEJCNecTOWywRuYYDXcMR65niXtLf9sHAlI=;
	b=rHQdfjGiRDJO/2JJwvqs78rFM5sOCNM3dWxQaqHxy9KAcXNLIEmlR4kP/6hNLaBN9k
	jKJncQF8r1gYaM+tOslAfTqLD2/eXqTlLeNpIsCCOVLE1SJsSHabGRfQ0acIF3Q8/HJn
	U2m6vyLw5SPKIZ3buLNq4xp7iFaFwMqHTm2BNlBJ4L/qpRck38YICHyN8BG77IbNees1
	ercyoxTArw+rXvCvGVC0fQ8c3v1aTPFuvWz2a3WFCXCzL4s8l64um6LMcnQRtXr+7R4x
	iMjftF1JJwSuq3aakP+fPi4LAtkYn2aciCVMty3F4QhoQi2CqfGz5xErl/i1tggw97fs
	stDg==
X-Received: by 10.140.33.139 with SMTP id j11mr5035975qgj.49.1447903405639;
	Wed, 18 Nov 2015 19:23:25 -0800 (PST)
Received: from [192.168.0.10]
	(CPEbc4dfb2691f3-CMbc4dfb2691f0.cpe.net.cable.rogers.com.
	[99.231.110.121]) by smtp.googlemail.com with ESMTPSA id
	q185sm1815972qha.28.2015.11.18.19.23.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 18 Nov 2015 19:23:24 -0800 (PST)
To: "Clay D. Montgomery" <clay@montgomery1.com>, yocto@yoctoproject.org
References: <564BC862.2080308@montgomery1.com>
From: nick <xerofoify@gmail.com>
Message-ID: <564D40AB.9060602@gmail.com>
Date: Wed, 18 Nov 2015 22:23:23 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <564BC862.2080308@montgomery1.com>
Subject: Re: Problem Booting Yocto 1.7.3
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
X-List-Received-Date: Thu, 19 Nov 2015 03:23:31 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 2015-11-17 07:37 PM, Clay D. Montgomery wrote:
> Hello,
> 
>    I'm trying to update from Yocto (Dizzy) 1.7.2 to 1.7.3 for a Wandboard Quad, but it hangs at the point where u-boot is trying to start the kernel. I'm guessing maybe this is because my image has u-boot 2014 and I need u-boot 2015?  I have read that u-boot 2015 is required for Yocto 1.8 (Fido), because it has a newer kernel (3.14). But, my Yocto 1.7.3 build is still the 3.10.17 kernel.  Is it possible Bitbake built this image with u-boot and kernel versions that are not compatible, or am I missing the real issue?
> 
>   I am pasting my boot log below, up to the point where it hangs. I would really appreciate any help.
> 
> Thanks, Clay Montgomery
> 
> 
> U-Boot 2014.10+fslc+g5fd0b60 (Nov 14 2015 - 17:25:56)
> 
> CPU:   Freescale i.MX6Q rev1.2 at 792 MHz
> Reset cause: POR
> Board: Wandboard
> I2C:   ready
> DRAM:  2 GiB
> MMC:   FSL_SDHC: 0, FSL_SDHC: 1
> auto-detected panel HDMI
> Display: HDMI (1024x768)
> In:    serial
> Out:   serial
> Err:   serial
> Net:   FEC [PRIME]
> Hit any key to stop autoboot:  0
> switch to partitions #0, OK
> mmc0 is current device
> reading boot.scr
> ** Unable to read file boot.scr **
This looks highly suspect to me. 
> reading zImage
> 5442368 bytes read in 359 ms (14.5 MiB/s)
> Booting from mmc ...
> reading imx6q-wandboard.dtb
> 43370 bytes read in 21 ms (2 MiB/s)
> Kernel image @ 0x12000000 [ 0x000000 - 0x530b40 ]
> ## Flattened Device Tree blob at 18000000
>    Booting using the fdt blob at 0x18000000
>    Using Device Tree in place at 18000000, end 1800d969
> 
> Starting kernel ...
Also try using early printk in kernel and see if you actually reach the kernel initialization 
routines I am not sure if ARM supported early printk but it should for printing before serial
console is completely initialized. This would allow me/you to see if the kernel actually starts
and whether u-boot or the kernel itself is the issue.
Cheers,
Nick 

