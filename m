Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6A27E00306
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2012 14:12:14 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 30 Jan 2012 14:12:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="102025912"
Received: from mkgumbel-mobl5.jf.intel.com (HELO [10.7.199.151])
	([10.7.199.151])
	by orsmga001.jf.intel.com with ESMTP; 30 Jan 2012 14:12:14 -0800
Message-ID: <4F2715BC.2060509@linux.intel.com>
Date: Mon, 30 Jan 2012 14:12:12 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F270FF5.6040909@gmail.com>
	<CADkTA4O03RT7eSmeK+8QypxnyZzP=+izogzq6c2ywY=80oZd9Q@mail.gmail.com>
	<4F27118F.2060302@gmail.com>
In-Reply-To: <4F27118F.2060302@gmail.com>
Subject: Re: So what happened to Edison??
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
X-List-Received-Date: Mon, 30 Jan 2012 22:12:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 30/01/12 13:54, jfabernathy wrote:
> On 01/30/2012 04:51 PM, Bruce Ashfield wrote:
>> On Mon, Jan 30, 2012 at 4:47 PM, jfabernathy<jfabernathy@gmail.com>
>> wrote:
>>> It seems that something happened today. I could not complete a build on
>>> edison branch for meta-cedartrail. I copied it to meta-mycdv, but other
>>> than that same, old same old. I tried the standard unchanged SRCREV and
>>> also tried the latest.
>> I changed the main yocto 1.2 3.0 kernel repository to 3.0, and pushed
>> some other kernel
>> changes. But if you are purely on edison, and aren't using
>> meta-kernel-dev there
>> shouldn't have been any fallout from those changes. (I built 3.0
>> several times today
>> myself).
>>
>> Perhaps Josh knows if anything was pushed to edison ?
>>
>> Cheers,
>>
>> Bruce
>
> I'm retesting on the tarballs again. If successful I'll try git version
> of edison. I started today with complete new clone of poky and meta-intel.

The Edison branch has been updated today for the upcoming 1.1 release, 
did you pull the updates?

Other than meta-intel are you using any other layers? I will try and 
reproduce here.

Regards,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

