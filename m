Return-Path: <darren.hart@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60E29E0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 09:07:27 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 31 Oct 2012 09:07:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,687,1344236400"; d="scan'208";a="162923139"
Received: from unknown (HELO envy.home) ([10.255.14.134])
	by AZSMGA002.ch.intel.com with ESMTP; 31 Oct 2012 09:07:25 -0700
Message-ID: <50914C7C.7010603@intel.com>
Date: Wed, 31 Oct 2012 09:06:20 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121016 Thunderbird/16.0.1
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada>
In-Reply-To: <1351696672.1762.8.camel@empanada>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 16:07:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/31/2012 08:17 AM, Tom Zanussi wrote:
> 
> On Tue, 2012-10-30 at 19:23 -0700, nitin.a.kamble@intel.com wrote:
>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>>
>> Tested these on all BSPs i maintain with results as expected.
>> Also this testing Acks the kernel SRCREV bumps done by Tom today.
>>
> 
> I've verified this works fine on crownbay and you've verified on
> sugarbay and chiefriver, correct?
> 
> That just leaves cedartrail before we can pull this in.

fri2 and sys940x as well right?

Are you still just using gstreamer to play sindel back?

--
Darren

> 
> Tom
> 
>> Thanks,
>> Nitin
>>
>>
>> The following changes since commit 76d2942087d7563ae42f0bea6d97460ee2561f3e:
>>
>>   crystalforest: Update the README Instructions. (2012-10-30 08:47:40 -0500)
>>
>> are available in the git repository at:
>>   git://git.yoctoproject.org/meta-intel-contrib nitin/misc
>>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/misc
>>
>> Nitin A Kamble (3):
>>   libva: update to the latest version
>>   libva-intel-driver: update to the latest version
>>   mesa-dri.bbappend: avoid conflict with emgd-driver-bin
>>
>> Ross Burton (1):
>>   libva: remove redundant libva 1.0.12
>>
>>  .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |   27 +++++++++++++++++---
>>  .../libva/libva-intel-driver.inc                   |    2 +-
>>  .../libva/libva-intel-driver_1.0.15.bb             |    8 ------
>>  .../libva/libva-intel-driver_1.0.17.bb             |    9 ++++++
>>  common/recipes-multimedia/libva/libva_1.0.12.bb    |    8 ------
>>  common/recipes-multimedia/libva/libva_1.0.15.bb    |    8 ------
>>  common/recipes-multimedia/libva/libva_1.0.16.bb    |    8 ++++++
>>  7 files changed, 41 insertions(+), 29 deletions(-)
>>  delete mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.15.bb
>>  create mode 100644 common/recipes-multimedia/libva/libva-intel-driver_1.0.17.bb
>>  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.12.bb
>>  delete mode 100644 common/recipes-multimedia/libva/libva_1.0.15.bb
>>  create mode 100644 common/recipes-multimedia/libva/libva_1.0.16.bb
>>
> 
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

