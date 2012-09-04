Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03EE1E01491
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 10:19:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 04 Sep 2012 10:19:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,367,1344236400"; d="scan'208";a="196629694"
Received: from unknown (HELO envy.home) ([10.7.199.69])
	by orsmga002.jf.intel.com with ESMTP; 04 Sep 2012 10:19:06 -0700
Message-ID: <504637F5.8090603@linux.intel.com>
Date: Tue, 04 Sep 2012 10:18:45 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@gmail.com>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045C2B7.1070406@r-finger.com>
	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
In-Reply-To: <CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
X-Enigmail-Version: 1.4.4
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Tue, 04 Sep 2012 17:19:07 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 09/04/2012 05:20 AM, Bruce Ashfield wrote:
> On Tue, Sep 4, 2012 at 4:58 AM, Tomas Frydrych
> <tf+lists.yocto@r-finger.com> wrote:
>> Hi Bruce,
>>
>> On 03/09/12 22:08, Bruce Ashfield wrote:
>>> That being said, taking a step back, what are you trying to get out of
>>> meta-yocto in this scenario ?
>>
>> a) I am targeting multiple chips, including TI Omap and Intel Atom.
>> meta-yocto is a prerequisite for the various machines in meta-intel, so
>> I have to include meta-yocto if I want to build images for an Intel
>> chip. Nothing unusual here.
>>
>> b) meta-yocto is the Poky distro layer; if you want to use Poky, then
>> you need meta-yocto.
>>
>>> see above. I misspoke. I don't think there's an intent to make meta-yocto
>>> and meta-ti work together, but oe-core + meta-ti, that's the combo that
>>> makes sense.
>>
>> See (b) above; you are not saying that Poky is only meant for Intel HW,
>> are you?
> 
> Definitely not. But I'm not familiar with anyone's (outside of the
> weekly meetings
> that I attend) plans for meta-yocto, so I'm commenting on what I see. You'd need
> someone from TI to comment on their meta-yocto compatibility. And that person
> definitely is not me :)
> 
>>
>> The basic problem with meta-yocto is that it combines BSP stuff
>> (meta-intel prerequisite, Atom & Beagle config) with distro stuff (Poky,
>> Yocto branding). That's convenient for doing QA on a limited set of HW,
>> but suboptimal for real use; BSP layers simply should not be dependent
>> on distro layers, it largely defeats the purpose of having layers.
>>
>> Splitting out the minimal beagle config into a layer of its own would
>> improve things quite a bit.
> 
> All of the above are things that Richard would need to comment on, the yocto
> layering and maintenance is not something that I have control over :)
> 

As far as I understand it, meta-yocto and meta-ti should be able to work
together. If they don't, it's a bug in one or the other or both and we
should work to address it.

The machine namespace collision could be an example of something we need
to fix.

--
Darren

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

