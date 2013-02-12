Return-Path: <jukka.rissanen@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8231E01400
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 05:17:52 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 12 Feb 2013 05:17:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,650,1355126400"; d="scan'208";a="286142945"
Received: from sorvi.fi.intel.com (HELO [10.237.72.58]) ([10.237.72.58])
	by fmsmga001.fm.intel.com with ESMTP; 12 Feb 2013 05:17:51 -0800
Message-ID: <511A40FE.107@linux.intel.com>
Date: Tue, 12 Feb 2013 15:17:50 +0200
From: Jukka Rissanen <jukka.rissanen@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120801 Thunderbird/14.0
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <511A0810.4080305@linux.intel.com>
	<F3FDA2B8A266452C8CB34AFC4B256702@intel.com>
	<511A1617.7010403@linux.intel.com>
	<CAJTo0LYcFw_yg7_v24+VQTtHNiXzh6Uq_WEVzwfVoFzCXxNd2g@mail.gmail.com>
	<8646FD9BE034499C9DBF00E03F139C65@intel.com>
In-Reply-To: <8646FD9BE034499C9DBF00E03F139C65@intel.com>
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
X-List-Received-Date: Tue, 12 Feb 2013 13:17:52 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12.02.2013 13:50, Ross Burton wrote:
> On Tuesday, 12 February 2013 at 10:30, Burton, Ross wrote:
>> On 12 February 2013 10:14, Jukka Rissanen
>> <jukka.rissanen@linux.intel.com (mailto:jukka.rissanen@linux.intel.com)> wrote:
>>> At least the systemd version in initramfs is missing
>>>
>>> /etc/udev/rules.d/automount.rules
>>> /etc/udev/scripts/mount.sh (http://mount.sh)
>>>
>>> that seem to be related to this issue.
>>
>> Yeah, that would do it. :) That saved thirty minutes of debugging, thanks.
> I can't test an image right now, but try adding a RRECOMMENDS to the udev in the systemd recipe to udev-extraconf, as that's the package which contains the mount script.
>
> Ross
>

Thanks Ross!

Adding

RRECOMMENDS_${PN} = "udev-extraconf"

to my systemd_git.bbappend allowed the device to boot.

Probably unrelated but I cannot input anything in the console anymore, 
console output is ok thou. I have to figure out why.

I noticed one path issue in init-live.sh, will send a patch about it to ml.


Cheers,
Jukka


