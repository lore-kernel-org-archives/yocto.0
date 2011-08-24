Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C440E00321
	for <yocto@yoctoproject.org>; Wed, 24 Aug 2011 12:36:40 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:19243
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>)
	id 1QwJFe-0000lt-K1; Wed, 24 Aug 2011 20:36:38 +0100
Message-Id: <B55759D6-D0E8-42A2-9B18-AAEA39383DA6@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <201108241211.27202.paul.eggleton@linux.intel.com>
Mime-Version: 1.0 (Apple Message framework v936)
Date: Wed, 24 Aug 2011 20:36:35 +0100
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
	<4E45AF24.5070804@mlbassoc.com>
	<42B4E483-BD49-4DC2-9007-3D424A73614D@keylevel.com>
	<201108241211.27202.paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Missing patch files in SRC_URIs
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
X-List-Received-Date: Wed, 24 Aug 2011 19:36:41 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

Hi Paul,

On 24 Aug 2011, at 12:11, Paul Eggleton wrote:

> Hi Chris,
>
> On Wednesday 24 August 2011 08:59:15 Chris Tapp wrote:
>> bitbake doesn't seem to be detecting missing patch files. In
>> a .bbappend file (for linux-wrs_git) I have:
>>
>> SRC_URI += " file://defconfig"
>>
>> SRC_URI_append_Vortex86DX = "\
>> 	   file://there-is-no.patch;patch=1 "
>
> FYI patch=1 is no longer necessary as of quite some time ago -  
> the .patch (or
> .diff) extension is enough to indicate that it's a patch.

It seems as if it's this that's causing the problem. I had a 'real'  
patch file in place and it wasn't being processed during do_unpack.  
Removing the 'patch=1' fixed this and it was processed as expected. It  
seems as if adding the 'patch=1' to the file means it's not used as a  
file or patch and is simply ignored, which would explain what I was  
seeing. A 'missing' file without 'patch=1' is reported as an error.

>> bitbake -c patch -f virtual/kernel
>>
>> runs without reporting any errors, even though linux-wrs_Vortex86DX/
>> does not contain 'there-is-no.patch'.
>
> Are you sure there is no patch of this name elsewhere in the search  
> path for
> this recipe? This is buggy behaviour if there isn't. (bitbake -e  
> linux-wrs |
> grep "^FILESPATH" will give you the entire path it is using.) In any  
> case the
> directory it should search for the patch in is linux-wrs/Vortex86DX  
> not linux-
> wrs_Vortex86DX.

I'm certain - I made this file name up specially for testing ;-)

My, doesn't FILESPATH get complicated !

> I'd also recommend for consistency if it's not too difficult to  
> change at this
> point that you use an all-lowercase machine name.

Easily done, as this is only experimental at the moment. I'll try and  
remember to change it when I finish later on so I can run a complete  
rebuild over night.

Thanks for the pointer.

Chris Tapp

opensource@keylevel.com
www.keylevel.com




