Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12AB4E00C50; Fri,  4 May 2018 05:47:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85300E00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 05:47:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 May 2018 05:47:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,362,1520924400"; d="scan'208";a="53173523"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 04 May 2018 05:47:10 -0700
To: Paulo Neves <ptsneves@gmail.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
Date: Fri, 4 May 2018 15:41:18 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Fri, 04 May 2018 12:47:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/04/2018 03:42 PM, Paulo Neves wrote:
> I will propose a patch with a default bb.debug, and always have the
> verbose on dnf. Let's see how it affects the performance. I cannot
> test this in a docker container because of the problems described
> below:
> 
> In the mean time I found what was happening with my slow do_rootfs. I
> was running bitbake with RPM packaging in a docker instance. It seems
> there is a problem with RPM/dnf in bitbake where it is extremely slow
> inside a docker container (1 file per second). After changing to IPK
> packages everything went smoothly.
> 
> Others have had the same problem[1]. I will later report this to
> openembedded mailing list as this effectively makes RPM unusable in a
> container. I will also provide a Dockerfile to reproduce this problem.
> 
> [1] https://github.com/moby/moby/issues/23137#issuecomment-359097008

No need to report. We have already fixed this and reported upstream:

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/rpm/files/0001-Revert-Set-FD_CLOEXEC-on-opened-files-before-exec-fr.patch

https://bugzilla.redhat.com/show_bug.cgi?id=1537564


Alex

