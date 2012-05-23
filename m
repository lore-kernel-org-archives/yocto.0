Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8989E01206
	for <yocto@yoctoproject.org>; Wed, 23 May 2012 11:32:23 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 23 May 2012 11:32:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="143861162"
Received: from unknown (HELO envy.home) ([10.7.199.60])
	by orsmga001.jf.intel.com with ESMTP; 23 May 2012 11:32:23 -0700
Message-ID: <4FBD2D0B.9080007@linux.intel.com>
Date: Wed, 23 May 2012 11:31:39 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120430 Thunderbird/12.0.1
MIME-Version: 1.0
CC: Yocto Project <yocto@yoctoproject.org>
References: <10e66d792ff56fd73dcb7afae6caaa5e8465b91a.1337372728.git.dvhart@linux.intel.com>
In-Reply-To: <10e66d792ff56fd73dcb7afae6caaa5e8465b91a.1337372728.git.dvhart@linux.intel.com>
X-Enigmail-Version: 1.4.1
Subject: Re: [PATCH] linux-yocto_3.0: Update KMACHINE and KBRANCH to play nice with new kerntools
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
X-List-Received-Date: Wed, 23 May 2012 18:32:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/18/2012 01:25 PM, Darren Hart wrote:
> The 3.0 based boards are lazy compared to our new modern ones.
> 
> Without this patch, the linux-yocto-3.0 kernel do_patch() task would fail
> with:
> 
> /srv/home/pokybuild/yocto-autobuilder/yocto-slave/cedartrail/build/build/tmp/sysroots/x86_64-linux/usr/bin/updateme:
> line 434: yocto/standard/cedartrail-standard.scc: No such file or directory
> 
> Setting the KBRANCH explicitly avoids this issue. This brings the following
> recipes inline with the fri2 and sys940x BSPs.
> 
> Fix proposed by Bruce Ashfield.
> 
> Testing: I build linux-yocto_3.0 for all machines involved, including the nopvr,
> noemgd variants. All built linux-yocto_3.0 successfully.
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Tom Zanussi <tom.zanussi@intel.com>
> CC: Bruce Ashfield <bruce.ashfield@windriver.com>
> CC: Kishore Bodke <kishore.k.bodke@intel.com>

Merged to meta-intel master

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

