Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6090BE00C02
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:17:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 16 Apr 2014 09:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,872,1389772800"; d="scan'208";a="514262081"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.64])
	by fmsmga001.fm.intel.com with ESMTP; 16 Apr 2014 09:17:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 16 Apr 2014 17:17:02 +0100
Message-ID: <2723535.xEbZsL9sAs@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CAM1ZcoU3JHc98j=6TbZXEdwkzHGCVCh11XJup289vYi_pQQQ+g@mail.gmail.com>
References: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
	<3854657.kzt0VK3YnP@peggleto-mobl5.ger.corp.intel.com>
	<CAM1ZcoU3JHc98j=6TbZXEdwkzHGCVCh11XJup289vYi_pQQQ+g@mail.gmail.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: non empty package group
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
X-List-Received-Date: Wed, 16 Apr 2014 16:17:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 16 April 2014 17:09:19 Katu Txakur wrote:
> yes, it does "inherit packagegroup" and all the packages are installed.
> What I would like to have is a mypackagegroup.ipk that I can copy to any
> system to install all the files, binaries.... in those recipes using "opkg
> install mypackage.ipk"
> The problem that I have is that the files, binaries... of the recipes in
> RDEPENDS_${PN} are not included in the mypackagegroup.ipk. Do you know how
> can I include them?

opkg and similar package managers simply aren't designed to work like that; 
it's expected that both devices would have access to the same package feeds 
and therefore you would just install the packagegroup package on each system 
in the same way.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

