Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0436BE01450
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 04:08:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Aug 2012 04:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="202220748"
Received: from unknown (HELO helios.localnet) ([10.252.121.32])
	by fmsmga002.fm.intel.com with ESMTP; 04 Aug 2012 04:08:11 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sat, 04 Aug 2012 12:08:10 +0100
Message-ID: <13051734.ek7kvk46in@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <273333E6-A5E5-4D9E-B272-9B70417E457A@gmail.com>
References: <1070990E-BAFD-408C-8EB8-37F29ADB87EB@gmail.com>
	<BF2DA1C6-07F9-400C-B50D-1D79F5C41FBC@gmail.com>
	<273333E6-A5E5-4D9E-B272-9B70417E457A@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain error with latest gcc commit: rpm-createsolvedb.py: command not found
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
X-List-Received-Date: Sat, 04 Aug 2012 11:08:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Saturday 04 August 2012 00:41:14 Elvis Dowson wrote:
> On Aug 4, 2012, at 12:35 AM, Khem Raj wrote:
> > On Aug 3, 2012, at 1:25 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> >> The following patch appears to attempt to fix this issue. I think it
> >> should be included into oe-core master branch.
> >> 
> >> http://lists.linuxtogo.org/pipermail/openembedded-core/2012-August/026949
> >> .html> 
> > on the contrary it creates the problem. Did you read my last reply
> 
> Sorry, I probably didn't read it in the correct order. I jumped to the
> previous message by mistake on the webpage.
> 
> Paul Eggleton's patch would probably fix it. If you run core-image-minimal
> and then meta-toolchain, we won't get the problem.

No, this is a very similar issue, but involves a different dependency. Luckily 
Khem has sent a patch to fix it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

