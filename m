Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBF91E0138C
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 09:40:22 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Nov 2011 09:40:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,471,1315206000"; d="scan'208";a="34124343"
Received: from unknown (HELO helios.localnet) ([10.252.121.109])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Nov 2011 09:40:21 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 07 Nov 2011 17:40:19 +0000
Message-ID: <28713377.p70T57MiQS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.7.2 (Linux/3.0.0-12-generic-pae; KDE/4.7.2; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1111071232470.20844@localhost6.localdomain6>
References: <alpine.DEB.2.02.1111071232470.20844@localhost6.localdomain6>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Add Atom PC to list of core supported machines in README.hardware
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
X-List-Received-Date: Mon, 07 Nov 2011 17:40:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 07 November 2011 12:35:02 Robert P. J. Day wrote:
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   all of the atom pc info is already in that file, all that was
> missing was the entry for it in the early list.
> 
> diff --git a/README.hardware b/README.hardware
> index d4f7b47..462e6d1 100644
> --- a/README.hardware
> +++ b/README.hardware
> @@ -39,6 +39,7 @@ Hardware Reference Boards
> 
>  The following boards are supported by Poky's core layer:
> 
> +  * Intel Atom PC (atom-pc)
>    * Texas Instruments Beagleboard (beagleboard)
>    * Freescale MPC8315E-RDB (mpc8315e-rdb)
>    * Ubiquiti Networks RouterStation Pro (routerstationpro)

atom-pc is already listed in the section underneath ("consumer devices").

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

