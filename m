Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35BE1E0049D
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 13:25:39 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Sep 2012 13:25:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,413,1344236400"; d="scan'208";a="221360421"
Received: from unknown (HELO helios.localnet) ([10.252.121.211])
	by fmsmga001.fm.intel.com with ESMTP; 12 Sep 2012 13:25:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Scott Garman <scott.a.garman@intel.com>
Date: Wed, 12 Sep 2012 21:25:22 +0100
Message-ID: <1732336.2HUq7qo8OI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-30-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <5050D2CF.3000006@intel.com>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
	<5050D2CF.3000006@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
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
X-List-Received-Date: Wed, 12 Sep 2012 20:25:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 September 2012 11:22:07 Scott Garman wrote:
> On 09/12/2012 08:06 AM, Rudolf Streif wrote:
> > In Denil modifying kernel parameters and doing
> > 
> > bitbake linux-yocto -c compile -f
> > bitbake linux-yocto
> > 
> > worked perfectly fine. The tasks after compile were rerun and the new
> > kernel copied to tmp/deploy/images
> > 
> > In Edison 7.0.1 this does not seem to work anymore. The tasks do not
> > rerun and the kernel image is not deployed.
> > 
> > What has changed? Why does it not work anymore?
> 
> This was a bug that was introduced in 7.0.1. I have included a patch
> series in my testing branch that is intended to go into the denzil
> branch soon:
> 
> d7b818b bitbake: refactor out codeparser cache into a separate class
> 66123b9 classes/cml1: ensure -c menuconfig forces a rebuild next time
> 5bd11a9 bitbake: bitbake: ensure -f causes dependent tasks to be re-run
> 8b8be74 bitbake: implement checksums for local files in SRC_URI

We need to be very careful which patches we backport. In particular that last 
patch 8b8be74 should not be backported - it's new functionality, requires 
support in the metadata to work, and led to several further cleanup patches 
for the metadata to avoid warnings being raised.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

