Return-Path: <erik.boto@pelagicore.com>
Received: from mail-ob0-f169.google.com (mail-ob0-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C41EBE01516
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 03:45:06 -0700 (PDT)
Received: by mail-ob0-f169.google.com with SMTP id up14so11299887obb.28
	for <yocto@yoctoproject.org>; Fri, 12 Jul 2013 03:45:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=YzP6a8tQRyB4Enphs4G25kNoQNVgAgB+KW+LK9wWoII=;
	b=cCm5ixofdCYf5UQJgY1o2X6r6CHb5Q6hQhL0YAV0aGjKGAN31dlm43QbQhICFGF9k9
	ox5etbBIFtw3YlVXSmm/QA/pabGQLO0035VYSeRqG7EwjiGFtBEy4WnJIDS3Pk9PFchI
	rCYplsBtYZUlPw6WsoW8Kr7t7iW5D0phcHxeUZE5AfqXRP6sbH9dAV33tQbSzJlr5KHp
	xAcj5BvAdG9YsUgd9F2MnKAADUzBVIdaHy79ETvaki2O0b3LmXQHbjOIrSfOhfR63GNJ
	Y4wBIj1liicizcah2PBr9jptXIk8hvs8wfj13bZBVN7ZxrFnJEi52SztWBOw2yOnz2R1
	+2Yg==
MIME-Version: 1.0
X-Received: by 10.182.87.73 with SMTP id v9mr35127309obz.90.1373625905540;
	Fri, 12 Jul 2013 03:45:05 -0700 (PDT)
Received: by 10.76.158.197 with HTTP; Fri, 12 Jul 2013 03:45:05 -0700 (PDT)
In-Reply-To: <666645F4EAA9483CB526943CA6FA6428@gmail.com>
References: <666645F4EAA9483CB526943CA6FA6428@gmail.com>
Date: Fri, 12 Jul 2013 12:45:05 +0200
Message-ID: <CA+AhUGxEebNBYp64mBh3TbCrn2_n4GDsi1KB3O_Tk0mpwj7jMQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: jojo <rjiejie@gmail.com>
X-Gm-Message-State: ALoCoQluK8UtSZ2loHnUCPfxqYPfbbLBS9yOPrgLcV4vZVUYZBpoNCvYitgm6grW1hUBevTW15w+
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] how to install pulseaudio completely
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
X-List-Received-Date: Fri, 12 Jul 2013 10:45:10 -0000
Content-Type: multipart/alternative; boundary=089e013cb6e4277f4f04e14e3496

--089e013cb6e4277f4f04e14e3496
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,
On Fri, Jul 12, 2013 at 12:35 PM, jojo <rjiejie@gmail.com> wrote:

> Hi,
> My yocto version/tag is dylan.
>  I have compiled fsl-image-gui to testing the the audio output, but i can
> not find
> anything about for pulseaudio server to start up daemon.
>
> I saw the build code in the path about for
> "build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio/3.0-r0/imag=
e/"
> and it really have built all things of pulseaudio. but when i create the
> fsl-image-gui to start up, i just find "libpulse*" in the
> rootfs.
>
> I think that something wrong with pulseaudio configure so that it do not
> install completely by default.
>

The pulseaudio daemon is packaged as pulseaudio-server, maybe the image
doesn't install that package by default?

Cheers,
Erik Bot=F6


> someone know about that how to install pulseaudio completely ?
>
> Thanks,
>
> - Jojo
>
>
> _______________________________________________
> meta-freescale mailing list
> meta-freescale@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/meta-freescale
>
>

--089e013cb6e4277f4f04e14e3496
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=A0<br><div class=3D"gmail_extra"><div class=3D"gmail_q=
uote">On Fri, Jul 12, 2013 at 12:35 PM, jojo <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rjiejie@gmail.com" target=3D"_blank">rjiejie@gmail.com</a>&gt;</=
span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
                <div>Hi,
                </div><div><span style=3D"white-space:pre-wrap">	</span>My =
yocto version/tag is dylan.</div><div><span style=3D"white-space:pre-wrap">=
	</span></div><div><span style=3D"white-space:pre-wrap">	</span>I have comp=
iled fsl-image-gui to testing the the audio output, but i can not find</div=
>
<div><span style=3D"white-space:pre-wrap">	</span>anything about for pulsea=
udio server to start up daemon.</div><div><br></div><div><span style=3D"whi=
te-space:pre-wrap">	</span>I saw the build code in the path about for &quot=
;build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/pulseaudio/3.0-r0/image/=
&quot;</div>
<div><span style=3D"white-space:pre-wrap">	</span>and it really have built =
all things of pulseaudio. but when i create the fsl-image-gui to start up, =
i just find &quot;libpulse*&quot; in the</div><div><span style=3D"white-spa=
ce:pre-wrap">	</span>rootfs.</div>
<div><br></div><div><span style=3D"white-space:pre-wrap">	</span>I think th=
at something wrong with pulseaudio configure so that it do not install comp=
letely by default.</div></blockquote><div><br></div><div>The pulseaudio dae=
mon is packaged as pulseaudio-server, maybe the image doesn&#39;t install t=
hat package by default?</div>
<div>=A0</div><div>Cheers,=A0</div><div>Erik Bot=F6</div><div><br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><div><br></div><div><span style=3D"white-space:=
pre-wrap">	</span>someone know about that how to install pulseaudio complet=
ely ?</div>

                <div><div><br></div><div>Thanks,</div><div><br></div><div>-=
 Jojo</div><div><br></div></div>
            <br>_______________________________________________<br>
meta-freescale mailing list<br>
<a href=3D"mailto:meta-freescale@yoctoproject.org">meta-freescale@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/meta-freescale" target=
=3D"_blank">https://lists.yoctoproject.org/listinfo/meta-freescale</a><br>
<br></blockquote></div><br></div></div>

--089e013cb6e4277f4f04e14e3496--
