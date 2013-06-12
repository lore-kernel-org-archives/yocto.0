Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92DF1E006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 08:35:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 12 Jun 2013 08:32:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,853,1363158000"; d="scan'208";a="352318169"
Received: from unknown (HELO helios.localnet) ([10.252.122.12])
	by orsmga002.jf.intel.com with ESMTP; 12 Jun 2013 08:34:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Jun 2013 16:34:57 +0100
Message-ID: <5296372.JDyduv7VFf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CAPhnLPBfwYOnp7rZuR8j3D8oAyQQZCTg+SLjSM77M7OA6U_c2Q@mail.gmail.com>
References: <CAPhnLPBgTbb2m+L=DSr9p8ta7gm5OsR2-N4OeXkoo31_YHTx4A@mail.gmail.com>
	<CAPhnLPCzaAVuvYVL6Nxaa4guH5nyNN4ME6KFkJNvo4+zW=Cvuw@mail.gmail.com>
	<CAPhnLPBfwYOnp7rZuR8j3D8oAyQQZCTg+SLjSM77M7OA6U_c2Q@mail.gmail.com>
MIME-Version: 1.0
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: 1.4.1 rc1 available for testing
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
X-List-Received-Date: Wed, 12 Jun 2013 15:35:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 June 2013 00:12:35 Flanagan, Elizabeth wrote:
> Ok, we have the start of a build.
> 
> The issue was due to not being able to checkout bitbake during the
> nightly-oecore build because we had set the branch to dylan (which
> doesn't exist).
> 
> The new location (with what should be the same git hashes) is at:
> 
> http://autobuilder.yoctoproject.org/pub/nightly/20130612-5
> 
> This should only take a few hours to build out, so please check back
> in about 3 hours as there should be a fair amount of artifacts to
> begin testing.

This build has finished successfully :) so 1.4.1 rc1 testing should be able to 
go ahead now.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

