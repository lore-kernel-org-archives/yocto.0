Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id E7B144C8006D
	for <yocto@yoctoproject.org>; Tue,  8 Feb 2011 12:15:59 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn2 with SMTP id 2so6489368iwn.35
	for <yocto@yoctoproject.org>; Tue, 08 Feb 2011 10:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=CpKIKu/F06dwrzubMaHZ6yYtQDGSI3uu9f/sPnr5xMc=;
	b=tcBfaJ+yz3pIDta4+OcSlWAd5lNBuP2L/Xc/ZG7zZX6+yfBwEfqO65M3mEd+m0xePX
	kZGWI+E9FxE9TtzRiqBHuSPTLk/C39M9wrCx7TbdJ8ooL4SyGqlccfBKiTt8kkFc98Dr
	R9qC9nNut9blioMd1LToGDiWG69f/uDe3pchk=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=LtPu0jh+ZDfZMw2uYIRCFG1Pb2jcUhgzaK/aMXLZSDx6OC/y/rGxSI+SNNLSH1kQzJ
	7FkIYNIeJcx5p1mxydE+tW5jauWRWWzoSJ/rUoBTbcBC7/0PH9d9S8ykN70szjJ2veiv
	xyTz1pddFYrrqg1n3vecOTFmxRDgX9EYZtq2U=
Received: by 10.42.224.136 with SMTP id io8mr20767235icb.29.1297188958958;
	Tue, 08 Feb 2011 10:15:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.222.202 with HTTP; Tue, 8 Feb 2011 10:15:38 -0800 (PST)
In-Reply-To: <AANLkTinX_ksQG3=Ziza4cU5mJjza7=vVChsV76Y7cFoG@mail.gmail.com>
References: <AANLkTimx3rKU_wj-depc214tGMNnpEZF4OU059H9FGHd@mail.gmail.com>
	<4D514F05.1080408@windriver.com>
	<AANLkTim15FWNjmcTgTf3taoX_z8EmGyThqf7e1WyNFnc@mail.gmail.com>
	<4D517FB2.4020205@windriver.com>
	<AANLkTinX_ksQG3=Ziza4cU5mJjza7=vVChsV76Y7cFoG@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 8 Feb 2011 16:15:38 -0200
Message-ID: <AANLkTinY9s1YXqaQR=S5+WEc67Ji8AcGYkrRLKsJCh4e@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Adding machine for linux-yocto-stable
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
X-List-Received-Date: Tue, 08 Feb 2011 18:16:00 -0000
Content-Type: multipart/alternative; boundary=20cf3056411f1af6ca049bc957f0

--20cf3056411f1af6ca049bc957f0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bruce,

linux-libc-headers-yocto issue solved after yocto update.

Now, I'm waiting for linux-yocto-stable.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Tue, Feb 8, 2011 at 4:04 PM, Diego Sueiro <diego.sueiro@gmail.com> wrote=
:

> Bruce,
>
> I'm getting this error for linux-libc-headers-yocto too.
>
>
> ERROR: Function 'opkg-build execution failed' failed
> ERROR: Logfile of failure stored in:
> /home/dev-2/yocto/build/tmp/work/armv7a-poky-linux-gnueabi/linux-libc-hea=
ders-yocto-2.6.37+git-4+343c06b25b221aa7f7019aee83b2d976041fddce_2+yocto/st=
andard/base-r2/temp/log.do_package_write_ipk.16387
> Log data follows:
> | ar:
> /home/dev-2/yocto/build/tmp/work/armv7a-poky-linux-gnueabi/linux-libc-hea=
ders-yocto-2.6.37+git-4+343c06b25b221aa7f7019aee83b2d976041fddce_2+yocto/st=
andard/base-r2/deploy-ipks/armv7a/linux-libc-headers-yocto-dbg_2.6.37+git-4=
+343c06b25b221aa7f7019aee83b2d976041fddce_2+yocto/standard/base-r2_armv7a.i=
pk:
> No such file or directory
> | ERROR: Function 'opkg-build execution failed' failed
> NOTE: package
> linux-libc-headers-yocto-2.6.37+git-4+343c06b25b221aa7f7019aee83b2d976041=
fddce_2+yocto/standard/base-r2:
> task opkg-build execution failed: Failed
> ERROR: Task 547
> (/home/dev-2/yocto/poky/meta/recipes-kernel/linux-libc-headers/
> linux-libc-headers-yocto_git.bb, do_package_write_ipk) failed with exit
> code '1'
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> On Tue, Feb 8, 2011 at 3:38 PM, Bruce Ashfield <
> bruce.ashfield@windriver.com> wrote:
>
>> On 11-02-08 12:31 PM, Diego Sueiro wrote:
>>
>>> Bruce,
>>>
>>> I've updated my yocto tree but I'm still getting this error:
>>>
>>> ERROR: Function 'do_kernel_checkout' failed (see
>>>
>>> /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto=
-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8=
eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
>>> for further information)
>>> ERROR: Logfile of failure stored in:
>>>
>>> /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto=
-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8=
eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
>>> Log data follows:
>>> | Fixing up git directory for standard/devkit8000
>>> | error: pathspec 'devkit8000-standard' did not match any file(s) known
>>> to git.
>>> | ERROR: Function 'do_kernel_checkout' failed (see
>>>
>>> /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto=
-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8=
eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
>>> for further information)
>>> NOTE: package
>>>
>>> linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b=
_6+72ca49ab08b8eb475cec82a10049503602325791-r1:
>>> task do_kernel_checkout: Failed
>>> ERROR: Task 1
>>> (/home/dev-2/yocto/poky/meta-boardware/recipes-kernel/linux/
>>> linux-yocto-stable_git.bb
>>> <http://linux-yocto-stable_git.bb>, do_kernel_checkout) failed with exi=
t
>>> code '1'
>>>
>>
>> This is the typical BSP bootstrap 'problem'. Hold on for
>> just a little while longer, with the new fetcher changes
>> in master, I'm updating the recipes (literally now) to
>> fix this and am testing the workflow for adding a new board
>> as part of these changes.
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>> I've tried this two options on
>>> SRCREV_machine_pn-linux-yocto-stable_devkit8000:
>>>
>>>    "ef7f944e773950d4016b7643f9ecf052bbe250cd" =3D beagleboard-standard
>>> branch
>>>    "2b1caf6ed7b888c95a1909d343799672731651a5" =3D master branch
>>>    "72ca49ab08b8eb475cec82a10049503602325791" =3D standard branch
>>>
>>>
>>> There isn't an specific devki8000 branch.
>>>
>>> Regards,
>>>
>>> --
>>> *dS
>>> Diego Sueiro
>>>
>>> /*long live rock 'n roll*/
>>>
>>>
>>> On Tue, Feb 8, 2011 at 12:11 PM, Bruce Ashfield
>>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@windriver.com>>
>>> wrote:
>>>
>>>    On 11-02-08 08:46 AM, Diego Sueiro wrote:
>>>
>>>        Folks,
>>>
>>>        I'm trying to get devkit8000 kernel compiled with
>>>        linux-yocto-stable recipe.
>>>        I've added devkit8000 on COMPATIBLE_MACHINE and on
>>>        KMACHINE_dekvkit800.
>>>
>>>        But I don't know what pokylinux branch to use to make the kernel
>>>        build
>>>        works.
>>>
>>>        I believe that I have to config these variables:
>>>
>>>        LINUX_KERNEL_TYPE
>>>
>>>
>>>    This one defaults to something sane, so you don't need
>>>    to set this line.
>>>
>>>
>>>        SRCREV_machine_pn-linux-yocto-stable_devkit8000
>>>
>>>
>>>    You would need to set this, to a SRCREV of the branch you'll
>>>    end up building.
>>>
>>>
>>>
>>>        Any suggestions?
>>>
>>>
>>>    Are you working out of an up to date master ? I've made some
>>>    changes recently that allow BSPs to bootstrap/reuse existing
>>>    branches. If you aren't on the latest master the procedure
>>>    is different.
>>>
>>>    Cheers,
>>>
>>>    Bruce
>>>
>>>
>>>        Regards,
>>>
>>>        --
>>>        *dS
>>>        Diego Sueiro
>>>
>>>        /*long live rock 'n roll*/
>>>
>>>
>>>
>>>        _______________________________________________
>>>        yocto mailing list
>>>        yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>>
>>>        https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>>
>>>
>>
>

--20cf3056411f1af6ca049bc957f0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bruce,<div><br></div><div><meta http-equiv=3D"content-type" content=3D"text=
/html; charset=3Dutf-8"><span class=3D"Apple-style-span" style=3D"border-co=
llapse: collapse; font-family: arial, sans-serif; font-size: 13px; ">linux-=
libc-headers-yocto issue solved after yocto update.</span></div>

<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; f=
ont-family: arial, sans-serif; font-size: 13px; "><br></span></div><div><sp=
an class=3D"Apple-style-span" style=3D"border-collapse: collapse; font-fami=
ly: arial, sans-serif; font-size: 13px; ">Now, I&#39;m waiting for=A0linux-=
yocto-stable.</span></div>

<div><span class=3D"Apple-style-span" style=3D"border-collapse: collapse; f=
ont-family: arial, sans-serif; font-size: 13px; "><br></span></div><div><sp=
an class=3D"Apple-style-span" style=3D"border-collapse: collapse; font-fami=
ly: arial, sans-serif; font-size: 13px; "><br>

</span></div><div><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Suei=
ro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Tue, Feb 8, 2011 at 4:04 PM, Diego Su=
eiro <span dir=3D"ltr">&lt;<a href=3D"mailto:diego.sueiro@gmail.com">diego.=
sueiro@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex;">

<div>Bruce,</div><div><br></div><div>I&#39;m getting this error for=A0linux=
-libc-headers-yocto too.</div><div><br></div><div><br></div><div>ERROR: Fun=
ction &#39;opkg-build execution failed&#39; failed</div><div>ERROR: Logfile=
 of failure stored in: /home/dev-2/yocto/build/tmp/work/armv7a-poky-linux-g=
nueabi/linux-libc-headers-yocto-2.6.37+git-4+343c06b25b221aa7f7019aee83b2d9=
76041fddce_2+yocto/standard/base-r2/temp/log.do_package_write_ipk.16387</di=
v>


<div>Log data follows:</div><div>| ar: /home/dev-2/yocto/build/tmp/work/arm=
v7a-poky-linux-gnueabi/linux-libc-headers-yocto-2.6.37+git-4+343c06b25b221a=
a7f7019aee83b2d976041fddce_2+yocto/standard/base-r2/deploy-ipks/armv7a/linu=
x-libc-headers-yocto-dbg_2.6.37+git-4+343c06b25b221aa7f7019aee83b2d976041fd=
dce_2+yocto/standard/base-r2_armv7a.ipk: No such file or directory</div>


<div>| ERROR: Function &#39;opkg-build execution failed&#39; failed</div><d=
iv>NOTE: package linux-libc-headers-yocto-2.6.37+git-4+343c06b25b221aa7f701=
9aee83b2d976041fddce_2+yocto/standard/base-r2: task opkg-build execution fa=
iled: Failed</div>


<div>ERROR: Task 547 (/home/dev-2/yocto/poky/meta/recipes-kernel/linux-libc=
-headers/<a href=3D"http://linux-libc-headers-yocto_git.bb" target=3D"_blan=
k">linux-libc-headers-yocto_git.bb</a>, do_package_write_ipk) failed with e=
xit code &#39;1&#39;</div>

<div class=3D"im">
<div><br></div><div><br></div><div>Regards,</div><div><br></div>--<br>*dS<b=
r>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br></div><div><div></div><div class=3D"h5"><div class=3D"gmail_quote">=
On Tue, Feb 8, 2011 at 3:38 PM, Bruce Ashfield <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@=
windriver.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div>On 11-02-08 12:31 PM, Diego Sueiro wrote:<br>
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div>
Bruce,<br>
<br>
I&#39;ve updated my yocto tree but I&#39;m still getting this error:<br>
<br>
ERROR: Function &#39;do_kernel_checkout&#39; failed (see<br>
/home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-sta=
ble-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb47=
5cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330<br>
for further information)<br>
ERROR: Logfile of failure stored in:<br>
/home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-sta=
ble-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb47=
5cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330<br>
Log data follows:<br>
| Fixing up git directory for standard/devkit8000<br>
| error: pathspec &#39;devkit8000-standard&#39; did not match any file(s) k=
nown<br>
to git.<br>
| ERROR: Function &#39;do_kernel_checkout&#39; failed (see<br>
/home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-sta=
ble-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb47=
5cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330<br>
for further information)<br>
NOTE: package<br>
linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+7=
2ca49ab08b8eb475cec82a10049503602325791-r1:<br>
task do_kernel_checkout: Failed<br>
ERROR: Task 1<br>
(/home/dev-2/yocto/poky/meta-boardware/recipes-kernel/linux/<a href=3D"http=
://linux-yocto-stable_git.bb" target=3D"_blank">linux-yocto-stable_git.bb</=
a><br></div>
&lt;<a href=3D"http://linux-yocto-stable_git.bb" target=3D"_blank">http://l=
inux-yocto-stable_git.bb</a>&gt;, do_kernel_checkout) failed with exit<br>
code &#39;1&#39;<br>
</blockquote>
<br>
This is the typical BSP bootstrap &#39;problem&#39;. Hold on for<br>
just a little while longer, with the new fetcher changes<br>
in master, I&#39;m updating the recipes (literally now) to<br>
fix this and am testing the workflow for adding a new board<br>
as part of these changes.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>
<br>
I&#39;ve tried this two options on<br>
SRCREV_machine_pn-linux-yocto-stable_devkit8000:<br>
<br>
 =A0 =A0&quot;ef7f944e773950d4016b7643f9ecf052bbe250cd&quot; =3D beagleboar=
d-standard branch<br>
 =A0 =A0&quot;2b1caf6ed7b888c95a1909d343799672731651a5&quot; =3D master bra=
nch<br>
 =A0 =A0&quot;72ca49ab08b8eb475cec82a10049503602325791&quot; =3D standard b=
ranch<br>
<br>
<br>
There isn&#39;t an specific devki8000 branch.<br>
<br>
Regards,<br>
<br>
--<br>
*dS<br>
Diego Sueiro<br>
<br>
/*long live rock &#39;n roll*/<br>
<br>
<br>
On Tue, Feb 8, 2011 at 12:11 PM, Bruce Ashfield<br></div><div><div></div><d=
iv>
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;&gt; wrot=
e:<br>



<br>
 =A0 =A0On 11-02-08 08:46 AM, Diego Sueiro wrote:<br>
<br>
 =A0 =A0 =A0 =A0Folks,<br>
<br>
 =A0 =A0 =A0 =A0I&#39;m trying to get devkit8000 kernel compiled with<br>
 =A0 =A0 =A0 =A0linux-yocto-stable recipe.<br>
 =A0 =A0 =A0 =A0I&#39;ve added devkit8000 on COMPATIBLE_MACHINE and on<br>
 =A0 =A0 =A0 =A0KMACHINE_dekvkit800.<br>
<br>
 =A0 =A0 =A0 =A0But I don&#39;t know what pokylinux branch to use to make t=
he kernel<br>
 =A0 =A0 =A0 =A0build<br>
 =A0 =A0 =A0 =A0works.<br>
<br>
 =A0 =A0 =A0 =A0I believe that I have to config these variables:<br>
<br>
 =A0 =A0 =A0 =A0LINUX_KERNEL_TYPE<br>
<br>
<br>
 =A0 =A0This one defaults to something sane, so you don&#39;t need<br>
 =A0 =A0to set this line.<br>
<br>
<br>
 =A0 =A0 =A0 =A0SRCREV_machine_pn-linux-yocto-stable_devkit8000<br>
<br>
<br>
 =A0 =A0You would need to set this, to a SRCREV of the branch you&#39;ll<br=
>
 =A0 =A0end up building.<br>
<br>
<br>
<br>
 =A0 =A0 =A0 =A0Any suggestions?<br>
<br>
<br>
 =A0 =A0Are you working out of an up to date master ? I&#39;ve made some<br=
>
 =A0 =A0changes recently that allow BSPs to bootstrap/reuse existing<br>
 =A0 =A0branches. If you aren&#39;t on the latest master the procedure<br>
 =A0 =A0is different.<br>
<br>
 =A0 =A0Cheers,<br>
<br>
 =A0 =A0Bruce<br>
<br>
<br>
 =A0 =A0 =A0 =A0Regards,<br>
<br>
 =A0 =A0 =A0 =A0--<br>
 =A0 =A0 =A0 =A0*dS<br>
 =A0 =A0 =A0 =A0Diego Sueiro<br>
<br>
 =A0 =A0 =A0 =A0/*long live rock &#39;n roll*/<br>
<br>
<br>
<br>
 =A0 =A0 =A0 =A0_______________________________________________<br>
 =A0 =A0 =A0 =A0yocto mailing list<br></div></div>
 =A0 =A0 =A0 =A0<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<div><br>
 =A0 =A0 =A0 =A0<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" t=
arget=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br>
<br>
<br>
</div></blockquote>
<br>
</blockquote></div><br>
</div></div></blockquote></div><br></div>

--20cf3056411f1af6ca049bc957f0--
