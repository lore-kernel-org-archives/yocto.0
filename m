Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B81FE006B4; Fri, 19 Aug 2016 18:39:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDBF7E00444
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 18:39:10 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id u7K1d92J005160
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 18:39:09 -0700 (PDT)
Received: from soho-mhatle-m.local (172.25.36.235) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.248.2;
	Fri, 19 Aug 2016 18:39:08 -0700
To: <yocto@yoctoproject.org>
References: <bd977914-50f2-b44a-b592-925f168ac199@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <e0446c96-4d86-7169-2c35-87bd04373496@windriver.com>
Date: Fri, 19 Aug 2016 20:39:08 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:45.0)
	Gecko/20100101 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <bd977914-50f2-b44a-b592-925f168ac199@windriver.com>
Subject: Re: New prelink version
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
X-List-Received-Date: Sat, 20 Aug 2016 01:39:14 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 8/18/16 10:33 AM, Mark Hatle wrote:
> I have issued a new prelink release today.
> 
> git://git.yoctoproject.org/prelink-cross
> 
> master branch: target based prelink
> new release tag: 20160818
> 
> cross_prelink branch: prelink w/ emulated 'rtld' (ld.so)
> new release tag: 20160818_cross
> 
> 
> From the README file there are a few known issues:
> 
> * The --preload option does not always work.  The preload1 test currently fails.
> 
> * quick2 test will fail if you do not have static libc installed.
> 
> * IFUNC on glibc.  glibc appears to have a bug related to specific IFUNC
> ordering.  build_local_scope in glibc is processing depth first instead of
> breadth-first processing as it should be.  The prelink-rtld version works
> around this issue.  (Prelink-rtld is only available in the cross compile
> version.)  See: https://bugzilla.yoctoproject.org/show_bug.cgi?id=9131
> 
> * ARM & PPC: both are currently failing the reloc8 and reloc9 test
> Further investigation is in progress on these items.  Until an explanation
> is found, you should hold off using this for ARM and PPC.

It was determined the above items are related to a bug most likely in binutils.
The components failed to execute even before they were prelinked.  The prelinker
is safe to use on ARM and PPC.

--Mark

> 
> Changelog for the cross_prelink follows:
> 
> Common changes:
> 
> * Update configure.ac, libelf.m4 and */Makefile.am to avoid various auto* warnings
> * Fixed a few compile warnings
> * Add testcase for YP 9131 - IFUNC problem
> * Fix LD_PRELOAD issues
> * Fix section ordering problem (required for binutils-2.22)
> 
> Cross prelink specific changes:
> 
> * rtld: resync to glibc-2.23
> * rtld: add additional debug scope support
> * rtld: Add fix for YP 9131, IFUNC problem
> 


