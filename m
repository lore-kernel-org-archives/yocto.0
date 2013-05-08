Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E2D9E0148D
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 09:07:19 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 08 May 2013 09:06:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,635,1363158000"; d="scan'208";a="299464884"
Received: from unknown (HELO helios.localnet) ([10.255.13.1])
	by azsmga001.ch.intel.com with ESMTP; 08 May 2013 09:06:56 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Wed, 08 May 2013 17:06:55 +0100
Message-ID: <5184624.GY9VR8Da3d@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CANwz6nyTMRVp6daU0GNR8fBnEJam-yshPdorAgYn6-M72XLJRQ@mail.gmail.com>
References: <CANwz6nyTMRVp6daU0GNR8fBnEJam-yshPdorAgYn6-M72XLJRQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Denys Dmytriyenko <denys@ti.com>
Subject: Re: netbase upgrade with meta-ti
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
X-List-Received-Date: Wed, 08 May 2013 16:07:20 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 08 May 2013 09:15:32 Edward Vidal wrote:
> I am using Yocto with meta-ti to create beaglebone and pandaboard
> core-image-sato files.
> The following version of poky
> commit 84d45db4ddced96c736f106f8122eefadf925c41
> Author: Darren Hart <dvhart@linux.intel.com>
> Date:   Wed May 1 13:43:33 2013 -0700
> 
>     grub-efi-native: Cleanup whitespace
> 
>     A few of the recent commits have used inconsistent whitespace with
>     respect to tabs and spaces for indentation and alignment. Correct it.
> 
>     (From OE-Core rev: 3472c1f7ab409cd91c1d4782d9e00880b84e3ae8)
> 
>     Signed-off-by: Darren Hart <dvhart@linux.intel.com>
>     Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> The new version of poky updated netbase from netbase_5.0 to netbase_5.1
> This still works for my beagleboard but not for qemuarm.
> The version of meta-ti that I am using which had worked up until 04/29/13
> was
> commit 5e6fb2bcf1fff597ebb0334bbf4a36ab027965d2
> Author: Denys Dmytriyenko <denys@ti.com>
> Date:   Fri Apr 26 17:23:05 2013 -0400
> 
>     linux-am335x-psp: fix typo in the filename to use underscore
> 
>     Signed-off-by: Denys Dmytriyenko <denys@ti.com>
> What is the procedure to update meta-ti from netbase_5.0 to netbase_5.1

Looks like this has already been done a day or two ago in meta-ti:

http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/commit/?id=de8061b927a80e3081327748141da939f09fe633

What has been missed however is that the interfaces file is now in
init-ifupdown rather than netbase, so this will need to be changed as
well.

FYI there is a specific mailing list for the meta-ti layer:

  https://lists.yoctoproject.org/listinfo/meta-ti

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

