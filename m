Return-Path: <gordan@bobich.net>
Received: from external.sentinel2 (78-86-195-58.zone2.bethere.co.uk
	[78.86.195.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FA95E0071A
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 04:10:48 -0700 (PDT)
Received: from mail.shatteredsilicon.net (localhost [127.0.0.1])
	by external.sentinel2 (Postfix) with ESMTP id 1F91529BF;
	Wed, 24 Aug 2011 12:10:45 +0100 (BST)
MIME-Version: 1.0
Date: Wed, 24 Aug 2011 12:10:44 +0100
From: Gordan Bobic <gordan@bobich.net>
To: Luke Kenneth Casson Leighton <lkcl@lkcl.net>
In-Reply-To: <CAPweEDwNRDjZYUbTegNpvyjv+x-N76iqubUAzw5SsV4s7-yCGQ@mail.gmail.com>
References: "\"<20110809181534.GR10171@einval.com>	<20110823161134.GV3053@linaro.org>"
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>"
	<20110823140143.11573jx2b3qwm51j@mail.msu.edu>
	<CAPweEDwNRDjZYUbTegNpvyjv+x-N76iqubUAzw5SsV4s7-yCGQ@mail.gmail.com>
Message-ID: <abd4a98a4ff88f9859d416e8dd9666b5@mail.shatteredsilicon.net>
X-Sender: gordan@bobich.net
User-Agent: Roundcube Webmail/0.4.2
Cc: cross-distro@lists.linaro.org, omalleys@msu.edu,
	Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>, yocto@yoctoproject.org,
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Debian ARM <debian-arm@lists.debian.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Mageia Dev <mageia-dev@mageia.org>
Subject: Re: ARM 3D support was Re: [fedora-arm] ARM summit at Plumbers 2011
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
X-List-Received-Date: Wed, 24 Aug 2011 11:10:48 -0000
Content-Type: text/plain;
 charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

 On Wed, 24 Aug 2011 12:00:43 +0100, Luke Kenneth Casson Leighton 
 <lkcl@lkcl.net> wrote:
> [ok i'm going to do another cross-post in a bit which will give some
> background and also perhaps some other topics for discussion, but i
> wanted to cover this first.  apologies for people for whom this is
> just noise]
>
> On Tue, Aug 23, 2011 at 7:01 PM,  <omalleys@msu.edu> wrote:
>
>>>  the xilinx zynq-7000 or similar (dual core Cortex A9 + FPGA). The 
>>> idea
>>>  is to have an OGP GPU in firmware in FPGA. In terms of the power 
>>> budget,
>>>  it seems to work relatively sanely considering what it is, and it 
>>> is as
>>>  ideal as it gets as far as openness and flexibility goes.
>>>
>>>  I just thought it's worthy of a mention.
>>
>> It does seem outlandish, but it is kind of cool. Is it going to give 
>> enough
>> 3d speed? The next gen tegra is supposed to have a 24 core GPU.
>
>  if nvidia have a published announcement of their plans to release a
> fully free-software-compliant 3D driver to match the proprietary
> hardware, then that would be brilliant news [about their next gen
> GPU].
>
>  about the zynq idea: it actually doesn't matter if it's "enough".
> the very fact that free software developers - and people who want to
> be free software developers - around the world could even _remotely_
> consider buying one of these for an affordable price instead of $750
> for the present OGP card means that more people can at least begin to
> try to address the unbelievably wide and very discouraging gap 
> between
> us and proprietary 3D hardware.
>
>  the NREs on producing a set of masks are _only_ $250,000 if you are 
> a
> taiwanese company asking TSMC, but for everyone else they're at least
> $2 million.  the development costs if you use off-the-shelf tools
> before you even _get_ to the point where you can ask a fab to produce
> those masks spiral out of control (Mentor Graphics charges something
> like $250,000 per month or maybe per week per user; NREs for
> peripheral hard macros can be $50k to $100k each etc. etc.), taking
> the total development costs in many cases to well above $USD 30
> million.
>
>  and that's excluding all that "proprietary software" which of course
> is utterly useless without the corresponding hardware but, because of
> USA Accountancy Rules, where "IP" can be added to the books to
> increase the value of a company, there's a strong financial
> disincentive to consider just "givvin it aww away 4 fwee".
>
>  and here we are with a CPU which could well be around the $25 - $30
> mark in large enough volumes, presented with the possibility to say
> "**** u all, you proprietary GPU companies and your greed, fear,
> patent warfare and lack of willingness to collaborate and cooperate".
>
> ok maybe not those exact words but you know what i mean :)

 I quite like the wording, actually. :)

 Gordan

