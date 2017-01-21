Return-Path: <ayoub.zaki@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A9EBE0049F; Sat, 21 Jan 2017 14:50:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ayoub.zaki[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EDE8E00405
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 14:50:26 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id c85so83859395wmi.1
	for <yocto@yoctoproject.org>; Sat, 21 Jan 2017 14:50:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KjDsdpeUFFcojPquxIIJRVVrK5dHqJVsbLLY//k2fWw=;
	b=ZO+g+zeYNODqCiX51dxpYXd9ST5yQ6TvXD3kXhr6GDCc0PYcH6J+6HeLLilzlPDFSj
	4dmlqUvIHUW87DMYO0XhF/VjZSMaIKNVNoAZbjvKPxow8mDOlHvw38zVP33xbso+pfxq
	VuZ1rwP/e/vyAW1XQb5DILrwIiKgh0KXC2cXtlT6yv4WlDp8jFW/syuFijKF+3mDPKPt
	FdVhCXjE2bV43x9h1hq71MHrpg69iQ8bWadewnNr5fhAJrogr4j+wEUSmU6U7mFIIBVi
	W6+khl9mayBRufQCNjdLDMIjWl6zWCm1KmZ3otVLausz0bwM0WwZt7USdPGy8Bl6mGKQ
	BycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KjDsdpeUFFcojPquxIIJRVVrK5dHqJVsbLLY//k2fWw=;
	b=iRDUrYr1IZzL+sEixCFz1S6QZNb8sjTITUPbghP1T3XdjkGxpUYrzbfQ9Kfx8npe5C
	NONdAhTaRYYL7jXVZnzCDkjX971hHrh1GwVCcWa2qQKfWytp572RMicNk2EiS+pYxNmj
	770ltYa+kEzNmqZSlJ5EcgxZt1s0UQ8lKT+0jDE3gtBrYRWj9P7UeERjmI+8bAYLQu72
	AXY2mEA8/V7vxXjlWJSF5twsdtpLvGv3ZOGIIPADgtIV2an87MxmWhfLvut7sYJCcMB/
	nyy48bskb6AQSDdJRBTgBV8y1IoaW5/fAqcL8Chh5c3CxDEQJGuC5lPGWja7VDcGpAv+
	K6ag==
X-Gm-Message-State: AIkVDXI4xevSpCaLajY8Ue+0RL4QjlAx5L/vFcFx6hYxZrSm7xXHYRxrM24CKMuTqZTFifhbfMcUOBPY5ey2PQ==
X-Received: by 10.28.130.207 with SMTP id e198mr8051887wmd.4.1485039024994;
	Sat, 21 Jan 2017 14:50:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.137.210 with HTTP; Sat, 21 Jan 2017 14:50:24 -0800 (PST)
In-Reply-To: <CAMKF1sovnNFPC_2tytR6jvxwwQsWfVjO3Cu4+uTqoBADFMq+8Q@mail.gmail.com>
References: <CA+-BmJabGkyK91Uw47pevvvXNKg+Uf8hiCC8xf1gz87mYWAkQg@mail.gmail.com>
	<CAMKF1sovnNFPC_2tytR6jvxwwQsWfVjO3Cu4+uTqoBADFMq+8Q@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Sat, 21 Jan 2017 23:50:24 +0100
Message-ID: <CA+-BmJYkghWNOBK=PyRQBKQ0y0SuOknfE-t_DTii9FxbHj1Uag@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Override machine conf settings
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
X-List-Received-Date: Sat, 21 Jan 2017 22:50:29 -0000
Content-Type: multipart/alternative; boundary=001a1144340290004c0546a297af

--001a1144340290004c0546a297af
Content-Type: text/plain; charset=UTF-8

Hi Khem,

Thanks for the hints but unfortunately I got the following error :

~/Projects/yocto/build$ MACHINE=raspberrypi bitbake -f virtual/kernel






WARNING: Duplicate inclusion for /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf in /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf

WARNING: Duplicate inclusion for /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf in /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf

WARNING: Duplicate inclusion for /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf in /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf

WARNING: Duplicate inclusion for /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf in /home/zak/Projects/yocto/meta-
something/conf/machine/raspberrypi.conf

ERROR: Unable to parse /home/zak/Projects/yocto/bitbake/lib/bb/data_smart.py

Traceback (most recent call last):

  File "/home/zak/Projects/yocto/bitbake/lib/bb/data_smart.py", line 400,
in DataSmart.expandWithRefs(s='/home/zak/Projects/yocto/meta-
poky:${TOPDIR}:/home/zak/Projects/yocto/meta:/home/zak/
Projects/yocto/meta-yocto-bsp:/home/zak/Projects/yocto/meta-
yocto-bsp:/home/zak/Projects/yocto/meta-something:/home/
zak/Projects/yocto/meta-raspberrypi:/home/zak/Projects/yocto/meta-openembedded/meta-oe',
varname='BBPATH'):

                 except Exception as exc:

    >                raise ExpansionError(varname, s, exc) from exc



bb.data_smart.ExpansionError: Failure expanding variable BBPATH, expression
was /home/zak/Projects/yocto/meta-poky:${TOPDIR}:/home/zak/
Projects/yocto/meta:/home/zak/Projects/yocto/meta-yocto-bsp:
/home/zak/Projects/yocto/meta-yocto-bsp:/home/zak/Projects/
yocto/meta-something:/home/zak/Projects/yocto/meta-raspberrypi:/home/zak/
Projects/yocto/meta-openembedded/meta-oe which triggered exception
RecursionError: maximum recursion depth exceeded while calling a Python
object





2017-01-12 21:39 GMT+01:00 Khem Raj <raj.khem@gmail.com>:

> On Thu, Jan 12, 2017 at 10:37 AM, Ayoub Zaki <ayoub.zaki@googlemail.com>
> wrote:
> > Hello,
> >
> > I'm trying to figure out how can I override machine settings, for
> example in
> > raspberrypi  I want to change default kernel version from 4.4.x to 4.1.x
> for
> > that I created in my layer meta-somelayer/conf/machine/raspberrypi.conf
> :
>
> there is a machine config with same name in meta-raspberrypi layer and
> thats taking
> precedence over your layer see conf/layer.conf where it sets the
> PRIORITY and also ensure
> the BBPATHs are prefixed for your layer to be in front of
> meta-raspberrypi layer. So that
> it uses your layer and falls back to meta-raspberrypi to do the filler
> work.
>
>
> >
> > require conf/machine/raspberrypi.conf
> > PREFERRED_VERSION_linux-raspberrypi = "4.1.%"
> >
> >
> > when I ran bitbake it gives:
> >
> > $ MACHINE=raspberrypi bitbake virtual/kernel
> >
> > NOTE: Tainting hash to force rebuild of task
> > /home/zak/Projects/yocto/meta-somelayer/recipes-kernel/linux/
> linux-raspberrypi_4.4.bb,
> > do_compile
> >
> > so it seems that bitbake ignored my override settings !
> >
> > I'm using morty branch and my layer meta-somelayer has higher priority
> than
> > meta-rapberrypi :
> >
> > $ bitbake-layers show-layers
> > layer                 path                                      priority
> > ============================================================
> ==============
> > meta                  /home/zak/Projects/yocto/meta        5
> > meta-yocto-bsp        /home/zak/Projects/yocto/meta-yocto-bsp  5
> > meta-poky             /home/zak/Projects/yocto/meta-poky   5
> > meta-yocto-bsp        /home/zak/Projects/yocto/meta-yocto-bsp  5
> > meta-raspberrypi      /home/zak/Projects/yocto/meta-raspberrypi  9
> > meta-somelayer        /home/zak/Projects/yocto/meta-somelayer  5
> >
> >
> > when I tried to override the setting in rpi.conf instead of
> raspberrypi.conf
> > in meta-somelayer/conf/machine/rpi.conf:
> >
> > MACHINEOVERRIDES = "raspberrypi:${MACHINE}"
> > require conf/machine/raspberrypi.conf
> >
> > PREFERRED_VERSION_linux-raspberrypi = "4.1.%"
> >
> > and running bitbake with :
> >
> >
> > $ MACHINE=rpi bitbake virtual/kernel
> > NOTE: Tainting hash to force rebuild of task
> > /home/zak/Projects/yocto/meta-somelayer/recipes-kernel/linux/
> linux-raspberrypi_4.1.bb,
> > do_compile
> >
> > it worked !
> >
> > My objective however is to override the machine settings and keep the
> same
> > MACHINE name.
> >
> > Any Ideas?
> >
> >
> > Regards,
> >
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a1144340290004c0546a297af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Khem,<div><br></div><div>Thanks for the hints but unfor=
tunately I got the following error :</div><div><br></div><div><p class=3D"M=
soNormal" style=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-siz=
e:10pt;font-family:arial,sans-serif">~/Projects/yocto/<wbr>build$ MACHINE=
=3Draspberrypi bitbake -f virtual/kernel<u></u><u></u></span></p><p class=
=3D"MsoNormal" style=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"fon=
t-size:10pt;font-family:arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p=
 class=3D"MsoNormal" style=3D"font-size:12.8px"><br></p><p class=3D"MsoNorm=
al" style=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10pt=
;font-family:arial,sans-serif"><u></u>=C2=A0<u></u></span></p><p class=3D"M=
soNormal" style=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-siz=
e:10pt;font-family:arial,sans-serif">WARNING: Duplicate inclusion for /home=
/zak/Projects/yocto/meta-<wbr>something/conf/machine/<wbr>raspberrypi.conf =
in /home/zak/Projects/yocto/meta-<wbr>something/conf/machine/<wbr>raspberry=
pi.conf<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size:1=
2.8px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:arial,sans-=
serif">WARNING: Duplicate inclusion for /home/zak/Projects/yocto/meta-<wbr>=
something/conf/machine/<wbr>raspberrypi.conf in /home/zak/Projects/yocto/me=
ta-<wbr>something/conf/machine/<wbr>raspberrypi.conf<u></u><u></u></span></=
p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><span lang=3D"EN-US" st=
yle=3D"font-size:10pt;font-family:arial,sans-serif">WARNING: Duplicate incl=
usion for /home/zak/Projects/yocto/meta-<wbr>something/conf/machine/<wbr>ra=
spberrypi.conf in /home/zak/Projects/yocto/meta-<wbr>something/conf/machine=
/<wbr>raspberrypi.conf<u></u><u></u></span></p><p class=3D"MsoNormal" style=
=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fam=
ily:arial,sans-serif">WARNING: Duplicate inclusion for /home/zak/Projects/y=
octo/meta-<wbr>something/conf/machine/<wbr>raspberrypi.conf in /home/zak/Pr=
ojects/yocto/meta-<wbr>something/conf/machine/<wbr>raspberrypi.conf<u></u><=
u></u></span></p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><span la=
ng=3D"EN-US" style=3D"font-size:10pt;font-family:arial,sans-serif">ERROR: U=
nable to parse /home/zak/Projects/yocto/<wbr>bitbake/lib/bb/data_smart.py<u=
></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><s=
pan lang=3D"EN-US" style=3D"font-size:10pt;font-family:arial,sans-serif">Tr=
aceback (most recent call last):<u></u><u></u></span></p><p class=3D"MsoNor=
mal" style=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10p=
t;font-family:arial,sans-serif">=C2=A0 File &quot;/home/zak/Projects/yocto/=
<wbr>bitbake/lib/bb/data_smart.py&quot;, line 400, in DataSmart.expandWithR=
efs(s=3D&#39;/<wbr>home/zak/Projects/yocto/meta-<wbr>poky:${TOPDIR}:/home/z=
ak/<wbr>Projects/yocto/meta:/home/zak/<wbr>Projects/yocto/meta-yocto-bsp:<w=
br>/home/zak/Projects/yocto/meta-<wbr>yocto-bsp:/home/zak/Projects/<wbr>yoc=
to/meta-something:/home/<wbr>zak/Projects/yocto/meta-<wbr>raspberrypi:/home=
/zak/<wbr>Projects/yocto/meta-<wbr>openembedded/meta-oe&#39;, varname=3D&#3=
9;BBPATH&#39;):<u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"fon=
t-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-family:ari=
al,sans-serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except Exception as exc:<u></u><u></u>=
</span></p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><span lang=3D"=
EN-US" style=3D"font-size:10pt;font-family:arial,sans-serif">=C2=A0=C2=A0=
=C2=A0 &gt;=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0raise ExpansionError(varname, s, exc) from exc<u=
></u><u></u></span></p><p class=3D"MsoNormal" style=3D"font-size:12.8px"><s=
pan lang=3D"EN-US" style=3D"font-size:10pt;font-family:arial,sans-serif">=
=C2=A0=C2=A0=C2=A0=C2=A0<u></u><u></u></span></p><p class=3D"MsoNormal" sty=
le=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-f=
amily:arial,sans-serif">bb.data_smart.ExpansionError: Failure expanding var=
iable BBPATH, expression was /home/zak/Projects/yocto/meta-<wbr>poky:${TOPD=
IR}:/home/zak/<wbr>Projects/yocto/meta:/home/zak/<wbr>Projects/yocto/meta-y=
octo-bsp:<wbr>/home/zak/Projects/yocto/meta-<wbr>yocto-bsp:/home/zak/Projec=
ts/<wbr>yocto/meta-something:/home/<wbr>zak/Projects/yocto/meta-<wbr>raspbe=
rrypi:/home/zak/<wbr>Projects/yocto/meta-<wbr>openembedded/meta-oe which tr=
iggered exception RecursionError: maximum recursion depth exceeded while ca=
lling a Python object<u></u><u></u></span></p><p class=3D"MsoNormal" style=
=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fam=
ily:arial,sans-serif"><u></u>=C2=A0</span></p><p class=3D"MsoNormal" style=
=3D"font-size:12.8px"><span lang=3D"EN-US" style=3D"font-size:10pt;font-fam=
ily:arial,sans-serif"><br></span></p></div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">2017-01-12 21:39 GMT+01:00 Khem Raj <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D"">On Thu, Jan 12, 2017 at 10:37 AM, Ayoub Zaki &lt;<a href=3D"mailto=
:ayoub.zaki@googlemail.com">ayoub.zaki@googlemail.com</a>&gt; wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; I&#39;m trying to figure out how can I override machine settings, for =
example in<br>
&gt; raspberrypi=C2=A0 I want to change default kernel version from 4.4.x t=
o 4.1.x for<br>
&gt; that I created in my layer meta-somelayer/conf/machine/<wbr>raspberryp=
i.conf :<br>
<br>
</span>there is a machine config with same name in meta-raspberrypi layer a=
nd<br>
thats taking<br>
precedence over your layer see conf/layer.conf where it sets the<br>
PRIORITY and also ensure<br>
the BBPATHs are prefixed for your layer to be in front of<br>
meta-raspberrypi layer. So that<br>
it uses your layer and falls back to meta-raspberrypi to do the filler work=
.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; require conf/machine/raspberrypi.conf<br>
&gt; PREFERRED_VERSION_linux-<wbr>raspberrypi =3D &quot;4.1.%&quot;<br>
&gt;<br>
&gt;<br>
&gt; when I ran bitbake it gives:<br>
&gt;<br>
&gt; $ MACHINE=3Draspberrypi bitbake virtual/kernel<br>
&gt;<br>
&gt; NOTE: Tainting hash to force rebuild of task<br>
&gt; /home/zak/Projects/yocto/meta-<wbr>somelayer/recipes-kernel/<wbr>linux=
/<a href=3D"http://linux-raspberrypi_4.4.bb" rel=3D"noreferrer" target=3D"_=
blank">linux-raspberrypi_4.4.bb</a><wbr>,<br>
&gt; do_compile<br>
&gt;<br>
&gt; so it seems that bitbake ignored my override settings !<br>
&gt;<br>
&gt; I&#39;m using morty branch and my layer meta-somelayer has higher prio=
rity than<br>
&gt; meta-rapberrypi :<br>
&gt;<br>
&gt; $ bitbake-layers show-layers<br>
&gt; layer=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pat=
h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 priority<br>
&gt; =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D<br>
&gt; meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /ho=
me/zak/Projects/yocto/meta=C2=A0 =C2=A0 =C2=A0 =C2=A0 5<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/zak/Projects/yocto/met=
a-<wbr>yocto-bsp=C2=A0 5<br>
&gt; meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/home/zak/Pro=
jects/yocto/meta-<wbr>poky=C2=A0 =C2=A05<br>
&gt; meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/zak/Projects/yocto/met=
a-<wbr>yocto-bsp=C2=A0 5<br>
&gt; meta-raspberrypi=C2=A0 =C2=A0 =C2=A0 /home/zak/Projects/yocto/meta-<wb=
r>raspberrypi=C2=A0 9<br>
&gt; meta-somelayer=C2=A0 =C2=A0 =C2=A0 =C2=A0 /home/zak/Projects/yocto/met=
a-<wbr>somelayer=C2=A0 5<br>
&gt;<br>
&gt;<br>
&gt; when I tried to override the setting in rpi.conf instead of raspberryp=
i.conf<br>
&gt; in meta-somelayer/conf/machine/<wbr>rpi.conf:<br>
&gt;<br>
&gt; MACHINEOVERRIDES =3D &quot;raspberrypi:${MACHINE}&quot;<br>
&gt; require conf/machine/raspberrypi.conf<br>
&gt;<br>
&gt; PREFERRED_VERSION_linux-<wbr>raspberrypi =3D &quot;4.1.%&quot;<br>
&gt;<br>
&gt; and running bitbake with :<br>
&gt;<br>
&gt;<br>
&gt; $ MACHINE=3Drpi bitbake virtual/kernel<br>
&gt; NOTE: Tainting hash to force rebuild of task<br>
&gt; /home/zak/Projects/yocto/meta-<wbr>somelayer/recipes-kernel/<wbr>linux=
/<a href=3D"http://linux-raspberrypi_4.1.bb" rel=3D"noreferrer" target=3D"_=
blank">linux-raspberrypi_4.1.bb</a><wbr>,<br>
&gt; do_compile<br>
&gt;<br>
&gt; it worked !<br>
&gt;<br>
&gt; My objective however is to override the machine settings and keep the =
same<br>
&gt; MACHINE name.<br>
&gt;<br>
&gt; Any Ideas?<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
</div></div><span class=3D"HOEnZb"><font color=3D"#888888">&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto=
</a><br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a1144340290004c0546a297af--
