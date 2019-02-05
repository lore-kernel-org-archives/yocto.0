Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 817B7E00BAB; Tue,  5 Feb 2019 07:10:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	MIME_BOUND_DIGITS_15, 
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 MIME_BOUND_DIGITS_15 Spam tool pattern in MIME boundary
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 951E7E009AA
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2019 07:10:24 -0800 (PST)
Received: by mail-ot1-f43.google.com with SMTP id s5so6171748oth.7
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2019 07:10:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XYzgnD6Zp0ecgRRRWPzk5jVInuOwU6GXFVBnpYtn7c0=;
	b=mJB4SI1WHlU35/NnWHPpAJ2fy7cqz4H+hMsdeSMJZHLBKHnnrRgwdgdZN9hzPn+K7F
	GjcABCIb7m0WDiIJVx87UENDvuEfaJC4cd11BtVr5D0/y/WqIDxwTcuukgKpSC96ac8w
	qD+dbiRRcjxbrCZMbaEPNM2xO29/Mda9Ao9m+TexsWSsI5RZP+79L3h1e11O6T2oSTCs
	h612rbINZfANNZtRngf9r/FflOm8TFTlO8iZabDIZLheHhHb+dNyR185uNDLIORTY2bm
	oK7yfjFdZtW19USryyclsXG+Onyu8Fz04DfFHSIl76OjgON1MDW/swZjzFTuwAo/YTOd
	uvrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XYzgnD6Zp0ecgRRRWPzk5jVInuOwU6GXFVBnpYtn7c0=;
	b=bwdCAFTODvJKxFB2K/5ZyUFo6Yhxl7prRE6oJgv18zRiKiNN4fYQsroEMXXa1pjQTg
	siLv84kgYlSze0L7rGRx/i3GnwB04Nx9CqTTZjh8Zg55Bi30UXSeodqHzMUYlFoF+Z8G
	eR9F52dpkRWZgJi4QGarKMG891a24LdCTM2FzilrlmalZeFN+viI2uVAdtuWkngpq9nO
	TEYLiACFxJLHg/fDW+yVVB72d557KjVadH6eeZSHXdShtyEZKmdpsxclORZsPUqKd5/q
	M8p4W5RKXPH9G019JiGZE+Vi7JTRa34yEmyU4Lr7LlSgXyGZZyNe3fUEmR9Wz1p7BMdq
	t/3g==
X-Gm-Message-State: AHQUAuZ9lPB+DDYFnJZgj4FApg69WvV8ojAaVKUPx88jm+9K8RSmDpWN
	ob/hPfwKw2fikGSJzvFsFI8bTEhSgtPBA3z2KBTt5w==
X-Google-Smtp-Source: AHgI3IZbAxrf/H9ugMNHThoISAfIJq8tbeukVs7FvGwzkBLEpCyQzLQXBN61G36CF3ynneiOslxmmaC1SxohGj0itLo=
X-Received: by 2002:aca:41c5:: with SMTP id o188mr2685183oia.61.1549379423977; 
	Tue, 05 Feb 2019 07:10:23 -0800 (PST)
MIME-Version: 1.0
References: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
In-Reply-To: <001101d4bc79$b2739150$175ab3f0$@polycaptil.fr>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Tue, 5 Feb 2019 10:10:12 -0500
Message-ID: <CAMRMzCBh-Of2MVnycxMvY3=L+g8vf_mw+CTdsh4DbneQz5GAng@mail.gmail.com>
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
X-List-Received-Date: Tue, 05 Feb 2019 15:10:26 -0000
Content-Type: multipart/alternative; boundary="0000000000003047590581270290"

--0000000000003047590581270290
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 4, 2019 at 6:17 AM Stanisavljevic <
n.stanisavljevic@polycaptil.fr> wrote:

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
...

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

Please post the full /var/log/Xorg.log.

Marc

--0000000000003047590581270290
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, Feb 4, 2019 at 6:17 AM Stanisavljevic &lt;<a href=3D"mailto:=
n.stanisavljevic@polycaptil.fr">n.stanisavljevic@polycaptil.fr</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"=
FR"><div class=3D"gmail-m_-2344116078789747918WordSection1"><p class=3D"Mso=
Normal">Hy Team,<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></=
u></p><p class=3D"MsoNormal">I have a problem<u></u><u></u></p><p class=3D"=
MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal"><span lang=3D"EN-=
US">I buid a custom os for AM335x processor and I used yocto to do it.<u></=
u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=
=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">I build a =
first version of this os with version krogoth and it work fine.<u></u><u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u></u>=C2=A0<u></=
u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Now I build a seco=
nd version of this os with version sumo and the touchscreen work fine durin=
g boot process but when kernel is loaded, touchscreen freeze / lock and imp=
ossible to use it.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lan=
g=3D"EN-US">The terminal is printed on the touchscreen but the screen is lo=
cked, impossible to write a command or to move the mouse to select, =E2=80=
=A6.<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US"><u=
></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">He=
re is the log of boot to the user session (log got with serial communicatio=
n between PC and board) :<u></u><u></u></span></p><p class=3D"MsoNormal"><s=
pan lang=3D"EN-US"><u></u>=C2=A0</span></p></div></div></blockquote><div>..=
. <br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div lang=3D"=
FR"><div class=3D"gmail-m_-2344116078789747918WordSection1"><p class=3D"Mso=
Normal"><span lang=3D"EN-US"><u></u></span></p><span lang=3D"EN-US"></span>=
<p class=3D"MsoNormal"><span lang=3D"EN-US">X.Org X Server 1.19.6<u></u><u>=
</u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Release Date: 20=
17-12-20<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">X Protocol Version 11, Revision 0<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">Build Operating System: Linux 4.15.0-38-generi=
c x86_64<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">Current Operating System: Linux polycaptil-machine-am335x-evmsk 4.4.19-ge=
581bb1cac #1 PREEMPT Thu May 24 11:42:17 CEST 2018 armv7l<u></u><u></u></sp=
an></p><p class=3D"MsoNormal"><span lang=3D"EN-US">Kernel command line: con=
sole=3DttyO0,115200 root=3D/dev/mmcblk0p3 rw<u></u><u></u></span></p><p cla=
ss=3D"MsoNormal"><span lang=3D"EN-US">Build Date: 05 November 2018=C2=A0 09=
:33:21PM<u></u><u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
"><u></u>=C2=A0<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US=
">Current version of pixman: 0.34.0<u></u><u></u></span></p><p class=3D"Mso=
Normal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Bef=
ore reporting problems, check <a href=3D"http://wiki.x.org" target=3D"_blan=
k">http://wiki.x.org</a><u></u><u></u></span></p><p class=3D"MsoNormal"><sp=
an lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 to make sure t=
hat you have the latest version.<u></u><u></u></span></p><p class=3D"MsoNor=
mal"><span lang=3D"EN-US">Markers: (--) probed, (**) from config file, (=3D=
=3D) default setting,<u></u><u></u></span></p><p class=3D"MsoNormal"><span =
lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (++) from command=
 line, (!!) notice, (II) informational,<u></u><u></u></span></p><p class=3D=
"MsoNormal"><span lang=3D"EN-US">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 (WW) warning, (EE) error, (NI) not implemented, (??) unknown.<u></u><u></u=
></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Log file: =
&quot;/var/log/Xorg.0.log&quot;, Time: Fri Feb=C2=A0 1 20:08:02 2019<u></u>=
<u></u></span></p><p class=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Usin=
g config file: &quot;/etc/X11/xorg.conf&quot;<u></u><u></u></span></p><p cl=
ass=3D"MsoNormal"><span lang=3D"EN-US">(=3D=3D) Using system config directo=
ry &quot;/usr/share/X11/xorg.conf.d&quot;<u></u><u></u></span></p><p class=
=3D"MsoNormal"><span lang=3D"EN-US">done.</span></p></div></div></blockquot=
e><div><br></div><div>Please post the full /var/log/Xorg.log.</div><div><br=
></div><div>Marc<br></div></div></div>

--0000000000003047590581270290--
