Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id CA9AA4C81002
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 23:30:09 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2010 21:30:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="678631129"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 21:30:09 -0800
Received: from [10.255.13.107] (10.255.13.107) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 17 Nov 2010 22:30:09 -0700
Message-ID: <4CE4B9DC.9050003@intel.com>
Date: Wed, 17 Nov 2010 21:30:04 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.15) Gecko/20101027 Thunderbird/3.0.10
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>
	<4CE4B536.7020802@linux.intel.com>
In-Reply-To: <4CE4B536.7020802@linux.intel.com>
Subject: Re: BKM on add SRC_URI MD5 and SHA256 checksum
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 18 Nov 2010 05:30:10 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 09:10 PM, Saul Wold wrote:
> On 11/17/2010 06:32 PM, Yu, Ke wrote:
>> Hi Distro folks:
>>
>> As Saul suggest to add SRC_URI MD5 and SHA256 checksum when we upgrade the recipes, here is a simple how-to:
>>
>> Two entry is needed for checksum, take meta/recipes-extended/tar/tar_1.23.bb as example:
>> SRC_URI[md5sum] = "41e2ca4b924ec7860e51b43ad06cdb7e"
>> SRC_URI[sha256sum] = "c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36"
>>
> Also, a clarification, these values should go at the END of the file,
> which I believe is the OE Style on this.

The reason you see many OE files with the checksums at the end of the 
file is that at one point a member of the OE community wrote a script to 
append the values to a ton of recipes and then checked it in.

I would think that keeping the SRC_URI fields relatively close to each 
other makes more logical sense. But I'm not going to get religious about it.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

