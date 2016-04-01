Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D518E00CAA; Fri,  1 Apr 2016 15:46:24 -0700 (PDT)
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
	*      [209.85.213.194 listed in list.dnswl.org]
Received: from mail-ig0-f194.google.com (mail-ig0-f194.google.com
	[209.85.213.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E134E00CAF
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2016 15:46:21 -0700 (PDT)
Received: by mail-ig0-f194.google.com with SMTP id ya17so1028011igc.2
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2016 15:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Ls0zqp3PPmgCkO44BbplF6pwJlTvun8y6e2ekifdMbY=;
	b=cqLhsME0+ezcuHSikUM5gLc655JDdHrVQLEE/zJv6b61XZ5qZtnlFbuD1+YB+AMu5A
	W8H//REymYfvwGIBCrp/N4KZoD/puu/USw7p5phj9/TBMWPcKdgrvPqL0typ/JnKvRX7
	4QXNYKrRO45Cgqge3fAVDH1lfdoV/E0012WLhy9oBn5RRZcPdKJMZIMrRWc0NxgcFS3d
	foR88DfQGpE4McCO9ZEZseVXqfBs3NY5XcKp3Qdo+/9eAcNttnxpQb0kbbOQOi5ogVie
	33SY9L/QTU2l8W7YWH1owB+ZTHky0gfJ49E23V1Nk5rHz3YWIrgtrMVcsoT5SXNzQtw5
	OyGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Ls0zqp3PPmgCkO44BbplF6pwJlTvun8y6e2ekifdMbY=;
	b=LhAbKUR8dRgJ8kwDVFxygXbl56z0iLpvFMZ3CeO8fS8f4+gPXNjXMSi7LzTyifOoP4
	XBuZNXUl6h/rBJAdn3PfIgIbtzuScanWuBv9GH5ZeKJ97h9eVntmQIpDwyTDEMLiD+Fr
	eUkJ8gnLQZGQ8Jbbd7dO3PtiFCY4+MJa7H0OkUaA2m4SKh1x0BGpPOnJZZfdJ43j8UpW
	OsDjoSxWv6WAjX1fTVojhD2oJBoH1s/wRAVlI2rEBzoUkWw0mLYfIK6yeWsv4JzXbCAu
	1fQBHE0Nlgx9En/XjzExzCyRBrP2GsDrXhqdZYpVs4bG0Oe2dR/8WSj2FcgCpwTE6PaN
	DquA==
X-Gm-Message-State: AD7BkJJJ85y3520B3lMgtubfsJ6yeeVpC5j8oC9rZ9BFte/0EEyLmpXP5Twm66uKJjzYqg==
X-Received: by 10.107.132.88 with SMTP id g85mr7616586iod.95.1459550780832;
	Fri, 01 Apr 2016 15:46:20 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id p1sm6722613iop.12.2016.04.01.15.46.14
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Apr 2016 15:46:19 -0700 (PDT)
Date: Fri, 1 Apr 2016 18:46:04 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20160401224604.GA30256@linux-yxv0>
References: <1704123.nFWplM32RM@valkyrie> <20160331152604.GA23623@linux-yxv0>
	<655B9BF4-0067-4E41-9B09-BD74A530B79C@gmail.com>
	<20160401191729.GA25051@linux-yxv0>
MIME-Version: 1.0
In-Reply-To: <20160401191729.GA25051@linux-yxv0>
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
X-List-Received-Date: Fri, 01 Apr 2016 22:46:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2016-04-01 @ 03:17:29 PM, Trevor Woerner wrote:
> As far as I can tell there are two raspberry pi OE layers which include this
> commit:
> 
> 1. git://git.yoctoproject.org/meta-raspberrypi::master
> 2. https://github.com/kraj/meta-raspberrypi.git::kraj/master
[...]
>  - Using 1 (the official layer from Andrei) I get an image that boots but the
>    console remains messed up (as before).
> 
>  - Using 2 (the layer from Khem) I get an image that flashes the rainbow
>    pattern on the HDMI monitor, shows the 4 berries, then stops. Nothing else
>    happens, no messages on the console.

I get the same results with no local.conf tweaks and building the
rpi-basic-image.

Does anyone have a run-tested, OE-built, raspi3 image with working console?

Best regards,
	Trevor

