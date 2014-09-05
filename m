Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F82FE00769; Fri,  5 Sep 2014 05:18:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F8F1E006EF
	for <yocto@yoctoproject.org>; Fri,  5 Sep 2014 05:18:28 -0700 (PDT)
Received: by mail-qg0-f43.google.com with SMTP id a108so727292qge.30
	for <yocto@yoctoproject.org>; Fri, 05 Sep 2014 05:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=k44RhUtcYpv24aDXnBOua+zBptS5kqcj6Eh7OVVb+eQ=;
	b=om7Qj6YRXS9SInlIvxz4ahY985gN20V4JJ8k2vttLPHEjVG5pACbeN1c5GBwp/SlYD
	VrlYTWGMkTllMmTvEAaTFWkJ5sUAkEGZuVcbCURgqXNNMdsWdHapJ86YPn4zaG7ANHZC
	d7OntBFd+3IQOI0n+LNK3joEDLuKy0kQXmqdJCndHc0wxs81cvxDXnOveDq8OrxB+9W+
	89c3PjeI1Dfu5w4CqFSqqpR2f/qTdcxOkOsO/xnfC3GPoTrowDZgVd4OMo56BbtvStPk
	tzAhSLhz/fH7DW+X9R4QEyMh9rJJj1kqYeU3YYZZ/lBMdhW7H+QpIiI8fhMWCpvu0Log
	LJ7A==
X-Received: by 10.224.86.5 with SMTP id q5mr18379052qal.36.1409919507276; Fri,
	05 Sep 2014 05:18:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.83 with HTTP; Fri, 5 Sep 2014 05:18:07 -0700 (PDT)
In-Reply-To: <CAPhDKbHAzY4MikG=izTnfs3_wULDghYKhc5pThF5Ft4QbmA-+Q@mail.gmail.com>
References: <CAPhDKbHAzY4MikG=izTnfs3_wULDghYKhc5pThF5Ft4QbmA-+Q@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 5 Sep 2014 09:18:07 -0300
Message-ID: <CAMCfZKH=YLuCt1SDOFuALAJjzgmcx_OAtF7NxMnFDWiYQY0UNQ@mail.gmail.com>
To: Ilya Dmitrichenko <errordeveloper@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: systemd crashes above emergency runlevel
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
X-List-Received-Date: Fri, 05 Sep 2014 12:18:32 -0000
Content-Type: multipart/alternative; boundary=001a11c2c17264b1190502507796

--001a11c2c17264b1190502507796
Content-Type: text/plain; charset=ISO-8859-1

Ilya,

On Fri, Sep 5, 2014 at 8:45 AM, Ilya Dmitrichenko <errordeveloper@gmail.com>
wrote:

> I have built an image form Beaglebone (white) with systemd instead of
> sysvinit and it crashes after loading a few services. I'm suspecting
> it's to do with getty taking over the console tty, but not quite sure.
>
> What I see that the serial port terminal (tried screen and
> miniterm.py) gets disconnected and something occurs to the FTDI serial
> port so OS X kernel doesn't see it again.
>
> I was able to boot with init=/bin/sh and set default.target to
> emergency.target and from there calling `/sbin/init 1` started more
> systemd units and then crashed the same way.
>
> Any ideas?
>

What systemd version you are using?

I have two different problems with systemd (208 - did not tested on newer
versions yet).

1 - The boot was reaching Emergency Mode giving me this kind of message:

systemd-fsck[136]: Config: Superblock last mount time (Mon Jan  6 17:54:44
2014,
systemd-fsck[136]: now = Wed Jan  1 07:14:39 2014) is in the future.
systemd-fsck[136]: Config: UNEXPECTED INCONSISTENCY; RUN fsck MANUALLY.
systemd-fsck[136]: (i.e., without -a or -p options)


This was solved by having the /etc/e2fsck.conf file with this content:

[options]
broken_system_clock = true



2 - The other issue is related with journal log files rotation. It did not
respect the restrictions configured at journal.conf. If you have
consecutive power cycles (without issuing linux shutdown process) the
"currupted" logs is not going to be rotated and it time it boots a new log
file is created. After some time the memory is full and some process cannot
start because of this.

Can you send your boot log?



Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a11c2c17264b1190502507796
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Ilya,</div><div class=3D"gmail_=
extra"><br><div class=3D"gmail_quote">On Fri, Sep 5, 2014 at 8:45 AM, Ilya =
Dmitrichenko <span dir=3D"ltr">&lt;<a href=3D"mailto:errordeveloper@gmail.c=
om" target=3D"_blank">errordeveloper@gmail.com</a>&gt;</span> wrote:<br><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex"><div id=3D":5hf" class=3D"" style=3D"overflow:hidden">I have =
built an image form Beaglebone (white) with systemd instead of<br>
sysvinit and it crashes after loading a few services. I&#39;m suspecting<br=
>
it&#39;s to do with getty taking over the console tty, but not quite sure.<=
br>
<br>
What I see that the serial port terminal (tried screen and<br>
miniterm.py) gets disconnected and something occurs to the FTDI serial<br>
port so OS X kernel doesn&#39;t see it again.<br>
<br>
I was able to boot with init=3D/bin/sh and set default.target to<br>
emergency.target and from there calling `/sbin/init 1` started more<br>
systemd units and then crashed the same way.<br>
<br>
Any ideas?</div></blockquote></div><br>What systemd version you are using?<=
/div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I have=
 two different problems with systemd (208 - did not tested on newer version=
s yet).</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">1 - The boot was reaching Emergency Mode giving me this kind of message:=
=A0</div><div class=3D"gmail_extra"><blockquote style=3D"margin:0px 0px 0px=
 40px;border:none;padding:0px"><div class=3D"gmail_extra"><div class=3D"gma=
il_extra">systemd-fsck[136]: Config: Superblock last mount time (Mon Jan =
=A06 17:54:44 2014,</div><div class=3D"gmail_extra">systemd-fsck[136]: now =
=3D Wed Jan =A01 07:14:39 2014) is in the future.</div><div class=3D"gmail_=
extra">systemd-fsck[136]: Config: UNEXPECTED INCONSISTENCY; RUN fsck MANUAL=
LY.</div><div class=3D"gmail_extra">systemd-fsck[136]: (i.e., without -a or=
 -p options)</div></div></blockquote></div><div class=3D"gmail_extra"><br><=
/div><div class=3D"gmail_extra">This was solved by having the /etc/e2fsck.c=
onf file with this content:</div><div class=3D"gmail_extra"><blockquote sty=
le=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div class=3D"gmail_=
extra"><div class=3D"gmail_extra">[options]</div><div class=3D"gmail_extra"=
>broken_system_clock =3D true</div></div></blockquote></div><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra"><br></div><div class=3D"gm=
ail_extra">2 - The other issue is related with journal log files rotation. =
It did not respect the restrictions configured at journal.conf. If you have=
 consecutive power cycles (without issuing linux shutdown process) the &quo=
t;currupted&quot; logs is not going to be rotated and it time it boots a ne=
w log file is created. After some time the memory is full and some process =
cannot start because of this.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">Can you send your boot log?</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra"><br><br clear=3D"all"><div><d=
iv dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<=
br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.com.=
br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=
=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a><=
br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--001a11c2c17264b1190502507796--
