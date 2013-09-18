Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1462CE01422
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 10:34:45 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 18 Sep 2013 10:31:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,930,1371106800"; d="scan'208";a="397688588"
Received: from bensonmi-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.123.212])
	by fmsmga001.fm.intel.com with ESMTP; 18 Sep 2013 10:34:39 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: arun kumar <arunkr.linux@gmail.com>
Date: Wed, 18 Sep 2013 18:34:38 +0100
Message-ID: <3888748.3kOcTSHL8K@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CABG0-3x9b=VgfV95ONo2Gwxje+FiDbM=sVP8JtNyYqdDNWrnwA@mail.gmail.com>
References: <CABG0-3x9b=VgfV95ONo2Gwxje+FiDbM=sVP8JtNyYqdDNWrnwA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: adding custom packages to Yocto build
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
X-List-Received-Date: Wed, 18 Sep 2013 17:34:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Arun,

On Wednesday 18 September 2013 18:06:50 arun kumar wrote:
> I recently built my first build using Yocto and am new to OpenEmbedded
> based build systems.
> 
> How can i add/ configure what packages are built into the image?
> I want OpenCV to be present in the image that i build, what is the
> procedure to do that.
> 
> Links to appropriate documents shall be appreciated.

The best documentation for this is in the following Yocto Project Development
Manual section:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

