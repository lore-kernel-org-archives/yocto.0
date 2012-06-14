Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6893E013BB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 14:14:16 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jun 2012 14:14:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="157754812"
Received: from unknown (HELO envy.home) ([10.7.199.149])
	by orsmga002.jf.intel.com with ESMTP; 14 Jun 2012 14:14:16 -0700
Message-ID: <4FDA53DC.8090002@linux.intel.com>
Date: Thu, 14 Jun 2012 14:13:00 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CBFFBD1E.11118%belen.barros.pena@intel.com>
In-Reply-To: <CBFFBD1E.11118%belen.barros.pena@intel.com>
X-Enigmail-Version: 1.4.2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: live image types and qemu machines
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
X-List-Received-Date: Thu, 14 Jun 2012 21:14:16 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/14/2012 08:09 AM, Barros Pena, Belen wrote:
> Hi all,
> 
> The current Hob allows you to build images for a qemu machine selecting
> 'live' as your image type. To me (with my pitiful knowledge) this doesn't
> make much sense: would I want to deploy an image built for a
> virtualisation environment in a real piece of hardware?
> 
> So here goes a question: should we allow Hob users, who are mainly people
> new to the Yocto project, to select the 'live' image type when building
> images for qemu machines?
> 

In my opinion: YES. The reason is that this allows you to test the live
image format and the boot mechanism on virtualized hardware. This is a
valuable development tool.

--
Darren

> This might sound like a silly question, but it has a pretty big impact on
> the Settings dialog and on the number of variations we need to create for
> our 'Image details' screen, which appears after the build finishes and
> displays logical next steps (like run the image or deploy your image to
> external storage).
> 
> Any help with this would be much appreciated.
> 
> Thanks!
> 
> Belen
> 
> 
> 
> 
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
> 
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



