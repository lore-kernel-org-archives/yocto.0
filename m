Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B034BE00B9C; Thu, 11 Feb 2016 00:46:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FD35E00ADD
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 00:46:03 -0800 (PST)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 11 Feb 2016 00:46:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,430,1449561600"; d="scan'208";a="46094945"
Received: from linux.intel.com ([10.23.219.25])
	by fmsmga004.fm.intel.com with ESMTP; 11 Feb 2016 00:46:02 -0800
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.51])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 9786C6A4002;
	Thu, 11 Feb 2016 01:33:53 -0800 (PST)
Date: Thu, 11 Feb 2016 08:36:27 +0200
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: "Usman, Fahad" <Fahad_Usman@mentor.com>
Message-ID: <20160211063627.GA4868@linux.intel.com>
References: <56BB7201.4080904@mentor.com>
MIME-Version: 1.0
In-Reply-To: <56BB7201.4080904@mentor.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: wic: Setting partition id value?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 11 Feb 2016 08:46:07 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Feb 10, 2016 at 10:23:13PM +0500, Usman, Fahad wrote:
> Hi,
> Is there a way to create a partition with an arbitrary partition id,
> using wic tool. We want to create a disk image using wic for Altera
> Cyclone V. It require the partition id to be set to a particular hex
> value for the partition it reads the boot loader binary from. The
> partition id does get set automatically to the correct value
> depending on the value of fstype (eg. 0x83 for ext3 or 0x0c for
> fat32), but I couldn't find a way to set it to an arbitrary value.
>

This is not supported by wic, but shouldn't be hard to implement.
Please create an issue in bugzilla and assign to me if you want me to
do it.

--
Regards,
Ed

