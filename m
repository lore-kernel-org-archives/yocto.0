Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F1F9E00956; Thu,  7 May 2015 17:01:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f179.google.com (mail-ig0-f179.google.com
	[209.85.213.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9D9CE004F6
	for <yocto@yoctoproject.org>; Thu,  7 May 2015 17:01:03 -0700 (PDT)
Received: by igbyr2 with SMTP id yr2so7968283igb.0
	for <yocto@yoctoproject.org>; Thu, 07 May 2015 17:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=oB42FYYKmnCnBNs32yElzQIpGIUpcZDl2KSXojgePfk=;
	b=076pHKKIag5PQWjMx4Po0xxnAw/9nRF6H9hjecjcNh5Y19nWsh9H83HdXIv/4x6hVW
	E75fTnN05PlOragW2sJc1eJdWb36Hqv5/7Pt9c7yND0HMqRXknQmwSlur2a9laRHJlo3
	QKB3V0sY3M7uVMZxtQL6Aj7gcgoqIYuYkmAhW416YF8XqOsaTol9e3LMxraLqsHGpxpG
	79H8N81YqA+CKm4MHi/HVlGdkZuAPpT8ZrWiJ40AMWT/Rmi2UrNyOnEFUhu6wY6q0Hpn
	+isyBQAO0zCOlZdH9Q59uoB+L+znAOHZl5E3VMnCOwdX13ngjiecZia4+l3EbCfjEaVz
	AAZA==
X-Received: by 10.107.131.135 with SMTP id n7mr1525027ioi.37.1431043262555;
	Thu, 07 May 2015 17:01:02 -0700 (PDT)
Received: from [192.168.141.83] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	qs10sm2623886igb.14.2015.05.07.17.01.01
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 07 May 2015 17:01:02 -0700 (PDT)
Message-ID: <554BFCBD.2070407@gmail.com>
Date: Thu, 07 May 2015 20:01:01 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Vertical Limit <vertlim@gmail.com>, yocto@yoctoproject.org
References: <CAHZee8hBnYM_uM1e1+XVAGYxE8uYraqRxthMLLry9tyZJNup+Q@mail.gmail.com>
In-Reply-To: <CAHZee8hBnYM_uM1e1+XVAGYxE8uYraqRxthMLLry9tyZJNup+Q@mail.gmail.com>
Subject: Re: bitbake error during image build for VIA Embedded VAB-820 BSP
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
X-List-Received-Date: Fri, 08 May 2015 00:01:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I tried the build myself, following the instructions to which you 
linked. There were a couple "gotchas" along the way (noted, with 
work-arounds, below [*]), but otherwise the build succeeded. Could you 
try it again, following the steps exactly, and if it fails again, please 
list out exactly everything you typed?

It's great seeing more projects and companies using Yocto, although I 
have to say VIA's use is a little different. I would be nice if they 
integrated with the project in a more "conventional" way.


[*]

1. lttng fails due to some race condition, it tries to run some 
kernel/script program before it has compiled it. If it fails for you, 
simply re-start the build a second time and it should succeed.

2. gtkperf fails to build. Fortunately the gtkperf version in 
meta-openembedded's master is the same as the one from VIA's BSP. Delete 
the one from the BSP (rm -fr 
sources/meta-fsl-bsp-release/imx/meta-fsl-demos/recipes-graphics/gtkperf) and 
replace it with the one from today's master branch of 
meta-openembedded/meta-oe/recipes-graphics/gtkperf

