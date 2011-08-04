Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C419FE011A7
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 06:30:04 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 04 Aug 2011 06:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,316,1309762800"; d="scan'208";a="35100801"
Received: from unknown (HELO [10.255.14.150]) ([10.255.14.150])
	by azsmga001.ch.intel.com with ESMTP; 04 Aug 2011 06:30:01 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1312462806.git.paul.eggleton@linux.intel.com>
References: <cover.1312462806.git.paul.eggleton@linux.intel.com>
Date: Thu, 04 Aug 2011 08:29:47 -0500
Message-ID: <1312464587.2400.60.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] [meta-intel] Fix meta-intel BSPs for tune file changes
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
X-List-Received-Date: Thu, 04 Aug 2011 13:30:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Thanks, Paul.  I made some similar changes here for both of these last
week, but haven't been able to boot them (getting a kernel oops) so
haven't posted them or checked them in.  Once I get past that, I'll be
able to check those in...

Thanks,

Tom

On Thu, 2011-08-04 at 06:03 -0700, Paul Eggleton wrote:
> Two patches to fix "TUNE_ARCH unset" and "PACKAGE_ARCHS variable does not
> contain TUNE_PKGARCH" on the autobuilder for sugarbay and jasperforest.
> 
> The following changes since commit 567c3b6436b4cb9551c23845c15ab544542b5083:
> 
>   meta-crownbay: remove obsolete dir (2011-08-03 12:14:39 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib paule/tune
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=paule/tune
> 
> Paul Eggleton (2):
>   meta-sugarbay: update machine configuration for recent tune file
>     changes
>   meta-jasperforest: update machine configuration for recent tune file
>     changes
> 
>  meta-jasperforest/conf/machine/jasperforest.conf |    5 +++--
>  meta-sugarbay/conf/machine/sugarbay.conf         |    5 +++--
>  2 files changed, 6 insertions(+), 4 deletions(-)
> 



