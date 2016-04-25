Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98D02E00948; Mon, 25 Apr 2016 06:56:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA399E00AF2
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 06:55:48 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B44D268A01A; Mon, 25 Apr 2016 14:55:47 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 1F2DC68A019;
	Mon, 25 Apr 2016 14:55:47 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id C67986740363;
	Mon, 25 Apr 2016 15:55:46 +0200 (CEST)
To: yocto@yoctoproject.org
References: <571E19E0.80704@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <571E21E2.1020607@mlbassoc.com>
Date: Mon, 25 Apr 2016 15:55:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <571E19E0.80704@mlbassoc.com>
Subject: Re: Error installing wpa-supplicant
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 25 Apr 2016 13:56:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-04-25 15:21, Gary Thomas wrote:
> I tried to add wpa-supplicant to my working/installed system
> and got this error:
>
> Removing any system startup links for dbus-1 ...
> Running groupadd commands...
> NOTE: dbus: Performing groupadd with [ -r netdev]
> ERROR: dbus: groupadd command did not succeed.
> To remove package debris, try `opkg remove dbus-1`.
> To re-attempt the install, try `opkg install dbus-1`.
> ...
> Collected errors:
>   * pkg_run_script: package "dbus-1" preinst script returned status 1.
>   * preinst_configure: Aborting installation of dbus-1.
>   * opkg_install: Cannot install package wpa-supplicant.
>
> When I tried to rerun it, I got this:
>
> root@teton-p7618:~# opkg remove dbus-1
> No packages removed.
> root@teton-p7618:~# opkg install dbus-1
> Installing dbus-1 (1.10.6-r0.3) on root.
>   Removing any system startup links for dbus-1 ...
> Running groupadd commands...
> NOTE: dbus: Performing groupadd with [ -r netdev]
> ERROR: dbus: groupadd command did not succeed.
> To remove package debris, try `opkg remove dbus-1`.
> To re-attempt the install, try `opkg install dbus-1`.
> Collected errors:
>   * pkg_get_installed_files: Failed to open ///var/lib/opkg/info/dbus-1.list: No such file or directory.
>   * pkg_run_script: package "dbus-1" preinst script returned status 1.
>   * preinst_configure: Aborting installation of dbus-1.
>   * opkg_install: Cannot install package dbus-1.
>
> What might be the issue here and how to I resolve it?
>

Interesting info from 'strace'

1147  execve("/usr/local/bin/ groupadd -r netdev", [" groupadd -r netdev"], [/* 12 vars */]) = -1 ENOENT (No such file 
or directory)
1147  execve("/usr/bin/ groupadd -r netdev", [" groupadd -r netdev"], [/* 12 vars */]) = -1 ENOENT (No such file or 
directory)
1147  execve("/bin/ groupadd -r netdev", [" groupadd -r netdev"], [/* 12 vars */]) = -1 ENOENT (No such file or directory)
1147  execve("/usr/local/sbin/ groupadd -r netdev", [" groupadd -r netdev"], [/* 12 vars */]) = -1 ENOENT (No such file 
or directory)
1147  execve("/usr/sbin/ groupadd -r netdev", [" groupadd -r netdev"], [/* 12 vars */]) = -1 ENOENT (No such file or 
directory)
1147  execve("/sbin/ groupadd -r netdev", [" groupadd -r netdev"], [/* 12 vars */]) = -1 ENOENT (No such file or directory)

seems to be a problem with finding the 'groupadd' command?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

