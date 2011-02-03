Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id EFEFF4C800A8
	for <yocto@yoctoproject.org>; Thu,  3 Feb 2011 11:28:17 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so1385968iwn.35
	for <yocto@yoctoproject.org>; Thu, 03 Feb 2011 09:28:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=vD7W/CDUdvuN0jQe/HLO7FvF9dweWpSK6UYZS2yZAv4=;
	b=acWt1H5lFSn9CWqL/H8ac0DEbPgV5p7PvauydgAZiIgy1pvcnGiJSwk4OMYoyJtFjf
	DwWFhr30lsr97ODTFNVaI2CSCfJm0X51lRtBQrgsRX8FK0F5Dexeq/V6Dqp3Qk8wmtnX
	Y7ejQzG4f5UxwH7DgTBwqb9ZtSrbFhy+QrHFE=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=E6sblYStNlszpaylEipNK3j9Lpl4gwqu8KDG/2hTFkcm9XCPoZHEhubParNkS2Xww3
	p0qTWo0jBbqcqTQUxvqZjtZ0rz5vUsRvyVmfeW2e4JpsolXdFIBUl8ZB/hCjnjFRKqs4
	HMqywB7HTBS/vQy1LNljqPoT6QaYFqhTi8fLE=
Received: by 10.42.218.138 with SMTP id hq10mr13062116icb.364.1296754097279;
	Thu, 03 Feb 2011 09:28:17 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.222.202 with HTTP; Thu, 3 Feb 2011 09:27:57 -0800 (PST)
In-Reply-To: <4D4AE08A.7020201@mlbassoc.com>
References: <AANLkTinBmzf=erJiuG+pxtXVD9Yd3z7bnC1yUuDvp5N2@mail.gmail.com>
	<9DA5872FEF993D41B7173F58FCF6BE940A5EBA78@orsmsx504.amr.corp.intel.com>
	<4D495FE0.7020507@mlbassoc.com> <4D497825.3010307@mlbassoc.com>
	<9DA5872FEF993D41B7173F58FCF6BE9411F4279C@orsmsx504.amr.corp.intel.com>
	<4D4AE08A.7020201@mlbassoc.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 3 Feb 2011 15:27:57 -0200
Message-ID: <AANLkTi=WEBqH3Y7Ga4Tbm_XPyZQ16JgoZrWUVcg8O-Bx@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel Panics on armv4t with gcc.4.5.1
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
X-List-Received-Date: Thu, 03 Feb 2011 17:28:18 -0000
Content-Type: multipart/alternative; boundary=20cf3054a177545675049b6417da

--20cf3054a177545675049b6417da
Content-Type: text/plain; charset=ISO-8859-1

Gary,

I suggest you to remove all gcc entries on sstate-cache and stamp
directories.
After that try to build it again.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Thu, Feb 3, 2011 at 3:06 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> On 02/03/2011 10:03 AM, Kamble, Nitin A wrote:
>
>> Hi Gary,
>>  I would look into the 4.5.2 branch and will try to get it to work.
>> BTW there is some workaround Diego Sueiro came up with in his email yday
>> for 4.5.2 gcc.
>>
>
> I already applied his changes.  The errors I'm getting
> are completely different than what he was seeing.
>
>
>  -----Original Message-----
>>> From: yocto-bounces@yoctoproject.org [mailto:yocto-
>>> bounces@yoctoproject.org] On Behalf Of Gary Thomas
>>> Sent: Wednesday, February 02, 2011 7:29 AM
>>> To: yocto@yoctoproject.org
>>> Subject: Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1
>>>
>>> On 02/02/2011 06:45 AM, Gary Thomas wrote:
>>>
>>>> On 01/31/2011 05:41 PM, Kamble, Nitin A wrote:
>>>>
>>>>> Diego,
>>>>>
>>>>> Can you try with 4.5.2 gcc from this branch:
>>>>>
>>>> http://git.pokylinux.org/cgit/cgit.cgi/poky-
>>> contrib/log/?h=nitin/khem_gcc_nitin
>>>
>>>>
>>>> I too am having trouble (OMAP-L138 == armv5te/arm926ejs)
>>>>
>>>> Nitin, I tried using your branch, but it failed to build:
>>>>
>>>> NOTE: package gcc-cross-intermediate-4.5.2-r3: task
>>>>
>>> do_populate_sysroot: Started
>>>
>>>> ERROR: Error executing a python function in /home/local/poky-
>>>>
>>> contrib/meta/recipes-devtools/gcc/gcc-cross-intermediate_4.5.2.bb:
>>>
>>>> OSError: [Errno 2] No such file or directory:
>>>> '/home/local/efacec_omap_4.5.2/tmp/work/armv5te-poky-linux-
>>>>
>>> gnueabi/gcc-cross-intermediate-4.5.2-r3/sysroot-
>>> destdir///home/local/efacec_omap_4.5.2/tmp/sysroots/cobra-
>>> omapl138p78//lib'
>>>
>>>>
>>>> ERROR: The stack trace of python calls that resulted in this
>>>>
>>> exception/failure was:
>>>
>>>> ERROR: File "sstate_task_postfunc", line 10, in<module>
>>>> ERROR:
>>>> ERROR: File "sstate_task_postfunc", line 4, in sstate_task_postfunc
>>>> ERROR:
>>>> ERROR: File "sstate.bbclass", line 17, in sstate_install
>>>> ERROR:
>>>> ERROR: File "/home/local/poky-contrib/meta/lib/oe/path.py", line 56,
>>>>
>>> in copytree
>>>
>>>> ERROR: names = os.listdir(src)
>>>> ERROR:
>>>> ERROR: The code that was being executed was:
>>>> ERROR: 0006: bb.build.exec_func(intercept, d)
>>>> ERROR: 0007: sstate_package(shared_state, d)
>>>> ERROR: 0008:
>>>> ERROR: 0009:
>>>> ERROR: *** 0010:sstate_task_postfunc(d)
>>>> ERROR: 0011:
>>>> ERROR: (file: 'sstate_task_postfunc', lineno: 10, function:<module>)
>>>> ERROR: 0001:
>>>> ERROR: 0002:def sstate_task_postfunc(d):
>>>> ERROR: 0003: shared_state = sstate_state_fromvars(d)
>>>> ERROR: *** 0004: sstate_install(shared_state, d)
>>>> ERROR: 0005: for intercept in shared_state['interceptfuncs']:
>>>> ERROR: 0006: bb.build.exec_func(intercept, d)
>>>> ERROR: 0007: sstate_package(shared_state, d)
>>>> ERROR: 0008:
>>>> ERROR: (file: 'sstate_task_postfunc', lineno: 4, function:
>>>>
>>> sstate_task_postfunc)
>>>
>>>> ERROR: Function 'sstate_task_postfunc' failed
>>>>
>>>>
>>>> Any ideas how to fix this?
>>>>
>>>
>>> Just to check, I applied the patches from Nitin's contrib tree
>>> to poky/master and rebuilt - same results.  I used the sequence
>>>    5b7e96d852778f1164198040cbd165241ea51e40..HEAD
>>>
>>>
>>>>  *From:*yocto-bounces@yoctoproject.org [mailto:yocto-
>>>>>
>>>> bounces@yoctoproject.org] *On Behalf Of *Diego Sueiro
>>>
>>>> *Sent:* Monday, January 31, 2011 10:53 AM
>>>>> *To:* yocto@yoctoproject.org
>>>>> *Subject:* [yocto] Kernel Panics on armv4t with gcc.4.5.1
>>>>>
>>>>> Folks,
>>>>>
>>>>> I'm not a kernel and neither a gcc expert developer, and after
>>>>>
>>>> searching for a solution for the last 2 weeks I've decided to appeal to
>>> the list.
>>>
>>>>
>>>>> I'm trying to build a kernel image (2.6.32 and 2.6.30) for mini2440
>>>>>
>>>> (armv4t) with Yocto Project (poky master branch) and I'm facing a
>>> strange issue.
>>>
>>>>
>>>>> If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the
>>>>>
>>>> kernel will panic on init (console printed message is attached for
>>> kernel 2.6.30 and 2.6.32).
>>>
>>>>
>>>>> But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5)
>>>>>
>>>> everything will be ok.
>>>
>>>>
>>>>> Just for your reference these is the gcc recipes which I'm using:
>>>>>
>>>>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-
>>>>>
>>>> devtools/gcc
>>>
>>>>
>>>>> http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/recipes-
>>>>>
>>>> devtools/gcc
>>>
>>>>
>>>>> I've compiled with and without thumb instructions, but the issue
>>>>>
>>>> remains.
>>>
>>>>
>>>>> I've tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch
>>>>>
>>>> and gcc-arm-volatile-bitfield-fix.patch, but no success.
>>>
>>>>
>>>>> Kind Regards,
>>>>>
>>>>> --
>>>>>
>>>>> *dS
>>>>> Diego Sueiro
>>>>>
>>>>> /*long live rock 'n roll*/
>>>>>
>>>>>
>>>>>
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>
>>>>
>>> --
>>> ------------------------------------------------------------
>>> Gary Thomas                 |  Consulting for the
>>> MLB Associates              |    Embedded world
>>> ------------------------------------------------------------
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--20cf3054a177545675049b6417da
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Gary,<div><br></div><div>I suggest you to remove all gcc entries on=A0sstat=
e-cache and stamp directories.</div><div>After that try to build it again.<=
/div><div><br></div><div><br><div><div>Regards,</div><div><br></div>--<br>

*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Thu, Feb 3, 2011 at 3:06 PM, Gary Tho=
mas <span dir=3D"ltr">&lt;<a href=3D"mailto:gary@mlbassoc.com">gary@mlbasso=
c.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

<div class=3D"im">On 02/03/2011 10:03 AM, Kamble, Nitin A wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Gary,<br>
 =A0I would look into the 4.5.2 branch and will try to get it to work.<br>
BTW there is some workaround Diego Sueiro came up with in his email yday fo=
r 4.5.2 gcc.<br>
</blockquote>
<br></div>
I already applied his changes. =A0The errors I&#39;m getting<br>
are completely different than what he was seeing.<div><div></div><div class=
=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
-----Original Message-----<br>
From: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">y=
octo-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-" target=
=3D"_blank">yocto-</a><br>
<a href=3D"mailto:bounces@yoctoproject.org" target=3D"_blank">bounces@yocto=
project.org</a>] On Behalf Of Gary Thomas<br>
Sent: Wednesday, February 02, 2011 7:29 AM<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yocto=
project.org</a><br>
Subject: Re: [yocto] Kernel Panics on armv4t with gcc.4.5.1<br>
<br>
On 02/02/2011 06:45 AM, Gary Thomas wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 01/31/2011 05:41 PM, Kamble, Nitin A wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Diego,<br>
<br>
Can you try with 4.5.2 gcc from this branch:<br>
</blockquote></blockquote>
<a href=3D"http://git.pokylinux.org/cgit/cgit.cgi/poky-" target=3D"_blank">=
http://git.pokylinux.org/cgit/cgit.cgi/poky-</a><br>
contrib/log/?h=3Dnitin/khem_gcc_nitin<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
I too am having trouble (OMAP-L138 =3D=3D armv5te/arm926ejs)<br>
<br>
Nitin, I tried using your branch, but it failed to build:<br>
<br>
NOTE: package gcc-cross-intermediate-4.5.2-r3: task<br>
</blockquote>
do_populate_sysroot: Started<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
ERROR: Error executing a python function in /home/local/poky-<br>
</blockquote>
contrib/meta/recipes-devtools/gcc/<a href=3D"http://gcc-cross-intermediate_=
4.5.2.bb" target=3D"_blank">gcc-cross-intermediate_4.5.2.bb</a>:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
OSError: [Errno 2] No such file or directory:<br>
&#39;/home/local/efacec_omap_4.5.2/tmp/work/armv5te-poky-linux-<br>
</blockquote>
gnueabi/gcc-cross-intermediate-4.5.2-r3/sysroot-<br>
destdir///home/local/efacec_omap_4.5.2/tmp/sysroots/cobra-<br>
omapl138p78//lib&#39;<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
ERROR: The stack trace of python calls that resulted in this<br>
</blockquote>
exception/failure was:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
ERROR: File &quot;sstate_task_postfunc&quot;, line 10, in&lt;module&gt;<br>
ERROR:<br>
ERROR: File &quot;sstate_task_postfunc&quot;, line 4, in sstate_task_postfu=
nc<br>
ERROR:<br>
ERROR: File &quot;sstate.bbclass&quot;, line 17, in sstate_install<br>
ERROR:<br>
ERROR: File &quot;/home/local/poky-contrib/meta/lib/oe/path.py&quot;, line =
56,<br>
</blockquote>
in copytree<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
ERROR: names =3D os.listdir(src)<br>
ERROR:<br>
ERROR: The code that was being executed was:<br>
ERROR: 0006: bb.build.exec_func(intercept, d)<br>
ERROR: 0007: sstate_package(shared_state, d)<br>
ERROR: 0008:<br>
ERROR: 0009:<br>
ERROR: *** 0010:sstate_task_postfunc(d)<br>
ERROR: 0011:<br>
ERROR: (file: &#39;sstate_task_postfunc&#39;, lineno: 10, function:&lt;modu=
le&gt;)<br>
ERROR: 0001:<br>
ERROR: 0002:def sstate_task_postfunc(d):<br>
ERROR: 0003: shared_state =3D sstate_state_fromvars(d)<br>
ERROR: *** 0004: sstate_install(shared_state, d)<br>
ERROR: 0005: for intercept in shared_state[&#39;interceptfuncs&#39;]:<br>
ERROR: 0006: bb.build.exec_func(intercept, d)<br>
ERROR: 0007: sstate_package(shared_state, d)<br>
ERROR: 0008:<br>
ERROR: (file: &#39;sstate_task_postfunc&#39;, lineno: 4, function:<br>
</blockquote>
sstate_task_postfunc)<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
ERROR: Function &#39;sstate_task_postfunc&#39; failed<br>
<br>
<br>
Any ideas how to fix this?<br>
</blockquote>
<br>
Just to check, I applied the patches from Nitin&#39;s contrib tree<br>
to poky/master and rebuilt - same results. =A0I used the sequence<br>
 =A0 =A05b7e96d852778f1164198040cbd165241ea51e40..HEAD<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
*From:*<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">=
yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-" target=
=3D"_blank">yocto-</a><br>
</blockquote></blockquote>
<a href=3D"mailto:bounces@yoctoproject.org" target=3D"_blank">bounces@yocto=
project.org</a>] *On Behalf Of *Diego Sueiro<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
*Sent:* Monday, January 31, 2011 10:53 AM<br>
*To:* <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoc=
toproject.org</a><br>
*Subject:* [yocto] Kernel Panics on armv4t with gcc.4.5.1<br>
<br>
Folks,<br>
<br>
I&#39;m not a kernel and neither a gcc expert developer, and after<br>
</blockquote></blockquote>
searching for a solution for the last 2 weeks I&#39;ve decided to appeal to=
<br>
the list.<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
I&#39;m trying to build a kernel image (2.6.32 and 2.6.30) for mini2440<br>
</blockquote></blockquote>
(armv4t) with Yocto Project (poky master branch) and I&#39;m facing a<br>
strange issue.<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
If I compile the kernel with Yocto gcc recipes (gcc 4.5.1) the<br>
</blockquote></blockquote>
kernel will panic on init (console printed message is attached for<br>
kernel 2.6.30 and 2.6.32).<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
But, if I compile the kernel with meta-oe gcc recipes (gcc 4.5)<br>
</blockquote></blockquote>
everything will be ok.<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Just for your reference these is the gcc recipes which I&#39;m using:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes=
-" target=3D"_blank">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/me=
ta/recipes-</a><br>
</blockquote></blockquote>
devtools/gcc<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
<a href=3D"http://git.openembedded.org/cgit.cgi/meta-openembedded/tree/reci=
pes-" target=3D"_blank">http://git.openembedded.org/cgit.cgi/meta-openembed=
ded/tree/recipes-</a><br>
</blockquote></blockquote>
devtools/gcc<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
I&#39;ve compiled with and without thumb instructions, but the issue<br>
</blockquote></blockquote>
remains.<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
I&#39;ve tried to apply the patches gcc-armv4-pass-fix-v4bx-to-ld.patch<br>
</blockquote></blockquote>
and gcc-arm-volatile-bitfield-fix.patch, but no success.<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
Kind Regards,<br>
<br>
--<br>
<br>
*dS<br>
Diego Sueiro<br>
<br>
/*long live rock &#39;n roll*/<br>
<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
<br>
</blockquote>
<br>
--<br>
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></blockquote>
<br></div></div>
-- <br><div><div></div><div class=3D"h5">
------------------------------------------------------------<br>
Gary Thomas =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A0Consulting for the<br>
MLB Associates =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A0Embedded world<br>
------------------------------------------------------------<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</div></div></blockquote></div><br></div></div>

--20cf3054a177545675049b6417da--
