Return-Path: <cnxsoft@cnx-software.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 549D7E0059B
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 00:50:51 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so2930385obb.35
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2012 00:50:50 -0800 (PST)
Received: by 10.50.77.227 with SMTP id v3mr1201231igw.2.1328777450548;
	Thu, 09 Feb 2012 00:50:50 -0800 (PST)
Received: from [192.168.0.103] (118.172.58.119.adsl.dynamic.totbb.net.
	[118.172.58.119])
	by mx.google.com with ESMTPS id gw1sm4519262igb.0.2012.02.09.00.50.48
	(version=SSLv3 cipher=OTHER); Thu, 09 Feb 2012 00:50:49 -0800 (PST)
Message-ID: <4F3388E6.4060401@cnx-software.com>
Date: Thu, 09 Feb 2012 15:50:46 +0700
From: cnxsoft <cnxsoft@cnx-software.com>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F322ECE.5060004@cnx-software.com>
	<CADzUK1LbB_yr6pfO4nWsSWz4MTEyZDsMBwtn_G4qzdghPCsrhg@mail.gmail.com>
	<4F32843F.70500@cnx-software.com>
	<E4396C3C-30C9-4878-A116-DFA1EDC638D7@gmail.com>
	<4F333A3A.8090500@intel.com>
In-Reply-To: <4F333A3A.8090500@intel.com>
X-Gm-Message-State: ALoCoQknsZyb+XFfbcf0agHV5N1qQNJhbBx8TIvRsvBgxnRRadP6e0YY4CICTmo5IfqzuJuugCkN
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
X-List-Received-Date: Thu, 09 Feb 2012 08:50:51 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/02/2012 10:15, Scott Garman wrote:
> On 02/08/2012 07:11 PM, David Smoot wrote:
>>
>> On Feb 8, 2012, at 8:18 AM, cnxsoft wrote:
>>
>> On 08/02/2012 21:06, autif khan wrote:
>>> On Wed, Feb 8, 2012 at 3:14 AM, cnxsoft<cnxsoft@cnx-software.com>   
>>> wrote:
>>>> Hi,
>>>>
>>>> .255.0 oprofile.timer=1 "
>>>> Enabling opengl
>>>>
>>> So, what is the problem?
>>
>>> Qemu starts apparently fine, but the qemu window stays black.
>>
>> I would try one of the pre-built images to isolate the problem 
>> between running inside virtualbox and your build.
>
> This would be much quicker to test than my "export to VMWare Player" 
> suggestion. I'd definitely try this first.
>
> Scott
>
FYI.  have done some further tests with the prebuilt binaries and 
toolchain (yocto-eglibc-i686-i586-toolchain-gmae-1.0.tar.bz2, 
bzImage-2.6.37-qemux86-1.0.bin and 
yocto-image-minimal-dev-qemux86-1.0.rootfs.ext3).

With Ubuntu 11.10 (Virtual Box), it fails with the same black screen.
With Debian Squeeze 6.0.3 (inside Virtual Box), it works fine.

PS: For Ubuntu, poky-qemu script to pass libGL detection.



