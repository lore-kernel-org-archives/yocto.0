Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F048E013DE
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2013 06:23:55 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Apr 2013 06:23:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,572,1363158000"; d="scan'208";a="329518186"
Received: from unknown (HELO helios.localnet) ([10.255.12.140])
	by fmsmga002.fm.intel.com with ESMTP; 29 Apr 2013 06:23:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 29 Apr 2013 14:23:52 +0100
Message-ID: <2300560.dNxvkzWty1@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAJTo0LbzYsOdZ_We_q6VsdfgrdGU9syaRDyXJxe-eu_tAjS0Mw@mail.gmail.com>
References: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
	<CAJTo0LbzYsOdZ_We_q6VsdfgrdGU9syaRDyXJxe-eu_tAjS0Mw@mail.gmail.com>
MIME-Version: 1.0
Cc: Jon Szymaniak <jon.szymaniak@gmail.com>
Subject: Re: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Mon, 29 Apr 2013 13:23:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 25 April 2013 15:25:10 Burton, Ross wrote:
> On 25 April 2013 15:10, Jon Szymaniak <jon.szymaniak@gmail.com> wrote:
> > In my current situation, I have a small read-only image where I can't
> > afford to ship pkg data, and wanted to gather this info on the host side
> > of things. I assume this information is tracked somewhere in the poky
> > build directory, but I'm having some trouble finding it.
> > 
> > Could someone kindly point me towards this information or the
> > documentation
> > section(s) that I may have overlooked.
> 
> In tmp/work/[machine]/[image]/[version]/ you'll find
> installed-pkgs.txt and complementary-pkgs.txt, which should be exactly
> what you want.

I would advise against using installed-pkgs.txt and complementary-pkgs.txt for 
anything; the former only includes the list of packages before complementary  
and locale package installation and is internal so it might go away at some 
point if the implementation changes.

Martin already mentioned buildhistory, that's the best choice for getting this 
information (or programmatically you can use the same method it does for 
collecting the information, i.e. calling list_installed_packages from a 
function added to ROOTFS_POSTPROCESS_COMMAND, if you prefer).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

