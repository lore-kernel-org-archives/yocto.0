Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DEBB1E005B9
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2011 09:59:56 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Dec 2011 09:59:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="45300735"
Received: from unknown (HELO helios.localnet) ([10.252.121.254])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Dec 2011 09:59:55 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andre Haupt <andre@bitwigglers.org>
Date: Thu, 08 Dec 2011 17:59:54 +0000
Message-ID: <2114600.jU6JroCYZj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.3 (Linux/3.0.0-13-generic-pae; KDE/4.7.3; i686; ; )
In-Reply-To: <20110817091730.GA21560@localhost.localdomain>
References: <20110817091730.GA21560@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: meta-qt3: qt3-x11-native compile fix on Fedora 15 x86-64
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
X-List-Received-Date: Thu, 08 Dec 2011 17:59:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Andre,

On Wednesday 17 August 2011 11:17:30 Andre Haupt wrote:
> This patch fixes compilation of qt-x11-native_3.3.5 on Fedora 15 x86-64.
> The compiler was complainig about unknown type ptrdiff_t. Including the
> appropriate header in qvaluelist.h helps.

Unfortunately this patch seems to have fallen through the cracks. However the 
same fix has now been merged into meta-qt3. Sorry about the delay!

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

