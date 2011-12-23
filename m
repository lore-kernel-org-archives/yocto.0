Return-Path: <philip@balister.org>
Received: from sanddollar.geekisp.com (sanddollar.geekisp.com
	[216.168.135.167])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D2FAE0030B
	for <yocto@yoctoproject.org>; Fri, 23 Dec 2011 05:26:39 -0800 (PST)
Received: (qmail 6721 invoked by uid 1003); 23 Dec 2011 13:26:39 -0000
Received: from unknown (HELO ?192.168.1.104?) (philip@opensdr.com@96.240.172.5)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	23 Dec 2011 13:26:38 -0000
Message-ID: <4EF4818E.5050203@balister.org>
Date: Fri, 23 Dec 2011 08:26:38 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.24) Gecko/20111108 Fedora/3.1.16-1.fc14 Thunderbird/3.1.16
MIME-Version: 1.0
To: James Abernathy <jfabernathy@gmail.com>
References: <4EF34776.9030002@gmail.com>	<5B0E0226-A68D-4AB1-91E3-B6F396816C52@dominion.thruhere.net>	<2143100.ORnxPSEQca@helios>	<9CC56138-C252-46A6-B318-9FA939CE2DAC@dominion.thruhere.net>
	<B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
In-Reply-To: <B65605DA-ADD9-4EBB-956A-6C785B5F204E@gmail.com>
X-Enigmail-Version: 1.1.2
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 23 Dec 2011 13:26:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/23/2011 08:10 AM, James Abernathy wrote:
> 
> On Dec 23, 2011, at 3:50 AM, Koen Kooi wrote:
> 
>>
>> Op 23 dec. 2011, om 09:37 heeft Paul Eggleton het volgende geschreven:
>>
>>> On Friday 23 December 2011 09:28:31 Koen Kooi wrote:
>>>> Op 22 dec. 2011, om 16:06 heeft Jim Abernathy het volgende geschreven:
>>>>> I know the examples in the documentation of Yocto use meta-intel a lot
>>>>> to get the board specific BSPs like meta-crownbay or meta-n450.
>>>>>
>>>>> Is there a meta-ti or similar that gets you the meta-beagleboard and
>>>>> meta-pandaboard?  If not how do you clone and checkout the pandaboard
>>>>> BPS?
>>>> http://git.angstrom-distribution.org/cgi-bin/cgit.cgi/meta-texasinstruments/
>>>>
>>>> It has a README in there on how to set it up, read it and follow it
>>>> precisely.
>>>
>>> Just out of interest, why does meta-texasinstruments depend on meta-angstrom?
>>
>> It needs extra things in overrides and reuses tasks from there.
> 
> Sorry for the follow-up, but if I clone the meta-texasinstruments bsp repository and checkout the pandaboard-rework branch,
> how does that relate to the Yocto branch/bsp yocto/standard/pandaboard on the Yocto site?
> 
> Being a Yocto newbie, it's hard enough to understand all the branches on the yocto site. Relating the meta-angstrom is confusing.
> 
> The light bulb has now gone on yet :-)

I would guess the panda support in the Yocto BSP branch are there to
show Yocto (a word with many different meanings to different people) can
build stuff for non-Intel hardware. However if I were building for a
Panda, I would use the meta-texas-instruments stuff because I would
expect it to support all the bits of hardware (3D etc) available on the
Pandaboard.

The Panda and Beagleboards are readily available so they make good
demonstration cases for BSP's, but enabling all the features on these
SoC's is a lot more work.

Philip

