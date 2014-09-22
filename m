Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39CC1E00853; Mon, 22 Sep 2014 12:53:09 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D0AE00885
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 12:53:00 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Sep 2014 12:52:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,573,1406617200"; d="scan'208";a="603615085"
Received: from justinda-mobl1.ger.corp.intel.com (HELO [10.255.12.217])
	([10.255.12.217])
	by fmsmga002.fm.intel.com with ESMTP; 22 Sep 2014 12:52:59 -0700
Message-ID: <1411415577.26861.24.camel@empanada.home.network>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Summers, John S" <john.s.summers@intel.com>
Date: Mon, 22 Sep 2014 14:52:57 -0500
In-Reply-To: <AC825E12842FCA4C9E6DDED8AF00318F1FB7D767@FMSMSX106.amr.corp.intel.com>
References: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
	<AC825E12842FCA4C9E6DDED8AF00318F1FB79231@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LYt=tZxtDO0qmOT+aNNdZxMOEqfum=dXrQO1UumYkQLJA@mail.gmail.com>
	<AC825E12842FCA4C9E6DDED8AF00318F1FB7D767@FMSMSX106.amr.corp.intel.com>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Mon, 22 Sep 2014 19:53:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-09-22 at 19:19 +0000, Summers, John S wrote:
> Hi Darren,
> 
> Maybe I should elaborate a bit on what I am trying to do.  Basically,
> I am trying to develop an embedded EFI-bootable image using the
> poky-tiny distro.
> 
> I would like to be able to automate the image generation process, so
> I've been using the "wic" tool to generate the image.  Wic has been
> working great (at least it works fine with manual parameters, the -e
> argument results in a failure as described at
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=6704&list_id=cookie), but it appears that the initramfs image is not being generated properly, resulting in a kernel Panic when I load the image via UEFI.
> 

Hi,

I haven't generated a poky-tiny image with wic before, but those
undefined error messages do seem vaguely familiar to me, and I seem to
remember working around them but I can't remember the details.

Can you send me the the relevant info to try a build myself, and also
the wic command you're using (and the one that fails)?

Thanks,

Tom

> I saw that poky-tiny by default uses the following image types:
> IMAGE_FSTYPES = "ext2 cpio.gz"
> 
> This is in my foo-layer/conf/distro/foo-layer.conf file.  There's also
> a note there saying that "We don't build live as that pulls in a lot
> of dependencies for live image and the installer, like udev, grub,
> etc.  These pull in gettext, which fails to build with wide character
> support."
> 
> Does this mean that wic is not supported with poky-tiny?  If it is
> supported, are there any additional requirements for building
> initramfs images into wic generated images?
> 
> Also, I don't see core-image-minimal-initramfs added in poky-tiny as a
> PNBLACKLIST image.  Do you know of any additional configuration I need
> to get this image to build properly (either directly with bitbake or
> embedded into my recipe)?
> 
> Thanks in advance,
> Stuart
> 
> -----Original Message-----
> From: Burton, Ross [mailto:ross.burton@intel.com] 
> Sent: Monday, September 22, 2014 10:28 AM
> To: Summers, John S
> Cc: yocto@yoctoproject.org; Darren Hart
> Subject: Re: [yocto] Packages util-linux and gettext both showing undefined reference
> 
> On 22 September 2014 18:05, Summers, John S <john.s.summers@intel.com> wrote:
> > DISTRO            = "poky-tiny"
> 
> I expect this is what's causing the problem.  poky-tiny is very cut-down.  CC'ing Darren for a more informed comment.
> 
> Ross



