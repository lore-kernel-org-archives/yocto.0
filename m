Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00FADE011B9
	for <yocto@yoctoproject.org>; Mon, 28 Oct 2013 04:05:57 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 28 Oct 2013 04:02:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="425884471"
Received: from mmckenna-mobl1.ger.corp.intel.com (HELO helios.localnet)
	([10.252.120.252])
	by orsmga002.jf.intel.com with ESMTP; 28 Oct 2013 04:05:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Sandeep G.R" <grsandeep85@gmail.com>
Date: Mon, 28 Oct 2013 11:05:51 +0000
Message-ID: <1385671.jQL6qvobNp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAKP9-Siz-+PmGtvc+BG6bNq3M8uPMG_qxGx+s75wD=T81hUxzA@mail.gmail.com>
References: <CAKP9-SgzGG8bLJsu1X1qTDyELnXZCb0B-Xj+rdJvi7Bzg=ATsA@mail.gmail.com>
	<CAE_REAucf4Epi1v=xfEGYhLvc1bG_cDDTrUfzxrYJX1jjPyHMQ@mail.gmail.com>
	<CAKP9-Siz-+PmGtvc+BG6bNq3M8uPMG_qxGx+s75wD=T81hUxzA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to bring up "apt and dpkg" packages on yocto
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
X-List-Received-Date: Mon, 28 Oct 2013 11:05:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 22 October 2013 08:10:15 Sandeep G.R wrote:
>       I have selected PACKAGE_CLASSES ?= "package_rpm package_deb" and
> IMAGE_FSTYPE is tar.gz

"package_deb" must be listed first in PACKAGE_CLASSES if you wish to use it for 
constructing your image. You will also need to have "package-management" in 
IMAGE_FEATURES if you want apt/dpkg and the package manager data to be 
installed into the image itself.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

