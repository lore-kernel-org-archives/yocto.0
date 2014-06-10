Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 691CAE00BE1; Tue, 10 Jun 2014 08:35:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9FF8E00B83
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 08:35:26 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 10 Jun 2014 08:29:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,1009,1392192000"; d="scan'208";a="526268815"
Received: from unknown (HELO [10.255.12.194]) ([10.255.12.194])
	by orsmga001.jf.intel.com with ESMTP; 10 Jun 2014 08:35:03 -0700
Message-ID: <539725A6.6020407@linux.intel.com>
Date: Tue, 10 Jun 2014 08:35:02 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Kevyn-Alexandre_Par=E9?= <kapare@rogue-research.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
References: <CACgAsMc0XGYRvr8+Y-3DFdTOhonvACuV3K60MkqD59vRp+EWkA@mail.gmail.com>
In-Reply-To: <CACgAsMc0XGYRvr8+Y-3DFdTOhonvACuV3K60MkqD59vRp+EWkA@mail.gmail.com>
Subject: Re: How to add the same recipe twice?
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
X-List-Received-Date: Tue, 10 Jun 2014 15:35:32 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 06/09/2014 09:41 AM, Kevyn-Alexandre Paré wrote:
> Hi,
>
> Here what I want to do:
> - Have 2 different psplash in my image.
>
> Here what I have done:
> - Copy and rename the psplash recipe to psplash-desktop and modify
> couple of things.
>
psplash does some interesting package name manipulation, based on what 
additional splash files are being provided.

I am not sure if you are trying to change more than the splash image or not.
>
> Here the warning I'm having:
> WARNING: The recipe psplash-desktop is trying to install files into a
> shared area when those files already exist. Those files and their
> manifest location are:
>     /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/overo/pkgdata/runtime/psplash-default
>     Matched in manifest-overo-psplash.packagedata
> manifest-overo-psplash-second.packagedata
This seems to indicate that you might have another recipe called 
psplash-second (maybe a past attempt at this) and it's causing some issues?

Sau!
>     /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/overo/pkgdata/runtime/psplash-default.packaged
>     Matched in manifest-overo-psplash.packagedata
>     /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/sysroots/overo/pkgdata/runtime-reverse/psplash-default
>     Matched in manifest-overo-psplash.packagedata
> manifest-overo-psplash-second.packagedata
> Please verify which package should provide the above files.
> WARNING: The recipe psplash-desktop is trying to install files into a
> shared area when those files already exist. Those files and their
> manifest location are:
>     /home/knight/SVN/rogue/3rdParty/Yocto/trunk/starting_point/yocto_build/src/build/tmp/deploy/rpm/armv7a_vfp_neon/psplash-default-0.1+git0+afd4e228c6-r15.armv7a_vfp_neon.rpm
>     Matched in manifest-armv7a-vfp-neon-psplash.package_write_rpm
> Please verify which package should provide the above files.
>
> Here the error:
> http://pastebin.com/t2gYs3WT
>
> Here the diff of my psplash recipe compare to psplash original:
> http://pastebin.com/8TrQRFkQ
>
> In the chat sgw_ recommended my to use:...
> sgw_> kapare, now that I better understand, you want to mv your binary
> in the do_install_append(), and keep the update-alternative code and
> FILES_${PN} bin, but use the renamed binary in the
> ALTERNATIVE_LINK_NAME, but you also need ALTNATIVE_TARGET[psplash] =
> ${bindir}/psplash-default
>
> There is something that I'm missing...
>
> Any idea what?
>
> BR,
>
> -KA
>

