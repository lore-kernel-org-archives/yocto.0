Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E093AE0153D
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 05:11:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Jun 2013 05:11:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,792,1363158000"; d="scan'208";a="347256869"
Received: from unknown (HELO helios.localnet) ([10.252.121.181])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jun 2013 05:10:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Seth Bollinger <seth.boll@gmail.com>
Date: Mon, 03 Jun 2013 13:10:47 +0100
Message-ID: <1979845.55KWpAQeV6@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-23-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CA+JN8xP3hNL6qmi=pDJRHAnp-3d_e2Z-=2sKncUxMq2jrRAS9Q@mail.gmail.com>
References: <CA+JN8xP3hNL6qmi=pDJRHAnp-3d_e2Z-=2sKncUxMq2jrRAS9Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: opkg list-installed is empty
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
X-List-Received-Date: Mon, 03 Jun 2013 12:11:04 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Seth,

On Monday 03 June 2013 06:49:06 Seth Bollinger wrote:
> I'm having a problem with opkg.  When I run the image I've built with the
> package-management feature and PACKAGE_CLASS equal to package_ipk, the
> image has no installed packages.  They're obviously installed, because it's
> running but "opkg list-installed" is empty.  I was expecting a large list
> of installed packages.  I don't see anything I would expect to see in
> /var/lib/opkg.  I must be missing something fundamental, but after
> reviewing the documentation and code, I'm coming up empty.  Please
> enlighten me!

If /var/lib/opkg is empty in your image, it can only be because its contents 
have been deleted; and that could be either because the value of 
IMAGE_FEATURES doesn't end up containing package-management, or alternatively 
remove_packaging_data_files is being added manually to 
ROOTFS_POSTPROCESS_COMMAND (as core-image-minimal does). I'd suggest using 
bitbake -e your-image | less and looking at the values of IMAGE_FEATURES and 
ROOTFS_POSTPROCESS_COMMAND to see what's really going on.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

