Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 081E7E00B9E; Thu, 31 Mar 2016 08:26:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4AC8E008F1
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 08:26:20 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id z133so1680067iod.1
	for <yocto@yoctoproject.org>; Thu, 31 Mar 2016 08:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YL/ww5aR+ERrUtqpMvIaQPC3KGiXSRgYyIcOXCVytvE=;
	b=qfbzf5xbRMrDQtdtB2nw2hz5+gc1deqDbuc9IlOr3RFaLSbfrssLXrnIrFcpvzWY/E
	fXcST4zudLXkhR+ACPkwEB54N2ytyavQ8IxUgggdjgXE82GDOkZw2Qn2U2cl6GUeyrA9
	A7WqzGU/Mf3mmAFiQUOTmF0PvxMyxXfqvffGDtibqwit4yYaFVutG/wICX91mWVwajSM
	vQJAyRQrDy/p/8SzahClxnSv5okgl7rVgE8jAYIbGOYgigxJIKt/KjcLjt/Rsknu9dLa
	UtFSUaPz8UTFBnDhcolvG1GoFusjy53pUyOsPfGQBJ9EL8KCDJFbqlSdpztwANtrQh1y
	ZiJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YL/ww5aR+ERrUtqpMvIaQPC3KGiXSRgYyIcOXCVytvE=;
	b=Fzc3t9q1ook7wU7uoa8S7fNqKobfPRPYKWrjPu+9ntrq5+eysqsUxRlWMV6iBXsSqt
	BDbYnf60Ci1yditTOh6w+m9gDTCTWp5dItko6D1ovf7JKnyKudUSlAo+36WFswJ4yWHq
	StcPF7XXI4R9yQ0VJJcJHzvSTYRw/BXgov8+AaNdpY5htUOt0o0CE1R0Z1BHjg12QTPP
	IcH15uwEpgj0STT8q3AmCmm2JDH0GsdbjCr2KYQrHBjMgcayPeL0qoE+CCGAFCEz8rfH
	3TWgXKT1IVfyfRowh28EHTJSFNnKTkwiddjj7yrOyWyPi8SE+izUpvzE5VYyL7uvHaBE
	hh+Q==
X-Gm-Message-State: AD7BkJL5Cx1Y3E1VMpvniDInxNA08nuxaw2NAG6tq6IGarRS3vXI3aRkJbfq3UAd2dBBhQ==
X-Received: by 10.107.25.139 with SMTP id 133mr1507182ioz.90.1459437979606;
	Thu, 31 Mar 2016 08:26:19 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id m37sm1182780ioi.3.2016.03.31.08.26.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 31 Mar 2016 08:26:18 -0700 (PDT)
Date: Thu, 31 Mar 2016 11:26:04 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: David Weisgerber <david.weisgerber@ms-gmbh.de>
Message-ID: <20160331152604.GA23623@linux-yxv0>
References: <1704123.nFWplM32RM@valkyrie>
MIME-Version: 1.0
In-Reply-To: <1704123.nFWplM32RM@valkyrie>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry] Raspberry Pi 3
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
X-List-Received-Date: Thu, 31 Mar 2016 15:26:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2016-03-18 @ 10:15:39 AM, David Weisgerber wrote:
> Hi,
> did anyone succeed in building an image that runs on Raspberry Pi 3? I set my 
> conf/local.conf to
> 
> MACHINE ??= "raspberrypi3" 
> GPU_MEM = "128" 
> DISABLE_OVERSCAN = "1"
> 
> and built rpi-basic-image but when booting the Pi 3 up I only see 4 
> raspberries in the top right but nothing else happens. The image works 
> perfectly on a Pi 2 though.

I'm able to get a raspi3 image running on my Raspberry Pi 3, but my console is
messed up. Everything works fine via the usb+hdmi ports, but plugging a
console cable into the GPIO header is messed up.

It looks like what happens when the baud rate is set incorrectly, but I've
tried every baud rate in my terminal emulator and it all looks the same
(messed up).

Anyone got their console working? The same cable/setup works fine on the
raspi2 (ttyAMA0) but doesn't work on my raspi3 (ttyS0).

