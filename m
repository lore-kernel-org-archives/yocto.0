Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 87CB84C804D4
	for <yocto@yoctoproject.org>; Thu, 28 Apr 2011 09:56:57 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p3SEurVA017957
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 28 Apr 2011 07:56:53 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 28 Apr 2011 07:56:53 -0700
Message-ID: <4DB98033.1010207@windriver.com>
Date: Thu, 28 Apr 2011 10:56:51 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.14) Gecko/20110208 Thunderbird/3.1.8 ThunderBrowse/3.3.5
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>
References: <4DB786E3.4080800@linux.intel.com>	
	<B23A229A-15A2-491F-BFE9-4C9BB5F681FB@dominion.thruhere.net>	
	<4DB82C1A.2030008@linux.intel.com>	<4DB8506B.9000709@intel.com>	
	<1303938199.21461.21.camel@rex> <4DB89D1E.3010307@intel.com>	
	<4DB8BBDF.6070503@windriver.com> <1303979316.21461.29.camel@rex>
In-Reply-To: <1303979316.21461.29.camel@rex>
Cc: Darren Hart <darren.hart@intel.com>, yocto@yoctoproject.org
Subject: Re: Personal git repositories
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
X-List-Received-Date: Thu, 28 Apr 2011 14:56:57 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-04-28 04:28 AM, Richard Purdie wrote:
> On Wed, 2011-04-27 at 20:59 -0400, Bruce Ashfield wrote:
>> On 11-04-27 6:47 PM, Darren Hart wrote:
>>> I don't understand wanting to keep multiple distinct source trees in a single
>>> git repositorie. If you have two different layers in there, each in its own
>>> branch, then you can only work with one of them at a time. The end-user then has
>>> to have multiple clones of the same repository in order to work with their two
>>> layers. And they will end up naming them something like:
>>>
>>> yocto-contrib-layer-1.git
>>> yocto-contrib-layer-2.git
>>
>> This is what I was wondering as well. I had my meta-kernel-dev as
>> a branch on poky-extras and ran into exactly this problem. Either
>> have two clones, or get it into master. Master was the choice, since
>> the other seemed clunky.
>>
>> Maybe I'm misunderstanding as well, but sparse fetch or not (and
>> yes I've done/used it), logically I like things that are distinct
>> source trees to be separate repos. Maybe it's a kernel-guy thing ? :)
>
> I think there are three elements to this:
>
> a) People do like the logical separation that a repo gives them and
>     find it easiest to think in those terms.
> b) Most people are used to single relatively monolithic repos such as
>     the kernel. People like myself who have used svn with multiple
>     projects contained within like matchbox or the OpenedHand "misc" svn
>     repo or the BSD projects approach to source control are probably in
>     the minority.
> c) The git tooling and all the examples out there are geared up to
>     single repos. git is very much a tool where you need to think as its
>     authors do.

Agreed with the points above. git really is just wrangling a bunch
of objects into commit chains and a branch points to a starting
point. So I completely agree that all chains don't have to lead to
the same origin, like you said, it is just how people tend to think.

>
> Some of this can be addressed with clear example documentation about how
> to use git in this way.
>
> Partly, these proposals are also working within the constraints of the
> git server solution we have too. Are we really in such a bad position
> that we need to change all the server setup over this or are there ways

I think we are likely ok, people have solutions that work, getting
the right contrib repos setup with appropriate permissions to setup
branches will go a long way.

As long as things stay responsive, I'd imagine that we'll find
that people will be happy with things as they are. At least we've
considered the options before it is critical.

Cheers,

Bruce

> we can work within the existing system (or even extend gitolite)?
>
> Cheers,
>
> Richard
>
>
>


