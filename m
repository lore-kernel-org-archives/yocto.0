Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4DE8E0044A
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 08:21:20 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 May 2012 08:21:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95543678"
Received: from unknown (HELO [10.255.12.207]) ([10.255.12.207])
	by AZSMGA002.ch.intel.com with ESMTP; 02 May 2012 08:21:20 -0700
Message-ID: <4FA150EF.8090801@linux.intel.com>
Date: Wed, 02 May 2012 08:21:19 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
In-Reply-To: <54272CA3-A67B-4CA5-9AE5-C9E2D44FC2B3@gmail.com>
Subject: Re: Is it not necessary to sudo dpkg-reconfigure dash with Poky 1.2 on Ubuntu 12.04
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
X-List-Received-Date: Wed, 02 May 2012 15:21:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/05/12 08:16, Elvis Dowson wrote:
> Hi,
> Is it not necessary to run
>
> sudo dpkg-reconfigure dash
>
> with Poky 1.2 on Ubuntu 12.04 ?

It should not be.

We made a concerted effort to ensure Poky runs under the Dash shell in 
the 1.2 cycle. I believe there are several developers of the project 
using Dash as their primary shell without issue.

Regards,
Joshua
-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

