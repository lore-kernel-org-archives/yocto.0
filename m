Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2923E0027C
	for <yocto@yoctoproject.org>; Mon,  6 May 2013 07:44:27 -0700 (PDT)
Received: by mail-oa0-f50.google.com with SMTP id l10so1638042oag.37
	for <yocto@yoctoproject.org>; Mon, 06 May 2013 07:44:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=FBJ//ClM1NCJWUqwp+ORvphZpFiOGmj+IsHMmKbaT/A=;
	b=o76jbNRQFIBdaN410RZXBZvcEcMAJONgdNEdHlcQHFVQ6R3MJjSN0t/0zpMifUHeuj
	xiIB50KhNUAy1Rw7517IgkWjdSyUozxLvKq18Cq7kFXZEYD/utSWP9aGSegA08FPJB5L
	2ZzzuT6rcUzdS/nySfNVdgT4MKyp/7tD4QtNO8ZQso/NVOtfrU/1/11067lXsznGqf1i
	s+/r1v5p7ocFMj/vCHMfeqFsRyqm3Movb8cwzg9bo6KbxZmO1nsymchdliFlUtIyn8nh
	AQrUc+05FbIn2ZTLlAcmwzWTVphrl2sJmwU0eXyOja9+JP07A97tqrNzQvbi9M/nz81K
	0p7A==
X-Received: by 10.182.129.36 with SMTP id nt4mr5557311obb.62.1367851467032;
	Mon, 06 May 2013 07:44:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.35.193 with HTTP; Mon, 6 May 2013 07:44:05 -0700 (PDT)
In-Reply-To: <26FE63BB-04B6-4226-8921-FE6D4DA9029F@gmail.com>
References: <26FE63BB-04B6-4226-8921-FE6D4DA9029F@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 6 May 2013 16:44:05 +0200
Message-ID: <CAP71WjzcTuAbHemvAP0WPPyRJmFYetQmXHTRT=NdQak2bzQ1gw@mail.gmail.com>
To: jojo <rjiejie@gmail.com>
X-Gm-Message-State: ALoCoQlvuvYZ/L07AyQJkMKyy1IZGdKABZYBXYIXhWl21eStiWij7EW2nvfhQeojbR7Vyu2XHClw
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: how to enable DFB with cairo
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
X-List-Received-Date: Mon, 06 May 2013 14:44:28 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1fff6cca9a704dc0dbc86

--e89a8fb1fff6cca9a704dc0dbc86
Content-Type: text/plain; charset=ISO-8859-1

On Mon, May 6, 2013 at 10:08 AM, jojo <rjiejie@gmail.com> wrote:

>
> I am not familiar with yocto project, and i want to enable DFB render
> backend in cairo,
>
> du to the patches "
> http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/013037.html
> ",
>
> i know about first need to disable X11 feature in my system by default,
> but i do not know about how to disable X11,
>
> Someone can point me out any clue to enable DFB with cairo in yocto ?
>

hi. you should check meta-yocto/conf/local.conf.sample.extended file, I
think that might be of interest to you:

# If you want to get an image based on directfb without x11, Please copy
this variable to build/conf/local.conf

#DISTRO_FEATURES = "alsa argp bluetooth ext2 irda largefile pcmcia
usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb
${DISTRO_FEATURES_LIBC}"

I, too, am using an X11-less image using these recommendations.

--e89a8fb1fff6cca9a704dc0dbc86
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, May 6, 2013 at 10:08 AM, jojo <span dir=3D"ltr">&lt;<a href=3D"mail=
to:rjiejie@gmail.com" target=3D"_blank">rjiejie@gmail.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-color:rgb(204,204,204);border-left-style=
:solid;padding-left:1ex">

<div><br></div><div><span style=3D"white-space:pre-wrap">	</span>I am not f=
amiliar with yocto project, and i want to enable DFB render backend in cair=
o,</div><div><br></div><div><span style=3D"white-space:pre-wrap">	</span>du=
 to the patches &quot;<a href=3D"http://lists.linuxtogo.org/pipermail/opene=
mbedded-core/2011-November/013037.html" target=3D"_blank">http://lists.linu=
xtogo.org/pipermail/openembedded-core/2011-November/013037.html</a>&quot;,<=
/div>

<div><br></div><div><span style=3D"white-space:pre-wrap">	</span>i know abo=
ut first need to disable X11 feature in my system by default, but i do not =
know about how to disable X11,</div><div><br></div><div><span style=3D"whit=
e-space:pre-wrap">	</span>Someone=A0can point me out any clue to enable DFB=
 with cairo in yocto ?=A0</div>

<div>
<span style=3D"border-collapse:separate;border-spacing:0px"><span style=3D"=
border-spacing:0px;text-indent:0px;letter-spacing:normal;font-variant:norma=
l;text-align:-webkit-auto;font-style:normal;font-weight:normal;line-height:=
normal;border-collapse:separate;text-transform:none;font-size:medium;white-=
space:normal;font-family:&#39;Heiti SC&#39;;word-spacing:0px"><div style=3D=
"word-wrap:break-word">

<div><div></div></div></div></span></span></div></blockquote></div><br>hi. =
you should check meta-yocto/conf/local.conf.sample.extended file, I think t=
hat might be of interest to you:</div><div class=3D"gmail_extra"><div class=
=3D"gmail_extra">

<br></div><div class=3D"gmail_extra"># If you want to get an image based on=
 directfb without x11, Please copy this variable to build/conf/local.conf =
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><div class=3D"=
gmail_extra">

#DISTRO_FEATURES =3D &quot;alsa argp bluetooth ext2 irda largefile pcmcia u=
sbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb ${DISTRO_FEATURES_=
LIBC}&quot; =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=A0</div><di=
v><br></div><div style>I, too, am using an X11-less image using these recom=
mendations.</div>

<div style><br></div><div style><br></div></div><div class=3D"gmail_extra">=
<br></div></div>

--e89a8fb1fff6cca9a704dc0dbc86--
