Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABF2FE00B88; Tue,  3 Nov 2015 06:21:11 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20793E00AB5
	for <yocto@yoctoproject.org>; Tue,  3 Nov 2015 06:21:08 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 03 Nov 2015 06:21:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,239,1444719600"; d="scan'208";a="593207573"
Received: from bcrawfor-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.26.120])
	by FMSMGA003.fm.intel.com with ESMTP; 03 Nov 2015 06:21:01 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Townsend <mtownsend1973@gmail.com>
Date: Tue, 03 Nov 2015 14:20:59 +0000
Message-ID: <46665729.FfZ08QW5SE@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.11; x86_64; ; )
In-Reply-To: <CABatt_zq+Bt3w=PyTYfSM9X5TUyOYXBuVTpK8a0JH-L2HAApMQ@mail.gmail.com>
References: <CABatt_zq+Bt3w=PyTYfSM9X5TUyOYXBuVTpK8a0JH-L2HAApMQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: populate_sdk and debian packages problem
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
X-List-Received-Date: Tue, 03 Nov 2015 14:21:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Martin,

On Monday 02 November 2015 18:53:04 Martin Townsend wrote:
> I've just moved everything to fido and everything builds fine.  One of the
> reasons for moving to Fido was to use the built toolchain and create an SDK
> using populate_sdk but it is failing with the following message:
> ERROR: Unable to install packages. Command
> '/home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/sysroot
> s/x86_64-linux/usr/bin/apt-get install --force-yes --allow-unauthenticated
> nativesdk-packagegroup-sdk-host
> packagegroup-cross-canadian-am43-devboard-aquila' returned 100:
> Reading package lists...
> Building dependency tree...
> Reading state information...
> W: Unable to read
> /home/martin/ws_poweroasis/build/am43-devboard-aquila/bia-tmp-glibc/work/am4
> 3_devboard_aquila-oe-linux-gnueabi/bia-image/1.0-r0/apt-sdk/preferences.d/ -
> DirectoryExists (2: No such file or directory)
> E: Unable to locate package nativesdk-packagegroup-sdk-host
> 
> I checked the nativesdk-packagegroup-sdk-host build and it's empty.
> 
> After a bit of searching I found that a similar problem exists in Daisy and
> it was down to debian packages which I am using so I chaged to use the
> default IPK and the error message disappears.
> 
> Is this a regression? or are Debian packages not supported for SDK?

If it worked before then it's a regression. I'm afraid deb packaging is the 
least well-tested of the three packaging options, from time to time it does 
break unfortunately. Could you please file a bug at bugzilla.yoctoproject.org ?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

