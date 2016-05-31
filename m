Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B395E00DD1; Tue, 31 May 2016 16:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1797DE00DC6
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 16:57:44 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 31 May 2016 16:57:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,398,1459839600"; d="scan'208";a="988446989"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.255.146.125])
	by orsmga002.jf.intel.com with ESMTP; 31 May 2016 16:57:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego <diego.ml@zoho.com>
Date: Wed, 01 Jun 2016 11:57:34 +1200
Message-ID: <16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.9-300.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 31 May 2016 23:57:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diego,

On Tue, 31 May 2016 18:05:19 Diego wrote:
> I've asked this question on IRC, but haven't received complete enough
> replies, so posting here.
> 
> I have my own layer with my recipes and customizations. In my layer I have
> two images, one which is the "regular OS" that runs the product
> application, and one which is the "flash OS", a minimal ramdisk OS that
> flashes the disks. I want the two images to have different fstab and
> inittab files: what is the correct way to do that? I know how to handle
> machine / arch specific differences, but I don't think there's a way to
> "dress a package depending on the image it gets included in", right?
> 
> Should I create my own IMAGE_FEATURE and hack my fstab and inittab when
> rootfs is created, sort of how the "read-only-rootfs" feature was done?
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/core-image.
> bbclass?h=fido#n77

You can do that, yes. The only other possibility is outright replacing the 
package providing the file (since you are free to specify whatever packages 
you want in the image, though you may have to break up packagegroup-core-boot 
to do it). This only works of course if either there are no dependencies on 
the package or you can satisfy any dependencies that might exist. It could be 
that for your "flash OS" image there aren't any, but it depends what it has in 
it.

It may be simpler just to hack it after the fact though. Note that you don't 
have to add an IMAGE_FEATURES item to do that - you could simply create a 
shell/python function and add a call to it in ROOTFS_POSTPROCESS_COMMAND. If 
the changes to the files are substantial you could even supply the alternative 
files in a separate package and then move them over the top of the original 
ones in the postprocessing function to save jumping through hoops adding files 
to the image recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

