Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 571E0E0052B; Mon, 13 Mar 2017 08:15:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28F3EE00349
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 08:15:17 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Mar 2017 08:15:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,159,1486454400"; d="scan'208";a="66932955"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by orsmga004.jf.intel.com with ESMTP; 13 Mar 2017 08:15:14 -0700
Message-ID: <1489418570.3261.62.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Sven =?ISO-8859-1?Q?Sch=F6nfeld?=
	<sven.schoenfeld@automationselektronik.de>
Date: Mon, 13 Mar 2017 09:22:50 -0600
In-Reply-To: <ecc88f5f-e58d-4ac8-8cd6-1e3ce98b061d@automationselektronik.de>
References: <ecc88f5f-e58d-4ac8-8cd6-1e3ce98b061d@automationselektronik.de>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: directory doesn't contain library
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
X-List-Received-Date: Mon, 13 Mar 2017 15:15:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-03-13 at 10:32 +0100, Sven Schönfeld wrote:
> Dear Yocto-Community
> 
>  
> 
> I’m trying to create an image containing gnash_0.8.7.bb with yocto
> morty (2.2.1) and bitbake 1.32.0. I added the folders to my
> bblayers.conf and included the recipe for gnash in my local.conf file.
> 
>  
> 
> In my bblayers.conf :
> 
>  
> 
> …
> 
> BBLAYERS = „ \
> 
>                 …
> 
>                 \
> 
>                 ${BSPDIR}/sources/meta-qt5 \
> 
>                 ${BSPDIR}/sources/meta-SFA \
> 
>                 „
> 
>  
> 
> In my local.conf:
> 
>  
> 
> …
> 
> IMAGE_INSTALL_append = „ cairo gnash“
> 
>  
> 
> LICENSE_FLAGS_WHITELIST = „commercial_ffmpeg commercial_libav
> commercial_x264“


are you using '„' or '"'? the later is the correct one.





