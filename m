Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id 84F2F4C80B71
	for <yocto@yoctoproject.org>; Wed, 17 Nov 2010 17:32:25 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 17 Nov 2010 15:32:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,213,1288594800"; d="scan'208";a="858739653"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga001.fm.intel.com with ESMTP; 17 Nov 2010 15:32:25 -0800
Message-ID: <4CE46608.1010708@linux.intel.com>
Date: Wed, 17 Nov 2010 15:32:24 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.10) Gecko/20100621 Fedora/3.0.5-1.fc13 Lightning/1.0b2pre
	Thunderbird/3.0.5
MIME-Version: 1.0
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Bugzilla Reorg Take 2
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
X-List-Received-Date: Wed, 17 Nov 2010 23:32:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Folks,

After reviewing the emails from the first attempt and review bugzilla, 
there are a couple of different approaches that can be taken. It's 
important to note that bugzilla supports 3 layers, Classification, 
Product and Components, version are tracked at the Product level.

Since we have 3 Layers, there are 2 possible scenarios:

This is the Yocto Projects Bugzilla, so each "project" can have it's
own classification, I am not sure that this is the best since some of 
the projects are pretty flat the extra level does not make sense.

I am proposing the following top level classifications, containing the 
following projects (products/components) :

Yocto Projects
  - Cross-prelink
    - general
    - poky integration
  - Swabber
    - general
    - poky integration
  - Pseudo
    - general
    - poky integration
  - Eclipse Plugin
  - Anjuta Plugin
  - Yocto Image Creator (is this really standalone)?
  - Kernel
     - build
     - configuration
     - runtime
  - BSPs
     - by board??
  - Test Suite

Yocto Infrastructure
  - Autobuilder
  - Bugzilla
  - Website

Poky
  - Build System
    - bitbake
    - configuration
    - layers
    - general
  - Recipes
    - connectivity
    - core
    - devtools / tool chain
    - graphics
    - multimedia
    - demoapps
    - general
  - Documentation
    - Handbook
    - SDK
  - Security
  - SDK
    - tools
    - general

Comments?


-- 
     Sau!

Saul Wold
Yocto Component Wrangler @ Intel
Yocto Project / Poky Build System


