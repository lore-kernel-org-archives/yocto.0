Return-Path: <rjiejie@gmail.com>
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0D92EE01358;
	Thu, 12 Sep 2013 03:08:05 -0700 (PDT)
Received: by mail-pa0-f51.google.com with SMTP id lf1so878792pab.38
	for <multiple recipients>; Thu, 12 Sep 2013 03:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject
	:mime-version:content-type;
	bh=h8/LJEINrc8RUNOiPLZZdWGKUFPdVSKlrEUlqT9rU6U=;
	b=sYlL0XZLxEv2l29TPIVKFb0i1fCqOpEFfck3FEb+FJ5A507hlMkyY+K6LuiQNVmJjh
	CHJMin4UZvRO4FJ7wc+vpkXAGYb3rxrKZbgWO4OP2PBOnZUvukt+V4DnrhF37BqpRdI0
	Gyne13hliKP0U1YyMNl6pFpz5UWowYOji0F9WK3Thx47uXt/46sTtM53cgCmzBNM7jkP
	sBdqpJMcGLjfvf2Wxu86GaS/Oa7QLaOzdxV7c5YBgJxwee/DL6LfLFGcsr7IkYmg1GA2
	DA5ifzgyHfpIMiUFFthMJPwxRszoW4DvdxOgmF6/Aht4GpA3HZmkOJKYMcjve8GjOcDo
	8mrA==
X-Received: by 10.66.192.8 with SMTP id hc8mr8554275pac.66.1378980485363;
	Thu, 12 Sep 2013 03:08:05 -0700 (PDT)
Received: from [192.168.10.119] ([115.236.28.243])
	by mx.google.com with ESMTPSA id sz3sm3800027pbc.5.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 12 Sep 2013 03:08:02 -0700 (PDT)
Date: Thu, 12 Sep 2013 18:07:56 +0800
From: jojo <rjiejie@gmail.com>
To: =?utf-8?Q?Erik_Bot=C3=B6?= <erik.boto@pelagicore.com>
Message-ID: <B009182FF2944A11AD49E18C5954CCBE@gmail.com>
In-Reply-To: <8AFAD819783F4C2CB04F1D5A9CA05C48@gmail.com>
References: <666645F4EAA9483CB526943CA6FA6428@gmail.com>
	<CA+AhUGxEebNBYp64mBh3TbCrn2_n4GDsi1KB3O_Tk0mpwj7jMQ@mail.gmail.com>
	<8AFAD819783F4C2CB04F1D5A9CA05C48@gmail.com>
X-Mailer: sparrow 1.6.4 (build 1176)
MIME-Version: 1.0
Cc: "=?utf-8?Q?meta-freescale=40yoctoproject.org?="
	<meta-freescale@yoctoproject.org>,
	"=?utf-8?Q?yocto=40yoctoproject.org?=" <yocto@yoctoproject.org>
Subject: =?UTF-8?B?5Zue5aSN77yaIG1ldGEtZnJlZXNjYWxlXSBob3cgdG8gaW5zdGFsbCBwdWxzZWF1ZGlvIGNvbXBsZXRlbHk=?=
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
X-List-Received-Date: Thu, 12 Sep 2013 10:08:06 -0000
Content-Type: multipart/alternative; boundary="5231927c_22221a70_209"

--5231927c_22221a70_209
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hi,
I installed pulse audio server in IMX6QSD of =46SL, but there is no outpu=
t of audio with HDMI :(

how to track the log of the pulse audio =3F =20

Thanks,

- Jojo


=E5=9C=A8 2013=E5=B9=B47=E6=9C=8816=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=8C=EF=
=BC=8C=E4=B8=8B=E5=8D=8811:32=EF=BC=8Cjojo =E5=86=99=E9=81=93=EF=BC=9A

> Hi, =20
> Ok & i will have a try, thanks for your reply :)
> =20
> Thanks,
> =20
> - Jojo
> =20
> =20
> =E5=9C=A8 2013=E5=B9=B47=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94=
=EF=BC=8C=E4=B8=8B=E5=8D=886:45=EF=BC=8CErik Bot=C3=B6 =E5=86=99=E9=81=93=
=EF=BC=9A
> =20
> > Hi, =20
> > On =46ri, Jul 12, 2013 at 12:35 PM, jojo <rjiejie=40gmail.com (mailto=
:rjiejie=40gmail.com)> wrote:
> > > Hi, =20
> > > My yocto version/tag is dylan.
> > > =20
> > > I have compiled fsl-image-gui to testing the the audio output, but =
i can not find
> > > anything about for pulseaudio server to start up daemon.
> > > =20
> > > I saw the build code in the path about for =22build/tmp/work/armv7a=
-vfp-neon-poky-linux-gnueabi/pulseaudio/3.0-r0/image/=22 =20
> > > and it really have built all things of pulseaudio. but when i creat=
e the fsl-image-gui to start up, i just find =22libpulse*=22 in the
> > > rootfs.
> > > =20
> > > I think that something wrong with pulseaudio configure so that it d=
o not install completely by default.
> > =20
> > The pulseaudio daemon is packaged as pulseaudio-server, maybe the ima=
ge doesn't install that package by default=3F =20
> >  =20
> > Cheers, =20
> > Erik Bot=C3=B6
> > =20
> > > =20
> > > someone know about that how to install pulseaudio completely =3F =20
> > > =20
> > > Thanks,
> > > =20
> > > - Jojo
> > > =20
> > > =20
> > > =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
> > > meta-freescale mailing list
> > > meta-freescale=40yoctoproject.org (mailto:meta-freescale=40yoctopro=
ject.org)
> > > https://lists.yoctoproject.org/listinfo/meta-freescale
> > > =20
> > =20
> =20


--5231927c_22221a70_209
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline


                <div>
                    Hi,</div><div><span class=3D=22Apple-tab-span=22 styl=
e=3D=22white-space:pre=22>	</span>I installed pulse audio server in IMX6Q=
SD of =46SL, but there is no output of audio with HDMI :(</div><div><br><=
/div><div><span class=3D=22Apple-tab-span=22 style=3D=22white-space:pre=22=
>	</span>how to track the log of the pulse audio =3F</div>
                <div><div><br></div><div>Thanks,</div><div><br></div><div=
>- Jojo</div><div><br></div></div>
                =20
                <p style=3D=22color: =23A0A0A8;=22>=E5=9C=A8 2013=E5=B9=B4=
7=E6=9C=8816=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=8C=EF=BC=8C=E4=B8=8B=E5=8D=88=
11:32=EF=BC=8Cjojo =E5=86=99=E9=81=93=EF=BC=9A</p>
                <blockquote type=3D=22cite=22 style=3D=22border-left-styl=
e:solid;border-width:1px;margin-left:0px;padding-left:10px;=22>
                    <span><div><div>
                <div>Hi,
                </div><div><span style=3D=22white-space:pre=22>	</span>Ok=
 &amp; i will have a try, thanks for your reply :)</div>
                <div><div><br></div><div>Thanks,</div><div><br></div><div=
>- Jojo</div><div><br></div></div>
                 =20
                <p style=3D=22color: =23A0A0A8;=22>=E5=9C=A8 2013=E5=B9=B4=
7=E6=9C=8812=E6=97=A5=E6=98=9F=E6=9C=9F=E4=BA=94=EF=BC=8C=E4=B8=8B=E5=8D=88=
6:45=EF=BC=8CErik Bot=C3=B6 =E5=86=99=E9=81=93=EF=BC=9A</p><blockquote ty=
pe=3D=22cite=22><div>
                    <span><div><div><div dir=3D=22ltr=22>Hi,&nbsp;<br><di=
v><div>On =46ri, Jul 12, 2013 at 12:35 PM, jojo <span dir=3D=22ltr=22>&lt=
;<a href=3D=22mailto:rjiejie=40gmail.com=22 target=3D=22=5Fblank=22>rjiej=
ie=40gmail.com</a>&gt;</span> wrote:<br><blockquote type=3D=22cite=22><di=
v>
                <div>Hi,
                </div><div><span style=3D=22white-space:pre-wrap=22>	</sp=
an>My yocto version/tag is dylan.</div><div><span style=3D=22white-space:=
pre-wrap=22>	</span></div><div><span style=3D=22white-space:pre-wrap=22>	=
</span>I have compiled fsl-image-gui to testing the the audio output, but=
 i can not find</div>
<div><span style=3D=22white-space:pre-wrap=22>	</span>anything about for =
pulseaudio server to start up daemon.</div><div><br></div><div><span styl=
e=3D=22white-space:pre-wrap=22>	</span>I saw the build code in the path a=
bout for =22build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio/=
3.0-r0/image/=22</div>
<div><span style=3D=22white-space:pre-wrap=22>	</span>and it really have =
built all things of pulseaudio. but when i create the fsl-image-gui to st=
art up, i just find =22libpulse*=22 in the</div><div><span style=3D=22whi=
te-space:pre-wrap=22>	</span>rootfs.</div>
<div><br></div><div><span style=3D=22white-space:pre-wrap=22>	</span>I th=
ink that something wrong with pulseaudio configure so that it do not inst=
all completely by default.</div></div></blockquote><div><br></div><div>Th=
e pulseaudio daemon is packaged as pulseaudio-server, maybe the image doe=
sn't install that package by default=3F</div>
<div>&nbsp;</div><div>Cheers,&nbsp;</div><div>Erik Bot=C3=B6</div><div><b=
r></div><blockquote type=3D=22cite=22><div><div><br></div><div><span styl=
e=3D=22white-space:pre-wrap=22>	</span>someone know about that how to ins=
tall pulseaudio completely =3F</div>

                <div><div><br></div><div>Thanks,</div><div><br></div><div=
>- Jojo</div><div><br></div></div>
            <br>=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F<br>
meta-freescale mailing list<br>
<a href=3D=22mailto:meta-freescale=40yoctoproject.org=22>meta-freescale=40=
yoctoproject.org</a><br>
<a href=3D=22https://lists.yoctoproject.org/listinfo/meta-freescale=22 ta=
rget=3D=22=5Fblank=22>https://lists.yoctoproject.org/listinfo/meta-freesc=
ale</a><br>
<br></div></blockquote></div><br></div></div>
</div></div></span>
                 =20
                 =20
                 =20
                 =20
                </div></blockquote><div>
                    <br>
                </div>
            </div></div></span>
                =20
                =20
                =20
                =20
                </blockquote>
                =20
                <div>
                    <br>
                </div>
            

--5231927c_22221a70_209--
