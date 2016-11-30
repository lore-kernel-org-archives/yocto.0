Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5723DE00503; Wed, 30 Nov 2016 09:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.210.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wj0-f194.google.com (mail-wj0-f194.google.com
	[209.85.210.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBEEBE00498
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 09:19:06 -0800 (PST)
Received: by mail-wj0-f194.google.com with SMTP id kp2so23248496wjc.0
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2016 09:19:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=q+T8S6g92ospRbgfU0pKPxGhXMWzrnLhqYfbTK9KnyI=;
	b=FgrM/Lm9Pg4AxdaoTlEIG6aMT8ZbJTOlZckmdY1sLAiR5gsbSRYooTxgtKOZRmdPeR
	FA4Ar13TBhS9brw4E5gJLBygW5IPOUuD93NGkX7BM2xmn/V3jVPiSJeoPk12kkWTfVTN
	V6aY60rEnH4pJRcStxdO8Y+j+zVSkhiZBSuUUuWlewfM1f2xdIlb9uzx4RFwoY/8O+/Q
	ls7bCqspcLnmaggs87urOhiyLdmt98wimXeSp0tfQc6W39wqv0QqD7/Lm4b/Vh/ua/aC
	Kd5PjGw4KE2SDybZE5W3m+1FRFti8Gd0FRTB6fp2EGyR3/WOnYRrMupLNsOoObP/WBmB
	zeSA==
X-Gm-Message-State: AKaTC03ULfqbW5zTNP2YfvpryoT/8boKUwV9i20ncH4reBEKoDf9mHHHRewu661Xgc6v6w==
X-Received: by 10.194.26.170 with SMTP id m10mr29324465wjg.152.1480526345566; 
	Wed, 30 Nov 2016 09:19:05 -0800 (PST)
Received: from tfsielt31850 ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id
	a13sm8996571wma.18.2016.11.30.09.19.04
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 30 Nov 2016 09:19:05 -0800 (PST)
Message-ID: <1480526344.13682.8.camel@andred.net>
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
To: Patrick Ohly <patrick.ohly@intel.com>
Date: Wed, 30 Nov 2016 17:19:04 +0000
In-Reply-To: <1480517999.6873.298.camel@intel.com>
References: <20161121120355.18309-1-git@andred.net>
	<1480503859.6873.280.camel@intel.com>
	<1480516308.13682.1.camel@andred.net>
	<1480517999.6873.298.camel@intel.com>
X-Mailer: Evolution 3.22.2-1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: update mechanisms (was: Re: [meta-swupd][PATCH] bsdiff: update to latest version)
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
X-List-Received-Date: Wed, 30 Nov 2016 17:19:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2016-11-30 at 15:59 +0100, Patrick Ohly wrote:
> On Wed, 2016-11-30 at 14:31 +0000, André Draszik wrote:
> > On Wed, 2016-11-30 at 12:04 +0100, Patrick Ohly wrote:
> > > On Mon, 2016-11-21 at 12:03 +0000, André Draszik wrote:
> > > > This allows us to completely remove the build time
> > > > depenency on libcheck when not needed, reducing
> > > > overall build time, and in addition tests can be
> > > > converted into a PACKAGECONFIG to enable them if
> > > > needed.
> > > 
> > > +1
> > > 
> > > Sorry for the delay, I had to check with Joshua first who's going to
> > > merge your patches. I'm currently working on a major update of
> > > meta-swupd (see https://github.com/ostroproject/ostro-os/pull/198) and
> > > if there's enough interest for using it as part of Yocto, might
> > > continue
> > > maintaining it.
> > 
> > Thanks Patrick. Are you saying you would otherwise abandon meta-swupd
> > completely, or have it be a part of ostro-os only?
> 
> That's undecided. We are currently trying to figure out which update
> mechanism is a good fit for Yocto. Depending on the outcome of that and
> available resources, we may or may not have the time to support
> something.
> 
> I've started a Wiki page
> https://wiki.yoctoproject.org/wiki/System_Update - rudimentary at the
> moment, but might as well be mentioned already now.
> 
> Perhaps you can say a few words about your usage of swupd and what you
> liked or didn't like about it? Note that performance will become better
> with the upcoming update.

In the wiki or here? I'll be out for the next week, but when I come back I
will write some more.

BTW, you probably know this: 
https://lists.linuxfoundation.org/pipermail/automotive-discussions/2016-May/002061.html

I liked swupd for its ability to be used both for initial provisioning as
well as for incremental updates. The latter being important when you have
*loads* of devices, where it doesn't seem to make sense to download a full
image for a tiny change to each device (think cellular!), the former
streamlining the update mechanism, so that not two different independent
things have to be maintained.


Cheers,
Andre'


