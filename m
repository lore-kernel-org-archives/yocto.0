Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id EE8524C80B71
	for <yocto@yoctoproject.org>; Thu, 18 Nov 2010 04:49:07 -0600 (CST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 18 Nov 2010 02:49:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,216,1288594800"; d="scan'208";a="575060873"
Received: from unknown (HELO [10.255.16.146]) ([10.255.16.146])
	by orsmga002.jf.intel.com with ESMTP; 18 Nov 2010 02:49:06 -0800
From: Joshua Lock <josh@linux.intel.com>
To: yocto@yoctoproject.org
In-Reply-To: <4CE4B9DC.9050003@intel.com>
References: <33AB447FBD802F4E932063B962385B3530383DDA@shsmsx501.ccr.corp.intel.com>
	<4CE4B536.7020802@linux.intel.com>  <4CE4B9DC.9050003@intel.com>
Date: Thu, 18 Nov 2010 10:49:00 +0000
Message-ID: <1290077340.2487.0.camel@scimitar>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.0 (2.32.0-2.fc14) 
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
X-List-Received-Date: Thu, 18 Nov 2010 10:49:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2010-11-17 at 21:30 -0800, Scott Garman wrote:
> On 11/17/2010 09:10 PM, Saul Wold wrote:
> > On 11/17/2010 06:32 PM, Yu, Ke wrote:
> >> Hi Distro folks:
> >>
> >> As Saul suggest to add SRC_URI MD5 and SHA256 checksum when we upgrade the recipes, here is a simple how-to:
> >>
> >> Two entry is needed for checksum, take meta/recipes-extended/tar/tar_1.23.bb as example:
> >> SRC_URI[md5sum] = "41e2ca4b924ec7860e51b43ad06cdb7e"
> >> SRC_URI[sha256sum] = "c9328372db62fbb1d94c9e4e3cefc961111af46de47085b635359c00a0eebe36"
> >>
> > Also, a clarification, these values should go at the END of the file,
> > which I believe is the OE Style on this.
> 
> The reason you see many OE files with the checksums at the end of the 
> file is that at one point a member of the OE community wrote a script to 
> append the values to a ton of recipes and then checked it in.
> 
> I would think that keeping the SRC_URI fields relatively close to each 
> other makes more logical sense. But I'm not going to get religious about it.

I'm willing to be religious about it. A selling point of Poky has always
been the cleaner, better maintained, metadata. 

Therefore fields which logically fit together should be kept so. Let's
keep the SRC_URI fields together please.

Cheers,
Joshua
-- 
Joshua Lock
        Intel Open Source Technology Centre


