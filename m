Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01430E01304
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 01:50:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jul 2012 01:50:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="198327292"
Received: from unknown (HELO helios.localnet) ([10.252.121.37])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2012 01:50:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 26 Jul 2012 09:50:16 +0100
Message-ID: <13995260.dQec6ZRHmP@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-27-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CAK18fxEgmH_vMXtvXfO5JEVMWizcA5kwf6+WJi7+rPxDNsMAYA@mail.gmail.com>
References: <CAK18fxEgmH_vMXtvXfO5JEVMWizcA5kwf6+WJi7+rPxDNsMAYA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Fail to rm a 4G file...
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
X-List-Received-Date: Thu, 26 Jul 2012 08:50:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 25 July 2012 21:53:26 Andrei Gherzan wrote:
> Anybody faced this error before and can save me from searching the roots of
> the problem?
> 
> | 53135360 bytes (53 MB) copied, 1.21693 s, 43.7 MB/s
> | rm: cannot remove `<img-name>.sdimg': Value too large for defined data
> 
> type
> 
> | ERROR: Function failed: do_rootfs
> 
> P.S. Using yocto master + rpi layer.

Not sure but I assume it's this issue:

http://www.gnu.org/software/coreutils/faq/coreutils-faq.html#Value-too-large-for-defined-data-type

What host distro are you using?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

