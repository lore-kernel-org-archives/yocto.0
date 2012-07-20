Return-Path: <jfabernathy@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA735E00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 15:12:52 -0700 (PDT)
Received: by vbjk17 with SMTP id k17so4301842vbj.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 15:12:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=nG1xn/GPBRFIIn6VbAUKymMPoqXOGYa4UBoHc92HxMk=;
	b=sNfB5pl+Z+A8a4DWxQUTyww55lpty1ia8YfANmSse6+iu/p3Bj0V6J5tHr7lXm/BgX
	fKtI+f9BmUq2hYSbXrv+NBtObuWJr1tdvdwmwcdKVNRkBVyLQkakRAd6P/76Yv1niTv4
	V8Sajr6ShRtSkkOEvbKF1CcrYOU1k3TgNlwPSmNAvfaGaj39EIVFy1brmtrCH9ZLBliD
	+Kvr0dG7KMiP/7S6AJgZ/g48sgq+2++gYc05dgX+kxYLPYsWLe7/vrLl6pqRV1uFfEnn
	ZKd73pLG8g4A2PiBiYw7s9oxbCow8DOT11ouZxDw0T3H8qraafJyztEsRjxyoDqsAVqO
	xB+g==
Received: by 10.220.149.131 with SMTP id t3mr5836063vcv.1.1342822372230;
	Fri, 20 Jul 2012 15:12:52 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id g10sm4042270vdk.2.2012.07.20.15.12.50
	(version=SSLv3 cipher=OTHER); Fri, 20 Jul 2012 15:12:51 -0700 (PDT)
Message-ID: <5009D7E2.4070904@gmail.com>
Date: Fri, 20 Jul 2012 18:12:50 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
	<5009C119.3070801@gmail.com>
	<1342816760.2274.2.camel@trz-ThinkPad-T420>
	<5009C2A5.5050802@gmail.com>
	<1342817332.2274.8.camel@trz-ThinkPad-T420>
In-Reply-To: <1342817332.2274.8.camel@trz-ThinkPad-T420>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
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
X-List-Received-Date: Fri, 20 Jul 2012 22:12:53 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 07/20/2012 04:48 PM, Tom Zanussi wrote:
> On Fri, 2012-07-20 at 16:42 -0400, Jim Abernathy wrote:
>> On 07/20/2012 04:39 PM, Tom Zanussi wrote:
>>> On Fri, 2012-07-20 at 16:35 -0400, Jim Abernathy wrote:
>>>> On 07/20/2012 04:29 PM, Scott Garman wrote:
>>>>> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
>>>>>> There must be some basic thing I'm missing.  Nothing that I used to
>>>>>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
>>>>>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
>>>>>> you can run?
>>>>>>
>>>>>> I'd thought I'd check before I post a bunch of log files.
>>>>>>
>>>>>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
>>>>>> directory and untarred the 7.0 Intel BSPs.
>>>>>>
>>>>>> There must be a step I'm missing.  otherwise this would not have gotten
>>>>>> thru testing before deployment.
>>>>>>
>>>>>> Jim A
>>>>> Hi Jim,
>>>>>
>>>>> We need more specific information about the error(s) you're seeing.
>>>>> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there
>>>>> must be a step you've forgotten.
>>>>>
>>>>> For example, you are using the denzil branch of meta-intel, right?
>>>>>
>>>>> Scott
>>>>>
>>>> I think it maybe that old problem with the n450 SRCREC being blank in
>>>> the linux-yocto bbappend file.  Obviously that BSP didn't get fixed
>>>> before 7.0.1 was deployed.  I'll put in the ones I used to patch in and
>>>> see if it works.
>>>>
>>> I updated the n450 in both the denzil and master meta-intel branches,
>>> but the tarball still needs to be updated with that fix.
>>>
>>> Is this the problem you're seeing, or are there other problems you're
>>> seeing with this and/or the other meta-intel BSPs?
>>>
>>> Tom
>> I should know shortly. I patched the n450 like I did before. I forgot
>> that BSP didn't get updated when denzil 7.0.1 came out. Duh!
>>
>> If you have it fixed in Denzil and master branch, I'll test that as well.
> Yes, you should be fine using the BSP branches from the git repo, but
> steer clear of the tarball until it gets updated...
>
> Tom
I don't have something right yet.  on poky, I'm up to date on denzil 
branch. Also denzil branch on meta-intel.  I'm getting a build failure 
on the yocto kernel.  Log file below:

DEBUG: Trying Upstream
DEBUG: Running export HOME="/home/jim"; export SSH_AGENT_PID="1456"; 
export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; export 
GIT_CONFIG="/build/n450-denzil/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-denzil/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-denzil/tmp/sysroots/x86_64-linux/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git log --pretty=oneline -n 1 8b8cfaaab2b8d79ac56e8c9a85bad9ae7bca399c 
-- 2> /dev/null | wc -l
DEBUG: Running export HOME="/home/jim"; export SSH_AGENT_PID="1456"; 
export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; export 
GIT_CONFIG="/build/n450-denzil/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-denzil/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-denzil/tmp/sysroots/x86_64-linux/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git log --pretty=oneline -n 1 49f931bc294d5b6be60502bbd448cff5aa766235 
-- 2> /dev/null | wc -l
DEBUG: Running export HOME="/home/jim"; export SSH_AGENT_PID="1456"; 
export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; export 
GIT_CONFIG="/build/n450-denzil/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-denzil/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-denzil/tmp/sysroots/x86_64-linux/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git remote prune origin
DEBUG: No Origin
DEBUG: Running export HOME="/home/jim"; export SSH_AGENT_PID="1456"; 
export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; export 
GIT_CONFIG="/build/n450-denzil/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-denzil/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-denzil/tmp/sysroots/x86_64-linux/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git remote add --mirror=fetch origin 
git://git.yoctoproject.org/linux-yocto-3.2
WARNING: Failed to fetch URL 
git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;bareclone=1;branch=standard/default/common-pc/atom-pc,meta;name=machine,meta
DEBUG: Fetcher failure: Fetch command export HOME="/home/jim"; export 
SSH_AGENT_PID="1456"; export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; 
export 
GIT_CONFIG="/build/n450-denzil/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-denzil/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-denzil/tmp/sysroots/x86_64-linux/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git remote add --mirror=fetch origin 
git://git.yoctoproject.org/linux-yocto-3.2 could not be run:
None
DEBUG: Trying MIRRORS
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', '.*', '/.*', '', '', {}] to ['http', 
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['http', '.*', '/.*', '', '', {}] to ['http', 
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['https', '.*', '/.*', '', '', {}] to 
['http', 'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', 
'/debian/pool/main', '', '', {}] to ['http', 'snapshot.debian.org', 
'/archive/debian-archive/20120328T092752Z/debian/pool/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.de.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.au.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.cl.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.hr.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.fi.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.hk.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.hu.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.ie.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.it.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.jp.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.no.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.pl.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.ro.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.si.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.es.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.se.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.debian.org', '/debian/pool', '', 
'', {}] to ['ftp', 'ftp.tr.debian.org', '/debian/pool', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnu.org', '/gnu', '', '', {}] to 
['ftp', 'mirrors.kernel.org', '/gnu', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['http', 'kernel.org', '/pub', '', '', {}] to 
['http', 'www.kernel.org', '/pub', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', 
{}] to ['ftp', 'ftp.franken.de', 
'/pub/crypt/mirror/ftp.gnupg.org/gcrypt/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', 
{}] to ['ftp', 'ftp.surfnet.nl', '/pub/security/gnupg/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnupg.org', '/gcrypt/', '', '', 
{}] to ['http', 'gulus.USherbrooke.ca', '/pub/appl/GnuPG/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', 
'', {}] to ['ftp', 'ftp.fu-berlin.de', '/tex/CTAN', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', 
'', {}] to ['http', 'sunsite.sut.ac.jp', '/pub/archives/ctan/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'dante.ctan.org', '/tex-archive', '', 
'', {}] to ['http', 'ctan.unsw.edu.au', '/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', 
'', {}] to ['ftp', 'ftp.gnutls.org', '/pub/gnutls/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', 
'', {}] to ['ftp', 'ftp.gnupg.org', '/gcrypt/gnutls/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', 
'', {}] to ['http', 'www.mirrors.wiretapped.net', 
'/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', 
'', {}] to ['ftp', 'ftp.mirrors.wiretapped.net', 
'/pub/security/network-security/gnutls/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'ftp.gnutls.org', '/pub/gnutls', '', 
'', {}] to ['http', 'josefsson.org', '/gnutls/releases/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['http', 'ftp.info-zip.org', 
'/pub/infozip/src/', '', '', {}] to ['http', 'mirror.switch.ch', 
'/ftp/mirror/infozip/src/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['http', 'ftp.info-zip.org', 
'/pub/infozip/src/', '', '', {}] to ['ftp', 'sunsite.icm.edu.pl', 
'/pub/unix/archiving/info-zip/src/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.cerias.purdue.edu', 
'/pub/tools/unix/sysutils/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tau.ac.il', 
'/pub/unix/admin/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.cert.dfn.de', 
'/pub/tools/admin/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.fu-berlin.de', 
'/pub/unix/tools/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.kaizo.org', 
'/pub/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tu-darmstadt.de', 
'/pub/sysadmin/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'ftp.tux.org', 
'/pub/sites/vic.cc.purdue.edu/tools/unix/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'gd.tuwien.ac.at', 
'/utils/admin-tools/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'sunsite.ualberta.ca', 
'/pub/Mirror/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['ftp', 'lsof.itap.purdue.edu', 
'/pub/tools/unix/lsof/', '', '', {}] to ['ftp', 'the.wiretapped.net', 
'/pub/security/host-security/lsof/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['http', 'www.apache.org', '/dist', '', '', 
{}] to ['http', 'archive.apache.org', '/dist', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['cvs', '.*', '/.*', '', '', {}] to ['http', 
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['svn', '.*', '/.*', '', '', {}] to ['http', 
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url ['git', 'git.yoctoproject.org', '/linux-yocto-3.2', '', 
'', {'protocol': 'git', 'branch': 
'standard/default/common-pc/atom-pc,meta', 'bareclone': '1', 'name': 
'machine,meta'}] comparing ['git', '.*', '/.*', '', '', {}] to ['http', 
'downloads.yoctoproject.org', '/mirror/sources/', '', '', {}]
DEBUG: For url 
git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;bareclone=1;branch=standard/default/common-pc/atom-pc,meta;name=machine,meta 
returning 
http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.linux-yocto-3.2.tar.gz;protocol=git;branch=standard/default/common-pc/atom-pc,meta;bareclone=1;name=machine,meta
ERROR: Fetcher failure: Fetch command export HOME="/home/jim"; export 
SSH_AGENT_PID="1456"; export SSH_AUTH_SOCK="/tmp/keyring-aKbQKk/ssh"; 
export 
GIT_CONFIG="/build/n450-denzil/tmp/sysroots/x86_64-linux/etc/gitconfig"; 
export 
PATH="/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin/core2-poky-linux:/build/n450-denzil/tmp/sysroots/n450/usr/bin/crossscripts:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux/usr/bin:/build/n450-denzil/tmp/sysroots/x86_64-linux/sbin:/build/n450-denzil/tmp/sysroots/x86_64-linux//bin:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky-denzil-7.0.1/scripts:/home/jim/poky-denzil-7.0.1/bitbake/bin/:/home/jim/poky/scripts:/home/jim/poky/bitbake/bin/:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/jim/poky/scripts"; 
git remote add --mirror=fetch origin 
git://git.yoctoproject.org/linux-yocto-3.2 could not be run:
None
ERROR: Function failed: Fetcher failure for URL: 
'git://git.yoctoproject.org/linux-yocto-3.2;protocol=git;bareclone=1;branch=standard/default/common-pc/atom-pc,meta;name=machine,meta'. 
Unable to fetch URL from any source.

>>>> Jim A
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>


