Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32472E0070F
	for <yocto@yoctoproject.org>; Thu, 10 Jan 2013 09:15:02 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 10 Jan 2013 09:15:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,446,1355126400"; d="scan'208";a="275438115"
Received: from rakasten-mobl1.amr.corp.intel.com (HELO envy.home)
	([10.24.1.179])
	by fmsmga002.fm.intel.com with ESMTP; 10 Jan 2013 09:15:01 -0800
Message-ID: <50EEF716.5080500@linux.intel.com>
Date: Thu, 10 Jan 2013 09:15:02 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <6F94DE12-515D-47A0-BDC6-9491AFD6849F@keylevel.com>
	<50EAFB84.9090007@linux.intel.com>
	<E4DED516-A931-4908-A58F-5C44D072072B@keylevel.com>
In-Reply-To: <E4DED516-A931-4908-A58F-5C44D072072B@keylevel.com>
X-Enigmail-Version: 1.4.6
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: meta-cedartrail - where is grub configured for 'install' option?
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
X-List-Received-Date: Thu, 10 Jan 2013 17:15:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 01/10/2013 12:09 AM, Chris Tapp wrote:
> Hi Darren,
> 
> On 7 Jan 2013, at 16:44, Darren Hart wrote:
> 
>> On 12/09/2012 01:39 PM, Chris Tapp wrote:
>>> I am trying to change the 'install' behaviour for the meta-cedartrail image so that the installed system has a different grub.cfg file. Is there a file I can bbappend to achieve this?
>>>
>>> image_live.bbclass refers to the 'install' syslinux label that triggers the install, but I've not been able to get from this to how/where grub.cfg is created.
>>>
>>
>> This is currently rather crudely implemented here:
>>
>> meta/recipes-core/initrdscripts/files/init-install.sh
>>
>> A better deployment mechanism is something being discussed and which
>> should make this more configurable.
>>
>> For now, you could bbappend initramfs-live-install_1.0.bb and replace the
>> init-install.sh script with your own.
> 
> Thanks. I've already got to look at that script anyway as it fails to
> install to an internal USB drive on a DN2800-MT board as (I think) it
> isn't waiting long enough for it to enumerate when booting the
> 'install' image.

Hrm, I thought it waited indefinitely for the device to appear. Or is it
finding something else and bailing out of the loop? Where is the failure?

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

