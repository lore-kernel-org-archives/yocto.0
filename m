Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5B7AE00D35; Sun, 12 May 2019 05:56:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C2C6E008F2
	for <yocto@yoctoproject.org>; Sun, 12 May 2019 05:56:57 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id f1so7107547lfl.6
	for <yocto@yoctoproject.org>; Sun, 12 May 2019 05:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=iGZxCMxryGxBCMU4/dWbzG40iqMVkq1lVF4KpjSpYlo=;
	b=AMYDq3yI2JKw7OIv4pofcMhonsIjoZxhMaQQu73S+lQANRMUhK5k965WFSTW/YFViR
	YuysamFrdBoBKAR+WTyeg03PGBjfAs5LLQ8B6wyBRSMjEfVbfuigbxDhz3XzdlqeGKc0
	SHHekl0s7z6tlSdY43+C8aZGjVCxNwY/1+T15dObQhStj9zPAqn0vvqvV85dtVsNyCtG
	HwHq//y3TCHl8kejtrwE8tDdXA+6YGJhazBx9ak9+fH+Wfmt0FPjzBKDIQd4NoQT2Nel
	qHVBaCz/pkEVYiUEWBf3FbttYdCec+l02MAPb7NzYVnqlFVMrmzJfO6OGjKW6n1BBUS0
	28CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=iGZxCMxryGxBCMU4/dWbzG40iqMVkq1lVF4KpjSpYlo=;
	b=UU9DZw+vZbKN9srKGMD8Jl16YFkrGrwuUgUzY4m0ywGCjUVZqtyin+VKdahEHPVADj
	ZxhThgqXqVMrFtef8slsLmqHtrItH4gof/MmOGsypN1S6tCz4fDz3vFbujVrp7+xCgXC
	yYDz1kPXpe/w0MGyLRj+BSCK0mQGewbioE7wuV6EZT0cLuULzzMaeD5nZkel0BxuSiyE
	opc8ROylAJNPNP8Ncv9q5TqbgbUKe17PNw+SSucpeL7jr+Bp0vt8B7OuWiM95+FV5MB3
	cVk73udoEMgQjjyMkX8NQeZzModR5zhScPqn40NTc/tcX+5bSZIR6SYWwEZlf97Y0/kZ
	dxUQ==
X-Gm-Message-State: APjAAAXn2UTkIZfREHD47turFjL3RWqZ43kn1jQUB2/5E2aM/ybqZnQp
	NF0HUv5iIVK6bvLGjJHdfx3saHhbrWCCMGeCrl8=
X-Google-Smtp-Source: APXvYqxvo9u5NhJN7h2U/dBiswuu9hTfIULsdlbAnZeHXnGSIzEgk9JyXyxDWm7e4oQbFII4DC+ZD2tTEqJ5oERqqQM=
X-Received: by 2002:ac2:494b:: with SMTP id o11mr11005686lfi.9.1557665816438; 
	Sun, 12 May 2019 05:56:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
In-Reply-To: <CAGAf8LxJyLUqa+kOv7+Zs0zbXBD3JjR4yEsqHTi4rDx805826A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sun, 12 May 2019 08:56:45 -0400
Message-ID: <CADkTA4O97vHWavjE8AR7syGmEX0i15nmPdeE6vLeXO9FKb1tww@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Scott Ellis <scott@jumpnowtek.com>
Subject: Re: Building Out-of-Tree Modules on the BBB Target
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
X-List-Received-Date: Sun, 12 May 2019 12:56:59 -0000
Content-Type: multipart/alternative; boundary="000000000000aaecd30588b0556d"

--000000000000aaecd30588b0556d
Content-Type: text/plain; charset="UTF-8"

On Sun, May 12, 2019 at 6:54 AM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello to the YOCTO community,
>
> I am using (to build the target for Beagle Bone Black) the following
> script:
> https://github.com/ZoranStojsavljevic/bbb-yocto
> https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-yocto.sh
>
> The latest kernel I am using from the following repo:
> https://github.com/jumpnow/meta-bbb
>
> Is kernel 5.0.14 .
>
> Here is the snippet of the boot traces:
> Starting kernel ...
>
> [    0.000000] Booting Linux on physical CPU 0x0
> [    0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gcc
> version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019
> [    0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7),
> cr=10c5387d
> [    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing
> instruction cache
> [    0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black
> [    0.000000] Memory policy: Data cache writeback
> [    0.000000] cma: Reserved 16 MiB at 0x9f000000
> [    0.000000] CPU: All CPU(s) started in SVC mode.
> [    0.000000] AM335X ES2.1 (sgx neon)
> [    0.000000] random: get_random_bytes called from
> start_kernel+0xa4/0x460 with crng_init=0
> [    0.000000] Built 1 zonelists, mobility grouping on.  Total pages:
> 130048
> [    0.000000] Kernel command line: console=ttyO0,115200n8
> root=/dev/ram0 ip=dhcp
>
> According to the documentation, the following:
> 2.10.1. Building Out-of-Tree Modules on the Target
> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html
>
> I tried to find /usr/src/kernels/5.0.14... Directory, since I see
> from the build that kernel-dev and kernel-devsrc are included:
> [user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel
> core-image-kernel-dev                                 :1.0-r0
> kernel-devsrc                                         :1.0-r0
> kernel-selftest                                       :1.0-r0
>
> THE PROBLEM: But I could not find ob BBB target /usr/src/kernels
> directory at all!?
>

devsrc puts the source in /usr/src/kernel/ and also makes a symlink to
/lib/modules/<version>/source

Was /usr/src/kernels/ a typo ? If you aren't seeing the source in either of
the two locations I mention above, then we do have a bug.
You also have to recreate the scripts/tools in that source directory before
building, via a 'make scripts prepare' in the /usr/src/kernel directory.


>
> Two questions here?
> [1] Do you have any advice on this problem (what I am missing here)?
> [2] Alternative to [1]: how I can use cross compiler from
> .../build/tmp to build Out-of-Tree Module for the BBB target on the
> host?
>

Are you talking about doing this by hand ? in the SDK or with a recipe ? If
it is via SDK or recipe, then everything is setup to work if you follow the
hello-world module example in meta-skeleton. If you are trying to invoke
things using another build system, there are more hoops to jump through.

The yocto QA steps do perform out of tree kernel module builds, so it
should be working.

I checked and the yocto mega manual should be up to date in this area, if
it isn't, raising a bug in the tracker would point us to where it has gone
stale (since it does look like you've been using it, so there very well
could be an issue).

Bruce



>
> Thank you,
> Zoran
> _______
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000aaecd30588b0556d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sun, May 12, 2019 at 6:54 AM Zoran Stojsavljevic=
 &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@g=
mail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">Hello to the YOCTO community,<br>
<br>
I am using (to build the target for Beagle Bone Black) the following script=
:<br>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto" rel=3D"noreferr=
er" target=3D"_blank">https://github.com/ZoranStojsavljevic/bbb-yocto</a><b=
r>
<a href=3D"https://github.com/ZoranStojsavljevic/bbb-yocto/blob/master/bbb-=
yocto.sh" rel=3D"noreferrer" target=3D"_blank">https://github.com/ZoranStoj=
savljevic/bbb-yocto/blob/master/bbb-yocto.sh</a><br>
<br>
The latest kernel I am using from the following repo:<br>
<a href=3D"https://github.com/jumpnow/meta-bbb" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/jumpnow/meta-bbb</a><br>
<br>
Is kernel 5.0.14 .<br>
<br>
Here is the snippet of the boot traces:<br>
Starting kernel ...<br>
<br>
[=C2=A0 =C2=A0 0.000000] Booting Linux on physical CPU 0x0<br>
[=C2=A0 =C2=A0 0.000000] Linux version 5.0.14-jumpnow (oe-user@oe-host) (gc=
c<br>
version 8.3.0 (GCC)) #1 Fri May 10 13:12:33 UTC 2019<br>
[=C2=A0 =C2=A0 0.000000] CPU: ARMv7 Processor [413fc082] revision 2 (ARMv7)=
, cr=3D10c5387d<br>
[=C2=A0 =C2=A0 0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT alia=
sing<br>
instruction cache<br>
[=C2=A0 =C2=A0 0.000000] OF: fdt: Machine model: TI AM335x BeagleBone Black=
<br>
[=C2=A0 =C2=A0 0.000000] Memory policy: Data cache writeback<br>
[=C2=A0 =C2=A0 0.000000] cma: Reserved 16 MiB at 0x9f000000<br>
[=C2=A0 =C2=A0 0.000000] CPU: All CPU(s) started in SVC mode.<br>
[=C2=A0 =C2=A0 0.000000] AM335X ES2.1 (sgx neon)<br>
[=C2=A0 =C2=A0 0.000000] random: get_random_bytes called from<br>
start_kernel+0xa4/0x460 with crng_init=3D0<br>
[=C2=A0 =C2=A0 0.000000] Built 1 zonelists, mobility grouping on.=C2=A0 Tot=
al pages: 130048<br>
[=C2=A0 =C2=A0 0.000000] Kernel command line: console=3DttyO0,115200n8<br>
root=3D/dev/ram0 ip=3Ddhcp<br>
<br>
According to the documentation, the following:<br>
2.10.1. Building Out-of-Tree Modules on the Target<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.h=
tml" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/docs=
/latest/kernel-dev/kernel-dev.html</a><br>
<br>
I tried to find /usr/src/kernels/<a href=3D"http://5.0.14." rel=3D"noreferr=
er" target=3D"_blank">5.0.14.</a>.. Directory, since I see<br>
from the build that kernel-dev and kernel-devsrc are included:<br>
[user@fedora29-ssd bbb-yocto]$ bitbake -s | grep kernel<br>
core-image-kernel-dev=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0:1.0-r0<b=
r>
kernel-devsrc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0:1.0-r0<br>
kernel-selftest=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0:1.0-r0<br>
<br>
THE PROBLEM: But I could not find ob BBB target /usr/src/kernels<br>
directory at all!?<br></blockquote><div><br></div><div><div class=3D"gmail_=
default" style=3D"font-size:small">devsrc puts the source in /usr/src/kerne=
l/ and also makes a symlink to /lib/modules/&lt;version&gt;/source</div><di=
v class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D=
"gmail_default" style=3D"font-size:small">Was /usr/src/kernels/ a typo ? If=
 you aren&#39;t seeing the source in either of the two locations I mention =
above, then we do have a bug.</div><div class=3D"gmail_default" style=3D"fo=
nt-size:small">You also have to recreate the scripts/tools in that source d=
irectory before building, via a &#39;make scripts prepare&#39; in the /usr/=
src/kernel directory.</div></div><div>=C2=A0</div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">
<br>
Two questions here?<br>
[1] Do you have any advice on this problem (what I am missing here)?<br>
[2] Alternative to [1]: how I can use cross compiler from<br>
.../build/tmp to build Out-of-Tree Module for the BBB target on the<br>
host?<br></blockquote><div><br></div><div><div class=3D"gmail_default" styl=
e=3D"font-size:small">Are you talking about doing this by hand ? in the SDK=
 or with a recipe ? If it is via SDK or recipe, then everything is setup to=
 work if you follow the hello-world module example in meta-skeleton. If you=
 are trying to invoke things using another build system, there are more hoo=
ps to jump through.</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">The y=
octo QA steps do perform out of tree kernel module builds, so it should be =
working.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">I checked and th=
e yocto mega manual should be up to date in this area, if it isn&#39;t, rai=
sing a bug in the tracker would point us to where it has gone stale (since =
it does look like you&#39;ve been using it, so there very well could be an =
issue).</div><div class=3D"gmail_default" style=3D"font-size:small"><br></d=
iv><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></=
div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Thank you,<br>
Zoran<br>
_______<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000aaecd30588b0556d--
