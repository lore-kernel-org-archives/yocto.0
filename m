Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A13AE00994; Wed, 22 Apr 2015 10:58:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 623B5E0088A
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 10:58:24 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 22 Apr 2015 10:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.11,624,1422950400"; d="scan'208";a="484292898"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.14.70])
	by FMSMGA003.fm.intel.com with ESMTP; 22 Apr 2015 10:58:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Wed, 22 Apr 2015 18:58:22 +0100
Message-ID: <1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.18.9-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Wed, 22 Apr 2015 17:58:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

On Wednesday 22 April 2015 15:32:06 Brian Karcz wrote:
> I'm attempting to create a recipe for some custom applications that we want
> to include in our target image. The applications are actively developed and
> it's often desired to generate images without versioning the application
> code. It's also desired to be able to work in a source tree that is
> external to the build tree. I'm trying to determine if Yocto has a
> mechanism similar to the "source directory override" in Buildroot that
> allows you to point a package/recipe at an external directory to locate the
> source code.
>
> We have been using Poky for a couple years, but so far, have had to build
> the applications externally and use some magic in the image recipes to
> bring in the pre-built executables explicitly. We accomplished this by
> using some relative pathing in the SRC_URI and then placing the files in
> the rootfs by adding some commands to the image preprocess command.
> 
> Is there a way to create a recipe to build actively developed code located
> in an external source directory? Basically skip the fetch and unpack steps
> and always execute the compile and populate steps each time and image is
> built?

Indeed there is:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#building-software-from-an-external-source

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

