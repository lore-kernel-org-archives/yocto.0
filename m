Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B87DE00A6D; Sun,  9 Aug 2015 14:17:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4928CE00306
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 14:17:52 -0700 (PDT)
Received: by ioii16 with SMTP id i16so153195456ioi.0
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 14:17:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EYVI7WFpiwKZBpwvgpiLdiROAkN/udrYaoMffGPsUtA=;
	b=jI9bgmG56pxnU/tZjV6x1ujVfpO0zjN1guzcOHTwd0Dco9xNsHvW5X5fhKryssdwiP
	VGFv8ywvRseIgLDMSmZ4HLrFlhQLYdEgQnWXXHpLhuwmPWiJBvz5FZO3R+VivHMSLsru
	jZJiZDxz4CA+6OTzUo7gsKK85b3xsOwtEFrO+Ak0fjgH9bh72HzoSEwS9z2/rkj42rdh
	oRz6feuK5QlFmEce0dbMoNokxdRq6b71F/mwMTqlS3PJw7Pwx44IFg4xjDHlgUWn3/U0
	aOyeWe+Bdc9OASno9Ve7TgEC4KUTo1ohH01zNYW2qqgOJuDQFxTmAUFhHQHDAcQmUhvA
	P5VA==
MIME-Version: 1.0
X-Received: by 10.107.33.18 with SMTP id h18mr16699347ioh.148.1439155071887;
	Sun, 09 Aug 2015 14:17:51 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Sun, 9 Aug 2015 14:17:51 -0700 (PDT)
In-Reply-To: <1438245251-20437-4-git-send-email-javier@osg.samsung.com>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-4-git-send-email-javier@osg.samsung.com>
Date: Sun, 9 Aug 2015 23:17:51 +0200
Message-ID: <CALbNGRQv4xS3+Sfd4dcsSK_4wDvNEu4Xb2OJ6EDAe7AoTnQ0vg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH 3/5] sdcard_image-rpi.bbclass: Allocate more space for boot partition
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
X-List-Received-Date: Sun, 09 Aug 2015 21:17:54 -0000
Content-Type: text/plain; charset=UTF-8

I am not the author - but ping for this one

Andreas

