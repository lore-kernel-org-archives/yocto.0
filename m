Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42B7FE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 16:13:23 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q1H0DJup018753
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Feb 2012 16:13:19 -0800 (PST)
Received: from [147.11.116.53] (147.11.116.53) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Feb 2012 16:13:20 -0800
Message-ID: <4F3D9B99.8060005@windriver.com>
Date: Thu, 16 Feb 2012 19:13:13 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
	<4F3D883C.8070709@mentor.com> <4F3D8AFD.6080307@windriver.com>
	<4F3D8EAD.2010602@mentor.com> <4F3D905D.9030903@windriver.com>
	<4F3D96BB.40503@mentor.com>
In-Reply-To: <4F3D96BB.40503@mentor.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: trouble using a local kernel repo
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
X-List-Received-Date: Fri, 17 Feb 2012 00:13:23 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-16 06:52 PM, Hollis Blanchard wrote:
> On 02/16/2012 03:25 PM, Bruce Ashfield wrote:
>> The point is that the tree is local to your machine, but it doesn't
>> have to be. You may only have push, not direct commit access. It's
>> really not asking for anything that isn't already common practice.
>
> Hmm, I'm not at all a git expert, but I thought common practice was to
> clone the upstream git tree, then create local branches that track the
> upstream ones. I've never seen any directions say "first create a bare
> clone, then clone that again, then create local branches."

It's a build system thing, what can I say ? When you are working with
the raw tree, and your own cross compiler, that's absolutely the
workflow. It's the same as having to write recipes versus Makefiles
and python versus shell. I had to switch to recipes and bitbake constructs
when that didn't match anything I had previously had or used as
best practices.

>
>>> I'm just trying to test a small kernel/meta patch, and the poorly
>>> documented list of setup requirements is growing longer and longer. All
>>> this stuff may be good practice for a more complicated scenario, but so
>>> far it seems like enormous overkill for my use case...
>>
>> So why are you trying to use the technique ? Maybe the answer is that the
>> docs made it sound like this was the best/right way .. and that's a
>> problem in itself.
>
> The docs don't cover "how do I add a kernel patch?" at all, AFAICS.
>
> ... oh wow, now I see
> http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html.
> This actually does talk about bare clones.
> http://www.yoctoproject.org/docs/current/kernel-manual/kernel-manual.html,
> which is what I had been reading, does not.

Argh. We are working a brand new organization for this, with the important
information clearly and concisely stated as the first thing you see.
I feel your pain on this.

>
>> If you do have a single patch, toss it on the end of the SRC_URI and
>> everything just works like any other package
>
> The reason I'm even bothering is to try to be a good person. I could
> have stuck this in a private collection 2 days ago... but I figured this
> is going to bite plenty of other people, so I should try to submit a
> patch that would fix it for everybody. I could tell the kernel
> configuration system is complicated, but I really didn't expect this
> many barriers.

Absolutely. I'm glad to hear this. The first contact information let
us down a bit. There IS complexity in the system, but for the easy
straight forward, first patch sort of use case, it is supposed to be
completely hidden and just work like any other package.

I hate hearing about anyone have trouble, or things not working, and
I've been knocking off things that break for over a year now. For example,
someone else hit the bare clone (first time in over two years!), and I
wrote a patch to fix that case .. but I failed to get it out in time
to save you the same trouble :(

Cheers,

Bruce

>
> Hollis Blanchard
> Mentor Graphics, Embedded Systems Division
>


