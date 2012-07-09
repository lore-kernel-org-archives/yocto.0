Return-Path: <jfabernathy@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2591DE01443
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2012 05:13:11 -0700 (PDT)
Received: by obbtb18 with SMTP id tb18so13557385obb.35
	for <yocto@yoctoproject.org>; Mon, 09 Jul 2012 05:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=15SWa3Q0xYRVQh8+gfo95/lvQSz/DOWrf++QYFjSckw=;
	b=d7q/dtfkeo9M4fsg4vIwxOXTxSIeniqixOhYqL6W1YieKkUnF27PeBrWdVe/NK6p6f
	5byuKnCcWO/IqLcyqyIeCZYnC/i8vR5CNGL2sTr2RRKuHPgeAS/DVyggid4RMX+p/KjM
	cv1AbbZGeLMP20j29XwLCQVXpZ8ouXKwVJAUi+O6VNv/tMH/wm4WadRcKtJlMbOnzruH
	qR7dpIR0eDdL9AKwcXHlZyxz8I4+dGl5nauKtwY3COSBDLDIBSenDPMZChdinS/BD6nD
	z0uV07+GWYZJDaCq1EW0G0k61astqVXnXZ5uH6DPjvgu0ZjIWEdeK+Dbarv5wkBNY0sO
	XZdw==
MIME-Version: 1.0
Received: by 10.182.76.168 with SMTP id l8mr36529051obw.49.1341835990123; Mon,
	09 Jul 2012 05:13:10 -0700 (PDT)
Received: by 10.76.151.161 with HTTP; Mon, 9 Jul 2012 05:13:10 -0700 (PDT)
In-Reply-To: <CADkTA4N6WEQMd+wq_mA38oncby_AMiiCX0im+wdDb9UP6R28qA@mail.gmail.com>
References: <43492210-601B-467E-8BC2-8CDD691669A4@gmail.com>
	<CAK18fxGJzFanh5UY-nrj_hVReCGeGSVv5c7=PaH_KRXhZ2BNwA@mail.gmail.com>
	<CADkTA4N6WEQMd+wq_mA38oncby_AMiiCX0im+wdDb9UP6R28qA@mail.gmail.com>
Date: Mon, 9 Jul 2012 08:13:10 -0400
Message-ID: <CANFv2E=PAjjxOVX3x4rP7=1Pw_Y3pjB+p3QYsYOz3nfY3k2Nfw@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: menuconfig vs. config fragments?
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
X-List-Received-Date: Mon, 09 Jul 2012 12:13:11 -0000
Content-Type: multipart/alternative; boundary=f46d044785d989c5c104c46489f6

--f46d044785d989c5c104c46489f6
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jul 9, 2012 at 8:07 AM, Bruce Ashfield <bruce.ashfield@gmail.com>wrote:

> On Mon, Jul 9, 2012 at 6:42 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy <jfabernathy@gmail.com>
> > wrote:
> >>
> >> my goal of this test was to see if I could use the n450 BSP as a
> starting
> >> point for a BSP to support my Acer Aspire One n450 based netbook.  The
> >> core-image-sato will boot from USB key on the netbook if I use the ZIP
> drive
> >> format for the USB key, but the current n450 BSP doesn't include the
> drivers
> >> for the networking hardware in the netbook.
> >>
> >> I found by testing, using the menuconfig option documented in the
> >> Developer Manual Appendix B example, that I needed to add 2 parameters
> to
> >> the .config:
> >>
> >> CONFIG_ATH9K_PCI
> >> CONFIG_ATL1C
> >>
> >> To make this change easier to manage and more permanent, I thought about
> >> creating a config fragment.  I put the config parameters in a file,
> >> myconfig, in the linux-yocto directory at the same level as the
> >> linux-yocto_3.2.bbappend file, where I added:
> >>
> >> SRC_URI += "file//myconfig"
> >>
> >
> > Try to use myconfig.cfg.
>
> This would be the key part, since as a few noted, .cfg is what
> triggers the fragment
> processing to actually notice the file and stack it after the base /
> defined configuration.
>
> Cheers,
>
> Bruce
>
> I'm testing it now, but it sound like the problem.  So the Developer
Manual uses the .cfg in the example, but the BSP Guide does not.  That's an
area to fix.  Since this is critical,it needs to be pointed out, in my mind.

JIm A

>
> > @g
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>
>
>
> --
> "Thou shalt not follow the NULL pointer, for chaos and madness await
> thee at its end"
>

--f46d044785d989c5c104c46489f6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Mon, Jul 9, 2012 at 8:07 AM, Bruce As=
hfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@gmail.com" ta=
rget=3D"_blank">bruce.ashfield@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
<div class=3D"HOEnZb"><div class=3D"h5">On Mon, Jul 9, 2012 at 6:42 AM, And=
rei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&=
gt; wrote:<br>
&gt; On Mon, Jul 9, 2012 at 1:39 PM, James Abernathy &lt;<a href=3D"mailto:=
jfabernathy@gmail.com">jfabernathy@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; my goal of this test was to see if I could use the n450 BSP as a s=
tarting<br>
&gt;&gt; point for a BSP to support my Acer Aspire One n450 based netbook. =
=A0The<br>
&gt;&gt; core-image-sato will boot from USB key on the netbook if I use the=
 ZIP drive<br>
&gt;&gt; format for the USB key, but the current n450 BSP doesn&#39;t inclu=
de the drivers<br>
&gt;&gt; for the networking hardware in the netbook.<br>
&gt;&gt;<br>
&gt;&gt; I found by testing, using the menuconfig option documented in the<=
br>
&gt;&gt; Developer Manual Appendix B example, that I needed to add 2 parame=
ters to<br>
&gt;&gt; the .config:<br>
&gt;&gt;<br>
&gt;&gt; CONFIG_ATH9K_PCI<br>
&gt;&gt; CONFIG_ATL1C<br>
&gt;&gt;<br>
&gt;&gt; To make this change easier to manage and more permanent, I thought=
 about<br>
&gt;&gt; creating a config fragment. =A0I put the config parameters in a fi=
le,<br>
&gt;&gt; myconfig, in the linux-yocto directory at the same level as the<br=
>
&gt;&gt; linux-yocto_3.2.bbappend file, where I added:<br>
&gt;&gt;<br>
&gt;&gt; SRC_URI +=3D &quot;file//myconfig&quot;<br>
&gt;&gt;<br>
&gt;<br>
&gt; Try to use myconfig.cfg.<br>
<br>
</div></div>This would be the key part, since as a few noted, .cfg is what<=
br>
triggers the fragment<br>
processing to actually notice the file and stack it after the base /<br>
defined configuration.<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br></div></div></blockquote><div>I=
&#39;m testing it now, but it sound like the problem.=A0 So the Developer M=
anual uses the .cfg in the example, but the BSP Guide does not.=A0 That&#39=
;s an area to fix.=A0 Since this is critical,it needs to be pointed out, in=
 my mind.<br>
<br>JIm A<br> <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div class=3D"HOEnZb"><div class=3D"h5">
&gt;<br>
&gt; @g<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">--<br>
&quot;Thou shalt not follow the NULL pointer, for chaos and madness await<b=
r>
thee at its end&quot;<br>
</font></span></blockquote></div><br>

--f46d044785d989c5c104c46489f6--
