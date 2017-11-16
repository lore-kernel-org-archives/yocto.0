Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CEC33E00D28; Thu, 16 Nov 2017 02:32:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6634FE00D07
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 02:32:01 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 Nov 2017 02:32:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,402,1505804400"; 
   d="scan'208";a="5635497"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga001.jf.intel.com with ESMTP; 16 Nov 2017 02:31:59 -0800
To: Martyn Welch <martyn.welch@collabora.co.uk>, yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
References: <1510758646-19268-1-git-send-email-martyn.welch@collabora.co.uk>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <842129f5-aa24-f8a0-0e54-f2268c33b406@linux.intel.com>
Date: Thu, 16 Nov 2017 12:32:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <1510758646-19268-1-git-send-email-martyn.welch@collabora.co.uk>
Subject: Re: [OE-core] [PATCH v3 1/2] image.bbclass: add prohibited-paths QA test
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
X-List-Received-Date: Thu, 16 Nov 2017 10:32:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 11/15/2017 05:10 PM, Martyn Welch wrote:
> Sometimes we wish to ensure that files or directories are not installed
> somewhere that may prove detrimental to the operation of the system. For
> example, this may be the case if files are placed in a directory that is
> utilised as a mount point at run time, thus making them inaccessible once
> when the mount point is being utilised.
> 
> Implement the prohibited paths QA test, which enables such locations to be
> specified in a "PROHIBITED_PATHS" variable. This implementation allows for
> a colon separated list of paths to be provided. Shell style wildcards can
> be used.

The test does nothing if PROHIBITED_PATHS is not set. Can you set it in 
core-image.bbclass to some reasonable default common to reference 
images? Something like /mnt /media /tmp /run /var/run /var/tmp (not sure 
at the moment what the mount points in those images are).

Alex

