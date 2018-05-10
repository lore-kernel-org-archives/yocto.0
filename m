Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 434CCE00E18; Wed,  9 May 2018 21:27:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f67.google.com (mail-vk0-f67.google.com
	[209.85.213.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A35FCE00DFE
	for <yocto@yoctoproject.org>; Wed,  9 May 2018 21:27:16 -0700 (PDT)
Received: by mail-vk0-f67.google.com with SMTP id m144-v6so446103vke.4
	for <yocto@yoctoproject.org>; Wed, 09 May 2018 21:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=enP4m708/FSTQwLx8aKIjV9l9f1TPCXpP1PB/bsH53c=;
	b=D/RS2ntUrZt5mT1kG3Z9ovV5IkcqSZQCtjUAF93fGrbMhOAWQ95ZQ+9os0zf8WA2tV
	rHUttOIzIK9z0nG2LJpMeLwWoh7TAiBDktSzcveH7IVhhMQ8i5D9OZu5hr497JpjdzdH
	XIArhxETo8nFA+m5rAre0FBRz0hFHlmpe4YLaGcUF45riQtM4MCt7vyLCgHbcANL4A3f
	fX4ftt8ZnJsAcxQvNV3So0ZPIivkidwo6HC5d+ksORhiPxIXlXRi9yCWKHwnWWt/7AyT
	HiLNLt3kCB3Fek8PiwYaSk9QtqkJFU0plk/SvxY0Iu4/iKqCEwJms056OkdbuJ96WIAe
	WBFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=enP4m708/FSTQwLx8aKIjV9l9f1TPCXpP1PB/bsH53c=;
	b=iDLSgE9K1F7P1y/r2wfIIDbwNFS1w6HSB17KT4sz+v8HzhHQSNJhFwZrFY0MdUn149
	FK23AGvYo5QuEMmh729FWi9Ov6sRQxqVsKfPmYAwoYir45AJ15a9PFeRzJUGjbEk1Ik6
	efIyl9p8zs/KYy0roSbjqn4mPaTwp/S4MEFGPKndnekSGG5yeNT99nF1BEnasFf502Hj
	j7wryEWc3WBmztywooTsiNfdyUN/GCgJJasdrgUIMUa5OMSIhlRJL2wVTvfkNsOE8Ju7
	RxKFsQ8vTutkoEPGMtbcELnicIwqWgPH7LV5OkoNBvwUF0wHGgC3G4TjMd7oqBonfgtV
	4BIQ==
X-Gm-Message-State: ALQs6tBlzOj86TSKs4XNDE5zuFO9XuX2JA/hYInqxMwZgzUuBUtnMdlW
	fNxizwdni4D0HA/IorUOdUWu8PPGlGDdwarvJkZrIg==
X-Google-Smtp-Source: AB8JxZqFQFe2Kzb/+k6I2wOAap98VWcXYIM5mWyiMFFVynFfqaaD9dk4Hx8RYowo1U7LAXIL+Uto7bweVDVeeP9tTiE=
X-Received: by 2002:a1f:9e17:: with SMTP id
	h23-v6mr18564248vke.24.1525926435637; 
	Wed, 09 May 2018 21:27:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.48.148 with HTTP; Wed, 9 May 2018 21:27:15 -0700 (PDT)
In-Reply-To: <1831367.lNj4jCPAXG@tomcat>
References: <1831367.lNj4jCPAXG@tomcat>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 9 May 2018 21:27:15 -0700
Message-ID: <CAJ86T=UZ=G-eh0U70eRWniAJN0btd+yrAkXigP3HMKeRjiTUuw@mail.gmail.com>
To: Denis <info@denisgottardello.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to create a build for ARM Cortex-A8, S5PV210
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
X-List-Received-Date: Thu, 10 May 2018 04:27:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, May 8, 2018 at 1:38 PM, Denis <info@denisgottardello.it> wrote:
> Hi. I'm new to yocto. So I have followed a tutorial and now I have crewated
> my first yocto distro for i386.
>
> Now I need to create a build for my device. It is a Samsung S5PV210 device,
> Cortex A8.
>
> Here there is a description
>
> http://www.friendlyarm.net/products/mini210
>
> Can someone suggest me how to setup the yocto build for this target?

Start by creating a machine config. That could initially be very
minimal, for example, just:

  require conf/machine/include/tune-cortexa8.inc

might be enough to build a toolchain and a minimal rootfs image with
command line tools which will run on your board (if the board comes
with a pre-built kernel then you may be able to use the pre-built
kernel to run the OE rootfs - just for an initial test).

Next step would be to create a kernel recipe, so that you can create a
complete kernel + rootfs with OE.

After that, add recipes for any components which are machine specific
but are not part of the kernel (e.g. out of tree kernel driver
modules, etc).

