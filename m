Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F05AAE01371
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 14:30:17 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 04 Sep 2012 14:30:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,369,1344236400"; d="scan'208";a="218074665"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga001.fm.intel.com with ESMTP; 04 Sep 2012 14:30:14 -0700
Message-ID: <504672E6.7050408@linux.intel.com>
Date: Tue, 04 Sep 2012 14:30:14 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1346777221.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1346777221.git.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3][PATCH 0/2] Package group fixes for meta-qt3
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
X-List-Received-Date: Tue, 04 Sep 2012 21:30:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/04/2012 09:49 AM, Paul Eggleton wrote:
> The following changes since commit f8475d5c5935695d4d1dfff1d7be30f49e162094:
>
>    qt-x11-free: fix build failure in do_configure (2012-04-03 15:28:39 +0100)
>
> are available in the git repository at:
>
>    git://git.yoctoproject.org/poky-contrib paule/metaqt3-packagegroup-fixes
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/metaqt3-packagegroup-fixes
>
> Paul Eggleton (2):
>    task-core-qt3: rename to packagegroup-core-qt3 and tidy up
>    core-image-lsb-qt3: fix for apps-console-core removal
>
>   recipes-qt3/images/core-image-lsb-qt3.bb           |    8 +++----
>   recipes-qt3/packagegroups/packagegroup-core-qt3.bb |   16 ++++++++++++++
>   recipes-qt3/tasks/task-core-qt3.bb                 |   22 --------------------
>   3 files changed, 20 insertions(+), 26 deletions(-)
>   create mode 100644 recipes-qt3/packagegroups/packagegroup-core-qt3.bb
>   delete mode 100644 recipes-qt3/tasks/task-core-qt3.bb
>
Merged into Meta-qt3

Thanks
	Sau!


