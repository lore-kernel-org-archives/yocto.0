Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29048E0070B
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2012 09:24:17 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Aug 2012 09:24:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="129281588"
Received: from unknown (HELO envy.home) ([10.255.13.51])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Aug 2012 09:24:16 -0700
Message-ID: <501957C4.7010401@linux.intel.com>
Date: Wed, 01 Aug 2012 09:22:28 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <50189888.3020103@linux.intel.com>
	<C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
	<5018A6E3.1020704@linux.intel.com>
	<20120801061552.GB15199@jama.jama.net>
In-Reply-To: <20120801061552.GB15199@jama.jama.net>
X-Enigmail-Version: 1.4.3
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Debug with gdbserver
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
X-List-Received-Date: Wed, 01 Aug 2012 16:24:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1



On 07/31/2012 11:15 PM, Martin Jansa wrote:
> On Tue, Jul 31, 2012 at 08:47:47PM -0700, Darren Hart wrote:
>> 
>> 
>> On 07/31/2012 08:13 PM, Khem Raj wrote:
>>> 
>>> On Jul 31, 2012, at 7:46 PM, Darren Hart
>>> <dvhart@linux.intel.com> wrote:
>>> 
>>>> I am trying to debug a userpsace application that misbehaves
>>>> under poky-tiny. My current approach is use gdbserver on the
>>>> target and attach to the offending process, then connect to
>>>> it on the client using the yocto-built native gdb for the
>>>> target.
>>>> 
>>>> I can easily add gdbserver to the target image, and can
>>>> successfully connect it to the process:
>>>> 
>>>> # From the target (qemux86) root shell: # dropbearkey -t rsa
>>>> -f ./rsa # dropbear -r ./rsa # DBPID=$(ps | grep dropbear |
>>>> head -n1 | cut -f4 -d ' ') # gdbserver 127.0.0.1:1234
>>>> --attach $DBPID
>>>> 
>>>> Now on the host machine (amd64) I want to: $ gdb???? (gdb)
>>>> target extended-remote 127.0.0.1:1234
>>>> 
>>>> Which package do I need to build to get the appropriate gdb
>>>> for the host to remote debug processes on the target?
>>> 
>>> bake cross-gdb for your arch and use it same way as above
>> 
>> ERROR: Nothing PROVIDES 'cross-gdb'
>> 
>> gdb-cross maybe?
>> 
>> Ah that gets a lot farther... and then do_compile fails.
>> 
>> | libgdb.a(python.o): In function `gdbpy_target_wide_charset': |
>> python.c:(.text+0x1c7): undefined reference to
>> `PyUnicodeUCS4_Decode'
>> 
>> And a lot more similar to that. I'm doing this on poky-tiny (so
>> a minimal target libc... shouldn't impact native bits though
>> right?
> 
> http://patchwork.openembedded.org/patch/33345/

Excellent, that gets things building.

Now I'm trying to use it and getting a timeout. I'm investigating, but
if anyone has run into this already and can save me the time, I'd
appreciate it.

I start qemu with:

$ qemu -kernel
/build/poky/master/qemux86_SZ60LW/tmp/deploy/images/bzImage-qemux86.bin
- -initrd
/build/poky/master/qemux86_SZ60LW/tmp/deploy/images/core-image-minimal-qemux86.cpio.gz
- -nographic -append "console=ttyS0 root=/dev/ram0" -redir tcp:1234::1234

Then run the following on the target:

# dropbearkey -t rsa -f ./rsa
# dropbear -r ./rsa
# DBPID=$(ps | grep dropbear | head -n1 | cut -f4 -d ' ')
# gdbserver 127.0.0.1:1234 --attach $DBPID
...
Attached; pid = 41
Listening on port 1234


Then from the host:

$ nmap localhost
...
1234/tcp open  hotline
....

$ i586-poky-linux-gdb
GNU gdb (GDB) 7.4.1
Copyright (C) 2012 Free Software Foundation, Inc.
License GPLv3+: GNU GPL version 3 or later
<http://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.  Type "show copying"
and "show warranty" for details.
This GDB was configured as "--host=x86_64-linux --target=i586-poky-linux".
For bug reporting instructions, please see:
<http://www.gnu.org/software/gdb/bugs/>.
(gdb) target extended-remote 127.0.0.1:1234
Remote debugging using 127.0.0.1:1234
Ignoring packet error, continuing...
warning: unrecognized item "timeout" in "qSupported" response
Ignoring packet error, continuing...
Ignoring packet error, continuing...
Ignoring packet error, continuing...
Ignoring packet error, continuing...
Remote communication error.  Target disconnected.: Connection reset by
peer.



- -- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iQEcBAEBAgAGBQJQGVfEAAoJEKbMaAwKp364Ug8H/0yXaF/jqZdrl3XEnM0mT4Ef
gvTIEQ4yAr015Ra2TV9kTUEqb0tnKR1chfZDveEmlBf84ZUsnArFvUseaCMQ1sz6
0lG5iAdeY6Cpo4UKPmpxgLCCMo3nEUIULvA4XrsTakvEgUH4DhssmgEOTOi/aaQ3
Fc9YtpUvXjC63eyRNqYk5sEMWzEVMSxbRHUegllGrsK+eeacEYoA1/TFFiK0c6lH
cLL/mZsnbzPFh9a1SteR1D9YC7tmrooGyaWBz/zZ8UYNfTlP5JfsQA/GZHc6wmWn
h6Ml9l9DdnNQxXX8Ff6nyEYgc1714u8OEl/Wno6wwJdCh9U9OvxfRC5KxMKkMWg=
=yC5/
-----END PGP SIGNATURE-----

