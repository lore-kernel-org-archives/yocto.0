Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f45.google.com (mail-la0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A6CFE013CE
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 14:15:52 -0800 (PST)
Received: by mail-la0-f45.google.com with SMTP id ep20so6953232lab.32
	for <yocto@yoctoproject.org>; Wed, 02 Jan 2013 14:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=3E/8y0ybxiboLlUfEHIM/3ALAzAJRZs5ClLgK/CG8K0=;
	b=iWnGo15mkNCNP2mL6l4fxvRronsBQOxo/667zhNzOyNSYW5gJLJYFj9cz2f3RzwhL9
	8+z6AC3yha8SyQRj89k/4Iyo1ikJkBz/5M9qkA+DzvITCjys/xRiV0gq1EfKYSU/Jjmc
	jAg2rAGcTqHuoFyoXxGIkmthSYZfsw8phyM8ONXFn/6eG41x7ROr5M485ElhKSvpzAVf
	0lR/C1hHTqSD2QpeFvtdGNLr4Mq3ujWKYkK5kcARy6febQWntdZ0I9VdMyD5QUWej1aA
	OQpcZOmMyeS5S7nNDnanekPmtRqGqbT75AwK+DNNRusmGLD5Wwi54tCi8Myr+mAbxtes
	1Xig==
MIME-Version: 1.0
Received: by 10.152.111.68 with SMTP id ig4mr45592144lab.50.1357164950799;
	Wed, 02 Jan 2013 14:15:50 -0800 (PST)
Received: by 10.112.127.35 with HTTP; Wed, 2 Jan 2013 14:15:50 -0800 (PST)
In-Reply-To: <50E4AB07.9090208@bsmucker.eu.org>
References: <50E4A287.3050607@bsmucker.eu.org> <50E4A2D0.8020205@windriver.com>
	<50E4AB07.9090208@bsmucker.eu.org>
Date: Wed, 2 Jan 2013 17:15:50 -0500
Message-ID: <CADkTA4OqaB2J9QHbKrp0Prq0MMM=CtKO4ZsYhbXUWi6t3Aa8rg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Brian Smucker <bds@bsmucker.eu.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Magic kernel config option.
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
X-List-Received-Date: Wed, 02 Jan 2013 22:15:52 -0000
Content-Type: multipart/alternative; boundary=f46d04083b51cb458f04d25596c7

--f46d04083b51cb458f04d25596c7
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 2, 2013 at 4:47 PM, Brian Smucker <bds@bsmucker.eu.org> wrote:

> On 1/2/2013 1:12 PM, Bruce Ashfield wrote:
>
>> On 13-01-02 04:11 PM, Brian Smucker wrote:
>>
>>> On 1/2/2013 10:06 AM, Bruce Ashfield wrote:
>>>  > On 12-12-24 02:59 PM, Brian Smucker wrote:
>>>  >> Hi,
>>>  >>
>>>  >
>>>  > Catching up on email from the holidays. Did you ever get an answer
>>>  > to this ?
>>> Not yet,  resumed my quest today.
>>>
>>>  >> I'm a yocto mostly-newbie, trying to find my way.  I have a custom
>>> layer
>>>  >> that I am using to build a kernel. The layer right now consists of a
>>> few
>>>  >> kernel patches and a defconfig and is based on the standard kernel
>>>  >> otherwise.
>>>  >>
>>>  >> When I do a diff on my defconfig and the bitbake generated .config,
>>> they
>>>  >> are quite similar, but the CONFIG_UNION_FS=y line magically shows up.
>>>  >> I'm wondering where it comes from and how to disable it.
>>>  >
>>>  > CONFIG_UNION_FS is being enabled by the standard kernel (and all
>>>  > kernels that inherit it). Since you are based on that kernel, you
>>>  > get the option enabled.
>>>  >
>>>  >>
>>>  >> I can do a bitbake -c menuconfig virtual/kernel and eliminate that
>>>  >> option giving me the kernel I want, but those changes are gone after
>>> a
>>>  >> bitbake -c cleansstate ...
>>>  >
>>>  > Have you tried putting
>>>  >
>>>  > # CONFIG_UNION_FS is not set
>>>  >
>>>  > in your defconfig ? That should disable it.
>>>  >
>>> I did try that, but that did not disable it.
>>>
>>
>> Hmmm. It worked here. I'll run another test shortly (I'm working on
>> 3.8-rc1 at the moment).
>>
>>
>>> So after much pain and thrashing about to figure things out, now I see
>>> that in the standard-nocfg.scc file, the unionfs feature is set. This
>>> file is found in the following path: tmp/work/..
>>> ../linux/meta/cfg/kernel-**cache/ktypes/standard/ directory.
>>>
>>> My current burning question is:  Where is does this file come from? It
>>> does not seem to be part of the kernel git repository.  I can changes
>>> this file and affect the kernel build, but again, those changes are
>>> transitory and do not persist after cleaning.
>>>
>>
>> It's from the meta branch of the kernel git repository. Those
>> are all the fragments that are used to construct and configure
>> the kernel. Part of the build process makes them available to the
>> configuration phase.
>>
>> As something else to try, call your file <foo>.cfg and add it to the
>> SRC_URI the same way you added the defconfig. defconfig's get special
>> processing, calling it <foo>.cfg will simply get your changes added
>> to the end of the build and they teka precedence.
>>
>
> Tried your above suggestion, didn't seem to work.
>
> So with a bit of further testing it looks like by the time the defconfig
> and the <foo>.cfg are copied into the linux directory, the commented out
> config option: # CONFIG_UNION_FS is not set
> line is totally gone.
>
>
Interesting .. and not really possible if you are talking about the version
in $WORKDIR (i.e
the directory above the linux/ source directory). Those are straight copies
from your
layer, with zero processing. Same with the copy within the linux/meta/cfg/*
directory
structure, they are straight copies and are only processed after being
ordered and
concatenated.


>
>
>  That being said, if
>> a feature with a Kconfig of the kernel has a "select UNIONFS" then you
>> can't override it with a config/defconfig option, you need to patch
>> the kernel.
>>
> Not sure what you are saying here.  If you mean that the unionfs kernel
> option is required by another selected kernel config option, I'm pretty
> sure that's not the case.  I can bitbake -c menuconfig virtual/kernel and
> merely deselect the unionfs option and the kernel is good.
>
>
I can't see your source tree, so it was always an option. I know it
definitely isn't
the case in the linux-yocto tree. But the ability to deselect it in
menuconfig isn't
contingent on something else not selecting it from within another Kconfig.

Again, if you send me your defconfig and local.conf changes (for the BSP),
I'll
run a kernel configuration test and be able to easily tell you what is
happening.

Cheers,

Bruce


>
> Brian
>
>
>
>
>
>  If you send me your defconfig, I can run some test builds here.
>>
>> Bruce
>>
>>
>>
>>
>>
>>> Thanks,
>>>
>>> Brian
>>>
>>>
>>>
>>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--f46d04083b51cb458f04d25596c7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Jan 2, 2013 at 4:47 PM, Brian Smucker <span dir=3D"ltr">&lt=
;<a href=3D"mailto:bds@bsmucker.eu.org" target=3D"_blank">bds@bsmucker.eu.o=
rg</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 1=
/2/2013 1:12 PM, Bruce Ashfield wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 13-01-02 04:11 PM, Brian Smucker wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 1/2/2013 10:06 AM, Bruce Ashfield wrote:<br>
=A0&gt; On 12-12-24 02:59 PM, Brian Smucker wrote:<br>
=A0&gt;&gt; Hi,<br>
=A0&gt;&gt;<br>
=A0&gt;<br>
=A0&gt; Catching up on email from the holidays. Did you ever get an answer<=
br>
=A0&gt; to this ?<br>
Not yet, =A0resumed my quest today.<br>
<br>
=A0&gt;&gt; I&#39;m a yocto mostly-newbie, trying to find my way. =A0I have=
 a custom<br>
layer<br>
=A0&gt;&gt; that I am using to build a kernel. The layer right now consists=
 of a<br>
few<br>
=A0&gt;&gt; kernel patches and a defconfig and is based on the standard ker=
nel<br>
=A0&gt;&gt; otherwise.<br>
=A0&gt;&gt;<br>
=A0&gt;&gt; When I do a diff on my defconfig and the bitbake generated .con=
fig,<br>
they<br>
=A0&gt;&gt; are quite similar, but the CONFIG_UNION_FS=3Dy line magically s=
hows up.<br>
=A0&gt;&gt; I&#39;m wondering where it comes from and how to disable it.<br=
>
=A0&gt;<br>
=A0&gt; CONFIG_UNION_FS is being enabled by the standard kernel (and all<br=
>
=A0&gt; kernels that inherit it). Since you are based on that kernel, you<b=
r>
=A0&gt; get the option enabled.<br>
=A0&gt;<br>
=A0&gt;&gt;<br>
=A0&gt;&gt; I can do a bitbake -c menuconfig virtual/kernel and eliminate t=
hat<br>
=A0&gt;&gt; option giving me the kernel I want, but those changes are gone =
after a<br>
=A0&gt;&gt; bitbake -c cleansstate ...<br>
=A0&gt;<br>
=A0&gt; Have you tried putting<br>
=A0&gt;<br>
=A0&gt; # CONFIG_UNION_FS is not set<br>
=A0&gt;<br>
=A0&gt; in your defconfig ? That should disable it.<br>
=A0&gt;<br>
I did try that, but that did not disable it.<br>
</blockquote>
<br>
Hmmm. It worked here. I&#39;ll run another test shortly (I&#39;m working on=
<br>
3.8-rc1 at the moment).<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
So after much pain and thrashing about to figure things out, now I see<br>
that in the standard-nocfg.scc file, the unionfs feature is set. This<br>
file is found in the following path: tmp/work/..<br>
../linux/meta/cfg/kernel-<u></u>cache/ktypes/standard/ directory.<br>
<br>
My current burning question is: =A0Where is does this file come from? It<br=
>
does not seem to be part of the kernel git repository. =A0I can changes<br>
this file and affect the kernel build, but again, those changes are<br>
transitory and do not persist after cleaning.<br>
</blockquote>
<br>
It&#39;s from the meta branch of the kernel git repository. Those<br>
are all the fragments that are used to construct and configure<br>
the kernel. Part of the build process makes them available to the<br>
configuration phase.<br>
<br>
As something else to try, call your file &lt;foo&gt;.cfg and add it to the<=
br>
SRC_URI the same way you added the defconfig. defconfig&#39;s get special<b=
r>
processing, calling it &lt;foo&gt;.cfg will simply get your changes added<b=
r>
to the end of the build and they teka precedence. <br>
</blockquote>
<br></div></div>
Tried your above suggestion, didn&#39;t seem to work.<br>
<br>
So with a bit of further testing it looks like by the time the defconfig an=
d the &lt;foo&gt;.cfg are copied into the linux directory, the commented ou=
t config option: # CONFIG_UNION_FS is not set<br>
line is totally gone.<div class=3D"im"><br></div></blockquote><div><br></di=
v><div style>Interesting .. and not really possible if you are talking abou=
t the version in $WORKDIR (i.e</div><div style>the directory above the linu=
x/ source directory). Those are straight copies from your</div>
<div style>layer, with zero processing. Same with the copy within the linux=
/meta/cfg/* directory</div><div style>structure, they are straight copies a=
nd are only processed after being ordered and=A0</div><div style>concatenat=
ed.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
That being said, if<br>
a feature with a Kconfig of the kernel has a &quot;select UNIONFS&quot; the=
n you<br>
can&#39;t override it with a config/defconfig option, you need to patch<br>
the kernel.<br>
</blockquote></div>
Not sure what you are saying here. =A0If you mean that the unionfs kernel o=
ption is required by another selected kernel config option, I&#39;m pretty =
sure that&#39;s not the case. =A0I can bitbake -c menuconfig virtual/kernel=
 and merely deselect the unionfs option and the kernel is good.<span class=
=3D"HOEnZb"><font color=3D"#888888"><br>

<br></font></span></blockquote><div><br></div><div style>I can&#39;t see yo=
ur source tree, so it was always an option. I know it definitely isn&#39;t<=
/div><div style>the case in the linux-yocto tree. But the ability to desele=
ct it in menuconfig isn&#39;t</div>
<div style>contingent on something else not selecting it from within anothe=
r Kconfig.</div><div style><br></div><div style>Again, if you send me your =
defconfig and local.conf changes (for the BSP), I&#39;ll</div><div style>
run a kernel configuration test and be able to easily tell you what is happ=
ening.</div><div style><br></div><div style>Cheers,</div><div style><br></d=
iv><div style>Bruce</div><div>=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<span class=3D"HOEnZb"><font color=3D"#888888">
<br>
Brian</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
If you send me your defconfig, I can run some test builds here.<br>
<br>
Bruce<br>
<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thanks,<br>
<br>
Brian<br>
<br>
<br>
</blockquote>
<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await t=
hee at its end&quot;
</div></div>

--f46d04083b51cb458f04d25596c7--
