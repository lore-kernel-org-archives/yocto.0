Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14036E011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 14:45:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2QLjN29001219;
	Mon, 26 Mar 2012 22:45:23 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32762-07; Mon, 26 Mar 2012 22:45:19 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2QLjGCs001212
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 26 Mar 2012 22:45:17 +0100
Message-ID: <1332798316.28414.138.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Seebach <peter.seebach@windriver.com>
Date: Mon, 26 Mar 2012 22:45:16 +0100
In-Reply-To: <20120326121816.343a5f01@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop>
	<1537192.Q99X1xdoal@helios> <20120323174506.5634af61@wrlaptop>
	<1332609315.28414.19.camel@ted> <1332610903.28414.24.camel@ted>
	<20120326114405.59b3eacc@wrlaptop> <1332780449.28414.122.camel@ted>
	<20120326121816.343a5f01@wrlaptop>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Mon, 26 Mar 2012 21:45:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-26 at 12:18 -0500, Peter Seebach wrote:
> On Mon, 26 Mar 2012 17:47:29 +0100
> Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> 
> > This is pretty much what we do at the moment, it gets unset after we
> > load. Pseudo is of course disabled at this point.
> > 
> > I guess we just got lucky to this point and avoided "Bad Things"?
> 
> I suspect so.  What's weird to me is that PSEUDO_PREFIX wasn't in the
> environment before, either.  So I still don't quite get this.  I am
> still missing something which will make this all make sense.
> 
> ... at this point, I am leaning towards viewing this as a bug where it
> is not enough to simply correct the behavior, I will not feel confident
> in it until I have understood how it could have happened, but worked in
> many other cases.

This is why I'm not saying lets just set PSEUDO_PREFIX. Its bothering me
too.

> > What puzzles me is we get this value from  envbackup[key] =
> > os.environ.get("PSEUDO_PREFIX") so its already not in the 
> > environment.
> > 
> > So basically if we read "PSEUDO_PREFIX" from the environment we get
> > nothing. If we unset the value back to being "nothing", things 
> > break.
>
> Yes.  This is, of course, obviously impossible.
> 
Obviously :). Except the code does this and I've watched it happen. I'm
not claiming to understand it...

> Hmm.  Well, hmm.  When we start up, we should pick up PSEUDO_PREFIX
> from our environment, and during some of the initial client setup, we
> should be stashing that value in our stashed values table.  At this
> point, so far as I can tell, nothing should ever unset that stashed
> value.
>
> On fork(), we don't change anything until we're in the client side of
> the fork, but that setup should happen in the same address space, with
> the values still stashed.

When we poke new values into the environment, will it corrupt the
internal stash?
> 
> Oh, nevermind, I just realized:  We use antimagic as the
> implementation
> goo for PSEUDO_DISABLED.
>
> So a call to os.popen() from a program which has PSEUDO_DISABLED set
> is going to think it's in antimagic mode.
>
> And suddenly, the trick is revealed:
>
> os.popen() is bypassing all the runqueue stuff which is trying to
> ensure that the environment is in a valid state.  So if bitbake code
> calls os.popen(), it may behave weirdly, for the same reason that any
> other direct invocation of fork() or system() or whatnot would behave
> weirdly -- because bitbake is running with pseudo in a strange state.

I'd be very surprised if we don't make some other system() call
somewhere in bitbake's parent context.

If this were a trigger, it could go a long way to explaining some errors
people have reported though.
> 
> So I think the thing is:
>
> Because bitbake is running with PSEUDO_DISABLED, any child process
> that
> is not explicitly set to either enable or unload pseudo is going to be
> running under pseudo, with PSEUDO_DISABLED.  And that means we need to
> ensure that PSEUDO_PREFIX stays set, because we need that even when
> pseudo is disabled.  (It's used during some of the initial setup
> sanity checks.)

This is the answer I was expecting we'd come to. 

I'm still a little surprised we don't make any system() calls though. I
just tried putting a os.system("true") call into the "breakit" class and
it doesn't trigger the warnings. Could that be down to the lack of a
popen wrapper?

Cheers,

Richard


