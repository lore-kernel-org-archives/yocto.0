Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75CAEE00953; Sun, 23 Sep 2018 13:50:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0392FE003DB
	for <yocto@yoctoproject.org>; Sun, 23 Sep 2018 13:50:19 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	23 Sep 2018 13:50:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.54,295,1534834800"; d="scan'208";a="73111399"
Received: from yingchau-mobl4.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.141.172])
	by fmsmga008.fm.intel.com with ESMTP; 23 Sep 2018 13:50:16 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: mohamad.noor.alim.hussin@intel.com
Date: Mon, 24 Sep 2018 08:50:12 +1200
Message-ID: <3065402.BQHNVuqeqy@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
References: <1534692130-10623-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] runtime: add BSP test case for usb storage
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
X-List-Received-Date: Sun, 23 Sep 2018 20:50:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Alim,

On Monday, 20 August 2018 3:22:09 AM NZST mohamad.noor.alim.hussin@intel.com wrote:
> From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
> 
> Contain test cases to test mount/unmount the usb stick on target
> platform such as minnowboard and beaglebone. The test assume that
> the usb storage device such as usb thumb drive was plugged into
> the target device otherwise the test for would failed. It also test
> to read and write from usb thumb drive. Usb test cases start with
> mount the usb thumb drive then write and read from it. Lastly, it
> will unmount it. If the usb thumb drive unable to mount due to corrupt
> of partition or not exists, then the mount test will failed and the
> following test would skip.

Does this supersede part of your earlier "manualbsp" patch? It's not made
clear here or in the cover letter but it looks like it might.

The helper script patch needs to come before this patch rather than after it,
since this patch won't work without it.
 
> This test need to enable flag 'HARDWARE_TEST = "1"' on conf/local.conf
> file in order to run on target device. This test should be skip on qemu.

Can we use "usbhost" being in MACHINE_FEATURES and MACHINE not starting
with "qemu" to enable this instead of adding another variable? (Assuming that
sounds reasonable to everyone else)

Otherwise I agree with Mike's reply, we should avoid writing to the storage
device as part of the test.

Also, as this is patching OE-Core, the patch needs to be sent to the 
openembedded-core@lists.openembedded.org mailing list, if you could
please use that for the next revision that would be great.

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



