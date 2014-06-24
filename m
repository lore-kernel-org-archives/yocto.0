Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59E21E005A2; Tue, 24 Jun 2014 12:07:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00486E003C1
	for <yocto@yoctoproject.org>; Tue, 24 Jun 2014 12:07:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s5OJ7D4P022007
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 24 Jun 2014 12:07:13 -0700 (PDT)
Received: from [128.224.56.84] (128.224.56.84) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.169.1;
	Tue, 24 Jun 2014 12:07:12 -0700
Message-ID: <53A9CC5F.3060407@windriver.com>
Date: Tue, 24 Jun 2014 15:07:11 -0400
From: Randy MacLeod <randy.macleod@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Guo, Yejun" <yejun.guo@intel.com>
References: <854E8DBA9F41904AB047E03BB6963AE501A0E62E@SHSMSX101.ccr.corp.intel.com>	<CAJTo0LYkrBTcbrSOAyce0tZN6WZJ=9jPOSjYpdr1WnCEY5bfwA@mail.gmail.com>
	<854E8DBA9F41904AB047E03BB6963AE501A0F8F6@SHSMSX101.ccr.corp.intel.com>
In-Reply-To: <854E8DBA9F41904AB047E03BB6963AE501A0F8F6@SHSMSX101.ccr.corp.intel.com>
X-Originating-IP: [128.224.56.84]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to set LICENSE for llvm in .bb file
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
X-List-Received-Date: Tue, 24 Jun 2014 19:07:19 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 14-04-03 04:54 AM, Guo, Yejun wrote:
> Thank you Ross, what I actually need is llvm+clang, it is a very good reference for me to resolve the license issue, and the SYSROOT_PREPROCESS_FUNCS knowledge to resolve llvm-config issue.
>
>
> Thanks
> Yejun

Yejun,

Did you ever produce a recipe to build clang?

Are you also trying to build all of YP with it?

A student that worked with me did some work to use
clang to build yocto packages:

http://lists.openembedded.org/pipermail/openembedded-core/2013-November/086275.html

so I'd be interested in hearing about your work.

../Randy


>
>
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com]
> Sent: Thursday, April 03, 2014 2:01 PM
> To: Guo, Yejun
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] how to set LICENSE for llvm in .bb file
>
> On 3 April 2014 03:16, Guo, Yejun <yejun.guo@intel.com> wrote:
>> I'm adding package llvm which has its own license: University of Illinois/NCSA Open Source License, see at http://llvm.org/releases/3.4/LICENSE.TXT .  I tried something for LICENSE in .bb file, but is not recognized by the system. Could you please let me know how to set this value? Thanks a lot!
>
> LLVM is already packaged outside of oe-core:
>
> http://layers.openembedded.org/layerindex/branch/master/recipes/?q=llvm
>
> Ross
>


-- 
# Randy MacLeod. SMTS, Linux, Wind River
Direct: 613.963.1350

