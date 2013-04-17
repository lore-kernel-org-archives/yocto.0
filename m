Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C31E01488
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:05:22 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id m16so1384703vca.25
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=LhFYLRb8C9DyZPkNP33TVcI03YkdJG/DuRhPlRCCTNk=;
	b=PPq1NGQO/qXApqCV0PYQLDvCArwTWe36Zle+l0ol6RoXLx2Kfq8TOjj1gnluMbJrQO
	+ACcyD8Sl02k5vpJdsHcnoQ3VmLfN/pSSCwRuEmKz7a2Zie/bZUI2qkWeeyt2WnKeDxC
	hyiiXujAw9UL5a9XjzsPi2Ga8Snu0kfcS0Z2l6mB/pjT+5rEnXwRPIelB6Hhx4uJEenn
	WOgvE0N1vf8iwUJeLMrbGuE8ZMH/SGTHRaNKnXML/ypk8pHKz/VYhSELky3INDtAtBUI
	OMHW4VEOF0xyiLW5rXahoic7Vw9tP4yLldjFC5JWrKIUgZF6Ad5u/dEEY2ZfN3Cm3yn6
	NWsA==
X-Received: by 10.52.16.233 with SMTP id j9mr4437745vdd.29.1366211121581; Wed,
	17 Apr 2013 08:05:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Wed, 17 Apr 2013 08:05:01 -0700 (PDT)
In-Reply-To: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
References: <CAFMfyzJJY0hFGXimgdVwzp8i58PnXPnAUyKH_bk9DU25FXVjiw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Apr 2013 16:05:01 +0100
Message-ID: <CAJTo0LbUfNkkgeM9HNN4pE6n-tMyMJY9_4_Ns5BTie91=Qy4HQ@mail.gmail.com>
To: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
X-Gm-Message-State: ALoCoQkF+0b+trmeYXpi3BVEa7AuihprpNLTyeUr/G86md0FJ72fi5pR6Y1CBb3iRQNx7OIoH6tQ
Cc: yocto@yoctoproject.org
Subject: Re: Adding prebuilt binaries to /usr/bin on rootfs
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
X-List-Received-Date: Wed, 17 Apr 2013 15:05:22 -0000
Content-Type: text/plain; charset=UTF-8

On 17 April 2013 16:00, Satya Swaroop Damarla <swaroop.damarla@gmail.com> wrote:
> I have few prebuilt binaries and I want to add them to the rootfs at the
> build itself. So, I created a recipe... but I get an error .. Can you please
> tell me what the error could be?

It helps when you tell us what error you're getting.

Ross

