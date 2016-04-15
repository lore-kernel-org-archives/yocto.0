Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FA1BE00D2A; Fri, 15 Apr 2016 12:25:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D91DFE00C94
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 12:25:12 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id c4so158804978vkb.3
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 12:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=8wMK9uJCBOyLlSj+EvP9Ue/SpCQBoMkvzJw9f02h7VY=;
	b=yXghiDCQoYVc/jRFXZHnnTC1hWlBKgmWcYz0aTNfu3G9CZQwSN3lzUYfvGPjl42jVq
	m1NsyRDvF70j9grNMPk/yoyorpRs9vwsgNL8zCyEJqjNxTkWj6FEHZRD/bSBqOELK3c3
	I/kpKI+j4QJYdL1oZ9CNhj9GgegKwK/rxuep2xABZdoHulXf8mr9PeVd+pmEqVJYDr+T
	AeS1+dvjxVW8XKDNBtmVRmSINyv268YPe6mJbluF61eoYBCs1UdCdC4Y6IVisOsW3cLk
	KaQywOT73H5aBhlhWSDNRzv4kcPZldiV8KiehXFBeo8d4m041nLRbsKVZFCfdWk7BlJU
	DYuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=8wMK9uJCBOyLlSj+EvP9Ue/SpCQBoMkvzJw9f02h7VY=;
	b=Xmr30z6pZnw2zchu6bCp7oiwexloKZl5eUkNzXMLhRbtK0D17qgVffxxMCxg+sTzGA
	WoINswLz0ywI/qUjhXUYUJRvDCqZyrlKfWIkSQ7l4xnBIEV66f9PePkUcdWKzw35coAp
	xfxIIHAtc2MXCkUyJ3GJphcVIPL8sVHSbLbx3AyT95wHKbGBVenK7ElEAoyXwk/KWJeJ
	8VMbKtJwf1/e5x8lCvUglMaRa7xKjNk2d2shmd5NZezJ+VazTvOrFo9ykEFFsUN/+CbF
	JbIk9pYbuIpT459MHzNUAH6GMjfLywGUM91ub8/xaWKElWPNdW7oVPUctl3138ksg3cC
	+I5w==
X-Gm-Message-State: AOPr4FXtP534iK6sLmdg0GY9GeW/c10JSVPyKeIKkp+i3QXMOL860HZYv1Sw3n6LkUDe25NhxTS05PQmgswvkw==
MIME-Version: 1.0
X-Received: by 10.176.65.33 with SMTP id j30mr11713033uad.142.1460748311989;
	Fri, 15 Apr 2016 12:25:11 -0700 (PDT)
Received: by 10.176.66.227 with HTTP; Fri, 15 Apr 2016 12:25:11 -0700 (PDT)
In-Reply-To: <neobei$3tg$1@ger.gmane.org>
References: <neobei$3tg$1@ger.gmane.org>
Date: Fri, 15 Apr 2016 16:25:11 -0300
Message-ID: <CAF3SDA7fmJEjrOKJZ4xd28rnOtuTZqpVRcR1csP=Rbbkwd4GnQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Andreas Eipeldauer <andi.eipeldauer@gmx.at>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Different patches for different images for same machine
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
X-List-Received-Date: Fri, 15 Apr 2016 19:25:16 -0000
Content-Type: text/plain; charset=UTF-8

Hi Andreas,

The problem I see here is what would happen if you say `bitbake
u-boot'. At this point no image should being built, so what patches
should be applied?
With the machines aproach you have multiple virtual u-boots and select
the proper one with a preferred provider.

Regards,

2016-04-14 12:02 GMT-03:00 Andreas Eipeldauer <andi.eipeldauer@gmx.at>:
> Hi,
>
> I have extended the basic images core-image-minimal and core-image-full-
> cmdline to images that differ by installed items in the rootfs, like core-
> image-minimal-web has dhcp-client, inetutils-telnetd, openssh openssh-
> sftp-server installed.
> Now I would like to customize the environment variables in u-boot with
> patches and create a dedicated u-boot to the appropriate image.
>
> Any advises how the most robust realization for this would be?
>
> Should I create a dedicated Machine conf instead of different images, or
> is there a way to conditionaly add an additional patch to u-boot ?
>
> Thanks for helping me out, greetings Andi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

