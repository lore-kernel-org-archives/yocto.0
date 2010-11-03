Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 385064C80B70
	for <yocto@yoctoproject.org>; Wed,  3 Nov 2010 05:55:41 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA3AtdSN019180;
	Wed, 3 Nov 2010 10:55:39 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 18657-08; Wed,  3 Nov 2010 10:55:35 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oA3AtWF6019174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 3 Nov 2010 10:55:32 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTi=VA_3KRUsFkRTirpOTuMXLu3uLYwC6fFt4om8a@mail.gmail.com>
References: <AANLkTi=p0jSowGAVwNrixt67hDR105fgkmJyRE-Eq0yd@mail.gmail.com>
	<AANLkTi=VA_3KRUsFkRTirpOTuMXLu3uLYwC6fFt4om8a@mail.gmail.com>
Date: Wed, 03 Nov 2010 10:55:21 +0000
Message-ID: <1288781721.28481.4906.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: some yocto/poky issues and errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 03 Nov 2010 10:55:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-03 at 09:27 +0100, Frans Meulenbroeks wrote:
> 2010/11/3 Frans Meulenbroeks <fransmeulenbroeks@gmail.com>:
> > Dear all,
> >
> > Not sure whether I should sent this here or to the poky ML. Trying
> > here first, fee free to forward/redirect.
> >
> > After my initial success of building poky 4.0 with the delivered
> > config, I decided to try to add my own layer (with some private
> > recipes), meanwhile also switching to MACHINE = "beagleboard". These
> > recipes build under OE.
> > In order to get things parsing I had to rework a few legacy staging
> > things (no big deal).
> >
> > Also I got an error:
> > NOTE: Handling BitBake files: - (0053/0886) [ 5 %]NOTE: Error
> > expanding variable do_package
> > ERROR: string index out of range while parsing
> > /home/frans/yocto/poky-laverne-4.0/tv.axon.openembedded.2010/recipes/linux/linux-factory-sygtd1_2.6.34.bb
> >
> > For now I removed the do_package function. No idea if that is sound.
> >
> > After doing so the parsing goes well but I get an interesting
> > traceback, even if no recipe is given. See the log below.
> > I suspect this is because a var is referenced somewhere but the var is
> > not initialised. Guess this should not happen.
> > Then again my pythonese is not good enough to diagnose this.
> > Any suggestion is appreciated (meanwhile I'll try to use bisecting to
> > find the cause).
> >
> > Best regards, Frans
> 
> Nevermind, already found the cause of the traceback. I accidently ran
> bitbake in the wrong dir.
> My default setup is such that BBPATH etc is set in such a way that I
> can effectively run bitbake from any dir once the env is set.
> Guess it would be nice if bitbake would have given a decent error msg though.
> 
> Frans (btw: still confused on the do_package thing)

Can you point at a copy of this recipe or the do_package function? At
this point its hard to guess what the problem might be. I suspect you
might be right about there being a reference to but not a definition of
a variable.

Cheers,

Richard


