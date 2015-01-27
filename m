Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A663BE008DD; Tue, 27 Jan 2015 04:15:26 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80599E008BC
	for <yocto@yoctoproject.org>; Tue, 27 Jan 2015 04:15:13 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Jan 2015 04:15:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,474,1418112000"; d="scan'208";a="657278286"
Received: from krogon-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.16.44])
	by fmsmga001.fm.intel.com with ESMTP; 27 Jan 2015 04:15:09 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Lei, Maohui" <leimaohui@cn.fujitsu.com>
Date: Tue, 27 Jan 2015 12:15:08 +0000
Message-ID: <474124614.TO7y8lYJLD@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <1B56A49860EB2D45ADE3731B15C959FDAE6AD2@G08CNEXMBPEKD01.g08.fujitsu.local>
References: <1B56A49860EB2D45ADE3731B15C959FDAE6AD2@G08CNEXMBPEKD01.g08.fujitsu.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: When I build kernel with toolchain comes from yocto, I met an issue
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
X-List-Received-Date: Tue, 27 Jan 2015 12:15:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 23 January 2015 02:36:30 Lei, Maohui wrote:
> I compiled my kernel by toolchain that supported by yocto 1.7.
> The following is my steps:
> 1. Run the following command to install the toolchain.
>    # ./poky-lsb-glibc-x86_64-meta-toolchain-ppce500v2-toolchain-1.7.sh
> 
> 2. Set up the cross-development environment:
>    # . /opt/poky-lsb/1.7/environment-setup-ppce500v2-poky-linux-gnuspe
> 
> And then, I compiled the kernel source. But an error occurred:
> ----------------------------------------------------------------------------
> powerpc-poky-linux-gnuspe-ld: unrecognized option '-Wl,-O1'
> powerpc-poky-linux-gnuspe-ld: use the --help option for usage information
> make[1]: *** [init/mounts.o] Error 1
> make: *** [init] Error 2
> ----------------------------------------------------------------------------
> 
> I have to unset "LDFLAGS" to continue the build.
> 
> Is there some wrong with my step? Is there some good method to build a
> kernel source by the toolchain?

We generally expect the linker to be gcc rather than ld, hence our default 
value of LDFLAGS, so I think for building those bits of software that use ld 
directly (such as the kernel) it is expected that you need to either unset 
LDFLAGS or set it to a value that is appropriate for passing directly to ld 
(i.e. by removing -Wl, prefixes from all options).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

