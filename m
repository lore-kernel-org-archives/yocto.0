Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E796E00E23; Thu, 10 May 2018 04:02:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CE71E009F8
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 04:02:01 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 May 2018 04:02:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,385,1520924400"; d="scan'208";a="38249988"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga007.fm.intel.com with ESMTP; 10 May 2018 04:02:00 -0700
To: Piotr Piwko <piotr.piwko@gmail.com>, Qi.Chen@windriver.com
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
	<CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <c50b3475-6012-0010-c1d7-6d7df557b396@linux.intel.com>
Date: Thu, 10 May 2018 13:54:26 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Check IMAGE_FEATURES content in recipe
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
X-List-Received-Date: Thu, 10 May 2018 11:02:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/10/2018 11:59 AM, Piotr Piwko wrote:
>     For 'read-only-rootfs' image feature, tweaks are done in functions
>     executed after generating rootfs.
>     meta/classes/rootfs-postcommands.bbclass:ROOTFS_POSTPROCESS_COMMAND
>     += '${@bb.utils.contains("IMAGE_FEATURES", "read-only-rootfs",
>     "read_only_rootfs_hook; ", "",d)}'
> 
>     Can you use a similar approach to solve your problem?
> 
> 
> Unfortunately, I can not. I would like to make a pkg_postinst() function 
> of my package dependent on the rootfs mount mode. It should be different 
> if the rootfs is going to be mounted as read-only.

You should be able to move the contents of the pkg_postinst to the hook. 
Actually two hooks: one for read only rootfs, another for read-write. 
Add this to your image recipe:

ROOTFS_POSTPROCESS_COMMAND += '${@bb.utils.contains("IMAGE_FEATURES", 
"read-only-rootfs", "piotrs_ro_rootfs_hook; ", "piotrs_rw_rootfs_hook; 
",d)}'


and implement the hook functions accordingly. By the time the hooks are 
executed, the package is already installed, so you can access its files 
as needed.

Alex

