Return-Path: <cnxsoft@cnx-software.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65918E003E1
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 00:52:15 -0800 (PST)
Received: by qcsd1 with SMTP id d1so1784120qcs.35
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 00:52:14 -0800 (PST)
Received: by 10.229.136.199 with SMTP id s7mr3640544qct.145.1328863934469;
	Fri, 10 Feb 2012 00:52:14 -0800 (PST)
Received: from [192.168.0.103] ([101.109.8.148])
	by mx.google.com with ESMTPS id l28sm10804114ibc.3.2012.02.10.00.52.10
	(version=SSLv3 cipher=OTHER); Fri, 10 Feb 2012 00:52:12 -0800 (PST)
Message-ID: <4F34DAB2.3010506@cnx-software.com>
Date: Fri, 10 Feb 2012 15:52:02 +0700
From: cnxsoft <cnxsoft@cnx-software.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com>
	<CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
	<4F32843F.70500@cnx-software.com>
	<E4396C3C-30C9-4878-A116-DFA1EDC638D7@gmail.com>
	<4F333A3A.8090500@intel.com> <4F3388E6.4060401@cnx-software.com>
	<4F33F808.7060202@intel.com>
In-Reply-To: <4F33F808.7060202@intel.com>
X-Gm-Message-State: ALoCoQlOfaxobZD+eI20fhODkcubAYalvEn32lglKT2IHzeUcj2CbHhAoOPzJDz3hEjy1HMo6k0T
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
X-List-Received-Date: Fri, 10 Feb 2012 08:52:15 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/02/2012 23:44, Scott Garman wrote:
> On 02/09/2012 12:50 AM, cnxsoft wrote:
>> FYI. have done some further tests with the prebuilt binaries and
>> toolchain (yocto-eglibc-i686-i586-toolchain-gmae-1.0.tar.bz2,
>> bzImage-2.6.37-qemux86-1.0.bin and
>> yocto-image-minimal-dev-qemux86-1.0.rootfs.ext3).
>>
>> With Ubuntu 11.10 (Virtual Box), it fails with the same black screen.
>> With Debian Squeeze 6.0.3 (inside Virtual Box), it works fine.
>>
>> PS: For Ubuntu, poky-qemu script to pass libGL detection.
>
> Thank you for reporting this, I have filed the following bug to track 
> this issue:
>
> http://bugzilla.pokylinux.org/show_bug.cgi?id=1971
>
> Are you using the default user interface (Unity) in your Ubuntu setup?
>
> Scott
>
Yes, I'm using the Unity user interface.

Just one detail. By mistake, yesterday I used Yocto 1.0 toolchain and 
pre-built binaries. I've tried again with with Yocto 1.1 and I did not 
need to change any script, but the black screen issue still occurs.

