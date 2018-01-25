Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2709E00E36; Thu, 25 Jan 2018 10:38:48 -0800 (PST)
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
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89CAFE00CF5
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:38:48 -0800 (PST)
Received: by mail-pf0-f170.google.com with SMTP id t12so6404560pfg.2
	for <yocto@yoctoproject.org>; Thu, 25 Jan 2018 10:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=hPe0prQbEawtXhY/50xNEhuuxAAlKLrfDDIdCpN7Vro=;
	b=nS0QaJxvzQ4FeMT4ILVdxZOrLGzNw2q4x27hQTwMm+CFzgMYjHmVUT0gQEbOu+f8hJ
	yaxI7WM9SULut00eTkDsyqR8r+iqdE+uERrb1LX8WhX3zws3u4nEel/7UQd1R4DvE6mv
	c3MDIHP6R0PoqOH9i2ga2Kt+q283DJQ90EBdznMAszlbTDx7eq4AJZIyDqUquu8w/l4X
	6kZCiz1qYkpeibp0xNEZGSrTKGAGnD9xocDPXLAHkAbsZwr4+Z9FfSCCTdqQor+JH2ew
	55bbR4R77+BHP2X2OM/JyfC3pEcHf92NaW8m7tv0c/6HzIUdO9t6r7t1inXirlg36qSZ
	wbjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=hPe0prQbEawtXhY/50xNEhuuxAAlKLrfDDIdCpN7Vro=;
	b=LRE4UMlgb3oFSR/Ce+7tic0X1DK+StMUTpNNUzwdjN19ODjm7CJDQUw7ffD05FiC2g
	vAAfNDpH+yS4v39buc2ihQcofOYIGaCU3iSZNkX+h+4ZY8b+nE40HdHI5gXQ0VTwswZ+
	Gc12/SiqhgJqptDckiaoTbtTib1IEaKZ1QCNIpMJuM9J1iJwWGqpyqHcJnVY2+IeVVIT
	yQUAM/L3CT/vs4rSnznATkl76t8GHT6Gm9wjdTUAcIo5dRlyJEgQi5e34iPHqneycbYE
	cytfsgNdfue4Jztolq1prq6iaWf10IS7xnxYGK/wOOjT1WxoPa/fiFmYK1R+O5IIp23A
	OM7A==
X-Gm-Message-State: AKwxytdAeem7Et8zAUU5EaW86WjGW6ZLUk4AlDbdO1mnkP+4LtjdkBlp
	m3sx1t/MJYguG0fU37E+/Im1D8o1
X-Google-Smtp-Source: AH8x225sLKRW8+j3ph+fhaxjC1i7lKQyFBZ2NBhHlW5Y/AITUcrExovS1iF/lr6LvBaXnU5/dmQLpg==
X-Received: by 2002:a17:902:229:: with SMTP id
	38-v6mr10337403plc.429.1516905527357; 
	Thu, 25 Jan 2018 10:38:47 -0800 (PST)
Received: from ?IPv6:2601:646:8880:466c:c139:8d30:e308:8c2a?
	([2601:646:8880:466c:c139:8d30:e308:8c2a])
	by smtp.gmail.com with ESMTPSA id
	o88sm15672969pfi.82.2018.01.25.10.38.46 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 25 Jan 2018 10:38:46 -0800 (PST)
To: yocto@yoctoproject.org
References: <aefbfb07-78ea-4a73-ea08-1fd5b2b35fe0@moseleynet.net>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <32c21815-dbca-c6f8-4dcf-e46a54a17dfe@gmail.com>
Date: Thu, 25 Jan 2018 10:38:45 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:58.0)
	Gecko/20100101 Thunderbird/58.0
MIME-Version: 1.0
In-Reply-To: <aefbfb07-78ea-4a73-ea08-1fd5b2b35fe0@moseleynet.net>
Subject: Re: [meta-raspberrypi] How to modify KERNEL_DEVICETREE?
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
X-List-Received-Date: Thu, 25 Jan 2018 18:38:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 12/17/17 10:36 AM, Drew Moseley wrote:
> I'm trying to figure out how to properly modify the KERNEL_DEVICETREE
> variable.  It seems that the meta-raspberrypi layer uses that variable
> in the sdcard_image-rpi.bbclass and defines it in the machine conf
> layer.  In poky, the variable is set and appended to in the various
> linux-yocto recipes. If I make a similar change in a linux-raspberrypi
> bbappend file, it works fine for the build of the linux-raspberrypi
> recipe but when it is trying to package up the rpi-sdimg file, the
> changes from the kernel recipe are not available and generally the build
> will fail since the files expected during the image creation will not
> have been created during the kernel build.

for packaging reasons its made global and specified in machine.conf you
can append/remove from it via local.conf or other config metadata

> 
> I can envision several different workarounds here but I'm struggling to
> come up with a solid fix. Does anyone have any suggestions?
> 
> It also looks like the meta-freescale layer will have a similar issue.
> 
> Drew
> 
> 


