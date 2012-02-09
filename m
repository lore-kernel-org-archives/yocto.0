Return-Path: <scott.a.garman@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D81FE00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 08:45:06 -0800 (PST)
Received: from mail-gy0-f180.google.com ([209.85.160.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 09 Feb 2012 08:45:06 -0800
Received: by ghbz22 with SMTP id z22so1022881ghb.25
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2012 08:45:05 -0800 (PST)
Received: by 10.50.89.137 with SMTP id bo9mr4570738igb.7.1328805905533;
	Thu, 09 Feb 2012 08:45:05 -0800 (PST)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id ub10sm5885651igb.7.2012.02.09.08.45.03
	(version=SSLv3 cipher=OTHER); Thu, 09 Feb 2012 08:45:04 -0800 (PST)
Message-ID: <4F33F808.7060202@intel.com>
Date: Thu, 09 Feb 2012 08:44:56 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com>
	<CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
	<4F32843F.70500@cnx-software.com>
	<E4396C3C-30C9-4878-A116-DFA1EDC638D7@gmail.com>
	<4F333A3A.8090500@intel.com> <4F3388E6.4060401@cnx-software.com>
In-Reply-To: <4F3388E6.4060401@cnx-software.com>
X-Gm-Message-State: ALoCoQlZUo+lwq6XSRMxRgm1zmD+Os8BfPKZsRMMcAr8bJ+xq4Q0lrSMhHzpVDW1MAIT93tJXolg
Subject: Re: Yocto in Virtualbox (Ubuntu 11.10)
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
X-List-Received-Date: Thu, 09 Feb 2012 16:45:07 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 02/09/2012 12:50 AM, cnxsoft wrote:
> FYI. have done some further tests with the prebuilt binaries and
> toolchain (yocto-eglibc-i686-i586-toolchain-gmae-1.0.tar.bz2,
> bzImage-2.6.37-qemux86-1.0.bin and
> yocto-image-minimal-dev-qemux86-1.0.rootfs.ext3).
>
> With Ubuntu 11.10 (Virtual Box), it fails with the same black screen.
> With Debian Squeeze 6.0.3 (inside Virtual Box), it works fine.
>
> PS: For Ubuntu, poky-qemu script to pass libGL detection.

Thank you for reporting this, I have filed the following bug to track 
this issue:

http://bugzilla.pokylinux.org/show_bug.cgi?id=1971

Are you using the default user interface (Unity) in your Ubuntu setup?

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

