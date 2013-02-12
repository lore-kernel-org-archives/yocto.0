Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 918EAE006DC
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 02:14:49 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 12 Feb 2013 02:14:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,648,1355126400"; d="scan'208";a="201410977"
Received: from sorvi.fi.intel.com (HELO [10.237.72.58]) ([10.237.72.58])
	by AZSMGA002.ch.intel.com with ESMTP; 12 Feb 2013 02:14:48 -0800
Message-ID: <511A1617.7010403@linux.intel.com>
Date: Tue, 12 Feb 2013 12:14:47 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120801 Thunderbird/14.0
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <511A0810.4080305@linux.intel.com>
	<F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
In-Reply-To: <F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Initramfs and systemd problems
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
X-List-Received-Date: Tue, 12 Feb 2013 10:14:49 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Ross,

On 12.02.2013 11:35, Ross Burton wrote:
> On Tuesday, 12 February 2013 at 09:14, Jukka Rissanen wrote:
>> I am building a small network appliance for tethering purposes.
>> I do not need graphics so I removed X support, also added
>> systemd from meta-ivi and upgraded connman into latest
>> 1.11 version, and also did some minor tweaks here and there.
>>
>> In beagleboard, my setup works just fine.
>> In Intel NUC device, the system refuses to boot properly.
>> The reason is the init-live.sh (http://init-live.sh) script in initramfs image,
>> it expects the USB stick to be present in /media/xxx directory.
>>
>> Because the base system uses systemd, the initramfs is
>> also using systemd but there is some things missing and
>> system will not automount the USB stick into /media.
>>
>> Is there any possibility to avoid using systemd in initramfs
>> i.e., use the udev package only, or is the only option to
>> tweak systemd setup in initramfs? Or any other suggestion
>> how to fix this?
>
>
> I'd noticed that systemd's udev is failing to live-boot too in oe-core master (which now has integrated systemd).
>
> I don't think its possible to build a second udev for the initramfs, and this is clearly a bug so we should figure out why it doesn't work.  Do you have any hints in your debugging as to what is broken?
>
> Ross

At least the systemd version in initramfs is missing

/etc/udev/rules.d/automount.rules
/etc/udev/scripts/mount.sh

that seem to be related to this issue.

Also the initializations found in /etc/init.d/udev
in the standard poky are missing in systemd version
(not sure if these are needed).


Cheers,
Jukka




