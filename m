Return-Path: <saul.wold@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE9B8E011B2
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 22:50:43 -0700 (PDT)
Received: from mail-pz0-f45.google.com ([209.85.210.45])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 18 Aug 2011 22:50:43 -0700
Received: by pzk33 with SMTP id 33so5107771pzk.4
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2011 22:50:43 -0700 (PDT)
Received: by 10.142.172.6 with SMTP id u6mr262437wfe.156.1313733043060;
	Thu, 18 Aug 2011 22:50:43 -0700 (PDT)
Received: from [206.191.100.36] ([206.191.100.36])
	by mx.google.com with ESMTPS id e3sm755985wfg.15.2011.08.18.22.50.42
	(version=SSLv3 cipher=OTHER); Thu, 18 Aug 2011 22:50:42 -0700 (PDT)
Message-ID: <4E4DF9B2.5060505@intel.com>
Date: Thu, 18 Aug 2011 22:50:42 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:5.0) Gecko/20110707 Thunderbird/5.0
MIME-Version: 1.0
To: Darren Hart <darren.hart@intel.com>
References: <cover.1313093647.git.dvhart@linux.intel.com>
	<4E4D7347.7090108@intel.com>
In-Reply-To: <4E4D7347.7090108@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] preempt-rt support for meta-yocto BSPs
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
X-List-Received-Date: Fri, 19 Aug 2011 05:50:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/18/2011 01:17 PM, Darren Hart wrote:
> I haven't seen this merged yet, been a week. Is there a concern with the
> series, or maybe it just got lost in the mix?
>
> Thanks,
>
> Darren
>
> On 08/11/2011 04:08 PM, Darren Hart wrote:
>> This series add build and boot tested support for the atom-pc and mpc8315e-rdb.
>> The routerstationpro and beagleboard still suffer from build failures and are
>> commented out.
>>
>> The following changes since commit 760d79558c5e35b9b0e73734bb90ebadf427f208:
>>
>>    recipes-rt: add a README documenting the contents of recipes-rt (2011-08-11 12:36:02 -0700)
>>
>> are available in the git repository at:
>>    git://git.pokylinux.org/poky-contrib dvhart/rt-yocto
>>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=dvhart/rt-yocto
>>
>> Darren Hart (2):
>>    meta-yocto: allow for virtual/kernel override
>>    meta-yocto: add linux-yocto-rt support for all meta-yocto machines
>>
>>   meta-yocto/conf/machine/mpc8315e-rdb.conf          |    2 +-
>>   meta-yocto/conf/machine/routerstationpro.conf      |    2 +-
>>   .../linux/linux-yocto-rt_3.0.bbappend              |   25 ++++++++++++++++++++
>>   3 files changed, 27 insertions(+), 2 deletions(-)
>>   create mode 100644 meta-yocto/recipes-kernel/linux/linux-yocto-rt_3.0.bbappend
>>
>
>
Pushed to Poky/Master

Sorry about this one, just got lost in the flood.

Sau!


