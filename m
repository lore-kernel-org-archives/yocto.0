Return-Path: <prvs=1029a96a03=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70DF4E00D3A; Mon,  6 May 2019 03:58:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.50 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[85.215.255.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88978E00C14;
	Mon,  6 May 2019 03:58:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1557140329;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=5NeZGkWnt/wlLIVZnvrbjKoYMZrk/KhgD3q9drPva04=;
	b=Mq5rpdO78r9YRvsp7TXi14pUnOh3RbH7B5QVN9PgyPCSmbxTYlaPDTfLdEvK9jCzYG
	8aj0U/sDdFTg6HXMY+E6qW8in2H/XlrDjeQVaYq2nxU4wJm3ywI+2MoGHLKRfC0pHgJC
	vLupMLpU4oRHS7TLrMFBeJSvTar7j06eZMFd6t1/Iw2sSxVscc3xX6eVjRRXYsi/bMXu
	dG8GzAKt/WNDr651m06/IuKRtE0QdOSLkfg1FwC546AB1O4uPz+PrI8zPRawvLTXV9ch
	op3YjLlmEBKza5Pz499tcDTln0IB3ch8oNU11W/wBeP3NOW3F0nvfPq1MuEHkiIWm9zH
	uUTA==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.18 AUTH)
	with ESMTPSA id Q0b788v46AtjWU9
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Mon, 6 May 2019 12:55:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1557140148; x=1557744948;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=5NeZGkWnt/wlLIVZnvrbjKoYMZrk/KhgD3q9drPva04=; b=d
	g+1oBUJdQqKcO71SvuG17lBFUInHfWc2bcYymg7+f6Qk80+scNdLb5+lDTDtp39X
	Mz6ZnPGYR+flJGd+I3IhZdmt+qmA6gvc3Jc3Cu4uCyix8wbR3FigX7tmVMWx/6R2
	t314Oku37m0ROg3nzMFw4c4Z1joe1WsTTt4v/xNGoM=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.3) with ESMTPSA id
	md50000163770.msg; Mon, 06 May 2019 12:55:47 +0200
X-MDRemoteIP: 178.27.67.144
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Mon, 06 May 2019 12:55:47 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1029a96a03=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Mon, 6 May 2019 12:55:42 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Behan Webster <behanw@converseincode.com>
Message-ID: <20190506105542.sou43f5lhkqfxlmy@jholzmayr.localdomain>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<954A193F-DC16-4429-BAAD-EE78327C048E@converseincode.com>
MIME-Version: 1.0
In-Reply-To: <954A193F-DC16-4429-BAAD-EE78327C048E@converseincode.com>
User-Agent: NeoMutt/20180716
Cc: Yocto list discussion <yocto@yoctoproject.org>,
	"yocto-advocacy@yoctoproject.org" <yocto-advocacy@yoctoproject.org>
Subject: Re: [Yocto-Advocacy] Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Mon, 06 May 2019 10:58:53 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Howdy!

On Sun, May 05, 2019 at 05:07:30PM -0700, Behan Webster wrote:
> If community building is the plan please don’t exclude OpenEmbedded from the name nor the material (in other words, acknowledging which parts are from OpenEmbedded). Part of the community building aspect is going to have to be acknowledging that Yocto Project is an umbrella project made up of other projects, and then celebrating those projects.
> 
> The original idea I put forward was to have a joint OpenEmbedded/Yocto project 2-day event to replace the separate ypdd and OEDEM, not merely a larger Yocto project event.
> 
> I am personally already seeing a negative reaction to these plans from others, which is IMHO sadly contributing to destroying community instead of building it.
> 
> I, personally, would like nothing more than a simpler way to describe the whole thing. However as it stands we essentially have 2 camps that continue to separate instead of coming together. Let’s try and fix that bit first.

Completely agreed. I've personally never understood the (until now,
mostly) friendly mutual heckling, but its a thing we have to cope with
and sort out. The sooner, the better.
 
> And I surely hope that things other than beer and wine are made available. There are actually a lot of attendees who don’t drink from what I can tell, which was made extremely evident to me in Edinburgh where the non alcoholic options kept on running out and how much alcohol was left at the end of the night. Wine and beer isn’t a draw for everyone anymore.

Another point I'm just stepping up to fully support. We can run out of
booze - its better if we don't but hey, we absolutely must not run out
of water and coffee.

Greetz

PS: Yes, its actually *ME* writing that.

> 
> Thanks,
> 
> Behan
> 
> Sent from my Mobile Computer which is also a phone
> 
> > On May 3, 2019, at 11:01 AM, Volosincu, Andreea S <andreea.volosincu@windriver.com> wrote:
> > 
> > Greetings,
> >  
> > Yocto Project is pleased to announce the plans for the upcoming Embedded Linux Conferences in NA and Europe.
> >  
> > Here is a snapshot of our schedule:
> >  
> > ELC NA – Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfront, San Diego, CA
> >                    Yocto Project is a sponsor. We’ll see you on the show floor
> >  
> > ELC NA Dev Day – Tuesday, August 20, 2019 - 8:00AM - 6:00PM
> > Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
> > Level: Intermediate – Advanced. Participants will receive beginner material (videos and presentations) as pre-requisites
> > Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with light appetizers
> >  
> > ELCE – Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon, France
> >               Yocto Project is a sponsor. We’ll see you on the show floor
> >  
> > ELCE Yocto Project Summit – Dates & Times:
> > Thursday, October 31, 2019 - 8:00AM - 6:00PM
> >                November 1, 2019 - 8:00 am - 6:00PM
> > Set-up:
> > Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project talks
> > Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 & Classroom seating for 40 (for maintainers and users)
> > Includes:
> > Morning Break for 2 days
> > Buffet Lunch for 2 days
> > Beer & Wine Reception with light appetizers for 1 day
> > The goal for the second day of the summit is to build and bring the community together. We are interested to hear your opinions and ideas on how that day and those rooms should be used for. Please send your ideas to Andreea Volosincu and Philip Balister.
> >  
> > We will call out an Advocacy meeting in a couple of weeks to go over plans and vote on the ideas for the second day of the summit.
> >  
> > Thanks!
> > Andreea
> > Yocto Project Advocacy Lead
> > -- 
> > _______________________________________________
> > yocto-advocacy mailing list
> > yocto-advocacy@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto-advocacy

> -- 
> _______________________________________________
> yocto-advocacy mailing list
> yocto-advocacy@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto-advocacy


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


