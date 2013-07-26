Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6FD9E01569
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:49:40 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jul 2013 08:49:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,752,1367996400"; d="scan'208";a="376634770"
Received: from unknown (HELO helios.localnet) ([10.252.122.182])
	by fmsmga002.fm.intel.com with ESMTP; 26 Jul 2013 08:49:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Jul 2013 16:49:37 +0100
Message-ID: <1961165.AMxETSbCgv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
MIME-Version: 1.0
Cc: "navani.srivastava@lnties.com" <navani.srivastava@lnties.com>,
	Navani Srivastava <navani.srivastava@gmail.com>
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
X-List-Received-Date: Fri, 26 Jul 2013 15:49:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Navani,

On Monday 22 July 2013 16:33:48 Navani Srivastava wrote:
> I want to build meta-toolchain-qte.bb as sdk while running
> 
> "bitbake -c populate_sdk -v core-image-minimal" ..
> 
> Please suggest what changes need to be done to provide this feature?

At the moment you'll have to add something like the following to your image, 
after the "inherit image" or "inherit core-image" line:

TOOLCHAIN_HOST_TASK += "nativesdk-packagegroup-qte-toolchain-host"

You'll also need to append to the toolchain environment setup script. See what 
meta/recipes-qt/meta/meta-toolchain-qt.inc does and you should be able to do 
the same in your image recipe.

(I'd like to make this easier at some point in future, so that this extra stuff 
isn't needed.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

