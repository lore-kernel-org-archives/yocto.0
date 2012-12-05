Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECDAAE006C3
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 11:33:14 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id qB5JWA03005996
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 5 Dec 2012 11:33:14 -0800 (PST)
Received: from msp-dhcp50.wrs.com (172.25.34.50) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.318.4;
	Wed, 5 Dec 2012 11:32:11 -0800
Message-ID: <50BFA13D.8020609@windriver.com>
Date: Wed, 5 Dec 2012 13:32:13 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:16.0) Gecko/20121026 Thunderbird/16.0.2
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <20121203124234.6327B200FF8@gemini.denx.de>
	<20121205123818.C17EB200FF2@gemini.denx.de>
In-Reply-To: <20121205123818.C17EB200FF2@gemini.denx.de>
Subject: Re: sysroot for use with GDB
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
X-List-Received-Date: Wed, 05 Dec 2012 19:33:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12/5/12 6:38 AM, Wolfgang Denk wrote:
> Hello,
>
> nobody here who could help out?
>
> In message <20121203124234.6327B200FF8@gemini.denx.de> I wrote:
>>
>> according to the documentation [1] the right way to debug applications
>> on the target is to load the target library information in GDB using
>>
>> 	set solib-absolute-prefix /path/to/tmp/rootfs
>>
>> i. e. referring it to the libraries in the target root file system
>> image.  Assuming the target root file system uses by defualt stripped
>> libraries, we need to set up a copy of the rootfs with debug
>> information included.
>>
>> But do we really have to?  Why cannot we use the libraries present in
>> the SDK's sysroot directory (i. e. what OECORE_TARGET_SYSROOT points
>> to) ?
>
> It appears that documentation and code are inconsistent; at least the
> eclipse plugin generates a .gdbinit script which contains a
>
> 	set sysroot /opt/poky/1.3/sysroots/armv7a-vfp-neon-poky-linux-gnueabi
>
> statement, i. e. it uses OECORE_TARGET_SYSROOT as I thought should
> work - but it doesn't.
>
>> Trying to do so, we see that it fails.  Our current suspicion is that
>> maybe prelinking of the target images and libraries introduces some
>> incompatibility.  Is this a reasonable assumption, and if so, is this
>> a problem that should be fixed, or unavoidable for some reason?  Or is
>> there a problem with the libraries in OECORE_TARGET_SYSROOT ?

Prelinking should not cause a problem.  GDB knows how to translate the debuginfo 
addresses to the end runtime addresses.

The only thing I've seen in the past that has caused a problem is when the dbg 
stuff was not installed into the sysroot.  GDB will fall back into loading the 
binaries from the sysroot, which will not contain the debug info causing problems.

It's best if you can set the sysroot to the same filesystem as being executed, 
but if you can't this is reasonable.

>> All help welcome - thanks in advance.
>>
>> [1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#platdev-gdb-remotedebug-launch-gdb
>
> OK, guess I should enter a bug in bugzilla, then?


>
> Best regards,
>
> Wolfgang Denk
>


