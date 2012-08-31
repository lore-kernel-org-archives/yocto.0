Return-Path: <jfabernathy@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2670EE00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 13:20:12 -0700 (PDT)
Received: by qafk30 with SMTP id k30so1486736qaf.14
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 13:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=PPtgWTH52iyVl2RnkEvM01iMYphwpEDnoq3kHo08xa8=;
	b=EPo8dqtCtzQFqTv6NCoJ4J3oPpYGm5e6J2WKqHsUASatjNDDWf8Kk/TXNobu4R9M26
	OutdM7mSfpIC/8+Hw0qar/Lq/pnbWYfr7l7+fJIhTZY7dKIMSFxjQynWBOY2vyfRW31t
	QFM3Q+OhKxCwK4DoLGUci4BEjZVHzjTvdAbkSDi+D7YskebUTcds+OVWLTrFkuU4kCV8
	UoEoUyKkInxcgUEC5poOFyMKadFnZqqqbhcvzSmw+Hw39SWYBw8i0wndyeHsc5K2VX+B
	812R089zzxAc7zoVQc958HloPIrsXp/F+Y39Osj8UZ3rv81Oin0XfSKUdq+VmmntMYnA
	NAiw==
Received: by 10.229.135.129 with SMTP id n1mr5569985qct.32.1346444411291;
	Fri, 31 Aug 2012 13:20:11 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-32-137.dhcp.embarqhsd.net. [184.4.32.137])
	by mx.google.com with ESMTPS id gs8sm6546272qab.10.2012.08.31.13.20.08
	(version=SSLv3 cipher=OTHER); Fri, 31 Aug 2012 13:20:09 -0700 (PDT)
Message-ID: <50411C77.5080504@gmail.com>
Date: Fri, 31 Aug 2012 16:20:07 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <5037B5F5.5040105@gmail.com>
	<27A36DD288D740FA887185346F191582@intel.com>
	<5037C63E.6050507@gmail.com>
	<AB1D85DF566F4611935A07ABBD4D003E@intel.com>
	<5037C9B6.2040306@gmail.com>
	<CAJTo0LaMQkoGqojaDdFOXeELvRJow=sosoKWYnGgV_ONtRjgCg@mail.gmail.com>
	<CANFv2E=8vKRKWaK_M_OyhOY_nH5KMA08y2NcAXJLW1yPukVN0w@mail.gmail.com>
	<CAJTo0LYvmRzYX0j2HU3eD1nXt6B5URcg6EfGGo_tWUcYz1W6uA@mail.gmail.com>
	<5040FCFD.4070409@gmail.com>
	<CAJTo0LYcTE7WRj-bu4nBn_psLJ6m++xmmJaUjK5sH48rkfEX6w@mail.gmail.com>
In-Reply-To: <CAJTo0LYcTE7WRj-bu4nBn_psLJ6m++xmmJaUjK5sH48rkfEX6w@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: configuring WiFi in Yocto
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
X-List-Received-Date: Fri, 31 Aug 2012 20:20:12 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 08/31/2012 03:22 PM, Burton, Ross wrote:
> Hi Jim,
>
> On 31 August 2012 19:05, Jim Abernathy <jfabernathy@gmail.com> wrote:
>> Not sure I know how to force linux-firmware-* to be installed??
> Personally I use DISTRO_EXTRA_RDEPENDS += in my local.conf for local
> changes like that.
>
>> Also I replaced the WiFi card with an Intel Wireless-N 135, and I got a FW
>> error using it as well.  In this case it called out:
> That was probably a good move, I've not had good experience with
> realtek hardware.
>
>> lwlagn 0000:02:00.0: request for firmware file 'iwlwifi-105-5-ucode' failed
>>
>> So if could just be I don't know how to force the firmware files to get
>> included or the file does not exist in Yocto.
> That's packaged in linux-firmware (in oe-core master at least, it
> appears the Denzil needs upgrading here), so adding
> DISTRO_EXTRA_RDEPENDS += "linux-firmware" will add it to all of your
> future images.
the firmware I need must not be in the Denzil for Cedartrail BSP. It 
built fine with the DISTRO_EXTRA_RDEPENDS added, but both the Intel and 
Realtek cards can't load the firmware.

Jim A

>
> Ross


