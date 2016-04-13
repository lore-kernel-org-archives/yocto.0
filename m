Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 833CFE00D7E; Wed, 13 Apr 2016 15:04:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A27E00833
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 15:04:16 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id g185so8714362ioa.0
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 15:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=D3oiPTlvdOoY+vbrvFFfFdcCLp+8Df+eS/6ROMQVxBg=;
	b=gyrKb0Bt3iSeCY4/FnK/b7v9PICym5Uyg01gM5dcMTA62sbgLpMbFvK68durkBQS76
	pW70plFA/PG1R3cWwrpPRP55MuGhn8UB1WJ8w5zTYi+yWp04m94GGZ/qtszFvzoAa/rB
	9BAppJJa645eMNmQPxEb1ULj6ciScHV1TnAZhu8bAHv558iqIHp0JwJMN9f5DAN8pDvg
	CGDmVlSDG33Og+wzxYO+UGDb0B4PPOAdjgoE8dhiHcuzvyjrmLMxPBlTds+HesRFlyeW
	1zem/Imir3md+/121PJAbWDKhN+FJ1FgI1Y/tjRx4KSWQ9TXugcdC68jJlFhMDZZsg3u
	FEnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=D3oiPTlvdOoY+vbrvFFfFdcCLp+8Df+eS/6ROMQVxBg=;
	b=YJtOBF400aomApyJm9lMQPxOI/CYy/xkVSkasYpV2HiTWwyLxan3LWgVRW3tkUGSOn
	lb0xSd4eiqtebOy9LHke4rS7m8LIMJCTFIWQThPQNXMDHirLghVZdSij+0sz6L1Wr821
	AF9idpqFwL9pp+VvlojF20BV0bqQZH6nUtmWwCJsEvgZbVJ+6WkSHygScjAdbBE/3/yk
	4eRDb7d3qIXG5MLtzn20eZND9sPIOnzFDEgh3xQOqzUKe4tqeB/JHyKVSipfIhgnJoTW
	h4fJcXHAJDAAzb6A067PMV/O4j4Nu74Z7VR7yaVgozApDZ+GJYmGsEeDDCFEN9jZZADt
	gldQ==
X-Gm-Message-State: AOPr4FUr7DeeV7QUhNVG4VddfB9Ja760t9U9IDcAPnP/yzEzAPrwLKxqnpIGScq2eWaQJA==
X-Received: by 10.107.13.65 with SMTP id 62mr13026026ion.186.1460585055831;
	Wed, 13 Apr 2016 15:04:15 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	74sm24564374ios.28.2016.04.13.15.04.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Apr 2016 15:04:14 -0700 (PDT)
Date: Wed, 13 Apr 2016 18:04:28 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Petter =?utf-8?B?TWFiw6Rja2Vy?= <petter@technux.se>
Message-ID: <20160413220428.GC27168@linux-yxv0>
References: <1459348549-32007-1-git-send-email-petter@technux.se>
	<1459348549-32007-4-git-send-email-petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <1459348549-32007-4-git-send-email-petter@technux.se>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2 3/5] rpi-base.inc: Add overlay for rpi-ft5406
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
X-List-Received-Date: Wed, 13 Apr 2016 22:04:23 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Wed 2016-03-30 @ 04:35:47 PM, Petter Mabäcker wrote:
> rpi-ft5406 is an enabler for Official Raspberry Pi 7 inch
> touchscreen support.

I have an official raspberry pi 7" touchscreen and it's not obvious to me how
I would go about enabling it in my config. If I had one of the others I would
simply add:

	MACHINE_FEATURES += "pitft pitft22"

or

	MACHINE_FEATURES += "pitft pitft28r"

to my conf/local.conf, but what do I do for the official touchscreen?

Also, by trial and error I've discovered that my touchscreen comes up as
/dev/fb0 and not /dev/fb1. But the xorg config for touchscreen support assumes
/dev/fb1. Am I doing something wrong in my build or can anyone think of a
reason why my screen would be /dev/fb0 instead of /dev/fb1?

By the way

	MACHINE_FEATURES += "pitft pitft22"

seems to work for me if I use /dev/fb0, but I'm not sure if that's a fluke?

Best regards,
	Trevor

