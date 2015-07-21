Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE13EE009BE; Tue, 21 Jul 2015 13:49:07 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F072E0096A
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2015 13:49:05 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jul 2015 13:49:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,518,1432623600"; d="scan'208";a="766937351"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.55])
	([10.219.4.55])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jul 2015 13:49:00 -0700
Message-ID: <55AEB069.80005@linux.intel.com>
Date: Tue, 21 Jul 2015 15:49:45 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Victor Rodriguez <vm.rod25@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org
References: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
In-Reply-To: <CAK5mtexxdYxhwvv-MB27Ur56iwAV8O3Y6ah_BPAo+R58NmNouQ@mail.gmail.com>
Subject: Re: Bug in Open CV receipt
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
X-List-Received-Date: Tue, 21 Jul 2015 20:49:07 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 07/21/2015 09:57 AM, Victor Rodriguez wrote:
> Hi team
>
> Few weeks ago I was having some problems with open CV receipt. In the
> begining I toght I was adding opencv tro my core-image-minimal-xfce
> just with this:
>
> IMAGE_INSTALL_append = " gcc gcc-dev openssh php mariadb opencv"
>
> Now after booting the image I realize that none of the libraries for
> open stack were added to my image
>
> What I had to do was the following:
>
>
> IMAGE_INSTALL_append = " libopencv-core-dev libopencv-highgui-dev
> libopencv-imgproc-dev libopencv-objdetect-dev libopencv-ml-dev
> opencv-staticdev python-opencv"
>

A recipe can produce several packages. As I can see on opencv recipe, it 
can produced the following ones:

PACKAGES="opencv-staticdev opencv-dev opencv-dbg opencv-doc opencv
opencv-apps python-opencv"

and dynamic ones (depending on what else you have install)

PACKAGES_DYNAMIC="^opencv-locale-.* ^libopencv-.*"

For the opencv case, it happens that the package opencv is empty, so you 
need to append the other sub-packages it produces into your 
IMAGE_INSTALL variable.

So, it is not a bug, this is expected.


> Even last night when one of the opencv developers ask me for python
> opencv I had to add the last part python-opencv. That is not cool at
> all . If I add opencv in the beginning I assume we are more than cool
> with that and yocto will add all the packages . Unless I am doing
> something wrong, in taht case I am more than happy to get the
> feedback.
>
> Thanks a lot for all the help . If someone else can reproduce this bug
> I am more than happy to report it in bugzila (not sure the URL)
>
> Hope it helps to cut the time of some others
>
> Best regards
>
> Victor Rodriguez
>

