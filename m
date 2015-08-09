Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2EBE00A86; Sun,  9 Aug 2015 16:37:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 270D8E006EE
	for <yocto@yoctoproject.org>; Sun,  9 Aug 2015 16:37:01 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so154611464ioe.3
	for <yocto@yoctoproject.org>; Sun, 09 Aug 2015 16:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qgto0l9llCzZONZWQ+z+JNBJplXJhrCHrK+g0cWO81M=;
	b=iw3xID2mGymMOasVrKb8djShwmIPgoATUbEfv3cJacglh2+TgSgOGtgfDpdUOWz7T2
	SEbT1I3u1ylu3SEgOfNqqoMmDahkMCHVyPGp9SJqLF4jfAEQN5zvU7b/w3MLnXzQzmT7
	xzMOHZjLpW3M0WExN1H8XhsVg1vSYIbW9USeMdLZCC2aFNEBdskNTOd2fCrY1G6o/A6+
	42U8ZxKXtGTEJLttJQLEGv3D1jaKJz8EyMNhWBF9jxQzOx0WwaAgzhf6qXeMf/c0I50a
	9Mz18qKeTyux1ZnEtjBI1eakUTlEJgjozfQYJgtHBdYvOifNHm7EEAWtwVEOTFfNFSjK
	VOCA==
MIME-Version: 1.0
X-Received: by 10.107.128.147 with SMTP id k19mr20196863ioi.133.1439163420891; 
	Sun, 09 Aug 2015 16:37:00 -0700 (PDT)
Received: by 10.36.98.5 with HTTP; Sun, 9 Aug 2015 16:37:00 -0700 (PDT)
In-Reply-To: <20150809230528.GL17962@resin>
References: <1438245251-20437-1-git-send-email-javier@osg.samsung.com>
	<1438245251-20437-6-git-send-email-javier@osg.samsung.com>
	<4731B312-4D73-4951-8E73-1579D8C54BD5@gmail.com>
	<55C1AE74.2030808@osg.samsung.com>
	<CAMKF1spq-7CntKTpVEByr7hi8pf6-uuw2DZiM=ZSvQKsaxkyBA@mail.gmail.com>
	<55C305EC.9030809@osg.samsung.com> <20150809230528.GL17962@resin>
Date: Mon, 10 Aug 2015 01:37:00 +0200
Message-ID: <CALbNGRQhDdvVPdA1WHvfZ45WG45JYMYCJaNJTGns5ML5Rg+u6Q@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Javier Martinez Canillas <javier@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	Derek Foreman <derekf@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 5/5] rpi-default-providers: Switch providers according to used gfx stack
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
X-List-Received-Date: Sun, 09 Aug 2015 23:37:05 -0000
Content-Type: text/plain; charset=UTF-8

> Khem definitely has a very good point. Maybe his way of putting it in words was
> not that productive. But the core idea was definitely right: I don't want rpi
> layer to introduce distro features.
Agreed but I still have issues make the changes work

What I have done to test:

1. add
MASK_GPU_INTERRUPT = "0x400"
DISTRO_FEATURES_append = " vc4-gfx"

to my local.conf

2. put [1] on top of the VC4 patches sent  (this is a WIP patch not
yet finished)
3. tested running X11

Question: What setting does the trick getting vc4 driver created by
mesa doing the OpenGL work. I see only swrast which is bulls...

Andreas

[1] https://github.com/schnitzeltony/meta-raspberrypi/commit/4a626add25c1d13dfa6d22c61f9804764f49301a

