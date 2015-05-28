Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 965E7E009E5; Thu, 28 May 2015 00:57:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DCB4E009A1
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 00:57:29 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 28 May 2015 00:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,511,1427785200"; d="scan'208";a="499293562"
Received: from mmwhyte-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.3.20])
	by FMSMGA003.fm.intel.com with ESMTP; 28 May 2015 00:57:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Burton, Ross" <ross.burton@intel.com>,
	"mar.krzeminski" <mar.krzeminski@gmail.com>
Date: Thu, 28 May 2015 08:57:24 +0100
Message-ID: <59702342.fYMEjU6vFU@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <CAJTo0LY3xtoy6Hke0tjo+D+PHWd=6+vR7x3k0qRoHBzeHLWTWw@mail.gmail.com>
References: <5566050D.9090705@gmail.com>
	<CAJTo0LY3xtoy6Hke0tjo+D+PHWd=6+vR7x3k0qRoHBzeHLWTWw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Changing VIRTUAL-RUNTIME_init_manager for initramfs image
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
X-List-Received-Date: Thu, 28 May 2015 07:57:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 27 May 2015 21:36:41 Burton, Ross wrote:
> On 27 May 2015 at 18:55, mar.krzeminski <mar.krzeminski@gmail.com> wrote:
> > I have machine and in this machine I have two images. One of this images
> > is image for kernel initramfs.
> > In this image I want to change init manager to busybox mdev, while ine the
> > other one I use udev.
> > I can do that by changing VIRTUAL-RUNTIME_init_manager variable.
> > And now is time for dummy qestion, but I am not sure, if I change this
> > variable
> > in particular image everything will be ok? Is this a proper way to do so?
> 
> Yes, you can have a default assignment in your distro configuration, and
> have another assignment in the image recipe that you want to have a
> different init manager.

No, I don't think you can, since these are controlled from packagegroups, not 
the image recipe. It's certainly possible to create an initramfs image where 
you don't actually use those packagegroups and therefore you can just select 
the desired init system package directly.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

