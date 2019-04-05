Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F528E00D07; Thu,  4 Apr 2019 23:47:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.43 listed in list.dnswl.org]
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com
	[209.85.221.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDB99E00BB7
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 23:47:48 -0700 (PDT)
Received: by mail-wr1-f43.google.com with SMTP id k17so6553939wrx.10
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 23:47:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=gB9+9MiCys7STddGSl/fnYPVFqsN/RHbxLZqNjfo4o4=;
	b=A8k/AmTFn0BoG2QOfajAq+o3VCKr9Zd851PwmnSpnicbBxvqj9gz27yazh+FJCXQzz
	F7uPT77KUjkbaUg/waFj3YMs11P4BlUMaXsMnWttmoLUWPbbP7nfyWra7oGQ0Yd2Xygq
	Wl9HJaUW1udlIJMiDioRdQ6U0nxJP7PDzwbak=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=gB9+9MiCys7STddGSl/fnYPVFqsN/RHbxLZqNjfo4o4=;
	b=ruA5U+e6TAsL5DySMIMLPfoXEyEAl+qHVV5gAAVHqEfp+5c5WzzD+HUn2uEDWl8fg8
	C5jhCSJG3fZMwuPIRLrBzcxGxeANcKLLiR37tE1ryhUtT17kaTnsFGFfYO1nwRp3JAQw
	59wFeB9Cvsqe4llvChp69hHBeDlH+/HNso53p0cdGtlj5ZMskbV143qVKd4DWx+GaDr6
	tgPRhBgIMmk0TmTdBCD0Z2MUibSm+XKiOV0Nb2gd7UvJTbrcx+yiOI0kbVXTKvCLU8fy
	lSOJviQu9at6yr9lNqmOC6o4F0J6PwutiTr/8o4jTJGjNCFjWk6UQtGW9f9XqN7q/sKh
	U1/Q==
X-Gm-Message-State: APjAAAVOAgv6kkWxi7t1hHDGlh9yhV36eqE3nHeRNgK/lWzkJ54NNJt8
	eMgHnqQqH3Y9SZ/O+Ew7ifJNyg==
X-Google-Smtp-Source: APXvYqwEiEsxM2+TZDB4WmiDN6OLwrIbhgWjP/TZ1+ShdSWe+f387OTtVNTjg5nQO6/EqXvj3B3RgQ==
X-Received: by 2002:adf:f68d:: with SMTP id v13mr6895799wrp.6.1554446868107;
	Thu, 04 Apr 2019 23:47:48 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	o17sm22362584wrw.73.2019.04.04.23.47.46
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 04 Apr 2019 23:47:47 -0700 (PDT)
Message-ID: <21310bdc59917ebda8c10298054d7d8ad9bdfe4c.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: Tim Orling <ticotimo@gmail.com>
Date: Fri, 05 Apr 2019 07:47:46 +0100
In-Reply-To: <CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
	<dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
	<5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
	<913d9791bc9c41137478e4d76ee6131f385ab4cc.camel@linuxfoundation.org>
	<CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com>
User-Agent: Evolution 3.32.0-1 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	akuster808 <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Fri, 05 Apr 2019 06:47:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-04-04 at 17:58 -0700, Tim Orling wrote:
> Just curious: all Perl modules in oe-core have ptest enabled, but
> only libxml-parser-perl is included in these test reports. Is it
> simply the only module in that image or is something else afoot?

Its probably the only one in the image.

I have been meaning to go and round up all the ptest enabled things
which aren't making it in and add them but until the basic image works,
its not been a priority.

Cheers,

Richard


