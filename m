Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1426.1582664017960531302
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Feb 2020 12:53:38 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 140.211.169.56, mailfrom: denis@denix.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60A50E0175E; Tue, 25 Feb 2020 12:53:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [64.68.198.64 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAD2AE003DB
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2020 12:53:34 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 1B54440B37;
	Tue, 25 Feb 2020 20:53:34 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id r7IqGap0jt8s; Tue, 25 Feb 2020 20:53:34 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id C8F3B40A46;
	Tue, 25 Feb 2020 20:53:30 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 25718174081; Tue, 25 Feb 2020 15:53:30 -0500 (EST)
Date: Tue, 25 Feb 2020 15:53:30 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Joel A Cohen <aaron@assonance.org>,
	Martin Jansa <martin.jansa@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] Using "latest git" versions of recipes
Message-ID: <20200225205330.GC1578@denix.org>
References: <CAFSZm+g8iFD3XgDK9XbcQmzDJdH70=URXXqZdMPcEjT2wU286Q@mail.gmail.com>
 <20200225183024.GA1578@denix.org>
 <CAFSZm+jMJYU3JNCSQLNQwXs0chBh-yoYx2vE2v+Eti=xTDZYsg@mail.gmail.com>
 <20200225192818.bbv3zouozqbxvta4@jama>
 <CAFSZm+ibicFeUd_X9hM8TjHAeR15r3pj2xY09Lq3Vms5NobkyQ@mail.gmail.com>
 <CAJdd5Gaj6PKtAX=U-gQYppLUxKiZzzwZa5qPHEco15cxjYPnMQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJdd5Gaj6PKtAX=U-gQYppLUxKiZzzwZa5qPHEco15cxjYPnMQ@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 25, 2020 at 02:39:28PM -0600, Joshua Watt wrote:
> On Tue, Feb 25, 2020 at 1:32 PM Joel A Cohen <aaron@assonance.org> wrote:
> >
> >
> >
> > On Tue, Feb 25, 2020 at 2:28 PM Martin Jansa <martin.jansa@gmail.com> wrote:
> >>
> >> On Tue, Feb 25, 2020 at 02:10:15PM -0500, Joel A Cohen wrote:
> >>
> >>
> >> > PV_pn-recipe1 = "1.0.1+git${SRCPV}"  # I'm not sure if this would actually
> >> > work?
> >>
> >> Yes, this is how SRCPV is supposed to be used, but you can have this in
> >> the normal recipe without the override.
> >
> >
> > Everything else you said makes sense to me, but why would I want to append "+git${SRCPV}" to the actual recipe? Surely I only want to append the git suffix stuff if I'm using a "latest" version, and I want the PV to be set by the filename in the default case?
> 
> You should checkout devupstream.bbclass
> (https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#ref-classes-devupstream)
> which allows you to do this inside a single recipe (or bbappend and
> existing recipe). You can also combine this with ${AUTOREV} in a
> common include file. I recently fixed this exact same problem with
> this combination in meta-webkit; see
> https://github.com/Igalia/meta-webkit/pull/136

Ah, nice touch with devupstream class and I see bleeding.inc concept lives on! :)

-- 
Denys
