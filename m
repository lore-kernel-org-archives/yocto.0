Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26BF3E01431
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 03:42:25 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2013 03:42:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,777,1367996400"; d="scan'208";a="378296853"
Received: from unknown (HELO helios.localnet) ([10.252.122.217])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2013 03:42:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 30 Jul 2013 11:42:23 +0100
Message-ID: <1523931.rJmFDsbDNv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1307300512280.7428@oneiric>
References: <alpine.DEB.2.02.1307300512280.7428@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: any ETA for when the downloadable toolchains will be updated?
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
X-List-Received-Date: Tue, 30 Jul 2013 10:42:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 30 July 2013 05:14:37 Robert P. J. Day wrote:
>   based simply on the timestamps, it would appear that the toolchains
> here:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.4.1/toolchain/
> 
> still contain the script bug involving the now-dead "find" option in
> fedora 19 where -perm no longer accepts a value starting with "+". is
> there any plan to replace those packages with updated versions that
> work properly on fedora 19?

The fix in question has only just been backported to the dylan branch. We're 
currently figuring out when the next 1.4 point release (1.4.2) should be 
scheduled, the current thinking is mid-August.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

