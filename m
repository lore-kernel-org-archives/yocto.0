Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0820DE0049A
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 11:32:58 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:45998 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T0GUZ-0006pg-AO; Sat, 11 Aug 2012 14:32:55 -0400
Date: Sat, 11 Aug 2012 14:32:50 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1208111422560.12092@oneiric>
References: <alpine.DEB.2.02.1208111301170.5438@oneiric>
	<CABcZANmw1WJKkAUeZL3L=+NqJxTm1eTHMrQsJ44dBK_fwDen0Q@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: under what circumstances is BBCLASSEXTEND = "native" required in a recipe?
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
X-List-Received-Date: Sat, 11 Aug 2012 18:32:58 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 11 Aug 2012, Chris Larson wrote:

> On Sat, Aug 11, 2012 at 10:03 AM, Robert P. J. Day
> <rpjday@crashcourse.ca> wrote:
> >   however, the "chrpath" command is not listed in bitbake as part of
> > ASSUME_PROVIDED, and its recipe includes the line
> >
> >   BBCLASSEXTEND = "native"
> >
> > that's what's confusing -- if the QS guide demands that the user
> > install "chrpath" manually, what is the subsequent value of its recipe
> > dictating that it be natively buildable?
>
> At a guess, it's possible that not all recipes that needed
> chrpath-native had an explicit dependency on it, or similar. Your
> question is specific to chrpath, not at all general to
> BBCLASSEXTEND. Adding native to bbclassextend means that a -native
> version of the recipe can be built. The question of why certain
> things are expected on the host vs built from that recipe is an
> entirely different one.

  i believe i see your logic.  just to clarify, it seems somewhat
redundant to a) *require* the developer to manually install certain
commands on the yocto dev host, and b) simultaneously have a recipe
for that command that allows it to be built natively, in case yocto
needs it.

  does that make sense?  i'm assuming the sole reason to support a
-native build in a recipe is for yocto use on the dev host, right?

rday

p.s.  as a more obvious example, consider "git".  it's now
"ASSUME_PROVIDED", and listed in the quick start guide as required on
the dev host, but it also still supports a native build.  i'm just
trying to clarify that, in cases like that, supporting the -native
build is no longer necessary.  or am i missing something?

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

