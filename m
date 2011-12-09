Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BEE2E0054C
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 08:20:38 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pB9GKWUs002172;
	Fri, 9 Dec 2011 16:20:32 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 01776-03; Fri,  9 Dec 2011 16:20:28 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pB9GKQh1002166
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 9 Dec 2011 16:20:27 GMT
Message-ID: <1323447637.5309.180.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Fri, 09 Dec 2011 16:20:37 +0000
In-Reply-To: <CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
References: <CAEsOVNeYZ4hwvV8dXMadkzchyA_nRHeZ63_s-XgJBzaEymUKdg@mail.gmail.com>
	<1323431474.5309.128.camel@ted>
	<CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-oe branch for edison?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Dec 2011 16:20:43 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-12-09 at 15:46 +0000, McClintock Matthew-B29882 wrote:
> On Fri, Dec 9, 2011 at 5:51 AM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > On Thu, 2011-12-08 at 20:01 +0000, McClintock Matthew-B29882 wrote:
> >> Hi all,
> >>
> >> Can we create a meta-oe repo in git.yoctoproject.org?
> >
> > This might create a little friction with the OE community. What would be
> > the reason for the repository?
> >
> >>  I'd like to also
> >> create a branh within the repo that tracks a valid version of the repo
> >> for specific Yocto releases.
> >>
> >> (I can add that in my investigation so far -
> >> f78f3f31c06c669006fcb567c8f503d4dbec68da looks like a good starting
> >> commit for edison)
> >
> > I'd certainly be happy to see such a branch. It might be more
> > appropriate to call it 2011-1 which corresponds to the OE-Core branch
> > name that is edison in the poky repo.
> 
> Well I don't particularly care if we create a repo or not. I just want
> a place to go for a working meta-oe for all future releases of Yocto.
> I had to figure this out on my own, but I'm can imagine others will
> attempt similar things.

I think it should be fine to add an appropriate branch to the meta-oe
repository itself.

Cheers,

Richard


