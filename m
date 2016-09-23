Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 390D5E00D0F; Thu, 22 Sep 2016 18:39:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f170.google.com (mail-ua0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9601FE007C2
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 18:39:34 -0700 (PDT)
Received: by mail-ua0-f170.google.com with SMTP id u68so19931122uau.0
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 18:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=vGKlxt5B6IDCU99WueFqf/9OFZBQOxHMXzy0JkTmvo4=;
	b=yAsTkykP6fDl2bHwuFrwHZ32YKB46uHyceYhRF+G5XqRWSMRcDBue3e0XTnGHEjUtI
	nxfvOh2+faheeGtHyfcDMBrgxowjZMjBkcsUClXNtLXZDy9nb18eTpwA7mhaBk4yEmS1
	FYr0g2knCQxhDmj1stBHizY4FKPOJTkdhbOx5NiGIm0ZWoQ0p8xm7WU8eFX2fb3wJC7L
	vfL5vNK+Yhj1BHCN8sHKRowluvo1a0rJZEYwx7k5aSJOMLhr9F7P/k656XMqkaoDxpn9
	yi/ioQnPFXY8wtAkyYEEo72twUS9ybCbduQK3xw7uzvBcpOvXuKeS1FiFbskPA0bNVSB
	KiLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=vGKlxt5B6IDCU99WueFqf/9OFZBQOxHMXzy0JkTmvo4=;
	b=Euxc4wzmCaVphdEJm3r4IAiUT9nWMxNAUnKZBbfi+/6BtReXazVKuHGRmmsrW/X4Yb
	GWTN2sYkrjsnDdxOYoYb3EUCM8GQNfWCnyhtVgGwxDvyYPYeZ6BKTheVDJg9zba79RA6
	IqOKkYOy8QHLS2dDADzLW+Wjtv8OXxmcLv+9KiJpcxIqYU8hZQvCZeFyQRF6F3gNpjk3
	LXjx5//NcHpEzYfM3BQfQQD1zk6mGL+3HPJjFxP5NBgnLPdLU/KPl6io7hgZJpcaUUgO
	NqG24P2eFt+ve7MlczoNwMaRJ12yLqVUYTvLvZ0/2TIiAvpgErBJdLsuu93CfDAom2Ua
	oYVQ==
X-Gm-Message-State: AA6/9RnB+fUy9+4AW/llUVkeFXL9ENJa4hvPlHCuazcoXHp89T4BE1/p05R93QQvHsc41KJz+tevd4jlEOsqwQ==
X-Received: by 10.176.4.43 with SMTP id 40mr1958429uav.160.1474594774423; Thu,
	22 Sep 2016 18:39:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.80.33 with HTTP; Thu, 22 Sep 2016 18:39:03 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F90FF3@MBX214.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F90FF3@MBX214.d.ethz.ch>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 22 Sep 2016 18:39:03 -0700
Message-ID: <CAMKF1srZOGKa0K_20Sx8VkmzzodzTND7g94z5tjPE7kxr676dw@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enable/disable service startup
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
X-List-Received-Date: Fri, 23 Sep 2016 01:39:37 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Sep 22, 2016 at 1:47 AM, Anicic Damir (PSI) <damir.anicic@psi.ch> wrote:
>
> Hi,
>
> I am building Yocto 2.1 for PowerPC-64
>
> I have bind and dhcpcd packages built in.
>
> named service (from bind) gets started - but I do not want it started

You may be able to do it via a image post processing function.

> dhcpcd service does not get started - but I would like to have it started

hmm that may be a bug you need to see why it does not start

>
> I would also prefer not to remove bind, because I need dig (dig, host,
> nslookup)

you have to change the code, doing finer packaging for bind where the daemon
gets packaged into package of its own and rest of the binaries e.g.
dig etc go into
another output package e.g. bind-extra or somesuch. then you just
include bind-extas
in your image.

>
> How to get services enabled/disabled ?
>
> Also I do not want to change original recipes.
>
> Kind regards,
> Damir
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

