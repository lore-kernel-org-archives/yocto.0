Return-Path: <ryanjulian@berkeley.edu>
Received: from cm03fe.IST.Berkeley.EDU (cm03fe.IST.Berkeley.EDU
	[169.229.218.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9556BE0140C
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 16:39:20 -0700 (PDT)
Received: from mail-yw0-f48.google.com ([209.85.213.48])
	by cm03fe.ist.berkeley.edu with esmtpsa (TLSv1:RC4-SHA:128)
	(Exim 4.76) (auth plain:ryanjulian@berkeley.edu)
	(envelope-from <ryanjulian@berkeley.edu>) id 1SeagA-0003Ji-AF
	for yocto@yoctoproject.org; Tue, 12 Jun 2012 16:39:19 -0700
Received: by yhfq46 with SMTP id q46so112474yhf.35
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2012 16:39:17 -0700 (PDT)
Received: by 10.236.179.42 with SMTP id g30mr29645362yhm.77.1339544357519;
	Tue, 12 Jun 2012 16:39:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.146.172.19 with HTTP; Tue, 12 Jun 2012 16:38:37 -0700 (PDT)
In-Reply-To: <CADkTA4NZ_Z81-AhvQww4tiY3d0qjE1Ryyes_BuCGJFfGwQ3bew@mail.gmail.com>
References: <4F7C1F1F.4070806@r-finger.com>
	<CAC+thW1Vah3pUPH=CNcQCH=C4QEj2RY17DX+tDHGd_MuCsxViQ@mail.gmail.com>
	<4F7C438D.5020800@windriver.com> <4F7C5651.60209@mlbassoc.com>
	<4F7D2E45.2020408@r-finger.com>
	<loom.20120613T005341-535@post.gmane.org>
	<CADkTA4NZ_Z81-AhvQww4tiY3d0qjE1Ryyes_BuCGJFfGwQ3bew@mail.gmail.com>
From: Ryan Julian <ryanjulian@berkeley.edu>
Date: Tue, 12 Jun 2012 16:38:37 -0700
Message-ID: <CAGV0yjPO-roFgDxEY8J6Zo0THAOCHNgf1dTEzPHuAR-sc3h58w@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
X-Mailman-Approved-At: Wed, 13 Jun 2012 08:23:09 -0700
Cc: yocto@yoctoproject.org
Subject: Re: Not booting on BeagleBoard xM 0x2
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
X-List-Received-Date: Tue, 12 Jun 2012 23:39:20 -0000
Content-Type: multipart/alternative; boundary=20cf303ddbdc9741c204c24ef9bd

--20cf303ddbdc9741c204c24ef9bd
Content-Type: text/plain; charset=ISO-8859-1

Hi Bruce,

The build I'm using already includes Denys' patch.

I was referring to Tomas' original problem, in which the MMC card
successfully initialized, but the kernel still panics while trying to mount
mmcblk0p2. These two seem unrelated, unless I'm mistaken.

On Tue, Jun 12, 2012 at 4:10 PM, Bruce Ashfield <bruce.ashfield@gmail.com>wrote:

> On Tue, Jun 12, 2012 at 7:00 PM, Ryan Julian <ryanjulian@berkeley.edu>
> wrote:
> > Tomas Frydrych <tf+lists.yocto@...> writes:
> >> This is a different issue. I get this too with one particular MMC card,
> >> but with 2.6.37 kernel, if I unplug this card and plug it back in the
> >> boot resumes and completes successfully. If I do this with the 3.0.2
> >> kernel, the bug I described with the associated kernel panic then kicks
> in.
> >>
> >> Tomas
> >>
> >> >
> >> >
> >> >
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@...
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >>
> >>
> >
> > Bruce and Tomas,
> > Did you ever find a solution to this issue?
> >
> > I'm encountering the same issue on the BB-xM Rev C. I've tested on two
> different
> > boards from different production runs, both with an error identical to
> Tomas'.
> > I'd be happy to run tests/provide logs if given instructions.
>
> We did. Denys provided us a fix, the only one that was available at the
> time:
>
> commit a49b0ec1356bb15a6a8c76b76c464ab3f1f61840
> Author: Bruce Ashfield <bruce.ashfield@windriver.com>
> Date:   Tue Apr 17 13:45:47 2012 -0400
>
>    meta/beagleboard: disable CONFIG_PREEMPT
>
>    The boot hangs with the message:
>    mmc0: error -110 whilst initialising SD card
>
>    The MMC driver has issues initializing when PREEMPT is enabled
> (either forced
>    or voluntary). Unplugging and then plugging the card back will reset the
>    driver and continue booting. Alternatively, disable preemption.
>
>    Signed-off-by: Denys Dmytriyenko <denys@ti.com>
>    Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
>
> :000000 100644 0000000... 0cbeb5a... A  bsp/beagleboard/no-preempt.cfg
> :000000 100644 0000000... 1e75e15... A  bsp/beagleboard/no-preempt.scc
>
> Cheers,
>
> Bruce
>
> >
> > Thanks!
> >
> > -Ryan
> >
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>

--20cf303ddbdc9741c204c24ef9bd
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,<div><br></div><div>The build I&#39;m using already includes Denys=
&#39; patch.</div><div><br></div><div>I was referring to Tomas&#39; origina=
l problem, in which the MMC card successfully initialized, but the kernel s=
till panics while trying to mount mmcblk0p2. These two seem unrelated, unle=
ss I&#39;m mistaken.</div>

<div><br><div class=3D"gmail_quote">On Tue, Jun 12, 2012 at 4:10 PM, Bruce =
Ashfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" =
target=3D"_blank">bruce.ashfield@gmail.com</a>&gt;</span> wrote:<br><blockq=
uote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc =
solid;padding-left:1ex">

On Tue, Jun 12, 2012 at 7:00 PM, Ryan Julian &lt;<a href=3D"mailto:ryanjuli=
an@berkeley.edu">ryanjulian@berkeley.edu</a>&gt; wrote:<br>
&gt; Tomas Frydrych &lt;tf+lists.yocto@...&gt; writes:<br>
&gt;&gt; This is a different issue. I get this too with one particular MMC =
card,<br>
&gt;&gt; but with 2.6.37 kernel, if I unplug this card and plug it back in =
the<br>
&gt;&gt; boot resumes and completes successfully. If I do this with the 3.0=
.2<br>
&gt;&gt; kernel, the bug I described with the associated kernel panic then =
kicks in.<br>
&gt;&gt;<br>
&gt;&gt; Tomas<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; _______________________________________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; yocto@...<br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" tar=
get=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
&gt; Bruce and Tomas,<br>
&gt; Did you ever find a solution to this issue?<br>
&gt;<br>
&gt; I&#39;m encountering the same issue on the BB-xM Rev C. I&#39;ve teste=
d on two different<br>
&gt; boards from different production runs, both with an error identical to=
 Tomas&#39;.<br>
&gt; I&#39;d be happy to run tests/provide logs if given instructions.<br>
<br>
We did. Denys provided us a fix, the only one that was available at the tim=
e:<br>
<br>
commit a49b0ec1356bb15a6a8c76b76c464ab3f1f61840<br>
Author: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@windriver.com">=
bruce.ashfield@windriver.com</a>&gt;<br>
Date: =A0 Tue Apr 17 13:45:47 2012 -0400<br>
<br>
 =A0 =A0meta/beagleboard: disable CONFIG_PREEMPT<br>
<br>
 =A0 =A0The boot hangs with the message:<br>
 =A0 =A0mmc0: error -110 whilst initialising SD card<br>
<br>
 =A0 =A0The MMC driver has issues initializing when PREEMPT is enabled<br>
(either forced<br>
 =A0 =A0or voluntary). Unplugging and then plugging the card back will rese=
t the<br>
 =A0 =A0driver and continue booting. Alternatively, disable preemption.<br>
<br>
 =A0 =A0Signed-off-by: Denys Dmytriyenko &lt;<a href=3D"mailto:denys@ti.com=
">denys@ti.com</a>&gt;<br>
 =A0 =A0Signed-off-by: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@=
windriver.com">bruce.ashfield@windriver.com</a>&gt;<br>
<br>
:000000 100644 0000000... 0cbeb5a... A =A0bsp/beagleboard/no-preempt.cfg<br=
>
:000000 100644 0000000... 1e75e15... A =A0bsp/beagleboard/no-preempt.scc<br=
>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
&gt;<br>
&gt; Thanks!<br>
&gt;<br>
&gt; -Ryan<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;<br>
</font></span></blockquote></div><br></div>

--20cf303ddbdc9741c204c24ef9bd--
