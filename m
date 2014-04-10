Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52F54E00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 06:33:10 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 10 Apr 2014 06:31:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,834,1389772800"; d="scan'208";a="490762412"
Received: from pbrannig-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.73])
	by orsmga001.jf.intel.com with ESMTP; 10 Apr 2014 06:31:31 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Romain <romain145@gmail.com>
Date: Thu, 10 Apr 2014 14:31:29 +0100
Message-ID: <2070676.utD6R3GvnO@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Thu, 10 Apr 2014 13:33:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Romain,

On Tuesday 08 April 2014 18:10:11 Romain wrote:
> While building an image I get those notes, and I would like to lock down
> the providers for sshd and jpeg :
> NOTE: multiple providers are available for runtime sshd (openssh, dropbear)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd
> NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
> 
> I tried a few syntax in the local.conf, but none of them seem to work :
> PREFERRED_PROVIDER_virtual/sshd = "ssh-server-openssh"
> PREFERRED_PROVIDER_sshd = "ssh-server-openssh"
> PREFERRED_PROVIDER_sshd = "openssh"
> PREFERRED_PROVIDER_openssh = "sshd"

Of these, only PREFERRED_PROVIDER_sshd = "openssh" would be expected to work. 
However, testing it locally I think there is a problem here; I'll do some more 
investigation. 

That said, one workaround would be to find where you have "sshd" in RDEPENDS or 
IMAGE_INSTALL and just use the specific name (openssh-sshd) in there instead. 
(I'm assuming this is in one of your layers or modifications since we don't 
have runtime dependencies on "sshd" in the core itself.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

