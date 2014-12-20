Return-Path: <peteasa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3643AE00823; Sat, 20 Dec 2014 06:43:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (peteasa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B44AE003E3
	for <yocto@yoctoproject.org>; Sat, 20 Dec 2014 06:43:53 -0800 (PST)
Received: by mail-wi0-f179.google.com with SMTP id ex7so4354256wid.12
	for <yocto@yoctoproject.org>; Sat, 20 Dec 2014 06:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=lN/02yDhFsRlj49N/rIVTWKPnyEVx6ooIT4diKHgCIQ=;
	b=C0W+5HPw7pu2BQtIkwOV9jCaGWQoJDUq5drZWCg+M3en6YANJ12q52LbUFuHy8jXdj
	ohzaHMAOsU8xRP2D59NjWd9476FIrZEJdNch1ezvEYwdtOUqbOjmFxbIUQFUo6Fi5r+5
	YnZLH0EkinScxTluffYXpq2LoYXQg9uWIX6889D3xLXfYejw2B7L3Lk7DCgaXadzU3jP
	XP6RN5GQe8n3JqFg+rqFelp9k7gIXnZjskEXaEL0fAln36T6G6FLXnkpwCo7EwniTsL2
	aUhc7zUG2uZ0m6yaZck54TQB071LG8tP9k1sIUQrg3w/C3tDdvK6+bkrYdQuTTXOn1et
	OwHw==
X-Received: by 10.180.38.98 with SMTP id f2mr14957992wik.55.1419086632235;
	Sat, 20 Dec 2014 06:43:52 -0800 (PST)
Received: from [192.169.0.118] (cpc18-heme10-2-0-cust113.9-1.cable.virginm.net.
	[81.96.152.114])
	by mx.google.com with ESMTPSA id e7sm16555370wjf.18.2014.12.20.06.43.50
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 20 Dec 2014 06:43:51 -0800 (PST)
Message-ID: <54958B25.8080505@gmail.com>
Date: Sat, 20 Dec 2014 14:43:49 +0000
From: Peter Saunderson <peteasa@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: Cross compiler which runs on the target architecture.
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
X-List-Received-Date: Sat, 20 Dec 2014 14:43:59 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have seen a brief IRC chat 
(https://www.yoctoproject.org/irc/%23yocto.2013-09-23.log.html talking 
about https://github.com/nathanrossi/meta-parallella) about this 
question but nothing much else so this is an attempt to get more public 
feedback on this request.

I am trying to build a cross compiler that runs on the target processor 
and a cross compiler that runs on the host processor so that I can build 
code for a third processor (Epiphany).  If you want examples of the 
traditional way to build this compiler look at 
https://github.com/adapteva/epiphany-sdk epiphany-gcc epiphany-newlib 
epiphany-binutils... The end result would be a set of recipes that run 
on a pc build machine that build both arm code for the interim target 
and epiphany code for the final target and provides an SDK for the pc 
that enables you to cross compile for both arm and epiphany.

As I am just starting to look at this I would like to know what size of 
task I am up against!  My initial efforts based on review of 
poky/meta/recipes-devtools/binutils etc seem to suggest that I have to 
modify at least ${HOST_PREFIX}, ${TARGET_PREFIX}, ${TARGET_ARCH} etc for 
my epiphany-??? recipes so that the I can install the compiler in a 
suitable location with a suitable prefix, the IRC chat indicates that 
there are more things to consider also.

The question I have is about how easy it will be to use existing recipes 
for existing compiler / binutils etc... or is this likely to end up as a 
completely new set of recipes from the ground up because the existing 
recipes cant cope with building cross / cross compilers where there are 
three processors to consider (host (intel based pc), interim target 
(arm) and final target (epiphany)), or at least a lot of changes in the 
existing recipes to cope with something like TARGET_TARGET_ARCH = 
${TARGET_ARCH}_${FINAL_TARGET_ARCH}??

Thanks in advance for any comments.

Peter.

