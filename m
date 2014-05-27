Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89089E00B66; Tue, 27 May 2014 02:41:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C50E00985
	for <yocto@yoctoproject.org>; Tue, 27 May 2014 02:41:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2014 02:41:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,918,1392192000"; d="scan'208";a="437259466"
Received: from smoffitt-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.121])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2014 02:41:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego Sueiro <diego.sueiro@gmail.com>, Khem Raj <raj.khem@gmail.com>
Date: Tue, 27 May 2014 10:41:37 +0100
Message-ID: <14753433.5GgOzn78sU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.4-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAMCfZKGrYGkq41Fhjh8ke8sy=UzNk6Q1hNRJBywkQ1UjUUW-iQ@mail.gmail.com>
References: <CAMCfZKHhg9NzCr-DMyX2PAo4qzSYmgiiwwzrukit0T1u+G6LcQ@mail.gmail.com>
	<CAMCfZKH2nO4gt+0bkghcx=OS20AR9mnrnEOuQB6pH5G6ZbaVLg@mail.gmail.com>
	<CAMCfZKGrYGkq41Fhjh8ke8sy=UzNk6Q1hNRJBywkQ1UjUUW-iQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Setting default system python version
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
X-List-Received-Date: Tue, 27 May 2014 09:41:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diego,

On Friday 23 May 2014 12:45:20 Diego Sueiro wrote:
> Now python3-distutils returns the following on do_compile:
> 
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | 
> | Traceback (most recent call last):
> |   File "setup.py", line 45, in <module>
> |   
> |     exec(init_file.read(), d)
> |   
> |   File "<string>", line 8, in <module>
> |   File
> 
> "/<snip>/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/python3-distr
> ibute/0.6.32-ml5/distribute-0.6.32/build/src/setuptools/__init__.py", line
> 2, in <module>
> 
> |     from setuptools.extension import Extension, Library
> |   
> |   File
> 
> "/<snip>/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/python3-distr
> ibute/0.6.32-ml5/distribute-0.6.32/build/src/setuptools/extension.py", line
> 5, in <module>
> 
> |     from setuptools.dist import _get_unpatched
> |   
> |   File
> 
> "/<snip>/tmp/work/cortexa7hf-vfp-vfpv4-neon-poky-linux-gnueabi/python3-distr
> ibute/0.6.32-ml5/distribute-0.6.32/build/src/setuptools/dist.py", line 103
> 
> |     except ValueError, e:
> |                      ^
> | 
> | SyntaxError: invalid syntax
> | ERROR: python3 setup.py build_ext execution failed.
> | WARNING: exit code 1 from a shell command.
> 
> Change the python3-distutils recipe to "inherit distutils" instead "inherit
> distutils3" did the trick.

This is not the right thing to do though. We have these separate classes 
precisely to separate python 3 and python 2, and distutils.bbclass is for 
python 2. In regards to your earlier question, I don't think that we do have a 
central switch for selecting which python version should be included in your 
image - if I'm not mistaken the way our classes have been written, a single 
python module recipe either supports python 2 or 3, so you'd just install the 
version 3 recipes instead of version 2.

Khem, any ideas what could be going wrong here?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

