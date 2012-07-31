Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA7A5E00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 08:06:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 31 Jul 2012 08:06:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="191193102"
Received: from unknown (HELO helios.localnet) ([10.252.121.64])
	by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2012 08:06:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 31 Jul 2012 16:06:26 +0100
Message-ID: <3380776.1Rc0Bx5NFy@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1207310639500.15163@oneiric>
References: <alpine.DEB.2.02.1207310639500.15163@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: what's the state of building for a (OMAP4460) pandaboard ES?
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
X-List-Received-Date: Tue, 31 Jul 2012 15:06:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 31 July 2012 06:43:17 Robert P. J. Day wrote:
>   i notice that the current meta-ti layer has a pandaboard.conf file
> that refers specifically to the OMAP 4430 -- the original panda.
> this weekend, i'd like to build, say, a core-image-minimal for my ES.
> is there a writeup anywhere that documents what issues i might run
> into regarding the panda versus the panda ES?  thanks.

I'm not sure but I think you probably need to direct this question to the 
meta-ti mailing list.

https://lists.yoctoproject.org/listinfo/meta-ti

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

