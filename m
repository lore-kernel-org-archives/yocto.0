Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F9F9E0141C
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 06:42:29 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 20 Sep 2012 06:42:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,453,1344236400"; d="scan'208";a="224443976"
Received: from unknown (HELO helios.localnet) ([10.252.121.248])
	by fmsmga001.fm.intel.com with ESMTP; 20 Sep 2012 06:42:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 20 Sep 2012 14:42:27 +0100
Message-ID: <4100342.qsm4CZIotx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CAMAb8ZN0Yb4km-X0wyUDsbRYYSC53B62F+ZPYRVNEmae7QeVsA@mail.gmail.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>
	<505A5FB9.4010802@mlbassoc.com>
	<CAMAb8ZN0Yb4km-X0wyUDsbRYYSC53B62F+ZPYRVNEmae7QeVsA@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: BB_NO_NETWORK and own-mirrors not working with meta-systemd
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
X-List-Received-Date: Thu, 20 Sep 2012 13:42:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 20 September 2012 09:30:19 Evade Flow wrote:
> I guess I'll try the BFI approach of restarting the build from scratch next.
> `:-o.  

We'd really rather people didn't do this as it does not help us to diagnose 
and fix problems.

> Incidentally, searching the OpenEmbedded manual for 'cleanslate'
> turns up no hits. Is this some kind of 'secret' command?  Where can I learn
> about other such commands?

As Gary pointed out the command is "cleansstate". The OpenEmbedded manual has 
not been kept up-to-date I'm afraid - but the good news is there is an up-to-
date and comprehensive set of documentation set provided by the Yocto Project 
here:

http://www.yoctoproject.org/documentation

FYI you can do "bitbake -c listtasks <targetname>" which will list all of the 
valid tasks, you can remove do_ from the start of these to get commands you 
can use with -c.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

