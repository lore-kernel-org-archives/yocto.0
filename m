Return-Path: <raltherr@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 754AEE00A16; Wed, 18 Jan 2017 09:51:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A700E009C2
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:51:46 -0800 (PST)
Received: by mail-it0-f47.google.com with SMTP id r185so16242874ita.0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:51:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=5tTho203tSCMMn8i1XPyILt3+0NvOroQ9HJyISuoc6I=;
	b=aI2Wm901wDm8dEKO1PEBw1Ln0hU/HmmEmHqMzz4pwlJW6zhItdg53cigZB61tW4/Mz
	EHwCec2gFL1MISPioIXejYJdccRBxfZs8/ODImcWMl+lcptGgDOQrpnxKvs77q+hi2XI
	053Ve39rYKuk0FutI7l0VUaB0VHaOXylcptFd6X/Rd3LRnl3E4vgIafQOnN5fyoAbgtM
	k3MhjXC67jRd44wOemRevmk3AzkcB4DzuIiuS5pR+7wHIEj5DBBQEe2m26ybqNEVeT+u
	vIH1TChmja8ON32Rkj5TZY8wGcwaLtQctKmXA0Gcc+VaEvFg3qjtbsSyvcem8pT6t60j
	OmBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=5tTho203tSCMMn8i1XPyILt3+0NvOroQ9HJyISuoc6I=;
	b=Ggarn66H1HbKFcPT4Zcz1Gdzx8Ar7M9yk7wCJfJIBN71PxkyNc483FYseq5Siq+vwi
	s37LL1jKHaaA1bUe7KF97w631mScF+Fc26Bb+3Er6DOa4TObfmxIQh9A95RwW/wsWS29
	ndL3VPhi2ZxpQCnz4ZkyTI+ww7ir/hJee1Y8qYGQu2vAuZprgZlBiwOBzI6NfW4t1gsy
	vVihW7OhL3dYVKpcS9CzJsstj8a2sF0XK6V3dCkI4rl7frkavXwz+tmH9KwzSZF4EiJX
	Zr3XfQAXhn0v6QmsU2C+zFTixhkTm7EnW98DWJqVE42Ovz7tOTI/hUqWDQVOPJ0jhgLT
	PwlQ==
X-Gm-Message-State: AIkVDXK0wm380fGlSfn+pfl+g5Z7qf/UdNi0L/8vW7AyvFwE7+SRkCIIi5e54yk/+Nq+ZBYE0zEOEA1mowERU4Gd
X-Received: by 10.36.133.133 with SMTP id r127mr25523847itd.37.1484761905904; 
	Wed, 18 Jan 2017 09:51:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.130.106 with HTTP; Wed, 18 Jan 2017 09:51:45 -0800 (PST)
In-Reply-To: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
From: Rick Altherr <raltherr@google.com>
Date: Wed, 18 Jan 2017 09:51:45 -0800
Message-ID: <CAPLgG==3Se8j7sVgqQd1rCq-ZMn2mWrc-vHR6SVzAq5=67_zRg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: yocto@yoctoproject.org
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Wed, 18 Jan 2017 17:51:48 -0000
Content-Type: multipart/alternative; boundary=94eb2c05bbf4fa9d9905466211d4

--94eb2c05bbf4fa9d9905466211d4
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

systemd-networkd is the systemd daemon for setting up the network.  It
looks like the PACKAGECONFIG settings exist for it in
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-core/syste=
md/systemd_232.bb
but it isn't enabled by default.  Add that and it should work.

Rick

On Wed, Jan 18, 2017 at 7:10 AM, <colin.helliwell@ln-systems.com> wrote:

> We have a configuration for our embedded system which is working via SysV=
,
> but we=E2=80=99re investigating moving over to systemd.
>
> Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has techno=
logical arguments
> for/against then I=E2=80=99d be interested =E2=80=93 but I wanted to inve=
stigate it anyway.
>
>
>
> I=E2=80=99ve modified local.conf (right or wrong) with
>
>   DISTRO_FEATURES_append =3D " systemd"
>
>   VIRTUAL-RUNTIME_init_manager =3D "systemd"
>
>   DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>
>   VIRTUAL-RUNTIME_initscripts =3D ""
>
>   KERNEL_ENABLE_CGROUPS =3D "1"
>
>
>
> I also found a readme (https://cgit.freedesktop.org/
> systemd/systemd/tree/README#n37) about the kernel requirements for
> systemd, and it does at least now boot.
>
> However although eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), the=
re doesn=E2=80=99t seem
> to be any dhcp happening =E2=80=93 no IP etc.
>
> Previously (under SysV) I had the busybox dhcp client; now it seems that
> is missing. There=E2=80=99s a symlink /etc/systemd/system/busybox-udhcpc.=
service
> to /dev/null
>
> I=E2=80=99m using
>
>   Poky Jethro
>
>   Kernel 4.4.0
>
>   Busybox 1.23.2 (with =E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)
>
>
>
> I wondered if this is just a simple switch I=E2=80=99m missing somewhere,=
 or is
> there a whole load more modifications I need to dig into and hand-craft?
> (Was hoping for something =E2=80=98out of the box=E2=80=99=E2=80=A6.)
>
>
>
> Thanks
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c05bbf4fa9d9905466211d4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">systemd-networkd is the systemd daemon for setting up the =
network.=C2=A0 It looks like the PACKAGECONFIG settings exist for it in=C2=
=A0<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/reci=
pes-core/systemd/systemd_232.bb">http://git.yoctoproject.org/cgit/cgit.cgi/=
poky/tree/meta/recipes-core/systemd/systemd_232.bb</a> but it isn&#39;t ena=
bled by default.=C2=A0 Add that and it should work.<div><br></div><div>Rick=
</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On We=
d, Jan 18, 2017 at 7:10 AM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:colin.=
helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.com<=
/a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"EN-GB"=
 link=3D"#0563C1" vlink=3D"#954F72"><div class=3D"m_-4033825669750623034Wor=
dSection1"><p class=3D"MsoNormal">We have a configuration for our embedded =
system which is working via SysV, but we=E2=80=99re investigating moving ov=
er to systemd. <u></u><u></u></p><p class=3D"MsoNormal">Not sure if this is=
 =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has technological arguments for=
/against then I=E2=80=99d be interested =E2=80=93 but I wanted to investiga=
te it anyway.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u><=
/p><p class=3D"MsoNormal">I=E2=80=99ve modified local.conf (right or wrong)=
 with<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0 DISTRO_FEATURES_append=
 =3D &quot; systemd&quot;<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0 VI=
RTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<u></u><u></u></p><p clas=
s=3D"MsoNormal">=C2=A0 DISTRO_FEATURES_BACKFILL_<wbr>CONSIDERED =3D &quot;s=
ysvinit&quot;<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0 VIRTUAL-RUNTIM=
E_initscripts =3D &quot;&quot;<u></u><u></u></p><p class=3D"MsoNormal">=C2=
=A0 KERNEL_ENABLE_CGROUPS =3D &quot;1&quot;<u></u><u></u></p><p class=3D"Ms=
oNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I also found a read=
me (<a href=3D"https://cgit.freedesktop.org/systemd/systemd/tree/README#n37=
" target=3D"_blank">https://cgit.freedesktop.org/<wbr>systemd/systemd/tree/=
README#<wbr>n37</a>) about the kernel requirements for systemd, and it does=
 at least now boot.<u></u><u></u></p><p class=3D"MsoNormal">However althoug=
h eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), there doesn=E2=80=99=
t seem to be any dhcp happening =E2=80=93 no IP etc.<u></u><u></u></p><p cl=
ass=3D"MsoNormal">Previously (under SysV) I had the busybox dhcp client; no=
w it seems that is missing. There=E2=80=99s a symlink /etc/systemd/system/b=
usybox-<wbr>udhcpc.service to /dev/null<u></u><u></u></p><p class=3D"MsoNor=
mal">I=E2=80=99m using <u></u><u></u></p><p class=3D"MsoNormal">=C2=A0=C2=
=A0Poky Jethro<u></u><u></u></p><p class=3D"MsoNormal">=C2=A0 Kernel 4.4.0<=
u></u><u></u></p><p class=3D"MsoNormal">=C2=A0 Busybox 1.23.2 (with =E2=80=
=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)<u></u><u></u></p><p class=3D"MsoNor=
mal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">I wondered if this is j=
ust a simple switch I=E2=80=99m missing somewhere, or is there a whole load=
 more modifications I need to dig into and hand-craft? (Was hoping for some=
thing =E2=80=98out of the box=E2=80=99=E2=80=A6.)<u></u><u></u></p><p class=
=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Thanks<u></u>=
<u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div><br>-=
-<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--94eb2c05bbf4fa9d9905466211d4--
