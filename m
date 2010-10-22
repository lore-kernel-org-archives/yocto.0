Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id E5BE94C8101B
	for <yocto@yoctoproject.org>; Fri, 22 Oct 2010 18:44:23 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 22 Oct 2010 16:44:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.58,225,1286175600"; d="scan'208";a="339477363"
Received: from unknown (HELO [10.255.12.77]) ([10.255.12.77])
	by azsmga001.ch.intel.com with ESMTP; 22 Oct 2010 16:44:23 -0700
Message-ID: <4CC221D6.90504@linux.intel.com>
Date: Fri, 22 Oct 2010 16:44:22 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.11) Gecko/20101006 Lightning/1.0b2 Thunderbird/3.1.5
MIME-Version: 1.0
To: Richard Purdie <rpurdie@linux.intel.com>
References: <4CC1D64B.3050606@linux.intel.com> <1287790724.16386.791.camel@rex>
In-Reply-To: <1287790724.16386.791.camel@rex>
Cc: Yocto Project <yocto@yoctoproject.org>, "Hohndel,
	Dirk" <dirk.hohndel@intel.com>
Subject: Re: Fetcher error reporting
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <https://lists.pokylinux.org/private/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 22 Oct 2010 23:44:24 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/2010 04:38 PM, Richard Purdie wrote:
> On Fri, 2010-10-22 at 11:22 -0700, Darren Hart wrote:
>> Here is an example of the do_fetch/do_unpack failure that I believe is
>> representative of what Dirk saw and what I have been seeing periodically.
>>
>> I saw the following while building libproxy in poky-image-sdk-live on a
>> Fedora 13 box behind the firewall. I saw identical failures with opkg on
>> a different machine - also behind the firewall. Both SRC_URIs point to
>> googlecode.
>>
>> log.do_fetch:
>> -------------
>> NOTE: fetch http://libproxy.googlecode.com/files/libproxy-0.4.3.tar.gz
>> NOTE: libproxy-0.4.3:
>> http://libproxy.googlecode.com/files/libproxy-0.4.3.tar.gz has no entry
>> in conf/checksums.ini, not checking URI
>>
>> log.do_unpack:
>> --------------
>> gzip: stdin: unexpected end of file
>> tar: Child returned status 1
>> tar: Exiting with failure status due to previous errors
>> NOTE: Unpacking
>> /vol/1/dvhart/poky.git/build/downloads/libproxy-0.4.3.tar.gz to
>> /vol/1/dvhart/poky.git/build/tmp/work/i586-poky-linux/libproxy-0.4.3-r2/
>> ERROR: Task failed:
>>
>> With opkg, I tried the following which resulted in the same error.
>>
>> $ bitbake -c clean;
>> $ rm downloads/*opkg*
>> $ bitbake opkg
>>
>> In both cases, using wget to manually download the file and place it in
>> the downloads directory allowed the build to continue.
>
> We've talked about this a lot over jabber. We don't have a reproducer.
> What we do see is its always the wget fetcher that hits this (for mirror
> urls in the case of git repos) and its failing creating a zero length
> file.
>
> If we make the assumption that wget is creating the empty file and
> exiting with an error code and look at what bitbake would do, it would
> give the behaviour described in these bugs.
>
> Why? If the original fetch fails, it falls back to the mirror code. That
> looks, sees a file on the disk and says "nothing to do".
>
> Solution is therefore to make sure if the wget fetcher fails we wipe any
> file that may be present.
>
> Is is possible the wget fetcher is creating a zero length file and no
> setting an error code but I really hope its not that broken.
>
> So I've pushed this patch as a bandaid for the problem:
>
> http://git.pokylinux.org/cgit/cgit.cgi/poky/commit/?id=c5fab99a6f979a4a0ce246c6395b35a3082aec0d
>

I've applied and am running another build. This looks sane to me. If I 
still run into this, I think the next step is to do a brute force 
zero-length test, and throw the FetchError and take this modified path 
from this patch in that case too.

wget will generated a 0 length file when using -O (which we confirmed we 
do not) and there are old bugs against it for creating 0 length files 
when a valid host fails to connect (without the -O option) but I wasn't 
able to reproduce that with a current wget.

Here's to hoping this fixes it.

-- 
Darren Hart
Embedded Linux Kernel

