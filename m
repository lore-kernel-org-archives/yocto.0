Return-Path: <sudhangathan@gmail.com>
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30DBE007C9
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 03:30:48 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id i13so4670676qae.10
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2013 03:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=W1GvNfqkZnU2kSgtzZ6skoZcjtBCOXoCIz/BgVXdZ6s=;
	b=Y0+/5XJqjVg6/ACQWlyPYdWWd/QZGHN4UL4AArlJZk8Kmu0c7YCIg4BN/fGvahtVrL
	+IVaIriD4XJBUT7uiXGdOAjPO4BjmA4hhQLBiutZVGHYNzhWita1a6OQnmxlI4MH13DX
	BXFCQkmjLX8OGyTA6DZEyAlQVxeZL7Fd9yLuN3GMSDrAUkJytqkK+7Nfv3OnNpoo/Dkw
	Y8gj/jkgFuy8oQHYHLTmKlxdF6pLvg0BLw9OirS7tuV3Rooi1MudJssfBWs6Ljj0qi/u
	v5RUCd8zNfIXv0mKIDvj4wlTB5dFmuDJXA1TmnpTdGSH1X2884IbNOm5/ObtFCkbJ2j7
	eSoQ==
X-Received: by 10.49.15.202 with SMTP id z10mr1652153qec.46.1386761447590;
	Wed, 11 Dec 2013 03:30:47 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.21.4 with HTTP; Wed, 11 Dec 2013 03:30:27 -0800 (PST)
In-Reply-To: <52A8109A.50705@windriver.com>
References: <CAGX3a99HP8-gseen9mzKB_g2hSGCeLGt0oFe4t6MDOazqSaGdQ@mail.gmail.com>
	<52A8109A.50705@windriver.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
Date: Wed, 11 Dec 2013 17:00:27 +0530
Message-ID: <CAGX3a9-Nn+FYRbz4o_MrtV7-uBDxshaTTX6Kvyi4bp10mkhyYQ@mail.gmail.com>
To: "Gumstix users." <gumstix-users@lists.sourceforge.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling kernel from external source in Yocto
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
X-List-Received-Date: Wed, 11 Dec 2013 11:30:49 -0000
Content-Type: multipart/alternative; boundary=047d7bb03c8478d68a04ed408fdb

--047d7bb03c8478d68a04ed408fdb
Content-Type: text/plain; charset=ISO-8859-1

Thanks Bruce, I now understood a little more..!

So if I put the defconfig file in the place it is looking for (kindly note,
it is looking for defconfig within yocto folders, it is is not looking for
defconfig in my external src directory), it then throws this error:

NOTE: Executing RunQueue Tasks
ERROR: Function failed: do_configure (see
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683
for further information)
ERROR: Logfile of failure stored in:
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| NOTE: make oldconfig
| make: *** No rule to make target `oldconfig'.  Stop.
| ERROR: oe_runmake failed
| ERROR: Function failed: do_configure (see
/home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683
for further information)
ERROR: Task 2
(/home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
linux-omap-khilmanpm_3.5.bb, do_configure) failed with exit code '1'
NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn't need to be
rerun and 1 failed.
No currently running tasks (264 of 559)

Summary: 1 task failed:
  /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
linux-omap-khilmanpm_3.5.bb, do_configure
Summary: There was 1 ERROR message shown, returning a non-zero exit code.
desen555@Xeon-S5000XVN:~/yocto/build$

Now I hope you have more information...!!
My external src directory has got the .config file.

---------------------------------
Sudhangathan BS
Ph:(+91) 9731-905-205
---------------------------------


On Wed, Dec 11, 2013 at 12:43 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:
>
>> Hi, I'm having this issue, I'm not able to compile a kernel source which
>> I have in my system, locally.
>>
>> This is my recipe, after following instructions at
>> http://www.yoctoproject.org/docs/1.4/dev-manual/dev-
>> manual.html#building-software-from-an-external-source
>>
>> require linux.inc
>> #THIS TEMPLATE COPIED FROM linux-sakoman_3.5.bb
>> <http://linux-sakoman_3.5.bb>
>>
>> DESCRIPTION = "Linux kernel for OMAP processors"
>> LIC_FILES_CHKSUM = "file://COPYING;md5=d7810fab7487fb0aad327b76f1be7cd7"
>> KERNEL_IMAGETYPE = "uImage"
>> COMPATIBLE_MACHINE = "overo"
>> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-omap-khilmanpm:"
>> PV = "3.5"
>> inherit externalsrc
>> S =
>> "/home/desen555/suan_work/kernel_work/khilman35-src-
>> mods/linux-omap-khilmanpm"
>> B = "${WORKDIR}/git"
>> SRC_URI = "file://defconfig \
>>             file://omap2plus_defconfig \
>>             file://usb_off.patch \
>>             "
>>
>> As you can see the kernel source directory is in S variable.
>>
>> When the command "bitbake virtual/kernel" is run, i get this output
>>
>> ERROR: Function failed: do_configure (see
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
>> for further information)
>> ERROR: Logfile of failure stored in:
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
>> Log data follows:
>> | DEBUG: Executing python function sysroot_cleansstate
>> | DEBUG: Python function sysroot_cleansstate finished
>> | DEBUG: Executing shell function do_configure
>> | sed: can't read
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/*defconfig:
>> No such file or directory*
>>
>> | ERROR: Function failed: do_configure (see
>> /home/desen555/yocto/build/tmp/work/overo-poky-linux-
>> gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.28505
>> for further information)
>> ERROR: Task 2
>> (/home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
>> linux-omap-khilmanpm_3.5.bb
>> <http://linux-omap-khilmanpm_3.5.bb>, do_configure) failed with exit
>>
>> code '1'
>> NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn't need to be
>> rerun and 1 failed.
>> Waiting for 0 running tasks to finish:
>>
>> Summary: 1 task failed:
>>
>> /home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel/linux/
>> linux-omap-khilmanpm_3.5.bb
>> <http://linux-omap-khilmanpm_3.5.bb>, do_configure
>>
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>
>> If at all I put my defconfig file in the place it is looking for, then
>> it throws other errors, so I guess that is not the right way..
>>
>
> What other errors ? You are on the right track. When using externalsrc,
> you need to ensure the kernel is configured before the build starts,
> since the actual build skips steps to not modify your source tree.
>
> If you ensure that a full .config is in your kernel's build directory, and
> that defconfig is in place, what errors do you get then ?
>
> Also note: you can have tasks skipped by adding them to SRCTREECOVEREDTASKS
> in your recipe.
>
> Bruce
>
>
>> Anybody compiled kernel as an external source in yocto..??
>> ---------------------------------
>> *Sudhangathan BS*
>> Ph:(+91) 9731-905-205
>> ---------------------------------
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>

--047d7bb03c8478d68a04ed408fdb
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><font size=3D"4">Thanks Bruce, I now understood a little m=
ore..!</font><div><font size=3D"4"><br></font></div><div><font size=3D"4">S=
o if I put the defconfig file in the place it is looking for (kindly note, =
it is looking for defconfig within yocto folders, it is is not looking for =
defconfig in my external src directory), it then throws this error:</font><=
/div>


<div><br></div><div><div>NOTE: Executing RunQueue Tasks</div><div>ERROR: Fu=
nction failed: do_configure (see /home/desen555/yocto/build/tmp/work/overo-=
poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683 fo=
r further information)</div>


<div>ERROR: Logfile of failure stored in: /home/desen555/yocto/build/tmp/wo=
rk/overo-poky-linux-gnueabi/linux-omap-khilmanpm/3.5-r0/temp/log.do_configu=
re.683</div><div>Log data follows:</div><div>| DEBUG: Executing python func=
tion sysroot_cleansstate</div>


<div>| DEBUG: Python function sysroot_cleansstate finished</div><div>| DEBU=
G: Executing shell function do_configure</div><div>| NOTE: make oldconfig</=
div><div>| make: *** No rule to make target `oldconfig&#39;. =A0Stop.</div>


<div>| ERROR: oe_runmake failed</div><div>| ERROR: Function failed: do_conf=
igure (see /home/desen555/yocto/build/tmp/work/overo-poky-linux-gnueabi/lin=
ux-omap-khilmanpm/3.5-r0/temp/log.do_configure.683 for further information)=
</div>


<div>ERROR: Task 2 (/home/desen555/yocto/poky/meta-dese_iisc/recipes-kernel=
/linux/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">lin=
ux-omap-khilmanpm_3.5.bb</a>, do_configure) failed with exit code &#39;1&#3=
9;</div>

<div>NOTE: Tasks Summary: Attempted 545 tasks of which 544 didn&#39;t need =
to be rerun and 1 failed.</div>
<div>No currently running tasks (264 of 559)</div><div><br></div><div>Summa=
ry: 1 task failed:</div><div>=A0 /home/desen555/yocto/poky/meta-dese_iisc/r=
ecipes-kernel/linux/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=
=3D"_blank">linux-omap-khilmanpm_3.5.bb</a>, do_configure</div>


<div>Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.</div><div>desen555@Xeon-S5000XVN:~/yocto/build$=A0</div></div><div><br>=
</div><div><font size=3D"4">Now I hope you have more information...!!</font=
></div>


<div><font size=3D"4">My external src directory has got the .config file.</=
font></div><div class=3D"gmail_extra"><br clear=3D"all"><div>--------------=
-------------------<br>Sudhangathan BS<br>Ph:<a href=3D"tel:%28%2B91%29%209=
731-905-205" value=3D"+919731905205" target=3D"_blank">(+91) 9731-905-205</=
a><br>

---------------------------------</div>

<br><br><div class=3D"gmail_quote">On Wed, Dec 11, 2013 at 12:43 PM, Bruce =
Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.c=
om" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br=
><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1=
px #ccc solid;padding-left:1ex">


<div>On 12/11/2013, 2:00 AM, Sudhangathan B S wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div>
Hi, I&#39;m having this issue, I&#39;m not able to compile a kernel source =
which<br>
I have in my system, locally.<br>
<br>
This is my recipe, after following instructions at<br>
<a href=3D"http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#=
building-software-from-an-external-source" target=3D"_blank">http://www.yoc=
toproject.org/<u></u>docs/1.4/dev-manual/dev-<u></u>manual.html#building-so=
ftware-<u></u>from-an-external-source</a><br>



<br>
require linux.inc<br>
#THIS TEMPLATE COPIED FROM <a href=3D"http://linux-sakoman_3.5.bb" target=
=3D"_blank">linux-sakoman_3.5.bb</a><br></div>
&lt;<a href=3D"http://linux-sakoman_3.5.bb" target=3D"_blank">http://linux-=
sakoman_3.5.bb</a>&gt;<div><div><br>
DESCRIPTION =3D &quot;Linux kernel for OMAP processors&quot;<br>
LIC_FILES_CHKSUM =3D &quot;file://COPYING;md5=3D<u></u>d7810fab7487fb0aad32=
7b76f1be7c<u></u>d7&quot;<br>
KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br>
COMPATIBLE_MACHINE =3D &quot;overo&quot;<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/linux-omap-<u></u>khilmanpm:&=
quot;<br>
PV =3D &quot;3.5&quot;<br>
inherit externalsrc<br>
S =3D<br>
&quot;/home/desen555/suan_work/<u></u>kernel_work/khilman35-src-<u></u>mods=
/linux-omap-khilmanpm&quot;<br>
B =3D &quot;${WORKDIR}/git&quot;<br>
SRC_URI =3D &quot;file://defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://omap2plus_defconfig \<br>
=A0 =A0 =A0 =A0 =A0 =A0 file://usb_off.patch \<br>
=A0 =A0 =A0 =A0 =A0 =A0 &quot;<br>
<br>
As you can see the kernel source directory is in S variable.<br>
<br>
When the command &quot;bitbake virtual/kernel&quot; is run, i get this outp=
ut<br>
<br>
ERROR: Function failed: do_configure (see<br>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/temp/log.do_configure.<u></u>28505<br>
for further information)<br>
ERROR: Logfile of failure stored in:<br>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/temp/log.do_configure.<u></u>28505<br>
Log data follows:<br>
| DEBUG: Executing python function sysroot_cleansstate<br>
| DEBUG: Python function sysroot_cleansstate finished<br>
| DEBUG: Executing shell function do_configure<br>
| sed: can&#39;t read<br></div></div>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/*defconfig:<br>
No such file or directory*<div><br>
| ERROR: Function failed: do_configure (see<br>
/home/desen555/yocto/build/<u></u>tmp/work/overo-poky-linux-<u></u>gnueabi/=
linux-omap-khilmanpm/<u></u>3.5-r0/temp/log.do_configure.<u></u>28505<br>
for further information)<br>
ERROR: Task 2<br>
(/home/desen555/yocto/poky/<u></u>meta-dese_iisc/recipes-kernel/<u></u>linu=
x/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">linux-om=
ap-khilmanpm_3.<u></u>5.bb</a><br></div>
&lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">http:/=
/linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;, do_configure) failed with exit=
<div><br>
code &#39;1&#39;<br>
NOTE: Tasks Summary: Attempted 545 tasks of which 543 didn&#39;t need to be=
<br>
rerun and 1 failed.<br>
Waiting for 0 running tasks to finish:<br>
<br>
Summary: 1 task failed:<br>
<br>
/home/desen555/yocto/poky/<u></u>meta-dese_iisc/recipes-kernel/<u></u>linux=
/<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">linux-oma=
p-khilmanpm_3.<u></u>5.bb</a><br></div>
&lt;<a href=3D"http://linux-omap-khilmanpm_3.5.bb" target=3D"_blank">http:/=
/linux-omap-khilmanpm_<u></u>3.5.bb</a>&gt;, do_configure<div><br>
Summary: There was 1 ERROR message shown, returning a non-zero exit code.<b=
r>
<br>
If at all I put my defconfig file in the place it is looking for, then<br>
it throws other errors, so I guess that is not the right way..<br>
</div></blockquote>
<br>
What other errors ? You are on the right track. When using externalsrc,<br>
you need to ensure the kernel is configured before the build starts,<br>
since the actual build skips steps to not modify your source tree.<br>
<br>
If you ensure that a full .config is in your kernel&#39;s build directory, =
and that defconfig is in place, what errors do you get then ?<br>
<br>
Also note: you can have tasks skipped by adding them to SRCTREECOVEREDTASKS=
<br>
in your recipe.<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>
<br>
Anybody compiled kernel as an external source in yocto..??<br>
------------------------------<u></u>---<br></div>
*Sudhangathan BS*<br>
Ph:<a href=3D"tel:%28%2B91%29%209731-905-205" value=3D"+919731905205" targe=
t=3D"_blank">(+91) 9731-905-205</a><br>
------------------------------<u></u>---<br>
<br>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
<br>
</blockquote>
<br>
</blockquote></div><br></div></div>

--047d7bb03c8478d68a04ed408fdb--
