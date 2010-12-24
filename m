Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 569AB4C80FD4
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 18:53:08 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id oBO0r7jF004689
	for <yocto@yoctoproject.org>; Thu, 23 Dec 2010 16:53:07 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 23 Dec 2010 16:53:07 -0800
Received: from Macintosh-5.local ([172.25.36.226]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Thu, 23 Dec 2010 16:53:07 -0800
Message-ID: <4D13EEF2.8080605@windriver.com>
Date: Thu, 23 Dec 2010 18:53:06 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <DC74E0187B44084E9AD28300B75DFE300557D6E8@orsmsx504.amr.corp.intel.com>
	<1293150141.17519.560.camel@rex>
In-Reply-To: <1293150141.17519.560.camel@rex>
X-OriginalArrivalTime: 24 Dec 2010 00:53:07.0627 (UTC)
	FILETIME=[EDE007B0:01CBA304]
Subject: Re: Recent build issues.
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
X-List-Received-Date: Fri, 24 Dec 2010 00:53:08 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/23/10 6:22 PM, Richard Purdie wrote:
> On Thu, 2010-12-23 at 14:08 -0800, Flanagan, Elizabeth wrote:
...

>> mips seems to have run poky-image-minimal ok, but with Bug #611, I
>> can't be sure that is the case and I doubt it's actually the case. My
>> inclination is that there is an issue with arm and mips builds that
>> should be looked at.
> 
> Also, qemux86 was broken until a fix I pushed a few minutes ago (kernel
> was missing IDE support and wouldn't boot in qemu).
> 
> It looks like the new version of opkg we've upgraded to fixing certain
> meta-toolchain corruption issues has some other new characteristics such
> as refusing to install overlapping files. This is good but its exposed
> bugs (and why isn't rpm showing this?).

There are two cases in which RPM allows "overlapping" files.

The first is that the files are identical.  I.e. same md5sum/same sha1.  There
are reasons for overlapping files in most distros, so they are handled
gracefully.  (To me not supporting identical files in multiple packages is a
defect.. because of the second reason...)

The second is two files of different ELF types.  This can occur when you are on
a multilib system.  You have duplicate packages (one 32-bit, one 64-bit) to be
installed at the same time.  They may contain duplicate files, as well as endian
specific files (libraries and binaries).  In the case of overlapping binaries
RPM will check and use a configured policy to determine which one is installed
and which is ignored.  (On IA32 systems, generally 64-bit is installed, and
32-bit is ignored.)  Goal is to allow for both 64-bit and 32-bit libraries, all
common data files and the "preferred" binary format to be installed onto a system.

> There is currently an issue with that when building meta-toolchain and
> poky-image-lsb that I know of. Patches to fix these bugs welcome (and
> bugs need filing).
> 

...

