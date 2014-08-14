Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E691E004F2; Thu, 14 Aug 2014 10:51:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08A87E0034B
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:51:37 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id m15so1395225wgh.15
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 10:51:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=+8623Ix2VH8t9utJLlBkBquwoBo7gJkx4VJCnq6+Exw=;
	b=LstQVGP9g0p7yCG7KBFDgWbr6SskmlDmeJSHSlzQnnnpMC8LSnfHEKDoJb7tz0qGTA
	fU9Mo5nhU5WVKFYiRurSdmpghtRJQO5HQVfcVe3eIgPkSDwJBb8j63+466+bSwwpu/pQ
	llypwXcBmf6vwmOVxDvRHGzyF50xIqAQUH0MMGcZjUjKYa6TB1PeHcNcyDWlzpqiIrrK
	+YB11ET3hnMxEwhuhqi8LqOWEl3NQPDI4BlSLJDVXAYzqPdqWSDju7BelYfF3ILkaxUj
	gUfLWTNHzx0viUw3+1BJJYlEsjOKp79c4Ou9kQfQqBsJNzmYxvE3um17iRZ+mqld+TAI
	KY1A==
X-Gm-Message-State: ALoCoQk4xS7aAsOLeqeZGn6tVtSN0vZLIN56xRjgiu4SokNSBrzXlM88zTmBwncu3w4kFXJ3Na+F
X-Received: by 10.180.80.133 with SMTP id r5mr47420367wix.62.1408038696376;
	Thu, 14 Aug 2014 10:51:36 -0700 (PDT)
Received: from gmail.com (dhcp-189-34.gjk.dk. [195.249.189.34])
	by mx.google.com with ESMTPSA id
	gi5sm12843192wjd.33.2014.08.14.10.51.35 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 14 Aug 2014 10:51:35 -0700 (PDT)
Date: Thu, 14 Aug 2014 19:51:33 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Message-ID: <20140814175133.GJ18247@gmail.com>
References: <17C5D232-0433-4ADB-AA99-40D08E56A436@cmteknik.se>
	<539A11D5.5030805@dynamicdevices.co.uk>
MIME-Version: 1.0
In-Reply-To: <539A11D5.5030805@dynamicdevices.co.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Jonatan Magnusson <jonatan.magnusson@gmail.com>
Subject: Re: [meta-raspberrypi] how to customize kernel config?
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
X-List-Received-Date: Thu, 14 Aug 2014 17:51:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Jonatan,

Did you managed to try Alex's patch? https://review.gherzan.ro:8443/#/c/106/
Your feedback would be helpful.

Thanks,

On Thu, Jun 12, 2014 at 09:47:17PM +0100, Alex J Lennon wrote:
>
> On 12/06/2014 07:48, Jonatan Magnusson wrote:
> > Hi
> >
> > I’m trying to use the meta-raspberrypi BSP with Yocto (1.6, Daisy).
> >
> > It works great, except I have no idea how to use a custom kernel config!
> >
> > I have a custom kernel recipe that bbappends to the meta-raspberrypi kernel recipe.
> >
> > I’ve tried using defconfig as well as configuration fragments, but neither work.
> >
> > I’ve also tried using the kernel_configure_variable function, and that almost works, except if I try to disable an option that is enabled earlier in the the config file, the option is still enabled since kernel_configure_variable only appends to the config file.
> >
> > Example:
> >
> > do_configure_append() {
> >   kernel_configure_variable SPI_SPIDEV n
> > }
> >
> > So I wonder: how is this supposed to work?
> >
> > In my case I need to enable CONFIG_IEEE802154_MRF24J40 and it’s dependencies and disable CONFIG_SPI_SPIDEV and a few more.
> >
> > I’ve found no help on IRC and all Google comes up with is this old discussion, which does not lead to a solution:
> >
> > https://lists.yoctoproject.org/pipermail/yocto/2013-November/017113.html
> >
> > I would be very happy to get any hints on how this is supposed to work!
>
> Jonatan,
>
> I have a patch set here which I believe will enable configuration
> fragment support (yocto-ization) for the RPi as detailed in the Yocto
> Kernel Development Manual.
>
> It needs more testing before I would be comfortable releasing it, and I
> am short of time right now. The kernel builds and my testing shows that
> the config and config. fragments seem to get picked up, but I haven't
> tested on a board yet as I have run into trouble moving up from Yocto
> daisy to master.
>
> I wonder if you would be interested in taking a look at it with me?
> If/when it worked/works you should be able to simply add a foo.cfg file
> with your CONFIG_foo to SRC_URI in a .bbappend and that should get
> pulled in as you need.
>
> Cheers,
>
> Alex
>
>
> Cheer
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

