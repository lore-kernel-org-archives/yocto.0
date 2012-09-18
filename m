Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DDCBE002AB
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2012 15:30:58 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 18 Sep 2012 15:30:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,445,1344236400"; d="scan'208";a="223694834"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga001.fm.intel.com with ESMTP; 18 Sep 2012 15:30:57 -0700
Message-ID: <1348007456.6185.81.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Tue, 18 Sep 2012 17:30:56 -0500
In-Reply-To: <cover.1347834237.git.nitin.a.kamble@intel.com>
References: <cover.1347834237.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCH 0/2] emgd recipe misc fixes
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
X-List-Received-Date: Tue, 18 Sep 2012 22:30:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-09-16 at 15:27 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> Here are the fixes related to the emgd recipe. These are verified with crownbay BSP with the latest master branches.
> 

Sorry, but I'm still not able to verify this with the latest poky and
meta-intel master (no X due to missing /usr/bin/Xorg).

poky/master: 913944d904266bf90af0cad94b4f0fb3652bd29d
meta-intel/master: 574d10a3a2040ff685b74f9d4034f045d0191e5b

Tom

> Thanks,
> Nitin
> 
> The following changes since commit 574d10a3a2040ff685b74f9d4034f045d0191e5b:
> 
>   meta-intel: move emgd-driver-bin_1.14 to xorg-driver/ (2012-09-15 15:02:43 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/work
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work
> 
> Nitin A Kamble (2):
>   emgd-driver-bin: Fix package naming issue
>   emgd-driver-bin: avoid rebuilding issue of the recipe
> 
>  .../xorg-driver/emgd-driver-bin_1.14.bb            |   11 ++++++++++-
>  1 files changed, 10 insertions(+), 1 deletions(-)
> 



