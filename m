Return-Path: <prvs=1029a96a03=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F41CE00D3A; Mon,  6 May 2019 03:48:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.52 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 179 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 May 2019 03:48:07 PDT
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[85.215.255.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D01EDE00D36
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 03:48:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1557139686;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=xQVDcqrEfSSCG6QKXMXuLgPIA2RqY/rnvNqc6JqTBGc=;
	b=FeEMlWzBpA9T8ErHLMjl7B7IwQxLOwPcok1j7AbMdOEbOc7XSEuyuLt8kewrSNXbYC
	+FyqroeDO5QNtxjNaCUwatN+GfbZqp3gIYU/d2Fw74/d1HYJSzqlbrK11ZzTPlVJLTp4
	1zsI32i7HK0bj9ipvtq7O3MjPDUUTssubHwS+BvMohscvzmSCvZuIkUuTJ2Vdw/IFybo
	mLATbVoJZ/KQMFu7evupc2cFiEUheyyOgQkSwsZu2Ubvi2oj24kKRzySYoXHEg2z4c6/
	ctqZ5tsNPQNqQsnuswUbgMy87zhHNjJ+DeCoYa0krckprWJvG9rgn0r15pF6BWVoivEx
	hwfw==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/Kpz6b/avroGOv0c9sak1tqOWjLU3UFhR6"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.18 AUTH)
	with ESMTPSA id Q0b788v46Aj5WQZ
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Mon, 6 May 2019 12:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1557139504; x=1557744304;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=xQVDcqrEfSSCG6QKXMXuLgPIA2RqY/rnvNqc6JqTBGc=; b=Y
	h4F4NWS2HGrK8aMEglsz16CGeqk/uramDS/C2GrXq3WV2GE6OmlGhVaTZMAnAi/h
	HNNmmun2+WYg6sba3+8HKjeFeGnszey2oz6KzKd/7eCBXjlJtU4XIiTrJSr26Jyt
	/kqHiBb3MNhJnijtasuR/ec2b877Wv8MV6iXoSq8F4=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v18.5.3) with ESMTPSA id
	md50000163762.msg; Mon, 06 May 2019 12:45:03 +0200
X-MDRemoteIP: 178.27.67.144
X-MDHelo: jholzmayr.localdomain
X-MDArrival-Date: Mon, 06 May 2019 12:45:03 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=1029a96a03=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
X-CAV-Result: skipped - holzmayr@rsi-elektrotechnik.de is in exclusion list
Date: Mon, 6 May 2019 12:45:02 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Behan Webster <behanw@converseincode.com>
Message-ID: <20190506104502.e4tvj5w4i4og4ski@jholzmayr.localdomain>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
	<96fa4aec-9557-9d7f-bff3-82f8db56e9cd@mvista.com>
	<A084970538D2234B96D99D06FA9D974FC378C879@ALA-MBD.corp.ad.wrs.com>
	<0980DABF-86C8-4A9D-8687-B9C27EE2FF61@converseincode.com>
	<A084970538D2234B96D99D06FA9D974FC378DD57@ALA-MBD.corp.ad.wrs.com>
	<2D39B7E1-DC52-42A6-8332-50ED49F77722@converseincode.com>
MIME-Version: 1.0
In-Reply-To: <2D39B7E1-DC52-42A6-8332-50ED49F77722@converseincode.com>
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
X-List-Received-Date: Mon, 06 May 2019 10:48:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

I'd actually word it a little bit differently:

If there is only *ONE* attendee who did not properly do the homework, it
will have a massive impact an the rest of the group. And that somebody
will show up unpreparedly is absolutely certain in my opinion.

As someone who actually got started through the YPDD beginner track (and
also often recommends it to new beginners), my opinion is clearly that
we either should have it, be it only for a handful of attendees, or
offer a *real* replacement, with face to face training. My experience is
that this personal thing in the very beginning is an absolutely
essential part of many YP/OE careers.

Greetz

On Sun, May 05, 2019 at 04:46:12PM -0700, Behan Webster wrote:
> Just for the record, speaking as a professional trainer, and someone who makes material available before classes in the hopes that people will do “pre-class homework”, almost nobody even glances through any material sent before class. And many people claim to have never received it (for various reasons, but often because it ends up ignored or in spam).
> 
> Essentially I wouldn’t count on anyone actually looking at anything before arriving, because statistically nobody does.
> 
> Behan
> 
> Sent from my Mobile Computer which is also a phone
> 
> > On May 5, 2019, at 2:45 PM, Volosincu, Andreea S <andreea.volosincu@windriver.com> wrote:
> > 
> > That’s correct. We’ll provide previous beginner material as pre-class homework.
> >  
> > Andreea
> >  
> > From: Behan Webster [mailto:behanw@converseincode.com] 
> > Sent: Saturday, May 4, 2019 4:30 AM
> > To: Volosincu, Andreea S <andreea.volosincu@windriver.com>
> > Cc: akuster <akuster@mvista.com>; yocto-advocacy@yoctoproject.org; Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [Yocto-Advocacy] Yocto Project Upcoming Conferences and Developer Days
> >  
> > So does this mean there won’t be a beginner class at all?
> >  
> > Behan
> > 
> > Sent from my Mobile Computer which is also a phone
> > 
> > On May 3, 2019, at 6:01 PM, Volosincu, Andreea S <andreea.volosincu@windriver.com> wrote:
> > 
> > Hi Armin,
> >  
> > Thanks for letting us know. The security summit overlaps with a lot of things, including the first ELC day.
> >  
> > Hopefully we can make it work by fine-tuning the agenda in such a way that you attend just the portion of the day that is interesting to you, or you are presenting.
> >  
> > Let’s talk more during the advocacy call.
> >  
> > Thanks!
> > Andreea
> >  
> > From: akuster [mailto:akuster@mvista.com] 
> > Sent: Friday, May 3, 2019 11:07 AM
> > To: Volosincu, Andreea S <andreea.volosincu@windriver.com>; yocto-advocacy@yoctoproject.org; Yocto list discussion <yocto@yoctoproject.org>
> > Subject: Re: [Yocto-Advocacy] Yocto Project Upcoming Conferences and Developer Days
> >  
> >  
> > 
> > On 5/3/19 11:01 AM, Volosincu, Andreea S wrote:
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
> > So beer is a prerequisite for Intermediate level?
> > 
> > This is a conflict with Linux Security summit unless someone can convince me to be part of the training?
> > 
> > - armin
> > 
> > 
> > 
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
> > 
> > 
> > 
> >  
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


