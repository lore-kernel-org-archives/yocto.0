Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7690E00344
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:42:11 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 11 Jul 2012 10:42:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="164390517"
Received: from unknown (HELO helios.localnet) ([10.252.120.253])
	by orsmga001.jf.intel.com with ESMTP; 11 Jul 2012 10:42:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Wed, 11 Jul 2012 18:42:09 +0100
Message-ID: <35320765.Si4aS1H0Ml@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <4FFDB177.4000208@gmail.com>
References: <4FFC86E1.9020402@gmail.com> <4FFDAEAA.7060303@gmail.com>
	<4FFDB177.4000208@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-baryon
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
X-List-Received-Date: Wed, 11 Jul 2012 17:42:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 11 July 2012 13:01:43 Jim Abernathy wrote:
> On 07/11/2012 12:49 PM, Jim Abernathy wrote:
> > When you do have time, let me know if my assumptions above were
> > correct.  I must be missing something because I can't find any
> > evidence of webmin in the file system.  So while my board boots Yocto,
> > I can't see any of the baryon layer.  Could a CORE-IMAGE-EXTRA-INSTALL
> > or something be needed to force the inclusion into the file system??
> 
> Never mind.  Because baryon is on master and poky is on edison, there
> are some issues like:
> 
> 1.  the baryon-image.bb uses CORE_IMAGE_EXTRA_INSTALL instead of what
> edison needed,which was POKY_EXTRA_INSTALL

Ah, well spotted - actually it should not really be using that variable. I 
have a fix which I'll send out to use IMAGE_INSTALL instead.

> 2.  ffmpeg needs COMMERCIAL_LICENSE = yes instead of
> LICENSE_FLAGS_WHITELIST += "commercial"

It seems we really need an edison branch where the documentation can say the 
right thing for each branch (and we can avoid introducing any future 
incompatibilities). Once the above fix is merged I'll create an edison branch 
so we can do this.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

