Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 753AA4C80052
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 23:10:27 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2010 21:10:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,215,1288594800"; d="scan'208";a="678627841"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2010 21:10:17 -0800
Message-ID: <4CE4B536.7020802@linux.intel.com>
Date: Wed, 17 Nov 2010 21:10:14 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 18 Nov 2010 05:10:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
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
Also, a clarification, these values should go at the END of the file, 
which I believe is the OE Style on this.

Sau!
> The md5sum and sha256sum value can be get by:
>
> # md5sum /your_DL_DIR/ tar-1.23.tar.bz2
> 41e2ca4b924ec7860e51b43ad06cdb7e
>
> # sha256sum /your_DL_DIR/ tar-1.23.tar.bz2
> c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36
>
> Regards
> Ke
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

