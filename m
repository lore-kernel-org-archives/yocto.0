Return-Path: <munoz0raul@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA3DE011CC
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 03:21:45 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id e13so2536289iej.32
	for <yocto@yoctoproject.org>; Wed, 19 Dec 2012 03:21:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=rEJ0jVygeDs5bH7m9y//GgVh2LNrwaeoc2nzuMiU0WM=;
	b=lRhFB6HmMBwVJf8fmZz2hpJ0a3i5pWLvbSgE/usYriTMBHaxUnY/dr6//lA5WvzzZm
	EfPSgdJEzkSg7qQiJPzxSx64L40JKpdOdst7PayYu9++aJNF4utrgKvxiCnXHDj466/M
	ap4zFRyb6FqvT0blJJAoGw7FwrK8IcdFh5zdPUzvYp8cm2JTYOFDX3eg02wK1WbuEmMV
	1uQUAsiASNy7iaK2PvuiDdaUMZgnRcGzi151HdIL+liT1IJOog46WQkZqZWQfrBlIoO7
	SlWApLrrqsDuW89YqMuO8p07LeVgEpJ3CaLkevPB9BrRvbBFsawFXBLPaAsY7QcalMfy
	0mdQ==
MIME-Version: 1.0
Received: by 10.50.187.165 with SMTP id ft5mr6632967igc.12.1355916105301; Wed,
	19 Dec 2012 03:21:45 -0800 (PST)
Received: by 10.64.147.40 with HTTP; Wed, 19 Dec 2012 03:21:45 -0800 (PST)
In-Reply-To: <2089740.tnt0W30Y43@helios>
References: <CANmViriCGoKznqztTxC9TDP_+ZKizB_hUzbHLJ66NQ21H+re_g@mail.gmail.com>
	<CANmVirhKN+g8YawraT9d3ieFrCrQtaTomEUC7Zv1X_DTZc7rmg@mail.gmail.com>
	<2089740.tnt0W30Y43@helios>
Date: Wed, 19 Dec 2012 09:21:45 -0200
Message-ID: <CANmVirhdCb55A8h=rQOU-2EanWwmXUyF8nV5n7P+ay2mAxnyfQ@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to use JRE (Java Runtime) in Yocto Projects
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
X-List-Received-Date: Wed, 19 Dec 2012 11:21:45 -0000
Content-Type: multipart/alternative; boundary=14dae9341027cd3f4e04d132d101

--14dae9341027cd3f4e04d132d101
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$
bitbake --version
BitBake Build Tool Core version 1.15.2, bitbake version 1.15.2



2012/12/19 Paul Eggleton <paul.eggleton@linux.intel.com>

> On Wednesday 19 December 2012 08:25:00 Raul Rosetto Munoz wrote:
> > Hello all,
> > I did some things like this wiki.
> >
> > I added the meta-java layer but the only important diference is that I'=
m
> > using meta poky (/poky/meta) and no meta oe-core (/oe-core/meta).
> >
> > https://github.com/woglinde/meta-java/wiki
> >
> > The fisrt probleme tha I have is that the package LLVM show me some
> errors.
> >
> > here is what I have:
> >
> > raul@phi04
> :/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$
> > bitbake openjdk-6
> > WARNING: Host distribution "Ubuntu 12.04.1 LTS" has not been validated
> with
> > this version of the build system; you may possibly experience unexpecte=
d
> > failures. It is recommended that you use a tested distribution.
> > NOTE: Error expanding variable populate_packages
> >
> >                                                             | ETA:
>  00:00:38
> >
> > NOTE: Error during finalise of
> > /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/
> > llvm2.8_2.8.bb
> > ERROR: Unable to parse
> > /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/
> > llvm2.8_2.8.bb
> > ERROR: Command execution failed: Traceback (most recent call last):
> >   File "/home/prjs/poky/bitbake/lib/bb/command.py", line 84, in
> > runAsyncCommand
> >     self.cooker.updateCache()
> >   File "/home/prjs/poky/bitbake/lib/bb/cooker.py", line 1202, in
> updateCache
> > if not self.parser.parse_next():
> >   File "/home/prjs/poky/bitbake/lib/bb/cooker.py", line 1669, in
> parse_next
> >     self.virtuals +=3D len(result)
> > UnboundLocalError: local variable 'result' referenced before assignment
> >
> >
> > Summary: There was 1 WARNING message shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.
> > raul@phi04
> :/home/prjs/newcom0001/workspace/philinux/philinux-imx28-newcom$
>
> Which version of the build system are you using?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



--=20
*Raul Rosetto Mu=F1oz*

--14dae9341027cd3f4e04d132d101
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>raul@phi04:/home/prjs/newcom0001/workspace/philinux/p=
hilinux-imx28-newcom$ bitbake --version</div><div>BitBake Build Tool Core v=
ersion 1.15.2, bitbake version 1.15.2</div><div><br></div></div><div class=
=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">2012/12/19 Paul Eggleton <span dir=3D"lt=
r">&lt;<a href=3D"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">p=
aul.eggleton@linux.intel.com</a>&gt;</span><br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">
<div class=3D"HOEnZb"><div class=3D"h5">On Wednesday 19 December 2012 08:25=
:00 Raul Rosetto Munoz wrote:<br>
&gt; Hello all,<br>
&gt; I did some things like this wiki.<br>
&gt;<br>
&gt; I added the meta-java layer but the only important diference is that I=
&#39;m<br>
&gt; using meta poky (/poky/meta) and no meta oe-core (/oe-core/meta).<br>
&gt;<br>
&gt; <a href=3D"https://github.com/woglinde/meta-java/wiki" target=3D"_blan=
k">https://github.com/woglinde/meta-java/wiki</a><br>
&gt;<br>
&gt; The fisrt probleme tha I have is that the package LLVM show me some er=
rors.<br>
&gt;<br>
&gt; here is what I have:<br>
&gt;<br>
&gt; raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-new=
com$<br>
&gt; bitbake openjdk-6<br>
&gt; WARNING: Host distribution &quot;Ubuntu 12.04.1 LTS&quot; has not been=
 validated with<br>
&gt; this version of the build system; you may possibly experience unexpect=
ed<br>
&gt; failures. It is recommended that you use a tested distribution.<br>
&gt; NOTE: Error expanding variable populate_packages<br>
&gt;<br>
&gt; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | ETA: =A000:00:38<br>
&gt;<br>
&gt; NOTE: Error during finalise of<br>
&gt; /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/<=
br>
&gt; <a href=3D"http://llvm2.8_2.8.bb" target=3D"_blank">llvm2.8_2.8.bb</a>=
<br>
&gt; ERROR: Unable to parse<br>
&gt; /home/prjs/newcom0001/workspace/philinux/meta-java/recipes-core/llvm/<=
br>
&gt; <a href=3D"http://llvm2.8_2.8.bb" target=3D"_blank">llvm2.8_2.8.bb</a>=
<br>
&gt; ERROR: Command execution failed: Traceback (most recent call last):<br=
>
&gt; =A0 File &quot;/home/prjs/poky/bitbake/lib/bb/command.py&quot;, line 8=
4, in<br>
&gt; runAsyncCommand<br>
&gt; =A0 =A0 self.cooker.updateCache()<br>
&gt; =A0 File &quot;/home/prjs/poky/bitbake/lib/bb/cooker.py&quot;, line 12=
02, in updateCache<br>
&gt; if not self.parser.parse_next():<br>
&gt; =A0 File &quot;/home/prjs/poky/bitbake/lib/bb/cooker.py&quot;, line 16=
69, in parse_next<br>
&gt; =A0 =A0 self.virtuals +=3D len(result)<br>
&gt; UnboundLocalError: local variable &#39;result&#39; referenced before a=
ssignment<br>
&gt;<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code.<br>
&gt; raul@phi04:/home/prjs/newcom0001/workspace/philinux/philinux-imx28-new=
com$<br>
<br>
</div></div>Which version of the build system are you using?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><b>Raul Rosetto Mu=F1oz</b><br>
</div>

--14dae9341027cd3f4e04d132d101--
