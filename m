Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B7BFE00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 06:09:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 10 Apr 2014 06:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,834,1389772800"; d="scan'208";a="518315147"
Received: from pbrannig-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.73])
	by fmsmga002.fm.intel.com with ESMTP; 10 Apr 2014 06:07:58 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 10 Apr 2014 14:07:56 +0100
Message-ID: <1761308.r3BnVYaKvx@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CAE_REAtFPsY4T-NKTzq10uPqtiGRDeJtPpPukNd6ttWp0G=5Rg@mail.gmail.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
	<CAKfC58saGQftdHrdUgpXa2s3OfCYrCizSh1oR=ZoxsLv5eVUeQ@mail.gmail.com>
	<CAE_REAtFPsY4T-NKTzq10uPqtiGRDeJtPpPukNd6ttWp0G=5Rg@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 13:09:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 10 April 2014 16:55:15 Gaurang Shastri wrote:
> Did you try writing in "meta/conf/distro/include/default-providers.inc "
> like below:
> 
> ==
> PREFERRED_PROVIDER_virtual/sshd ?= "openssh"
> PREFERRED_PROVIDER_virtual/jpeg ?= "jpeg"
> ==

You shouldn't modify this file directly - modifications should go into your 
custom distro config. In any case, the above is not going to do anything 
because there isn't any such target as virtual/sshd or virtual/jpeg.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

