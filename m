Return-Path: <Hollis_Blanchard@mentor.com>
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38ABDE003E1
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 15:52:28 -0800 (PST)
Received: from svr-orw-exc-10.mgc.mentorg.com ([147.34.98.58])
	by relay1.mentorg.com with esmtp 
	id 1RyB7k-0005G9-Ga from Hollis_Blanchard@mentor.com ;
	Thu, 16 Feb 2012 15:52:28 -0800
Received: from SVR-ORW-FEM-02.mgc.mentorg.com ([147.34.96.206]) by
	SVR-ORW-EXC-10.mgc.mentorg.com with Microsoft
	SMTPSVC(6.0.3790.4675); Thu, 16 Feb 2012 15:51:44 -0800
Received: from [172.30.11.144] (147.34.91.1) by svr-orw-fem-02.mgc.mentorg.com
	(147.34.96.168) with Microsoft SMTP Server id 14.1.289.1;
	Thu, 16 Feb 2012 15:52:27 -0800
Message-ID: <4F3D96BB.40503@mentor.com>
Date: Thu, 16 Feb 2012 15:52:27 -0800
From: Hollis Blanchard <hollis_blanchard@mentor.com>
Organization: Mentor Graphics, Embedded Systems Division
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4F3D6431.70505@mentor.com> <4F3D7F0D.3050904@windriver.com>
	<4F3D883C.8070709@mentor.com> <4F3D8AFD.6080307@windriver.com>
	<4F3D8EAD.2010602@mentor.com> <4F3D905D.9030903@windriver.com>
In-Reply-To: <4F3D905D.9030903@windriver.com>
X-OriginalArrivalTime: 16 Feb 2012 23:51:44.0046 (UTC)
	FILETIME=[EFC92CE0:01CCED05]
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
X-List-Received-Date: Thu, 16 Feb 2012 23:52:29 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 02/16/2012 03:25 PM, Bruce Ashfield wrote:
> The point is that the tree is local to your machine, but it doesn't
> have to be. You may only have push, not direct commit access. It's
> really not asking for anything that isn't already common practice.

Hmm, I'm not at all a git expert, but I thought common practice was to 
clone the upstream git tree, then create local branches that track the 
upstream ones. I've never seen any directions say "first create a bare 
clone, then clone that again, then create local branches."

>> I'm just trying to test a small kernel/meta patch, and the poorly
>> documented list of setup requirements is growing longer and longer. All
>> this stuff may be good practice for a more complicated scenario, but so
>> far it seems like enormous overkill for my use case...
>
> So why are you trying to use the technique ? Maybe the answer is that the
> docs made it sound like this was the best/right way .. and that's a
> problem in itself.

The docs don't cover "how do I add a kernel patch?" at all, AFAICS.

... oh wow, now I see 
http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html. 
This actually does talk about bare clones. 
http://www.yoctoproject.org/docs/current/kernel-manual/kernel-manual.html, 
which is what I had been reading, does not.

> If you do have a single patch, toss it on the end of the SRC_URI and
> everything just works like any other package.

The reason I'm even bothering is to try to be a good person. I could 
have stuck this in a private collection 2 days ago... but I figured this 
is going to bite plenty of other people, so I should try to submit a 
patch that would fix it for everybody. I could tell the kernel 
configuration system is complicated, but I really didn't expect this 
many barriers.

Hollis Blanchard
Mentor Graphics, Embedded Systems Division


