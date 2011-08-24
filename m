Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4A24E0071A
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 04:11:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 24 Aug 2011 04:11:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,274,1312182000"; d="scan'208";a="44539855"
Received: from unknown (HELO helios.localnet) ([10.255.18.135])
	by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2011 04:11:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Chris Tapp <opensource@keylevel.com>
Date: Wed, 24 Aug 2011 12:11:27 +0100
User-Agent: KMail/1.13.6 (Linux/2.6.38-10-generic-pae; KDE/4.6.2; i686; ; )
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
	<4E45AF24.5070804@mlbassoc.com>
	<42B4E483-BD49-4DC2-9007-3D424A73614D@keylevel.com>
In-Reply-To: <42B4E483-BD49-4DC2-9007-3D424A73614D@keylevel.com>
MIME-Version: 1.0
Message-Id: <201108241211.27202.paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Missing patch files in SRC_URIs
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
X-List-Received-Date: Wed, 24 Aug 2011 11:11:28 -0000
Content-Type: Text/Plain;
  charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

Hi Chris,

On Wednesday 24 August 2011 08:59:15 Chris Tapp wrote:
> bitbake doesn't seem to be detecting missing patch files. In
> a .bbappend file (for linux-wrs_git) I have:
> 
> SRC_URI += " file://defconfig"
> 
> SRC_URI_append_Vortex86DX = "\
> 	   file://there-is-no.patch;patch=1 "

FYI patch=1 is no longer necessary as of quite some time ago - the .patch (or 
.diff) extension is enough to indicate that it's a patch.

> bitbake -c patch -f virtual/kernel
> 
> runs without reporting any errors, even though linux-wrs_Vortex86DX/
> does not contain 'there-is-no.patch'.

Are you sure there is no patch of this name elsewhere in the search path for 
this recipe? This is buggy behaviour if there isn't. (bitbake -e linux-wrs | 
grep "^FILESPATH" will give you the entire path it is using.) In any case the 
directory it should search for the patch in is linux-wrs/Vortex86DX not linux-
wrs_Vortex86DX.

I'd also recommend for consistency if it's not too difficult to change at this 
point that you use an all-lowercase machine name.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

