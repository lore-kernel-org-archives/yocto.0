Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 281B3E01304
	for <yocto@yoctoproject.org>; Sat, 31 Mar 2012 08:37:56 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 31 Mar 2012 08:37:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148199103"
Received: from unknown (HELO helios.localnet) ([10.252.123.233])
	by fmsmga002.fm.intel.com with ESMTP; 31 Mar 2012 08:37:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>
Date: Sat, 31 Mar 2012 16:37:54 +0100
Message-ID: <1558968.mplaJ6uI11@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
References: <D044B647-8BCD-48B4-BABD-CE4751D023E0@dominion.thruhere.net>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Sat, 31 Mar 2012 15:37:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 30 March 2012 11:44:23 Koen Kooi wrote:
> The Angstrom core team would like to move angstrom under the yocto banner so
> we can formally claim to be 'yocto'.

I think a lot of points have been well addressed in this thread already, but I 
wanted to add (and reiterate) a few things. None of this constitutes Yocto 
Project policy, just my own opinions.

I think it's perfectly reasonable if you base something upon the openembedded-
core and bitbake repositories to state that it is based upon the Yocto Project 
(aside from any other conditions which Richard has already talked about; I'm 
sure LF has some trademark policies as well). If you're supplying your own 
distro policy as many will in their projects, you would not need to have meta-
yocto and it is reasonable if you are building a distribution such as Angstrom 
to want to exclude it, since you will never be using anything in it. Whatever 
you do though, I think you need to be able to demonstrate to your customers 
that you are in fact basing your release on top of a Yocto Project release.

This could be accomplished through the use of tags - if you state that you use 
BitBake x.y and a specific OE-Core tag, and this matches up with the Yocto 
Project release you state you have based upon, then that should be sufficient.

A few other thoughts:

1) Angstrom has a very distinct distro policy from the default provided by OE-
Core (or indeed the Poky distro policy); it also currently uses different 
versions of eglibc and the toolchain. This does make it for certain purposes a 
slightly different platform from Poky or something else based on OE-Core. This 
is not necessarily a problem, and is no doubt backed by sound reasoning, but 
is worth noting and communicating to users.

2) With Angstrom being primarily a binary distribution, I have the impression 
that you expect that that its distro policy will not be deviated from. There's 
definitely a good reason for this and value in having such a distribution; but 
users need to be able to understand the distinction. The Yocto Project itself 
in providing a way to produce custom Linux distributions does not have such 
restrictions - we expect that users will make whatever customisations make 
sense for their project, although of course we make some recommendations as to 
how they might be implemented.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

