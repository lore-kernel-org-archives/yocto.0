Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4384DE00283
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 21:55:35 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so544544pbb.35
	for <yocto@yoctoproject.org>; Tue, 31 Jul 2012 21:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=+cAoG5fm8gz1QGl4kanmOWphq/oCjW+WggT8i2rsHOk=;
	b=H1wuDKAVabS9DFCBFn5hbLQeZ9zi6pOrQUj5BZRWovXijM7PaIG2f5srCK7c2paR9Q
	d0g/Nc3Q8mtrKuUOSc3mHN1T7G/Oz8QuA3R9WA2rmJHjZQmkN7y2m1bk5BWjvbGSMmvE
	do1ai482tuAzY5RTUjNZVGi2lGf3TomU8/w1vhWLgdmsRGGan8HUR2/0vSJ/5saiKCku
	6AkqeNh2pdvhzA7AKZb5dfaV2Sl0xLsXyfUDSv2x36/IyJBT18Y0FLVihHF2yTW1D1rD
	qFinKaHgRvdGzsg0MuqHXVDQ5UQOq7BqFWsmWjk+zItTpi0TodBmSGBeBSYZ4eL0Dq6P
	riIA==
Received: by 10.68.136.8 with SMTP id pw8mr58969pbb.82.1343796935052;
	Tue, 31 Jul 2012 21:55:35 -0700 (PDT)
Received: from kraj-sslvpn-nc.jnpr.net (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPS id
	ng8sm1751329pbc.13.2012.07.31.21.55.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 31 Jul 2012 21:55:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.0 \(1485\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <5018A6E3.1020704@linux.intel.com>
Date: Tue, 31 Jul 2012 21:55:31 -0700
Message-Id: <D5E65268-E2F5-40CB-8EF6-9F91119B7B49@gmail.com>
References: <50189888.3020103@linux.intel.com>
	<C4B37B65-466E-4F99-8904-C12877973E20@gmail.com>
	<5018A6E3.1020704@linux.intel.com>
To: Darren Hart <dvhart@linux.intel.com>
X-Mailer: Apple Mail (2.1485)
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
X-List-Received-Date: Wed, 01 Aug 2012 04:55:35 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit


On Jul 31, 2012, at 8:47 PM, Darren Hart <dvhart@linux.intel.com> wrote:

> 
> 
> On 07/31/2012 08:13 PM, Khem Raj wrote:
>> 
>> On Jul 31, 2012, at 7:46 PM, Darren Hart <dvhart@linux.intel.com> wrote:
>> 
>>> I am trying to debug a userpsace application that misbehaves under
>>> poky-tiny. My current approach is use gdbserver on the target and attach
>>> to the offending process, then connect to it on the client using the
>>> yocto-built native gdb for the target.
>>> 
>>> I can easily add gdbserver to the target image, and can successfully
>>> connect it to the process:
>>> 
>>> # From the target (qemux86) root shell:
>>> # dropbearkey -t rsa -f ./rsa
>>> # dropbear -r ./rsa
>>> # DBPID=$(ps | grep dropbear | head -n1 | cut -f4 -d ' ')
>>> # gdbserver 127.0.0.1:1234 --attach $DBPID
>>> 
>>> Now on the host machine (amd64) I want to:
>>> $ gdb????
>>> (gdb) target extended-remote 127.0.0.1:1234
>>> 
>>> Which package do I need to build to get the appropriate gdb for the host
>>> to remote debug processes on the target?
>> 
>> bake cross-gdb for your arch and use it same way as above
> 
> ERROR: Nothing PROVIDES 'cross-gdb'
> 
> gdb-cross maybe?
> 

I meant cross gdb not the exact recipe name :)


> Ah that gets a lot farther... and then do_compile fails.
> 
> | libgdb.a(python.o): In function `gdbpy_target_wide_charset':
> | python.c:(.text+0x1c7): undefined reference to `PyUnicodeUCS4_Decode'
> 
> And a lot more similar to that. I'm doing this on poky-tiny (so a
> minimal target libc... shouldn't impact native bits though right?


shouldn't it seems you need python native

> 
> 
> Will beat on it some more in the morning.
> 
> -- 
> Darren Hart
> Intel Open Source Technology Center
> Yocto Project - Technical Lead - Linux Kernel


