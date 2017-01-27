Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E376E009AD; Thu, 26 Jan 2017 17:49:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DDCC2E00955
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 17:48:57 -0800 (PST)
Received: by mail-pg0-f67.google.com with SMTP id 204so23672381pge.2
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 17:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=1YfvRxMUir7jSsf5tEr6KSlpqQt33cQFZhjVd2sJ7y0=;
	b=aHyKD0Jnhm8dDbS30r081XHRYPu+UXosHskS65/D9KgvqnxgcY+ECiK6bQcpwKJQzi
	4e5U1J4GDscBuvWAYE83TLvOt0HCw6WZ1jDM1fVQ5CzK/yCvahWjqdFf2oJrzyNPTbJe
	vuye8ozUorplu/HvZR9sC0zQBFk19Qs5Qi6bYia67h4uKZGW1xvqDPD4sAqGKy6OXJDg
	2S8C2mppDY1cG88h8BWcBeb9T2J6MxZTZRXBrlqrEQW7f3JkDBmP4pBiW3tOmLGNgEg7
	qj8rSTbiqAgDIhzLtp9N5+ZEZeRFu5H8mq68vaIGtVU4E4nZDKMvg/vFz3hFNBXyNQI3
	S3Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=1YfvRxMUir7jSsf5tEr6KSlpqQt33cQFZhjVd2sJ7y0=;
	b=AOFAMX/kkXKeeXiar+LNHn+qggY62d57+R0rtS7AiEaYgggBAwXsoe+6dDC2qkSENt
	B8BDSvHCsZRLedK3kZ1Lojg9ObupIG8o79mJFXCjetJYGK/cV3t2qImM7PN6G1MzlwTW
	WoALTun7rPQKLrI1JglZFUmPJaZlfsct35E26hDW/odR31SX5IC8jzjw31AksoxcSpbs
	s/8fNgJT5S0FrKOIREKiBhks7XKU59eQscT71ue54ni6MkT4ELSegLZjKtcArEZcfIGC
	ijmfucxHs2FLH0rZXvMU4LC+T4P57fGDYDy8oXi3GKvXs2ENpsZyVcKQuiXCjou9Hoic
	4xTw==
X-Gm-Message-State: AIkVDXJ13ZsPxBhbd+C3SOv8/XW2LHl+yUCq6J4AF8BS63thrZnI1Gxe6oOOpBwyTWO2hw==
X-Received: by 10.99.102.71 with SMTP id a68mr6672855pgc.67.1485481736643;
	Thu, 26 Jan 2017 17:48:56 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:6524:a1c0:a396:fda9])
	by smtp.gmail.com with ESMTPSA id 184sm6197070pgj.5.2017.01.26.17.48.55
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 17:48:56 -0800 (PST)
To: yocto@yoctoproject.org
References: <CAA2DH4uR5R_jwLEwXdzhUC=C4yFEqmRe8c5nqCCFEc_XsW9ENQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <7f1f57c3-7034-b122-a87e-f0b3804d6e9a@gmail.com>
Date: Thu, 26 Jan 2017 17:48:55 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:45.0)
	Gecko/20100101 Thunderbird/45.6.0
MIME-Version: 1.0
In-Reply-To: <CAA2DH4uR5R_jwLEwXdzhUC=C4yFEqmRe8c5nqCCFEc_XsW9ENQ@mail.gmail.com>
Subject: Re: Is it possible NOT to split kernel modules in multiple packages
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
X-List-Received-Date: Fri, 27 Jan 2017 01:49:01 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 1/25/17 11:29 PM, Prasant J wrote:
> Hi,
> 
> I'm using Morty release to create my custom BSP package for cortex-a5
> based processor.
> 
> I'm using my own custom kernel recipe that inherits kernel.bbclass
> (which inherits kernel-module-split.bbclass)
> 
> 
> All the modules are split in their own rpm packages. Is it possible
> that  only one RPM package is created for all kernel modules and there
> is no split?
> 

I guess you want to include all the modules into your image. In that
case you can add

MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"

in your machine config.


