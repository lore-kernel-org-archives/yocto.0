Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F2B9E00A93; Sat, 17 Jun 2017 15:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D045DE0076C
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 15:29:10 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id j200so8025954ioe.0
	for <yocto@yoctoproject.org>; Sat, 17 Jun 2017 15:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=7d07wo6RIiAZnIVYpgTTVrqPchhzGQe/qKYu83gawms=;
	b=XkxFF/cV92D22eIqBoXcTeY9CYCCHTZlQgfyOCDTTB/sEWjx5NwI7Yxz6Tmjdn1cnE
	d3lGAVAQgdjhtVBJZIMa/VHmQ83yichU4XKLlS0ukC7Zc5J4W8FRnyIVAcnIjawlvQmi
	UWxYT00pUUpNC6pK+k0txkho1nVrECRa9k5L4Hbh+xzM4yZwr54j0A1c2nFBctt3NA3i
	U5x6hodbaa8pMdvgbaejv0SkCPZwyM7n9GofCtHvkq9GnlYYL1vXZHpUsflu8ONwMa3f
	s7J8ZAMcUPOGOcbCE+Dj6V2yvcnugatynMCxlQ4hqghsNOqTDzqD2eZkPTAliEHhAGzj
	ryjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=7d07wo6RIiAZnIVYpgTTVrqPchhzGQe/qKYu83gawms=;
	b=WL2Ju5vB9peeodRfoNmbV0PUPJHtWNJ3mWH6tTyUe7qRNEDCooKm7eXYgb6bNdYWae
	TWUskiAvN5hotpvTYOmTWDAdkwL2sE9/lJW2A+iCIeDYMdsI+MajeMPa0983VtYqxwLb
	swp/s5PgA3uey3j58upLR8RPNC7Rpep49sd7Ulmjs1q78xlrPvc7t8TXVIPXdbK59rAe
	D73aPI5+I1krvi2oTbkjCRazkYNwWhVhVSdlWb3UTeB9SN3TeXCJ8FqfL5ngkW/Hgcu8
	FPriFVtrP5iCiHLCqFlEvQIw+xG8+scQAHxuDwOnkP2YSxfpz2pNuRopsuE5w4+oT6ys
	ZJbw==
X-Gm-Message-State: AKS2vOywcSSnaBHBxTq1W4A7wU9g0aZI43BmPuEuu6Y0q5sv4zb4y7zK
	KK9kWCIv0I4a5lIGzvg=
X-Received: by 10.107.163.198 with SMTP id m189mr12225709ioe.227.1497738549398;
	Sat, 17 Jun 2017 15:29:09 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95]) by smtp.gmail.com with ESMTPSA id
	r77sm3407902ioe.16.2017.06.17.15.29.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 17 Jun 2017 15:29:08 -0700 (PDT)
Date: Sat, 17 Jun 2017 18:29:06 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Romain Perier <romain.perier@collabora.com>
Message-ID: <20170617222906.GA20416@linux-uys3>
References: <20170616134740.25372-1-romain.perier@collabora.com>
	<20170616134740.25372-3-romain.perier@collabora.com>
MIME-Version: 1.0
In-Reply-To: <20170616134740.25372-3-romain.perier@collabora.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH 2/2] u-boot: Backport upstream fix for gmac_rockchip
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
X-List-Received-Date: Sat, 17 Jun 2017 22:29:12 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Romain,

I assume this patch is meant to fix an ethernet issue in u-boot? How does
someone test that ethernet is working from u-boot?

Here is my firefly booting with these patches:


	U-Boot SPL 2017.05 (Jun 17 2017 - 17:12:20)
	Returning to boot ROM...

	U-Boot 2017.05 (Jun 17 2017 - 17:12:20 -0400)

	Model: Firefly-RK3288
	DRAM:  1.7 GiB
	MMC:   dwmmc@ff0c0000: 1, dwmmc@ff0f0000: 0
	*** Warning - bad CRC, using default environment

	In:    serial
	Out:   serial
	Err:   serial
	Net:   
	Warning: ethernet@ff290000 (eth0) using random MAC address - 5a:40:1a:28:0e:43
	eth0: ethernet@ff290000
	Hit any key to stop autoboot:  0 

Here is me configuring the networking stuff in u-boot:

	=> setenv ipaddr 192.168.142.20
	=> setenv netmask 255.255.255.0
	=> setenv serverip 192.168.142.1

Then I try pinging my server:

	=> ping 192.168.142.1
	ethernet@ff290000 Waiting for PHY auto negotiation to complete... done
	Speed: 100, full duplex
	Using ethernet@ff290000 device

The next thing I know my firefly is rebooting:

	data abort
	pc : [<6ada703a>]          lr : [<6ada7dbb>]
	reloc pc : [<0003303a>]    lr : [<00033dbb>]
	sp : 68d67e48  ip : 00000000     fp : 00000002
	r10: 68d77e60  r9 : 68d71ee8     r8 : 00000000
	r7 : 00000001  r6 : 00000000     r5 : 0000002a  r4 : 6adfd04e
	r3 : 14000045  r2 : 148ea8c0     r1 : 018ea8c0  r0 : 6adfd04e
	Flags: nzcv  IRQs off  FIQs off  Mode SVC_32
	Resetting CPU ...


	U-Boot SPL 2017.05 (Jun 17 2017 - 17:12:20)
	Returning to boot ROM...

