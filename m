Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 155D0E00D7B; Wed, 13 Jul 2016 08:16:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7612E00CD3
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 08:16:29 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP; 13 Jul 2016 08:16:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,357,1464678000"; d="scan'208";a="733655685"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jul 2016 08:16:30 -0700
Date: Wed, 13 Jul 2016 18:16:52 +0300
From: "Maxin B. John" <maxin.john@intel.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Message-ID: <20160713151652.GA6070@mbabyjoh-desk.ger.corp.intel.com>
References: <CY1PR0101MB15949FCDF452F57DF16C5374D7310@CY1PR0101MB1594.prod.exchangelabs.com>
MIME-Version: 1.0
In-Reply-To: <CY1PR0101MB15949FCDF452F57DF16C5374D7310@CY1PR0101MB1594.prod.exchangelabs.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: image-vmdk with genericx86
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
X-List-Received-Date: Wed, 13 Jul 2016 15:16:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Takashi-san,

On Wed, Jul 13, 2016 at 10:51:34AM +0000, Takashi Matsuzawa wrote:
>Hello, Yocto.
>
>Should it be possible to simply change image class of genericx86 from xxxx.hddimg to xxxx.hdddirect?
>
>I have been successfully building genericx86 image (that is image-live.bbclass based), and now trying to build it with directdisk (xxxx.hdddirect).
>
>I thought it would be simpler to use pre-existing imageclass, so I tried following after finding image-vmdk.bbclass inherits boot-directdisk.
>
>Currently my build is based on Yocto 1.8 (fido).
>
>
>(in my local.conf)
>
>IMAGE_FSTYPES_remove = " live"
>IMAGE_FSTYPES_append = " vmdk"

Instead of the above two, could you use the following line in local.conf and build again ?

IMAGE_FSTYPES += "vmdk"

>But this caused following error.
>
>I am currently looking into the class files to find the cause of error, but anyway, this should work?
>
>
>>ERROR: No IMAGE_CMD defined for IMAGE_FSTYPES entry 'vmdk' - possibly invalid type name or missing support class
>> ERROR: Function failed: do_rootfs
>> ERROR: Logfile of failure stored in:
>>/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/genericx86-poky-linux/core-image-minimal-initramfs/1.0-r0/temp/log.do_rootfs.20432
>> ERROR: Task 229
>>(/mnt/ssd2/yocto/dev/wk/x86/wk3/build-root/sources/poky/meta/recipes-core/images/core-image-minimal-initramfs.bb, do_rootfs) failed with exit code '1'


Best Regards,
Maxin

