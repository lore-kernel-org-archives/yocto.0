Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9AA8E00AE6; Thu, 20 Apr 2017 00:13:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.195 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f195.google.com (mail-io0-f195.google.com
	[209.85.223.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FE55E00AE0
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 00:13:25 -0700 (PDT)
Received: by mail-io0-f195.google.com with SMTP id x86so13062619ioe.3
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 00:13:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=gKGMDRFR68w/ehbXIW5XEGXtGkEP7AKY4nIPWwte4lY=;
	b=OdRlSJuOf8g9qcDo7045QsU/Fw/mJdHpyBbn9ptwAuSl3Bkt5K2/BUmDA+CCGBDdKA
	WMdWjBVVMG8sjgZjDljE357bju8TlIktuWQF+37Zuc0A0m9rlcvaZn1neU0cXi2AokPl
	NusLYpDr/cb1eG+VQS+o576+7L0sVfvqahmXxAorcA6K7d39FnaYaWaIV0O/CH/4wJ0W
	cdumUqJCl4m/tVgWwQypRiC4SRgsFW1m8jgOdBz+Swgsps9y/RX6HHS6C8QCd/dPP7VP
	SiSCyzIwV2HjVpYcRo1GPr4B19Y2hjCuvOSZq8+IfUGzGC2qOrJVZw4X7RGv5sUtu386
	hD7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=gKGMDRFR68w/ehbXIW5XEGXtGkEP7AKY4nIPWwte4lY=;
	b=XmmEJlDkEOiGAveaWi9dq0BAJxDpWW0UGy8RyD91cNHu6dEPNFSIvrF7dbmmnxWuw6
	BgCKiwLBD/JSGXPgZ0chzSV3g9HDFjftIdBuRVgOKAlwzoTslD02Zw35hiVEO+2wCn2v
	LiKbZxLsCIETTWhcwsKXNSnjJ4mMpgw5g/GsqVQeuxMQcXjZTFMkHtBTKwCp4OD9JDLB
	0h+WsctobcJ/mV8uk936nRMVVNo6WBT4uGmCGrbPHHy29gVlp08r3jZlshvVJK03tevb
	RMSCDPylOc0J5avvMSbS443BVi50GkFgoVZYBlTXAGMaVUG+twx5h5ZDkNVZmHHlp+g0
	qnCg==
X-Gm-Message-State: AN3rC/4Rkft/asMH/s42t3G881wZt+ytwVPhOFoJb7mL68s0rNxCwOWj
	Q8av8YXWp3JEbw==
X-Received: by 10.107.146.194 with SMTP id u185mr7244936iod.217.1492672405478; 
	Thu, 20 Apr 2017 00:13:25 -0700 (PDT)
Received: from linux-uys3 ([108.161.123.115])
	by smtp.gmail.com with ESMTPSA id 9sm2421630iol.36.2017.04.20.00.13.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 20 Apr 2017 00:13:24 -0700 (PDT)
Date: Thu, 20 Apr 2017 03:13:21 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20170420071321.GA25443@linux-uys3>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Thu, 20 Apr 2017 07:13:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu 2017-04-20 @ 05:41:44 AM, Herve Jourdain wrote:
> Yes, VC4 indeed works for both 32bits and 64bits. It was first introduced  .
> for 32bits, actually Regarding why still using userland: at this point in  .
> time, we have accelerated HW codec (H.264, MPEG2, some audio) only if using.
> userland If one doesn't need that, then VC4 is, in my opinion, the way to  .
> go. Otherwise, userland still needs to be used                             .

What decoder is needed to play youtube videos?

Using Andreas' meta-raspi-light (which removes userland and only uses vc4)
I've spent the last hour or so watching youtube videos from my raspberrypi3
(32-bit build) in chromium, accelerated, with sound (both via the HDMI and the
jack), both on the big monitor and the 7" waveshare touchscreen. Not to
mention I can now run openGL and GLESx apps accelerated.

I wasn't able to do that with userland. In fact, it was quite a struggle just
to get it to build!

Maybe I did something wrong with userland, but vc4 is successful, and
certainly easier to work with.

