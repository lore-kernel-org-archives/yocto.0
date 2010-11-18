Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1349D4C803A5
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 20:43:49 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2010 18:43:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,214,1288594800"; d="scan'208";a="678597374"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 18:43:49 -0800
Received: from [10.7.199.73] (10.7.199.73) by rrsmsx603.amr.corp.intel.com
	(10.31.0.57) with Microsoft SMTP Server (TLS) id 8.2.254.0;
	Wed, 17 Nov 2010 19:43:49 -0700
Message-ID: <4CE49291.7020706@intel.com>
Date: Wed, 17 Nov 2010 18:42:25 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.12) Gecko/20101103 Fedora/1.0-0.33.b2pre.fc14
	Lightning/1.0b3pre Thunderbird/3.1.6
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>
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
X-List-Received-Date: Thu, 18 Nov 2010 02:43:50 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11/17/2010 06:32 PM, Yu, Ke wrote:
> Hi Distro folks:
>
> As Saul suggest to add SRC_URI MD5 and SHA256 checksum when we upgrade the recipes, here is a simple how-to:
>
> Two entry is needed for checksum, take meta/recipes-extended/tar/tar_1.23.bb as example:
> SRC_URI[md5sum] = "41e2ca4b924ec7860e51b43ad06cdb7e"
> SRC_URI[sha256sum] = "c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36"
>
> The md5sum and sha256sum value can be get by:
>
> # md5sum /your_DL_DIR/ tar-1.23.tar.bz2
> 41e2ca4b924ec7860e51b43ad06cdb7e
>
> # sha256sum /your_DL_DIR/ tar-1.23.tar.bz2
> c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36

Thanks Ke,

As a style note I'll mention that the usual place to put the entries in 
a recipe is after the SRC_URI line. Example:

http://git.pokylinux.org/cgit/cgit.cgi/poky/tree/meta/recipes-extended/grep/grep_2.7.bb

I tend to put a blank line between the SRC_URI and SRC_URI[checksum] 
fields, but that's just my personal preference. I think it looks best 
especially when a SRC_URI includes several patches.

Scott

-- 
Scott Garman
Embedded Linux Distro Engineer - Yocto Project

