Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53D41E00507; Tue, 24 Jun 2014 04:07:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4356AE003D2
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 04:07:39 -0700 (PDT)
Received: from [99.240.204.5] (port=54238 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1WzOZd-000260-2c; Tue, 24 Jun 2014 07:07:37 -0400
Date: Tue, 24 Jun 2014 07:03:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Christopher Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkjcW8-3fG9VpzEzGTnz401uXAuXumTCdU0QO9s5MemFQ@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1406240700160.19698@localhost>
References: <alpine.LFD.2.11.1406220901500.2299@localhost>
	<CABcZANkjcW8-3fG9VpzEzGTnz401uXAuXumTCdU0QO9s5MemFQ@mail.gmail.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: Re: the apparent need for docbook <replaceable> tag in manual examples
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
X-List-Received-Date: Tue, 24 Jun 2014 11:07:41 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-982506837-1403607826=:19698"

--8323328-982506837-1403607826=:19698
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 23 Jun 2014, Christopher Larson wrote:

>
> On Sun, Jun 22, 2014 at 6:20 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>         as i said, it took me a few minutes to figure out what the
>       conditional metadata example above was trying to demonstrate, but as
>       soon as i saw a real example in the codebase, it was perfectly clear.
>       to this end, i'm creating wiki pages that show stuff like that
>       exactly, like this one for conditional overrides:
>
>
> It's not directly related, but here's some background if it helps
> anyone at all.
>
> Conceptually, when we designed overrides, it was created to let us
> implement layering of metadata (note: not layers as in yocto layers,
> but conceptual layers), to let us always let more specific
> information be used in preference to less specific information.
> Machine information will be used in preference to Architecture which
> is used in preference to the default. This lets us ensure that we're
> always using the most accurate information available about the
> configuration in question.
>
> I've always thought that thinking of it this way helps one see the
> purpose behind the mechanism (and you can see that the order of the
> includes/requires in bitbake.conf essentially implements the same
> ordering where possible, to provide the same capability based on
> load order of the config files). I'm not sure if any of our docs
> talk about it this way, and I'm not sure if it helps anyone else
> wrap their heads around it, but I'm throwing it out there since I've
> found that some folks seem to find it a useful way of looking at it.

  sure, all this makes sense. my main point (at least, i hope my main
point) was that the way OVERRIDES was explained was overly vague and
it took a few minutes of re-reading, then jumping into the codebase
for examples to suddenly twig on what it was doing, which is why i now
like to pull examples out of the codebase for all my explanations.

  i also think it would be a good idea to avoid examples in the
manuals that use generic terms like "foo" and "bar" rather than actual
code snippets that are more obvious, but that's just me.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-982506837-1403607826=:19698--
