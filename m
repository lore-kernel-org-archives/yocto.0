Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0DF8E00BEA; Fri, 13 Jun 2014 07:13:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=none autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EE89E00AFD
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 07:13:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1D8E5F811EE; Fri, 13 Jun 2014 08:13:46 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 18AB9F811ED;
	Fri, 13 Jun 2014 08:13:41 -0600 (MDT)
Message-ID: <539B071F.9020908@mlbassoc.com>
Date: Fri, 13 Jun 2014 08:13:51 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Patrick Doyle <wpdster@gmail.com>
References: <CAF_dkJB9T4VWSOma0sTeaec8js4-Bp58=s4AKRxT0JryCHp8NA@mail.gmail.com>
	<539B0100.5090603@mlbassoc.com>
	<CAF_dkJDSGM_CF34KF-+McY7S=ZvM+htzD1k0HMUDhRZHsdaOvQ@mail.gmail.com>
In-Reply-To: <CAF_dkJDSGM_CF34KF-+McY7S=ZvM+htzD1k0HMUDhRZHsdaOvQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to specify a default value for a variable in a recipe
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
X-List-Received-Date: Fri, 13 Jun 2014 14:13:53 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-06-13 08:07, Patrick Doyle wrote:
> On Fri, Jun 13, 2014 at 9:47 AM, Gary Thomas <gary@mlbassoc.com> wrote:
>> If this is in the gstxbac recipe itself, use the much simpler
>>    SRCREV ?= "${AUTOREV}"
>
> Even better!  While I like that solution best of all, that opens up a
> whole new world of hurt for me.
>
> How does
>
> SRCREV_default_pn-gstxbac = "${AUTOREV}"
>
> work?  When would I use that over the much simpler solution you proposed?
>
> I am thinking that if I used your solution, I might place
>
> SRCREV_pn-gstxbac = "123" (or a git hash, or whatever)
>
> in my local.conf?  in my BSP layer.conf?
>
> I guess I could put
>
> SRCREV_default_pn-gstxbac = "123" in my BSP layer.conf, and then,
> later on, on some other project that used the same board, I might put
>
> SRCREV_pn-gstxbac = "${AUTOREV}" in my local.conf, or maybe in a
> .bbappend file for my BSP?
>
> How/where does the _pn suffix (middlex?) come into play?

Any time you need to set the variable outside of the recipe itself (.bb* or .inc),
then you need the _pn-${recipe} syntax.

>
> At this point, I like your solution tremendously, as it makes sense to
> me.  But I sure would like to understand more about all the myriad
> capabilities offered by bitbake.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

