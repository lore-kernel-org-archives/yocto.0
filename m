Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5A3AE00985; Wed, 18 Jun 2014 09:44:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 517EBE003DA
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 09:44:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 Jun 2014 09:43:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,501,1400050800"; d="scan'208";a="549919325"
Received: from tlankage-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.87])
	by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2014 09:43:26 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Francois P. Gallichand" <francois.p.gallichand@ca.abb.com>
Date: Wed, 18 Jun 2014 17:43:26 +0100
Message-ID: <4294568.gQz8zEimiU@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.7-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <da5185e814af4fd8830f3de7896e453d@AM3PR06MB195.eurprd06.prod.outlook.com>
References: <d57f9ee937d1459388fbd840265567ea@AM3PR06MB195.eurprd06.prod.outlook.com>
	<da5185e814af4fd8830f3de7896e453d@AM3PR06MB195.eurprd06.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Adding files to the hddimg
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
X-List-Received-Date: Wed, 18 Jun 2014 16:44:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Francois,

On Wednesday 18 June 2014 15:42:08 Francois P. Gallichand wrote:
> I realized that I may not have been specific enough on my problem since I
> haven't had any reply or found a solution yet.
> 
> Essentially, I need to be able to add some files to the image file itself
> (.hddimg, not the rootfs) and be able to do that automatically (and ideally
> from a custom recipe).
> 
> What I have tried so far is to extend the bootimg.bbclass. So I created my
> own class, myclass.bbclass, with the following content:
> 
> Inherit bootimg
> 
> myclass_do_bootimg() {
>                 do_bootimg
>                 cp <some files> ${HDDDIR}
> }
> 
> EXPORT_FUNCTIONS do_bootimg
> 
> And I patched image-live.bbclass to replace the "inherit bootimg" by
> "inherit myclass" (I don't know if there is a better way to do that?). But
> it seems that myclass_do_bootimg is never called, but do_bootimg is.
> 
> I also tried the following myclass.bbclass without any more success.
> 
> Inherit bootimg
> 
> do_some_function() {
>                 cp <some files> ${HDDDIR}
> }
> 
> addtask some_function after do_booimg
> 
> Can someone tell me what I'm doing wrong?

I might be wrong here but it seems to me that what you want to modify is the 
initramfs - is that right? In which case, that is constructed from an image 
recipe pointed to by INITRD_IMAGE - by default this is core-image-minimal-
initramfs, but you can point to your own modified image by setting INITRD_IMAGE 
within the image recipe (or at the configuration level).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

