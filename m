Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C712EE00294
	for <yocto@yoctoproject.org>; Sat, 10 Nov 2012 01:34:03 -0800 (PST)
Received: from [192.168.0.2] (host81-153-118-218.range81-153.btcentralplus.com
	[81.153.118.218]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E07C89BE3;
	Sat, 10 Nov 2012 09:34:00 +0000 (GMT)
Message-ID: <509E1F87.4000100@r-finger.com>
Date: Sat, 10 Nov 2012 09:33:59 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <20121023184056.GR3269@jama.jama.net>
	<1351076036-25453-1-git-send-email-sledz@dresearch-fe.de>
	<1351076036-25453-2-git-send-email-sledz@dresearch-fe.de>
	<1351077244.22340.90.camel@ted>
In-Reply-To: <1351077244.22340.90.camel@ted>
Subject: Re: [PATCH resend][opkg-utils] opkg.py/opkg-build: fix creation of tar archives
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
X-List-Received-Date: Sat, 10 Nov 2012 09:34:04 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 24/10/12 12:14, Richard Purdie wrote:
> On Wed, 2012-10-24 at 12:53 +0200, Steffen Sledz wrote:
>> Since openSUSE 12.2 the installed tar uses posix instead of gnu encoding
>> by default. This format is not fully supported by opkg and results in
>> ipk packages not installable at the target.
>>
>> Collected errors:
>>  * get_header_tar: Unknown typeflag: 0x78: Success.
>>  * get_header_tar: Unknown typeflag: 0x78: Success.
>>  * get_header_tar: Unknown typeflag: 0x78: Success.
>>  * extract_archive: Don't know how to handle /var/lib/opkg/tmp/opkg-mg997m/chicken-bin-fGRvr4/PaxHeaders.17512/.: No such file or directory.
>>  * get_header_tar: Unknown typeflag: 0x78: No such file or directory.
>>  * get_header_tar: Unknown typeflag: 0x78: No such file or directory.
>>  ...
>>
>> Signed-off-by: Steffen Sledz <sledz@dresearch-fe.de>
>> ---
>>  opkg-build |    6 +++---
>>  opkg.py    |    6 +++---
>>  2 files changed, 6 insertions(+), 6 deletions(-)
> 
> Merged to master, thanks.

Could this be also applied to the danny branch (and perhaps even denzil)?

Tomas

