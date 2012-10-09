Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02D25E00293
	for <yocto@yoctoproject.org>; Tue,  9 Oct 2012 15:17:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Oct 2012 15:17:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,562,1344236400"; d="scan'208";a="224569306"
Received: from unknown (HELO helios.localnet) ([10.252.122.35])
	by orsmga002.jf.intel.com with ESMTP; 09 Oct 2012 15:17:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jim Abernathy <jfabernathy@gmail.com>
Date: Tue, 09 Oct 2012 23:17:20 +0100
Message-ID: <10976741.xG0521TeFl@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.2 (Linux/3.2.0-31-generic-pae; KDE/4.9.2; i686; ; )
In-Reply-To: <5074867D.2080101@gmail.com>
References: <5074867D.2080101@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: building under Centos 6.3
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
X-List-Received-Date: Tue, 09 Oct 2012 22:17:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 09 October 2012 16:18:05 Jim Abernathy wrote:
> Just an FYI,  following the Getting Started Guide for Centos
> prerequisites, I found one that was not listed that I needed: "chrpath".

You're right - in the documentation for the last release, inexplicably this 
one was missed out. Fortunately though the new version of the Quick Start 
Guide for 1.3 in which that section has been rewritten does however include 
chrpath in the list of packages for CentOS.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

