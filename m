Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63E79E00347
	for <yocto@yoctoproject.org>; Mon, 10 Sep 2012 16:34:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Sep 2012 16:34:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,400,1344236400"; d="scan'208";a="220294216"
Received: from unknown (HELO [10.255.13.118]) ([10.255.13.118])
	by fmsmga002.fm.intel.com with ESMTP; 10 Sep 2012 16:34:30 -0700
Message-ID: <1347320069.25993.16.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: nitin.a.kamble@intel.com
Date: Mon, 10 Sep 2012 18:34:29 -0500
In-Reply-To: <cover.1346893078.git.nitin.a.kamble@intel.com>
References: <cover.1346893078.git.nitin.a.kamble@intel.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Fix X issue on crownbay
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
X-List-Received-Date: Mon, 10 Sep 2012 23:34:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-09-05 at 17:59 -0700, nitin.a.kamble@intel.com wrote:
> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> The following changes since commit 66b516f3d3a287eecbf8804b2221bfc27e36db63:
> 
>   README: add info explaining meta-tlk layer purpose (2012-09-06 10:36:02 -0500)
> 
> are available in the git repository at:
>   git://git.yoctoproject.org/meta-intel-contrib nitin/work
>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work
> 

I built and tried this, but it still didn't boot into X, and now there's
not even an Xorg.log to look at:

root@crownbay:/var/log# ls -al
drwxr-xr-x    2 root     root            80 Sep 10 20:15 .
drwxrwxrwt    7 root     root           140 Jan  6  2009 ..
-rw-r--r--    1 root     root         78429 Sep 10 20:17 messages
-rw-rw-r--    1 root     root          4224 Sep 10 20:17 wtmp

I assume this is a different X problem related to recent changes in
mater.  Can you update the bug report with the commits that you tested
with so I can verify that your patch at least works?

Thanks,

Tom



> Nitin A Kamble (1):
>   emgd-driver-bin: Fix package naming issue
> 
>  .../xorg-xserver/emgd-driver-bin_1.14.bb           |    8 +++++++-
>  1 files changed, 7 insertions(+), 1 deletions(-)
> 



