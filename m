Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FE3AE01488
	for <yocto@yoctoproject.org>; Wed, 17 Apr 2013 08:03:29 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Apr 2013 08:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,492,1363158000"; d="scan'208";a="323717259"
Received: from unknown (HELO helios.localnet) ([10.255.14.28])
	by fmsmga002.fm.intel.com with ESMTP; 17 Apr 2013 08:03:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, yocto@yoctoproject.org
Date: Wed, 17 Apr 2013 16:03:17 +0100
Message-ID: <2155264.hXQStR7GGJ@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1304171022430.10912@oneiric>
References: <alpine.DEB.2.02.1304171022430.10912@oneiric>
MIME-Version: 1.0
Subject: Re: writeup on the mechanics of FILESEXTRAPATHS and bbappend files
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
X-List-Received-Date: Wed, 17 Apr 2013 15:03:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 17 April 2013 10:24:42 Robert P. J. Day wrote:
>   a while back, i dug into how FILESEXTRAPATHS worked with respect to
> .bbappend files and i wrote it up, just updated it a bit here:
> 
> http://www.crashcourse.ca/wiki/index.php/FILESEXTRAPATHS_and_bbappend_files
> 
> do i have it about right? it seemed that the underlying details
> weren't really explained well in any of the current yocto docs, and i
> wanted something i could point students at.

It looks OK to me although if you're going to point students at it I might 
suggest moving the "don't look here!" stuff elsewhere ;)

Also as I believe I mentioned before, FILESEXTRAPATHS adds not just one 
directory but an "entire list of directories" is it allows bbappend file path 
behaviour to match that of the recipe itself.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

