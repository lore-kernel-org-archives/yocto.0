Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A812EE004F1; Thu,  3 Nov 2016 08:05:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB2AE0034A
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 08:05:20 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP; 03 Nov 2016 08:03:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,587,1473145200"; d="scan'208";a="1080108360"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 03 Nov 2016 08:03:53 -0700
To: yocto@yoctoproject.org
References: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <b1421652-aeea-7290-5241-d09b64e3f795@linux.intel.com>
Date: Thu, 3 Nov 2016 17:01:27 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.4.0
MIME-Version: 1.0
In-Reply-To: <d3a15e96-ecd8-50c5-65e2-c13937d101ee@mlbassoc.com>
Subject: Re: Shallow git clones?
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
X-List-Received-Date: Thu, 03 Nov 2016 15:05:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 11/03/2016 03:06 PM, Gary Thomas wrote:
> I recall seeing some discussion in the past about using shallow
> GIT clones when importing repositories?  Is this ever going to
> happen?
>
> The reason I ask is that I routinely save the GIT tarballs and
> some of them are obscenely obese :-(  The worst of the bunch
> is the device firmware for the RaspberryPi (as of today):
>   -rw-rw-r-- 1 gthomas gthomas 6321877646 Nov  3 12:13
> git2_github.com.raspberrypi.firmware.git.tar.gz
>
> This particular tar file increased by more than 300MB since
> the last time I downloaded it (only 2016-09-13!)  I routinely
> slosh these files across the oceans (sometimes using tin cans
> and strings it seems) and this can be very tedious.  Is there
> anything that can be done to make these files a bit more manageable?

Yes. You can investigate if the upstream produces tarball releases, and 
convince them to do it if they don't. Generally we prefer tarball 
downloads in oe-core for this exact reason, but it is not always possible.

Alex


