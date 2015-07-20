Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8D23E008D7; Mon, 20 Jul 2015 08:04:44 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B452FE00895
	for <yocto@yoctoproject.org>; Mon, 20 Jul 2015 08:04:40 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 20 Jul 2015 08:04:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,508,1432623600"; d="scan'208";a="609423957"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.40])
	([10.219.4.40])
	by orsmga003.jf.intel.com with ESMTP; 20 Jul 2015 08:04:18 -0700
Message-ID: <55AD0E1E.2030805@linux.intel.com>
Date: Mon, 20 Jul 2015 10:05:02 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Lenin Muthu kumar <lenin.muthukumar@gmail.com>, 
 yocto@yoctoproject.org
References: <CAO0HP3E2LNpv=buzdVJG_PcNCW2wSCmho6GRk5x_ScWnge39mw@mail.gmail.com>
In-Reply-To: <CAO0HP3E2LNpv=buzdVJG_PcNCW2wSCmho6GRk5x_ScWnge39mw@mail.gmail.com>
Subject: Re: How to add bluetooth "bluez4" to core image sato (valleyisland)
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
X-List-Received-Date: Mon, 20 Jul 2015 15:04:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

You can add recipes (packages) through CORE_IMAGE_EXTRA_INSTALL = "pkg 1 
pkg2 ...". Regarding the specific package you want (bluez4), it is not 
on master, so you may try older stable branches.


On 07/20/2015 07:28 AM, Lenin Muthu kumar wrote:
> Hi,
>      i have created the image for atom E3800 processor (valleyisland -
> core-image-sato). now i need to add bluetooth service to that image. i need
> a detailed steps how to do it. im expecting positive reply from you. thanks
> in advance.
>
>
>

