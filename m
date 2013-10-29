Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AD20E0179E
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 03:11:52 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 29 Oct 2013 03:08:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="426381217"
Received: from timevans-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.13])
	by orsmga002.jf.intel.com with ESMTP; 29 Oct 2013 03:11:45 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: sonia verma <soniaverma9727@gmail.com>
Date: Tue, 29 Oct 2013 10:11:44 +0000
Message-ID: <9540873.ngNT0uahPc@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAJ7VayhLzFEDns3=buP+gpi3jPHXju=B856Sg6uQksAdzDvoDw@mail.gmail.com>
References: <CAJ7VayhLzFEDns3=buP+gpi3jPHXju=B856Sg6uQksAdzDvoDw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Openvswitch integration in yocto
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
X-List-Received-Date: Tue, 29 Oct 2013 10:11:56 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Sonia,

On Tuesday 29 October 2013 12:33:04 sonia verma wrote:
> For compiling openvswitch i perform following steps:-
> 
>    1.  bitbake -f -c compile openvswitch.
>    2.  bitbake openvswitch.
>    3.  bitbake fsl-image-core.
> 
> but when i get fsl-image-core-t4240rdb-20131028123337.rootfs.ext2.gz.u-boot
>  & boot the board with uImage & above file system i did not find any
> openvswitch utilities. can you please guide me to how to integrate
> openvswitch in yocto.

If you wish openvswitch to be included in your image you will need to add it
explicitly - see this section of the manual:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#usingpoky-extend-customimage

Once you have done this, steps 1 and 2 are no longer necessary.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

