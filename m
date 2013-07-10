Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9B76E01476
	for <yocto@yoctoproject.org>; Wed, 10 Jul 2013 08:37:21 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jul 2013 08:34:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,1036,1363158000"; d="scan'208";a="343414973"
Received: from unknown (HELO helios.localnet) ([10.252.122.30])
	by orsmga001.jf.intel.com with ESMTP; 10 Jul 2013 08:37:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Date: Wed, 10 Jul 2013 16:37:12 +0100
Message-ID: <3455649.9S6fSLeYlp@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.4 (Linux/3.8.0-26-generic; KDE/4.10.4; i686; ; )
In-Reply-To: <CAAGt+t2Ok3YR5-2PEMOQNoBAFnWV+grDd5sdyQ9q3H6k1tnVkQ@mail.gmail.com>
References: <CAAGt+t10y_jTgOue2ZNdVJxwU1zhQDZqHmgVCfXecK-j9YhmLQ@mail.gmail.com>
	<2373789.m1KKUZrBUI@helios>
	<CAAGt+t2Ok3YR5-2PEMOQNoBAFnWV+grDd5sdyQ9q3H6k1tnVkQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: replace outdated opencv bitbake file
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
X-List-Received-Date: Wed, 10 Jul 2013 15:37:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 10 July 2013 17:21:28 Zafrullah Syed wrote:
> Thank You, I replaced with new one and build was successful.
> 
> How do i check whether OpenCV successfully integrated into my image? or Are
> there any OpenCV libs or executables to check for? Should I check them in
> rootfs.tar.bz2?

I really don't know anything about OpenCV I'm afraid. It looks like there is 
an "opencv-apps" package though so presumably that contains some useful 
applications?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

