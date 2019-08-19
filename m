Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D0A5E00B1B; Mon, 19 Aug 2019 09:11:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [66.111.4.28 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 310 seconds by postgrey-1.32 at yocto-www;
	Mon, 19 Aug 2019 09:11:10 PDT
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
	[66.111.4.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D306E00A49
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 09:11:10 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 91A8D22110;
	Mon, 19 Aug 2019 12:05:58 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Mon, 19 Aug 2019 12:05:58 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm2; bh=7aFYazVmG30j5cfZWbQB4SHVFv1e
	/C5jwSszv3W9qgQ=; b=u/2I27Y+1M/04l328hhACoBdLNYQu8hAZ0RaRi3I+GE6
	lr0bBYF5bKogPMLI1Iy+QYoRanccNz5PdI/y9C3mNK6VT/C157aMPN4qkvbndiq/
	yjCDoEEHGvwz2DM1doPXX/Ac/pEL615MxJT23+nUwtzms/TYPxA4AZ/7k5DinabJ
	1AVKC/myL6kq1V/kv+PmZfTOFiX8kpIUSjtErn6Tl37Pdl9GFjse8dM5gJruE9kI
	eY+FxLtLt2LKxi5qiO7RgG1nIwt2pDex1QEH19eDUIxFWPTDX95TtNs+d4C0mnwH
	9YuEg+kvXEfuSOrFyTqJnuvQLblJeIk0uNVt79gJdA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=7aFYaz
	VmG30j5cfZWbQB4SHVFv1e/C5jwSszv3W9qgQ=; b=CyeAPcwn7LczIFTcTpwjIB
	zpP+NTCKzcHHX0e/D7/CJFE1rcO4hoiTKzXLfhF5oj7eF7fgN3ziF5I2UE/1E3zu
	s+5r9+mnkT4FJ/8EiU7JjlJxKnHeAJ8MxHcNN5cYuwrVwH1pgdiUEeLyr7vtumiq
	A/8xAUoA5FweqXAC/8cJEmOwixxIajeQDvrMcZqHnMYSTFtaa/y2DeDUgtjy0lYR
	Yw8Wlg7fqGfKJqzk7eEQ6DQ6eemFeSAJ15jLngcAFBixbhvzp6cZSsOaEU8QC75Y
	vlGRjkgVNnPz380YxT1QZgmh7U78041EzgC60AcY/O0/5hhn1JkJ0W5WdENqPGfg
	==
X-ME-Sender: <xms:5MhaXX3cu2t8Uddt_Tvoxd1Yy59wkJAJlV0bZaoiDbbDETM2x8TZ1A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudefledgleekucetufdoteggodetrfdotf
	fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
	uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
	cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
	lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffoh
	hmrghinhephihotghtohhprhhojhgvtghtrdhorhhgpdhlihhnuhigfhhouhhnuggrthhi
	ohhnrdhorhhgpdhophgvnhgvmhgsvgguuggvugdrohhrghenucfrrghrrghmpehmrghilh
	hfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushhtvghrufhi
	iigvpedt
X-ME-Proxy: <xmx:5chaXVG94Yy-mgnh8LSx1EW9uG2FPlZJ3XozegjJs5MdiwJHJcClzQ>
	<xmx:5chaXSQQSWGgawdmPpAUK7h-cKk4AG4l6rkaPsl0oCSwlx1MG4APEA>
	<xmx:5chaXVZtHo0oDVkiUjYRbBuW6UiMPi_ZK-JGSFJztILmtXtxdJtcYQ>
	<xmx:5shaXSYWsiRbB00cxHJX6e36BO5w4qUzM513AUpytSRd_puc4jTXog>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id E0571E00A3; Mon, 19 Aug 2019 12:05:56 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-877-g11309a8-fmstable-20190819v1
Mime-Version: 1.0
Message-Id: <729299e3-efcd-462f-9106-8855527b173f@www.fastmail.com>
In-Reply-To: <CAP71WjxFASX0tvkYA2+Bg9M8yquK4GZCWnoiV8xZ2AT04zr3Wg@mail.gmail.com>
References: <1a542261-a335-db48-e7ce-7c1dda207ff1@balister.org>
	<CAP71WjxFASX0tvkYA2+Bg9M8yquK4GZCWnoiV8xZ2AT04zr3Wg@mail.gmail.com>
Date: Mon, 19 Aug 2019 17:05:45 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>,
	"Philip Balister" <philip@balister.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] Yocto Project Summit at ELCE Call for Particpation
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
X-List-Received-Date: Mon, 19 Aug 2019 16:11:14 -0000
Content-Type: text/plain

Hey folks,

I'm looking to submit a talk and I'm a little confused on when to register for the YP summit. Should I register now to get the discounted rate or should I wait until the list of accepted speakers is announced? Unlike for the main conference, it looks like the registration price goes up before the list of accepted speakers is released. It's also not very clear whether accepted speakers will be given complimentary registration.

Thanks,
Paul

On Mon, 19 Aug 2019, at 12:21, Nicolas Dechesne wrote:
> hi Philip,
> 
> thanks for sending this out!
> 
> On Mon, Aug 19, 2019 at 3:17 AM Philip Balister <philip@balister.org> wrote:
> >
> > At the past few OopenEmbedded developer meetings, people have been
> > asking for more developer and user focused events like a miniconf.
> > Partly based on this feedback, there is a two day event sponsored by the
> > Yocto Project that provides a chance for people to talk about the Yocto
> > Project and OpenEmbedded. The CFP is a bit buried on the page and I like
> > to get it more exposure, so here the direct link:
> 
> all information about the Summit is also available here now:
> 
> https://wiki.yoctoproject.org/wiki/Yocto_Project_Summit_2019
> 
> >
> > https://events.linuxfoundation.org/wp-content/uploads/2019/08/Yocto-Project-Summit-2019-CFP-1.pdf
> >
> > We'd like to see new faces talking. We know there are a lot of good
> > stories out there, that will help lots of people become better users and
> > developers.
> >
> > The link to the event is here:
> >
> > https://events.linuxfoundation.org/events/embedded-linux-conference-europe-2019/program/co-located-events/
> >
> > Follow the path to the Yocto Project Summit. If you are alrady signed up
> > for ELCE, you should be able to update your registration to include the
> > Summit.
> >
> > Philip
> > --
> > _______________________________________________
> > Openembedded-core mailing list
> > Openembedded-core@lists.openembedded.org
> > http://lists.openembedded.org/mailman/listinfo/openembedded-core
> -- 
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

