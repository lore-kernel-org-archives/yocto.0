Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2903E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 07:41:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 28 Aug 2013 07:38:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,976,1367996400"; d="scan'208";a="369770245"
Received: from unknown (HELO helios.localnet) ([10.252.123.7])
	by orsmga001.jf.intel.com with ESMTP; 28 Aug 2013 07:41:43 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Wed, 28 Aug 2013 15:41:42 +0100
Message-ID: <29315361.frJshNW40m@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkVO6-Szno9iG179ZEVk6DM0WMWYOHece6A_gCx89NoLFg@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<1843652.5ibqSWhFnV@helios>
	<CA+Z6RkVO6-Szno9iG179ZEVk6DM0WMWYOHece6A_gCx89NoLFg@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: bitbake -c populate_sdk -v poky-image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 28 Aug 2013 14:41:47 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 28 August 2013 13:23:04 Navani Srivastava wrote:
> Following is my image file to generate rootfs image with SDK having Qt
> support..
> I am able to build SDK successfully but on building any Qt application with
> generated SDK getting following error message-
> 
> /opt/poky/1.3.2/sysroots/EBboard-poky-linux-gnueabi//usr/include/qtopia/QtCo
> re/qglobal.h:68:21: fatal error: algorithm: No such file or directory
> compilation terminated.
> make[2]: *** [obj_rel/AdjustedTime.o] Error 1
> 
> Please suggest..

I can't tell from the little amount of the error output you've given but it 
sounds like either standard C++ headers are not installed, or they are but the 
compiler can't find them for some reason.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

