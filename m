Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CE94E013D4
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 06:47:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jul 2012 06:46:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="178754904"
Received: from unknown (HELO helios.localnet) ([10.252.121.35])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jul 2012 06:46:59 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marc Ferland <ferlandm@sonatest.com>
Date: Tue, 17 Jul 2012 14:46:58 +0100
Message-ID: <4993370.uo3sKWOC4t@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <87ipdmikt8.fsf@sonatest.com>
References: <87sjcrio8r.fsf@sonatest.com> <50050DB5.9060107@linux.intel.com>
	<87ipdmikt8.fsf@sonatest.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: xserver-xorg
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
X-List-Received-Date: Tue, 17 Jul 2012 13:47:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 July 2012 09:22:43 Marc Ferland wrote:
> Laurentiu Palcu <laurentiu.palcu@linux.intel.com> writes:
> > Apparently, these tests were removed upstream. As we are going to
> > upgrade xserver-xorg package to 1.12.3, those fixes will be included
> > too. However, if you need the fix now, I attached the patch.
> 
> Just in case someone else stumbles on this issue, setting the preferred
> version of xserver-xorg to 1.11.2 in the machine.conf also solves the
> issue.
> 
> PREFERRED_VERSION_xserver-xorg ?= "1.11.2"

FWIW, setting this kind of thing in the machine config is discouraged. This is 
really distro policy which is something that belongs in your distro 
configuration (or local configuration if it's temporary).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

