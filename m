Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4278EE0044A
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 11:56:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3IIuavx005253;
	Wed, 18 Apr 2012 19:56:36 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04516-04; Wed, 18 Apr 2012 19:56:32 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q3IIuSGG005245
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 18 Apr 2012 19:56:29 +0100
Message-ID: <1334775390.24091.173.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Date: Wed, 18 Apr 2012 19:56:30 +0100
In-Reply-To: <CABcZANmrzmSPJNZH2VqtO0o=L_Wk0-VK_PEP4m0+TRWQ8cYMjg@mail.gmail.com>
References: <1334760467.24091.100.camel@ted>
	<20120418145330.GM3635@jama.jama.net> <1334762445.24091.110.camel@ted>
	<CABcZANkaABCKZ+WmhhGTZEvFnHYwrP7uNSSvNTxxKxfun4JaPA@mail.gmail.com>
	<1334768537.24091.156.camel@ted>
	<CABcZANk+nFT1F7=WBNdE_z3pj=zAzrSQBuD6-DcKT8+OCLKr9g@mail.gmail.com>
	<CABcZANmrzmSPJNZH2VqtO0o=L_Wk0-VK_PEP4m0+TRWQ8cYMjg@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [OE-core] Yocto Project 1.2 Release Status
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
X-List-Received-Date: Wed, 18 Apr 2012 18:56:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-04-18 at 10:11 -0700, Chris Larson wrote:
> On Wed, Apr 18, 2012 at 10:06 AM, Chris Larson <clarson@kergoth.com> wrote:
> > On Wed, Apr 18, 2012 at 10:02 AM, Richard Purdie
> > <richard.purdie@linuxfoundation.org> wrote:
> >> On Wed, 2012-04-18 at 09:22 -0700, Chris Larson wrote:
> >>> On Wed, Apr 18, 2012 at 8:20 AM, Richard Purdie
> >>> <richard.purdie@linuxfoundation.org> wrote:
> >>> > On Wed, 2012-04-18 at 16:53 +0200, Martin Jansa wrote:
> >>> Just because people have things to push or are pushing things which
> >>> aren't bugfixes doesn't mean their time is being taken up by anything
> >>> but stabilization right now. Your statement implies that everything
> >>> being pushed is being currently worked on, which is incorrect. I'm
> >>> sure Mentor isn't the only company with a backlog of already complete
> >>> local changes to get upstream..
> >>
> >> So you're saying Mentor has been working on stabilization and has a
> >> queue of bugfixes which they've not shared?
> >
> > No, I never said they were just bugfixes. If they were low impact
> > bugfixes, they'd have a shot at making it into the release, especially
> > if they're critical, no?

They would have had a shot until very recently, yes. I'm hoping we're
about done with the release at this point as a line has to be drawn
somewhere and I think now is it.

> Further, again you're ignoring previous work. Whether we've been
> working on stabilization right now is irrelevent given we have
> previous work to push. Mentor has been using OE for its products for
> years, to expect that a very small team which has to focus on customer
> issues is going to catch up on all of that effort in a short period of
> time is unreasonable. We've been working against our backlog for
> months, and will continue to do so until we're caught up. The frozen
> tree just slows that down even more.
>
> If you want folks like us working more closely with upstream, then you
> have to realize that folks are going to have changes to push which
> aren't bugfixes (or aren't critical), and contrary to your
> implication, does not imply that folks are ignoring the stabilization
> efffort. Previous work needs to go up, and isn't occupying current
> development effort.

Let me be clear, nothing I said is meant as a criticism as we all have
constraints to work within, me included and I'm familiar with the
problem. 

In the Mentor case I can feel some sympathy as I remember ELC-E 2007
where Embedded Alley presented about OE. I was sitting next to Holger in
the audience and they announced major improvements to BitBake. This was
somewhat of a surprise to the BitBake developers sitting there and I
went and asked where the patches were. I'm not sure we ever did get
them. I can therefore imagine some of the backlog you speak of. I know
this is going to change and get better in future, we need to work
through the backlog and that will take time on all sides. Every partner
in the project has some issues they are working through in one form or
another  be it backlog, transition or otherwise.

Posting non-bugfixes is fine at the moment as long as people have a
reasonable expectation about the fact they won't merge immediately. I
appreciate you understand that, equally there are others on this mailing
list who don't and I do have to keep mentioning it for that reason :(.

Cheers,

Richard



