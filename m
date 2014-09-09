Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 407F2E00566; Tue,  9 Sep 2014 08:23:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC00CE0049D
	for <yocto@yoctoproject.org>; Tue,  9 Sep 2014 08:23:20 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id x13so17917352qcv.9
	for <yocto@yoctoproject.org>; Tue, 09 Sep 2014 08:23:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=CtatNM4EyNNWhI4evsdY8yD148XuUDWozdVkvQ0V1+E=;
	b=f8aHpGF9SzLy8KYuX2FSY2XN79KLIfptgyB9Jq0USktY7yTmO6GGt5rSmyZfBBM1OC
	FbVTg3lPl4vDAx3pxxX1ANy9aiJruNVK3+NK+yICWFa4+HK6e2t3DMQn7lZhXiLzNc3D
	/TdjfG2PddbGKzOzkZUTN48v3ofyoLgFAEJUQivZzr2zDY687R1jMSGqCLTMA9bvMOO2
	DPJ8XorFht6Hak0IRQIZ/Wse5V4FePHyXLIzhpQVrimcfBzbTIdjUu6ObWgM4t4bxuxw
	sLGpFkBdMp8EcdfygUJSxNrMS9Q8hHnpGfPowClgq1CgV/a/Bl9X5bg4huCOgrbApNo3
	6esg==
X-Gm-Message-State: ALoCoQkrIYQI64v5/PwQkZOSeqsOjqbGFSi7OyBOo48DIja9FQnianUc0WLRNT7uTbInaaLoYcHz
X-Received: by 10.224.79.139 with SMTP id p11mr18990460qak.93.1410276200018;
	Tue, 09 Sep 2014 08:23:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.29.183 with HTTP; Tue, 9 Sep 2014 08:22:59 -0700 (PDT)
In-Reply-To: <CAMSG=xW4=usCp5tUwiGfa3CeacL045JZhKF-YXg1xbajzGX1Vg@mail.gmail.com>
References: <CAMSG=xUsOJqQLABzm-W2Stwc5xdGTP1pGKMA7Z4TiS5ftLtx1A@mail.gmail.com>
	<CAJTo0Lat0QQw1RQzGGxpuyH1Uwo_x9b2WmVnYgs8httK2D=23A@mail.gmail.com>
	<CAMSG=xW4=usCp5tUwiGfa3CeacL045JZhKF-YXg1xbajzGX1Vg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 9 Sep 2014 16:22:59 +0100
Message-ID: <CAJTo0LZTE_xY2Of8=sUn6nJtz2Uxm06-Fb7T=5gMmXoTWTtpjA@mail.gmail.com>
To: Nemicolopterus Crypticus <ncrypticus@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ExpansionError during parsing
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
X-List-Received-Date: Tue, 09 Sep 2014 15:23:22 -0000
Content-Type: text/plain; charset=UTF-8

On 9 September 2014 16:19, Nemicolopterus Crypticus
<ncrypticus@gmail.com> wrote:
> Ah I see - that makes sense, thank you.
>
> I found this:
> http://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#functions
>
> But I'm not sure how to tell whether a given do_<task> function is a shell
> function or a python function. Is there a way to find that out?

If you want to append/prepend then you'll need to look at the initial
definition - most of the core tasks are in base.bbclass or
package.bbclass.

Ross

