Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2B79E003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 15:25:21 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q1GNPIGB000445
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 16 Feb 2012 15:25:18 -0800 (PST)
Received: from [147.11.116.40] (147.11.116.40) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Thu, 16 Feb 2012 15:25:18 -0800
Message-ID: <4F3D905D.9030903@windriver.com>
Date: Thu, 16 Feb 2012 18:25:17 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.26) Gecko/20120131 Thunderbird/3.1.18
MIME-Version: 1.0
To: Hollis Blanchard <hollis_blanchard@mentor.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
	<4F3D883C.8070709@mentor.com> <4F3D8AFD.6080307@windriver.com>
	<4F3D8EAD.2010602@mentor.com>
In-Reply-To: <4F3D8EAD.2010602@mentor.com>
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
X-List-Received-Date: Thu, 16 Feb 2012 23:25:22 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-02-16 06:18 PM, Hollis Blanchard wrote:
> On 02/16/2012 03:02 PM, Bruce Ashfield wrote:
>> That's the problem. I have a patch that detects this and abort is a non
>> bare upstream is used. I just need to send them .. which I'll do when
>> I get back to my desk next week.
>>
>> There are two reason for this bare clone requirement:
>>
>> - technical: this scales to several hundred branches. cloning, and
>> iterating
>> remote branches to create local tracking branches is noisy and
>> time consuming. So there's a trick that has been in use for years
>> that you can clone a bare upstream, and mass convert the branches
>> to local in a single operation.
>>
>> - social: you want to do your development in a different tree from the
>> one that is being cloned and used. That way the tree is clean, and you
>> are building what you expect.
>
> Do I want to do my development in a different tree? Are you sure? ;)

The point is that the tree is local to your machine, but it doesn't
have to be. You may only have push, not direct commit access. It's
really not asking for anything that isn't already common practice.

>
> I don't need to scale to hundreds of branches -- I just have one small
> patch I wanted to test. I already have it in a "clean" tree -- it's a
> committed changeset, with a commit message and everything, even though I
> haven't even been able to *test* it yet!

Right. I didn't imply that .. just to explain why it is like it is.

>
> I'm just trying to test a small kernel/meta patch, and the poorly
> documented list of setup requirements is growing longer and longer. All
> this stuff may be good practice for a more complicated scenario, but so
> far it seems like enormous overkill for my use case...

So why are you trying to use the technique ? Maybe the answer is that the
docs made it sound like this was the best/right way .. and that's a
problem in itself.

If you do have a single patch, toss it on the end of the SRC_URI and
everything just works like any other package.

The local repo instructions are largely for BSP developers or teams that
are working with the kernel on a more intensive basis. So there are some
setup requirements.

If you want to explore the git flow, and maintain out of tree branches,
repositories based on linux-yocto, etc. Then that's the time to kick
away on the git workflow and steps, but as the first plunge, it may not
be the right choice.

Cheers,

Bruce


>
> Hollis Blanchard
> Mentor Graphics, Embedded Systems Division
>


