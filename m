Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B74E00BBF; Thu,  8 Jun 2017 18:36:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.195 listed in list.dnswl.org]
Received: from mail-qt0-f195.google.com (mail-qt0-f195.google.com
	[209.85.216.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B150E00B57
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 18:36:29 -0700 (PDT)
Received: by mail-qt0-f195.google.com with SMTP id x58so12210952qtc.2
	for <yocto@yoctoproject.org>; Thu, 08 Jun 2017 18:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=j9FgAnnHCtvJ6ERynHTwtuIL8+H+qeI71Jpbfi/juSs=;
	b=pOjGhlx4v8WcHIJTXJEFMU0ym744QqehSlvYpjKwRiIlBFNRZanub4uO0BHBPNoedF
	2hlOu/5/YHOlatqBXVuQoYcV9rdiC4m2cVnQmBiJmN1czqB/A1yD8aCmEx1Lp/ILVCy6
	ilycN09dopV20+9dxpe1r5DwvDp8KBuV1GZHLM1r/Lq5qxULaAIYEDiCwxIap4qd/Ijp
	pF7LotbidC1xp3nocEA2kjAwSdM7X6Teafq2aoosRUSmcgVpOIx8q9RSr5tu2f1PyNqi
	JOGViwupJCDQW23py3k2W5NNWtrJm+otPTi+WdHZUubp6FGypYWUbb86YeFunoXd75Xl
	w7kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=j9FgAnnHCtvJ6ERynHTwtuIL8+H+qeI71Jpbfi/juSs=;
	b=JPKpPmemmKOzWf8C4p/Go1119RYwBgiiv7tYRnWp+IcSuxaD+sVVSECobpxCeISGnM
	kGlFOD2aVZyuVmST2311S2Ck4PEWua+8yPK9Eb82fJfyFydc0GdXC9om8qVwX+s1R57q
	4rOglMuUksE09ACX4pSmnAJqZg30asUApezahEBSe6VFYV0AAxKPrzSW41d252qXrpYu
	bjwCuqhEgscuVFalDZsFwAvhMcS1dJU18bCID7A8QAnd3osLogd0ttN0lf97FtCjBXu4
	gPAymFGHC+uwC7PZ/ctYwTpCAzSX7UCxxyovFRxhigkYnd6vEg6Nfi9hZdvnByPscg2Z
	uQqw==
X-Gm-Message-State: AODbwcBb2HBKQB9GqbwQPcntGoZ1M3amsO6S1SxbSINA+7bqxPuWdHCM
	knldmwVzzL42bpJ56nHEOYdBNrY4Ow==
X-Received: by 10.200.39.219 with SMTP id x27mr49216635qtx.80.1496972188468;
	Thu, 08 Jun 2017 18:36:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.209.28 with HTTP; Thu, 8 Jun 2017 18:36:28 -0700 (PDT)
In-Reply-To: <20170609013019.GC21118@pek-khao-d1>
References: <1496947514-11876-1-git-send-email-bruce.ashfield@windriver.com>
	<20170609013019.GC21118@pek-khao-d1>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 8 Jun 2017 21:36:28 -0400
Message-ID: <CADkTA4Ow0p5dLjUzOidCHPu+ir2jkP3aRXyugdJXHaKNrckENQ@mail.gmail.com>
To: Kevin Hao <kexin.hao@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [PATCH] yocto-bsp: update reference BSPs to 4.1 latest
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
X-List-Received-Date: Fri, 09 Jun 2017 01:36:33 -0000
Content-Type: multipart/alternative; boundary="001a113ac204884a1505517cff60"

--001a113ac204884a1505517cff60
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 8, 2017 at 9:30 PM, Kevin Hao <kexin.hao@windriver.com> wrote:

> On Thu, Jun 08, 2017 at 02:45:14PM -0400, Bruce Ashfield wrote:
> > The reference BSPs are lagging on their 4.1 SRCREVs, which means
> > -stable updates, and gcc-7 build fixes are missing.
>
> I have made a patch to update the SRCREVs for 4.1, 4.4, 4,9 and 4.10 three
> weeks ago,
> but it seems not get merged. I just sent a ping for the merging.
>
>
aha! Thanks for having taken care of that already Kevin. I *knew* I felt
like this was doing the same work again!

Bruce


> Thanks,
> Kevin
>
> >
> > Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
> > ---
> >  meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > index b308c8dfa1cc..afb04c28f4d1 100644
> > --- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > +++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_4.1.bbappend
> > @@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?= "common-pc-64"
> >
> >  SRCREV_machine_genericx86    ?= "398d1785c6bde0085b99f00f346e19
> 9a15fbdcef"
> >  SRCREV_machine_genericx86-64 ?= "398d1785c6bde0085b99f00f346e19
> 9a15fbdcef"
> > -SRCREV_machine_edgerouter ?= "2ce56d130ddff67f43ec857cc51cd347666a0078"
> > -SRCREV_machine_beaglebone ?= "235de25be3f143b91dcc69479b770722c508889e"
> > -SRCREV_machine_mpc8315e-rdb ?= "2ce56d130ddff67f43ec857cc51cd3
> 47666a0078"
> > +SRCREV_machine_edgerouter ?= "398d1785c6bde0085b99f00f346e199a15fbdcef"
> > +SRCREV_machine_beaglebone ?= "79414e2b0e0b7f5b86e358a907f841486f428079"
> > +SRCREV_machine_mpc8315e-rdb ?= "398d1785c6bde0085b99f00f346e19
> 9a15fbdcef"
> >
> >  COMPATIBLE_MACHINE_genericx86 = "genericx86"
> >  COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
> > --
> > 2.5.0
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a113ac204884a1505517cff60
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Thu, Jun 8, 2017 at 9:30 PM, Kevin Hao <span dir=3D"ltr">&lt;<a href=
=3D"mailto:kexin.hao@windriver.com" target=3D"_blank">kexin.hao@windriver.c=
om</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D""=
>On Thu, Jun 08, 2017 at 02:45:14PM -0400, Bruce Ashfield wrote:<br>
&gt; The reference BSPs are lagging on their 4.1 SRCREVs, which means<br>
&gt; -stable updates, and gcc-7 build fixes are missing.<br>
<br>
</span>I have made a patch to update the SRCREVs for 4.1, 4.4, 4,9 and 4.10=
 three weeks ago,<br>
but it seems not get merged. I just sent a ping for the merging.<br>
<br></blockquote><div><br></div><div>aha! Thanks for having taken care of t=
hat already Kevin. I *knew* I felt like this was doing the same work again!=
</div><div><br></div><div>Bruce</div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">
Thanks,<br>
Kevin<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
&gt;<br>
&gt; Signed-off-by: Bruce Ashfield &lt;<a href=3D"mailto:bruce.ashfield@win=
driver.com">bruce.ashfield@windriver.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 meta-yocto-bsp/recipes-kernel/<wbr>linux/linux-yocto_4.1.bbappen=
d | 6 +++---<br>
&gt;=C2=A0 1 file changed, 3 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; diff --git a/meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.1.=
<wbr>bbappend b/meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.1.<w=
br>bbappend<br>
&gt; index b308c8dfa1cc..afb04c28f4d1 100644<br>
&gt; --- a/meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.1.<wbr>bb=
append<br>
&gt; +++ b/meta-yocto-bsp/recipes-<wbr>kernel/linux/linux-yocto_4.1.<wbr>bb=
append<br>
&gt; @@ -9,9 +9,9 @@ KMACHINE_genericx86-64 ?=3D &quot;common-pc-64&quot;<b=
r>
&gt;<br>
&gt;=C2=A0 SRCREV_machine_genericx86=C2=A0 =C2=A0 ?=3D &quot;<wbr>398d1785c=
6bde0085b99f00f346e19<wbr>9a15fbdcef&quot;<br>
&gt;=C2=A0 SRCREV_machine_genericx86-64 ?=3D &quot;<wbr>398d1785c6bde0085b9=
9f00f346e19<wbr>9a15fbdcef&quot;<br>
&gt; -SRCREV_machine_edgerouter ?=3D &quot;<wbr>2ce56d130ddff67f43ec857cc51=
cd3<wbr>47666a0078&quot;<br>
&gt; -SRCREV_machine_beaglebone ?=3D &quot;<wbr>235de25be3f143b91dcc69479b7=
707<wbr>22c508889e&quot;<br>
&gt; -SRCREV_machine_mpc8315e-rdb ?=3D &quot;<wbr>2ce56d130ddff67f43ec857cc=
51cd3<wbr>47666a0078&quot;<br>
&gt; +SRCREV_machine_edgerouter ?=3D &quot;<wbr>398d1785c6bde0085b99f00f346=
e19<wbr>9a15fbdcef&quot;<br>
&gt; +SRCREV_machine_beaglebone ?=3D &quot;<wbr>79414e2b0e0b7f5b86e358a907f=
841<wbr>486f428079&quot;<br>
&gt; +SRCREV_machine_mpc8315e-rdb ?=3D &quot;<wbr>398d1785c6bde0085b99f00f3=
46e19<wbr>9a15fbdcef&quot;<br>
&gt;<br>
&gt;=C2=A0 COMPATIBLE_MACHINE_genericx86 =3D &quot;genericx86&quot;<br>
&gt;=C2=A0 COMPATIBLE_MACHINE_genericx86-<wbr>64 =3D &quot;genericx86-64&qu=
ot;<br>
&gt; --<br>
&gt; 2.5.0<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
</div></div><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;Thou shalt =
not follow the NULL pointer, for chaos and madness await thee at its end&qu=
ot;</div>
</div></div>

--001a113ac204884a1505517cff60--
