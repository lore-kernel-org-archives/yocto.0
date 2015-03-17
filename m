Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294D4E0090E; Tue, 17 Mar 2015 13:08:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF4AE00753
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 13:08:03 -0700 (PDT)
Received: by labjg1 with SMTP id jg1so18598020lab.2
	for <yocto@yoctoproject.org>; Tue, 17 Mar 2015 13:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=D6qVFQOXsHyFTI78j25uJie2lhbEiyo0/gbl50THuno=;
	b=WITNXvZujUUg7q5fPAW30c7tEbOkQ7/CMZjjICOZwuxAcD+bL0aYPvhqsSRleAP9rE
	2I8LoRmCJQ55hjojjXJsxc89dCEQqbSNqnnFYTIXNPEvhl4rn4x7FvDv4tUEItJvuhdE
	lw3MBGe3WZVdsQknNzE/1f0nrPFZXak1IHRTVvxZElITgaPpULJUH6KCacJWpA1GaucO
	ZL5SJXKHOAyUJq7eCzRmBzhx++X9QawOopT7+PvnOg4tIJmeOhonFoVzBohVL0k5Lype
	PHHZLQpmqWRtgFByGDaS30flgQZaWDEFSpyPxS+I+PrCyD5xlwkgnB0tO9ndFxcJHvHv
	njhA==
MIME-Version: 1.0
X-Received: by 10.152.27.232 with SMTP id w8mr56537656lag.51.1426622881608;
	Tue, 17 Mar 2015 13:08:01 -0700 (PDT)
Received: by 10.112.170.70 with HTTP; Tue, 17 Mar 2015 13:08:01 -0700 (PDT)
In-Reply-To: <55086B23.1030203@dynamicdevices.co.uk>
References: <55086B23.1030203@dynamicdevices.co.uk>
Date: Tue, 17 Mar 2015 16:08:01 -0400
Message-ID: <CADkTA4P0JpDfegzWM--jKxUdpxC09T+ki9JOTkOeGbK4SuK1Lg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Kernel configuration fragments and defconfig from kernel source tree, not meta layer file
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
X-List-Received-Date: Tue, 17 Mar 2015 20:08:09 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 1:57 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> Hi,
>
> I've been looking into a request to have Yocto kernel configuration
> fragment support in meta-raspberrypi with a defconfig which is pulled
> from the kernel source tree for the configured machine.
>
> My understanding is that Yocto expects the defconfig file to be supplied
> in the meta-layer and then configured with SRC_URI += "file://defconfig"
>
> We'd prefer not to maintain copies of defconfigs, instead using the true
> default configuration from the kernel tree and allowing users to add
> their own .cfg fragments to the SRC_URI via, say, .bbappends.

Anyone who knows me, knows that I'd say I hate to see defconfigs
at all ;)

But back on topic, this is something I can change, it is simply that
when I first put together the linux-yocto kernel configuration steps,
that most defconfigs were actually out of tree, and not within the kernel
tree itself.

>
> It's easy enough to _prepend() a function to copy the appropriate
> defconfig from the kernel source to the working directory, but I am
> having a problem as do_patch() in kernel-yocto.bbclass seems to require
> a defconfig file from the layer itself via use of SRC_URI in find_sccs().
>
> Any thoughts? Thanks,

Pop an enhancement request into the yocto bugzilla and assign it to
me. I can take care of it from there.

But just to be clear, this will have to stay out of oe-core for a bit, since
it is past feature freeze for 1.8 and even bug fixes are cut off shortly.

Cheers,

Bruce

>
> Alex
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

