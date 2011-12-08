Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5D4EE006B0
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 10:08:32 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Dec 2011 10:08:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="83704197"
Received: from unknown (HELO [10.255.12.35]) ([10.255.12.35])
	by azsmga001.ch.intel.com with ESMTP; 08 Dec 2011 10:08:31 -0800
Message-ID: <4EE0FD1F.9080201@linux.intel.com>
Date: Thu, 08 Dec 2011 10:08:31 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1323357349.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1323357349.git.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-qt3] [PATCH 0/5] Qt3 fixes
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
X-List-Received-Date: Thu, 08 Dec 2011 18:08:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 12/08/2011 07:18 AM, Paul Eggleton wrote:
> A fix for a compile error plus a bunch of minor tidy-ups for meta-qt3.
>
> The following changes since commit 0e9784d26df51bd564b8f23bd40a6c36969abd5c:
>
>    qt-x11-free-native: fix where qmake gets linked (2011-09-14 13:41:06 -0700)
>
> are available in the git repository at:
>    git://git.yoctoproject.org/poky-contrib paule/qt3-fixes
>    http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=paule/qt3-fixes
>
> Paul Eggleton (5):
>    qt-x11-free-native: add qt3-cstddef.patch
>    qt-x11-free: remove version 3.3.6
>    qt-x11-free: use INC_PR
>    qt-x11-free(-native): remove erroneous PROVIDES
>    classes: remove qt3e.bbclass
>
>   classes/qt3e.bbclass                        |   11 -----------
>   recipes-qt3/qt3/qt-x11-free-common.inc      |    2 +-
>   recipes-qt3/qt3/qt-x11-free-native_3.3.5.bb |    7 +++----
>   recipes-qt3/qt3/qt-x11-free_3.3.6.bb        |   13 -------------
>   recipes-qt3/qt3/qt-x11-free_3.3.7.bb        |    3 +--
>   5 files changed, 5 insertions(+), 31 deletions(-)
>   delete mode 100644 classes/qt3e.bbclass
>   delete mode 100644 recipes-qt3/qt3/qt-x11-free_3.3.6.bb
>
Merged into the meta-qt3 layer

Thanks for the fixes

Sau!

