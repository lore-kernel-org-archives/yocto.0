Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A33A7E00771
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2011 08:55:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Aug 2011 08:55:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,317,1309762800"; d="scan'208";a="35404710"
Received: from unknown (HELO [10.255.14.150]) ([10.255.14.150])
	by orsmga001.jf.intel.com with ESMTP; 04 Aug 2011 08:55:48 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1312465742.git.paul.eggleton@linux.intel.com>
References: <cover.1312465742.git.paul.eggleton@linux.intel.com>
Date: Thu, 04 Aug 2011 10:55:33 -0500
Message-ID: <1312473333.2400.109.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2] [meta-intel] Fix meta-intel BSPs for tune file changes v2
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
X-List-Received-Date: Thu, 04 Aug 2011 15:55:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-08-04 at 07:04 -0700, Paul Eggleton wrote:
> Two patches to fix "TUNE_ARCH unset" and "PACKAGE_ARCHS variable does not
> contain TUNE_PKGARCH" on the autobuilder for sugarbay and jasperforest.
> 
> Since v1, after discussion with Richard remove additional package
> architectures that aren't apparently doing anything.
> 

Hi Paul,

Thanks.  These are exactly the same changes I made and tested earlier in
the week but that failed then with kernel oopes.  Things have changed
for the better since then and I was now able to build and boot the
jasperforest BSP with your changes.  I'm assuming the sugarbay will show
the same thing.

So I've pulled your patches into master, thanks.

Acked-by: Tom Zanussi <tom.zanussi@intel.com>
meta-jasperforest changes Tested-by: Tom Zanussi <tom.zanussi@intel.com>

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
>  meta-jasperforest/conf/machine/jasperforest.conf |    7 +------
>  meta-sugarbay/conf/machine/sugarbay.conf         |    7 +------
>  2 files changed, 2 insertions(+), 12 deletions(-)
> 



