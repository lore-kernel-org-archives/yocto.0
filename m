Return-Path: <josh@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68A7DE01372
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 16:52:44 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Feb 2012 16:52:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="64247400"
Received: from unknown (HELO [10.255.15.17]) ([10.255.15.17])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Feb 2012 16:52:43 -0800
Message-ID: <4F31C75B.2090703@linux.intel.com>
Date: Tue, 07 Feb 2012 16:52:43 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
In-Reply-To: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Wed, 08 Feb 2012 00:52:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 15/12/11 13:47, Chris Tapp wrote:
> Is anyone on this list considering (or working on) a BSP for the
> Raspberry Pi (http://www.raspberrypi.org/faqs) ?
>
> For those that haven't seen it, it's a credit-card sized 'home pc' aimed
> primarily at educational users that includes a 700MHz ARM11 core, HDMI,
> OpenGL ES 2.0, ethernet and audio for about $35. It will be supporting
> Debian, Fedora and ArchLinux at launch.
>
> Looks like a good board for people that want to get in to Yocto /
> embedded linux. Also looks like it's a good platform for some of my
> stuff...
>
> I would be interested in working on a BSP / distro if anyone is working
> on it or would like to work on it.

Somehow they managed to convince Broadcom to release a datasheet for the 
SoC: http://www.raspberrypi.org/archives/615

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

