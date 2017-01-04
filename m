Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78170E0043B; Wed,  4 Jan 2017 06:22:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 601F2E003DB
	for <yocto@yoctoproject.org>; Wed,  4 Jan 2017 06:22:45 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id n85so33534865ioi.1
	for <yocto@yoctoproject.org>; Wed, 04 Jan 2017 06:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=nzOkPEgHdznpF3ZStmmfmImbP3n81okRKwKl8JDaYXg=;
	b=DgGyp91W50J/91gJVusPScpNZJ6PLLQyPkaB77KvI2svj2FCsh7ZDuT6eHtxPy6FqI
	/PdYP3YTovVM87HZRPIehM1sF73m/fE5XS2A0xit6tIUhXpDBteSBJt6x34Sr5VTgeKl
	kvnnxHTKSv9QUts54dlesc4xinfcSjSc32nH4dNjoDFzXTE3Q6CllE3aR8eeEg4qbYXe
	wy1PeHN7J5HWxIfoakc02dTYYz6/PD2De8PYWo6aZxfHRslXWFVjEN86D0KrrcOCPP9Q
	9y8l0bkk6TYIx7zLQzaJo6MxPKtbt9xIVl5dTH4sDdFbFZRBkXu3aMbBs4yo3o/uy6H4
	jgFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=nzOkPEgHdznpF3ZStmmfmImbP3n81okRKwKl8JDaYXg=;
	b=Ruv1z5sJL6R/UV4e+qC6Fo1peL+wvRl2E7tj3IoEG6L4eOaBPsYRtaDknQKtkcLcWQ
	FVb61zBuppn6yUm+x3hf8Jyfy//w43YeeHBXc7gxiK9DWgwQPNmxWWNkKRIVXQk/xZOY
	5sX/fWxEveBgjM4bpl7nbBl3hYN7B8FimfKp2Pnp2poKzJYyI6nf0wg0FXl973TkhiuY
	xWMRO+KH3wdR4KvrymcnPKaDpRf/4M8sqMQMPul/5uJGjolM2AQISM85b710O3+v5PWr
	UhtaR58TYkAgItrcsBCAQC4kMCPRA10USCG0gwZbIJREL3hF3CRlmKiBrGY8Bxz4TgF4
	FOdQ==
X-Gm-Message-State: AIkVDXJl6kgGn8z8YBSswfc1W6x84pQ0cA8qeGym24wvobQyMbFSYymn69GCkPdSTzZxsQ==
X-Received: by 10.107.159.68 with SMTP id i65mr54615573ioe.153.1483539764612; 
	Wed, 04 Jan 2017 06:22:44 -0800 (PST)
Received: from openSUSE-i7.site (76-10-182-217.dsl.teksavvy.com.
	[76.10.182.217]) by smtp.gmail.com with ESMTPSA id
	e35sm35422164iod.32.2017.01.04.06.22.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 04 Jan 2017 06:22:44 -0800 (PST)
Date: Wed, 4 Jan 2017 09:22:42 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170104142241.GA13686@openSUSE-i7.site>
References: <20170103193831.16829-1-twoerner@gmail.com>
	<20170103193831.16829-2-twoerner@gmail.com>
	<CAMKF1srLVA7oy=8J+T1MrsoVV=sLQApvD4+h+bVnWusy5aWZ6w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srLVA7oy=8J+T1MrsoVV=sLQApvD4+h+bVnWusy5aWZ6w@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-rt: add
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
X-List-Received-Date: Wed, 04 Jan 2017 14:22:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue 2017-01-03 @ 10:43:09 PM, Khem Raj wrote:
> perhaps the defconfig can be made smaller. If you regenerate it using
> make savedefconfig in a prepared tree and using the resulting config
> file which will be smaller in size
> when compared to fully expanded .config.
> 
> On Tue, Jan 3, 2017 at 11:38 AM, Trevor Woerner <twoerner@gmail.com> wrote:
> > Add an -rt kernel option for Raspberry Pi that includes the FIQ patch which
> > adds stability to the -rt kernel (with full preemption enabled) and is an
> > improvement to simply disabling FIQ on the kernel cmdline.

Okay, I can give this a try.

