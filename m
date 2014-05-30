Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26EA0E00BBF; Fri, 30 May 2014 03:56:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E76F3E00A44
	for <yocto@yoctoproject.org>; Fri, 30 May 2014 03:56:07 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 30 May 2014 03:55:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,940,1392192000"; d="scan'208";a="438958917"
Received: from acdivito-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.223])
	by azsmga001.ch.intel.com with ESMTP; 30 May 2014 03:55:48 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 30 May 2014 11:55:47 +0100
Message-ID: <1678042.dqjeM3hNZI@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <4D2B74E594FF4C4A97424079247E473A17DC8288@PGSMSX104.gar.corp.intel.com>
References: <4D2B74E594FF4C4A97424079247E473A17DC8288@PGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Subject: Re: [OE-core] [Repo Issue] x264: Unable to find revision
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
X-List-Received-Date: Fri, 30 May 2014 10:56:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Hui Qing,

On Friday 30 May 2014 09:44:31 Chong, Hui Qing wrote:
> Hi, I am working on Yocto Project 1.6, Daisy branch. Previously I am able to
> build the image successfully, but now I have errors as follow:
> 
> ERROR: Fetcher failure: Unable to find revision
> 585324fee380109acd9986388f857f413a60b896 in branch master even from
> upstream ERROR: Function failed: Fetcher failure for URL:
> 'git://git.videolan.org/x264.git'. Unable to fetch URL from any source.
> 
> In the x264_git.bb file, the SRC_URI and SRCREV are:
> 
> SRC_URI = "git://git.videolan.org/x264.git \
> 	        file://don-t-default-to-cortex-a9-with-neon.patch \
> 	        "
> SRCREV = "585324fee380109acd9986388f857f413a60b896"
> 
> Does anyone notice this and is there any solution for this error? Thank you.

Yes, there is a patch here:

http://patchwork.openembedded.org/patch/72933/

It should be merged fairly soon I would think, but in the mean time you can 
apply it locally.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

