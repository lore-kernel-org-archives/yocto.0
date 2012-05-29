Return-Path: <mihaix.lindner@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25E84E01429
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 06:25:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 29 May 2012 06:25:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="148953655"
Received: from linux.jf.intel.com (HELO linux.intel.com) ([10.23.219.25])
	by azsmga001.ch.intel.com with ESMTP; 29 May 2012 06:25:29 -0700
Received: from moolinex.rb.intel.com (unknown [10.237.105.37])
	by linux.intel.com (Postfix) with ESMTP id 0EA222C8001
	for <yocto@yoctoproject.org>; Tue, 29 May 2012 06:25:29 -0700 (PDT)
Message-ID: <4FC4CE49.4010300@linux.intel.com>
Date: Tue, 29 May 2012 16:25:29 +0300
From: Mihai Lindner <mihaix.lindner@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120420 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <BLU0-SMTP194504711819C3FD84E79DFB9050@phx.gbl>
In-Reply-To: <BLU0-SMTP194504711819C3FD84E79DFB9050@phx.gbl>
Subject: Re: How to use Software support layers such as "meta-browser" in a yocto image?
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
X-List-Received-Date: Tue, 29 May 2012 13:25:30 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/29/2012 04:07 PM, jack wrote:
> Hello, all!
> Who can tell me how could I use the /Software support layers /that provided by http://www.openembedded.org/wiki/LayerIndex into my own yocto image? For example, how could I use "meta-browser" during image building?
> Thanks!
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hello,

Clone it into your ./poky/ directory, alongside the other meta directories in ./poky/, and reference it in ./build/conf/bblayers.conf file, BBLAYERS variable (after you sourced oe-init-build-env).
Happy baking!

-- 
Mihai Lindner

