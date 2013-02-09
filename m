Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 296B1E0034C
	for <yocto@yoctoproject.org>; Sat,  9 Feb 2013 06:30:42 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 09 Feb 2013 06:29:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,634,1355126400"; d="scan'208";a="283396595"
Received: from unknown (HELO helios.localnet) ([10.252.120.57])
	by orsmga002.jf.intel.com with ESMTP; 09 Feb 2013 06:30:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Date: Sat, 09 Feb 2013 14:30:19 +0000
Message-ID: <2254268.7tk7KJuRaj@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10 (Linux/3.5.0-23-generic; KDE/4.10.0; i686; ; )
In-Reply-To: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
References: <CA+gsK-oajsnY7o0BZbXvn_Yh70o5fwUnVOU+HCr6qGqXZXPPow@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [danny] core-image-minimal-dev is missing dev packages
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
X-List-Received-Date: Sat, 09 Feb 2013 14:30:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 08 February 2013 19:17:35 Rudolf Streif wrote:
> This is weird and I do not have an explanation for it. For Danny:
> 
> core-image-minimal-dev is missing the dev packages (pkg-dev)
> 
> I build it but the packages are not there. The cause does not seem to be my
> setup because the core-image-minimal on the ADT download site is missing
> them too.

I can't tell but it could be this bug, for which I have sent a patch:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=3792

(Although this doesn't prevent *all* dev packages from being included, just 
some.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

