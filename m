Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 620BAE00B87; Wed, 21 May 2014 16:23:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from www.dynamicdevices.co.uk (unknown [89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAF9FE00B6F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 16:23:16 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id A02CA860E7;
	Wed, 21 May 2014 23:23:14 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id uU89iHQVL3eS; Wed, 21 May 2014 23:23:13 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 54C81860E6;
	Wed, 21 May 2014 23:23:13 +0000 (UTC)
Message-ID: <537D3560.2040702@dynamicdevices.co.uk>
Date: Thu, 22 May 2014 00:23:12 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Stefan Stanacar <sstncr@gmail.com>
References: <CAAPegz1dWJAG0R_wVZs8_BtD4CO5YBk7=oT1V-ud40xzkTx+yw@mail.gmail.com>	<537CF707.4060506@mlbassoc.com>	<CAAPegz23RjycTjy0_81=PM2m47c-vJ+1vL75fO6LbfvJAoBX2w@mail.gmail.com>	<537D0964.9090208@dynamicdevices.co.uk>
	<CANr+NRsnNeBtkJOB-EVNzsGWOOH6YG1cnw11FOcbo9V78-8vPg@mail.gmail.com>
In-Reply-To: <CANr+NRsnNeBtkJOB-EVNzsGWOOH6YG1cnw11FOcbo9V78-8vPg@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, gary@mlbassoc.com
Subject: Re: meta-mono core-image-mono failing
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
X-List-Received-Date: Wed, 21 May 2014 23:23:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

>
> The reason you don't see this is because you are building on daisy,
> but Chris is building on master. I doubt it it has something to do
> with the host distro.
> Specifically master enables separate build dir by default in
> autotools.bbclass whereas daisy doesn't.
>
> Daisy has these:
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=daisy&id=bf33e93f162c9fbba079b4de01c35dcb367c0577
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?h=daisy&id=069de520ec864fc78084e8f1ddfb20edaab55f5e
>
> which enable only the core recipes and then marks the broken ones, but
> master has one more:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=69b6eaca3d9b635e8a61a0fdbd814b558e91901d
>
>
> which breaks other layers with recipes that don't work with B!=S and
> they should either get fixed or use autotools-brokensep, so I guess
> Chris's patch is the way to go for now...
>
> Cheers,
> Stefan
>

Thanks Stefan.  > daisy was my suspicion but that seemed unlikely so I
have a clean Fedora build underway with daisy / meta-mono /
core-image-mono to prove it to myself as a first pass before trying master.

As I do this I am thinking it would be nice if there were canonical
images of Yocto-X.Y available to run up on Amazon/Azure/elsewhere to
prove these things out in the background without mashing my SSDs.

I am guessing somebody has done this already but I hunted around Amazon
and couldn't see any community images that looked useful (?)

Similarly (and I confess I haven't yet had time to understand
AutoBuilder as I should) presumably there are a number of daily builds
in the cloud, on each of the supported host platforms, for each of the
advertised layers, and if they fail then maintainers are kicked? Is that
how things work? If so, can you advise how I request to add meta-mono to
the kick-list?

Cheers,

Alex
 

