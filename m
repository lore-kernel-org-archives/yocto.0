Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 605C0E014C1
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 01:12:35 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 18 Sep 2013 01:12:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,929,1371106800"; d="scan'208";a="296288992"
Received: from bensonmi-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.123.212])
	by AZSMGA002.ch.intel.com with ESMTP; 18 Sep 2013 01:12:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Hans Beckerus <hans.beckerus@gmail.com>
Date: Wed, 18 Sep 2013 09:12:32 +0100
Message-ID: <8312953.BrE7t8V9ee@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <5238AA2A.8020302@gmail.com>
References: <CAFyqS9oT-y6p7=xs22iYNvs0bv1J7AKTA5Wrg_piStiWF+z9cg@mail.gmail.com>
	<5238AA2A.8020302@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problems building util-linux when wide character support is disabled in distro
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
X-List-Received-Date: Wed, 18 Sep 2013 08:12:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Hans,

On Tuesday 17 September 2013 21:14:50 Hans Beckerus wrote:
> The way forward as I can see right
> now is to revert and put back the wide character support in libc. Unless I
> can figure out why util-linux is actually being built in the first place?
> What can cause dependencies to this package? It is not part of our
> IMAGE_FEATURES directly, nor indirectly and is not installed in our rootfs.
> But something requires it. Any hints on how to trace this back?

Look at the dot graphs produced by bitbake -g (too large to be viewed in a 
viewer, but you can look at them in text form) or use bitbake -g -u depexp 
which provides a UI for exploring dependencies.

FWIW, looking at the graphs here for core-image-minimal, udev is the most 
likely culprit unless you have something else that needs it (e.g. e2fsprogs).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

