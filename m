Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 989B6E00D5F; Sat, 23 Dec 2017 06:50:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601B5E00D1C
	for <yocto@yoctoproject.org>; Sat, 23 Dec 2017 06:49:58 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id y82so28032088wmg.1
	for <yocto@yoctoproject.org>; Sat, 23 Dec 2017 06:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version:content-transfer-encoding;
	bh=/dbch6jurR/3hiq/rZb3uh9y/BAUC8jsf6Q8Vn0Bidw=;
	b=ClhddgMn2GPHwXA136YqwO6CXg0Aue2QnCc6RMDnsHonT2zAbZtiz4egpva/9QRekC
	2Hfb2tY4wQ0UyOdIV/BvPIt28PSfDPhCsBdYVPwd+tmXs0W6gKpge4WFe//nLKcrYkZ8
	PFb00oFC9qtsVtx0p6NMXqmKXl6PjAHsvVG6mVHd+CEi/ZlmW9Vt7KJNvhLgnWtfbtrb
	Z7S6Yjtqpq++yodWeeR63jwn9gJalrly3PJQjwNVjugzL/D37bItEBTwCYiTL6kDCJel
	cEku5hxBEjw+GgIFn33h1ITrMi/PLns3RXiYHIIURjSKUDDOTgwsnkwaEHJjPbIEbDTh
	CVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=/dbch6jurR/3hiq/rZb3uh9y/BAUC8jsf6Q8Vn0Bidw=;
	b=SXVfQ3bHVuCNHHM8inGa+tL1FAj4/bHPZPQlCAFi/sl7aB7/aaS1sSiFhC2Um1CVsI
	NqpFstPP8FBsSZw6VqHB1gCGEOQdcGIMMEnfDOggKyoSuUdUie/2R3fA+vP00RMg4ygo
	oEbW/SpnDzYhbaJ8nnwS6oCWJ1DZQOYKmSjJT5S8MswLSOwr3qbR2mvWBpPWgddTc8Ma
	BSYeQxwjvcjfMjlXVAEWsNOp6Z4uUP8Ou9GFKF3pwWqRgyGg1kNvwUpd+rPkE/X+4WRc
	Yd/np+/2nza8Wi87stJD4YZFsPjJJzn5YkghI6haPVxu25iuDl2kYNvajkRJjje3B2Tk
	NySQ==
X-Gm-Message-State: AKGB3mJ9AAnpA4323E6EY8G3qe2DlLrogPIRXjnAZcoSnKVG93THY1b7
	bZ1koMquP6j9zYFmdIeu06wy5SQHtw==
X-Google-Smtp-Source: ACJfBosjLUVkD1NzaJGHIaUPUkzhAMxUPSZ7VTz3tqs//UqBo/udH4yQ2O+p2tl+dson9wgE+fgCyg==
X-Received: by 10.28.54.204 with SMTP id y73mr14558434wmh.15.1514040597991;
	Sat, 23 Dec 2017 06:49:57 -0800 (PST)
Received: from pohly-mobl1 (p54849425.dip0.t-ipconnect.de. [84.132.148.37])
	by smtp.gmail.com with ESMTPSA id
	r82sm4134804wme.31.2017.12.23.06.49.56
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Sat, 23 Dec 2017 06:49:56 -0800 (PST)
Message-ID: <1514040596.10775.7.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Fan Zhang <fzhang@sgl.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Sat, 23 Dec 2017 15:49:56 +0100
In-Reply-To: <f5f50e1c-defb-149f-f795-921f4c1e648b@sgl.com>
References: <f5f50e1c-defb-149f-f795-921f4c1e648b@sgl.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: How to config kernel in my own meta layer?
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
X-List-Received-Date: Sat, 23 Dec 2017 14:50:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-12-21 at 10:32 -0500, Fan Zhang wrote:
> Greetings,
> 
> I have a recipes that requires 128MB of CMA allocation for DMA. I
> followed the instruction in  http://www.yoctoproject.org/docs/1.6/ker
> nel-dev/kernel-dev.html#changing-the-configuration and did the
> following:
> 
> My recipes structure: 
> 
> 
> meta-mylayer\recipes-my\uio-test\
> 
> 1. Then in uio-test folder, I have uio-test.bb 
> 
[...]

> My question: I think the cfg file is being parsed because if I change
> the folder name files to something else, bitbake will complaint about
> not being able to find uio-test.cfg. However, the final .config in
> built do not have the CMA allocated.

I suspect there's a fundamental misunderstanding. Your uio-test.bb is a
separate recipe, and therefore its content has no effect whatsoever on
the kernel configuration.

The right place to add your "file://uio-test.cfg" is in a .bbappend for
the kernel that you are building. But as Bruce said, that kernel must
be derived from linux-yocto.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



