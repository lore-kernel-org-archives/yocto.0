Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17C77E008D2; Thu, 26 Apr 2018 23:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4AAABE00823
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 23:19:36 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id o15-v6so584534wro.11
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 23:19:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=qQlYGvOj51h+BKEuDT92rPO+THDCbZyvkOdZLrCGatY=;
	b=SzLcQV9FD4O/89kngjEONTMjjtfNRRYJE9gZEkvqIcy5pmp8lwaOUOTWs2e89c8h4U
	YR3qqc+hLl52nvj+ot2yf/93DmiQawLIVHOmlXOLhXXhz5Ws31bFEfnPAEqiwRowYpu5
	dnVDQRflHH7PBcXw0+1D1xRdHnehV+FoMpJWWn60cLnWz9Qs/cTT6+4m8yDqeCi+huKx
	SzM4pfXaRHB/JQp8bmLE1ZG0JbyjsWECslFu6s8XEvEmajyT2PlTTqklGpNoEQGT7Bjl
	mfPNfnhbg2jgozsITXAYHoUIh2oiPbe+xeZstJOs4T2I/I+IigfDueHBZ3/xh5mbg8CP
	6edg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=qQlYGvOj51h+BKEuDT92rPO+THDCbZyvkOdZLrCGatY=;
	b=NfzdQ5p6tkfxZtTOPM4oio3Zn6RToPg8xlNRRP+P8/hf05+SRMI1hXL7CBuxBOzerx
	B0Os48x6XLtMpCsBBR0oQzIxB1veD1tF0cKcmCNnx2al0FTGLF3RziI1/jY3uUrLw3Cw
	LRaSDgtFVW7d8KcjkIj1TRoNkWK2F4esmlzvoJKqnjks6exJO4+RlRZ/DXF86q/1AmYq
	Y8E7mdaDVLXBBI36rkjLg3cwLgfoZMFU/hjscNW0YGBfQoy0B1E4AbfUmAth7Z4b1g4o
	c12VUsqWCs57Y/dK/7EuW5zcBYTXV5WK6YhFJYdp0aFmynimfFR30qwBkr8SNp3Bnrwh
	dZqQ==
X-Gm-Message-State: ALQs6tDeXmALH4yGYS+gYCYv5fgbPj/cqITLuto1dkQ66aQ7RB+nDXeI
	FqhHve5WkTwtS+I8NgKQWulOF7t8
X-Google-Smtp-Source: AB8JxZojToX2161Q4QgBVm5B3XJ1Tfe5KLXQU2vDXxWXZ2FD059TkGzvhidnwNoGWLOTvZK5hdc48A==
X-Received: by 2002:adf:87e1:: with SMTP id
	c30-v6mr624313wrc.246.1524809975741; 
	Thu, 26 Apr 2018 23:19:35 -0700 (PDT)
Received: from localhost (x4dbba678.dyn.telefonica.de. [77.187.166.120])
	by smtp.gmail.com with ESMTPSA id
	19-v6sm1873734wrz.7.2018.04.26.23.19.33 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 26 Apr 2018 23:19:34 -0700 (PDT)
Date: Fri, 27 Apr 2018 08:19:32 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20180427061932.GB9349@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
References: <20180425150333.GA9349@graute-opti>
	<CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
	<5ae1f5fc.0790500a.2fb14.0681@mx.google.com>
	<CAGAf8LwkCDyzkej_c31EjtxXBDP+dqx5ihMCwuBH5CDP5X5T4w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGAf8LwkCDyzkej_c31EjtxXBDP+dqx5ihMCwuBH5CDP5X5T4w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Fri, 27 Apr 2018 06:19:38 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 26/04/18, Zoran Stojsavljevic wrote:
> > I deleted all the build-imx6ulevk folder and build everything from
> > scratch with only one thread, waited a few hours for compilation and now
> > its working ;)
> 
> Still, I am struggling to understand why??? What is the requirement
> behind this ask?

The requirement was just get our older yocto (jethro) build running on a
PC of a different developer. Often developers have their own flavor of
Ubuntu releases and they update to newer versions while they still
develop on yocto releases which is much older. Because that yocto
release is currently in the field by our costumer. Our product cycle is
not so fast to use the newest yocto releases. We started to develop when
jethro was up to date.

We compiled single threaded just because his PC is a bit unstable on
high load. And it crashed a few times on parallel makes. I know that
this is not ideal for yocto development.

> 
> As we see, it is much longer (one thread only) than on 14.04!?

its takes much longer then with settings

PARALLEL_MAKE = "-j 4"
BB_NUMBER_THREADS = "4"
 
> Could you, please, do it on Ubuntu 17.04, or 17.10 (i bet, you
> can't)??? And why, after all???

currently not im using only Ubuntu LTS Releases.
Perhaps I will try 18.04  LTS which released yesterday ;)

Best regards,

Oliver

