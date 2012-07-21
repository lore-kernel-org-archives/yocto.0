Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD361E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 18:08:26 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4399499vbj.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 18:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=1zPYBbPwynlK6OzgCRNQ2vMIjyqNWXyzct0SbWacRUk=;
	b=xQcw66N8wM+1tAT2S1bPG5HKznNle+YL4xfHSC/XIMR0e+WHpPLL5w5Ga9/SGuCeNB
	o7JFTwxqz/u8YgtCNrX9ulhztXQQoxoWTIWhT/LxRLz9ip/7MSBqGhcMlubEPFiVCvZ5
	a7WwGbGnbYVt/OJ7lO4WmjR4GJ0xNm2AYKLkHcJDxl8v2qqw5xAPioQejVCKouFHeFlS
	R/AoApBheYeIsYZEu5+qTBzwOhdF84akrUaIlstmwL7zCeUxEys53ncBWZA1VNRMFmJ9
	5l/+CU7KyMANfoKN3DjuEAwFGPkEx9J9MjpIGWiLcYUEsvmnxXgXqZj/oT7jupwY5ARZ
	UzUQ==
Received: by 10.52.21.99 with SMTP id u3mr5403936vde.56.1342832905911;
	Fri, 20 Jul 2012 18:08:25 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id bn5sm4388346vdb.19.2012.07.20.18.08.24
	(version=SSLv3 cipher=OTHER); Fri, 20 Jul 2012 18:08:25 -0700 (PDT)
Message-ID: <500A0108.9040908@gmail.com>
Date: Fri, 20 Jul 2012 21:08:24 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
	<5009C119.3070801@gmail.com>
	<1342816760.2274.2.camel@trz-ThinkPad-T420>
	<5009C2A5.5050802@gmail.com>
	<1342817332.2274.8.camel@trz-ThinkPad-T420>
	<5009D7E2.4070904@gmail.com> <5009E3A2.9020904@linux.intel.com>
In-Reply-To: <5009E3A2.9020904@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: nothing building under denzil-7.0.1
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
X-List-Received-Date: Sat, 21 Jul 2012 01:08:27 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/20/2012 07:02 PM, Darren Hart wrote:
> On 07/20/2012 03:12 PM, Jim Abernathy wrote:
>> git://git.yoctoproject.org/linux-yocto-3.2 could not be run:
>> None
>> ERROR: Function failed: Fetcher failure for URL:
>> 'git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;bareclone=1;branch=standard/default/common-pc/atom-pc,meta;name=machine,meta'.
>> Unable to fetch URL from any source.
> Can you clone this from the shell?
>
Okay, I blew away my poky and build directories, but keep my download 
central directory.

Here are the steps.

git clone git://git.yoctoproject.org/poky
cd poky
git clone git://git.yoctoproject.org/meta-intel.git
git checkout -b denzil origin/denzil
cd meta-intel
git checkout -b denzil origin/denzil
cd ..
. oe-init-build-env /build/n450-new
(edit local.conf for parallel options, machine= n450, and DL_DIR)
(edit bblayer.conf for meta-intel and meta-intel/meta-n450 layer)
bitbake core-image-sato

Error console:

NOTE: Running task 687 of 4920 (ID: 69, 
virtual:native:/home/jim/poky/meta/recipes-devtools/prelink/prelink_git.bb, 
do_unpack)
WARNING: Failed to fetch URL 
git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;bareclone=1;branch=standard/default/common-pc/atom-pc,meta;name=machine,meta
ERROR: Fetcher failure: Fetch command export HOME="/home/jim"; export 
SSH_AGENT_PID="1456"; export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; 
export 
GIT_CONFIG="/build/n450-new/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-new/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-new/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-new/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-new/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-new/tmp/sysroots/x86_64-linux/sbin:/build/n450-new/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git remote add --mirror=fetch origin 
git://git.yoctoproject.org/linux-yocto-3.2 could not be run:
None
ERROR: Function failed: Fetcher failure for URL: 
'git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;bareclone=1;branch=standard/default/common-pc/atom-pc,meta;name=machine,meta'. 
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in: 
/build/n450-new/tmp/work/n450-poky-linux/linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1/temp/log.do_fetch.12200
NOTE: package 
linux-yocto-3.2.18+git1+49f931bc294d5b6be60502bbd448cff5aa766235_1+8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c-r1: 
task do_fetch: Failed
ERROR: Task 705 
(/home/jim/poky/meta/recipes-kernel/linux/linux-yocto_3.2.bb, do_fetch) 
failed with exit code '1'


