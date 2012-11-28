Return-Path: <panyu2000@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696DAE011AF
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 22:07:08 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so4398409pad.35
	for <yocto@yoctoproject.org>; Tue, 27 Nov 2012 22:07:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xsh0h3OV1x6oq76mxvvbkn13/je8rlT9ptQ/HfLEeLA=;
	b=wTWUUouR6XbtLJ6Pi2a8JxVKk6/AkbHc8Rr4bhjjCmna14SsBFDgvkwCsPI2cYlOAm
	JFSVAw2YA5bIWYnmYQEMQz+aGj+Dy4otBPqkLClWS6HrH5cdc52SGdEfmS1FoB8PaHHL
	0ZdYFg02A0g+KAL4LXr3Apl9ywmCQ3sbdG3timU7VF00Xmw77J71aF2Zp+ENUMTDPCS9
	81E9KrZGkYUuoFHGYJA7p8szqcYCa9PUTm68Egp4FuoaInbDN/sIk3o0MQcmLEIoOsn7
	ePdkdRlQcfevX6oyaLvxfkjmwHIv+9RjRmV0D71bkpvTwcI3toEiRCpOZAYweJe3uxDi
	YS1Q==
MIME-Version: 1.0
Received: by 10.68.137.41 with SMTP id qf9mr54965450pbb.103.1354082828006;
	Tue, 27 Nov 2012 22:07:08 -0800 (PST)
Received: by 10.66.192.65 with HTTP; Tue, 27 Nov 2012 22:07:07 -0800 (PST)
In-Reply-To: <50B4DB1F.2070904@windriver.com>
References: <CAPeyoXbwyKCE2r3R24D5UW2zHTcqkAS1Po+ZKRUqaG4PsJoqOA@mail.gmail.com>
	<50B4DB1F.2070904@windriver.com>
Date: Wed, 28 Nov 2012 14:07:07 +0800
Message-ID: <CAPeyoXY=72u_CiQhMv2FRmiOSQ-DLbRQUrRSg=NiUufzEZAjAw@mail.gmail.com>
From: Yu Pan <panyu2000@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Preempt-rt kernel build for beagleboard
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
X-List-Received-Date: Wed, 28 Nov 2012 06:07:08 -0000
Content-Type: multipart/alternative; boundary=047d7b2e4302f5b40a04cf87f929

--047d7b2e4302f5b40a04cf87f929
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

Thanks for commenting :-)

You shouldn't have needed to do this part, since the board already has
> a preempt-rt BSP description:
>
> http://git.yoctoproject.org/**cgit/cgit.cgi/linux-yocto-3.4/**
> tree/meta/cfg/kernel-cache/**bsp/beagleboard/beagleboard-**
> preempt-rt.scc?h=meta<http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/tree/meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc?h=meta>
>
> And when you build the linux-yocto-rt kernel with that board, that
> description should be found, and it enables all the base options already.
>
> If you look in your build, what does the file 'linux/meta/top_tgt'
> contain ?
>

This was what puzzles me as well. I thought bitbake should pickup what is
specified in beagleboard-preempt-rt.scc to produce the .config in the
kernel build directory. But it did not, at least for the PREEMPT part.
Below is the PREEMPT related configs in the .config without manually doing
the menuconfig:

# CONFIG_PREEMPT_RCU is not set
CONFIG_PREEMPT_NONE=y
# CONFIG_PREEMPT_VOLUNTARY is not set
# CONFIG_PREEMPT__LL is not set
# CONFIG_PREEMPT_RTB is not set
# CONFIG_PREEMPT_RT_FULL is not set

Follow your pointer, I checked linux/meta/top_tgt, it indeed points to
meta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc, which
includes ktypes/preempt-rt (why not ktypes/preempt-rt.scc?). In
ktypes/preempt-rt.cfg (included by ktypes/preempt-rt.scc),
CONFIG_PREEMPT_RT_FULL=y is there. So why not this configuration fragment
not picked up in the final .config?

Cheers
Pan Yu

--047d7b2e4302f5b40a04cf87f929
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hi Bruce,</div><div><br></div><div>Thanks for commenting :-)</div><div=
><br></div><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width=
:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padding-lef=
t:1ex">

You shouldn&#39;t have needed to do this part, since the board already has<=
br>
a preempt-rt BSP description:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.4/tree/m=
eta/cfg/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc?h=3Dmeta" t=
arget=3D"_blank">http://git.yoctoproject.org/<u></u>cgit/cgit.cgi/linux-yoc=
to-3.4/<u></u>tree/meta/cfg/kernel-cache/<u></u>bsp/beagleboard/beagleboard=
-<u></u>preempt-rt.scc?h=3Dmeta</a><br>

<br>
And when you build the linux-yocto-rt kernel with that board, that<br>
description should be found, and it enables all the base options already.<b=
r>
<br>
If you look in your build, what does the file &#39;linux/meta/top_tgt&#39;<=
br>
contain ?<br></blockquote><div><br></div><div>This was what puzzles me as w=
ell. I thought bitbake should pickup what is specified in beagleboard-preem=
pt-rt.scc to produce the .config in the kernel build directory. But it did =
not, at least for the PREEMPT part. Below is the PREEMPT related configs in=
 the .config without manually doing the menuconfig:</div>
<div><div><br></div><div><div># CONFIG_PREEMPT_RCU is not set</div></div><d=
iv>CONFIG_PREEMPT_NONE=3Dy</div><div># CONFIG_PREEMPT_VOLUNTARY is not set<=
/div><div># CONFIG_PREEMPT__LL is not set</div><div># CONFIG_PREEMPT_RTB is=
 not set</div>
<div># CONFIG_PREEMPT_RT_FULL is not set</div></div><div><br></div><div>Fol=
low your pointer, I checked linux/meta/top_tgt, it indeed points to meta/cf=
g/kernel-cache/bsp/beagleboard/beagleboard-preempt-rt.scc, which includes k=
types/preempt-rt (why not ktypes/preempt-rt.scc?). In ktypes/preempt-rt.cfg=
 (included by ktypes/preempt-rt.scc), CONFIG_PREEMPT_RT_FULL=3Dy is there. =
So why not this configuration fragment not picked up in the final .config?<=
/div>
<div><br></div><div>Cheers</div><div>Pan Yu</div></div></div>

--047d7b2e4302f5b40a04cf87f929--
