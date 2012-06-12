Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70304E00746
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 04:26:54 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jun 2012 04:26:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="151867523"
Received: from unknown (HELO helios.localnet) ([10.252.120.109])
	by orsmga001.jf.intel.com with ESMTP; 12 Jun 2012 04:26:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 12 Jun 2012 12:26:52 +0100
Message-ID: <334879383.0TimNBShEg@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <4FD6EE8A.2040101@r-finger.com>
References: <1B44395A-0DD8-4136-83B3-FD82C9F5DDCA@keylevel.com>
	<26798960.m4OGCU6P52@helios> <4FD6EE8A.2040101@r-finger.com>
MIME-Version: 1.0
Subject: Re: RaspberryPi Kernel - sometimes it works, sometimes it doesn't
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
X-List-Received-Date: Tue, 12 Jun 2012 11:26:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 12 June 2012 08:23:54 Tomas Frydrych wrote:
> Over years of working with Poky I have developed this sort of a normal
> work flow:
> 
>   bitbake -c devshell <package>
>   < do some tweaking >
>   bitbake -c compile -f <package>
>   bitbake <package>          <---- this pulls package from sstate!!!
>   scp ...
>   < test, repeat>
> 
> This no longer works, even after a forced recompile, Poky just pulls a
> package out of sstate. It seems the only reliable way to force a package
> rebuild is either to cleansstate or bump the PR, neither of which is
> viable an option in the above scenario. What am I missing? Is this
> really intended?

I was surprised because this was not behaviour I would expect either, however 
that is indeed what it does here when I try that sequence. I'm not sure why it 
is behaving this way but I think it is a bug.

FWIW, we will be looking at fixing this exact workflow pretty soon although it 
may involve an extra explicit step to invalidate the stamps.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

