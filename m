Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61D5FE01493
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 01:13:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 29 Aug 2013 01:13:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,981,1367996400"; d="scan'208";a="393829877"
Received: from unknown (HELO helios.localnet) ([10.252.123.55])
	by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2013 01:13:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Thu, 29 Aug 2013 09:13:01 +0100
Message-ID: <1595398.sI48yF1pnG@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkU+5fY9DAz_RCstCj1f_L9PvVEWC1pMaahKjFjjLgkrvQ@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<29315361.frJshNW40m@helios>
	<CA+Z6RkU+5fY9DAz_RCstCj1f_L9PvVEWC1pMaahKjFjjLgkrvQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
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
X-List-Received-Date: Thu, 29 Aug 2013 08:13:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 29 August 2013 10:11:31 Navani Srivastava wrote:
> In order to execute
> "bitbake -c populate_sdk poky-image" are we supposed to declare
> BUILD_ARCH or SDK_ARCH somewhere in local.conf file?
> Yocto Documentation has not mentioned anything like that. Just a doubt as
> "bitbake poky-image" is working fine though populate_sdk is giving problem..

You should set SDKMACHINE if you need the machine that runs the SDK to be a 
different architecture from the machine that you're running the build on, 
otherwise it will just use the same one.

We're aware the documentation is lacking on -c populate_sdk, and we're 
addressing that in the documentation for the next release.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

