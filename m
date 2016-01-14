Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A5CFE00BE8; Thu, 14 Jan 2016 07:28:28 -0800 (PST)
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
	*      [209.85.192.177 listed in list.dnswl.org]
Received: from mail-pf0-f177.google.com (mail-pf0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23B2CE008C8
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 07:28:25 -0800 (PST)
Received: by mail-pf0-f177.google.com with SMTP id 65so101328742pff.2
	for <yocto@yoctoproject.org>; Thu, 14 Jan 2016 07:28:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=3oNq29rKNEQTtxCSaTrcWt2SztH4SGhc4cfueJJVrH4=;
	b=a6drIXuMe1tvmgBZfZ+daAyu5NNczpZmiCV3tEfsjGGJfNnBaT0KRDmQAf6sHuf66Q
	wcbBAUeYUfDK3z1KcPhBcZrh2SOxizZd1BEFe6mcVkaBG+RWMdAxcuXMQGo7VMgckGIV
	xMOci1yhX5/i3fJPpqTQ/TaFuP6ZsGw822zrsYwGSduWzvQ6O6PpmkuTBmB0Q3hEPB+y
	2r1SLskIDZCCkO5W1tvWXNOPAQJZPxiS1SGiIr2oI8jN8cKXCHC+Ud4ch5Tf5Inj1fbg
	yiQ+f/qKMmJ2gJA0cSxaSqLGp8LRHtIdkAtAIpHllwYCWFJt6a8mrEr8DHarZ4qdR6PP
	sVoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=3oNq29rKNEQTtxCSaTrcWt2SztH4SGhc4cfueJJVrH4=;
	b=mKrNeYLy7mvrCdamunbZmoLayEK1YRz1r8rn4xcdxb96mY3BCtcEuMcUgb2nznf/8U
	SIPph+j1RPKZjJ5F/idkil3SMaapNdGVhQ6e5ctvprf1D6i6ckt1G6nRxxeIYKkc0799
	64wx+nq3Gt48xWBk8zeGsIGhJJYkaPtjGFfZnh2S5VePkXsj6HW1pSKO5fHg0lWWG7MJ
	LyKhfg6ONO/S+2xegLxW5SpJsMyW1PY7dPYaZzjlVnxsu3te0TGuotcpC85fyU8uErBv
	LLT1V47kgyZwDLZ9J5vt92ghVMT7tl+b/nmVucL1eB7n0GIGPuA/Sjw5J8BprU4Psxcf
	O+Rg==
X-Gm-Message-State: ALoCoQkzB27pvPBDuUiNndIo3W2K0owaFsfExOrtwtr8hE34auZguKAMSMFfcJbFXmjsVjBN1kS83VvFpe6V0hXoDcd+jzmBdw==
X-Received: by 10.98.14.80 with SMTP id w77mr6805061pfi.152.1452785305364;
	Thu, 14 Jan 2016 07:28:25 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:a166:4370:9f55:ef0b?
	([2601:202:4000:1239:a166:4370:9f55:ef0b])
	by smtp.googlemail.com with ESMTPSA id
	w9sm656118pfi.72.2016.01.14.07.28.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 14 Jan 2016 07:28:24 -0800 (PST)
To: "Reshetova, Elena" <elena.reshetova@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
From: akuster <akuster@mvista.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <5697BE96.5020603@mvista.com>
Date: Thu, 14 Jan 2016 07:28:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <2236FBA76BA1254E88B949DDB74E612B41A4F981@IRSMSX102.ger.corp.intel.com>
Subject: Re: Package naming "exceptions" in Yocto
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
X-List-Received-Date: Thu, 14 Jan 2016 15:28:28 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 01/13/2016 11:43 PM, Reshetova, Elena wrote:
> Hi,
> 
>  
> 
> I have a small question about "exceptional" names of packages in yocto/OE.
> Kernel package is being one example with the name "linux-yocto" vs.
> traditional "linux_kernel". 

Since you ask about "Yocto" naming in the Poky distribution I have the
following comments:

The Reference to "Yocto" should only be in terms of the project. The
Soures you refer to in support of the "Poky" distro.
> 
> Are there more such yocto-specific packages (of course excluding FW and
> other bsp-related packages)? A look over the package list didn't reveal any,
> but I wanted to double check. 

The Yocto project should not have any specific packages. Its "Poky". In
fact in the last OEDAME it was decided to rename the meta-yocto* layers
to meta-poky*.  I was hoping would have been changed by now.

People are saying "Yocto linux" which is wrong. Its the Yocto Project
which has a test distro named "Poky".

Just ask Phil B.


> 
>  
> 
> The reason I am asking is that in case when we try to determine the package
> CVEs against the NVD database, in these particular exception cases, we
> probably want to check not only "linux-yocto", but also "linux_kernel" open
> package CVEs with regards to specified version to make sure we cover as much
> as we can. 

There may be a need to have a mapping for upstream names to packages
named within OE. They may not all be 1:1. Or in the case of someone
outside the project runs this in there distro they can.

regards,
Armin

> 
>  
> 
> Best Regards,
> Elena.
> 
>  
> 
> 
> 
> 

