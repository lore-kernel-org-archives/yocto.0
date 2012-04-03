Return-Path: <sgw@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7775FE0044A
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 10:58:27 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Apr 2012 10:58:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="128290897"
Received: from unknown (HELO [10.255.12.141]) ([10.255.12.141])
	by orsmga002.jf.intel.com with ESMTP; 03 Apr 2012 10:58:26 -0700
Message-ID: <4F7B3A42.6060604@linux.intel.com>
Date: Tue, 03 Apr 2012 10:58:26 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120216 Thunderbird/10.0.1
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1333463421.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1333463421.git.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3] [PATCH 0/1] Qt3 rebuild fix
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
X-List-Received-Date: Tue, 03 Apr 2012 17:58:27 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/03/2012 07:31 AM, Paul Eggleton wrote:
> The following change since commit a1c72ecf80c0ded21709aa667c41d65399e4439f:
>
>    qt-x11-free: fix QA errors (2012-03-14 17:35:09 +0000)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib paule/qt3-fix
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-fix
>
> Paul Eggleton (1):
>    qt-x11-free: fix build failure in do_configure
>
>   recipes-qt3/qt3/qt-x11-free-common.inc |    3 +--
>   1 files changed, 1 insertions(+), 2 deletions(-)
>

Merged into meta-qt3

Thanks
	Sau!

