Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E9A934C80039
	for <yocto@yoctoproject.org>; Wed, 12 Jan 2011 17:49:53 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 Jan 2011 15:49:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,314,1291622400"; d="scan'208";a="373769439"
Received: from unknown (HELO [10.255.14.60]) ([10.255.14.60])
	by azsmga001.ch.intel.com with ESMTP; 12 Jan 2011 15:49:41 -0800
Message-ID: <4D2E3E15.2070305@linux.intel.com>
Date: Wed, 12 Jan 2011 15:49:41 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.13) Gecko/20101208 Lightning/1.0b2 Thunderbird/3.1.7
MIME-Version: 1.0
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
References: <DC74E0187B44084E9AD28300B75DFE300557D6FB@orsmsx504.amr.corp.intel.com>
In-Reply-To: <DC74E0187B44084E9AD28300B75DFE300557D6FB@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Changes to the autobuilder.
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
X-List-Received-Date: Wed, 12 Jan 2011 23:49:54 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 01/08/2011 03:21 PM, Flanagan, Elizabeth wrote:
> I've made a few changes to the autobuilder that people should know
> about. Currently, we've been utilizing the milestone builders to split
> the nightly to both the internal and external builders in order to
> speed things up. I've renamed them to nightly-internal* and
> nightly-external*. They were putting their build output to the
> milestone directory on the webserver. This was incorrect behavior.
> I've changed this to make the build output go out to the nightly
> directory of the webserver: http://autobuilder.pokylinux.org/nightly.
>
> The big change is to how we deal with emenlow, atom-pc, beagleboard,
> etc. These are now found under the machines/<machine_name>/<arch>

once you've descended into machine_name, "arch" seems superfluous. Won't
it be the only directory? Would it make more sense as:

machines/arch/machine_name ?

machines
   x86
     qemux86
     atom-pc
   x86_64
     qemux86-64
   arm
     beagleboard
     beagleboard_xm

Something like that?

--
Darren

> directory in the build output web directory. I'll need to eventually
> refactor some of the autobuilder scripts to deal with BSPs a little
> more elegantly, but it's functional for now and we have a standard to
> adhere to.
>
> Also, be aware that we now have a functional CURRENT link, so if you
> go to the autobuilder/nightly/CURRENT directory this will point to the
> last thing the autobuilder built. Keep in mind, it will create that
> link even if the build is broken.  I'll have a commit with all of this
> in it when I finish up the upgrade to 0.8.3.
>
> If you have any questions, feel free to ask.
>
> -b
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Yocto Linux Kernel

