Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1E47E00307
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 15:39:48 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAGNdmbI022416
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 16 Nov 2011 15:39:48 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 16 Nov 2011 15:39:47 -0800
Message-ID: <4EC449C2.1000706@windriver.com>
Date: Wed, 16 Nov 2011 17:39:46 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:8.0) Gecko/20111105 Thunderbird/8.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
In-Reply-To: <CA+YB3ray8bX94Y1subz+7CQYUzRJWjHS2CQX_W2boA2BV7A5ZA@mail.gmail.com>
Subject: Re: Yocto usability questions
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
X-List-Received-Date: Wed, 16 Nov 2011 23:39:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/16/11 4:07 PM, Jeff Osier-Mixon wrote:
> Mark Hatle said:
>
>     Yocto is a cross-compiled build environment. This is a departure to a lot of
>     the Moblin/MeeGo work that has occurred in the past. The advantages are you
>     can use any commodity PC to target any (supported) architecture.
>     Disadvantages are that when you introduce new code, you need to ensure that
>     it has a recipe (build instructions for bitbake) and can cross compile. If
>     everyone has to do the same work over and over, this can be time consuming
>     and counter productive. If people work together, the time and support burden
>     are dramatically reduced. This can help negate issues people have had in the
>     past with cross compiling. Note: Yocto -does- have a self hosted compile
>     environment if it is needed, this is usually when cross compiling isn't easy
>     to do for some reason.
>
>
> Mark & everyone else listening:
>
> Would you say that (1) the need for a recipe and (2) the requirement to
> cross-compile are two of the most major usability or learning-curve
> disadvantages of working with the Yocto Project (and oe-core)? What would be a
> third disadvantage from a usability standpoint?

1) Recipe isn't needed, unless you want automatically reproduced builds and to 
share the instructions with others... which is one our our goals.

I don't see the recipe as anything different then an SRPM, Debian src.tgz, etc. 
  The only obstacle is that it's "different" that what desktop distributions do.

2) I think cross compilation is by far the largest obstacle.  People not 
familiar with the GNU auto tools, cross compiling in general, or simply 
inexperienced developers seem to have a lot of problems with this.  I think 
OE/Yocto does a good job at providing GNU auto tools and make helpers, but it's 
far from perfect.  As far as how to improve it...  we need to keep incrementally 
improving our support, documentations and examples.  We also need to foster a 
community where people share the work they've already done... thus eliminating 
this issue.  (The meta-oe layer is a good place for this already.)

I'm sure there are other usability issues, but I've been doing cross compilation 
for so long that I'm a bit blind to some of the issues.

To me the biggest thing we need to do is make sure someone who is familiar with 
desktop Linux can step in and apply what they know to building a recipe and 
fixing cross compilation problems.  If we can do that -- it will go a long way 
toward helping resolve the issues that cause people to do self-hosted 
compilation on slow target systems.  (Note there are some things that are simply 
complicated and difficult to do like Firefox.. for those the only answer is to 
have "experts" do the work and make it available to the novices so they can see 
and understand how to work around various issues.)

> Another way to put it: if you could change three things about the Yocto Project
> to make it more approachable for someone who has never used it before, what
> would they be?

To re-iterate:

*) We need a resource for contributed packages (meta-oe?) that will eliminate 
most of the problem.

*) We need good examples of problems and solutions to cross compilation difficulties

*) We need to continue to identify "common" issues and work to resolve them in 
the tooling we already support

--Mark

> --
> Jeff Osier-Mixon http://jefro.net/blog
> Yocto Project Community Manager @Intel http://yoctoproject.org
> <http://yoctoproject.org/>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


