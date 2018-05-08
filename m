Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 373F5E00CE9; Tue,  8 May 2018 08:00:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f178.google.com (mail-ot0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B777BE00CE0
	for <yocto@yoctoproject.org>; Tue,  8 May 2018 08:00:32 -0700 (PDT)
Received: by mail-ot0-f178.google.com with SMTP id g7-v6so36413574otj.11
	for <yocto@yoctoproject.org>; Tue, 08 May 2018 08:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=V2im0PxVRhcgsHw7hahqDXXCr9UYZDkju+bCtGIyWpA=;
	b=zFnuEFMgl49aFKr+sf4llQDJiqvMQld+ZPcSpL5JrkQe745+Hhm/QQaEImpK8mMBFu
	O6v/5ACwmIu9KsqWbo88JP6H9rEuCSYPQeGBL7VhqQCbMSOwDTvLFAhzhsdF5VGCMXla
	CL1FLYV/6KI3b8DZF3j+XTebLMMBij1N+81m+HvrI0iMR/jfEzJw+wuIKqJlN6uXO959
	jppJ6xHLIOPxs7ka+D0HzzSkZW5wocs9wZme4zba/+TYIfvkapDP7tj0Qf5oCtoSSLx1
	QfwhEGUy9D4xqBDs4saDQRlj+QHo+bRh0im2kaP4TsVXnglwX/MfIGTR4FOHa9n1Jket
	lLxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=V2im0PxVRhcgsHw7hahqDXXCr9UYZDkju+bCtGIyWpA=;
	b=kDACCSlNlRcSTo5bCgK9Hd2l2eSfCb5OwMcaoS9WpoHK+DvGXLMlduoWZUpZrjKfHN
	sWUkYKk3azSmHtMHSk2JcSa8rinrN38L0f5yBpV3VIf9s6PFuCltFv2Gm8uUVTmxsBW9
	u1aQdztw3CI2BWz7lxdq3XXMcMFDqDuHKpRgMchtLvqvN5aLqwSKp8QQDEDqwRvuVj6q
	hIBN01yjFncgiSGj/v42hst4MN4hrvaNSht5ck63Hu+6Z2/JhjL6TTCFg18R4bf8nd+h
	h3a8aUEEbz6xP9nRDsSUYdFvyreWIuZkHwJJ6tRrtP7xnKBuVitXzNFKcFOf2oWHSpfF
	oOvw==
X-Gm-Message-State: ALQs6tBpbBn8wCtRE8NPtOlYsHuAJscXF8q3CsjlOOsUeTeGy8WyEF8s
	G47B/z4ULeWYAiQOofFSmV3kZhQoYp9CEnHWmvFoi7kx
X-Google-Smtp-Source: AB8JxZoPp2T+EGdVcH0wo5ATbzTOFD/xy9I84TC5tcSnWaktcnjz6tKik4BUjyaqYzaeBewuxct5PMeri1FuKzOd4mQ=
X-Received: by 2002:a9d:4d0a:: with SMTP id
	n10-v6mr31182834otf.306.1525791631376; 
	Tue, 08 May 2018 08:00:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.26.152 with HTTP; Tue, 8 May 2018 08:00:30 -0700 (PDT)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Tue, 8 May 2018 17:00:30 +0200
Message-ID: <CAOT_U5YLAy-xi5Xb3JzpKb_eEb-6aTZm1dwryBOnErXEWzvogw@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Autogenerate python dependencies after do_fetch
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
X-List-Received-Date: Tue, 08 May 2018 15:00:33 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,
I just want to see if someone has encountered this problem before.

I have a Yocto repository with a custom layer that has a recipe for
my custom python app (which is in its own repository).

The python app has all the requirements defined in setup.py
and those have been manually added to the recipe.

The problem arises when the python app gets a dependency
update. For example:

    Starting state:
    App dependency in setup.py -> soco 0.12
    Dependency version in Yocto -> 0.12

    Intermediate step [runtime broken]:
    App dependency in setup.py -> soco 0.12
    Dependency version in Yocto -> 0.14

    Final step [runtime fixed again]:
    App dependency in setup.py -> soco 0.14
    Dependency version in Yocto -> 0.14

Feels like an unfortunate cyclic dependency.

One of the methods that come to mind is to have
automatic generation of dependencies in the recipe
 after do_fetch has happened...

Perhaps someone has a better idea :) ?

