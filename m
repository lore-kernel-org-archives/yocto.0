Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B995E00307
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2012 15:14:43 -0800 (PST)
Received: from mail-iy0-f180.google.com ([209.85.210.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 09 Feb 2012 15:14:43 -0800
Received: by iabz7 with SMTP id z7so4301270iab.25
	for <yocto@yoctoproject.org>; Thu, 09 Feb 2012 15:14:42 -0800 (PST)
Received: by 10.42.19.65 with SMTP id a1mr5453540icb.48.1328829282604;
	Thu, 09 Feb 2012 15:14:42 -0800 (PST)
Received: from [127.0.0.1] (masterfoo.zenlinux.com. [207.192.74.254])
	by mx.google.com with ESMTPS id al9sm6219744igc.5.2012.02.09.15.14.40
	(version=SSLv3 cipher=OTHER); Thu, 09 Feb 2012 15:14:41 -0800 (PST)
Message-ID: <4F345358.8060103@intel.com>
Date: Thu, 09 Feb 2012 15:14:32 -0800
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111229 Thunderbird/9.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F2CB95F.6040509@intel.com> <4F2F86F0.7020905@enea.com>
	<CABcZAN=kZCy5=puLzDofDAf5SHuGJBZt_+H+pAUp-HbnoG+VOQ@mail.gmail.com>
In-Reply-To: <CABcZAN=kZCy5=puLzDofDAf5SHuGJBZt_+H+pAUp-HbnoG+VOQ@mail.gmail.com>
X-Gm-Message-State: ALoCoQnGWi7nzi6hF8WVQ49D5KOnimC9ysTLDRWvQ4P2YiNbJambfjdiHTYl/WO+3qnAG84RKlfC
Subject: Re: Trying to re-use sstate.
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
X-List-Received-Date: Thu, 09 Feb 2012 23:14:43 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/06/2012 07:08 AM, Chris Larson wrote:
> On Mon, Feb 6, 2012 at 12:53 AM, David Nyström<david.nystrom@enea.com>  wrote:
>> On 02/04/2012 05:51 AM, Scott Garman wrote:
>>>
>>> Hello,
>>>
>>> I'm trying to re-use the sstate from one build directory and move it to
>>> another. It's not working - bitbake is rebuilding *everything*.
>>>
>>> My hunch is the reason for this is because bblayers.conf must differ
>>> between the two build directories, because it uses full paths to the
>>> layer directories.
>>>
>>> By default, when you source oe-init-build-env for the first time, it
>>> generates a bblayers.conf file with full paths to the default layers,
>>> meta and meta-yocto.
>>>
>>> I thought the point of sstate was that I could copy it between build
>>> directories - or even different hosts - and save myself the effort of
>>> rebuilding everything if the remaining metadata was the same?
>>>
>>> Scott
>>>
>> We have the same issue,
>>
>> I tried to setup a buildbot to warm up sstate caches over night,
>> and let developers use this common sstate to speed up build times.
>> Epic fail, since paths usually are not consistent.
>> And it seems you can't even fake  an "identical path" with symlinks
>> either, bitbake detects the symlink and rebuilds everything.
>
>
> Afaik your BBLAYERS should not be in your signatures at all, unless
> something in the metadata is accessing it. For what it's worth, I
> reuse sstate every day, but don't use the poky/oe-core scripts
> (oe-init-build-env).

As a follow-up to this thread, I spent a bit of time today trying to 
reproduce/isolate the issue, and I could not do so. Changing the paths 
to layers correctly rebuilt from sstate, and adding an empty layer also 
didn't trigger a rebuild. So I'm not sure what I saw previously, but 
unfortunately my original example of this is no longer available for me 
to work with.

I apologize for causing any confusion, but it's still quite possible we 
have some issues - I'll definitely use bitbake-diffsig to dig deeper the 
next time I see it.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

