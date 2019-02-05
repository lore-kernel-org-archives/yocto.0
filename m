Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E00E1E00BAB; Tue,  5 Feb 2019 09:06:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADE3FE00BAB
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 09:06:20 -0800 (PST)
Received: by mail-ot1-f41.google.com with SMTP id u16so6887177otk.8
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 09:06:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=kqUW/z/KMYqNsGRF6jqfv6gyYCpttMehvAtpHnCMLS8=;
	b=Xg4NhYjSSIJhgqyPyDZDuge8WBQpE6DsQ8LOX1o9wTDhB+STFXwi9ig/k+K9EIiAV9
	u8lZMrkB/J40Zl/SgywmbPeJrEEDMtv7cjTm3vdleTsVGCYIVOzTzD08zLRZmikh/myQ
	zMXUua60oBkQfMOYhpKdgBkLgqdosLK1XIBCYrpgDUQf5J7sawaXRF0K+j1hQ3n565md
	tzSN2OpivJCJmrxHnX7rYIzx+OPle7lPqP+OQuwUtX+EkQ6htfXCerKd3gAfs9a2SQUf
	5XUZ5+HdUtcEGjW2MAFWdG6yqdAkvOwRCqK8fBhYZ0ZQMdGnSV5Oul0fGguVhHcsfV56
	3Sfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=kqUW/z/KMYqNsGRF6jqfv6gyYCpttMehvAtpHnCMLS8=;
	b=EaTEFgbpq6Mz9+rjLPWkPHjIrBqnjb4k1QB8B4uJOYpUA/QGoOK0QuOeQpVf+onijQ
	BlnIuYagFhRaNKBVknKKmLLqCvqry3HmlK2pfU9TyiaEntEC3cS/KNxN8Xn+TLUfCwQl
	j2a24+ogb98djGmTmWOzdBebnoG1s6bD0aVvdDUKWhA2DWzfuBIc5sCvM9AuVFVDsjVX
	txcaw8NVLWhdMm89y5VxcOj60y+LBcEfySMc5SrQXSI/SHKPkj4lHaOJ/WT9eVD/xVYN
	6XLBSK6w6BsZlZgM0bZUmYURzed4ZpmRvtGlg/5if0rVKLYYKsdOZ1A2hkm3NsEVqbAX
	9W9g==
X-Gm-Message-State: AHQUAuazqY4HkNKJPW8h4xyUaNewtFGiu8e4RUp1aObX/UhMi4vis/iv
	lWopgX1KAza58R6K8SO5M/Mr04l234KiVxVYqFNXjJ/r
X-Google-Smtp-Source: AHgI3IYgMTxQ5/rP0xXw97cCI+6qQ1JqewRLdHyxFEgAr9q/7rnybaHjRslU0t39qtyTVZKHBCMgx5aB8PSN6nmlUQ8=
X-Received: by 2002:aca:5053:: with SMTP id e80mr234575oib.334.1549386379942; 
	Tue, 05 Feb 2019 09:06:19 -0800 (PST)
MIME-Version: 1.0
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
	<CAMRMzCBh-Of2MVnycxMvY3=L+g8vf_mw+CTdsh4DbneQz5GAng@mail.gmail.com>
	<005901d4bd67$bc29e390$347daab0$@polycaptil.fr>
In-Reply-To: <005901d4bd67$bc29e390$347daab0$@polycaptil.fr>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Tue, 5 Feb 2019 12:06:08 -0500
Message-ID: <CAMRMzCBn5G36NjBr+e+sYKcUDMRes1cqda9wwW2o=XVGMeWtVg@mail.gmail.com>
To: Stanisavljevic <n.stanisavljevic@polycaptil.fr>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: yocto touchscreen
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
X-List-Received-Date: Tue, 05 Feb 2019 17:06:21 -0000
Content-Type: multipart/alternative; boundary="000000000000cbe138058128a01e"

--000000000000cbe138058128a01e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Looks like: https://bugzilla.redhat.com/show_bug.cgi?id=3D1650634

Good luck!

On Tue, Feb 5, 2019 at 10:30 AM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

> Hy Marc,
>
>
>
> Here is the log file attached in this mail.
>
>
>
> Nikola
>
> *De :* Marc Ferland <marc.ferland@gmail.com>
> *Envoy=C3=A9 :* mardi 5 f=C3=A9vrier 2019 16:10
> *=C3=80 :* Stanisavljevic <n.stanisavljevic@polycaptil.fr>
> *Cc :* Yocto discussion list <yocto@yoctoproject.org>
> *Objet :* Re: [yocto] yocto touchscreen
>
>
>
> On Mon, Feb 4, 2019 at 6:17 AM Stanisavljevic <
> n.stanisavljevic@polycaptil.fr> wrote:
>
> Hy Team,
>
>
>
> I have a problem
>
>
>
> I buid a custom os for AM335x processor and I used yocto to do it.
>
>
>
> I build a first version of this os with version krogoth and it work fine.
>
>
>
> Now I build a second version of this os with version sumo and the
> touchscreen work fine during boot process but when kernel is loaded,
> touchscreen freeze / lock and impossible to use it.
>
> The terminal is printed on the touchscreen but the screen is locked,
> impossible to write a command or to move the mouse to select, =E2=80=A6.
>
>
>
> Here is the log of boot to the user session (log got with serial
> communication between PC and board) :
>
>
>
> ...
>
> X.Org X Server 1.19.6
>
> Release Date: 2017-12-20
>
> X Protocol Version 11, Revision 0
>
> Build Operating System: Linux 4.15.0-38-generic x86_64
>
> Current Operating System: Linux polycaptil-machine-am335x-evmsk
> 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l
>
> Kernel command line: console=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw
>
> Build Date: 05 November 2018  09:33:21PM
>
>
>
> Current version of pixman: 0.34.0
>
>         Before reporting problems, check http://wiki.x.org
>
>         to make sure that you have the latest version.
>
> Markers: (--) probed, (**) from config file, (=3D=3D) default setting,
>
>         (++) from command line, (!!) notice, (II) informational,
>
>         (WW) warning, (EE) error, (NI) not implemented, (??) unknown.
>
> (=3D=3D) Log file: "/var/log/Xorg.0.log", Time: Fri Feb  1 20:08:02 2019
>
> (=3D=3D) Using config file: "/etc/X11/xorg.conf"
>
> (=3D=3D) Using system config directory "/usr/share/X11/xorg.conf.d"
>
> done.
>
>
>
> Please post the full /var/log/Xorg.log.
>
>
>
> Marc
>

--000000000000cbe138058128a01e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Looks like: <a href=3D"https://bugzilla.r=
edhat.com/show_bug.cgi?id=3D1650634">https://bugzilla.redhat.com/show_bug.c=
gi?id=3D1650634</a></div><div dir=3D"ltr"><br></div><div>Good luck!<br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Tue, Feb 5, 2019 at 10:30 AM Stanisavljevic &lt;<a href=3D"mailto:n.st=
anisavljevic@polycaptil.fr">n.stanisavljevic@polycaptil.fr</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"FR">=
<div class=3D"gmail-m_5333815775862062060WordSection1"><p class=3D"MsoNorma=
l"><span lang=3D"EN-US">Hy Marc,<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">Here is the log file attached in this mail.<u></u=
><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Nikola<u><=
/u><u></u></span></p><p class=3D"MsoNormal"><b>De=C2=A0:</b> Marc Ferland &=
lt;<a href=3D"mailto:marc.ferland@gmail.com" target=3D"_blank">marc.ferland=
@gmail.com</a>&gt; <br><b>Envoy=C3=A9=C2=A0:</b> mardi 5 f=C3=A9vrier 2019 =
16:10<br><b>=C3=80=C2=A0:</b> Stanisavljevic &lt;<a href=3D"mailto:n.stanis=
avljevic@polycaptil.fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a=
>&gt;<br><b>Cc=C2=A0:</b> Yocto discussion list &lt;<a href=3D"mailto:yocto=
@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br><b>O=
bjet=C2=A0:</b> Re: [yocto] yocto touchscreen<u></u><u></u></p><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p><div><div><div><p class=3D"MsoNormal">On=
 Mon, Feb 4, 2019 at 6:17 AM Stanisavljevic &lt;<a href=3D"mailto:n.stanisa=
vljevic@polycaptil.fr" target=3D"_blank">n.stanisavljevic@polycaptil.fr</a>=
&gt; wrote:<u></u><u></u></p></div><blockquote style=3D"border-color:curren=
tcolor currentcolor currentcolor rgb(204,204,204);border-style:none none no=
ne solid;border-width:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;marg=
in-left:4.8pt;margin-right:0cm"><div><div><p class=3D"MsoNormal">Hy Team,<u=
></u><u></u></p><p class=3D"MsoNormal">=C2=A0<u></u><u></u></p><p class=3D"=
MsoNormal">I have a problem<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0<=
u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I buid a custo=
m os for AM335x processor and I used yocto to do it.</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">I build a first version of th=
is os with version krogoth and it work fine.</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Now I build a second version of this =
os with version sumo and the touchscreen work fine during boot process but =
when kernel is loaded, touchscreen freeze / lock and impossible to use it.<=
/span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">The ter=
minal is printed on the touchscreen but the screen is locked, impossible to=
 write a command or to move the mouse to select, =E2=80=A6.</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u=
></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Here is the log of boo=
t to the user session (log got with serial communication between PC and boa=
rd) :</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0</span><u></u><u></u></p></div></div></blockquote><div><p class=3D"Ms=
oNormal">... <u></u><u></u></p></div><blockquote style=3D"border-color:curr=
entcolor currentcolor currentcolor rgb(204,204,204);border-style:none none =
none solid;border-width:medium medium medium 1pt;padding:0cm 0cm 0cm 6pt;ma=
rgin-left:4.8pt;margin-right:0cm"><div><div><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">X.Org X Server 1.19.6</span><u></u><u></u></p><p class=3D"MsoN=
ormal"><span lang=3D"EN-US">Release Date: 2017-12-20</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">X Protocol Version 11, Revisi=
on 0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Bu=
ild Operating System: Linux 4.15.0-38-generic x86_64</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">Current Operating System: Lin=
ux polycaptil-machine-am335x-evmsk 4.4.19-ge581bb1cac #1 PREEMPT Thu May 24=
 11:42:17 CEST 2018 armv7l</span><u></u><u></u></p><p class=3D"MsoNormal"><=
span lang=3D"EN-US">Kernel command line: console=3DttyO0,115200 root=3D/dev=
/mmcblk0p3 rw</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"=
EN-US">Build Date: 05 November 2018=C2=A0 09:33:21PM</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0</span><u></u><u></u></=
p><p class=3D"MsoNormal"><span lang=3D"EN-US">Current version of pixman: 0.=
34.0</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Before reporting problems, check=
 <a href=3D"http://wiki.x.org" target=3D"_blank">http://wiki.x.org</a></spa=
n><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to make sure that you have the latest ver=
sion.</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">M=
arkers: (--) probed, (**) from config file, (=3D=3D) default setting,</span=
><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (++) from command line, (!!) notice, (II) in=
formational,</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=3D"E=
N-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (WW) warning, (EE) error, =
(NI) not implemented, (??) unknown.</span><u></u><u></u></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">(=3D=3D) Log file: &quot;/var/log/Xorg.0.log&q=
uot;, Time: Fri Feb=C2=A0 1 20:08:02 2019</span><u></u><u></u></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Using config file: &quot;/etc/=
X11/xorg.conf&quot;</span><u></u><u></u></p><p class=3D"MsoNormal"><span la=
ng=3D"EN-US">(=3D=3D) Using system config directory &quot;/usr/share/X11/xo=
rg.conf.d&quot;</span><u></u><u></u></p><p class=3D"MsoNormal"><span lang=
=3D"EN-US">done.</span><u></u><u></u></p></div></div></blockquote><div><p c=
lass=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal=
">Please post the full /var/log/Xorg.log.<u></u><u></u></p></div><div><p cl=
ass=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div><div><p class=3D"MsoNormal"=
>Marc<u></u><u></u></p></div></div></div></div></div></blockquote></div>

--000000000000cbe138058128a01e--
