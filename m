Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBE7EE00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 08:24:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 08 Aug 2012 08:24:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,733,1336374000"; d="scan'208";a="205032416"
Received: from unknown (HELO helios.localnet) ([10.252.121.56])
	by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2012 08:24:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Giovanni Foiani <fnognn@unife.it>
Date: Wed, 08 Aug 2012 16:24:09 +0100
Message-ID: <2386331.o2z0ijfecx@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9 (Linux/3.2.0-27-generic-pae; KDE/4.9.0; i686; ; )
In-Reply-To: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
References: <CANsUPaNSFsapsHbjxcBvjDi4Yo-8eJ1trLDvycKLBX9m4RDNSg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Custom splash screen using psplash
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
X-List-Received-Date: Wed, 08 Aug 2012 15:24:11 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 08 August 2012 17:13:54 Giovanni Foiani wrote:
> I need to setup a custom splash screen replacing the Yocto logo with a
> custom image.
> I generated my logo using make-image script into psplash screen and
> replaced the previous one in meta/recipes-core/psplash/files folder.
> Then I run
> 
> 
>    - bitbake psplash -c cleansstate
>    - bitbake psplash
> 
> and then generate a new image, but during boot I still see the Yocto logo.
> Which is the right procedure?
> Does the my custom logo (a png image) have some requirements (i.e. size,
> colors, etc..)?

The yocto psplash logo comes from meta-yocto/recipes-core/psplash. Rather than 
changing the one in that directory though, the recommended way to provide your 
own splash screen is to do what meta-yocto does in your own layer (i.e. just 
copy that directory into your own layer and replace the logo there).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

