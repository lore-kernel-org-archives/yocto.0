Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 496CCE00A44; Fri, 16 Mar 2018 03:37:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0555E006E9
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 03:37:46 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Mar 2018 03:37:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,315,1517904000"; d="scan'208";a="35545040"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 16 Mar 2018 03:37:45 -0700
To: "Peter A. Bigot" <pab@pabigot.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <a2bf42e9-7edf-afab-9abd-41f02161d832@pabigot.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <a97d3802-8332-536c-af89-71ec0af0edf9@linux.intel.com>
Date: Fri, 16 Mar 2018 12:31:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <a2bf42e9-7edf-afab-9abd-41f02161d832@pabigot.com>
Subject: Re: package manager contamination in state?
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
X-List-Received-Date: Fri, 16 Mar 2018 10:37:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/15/2018 10:12 PM, Peter A. Bigot wrote:
> While attempting to diagnose a package index problem visible on current
> poky head I changed local.conf from:
> 
> PACKAGE_CLASSES ?= "package_rpm"
> 
> to
> 
> PACKAGE_CLASSES ?= "package_deb"

Note that we don't test deb packaging all that well. I'm not even sure 
images are regularly built with it on the autobuilder. It does seem like 
apt has some kind of dependency problem where dnf sees none.


Alex

