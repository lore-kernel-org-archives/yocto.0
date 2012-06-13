Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2046E01304
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 03:36:54 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Jun 2012 03:36:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="155718933"
Received: from unknown (HELO helios.localnet) ([10.252.120.116])
	by azsmga001.ch.intel.com with ESMTP; 13 Jun 2012 03:36:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Kilou Zelabia <kilou_zellabia@yahoo.fr>
Date: Wed, 13 Jun 2012 11:36:53 +0100
Message-ID: <3253756.XyKUTHyTzc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-24-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <1339576712.71285.YahooMailNeo@web171303.mail.ir2.yahoo.com>
References: <1339576712.71285.YahooMailNeo@web171303.mail.ir2.yahoo.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ERROR : QA issue : package AAAA rdepends on BBBB-dev
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
X-List-Received-Date: Wed, 13 Jun 2012 10:36:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 13 June 2012 09:38:32 Kilou Zelabia wrote:
> What does this mean ? Why it is forbidden to have a run-time dependency on a
> "-dev" package ?

Because that's usually not correct. The -dev package includes headers and 
other development files for the target. Is that really what package AAAA needs 
at runtime?

> I'v seen some recipes setting INSANE_SKIP to "1" can this helps ?

You would need to use INSANE_SKIP_AAAA += "dev-deps". But I would encourage 
you to verify that this is what you really need before doing it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

