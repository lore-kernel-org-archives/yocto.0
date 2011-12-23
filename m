Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70486E00303
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 07:01:12 -0800 (PST)
Received: (qmail 23797 invoked by uid 1003); 23 Dec 2011 15:01:10 -0000
Received: from unknown (HELO ?192.168.1.104?) (philip@opensdr.com@96.240.172.5)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	23 Dec 2011 15:01:10 -0000
Message-ID: <4EF497B5.4020807@balister.org>
Date: Fri, 23 Dec 2011 10:01:09 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Fedora/3.1.16-1.fc14 Thunderbird/3.1.16
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <4EF34776.9030002@gmail.com>	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>	<7E61D6CF-5CC3-4DDA-B35B-7EC235014D3A@dominion.thruhere.net>
	<7982955.p8V9rpaWRE@helios>
In-Reply-To: <7982955.p8V9rpaWRE@helios>
X-Enigmail-Version: 1.1.2
Cc: yocto@yoctoproject.org
Subject: Re: meta-ti?????
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
X-List-Received-Date: Fri, 23 Dec 2011 15:01:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/23/2011 08:43 AM, Paul Eggleton wrote:
> On Friday 23 December 2011 14:23:53 Koen Kooi wrote:
>>> Being a Yocto newbie, it's hard enough to understand all the branches on
>>> the yocto site. Relating the meta-angstrom is confusing.
>>
>> No, yocto (or is it poky? noone knows) 
> 
> Officially, Poky is the build system, Yocto is the umbrella project which also 
> includes a number of other sub-projects (swabber, pseudo, etc.). There are 
> some that use Yocto to refer to the build system; I'm not sure that does a 
> great deal of harm nor is it really relevant to this discussion.
> 
>> has confusing messaging, It's best to
>> find the official BSP for the board you use and follow the instructions in
>> there and ignore anything else.
> 
> Personally I think this is a bit disappointing. The Yocto Project and the move 
> to OE-Core is supposed to provide us a way to mix and match hardware support 
> with available software packages. The apparent tying of meta-texasinstruments 
> to meta-angstrom goes against that philosophy, IMHO. I haven't yet heard a 
> compelling technical argument for why that should be necessary.

BSP's shoudl contain image recipes that create useful images for the
hardware. Images often tend to contain distro specific bits and pieces.
This leads to this sort of (problematic) dependencies between layers.

This is good area for further study since the problem will likely
increase without careful thought. I'd also suggest not depending on the
BSP guys to do this, since I suspect their corporate overlords care more
about the output and customer satisfaction then internal "details".

Philip

