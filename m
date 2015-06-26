Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 038E8E0096A; Fri, 26 Jun 2015 12:52:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5FD3E006C6
	for <yocto@yoctoproject.org>; Fri, 26 Jun 2015 12:52:00 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jun 2015 12:52:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,686,1427785200"; d="scan'208";a="735441978"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.169])
	([10.219.4.169])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2015 12:51:59 -0700
Message-ID: <558DAD7C.4060409@linux.intel.com>
Date: Fri, 26 Jun 2015 14:52:28 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: "Daniel." <danielhilst@gmail.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
In-Reply-To: <CAF3SDA76D5CjH8s0BGSovUXqgaKkGDy0YMD7No1qZujJd69yBw@mail.gmail.com>
Subject: Re: Avoid creation of .sdcard images.
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
X-List-Received-Date: Fri, 26 Jun 2015 19:52:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/26/2015 02:45 PM, Daniel. wrote:
> Does any one knows how to avoid the creation of .sdcard images? This ones
The variable controlling the type of output images is IMAGE_FSTYPES, so 
you can redefine it under your local.conf. To see the current content, 
you can do

$bitbake -e <your image> | grep IMAGE_FSTYPES

> takes a lot of diskspace and I have to delete it periodically, which gives
> headaches about cleaning everything every time. A have an 50GB partition
> and from month to month I get out of disk space. :(
>
> Thanks in advance
>
>
>

