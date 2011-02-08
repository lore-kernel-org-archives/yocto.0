Return-Path: <diego.sueiro@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id F2E714C8006D
	for <yocto@yoctoproject.org>; Tue,  8 Feb 2011 11:32:14 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so6480462iyb.35
	for <yocto@yoctoproject.org>; Tue, 08 Feb 2011 09:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ON2/k8NbZ3E7T9rF+MYKqPLGRvgIIJhe6cg9P1hc3IE=;
	b=PgN6Rl36wUipdifaqAwdE0eX5N+iTCGuQ+MRyQWAItPlPHez1BIDis3hLMQMK92Iwi
	PWCKXXKy78UdvjbningJQWZPCxp0IIZYapmaaefgGctj/QT5xI40hTxvKUL7bf63k82r
	tiLsqu2ul+LeqvIbtoxsp2e3LEgGje2LByazQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	b=eUYLIZ8wSrrknXBmbKhuf0FncaPWNbrL1EtuRrlkyCOcaO+HfbSxTeMcN9ePgpwxB0
	aDM/PJnZemMfgUefH7Ks3snyNhV+SMv+SKzvdwUOjZuPlynmfdHFppm6pN2bp7UuhnhL
	JTiqQjgNTF8vtrn5YapJ469nUr2JkLTtdD04Y=
Received: by 10.42.175.6 with SMTP id ay6mr6478268icb.498.1297186333794; Tue,
	08 Feb 2011 09:32:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.42.222.202 with HTTP; Tue, 8 Feb 2011 09:31:53 -0800 (PST)
In-Reply-To: <4D514F05.1080408@windriver.com>
References: <AANLkTimx3rKU_wj-depc214tGMNnpEZF4OU059H9FGHd@mail.gmail.com>
	<4D514F05.1080408@windriver.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 8 Feb 2011 15:31:53 -0200
Message-ID: <AANLkTim15FWNjmcTgTf3taoX_z8EmGyThqf7e1WyNFnc@mail.gmail.com>
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
X-List-Received-Date: Tue, 08 Feb 2011 17:32:15 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e8f46a220aa049bc8ba9e

--90e6ba6e8f46a220aa049bc8ba9e
Content-Type: text/plain; charset=ISO-8859-1

Bruce,

I've updated my yocto tree but I'm still getting this error:

ERROR: Function 'do_kernel_checkout' failed (see
/home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
for further information)
ERROR: Logfile of failure stored in:
/home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
Log data follows:
| Fixing up git directory for standard/devkit8000
| error: pathspec 'devkit8000-standard' did not match any file(s) known to
git.
| ERROR: Function 'do_kernel_checkout' failed (see
/home/dev-2/yocto/build/tmp/work/bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_checkout.26330
for further information)
NOTE: package
linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1:
task do_kernel_checkout: Failed
ERROR: Task 1 (/home/dev-2/yocto/poky/meta-boardware/recipes-kernel/linux/
linux-yocto-stable_git.bb, do_kernel_checkout) failed with exit code '1'

I've tried this two options
on SRCREV_machine_pn-linux-yocto-stable_devkit8000:

"ef7f944e773950d4016b7643f9ecf052bbe250cd" = beagleboard-standard branch
"2b1caf6ed7b888c95a1909d343799672731651a5" = master branch
"72ca49ab08b8eb475cec82a10049503602325791" = standard branch


There isn't an specific devki8000 branch.

Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/


On Tue, Feb 8, 2011 at 12:11 PM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 11-02-08 08:46 AM, Diego Sueiro wrote:
>
>> Folks,
>>
>> I'm trying to get devkit8000 kernel compiled with linux-yocto-stable
>> recipe.
>> I've added devkit8000 on COMPATIBLE_MACHINE and on KMACHINE_dekvkit800.
>>
>> But I don't know what pokylinux branch to use to make the kernel build
>> works.
>>
>> I believe that I have to config these variables:
>>
>>    LINUX_KERNEL_TYPE
>>
>
> This one defaults to something sane, so you don't need
> to set this line.
>
>
>     SRCREV_machine_pn-linux-yocto-stable_devkit8000
>>
>
> You would need to set this, to a SRCREV of the branch you'll
> end up building.
>
>
>>
>> Any suggestions?
>>
>
> Are you working out of an up to date master ? I've made some
> changes recently that allow BSPs to bootstrap/reuse existing
> branches. If you aren't on the latest master the procedure
> is different.
>
> Cheers,
>
> Bruce
>
>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> /*long live rock 'n roll*/
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
>

--90e6ba6e8f46a220aa049bc8ba9e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bruce,<div><br></div><div>I&#39;ve updated my yocto tree but I&#39;m still =
getting this error:</div><div><div><br></div><div>ERROR: Function &#39;do_k=
ernel_checkout&#39; failed (see /home/dev-2/yocto/build/tmp/work/bw-b600-po=
ky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d9553=
3e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_ker=
nel_checkout.26330 for further information)</div>

<div>ERROR: Logfile of failure stored in: /home/dev-2/yocto/build/tmp/work/=
bw-b600-poky-linux-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6=
abde5d95533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/=
log.do_kernel_checkout.26330</div>

<div>Log data follows:</div><div>| Fixing up git directory for standard/dev=
kit8000</div><div>| error: pathspec &#39;devkit8000-standard&#39; did not m=
atch any file(s) known to git.</div><div>| ERROR: Function &#39;do_kernel_c=
heckout&#39; failed (see /home/dev-2/yocto/build/tmp/work/bw-b600-poky-linu=
x-gnueabi/linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95533e74501=
822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1/temp/log.do_kernel_che=
ckout.26330 for further information)</div>

<div>NOTE: package linux-yocto-stable-2.6.34+git1+e1f85a470934a0cf6abde5d95=
533e74501822c6b_6+72ca49ab08b8eb475cec82a10049503602325791-r1: task do_kern=
el_checkout: Failed</div><div>ERROR: Task 1 (/home/dev-2/yocto/poky/meta-bo=
ardware/recipes-kernel/linux/<a href=3D"http://linux-yocto-stable_git.bb">l=
inux-yocto-stable_git.bb</a>, do_kernel_checkout) failed with exit code &#3=
9;1&#39;</div>

</div><div><br></div><div>I&#39;ve tried this two options on=A0SRCREV_machi=
ne_pn-linux-yocto-stable_devkit8000:</div><blockquote class=3D"webkit-inden=
t-blockquote" style=3D"margin: 0 0 0 40px; border: none; padding: 0px;"><di=
v>

&quot;ef7f944e773950d4016b7643f9ecf052bbe250cd&quot; =3D beagleboard-standa=
rd branch</div><div>&quot;2b1caf6ed7b888c95a1909d343799672731651a5&quot; =
=3D master branch</div><div>&quot;72ca49ab08b8eb475cec82a10049503602325791&=
quot; =3D standard branch</div>

</blockquote><div><div><br></div><div>There isn&#39;t an specific devki8000=
 branch.</div><div><br></div><div>Regards,</div><div><br></div>--<br>*dS<br=
>Diego Sueiro<br><br>/*long live rock &#39;n roll*/<br>
<br><br><div class=3D"gmail_quote">On Tue, Feb 8, 2011 at 12:11 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex;">

<div class=3D"im">On 11-02-08 08:46 AM, Diego Sueiro wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Folks,<br>
<br>
I&#39;m trying to get devkit8000 kernel compiled with linux-yocto-stable re=
cipe.<br>
I&#39;ve added devkit8000 on COMPATIBLE_MACHINE and on KMACHINE_dekvkit800.=
<br>
<br>
But I don&#39;t know what pokylinux branch to use to make the kernel build<=
br>
works.<br>
<br>
I believe that I have to config these variables:<br>
<br>
 =A0 =A0LINUX_KERNEL_TYPE<br>
</blockquote>
<br></div>
This one defaults to something sane, so you don&#39;t need<br>
to set this line.<div class=3D"im"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
 =A0 =A0SRCREV_machine_pn-linux-yocto-stable_devkit8000<br>
</blockquote>
<br></div>
You would need to set this, to a SRCREV of the branch you&#39;ll<br>
end up building.<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
<br>
Any suggestions?<br>
</blockquote>
<br>
Are you working out of an up to date master ? I&#39;ve made some<br>
changes recently that allow BSPs to bootstrap/reuse existing<br>
branches. If you aren&#39;t on the latest master the procedure<br>
is different.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
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
<br></div>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote>
<br>
</blockquote></div><br></div>

--90e6ba6e8f46a220aa049bc8ba9e--
