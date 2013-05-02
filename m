Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A607E013C9
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 01:07:57 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 02 May 2013 01:07:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,595,1363158000"; d="scan'208";a="331146683"
Received: from unknown (HELO helios.localnet) ([10.255.12.165])
	by fmsmga002.fm.intel.com with ESMTP; 02 May 2013 01:07:55 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: seth bollinger <seth.boll@gmail.com>
Date: Thu, 02 May 2013 09:07:55 +0100
Message-ID: <1370035.2iCAacKgHz@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <5181AF9F.8040702@gmail.com>
References: <5181AF9F.8040702@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bash specific syntax in bbclass files
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
X-List-Received-Date: Thu, 02 May 2013 08:07:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 01 May 2013 19:13:19 seth bollinger wrote:
> I recently ran into a problem in
> meta-raspberrypi/classes/sdcard_image-rpi.bbclass
> 
> The following was run through my default debian dash shell (I thought I
> switched a while back, but I must have reverted my VM image or
> something...).
> 
>    # If SDIMG_ROOTFS_TYPE is a .xz file use xzcat
>    if [[ "$SDIMG_ROOTFS_TYPE" == *.xz ]]
>    then
> 
> The bash specific syntax ([[) failed in dash causing the "else" path to
> be traversed instead of the correct "then" path.  The failure was silent
> and resulted in a blind copy of a compressed rootfs to the sdcard
> image.  Of course this didn't run.  :)
> 
> 1.  Is there particular shell syntax that class files should stick too?

No bashisms should be used, so the above should really be changed.

> 2.  I couldn't find a wildcard string search in dash.  Can anyone
> suggest a more shell agnostic way to do this?

AFAIK grep or awk is the only way.

> 3.  Is there a way to guarantee we're running in bash if we're using
> bash specific syntax?

Not that I'm aware of.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

