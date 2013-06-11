Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B439E01594
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 16:58:26 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Jun 2013 16:58:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,848,1363158000"; d="scan'208";a="351750854"
Received: from unknown (HELO helios.localnet) ([10.252.121.243])
	by fmsmga002.fm.intel.com with ESMTP; 11 Jun 2013 16:58:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego <diego.ml@zoho.com>
Date: Wed, 12 Jun 2013 00:58:23 +0100
Message-ID: <7334223.3qN6cKa2rq@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <1810497.uZE9ivf2T0@localhost.localdomain>
References: <1810497.uZE9ivf2T0@localhost.localdomain>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to deal with non-standard license.
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
X-List-Received-Date: Tue, 11 Jun 2013 23:58:27 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diego,

On Tuesday 11 June 2013 14:28:09 Diego wrote:
> I have written a recipe which I'd like to contribute for glmark2:
> https://launchpad.net/glmark2
> 
> The last thing that puzzles me before submitting it is that it's partly
> GPL3+, and partly under this license:
> https://github.com/rafalmiel/glmark2-wl/blob/master/COPYING.SGI
> which is not in this list:
> https://wiki.yoctoproject.org/wiki/License_Infrastructure_Interest_Group#Lic
> enses Is there any way to deal with that license? What should I put in the
> LICENSE field in my recipe?

Beth has covered the part about adding the license text, the only remaining 
piece is how you should set LICENSE within your recipe; assuming you would 
call this SGI license SGI-1 based on what you said above you would set LICENSE 
as follows:

LICENSE = "GPLv3+ & SGI-1"

("&" means different licences apply to different parts of the software).

Note also that the LIC_FILES_CHKSUM variable should be set to point to both 
COPYING and COPYING.SGI.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

