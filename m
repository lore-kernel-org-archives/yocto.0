Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07AFDE00C03
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 09:02:00 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 16 Apr 2014 09:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,872,1389772800"; d="scan'208";a="494231492"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.64])
	by orsmga001.jf.intel.com with ESMTP; 16 Apr 2014 08:59:51 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Wed, 16 Apr 2014 16:59:50 +0100
Message-ID: <3854657.kzt0VK3YnP@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
In-Reply-To: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
References: <CAM1ZcoVDa-mgYRYuPJqJQ4uKHNeVz+btnfFA=FnkD1xxhiFJvw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 16 Apr 2014 16:02:02 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 16 April 2014 16:54:11 Katu Txakur wrote:
> I have some recipes that generate multiple packages.
> I also have a package group that groups all the recipes.
> I would like to use the package created with the packagegroup recipe to
> install all the files coming from my recipes into the target system. The
> aim is to have one package that will install/update all the binaries,
> libraries and config of the recipes included in the packagegroup.
> How can I include all the files in the recipes added to REDEPENDS of the
> package group into the package to do this?
> I've tried RPROVIDES but the .ipk package created from the
> mypackagegroup.bbrecipe doesn't include any of the files.

If your packagegroup recipe does "inherit packagegroup" and sets 
RDEPENDS_${PN} to depend upon the packages within the group, that will ensure 
that the packages get installed when the packagegroup's package is installed.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

