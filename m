Return-Path: <aalonso00@gmail.com>
Received: from mail-vx0-f176.google.com (mail-vx0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2515E00559
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 19:21:32 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by vcdn13 with SMTP id n13so8162383vcd.35
	for <yocto@yoctoproject.org>; Mon, 31 Oct 2011 19:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=8foePGhuoIOkRGLy00RMZzzv2ij72nbsEW5XnMsV0Z8=;
	b=BdPMbeyieGvGj44OLQVNZ1rLaIhMos9m+tQYAH4I9wPDkCTHhGDo8U5sI9vJJ4e8b1
	35EEhS+BzGe00XOzNTWDP8l4CZdWyYRHC8HTpJM+kyc09mfgST2PT2tzv2r4eiC2M3fA
	waven2SS4isWjTEifcOTv/1dgIkYUW7zavamw=
MIME-Version: 1.0
Received: by 10.52.32.73 with SMTP id g9mr6282882vdi.125.1320114091747; Mon,
	31 Oct 2011 19:21:31 -0700 (PDT)
Received: by 10.220.177.76 with HTTP; Mon, 31 Oct 2011 19:21:31 -0700 (PDT)
In-Reply-To: <1531E53627F1F749B4FE809BF2A4EB6702BCEA88@WETMEX10.loepfe.com>
References: <1531E53627F1F749B4FE809BF2A4EB6702BCEA88@WETMEX10.loepfe.com>
Date: Mon, 31 Oct 2011 20:21:31 -0600
Message-ID: <CAAB-1ywUGuwxU7CWz6-xQojtwAHim7qf3xa9JHCkBBkyx69-cA@mail.gmail.com>
From: Adrian Alonso <aalonso00@gmail.com>
To: "Vellemans, Noel" <Noel.Vellemans@visionbms.com>
Cc: yocto@yoctoproject.org
Subject: Re: Slow-startup.
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
X-List-Received-Date: Tue, 01 Nov 2011 02:21:33 -0000
Content-Type: multipart/alternative; boundary=bcaec51d2e3880678204b0a3035d

--bcaec51d2e3880678204b0a3035d
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Noel,

Are you also integrating Freescale xorg driver and related libs?
Also Freescale has a large set of patchs for the kernel that are not
in mainstream, you can take a look at
L2.6.35_11.09.01_ER_source_boundle.tar.gz
located at [1] and [2] which is an experimental meta layer than I'm working
on for adding
Freescale Arm support but still has some problems thanks to the way
Fsl distributes it's
source code and need to manually copy some source packages in Pokys
download dir;

[1]
http://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=3DLEIMX&fpsp=
=3D1&tab=3DDesign_Tools_Tab
[2] https://www.gitorious.org/yocto/meta-freescale

On Thu, Oct 27, 2011 at 11:10 AM, Vellemans, Noel <
Noel.Vellemans@visionbms.com> wrote:

> **
>
> Hi all,
>
> I'm test-driving the yocto-edison version, Target-armv7 (testing on
> imx-53x cpu).
>
> But,  I=92m having a strange problem.
>
> It takes very long to start the device, every time [not only the first
> time], at each reboot cycle it takes up to 3 minutes before I get the
> desktop.
>
> At the current time I got to the point (by using printf into the code on
> 1001 places)  that it is the _mb_font_load() in matchbox-lib that makes t=
he
> startup extremely slow. (system seems to =91hang=92 for more the 3 minute=
s
> before the matchbox-desktop pops up.)
>
> Any information available on this?
> Any hints where to look at ?
>
> Kind regards
> Noel
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
Saludos
Adrian Alonso
http://aalonso.wordpress.com

--bcaec51d2e3880678204b0a3035d
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hi Noel,<div><br></div><div>Are you also integrating Freescale xorg driver =
and related libs?</div><div>Also Freescale has a large set of patchs for th=
e kernel that are not</div><div>in mainstream, you can take a look at L2.6.=
35_11.09.01_ER_source_boundle.tar.gz</div>
<div>located at [1] and [2] which is an experimental=A0meta layer than I&#3=
9;m working on for adding</div><div>Freescale Arm support but still has som=
e problems=A0thanks to the way Fsl=A0distributes it&#39;s</div><div>source =
code and need to manually copy=A0some source packages in Pokys download dir=
;</div>
<div><br></div><div>[1] <a href=3D"http://www.freescale.com/webapp/sps/site=
/prod_summary.jsp?code=3DLEIMX&amp;fpsp=3D1&amp;tab=3DDesign_Tools_Tab">htt=
p://www.freescale.com/webapp/sps/site/prod_summary.jsp?code=3DLEIMX&amp;fps=
p=3D1&amp;tab=3DDesign_Tools_Tab</a></div>
<div>[2]=A0<a href=3D"https://www.gitorious.org/yocto/meta-freescale">https=
://www.gitorious.org/yocto/meta-freescale</a><br><br><div class=3D"gmail_qu=
ote">On Thu, Oct 27, 2011 at 11:10 AM, Vellemans, Noel <span dir=3D"ltr">&l=
t;<a href=3D"mailto:Noel.Vellemans@visionbms.com">Noel.Vellemans@visionbms.=
com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex;"><u></u>






<div>

<br>

<p><span lang=3D"en-us"><font face=3D"Verdana">Hi all,</font></span>
</p>

<p><span lang=3D"en-us"><font face=3D"Verdana">I&#39;m test-driving the yoc=
to-edison version, Target-armv7 (testing on imx-53x cpu).</font></span>
</p>

<p><span lang=3D"en-us"><font face=3D"Verdana">But,=A0 I=92m having a stran=
ge problem.</font></span></p>

<p><span lang=3D"en-us"><font face=3D"Verdana">It takes very long to start =
the device, every time [not only the first time], at each reboot cycle it t=
akes up to 3 minutes before I get the desktop.</font></span></p>

<p><span lang=3D"en-us"><font face=3D"Verdana">At the current time I got to=
 the point (by using printf into the code on 1001 places)=A0 that it is the=
 _mb_font_load() in matchbox-lib that makes the startup extremely slow. (sy=
stem seems to =91hang=92 for more the 3 minutes before the matchbox-desktop=
 pops up.)</font></span></p>

<br>

<p><span lang=3D"en-us"><font face=3D"Verdana">Any information available on=
 this?</font></span>

<br><span lang=3D"en-us"><font face=3D"Verdana">Any hints where to look at =
?</font></span>
</p>
<br>

<p><span lang=3D"nl-be"><font face=3D"Verdana">Kind regards</font></span>

<br><font color=3D"#888888"><span lang=3D"nl-be"><font face=3D"Verdana">Noe=
l</font></span>
</font></p>

</div>
<br>_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Saludos<=
br>Adrian Alonso<br><a href=3D"http://aalonso.wordpress.com">http://aalonso=
.wordpress.com</a><br><br>
</div>

--bcaec51d2e3880678204b0a3035d--
