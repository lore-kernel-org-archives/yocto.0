Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAFC4E014E2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 01:14:57 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id pa12so372659veb.39
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 01:14:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Vtg7d9JvIYh3OFRCVm/9xx+cJZGR5Gw43N3bHfBA4OA=;
	b=xgr/q6savcP21MpFQBsuNS++MdllM9PVoPhPHniz5TF5mA6ZFsKsfzMrD+JxeYAugz
	n90p7W2rIc2B3wnM+++B3hDcZUZFFra4/Y1aBt7Lv+6o9hOsZs4n2a9h38RwUETU3DNm
	UNzwLmtWTECgpTYZiAe347bqISnOYoqmIImUC/mpNb/B25o8sJ5idY424Y9t3PU0SnYn
	MW8Tqo1+3hHwjUgoBDvB6FFig8TUIwMC3g+oyeWRPIp7xQTgmRfYEQ5vspeJTlEnh4p9
	Biba+Djg/6j2YWVU/Z0z7LVpQzZkGJ7Y794lmmHbgyVY4l+k3jXwmNInXC9K7/n21b3Z
	cJ2w==
MIME-Version: 1.0
X-Received: by 10.221.9.68 with SMTP id ov4mr3156203vcb.6.1372320896598; Thu,
	27 Jun 2013 01:14:56 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Thu, 27 Jun 2013 01:14:56 -0700 (PDT)
In-Reply-To: <CA452391058F6D4E9715FB2C29D9312A015BEE44@039-SN2MPN1-022.039d.mgd.msft.net>
References: <CAFMfyzLw9nOseL_zBZ8BDLOf2EqRp3rKpnN+QEdBB534q5Usvg@mail.gmail.com>
	<CA452391058F6D4E9715FB2C29D9312A015BEE44@039-SN2MPN1-022.039d.mgd.msft.net>
Date: Thu, 27 Jun 2013 10:14:56 +0200
Message-ID: <CAFMfyzLdESHecdZk7z6yeKQdhE6V_B0hFxPesePywULXaKOEcA@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: Luo Zhenhua-B19537 <B19537@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: First UBI build
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
X-List-Received-Date: Thu, 27 Jun 2013 08:14:58 -0000
Content-Type: multipart/alternative; boundary=089e011778f58f474d04e01e5b7a

--089e011778f58f474d04e01e5b7a
Content-Type: text/plain; charset=ISO-8859-1

Hi Luo,

Thank you .... I assume the image type is as follows

IMAGE_FSTYPES += "ubi"

Will you please confirm this?

Cheers,
Sati


On Thu, Jun 27, 2013 at 9:20 AM, Luo Zhenhua-B19537 <B19537@freescale.com>wrote:

>  Add below two variables in conf/local.conf, the value is just for sample
> and might need change. ****
>
> ** **
>
> MKUBIFS_ARGS = " -m 512 -e 15360 -c 3600 "****
>
> UBINIZE_ARGS = " -p 16KiB -m 512 -s 512 "****
>
> ** **
>
> ** **
>
> Best Regards,****
>
> ** **
>
> Zhenhua****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *DAMARLA Satya Swaroop
> *Sent:* Thursday, June 27, 2013 3:04 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] First UBI build****
>
> ** **
>
> Hi Guys,****
>
> ** **
>
> I had great success and actually feel yocto with building images. Now I
> want to run the image from the flash drive and trying to build a UBIFS but
> I get strange errors which I didnot get when I am building a normal tar.gz
> file for the SDCARD. The error is as follows... Can you guys please tell me
> what is the new stuff I had to add to overcome this issue?****
>
> ** **
>
> *| Size after prelinking 276884.*****
>
> *| Error: min. I/O unit was not specified (use -h for help)*****
>
> *| ERROR: Function failed: do_rootfs (log file is located at
> /home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-untersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.13924)
> *****
>
> *ERROR: Task 7
> (/home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
> rootfs-smartcpu.bb, do_rootfs) failed with exit code '1'*****
>
> *NOTE: Tasks Summary: Attempted 5188 tasks of which 4394 didn't need to
> be rerun and 1 failed.*****
>
> *No currently running tasks (5187 of 5189)*****
>
> ** **
>
> *Summary: 1 task failed:*****
>
> *  /home/damarla/openYocto/poky/meta-skidata/recipes-smartcpu/images/
> rootfs-smartcpu.bb, do_rootfs*****
>
> *Summary: There was 1 WARNING message shown.*****
>
> *Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> *****
>
> ** **
>
> Cheers.****
>
> Sati****
>

--089e011778f58f474d04e01e5b7a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Luo,<div><br></div><div>Thank you .... I assume the ima=
ge type is as follows</div><div><br></div><div><div>IMAGE_FSTYPES +=3D &quo=
t;ubi&quot;</div></div><div><br></div><div>Will you please confirm this?</d=
iv>
<div><br></div><div>Cheers,</div><div>Sati</div></div><div class=3D"gmail_e=
xtra"><br><br><div class=3D"gmail_quote">On Thu, Jun 27, 2013 at 9:20 AM, L=
uo Zhenhua-B19537 <span dir=3D"ltr">&lt;<a href=3D"mailto:B19537@freescale.=
com" target=3D"_blank">B19537@freescale.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Add below two variables i=
n conf/local.conf, the value is just for sample and might need change.
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">MKUBIFS_ARGS =3D &quot; -=
m 512 -e 15360 -c 3600 &quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">UBINIZE_ARGS =3D &quot; -=
p 16KiB -m 512 -s 512 &quot;<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Best Regards,<u></u><u></=
u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Zhenhua<u></u><u></u></sp=
an></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> <a href=
=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@=
yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounces@yoctoproject.o=
rg" target=3D"_blank">yocto-bounces@yoctoproject.org</a>]
<b>On Behalf Of </b>DAMARLA Satya Swaroop<br>
<b>Sent:</b> Thursday, June 27, 2013 3:04 PM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] First UBI build<u></u><u></u></span></p>
</div>
</div><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi Guys,<u></u><u></u></p>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I had great success and actually feel yocto with bui=
lding images. Now I want to run the image from the flash drive and trying t=
o build a UBIFS but I get strange errors which I didnot get when I am build=
ing a normal tar.gz file for the SDCARD.
 The error is as follows... Can you guys please tell me what is the new stu=
ff I had to add to overcome this issue?<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal"><i>| Size after prelinking 276884.</i><u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><i>| Error: min. I/O unit was not specified (use -h =
for help)</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>| ERROR: Function failed: do_rootfs (log file is =
located at /home/damarla/openYocto/poky/buildSmartCPU/tmp/work/smartcpu-unt=
ersberg-linux-gnueabi/rootfs-smartcpu/1.0-r0/temp/log.do_rootfs.13924)</i><=
u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><i>ERROR: Task 7 (/home/damarla/openYocto/poky/meta-=
skidata/recipes-smartcpu/images/<a href=3D"http://rootfs-smartcpu.bb" targe=
t=3D"_blank">rootfs-smartcpu.bb</a>, do_rootfs) failed with exit code &#39;=
1&#39;</i><u></u><u></u></p>

</div>
<div>
<p class=3D"MsoNormal"><i>NOTE: Tasks Summary: Attempted 5188 tasks of whic=
h 4394 didn&#39;t need to be rerun and 1 failed.</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>No currently running tasks (5187 of 5189)</i><u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Summary: 1 task failed:</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>=A0 /home/damarla/openYocto/poky/meta-skidata/rec=
ipes-smartcpu/images/<a href=3D"http://rootfs-smartcpu.bb" target=3D"_blank=
">rootfs-smartcpu.bb</a>, do_rootfs</i><u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Summary: There was 1 WARNING message shown.</i><u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><i>Summary: There was 1 ERROR message shown, returni=
ng a non-zero exit code.</i><u></u><u></u></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Cheers.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Sati<u></u><u></u></p>
</div>
</div>
</div></div></div>
</div>
</div>

</blockquote></div><br></div>

--089e011778f58f474d04e01e5b7a--
