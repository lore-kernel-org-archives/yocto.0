Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69274E00C40; Thu, 22 Mar 2018 06:37:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7801E00BFD
	for <yocto@yoctoproject.org>; Thu, 22 Mar 2018 06:37:42 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Mar 2018 06:37:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,345,1517904000"; d="scan'208";a="39670771"
Received: from linux.intel.com ([10.54.29.200])
	by fmsmga004.fm.intel.com with ESMTP; 22 Mar 2018 06:37:42 -0700
Received: from achinkov-mobl.amr.corp.intel.com (unknown [10.254.19.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTPS id BD2D45803EB;
	Thu, 22 Mar 2018 06:37:41 -0700 (PDT)
To: Vincent Daanen <vincent.daanen@orthotaxy.com>
References: <VI1P192MB0143E912A128CECB0C06CF998DA90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
From: Stephano Cetola <stephano.cetola@linux.intel.com>
Message-ID: <329cf42d-0deb-648a-728a-a22289d05ed7@linux.intel.com>
Date: Thu, 22 Mar 2018 06:37:41 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <VI1P192MB0143E912A128CECB0C06CF998DA90@VI1P192MB0143.EURP192.PROD.OUTLOOK.COM>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to "compute" path to install module file
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
X-List-Received-Date: Thu, 22 Mar 2018 13:37:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 3/22/18 12:31 AM, Vincent Daanen wrote:
> Hi, 
> 
> I’m porting the makefile to build SocketCan for Ixxat on yocto. At this
> time I successfully build the module file.

Have you checked out the CANopen drivers?
https://github.com/ros-industrial/ros_canopen
https://github.com/bmwcarit/meta-ros/tree/master/recipes-ros/ros-canopen

There are already recipes for this if it happens to work for your part.

Just figured I'd mention it :)

For adding the Ixxat driver, this documentation might help:
https://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#working-with-out-of-tree-modules

> 
> Build fails with the following error:
> 
> nothing provides kernel-module-ixx-pci-4.12.14-yocto-standard needed by
> kernel-module-ixxat-candriver-1.0-r0.qemux86_64

Do you have a recipe that provides ixx-pci? If so it needs to say:

PROVIDES = "ixx-pci"

https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PROVIDES

Also, you need to be sure that it is being built, so I would add that
recipe into some RDEPENDS variable, for example:

MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "ixx-pci"

(in this case in your machine conf, assuming the package name is "ixx-pci")

> 
> I don’t understand how yocto computes to module filename. It adds the
> kernel-version to the default filename…

check out the "module_pattern" variables in:
meta/classes/kernel-module-split.bbclass

I believe this is done during packaging.

Cheers,
Stephano


