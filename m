Return-Path: <josh@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73BDBE00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 11:11:33 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Feb 2012 11:11:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103237434"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 11:11:33 -0800
Message-ID: <4F2ADFE4.3050702@linux.intel.com>
Date: Thu, 02 Feb 2012 11:11:32 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F2A0A34.4020605@gmail.com> <4F2AB4FF.5070208@gmail.com>
	<4F2AC2AB.6030204@windriver.com> <4F2AC9A5.5040706@gmail.com>
	<4F2ACB7F.4010509@gmail.com>
In-Reply-To: <4F2ACB7F.4010509@gmail.com>
Subject: Re: needed site is down???
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
X-List-Received-Date: Thu, 02 Feb 2012 19:11:33 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 02/02/12 09:44, jfabernathy wrote:
> On 02/02/2012 12:36 PM, jfabernathy wrote:
>> On 02/02/2012 12:06 PM, Mark Hatle wrote:
>>> On 2/2/12 10:08 AM, jfabernathy wrote:
>>>> On 02/01/2012 10:59 PM, jfabernathy wrote:
>>>>> Am I the only one seeing this dead link? I'm building from master and
>>>>> can't get to this link that draws the error:
>>>>>
>>>>> http://cgit.freedesktop.org/libva/snapshot/libva-1.0.12.tar.bz2

This is supposed to be a transient error but so far as I can see the 
fd.o cgit is still down.

> Just noticed that what's on the Yocto mirror is
> libva_0.31.0-1+sds9.1ubuntu1.tar.gz ), but the recipe is calling for a
> newer version, libva-1.0.12.tar.bz2

I don't see libva-1.0.12 anywhere in poky or meta-yocto, the mirror is 
only updated once the autobuilder has seen the recipe and downloaded the 
object to mirror.

After a quick google I can't find a libva newer than 0.32.0+1sds2 - 
where did you get your libva recipe from?

Cheers,
Joshua
-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

