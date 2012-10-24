Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B715E0127A
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 09:38:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q9OGccll022677
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 24 Oct 2012 09:38:38 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (128.224.60.150) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Wed, 24 Oct 2012 09:38:36 -0700
Message-ID: <50881991.7050705@windriver.com>
Date: Wed, 24 Oct 2012 11:38:41 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:16.0) Gecko/20121010 Thunderbird/16.0.1
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAMAb8ZN0EA=Pw9ehVF3W0=vdnBHc2Ek_imAk84Z6V-2NqBd4iQ@mail.gmail.com>
In-Reply-To: <CAMAb8ZN0EA=Pw9ehVF3W0=vdnBHc2Ek_imAk84Z6V-2NqBd4iQ@mail.gmail.com>
Subject: Re: Yocto vs LDAT
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
X-List-Received-Date: Wed, 24 Oct 2012 16:38:37 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/24/12 10:52 AM, Evade Flow wrote:
> I've been quietly experimenting with Yocto at work for several weeks
> now, flying under everybody's radar; but my bosses have discovered what
> I've been doing and I now need to defend my position--not just from the
> perspective of my little team, but for the whole company(!)

Welcome.  ;)

> I work for an automotive supplier whose current big project uses LDAT.
> We also have a two-year-old 'proof-of-concept' demo system that was
> assembled using LDAT. The guys that sign my checks want to know: why
> should they not remain with LDAT for future projects? I've been asked to
> put together some kind of cost/benefit analysis to justify switching to
> Yocto.

(I am a Wind River employee, but I'm not in sales -- so keep that in mind as I 
answer this.)

LDAT is our old build environment.  It was our first attempt at an open build 
system, that never really took off..  The Yocto Project succeeded in the vision 
that we have, and our recent 5.0 product is now Yocto Project (1.2 - Denzil) based.

If you are coming from an LDAT experience and moving to our Wind River Yocto 
Project based 5.0 product, many of the tools and processes you are already 
familiar with can continue to be used -- but of course there are differences.

In any case (commerical or not), you really do want to eventually move to the 
Yocto Project based system.  This will allow you to have a forward path to 
future revisions of products, support and infrastructure from 'Yocto Project 
Compatible' commercial providers.

When you create a layer, a kernel modification, new applications, etc -- by 
being compatible with the Yocto Project, your customers (who I am assuming use 
your software to build the final product) will be able to use Yocto Project, 
GENIVI (IVI) and compatible software to more easily construct their products. 
There is a clear integration and compatibility path moving forward.  (Note, our 
WR IVI group has Yocto Project compatible software available for customers as well.)

> Unfortunately, I'm ill-equipped to do any such thing, as I don't have
> much experience with LDAT. My understanding is that the newest version
> of Wind River Linux uses Yocto rather than LDAT. And since Intel
> (Yocto's primary corporate sponsor) purchased Wind River in 2009, it
> doesn't appear that LDAT has a future.  Is using LDAT for new projects
> even a viable option?  How difficult is it to 'port' LDAT layers to
> Yocto?

What I generally tell customers.  If you need an existing stable platform for 
product development (short-term, 6-9 month release cycle) that our LDAT platform 
is what you want -today-.  It's stable well supported, etc.  However, if you are 
working for a product in the 9-16 month range, or working on long-term 
development -- the Yocto Project is what you want to start with.  Either the 
Open Source or one of the compatible commercial variants.  This is what is going 
to allow you to do your work today, and make it reusable in future products.

There are a -lot- of products being built on LDAT today, and I would not 
advocate changing course for something that is coming to market soon.

> Basically, I'm being asked: "Why should we do this, and what will it
> cost?" Any suggestions for how to answer these questions?

 From a cost perspective, lets assume you will be using our commercial versions. 
  (Again, I'm not in sales... so I can't directly comment on all of the costs, 
so much of this is my assumptions.)

I would assume that the commercial support/maintenance agreements would be 
roughly the same or perhaps even slightly cheaper.  In otherwords, this likely 
should not affect your decision.

However, the conversion of your software from the LDAT format to the Yocto 
Project recipe format will take time and effort.  This time and effort does have 
a cost associated with it -- but if this is a long term product for your 
company, at some point you will have to have this expense to continue moving 
forward with products you can sell to your customers.  What you need to 
determine is simply when do you need to make this change, and when to absorb 
these costs.

Long term though, the stability of the Yocto Project components, recipes in 
layers and configuration, you should be able to more easily manage change and costs.

I hope this helps -- and I do intend the above to be generic for anyone coming 
from a non-Yocto Project compliant commercial or Roll-Your-Own distribution to 
the Yocto Project.

If you need additional information on any Wind River specific products, let me 
know (private email) and I'll get you in contact with the right folks.

--Mark

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


