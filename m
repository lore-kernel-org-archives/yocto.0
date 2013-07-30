Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B1B9E013AE
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2013 01:27:23 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 30 Jul 2013 01:27:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,776,1367996400"; d="scan'208";a="378245758"
Received: from unknown (HELO helios.localnet) ([10.252.122.217])
	by fmsmga002.fm.intel.com with ESMTP; 30 Jul 2013 01:27:21 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
Date: Tue, 30 Jul 2013 09:27:20 +0100
Message-ID: <4728393.KjK4Yh0aOO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CA+Z6RkVbia4D2Z_1ZYnqJ4pUYPKHG8-X_C20xhVP7krt3mr=Dg@mail.gmail.com>
References: <CA+Z6RkUS6gZw3-fzW_muVBC5Cq5Wz7Bo3P+YEVJKf+1OV9=sKg@mail.gmail.com>
	<11092468.8KYSURtWvb@helios>
	<CA+Z6RkVbia4D2Z_1ZYnqJ4pUYPKHG8-X_C20xhVP7krt3mr=Dg@mail.gmail.com>
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
X-List-Received-Date: Tue, 30 Jul 2013 08:27:24 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 30 July 2013 00:08:42 Navani Srivastava wrote:
> I have done changes in .bbclass file. Could it be the reason for such
> behavior?
> Please find the attached recipe and bbclass.

I think the problem is this:

> require recipes-core/meta/meta-toolchain.bb

You shouldn't be adding this to an image recipe, and definitely not poky-
image.bbclass.

What version of the build system are you using?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

