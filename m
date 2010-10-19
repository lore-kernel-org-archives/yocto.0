Return-Path: <scott.a.garman@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id A47704C80B60
	for <yocto@yoctoproject.org>; Mon, 18 Oct 2010 20:00:57 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 18 Oct 2010 18:00:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.57,347,1283756400"; d="scan'208";a="337611014"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by azsmga001.ch.intel.com with ESMTP; 18 Oct 2010 18:00:53 -0700
Received: from [10.255.12.152] (10.255.12.152) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Mon, 18 Oct 2010 19:00:53 -0600
Message-ID: <4CBCEDC4.3020709@intel.com>
Date: Mon, 18 Oct 2010 18:00:52 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.12) Gecko/20100915 Thunderbird/3.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <4CBCEC3C.5090003@intel.com>
In-Reply-To: <4CBCEC3C.5090003@intel.com>
Subject: Re: New issue with git fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 19 Oct 2010 01:00:57 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/18/2010 05:54 PM, Scott Garman wrote:
> Hi Richard,
>
> This afternoon I performed a build from scratch using master, which
> included your git fetcher change to use mirror tarballs
> (1077021f7010388e889d85630b13c4c7901d7718).

As a follow-up, when I revert this commit, -c clean and then -c fetch 
succeeds for linux-wrs.

Scott


