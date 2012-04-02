Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AAF8E01304
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2012 03:56:02 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Apr 2012 03:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="124431787"
Received: from unknown (HELO helios.localnet) ([10.252.123.252])
	by orsmga001.jf.intel.com with ESMTP; 02 Apr 2012 03:56:00 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Date: Mon, 02 Apr 2012 11:55:55 +0100
Message-ID: <1612091.rEhefaCjjb@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-17-generic-pae; KDE/4.8.1; i686; ; )
In-Reply-To: <CB9F4216.C18B%belen.barros.pena@intel.com>
References: <CB9F4216.C18B%belen.barros.pena@intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Giulia Piu <giulia@closertag.com>
Subject: Re: Deleting layers in Hob
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
X-List-Received-Date: Mon, 02 Apr 2012 10:56:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 02 April 2012 10:48:23 Barros Pena, Belen wrote:
> Thanks, Paul. What happens if the DISTRO is set to empty? Will the image
> build?

Yes it will still build, but it will use a default distro policy defined within 
OE-Core; this may imply some minor differences in build output.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

