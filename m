Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2978CE009D6; Mon, 22 Jun 2015 07:14:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69A17E009C6
	for <yocto@yoctoproject.org>; Mon, 22 Jun 2015 07:14:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 22 Jun 2015 07:14:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,659,1427785200"; d="scan'208";a="748183586"
Received: from unknown (HELO [10.219.4.159]) ([10.219.4.159])
	by fmsmga002.fm.intel.com with ESMTP; 22 Jun 2015 07:14:29 -0700
Message-ID: <55881861.5090100@linux.intel.com>
Date: Mon, 22 Jun 2015 09:14:57 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Victor Rodriguez <vm.rod25@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAK5mtexAAs35+7SPauu3ftDVbpr1A_6fcVjn14ULOb43cXAboA@mail.gmail.com>
In-Reply-To: <CAK5mtexAAs35+7SPauu3ftDVbpr1A_6fcVjn14ULOb43cXAboA@mail.gmail.com>
Subject: Re: OpenCV yocto
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
X-List-Received-Date: Mon, 22 Jun 2015 14:14:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 06/20/2015 09:22 PM, Victor Rodriguez wrote:
> HI team
>
> I am having this same problem:
>
> http://stackoverflow.com/questions/25332969/opencv-pkg-config-cannot-find-lopencv-ts-when-compiling-using-g
>
> I try to build opencv simple source code :
>
> g++ hello.cpp -o video `pkg-config --cflags --libs opencv`
>
Victor, you may take at look at this recipe (opencv_samples)

http://cgit.openembedded.org/cgit.cgi/meta-openembedded/tree/meta-oe/recipes-support/opencv/opencv-samples_2.4.bb?h=master

What I can see, seems that the `pkg-config --libs openvc` is missing on 
your bb.


> But got this error :
>
> /usr/lib/gcc/i586-poky-linux/4.9.2/../../../../i586-poky-linux/bin/ld:
> cannot find -lopencv_ts
> collect2: error: ld returned 1 exit status
>
> My local.conf is like this :
>
> EXTRA_IMAGE_FEATURES = "debug-tweaks tools-sdk"
> IMAGE_INSTALL_append = " mpich mpich-dev gcc gcc-dev openssh php mariadb opencv"
> LICENSE_FLAGS_WHITELIST = "commercial"
> CORE_IMAGE_EXTRA_INSTALL += "libopencv-core-dev libopencv-highgui-dev
> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev"
>
>
> All the help is more than welcome
>
> Best regards
>
> Victor Rodriguez
>

