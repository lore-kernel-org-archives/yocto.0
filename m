Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 150B6E013DD
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2011 15:06:55 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBFN6nhW010700;
	Thu, 15 Dec 2011 23:06:49 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 09879-10; Thu, 15 Dec 2011 23:06:44 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pBFN6gZv010694
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 15 Dec 2011 23:06:43 GMT
Message-ID: <1323990402.4568.83.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Chris Larson <clarson@kergoth.com>
Date: Thu, 15 Dec 2011 23:06:42 +0000
In-Reply-To: <CABcZANncCiBp+V4-W-0NrvwMWc0W1Gk+cAe4GP5xhRKcN8k++A@mail.gmail.com>
References: <4EE7B44D.7000301@linux.intel.com> <1323812170.25491.23.camel@ted>
	<CABcZAN=3b5jgrdydYDrKCjm52PD53EFarNFMfFqQR5mwUMee5g@mail.gmail.com>
	<641FF858-DBD2-479A-BC4A-C2F90C1A8D72@beagleboard.org>
	<CABcZAN=khZc0qsd2BgMBSNop68uMJjhn8Mzi_yPagJnyFKeZ5Q@mail.gmail.com>
	<1323983925.4568.69.camel@ted>
	<CABcZANncCiBp+V4-W-0NrvwMWc0W1Gk+cAe4GP5xhRKcN8k++A@mail.gmail.com>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, Koen Kooi <koen@beagleboard.org>
Subject: Re: The role of "distro" and "image"
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
X-List-Received-Date: Thu, 15 Dec 2011 23:07:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-12-15 at 15:56 -0700, Chris Larson wrote:
> On Thu, Dec 15, 2011 at 2:18 PM, Richard Purdie
> <richard.purdie@linuxfoundation.org> wrote:
> > On Thu, 2011-12-15 at 10:54 -0700, Chris Larson wrote:
> >> On Thu, Dec 15, 2011 at 10:29 AM, Koen Kooi <koen@beagleboard.org> wrote:
> >> > Op 13 dec. 2011, om 22:45 heeft Chris Larson het volgende geschreven:
> >> >
> >> >> On Tue, Dec 13, 2011 at 2:36 PM, Richard Purdie
> >> >> <richard.purdie@linuxfoundation.org> wrote:
> >> >>> Not all images can be built with a given distro, our base config is
> >> >>> rather ride ranging though for obvious reasons. You could "enforce" this
> >> >>> by adding some anonymous python to the distro which does something like:
> >> >>>
> >> >>> if inherits("image") and PN != core-image-minimal:
> >> >>>    raise SkipPackage("Image PN not compatible with DISTRO=XXX")
> >> >>
> >> >> This is a case where one is best 'controlling' this via policy, not
> >> >> mechanism, in my opinion. This sort of arbitrary technical limitation
> >> >> tends to be foolish and often bites someone somewhere down the line.
> >> >> I'm sure you just wanted to note how it could be done, not recommend
> >> >> that it should be done, but I thought it should be made clear. I
> >> >> wouldn't recommend that anyone do this unless there is an extremely
> >> >> good reason for it.
> >> >
> >> > We had a similar problem at work, people were sprinkling
> >> COMPATIBLE_MACHINE left and right just to mark "I tested recipe X on
> >> machine Y". You can guess what happened when new machines needed to
> >> get added.
> >>
> >> Haha, ouch. It's also worth taking a moment to emphasize that the way
> >> distro/machine/image is structured is by design, not accidental.
> >> Having these pieces be orthogonal buys us a great deal of flexibility
> >> and capability, which is why we did it this way. Now, whether a given
> >> distro/machine/image combination is *useful* is a different question,
> >> and one I think is best addressed via policy / documentation.
> >
> > I understand the flexibility but I also think we need to consider
> > usability a little. We have people using the system to whom it might not
> > be immediately obvious why building a sato image with the tiny distro is
> > a bad idea.
> >
> > If you know enough to be able to make that work, the warning is easily
> > bypassed and isn't going to bother you.
> >
> > So I think there is a case for warning the user if the combination
> > they're selecting is not one that is likely to work and we can easily
> > predict it. There are many combinations we can't predict which is fine.
> 
> 
> There's a rather large difference between *warning* the user and
> raising SkipPackage, making it not possible to build without modifying
> the recipe.

What's needed is something which results in a "stop the build and force
the user to change something to continue" so I'm not sure I see the
problem with that.

I know exactly how much attention people pay to the WARNING messages :(
(those are getting cleaned up so hopefully those WARNINGS that are still
present become more meaningful/serious)

Cheers,

Richard



