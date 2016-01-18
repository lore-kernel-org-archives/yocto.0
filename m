Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E8DBE0086B; Mon, 18 Jan 2016 12:35:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B1C0E007F2
	for <yocto@yoctoproject.org>; Mon, 18 Jan 2016 12:35:50 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 18 Jan 2016 12:35:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,313,1449561600"; d="scan'208";a="31714357"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.180.49])
	by fmsmga004.fm.intel.com with ESMTP; 18 Jan 2016 12:35:38 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Damodar Sonone <dsonone@gmail.com>
Date: Tue, 19 Jan 2016 09:35:35 +1300
Message-ID: <1501000.QOba1RWlQQ@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.3.3-300.fc23.x86_64; KDE/4.14.14; x86_64; ;
	)
In-Reply-To: <CALNP6VsQQVU58v0qBwnQjZi-jkg44XHk81kV5Ppmh33qzD9_cQ@mail.gmail.com>
References: <CALNP6VsQQVU58v0qBwnQjZi-jkg44XHk81kV5Ppmh33qzD9_cQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: QA Issue: FILES in ptest-runner-dbg
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
X-List-Received-Date: Mon, 18 Jan 2016 20:35:53 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Mon, 18 Jan 2016 17:43:32 Damodar Sonone wrote:
> I am trying to build the custom SDK using Yocto Project Jethro 2.0
> <https://www.yoctoproject.org/downloads/core/jethro20>. I added the recipe
> and layer files to support the my SDK.
> 
> $ bitbake meta-toolchain
> 
> The build fails with following error:
> 
> ERROR: QA Issue: FILES in ptest-runner-dbg recipe should not contain the
> ${D} variable as it references the local build directory not the target
> filesystem, best solution is to remove the ${D} reference [expanded-d]
> ERROR: QA Issue: FILES in ptest-runner-dbg recipe should not contain the
> ${D} variable as it references the local build directory not the target
> filesystem, best solution is to remove the ${D} reference [expanded-d]
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /ptest-runner/1.0-r0/temp/log.do_package_qa.18936
> 
> Any pointers on this will be really helpfull.

What TMPDIR path have you set in your configuration (i.e. in conf/local.conf)?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

