Return-Path: <jonaskgandersson@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39479E00C7D; Mon, 27 May 2019 02:36:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jonaskgandersson[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.161.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f47.google.com (mail-yw1-f47.google.com
	[209.85.161.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD4F2E0049C
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 02:36:28 -0700 (PDT)
Received: by mail-yw1-f47.google.com with SMTP id b74so6423515ywe.5
	for <yocto@yoctoproject.org>; Mon, 27 May 2019 02:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=00uV0EHVJeoY/RTjvD3RjkR6Q9ZxfjpAFMfW5JQCykY=;
	b=gGj9BUxuES3L12xC+tgZCC3Ivre4i9gtxXjVw/IyZ2xxjJ/Vcvwdv0wP4WNJHJcH83
	hLp+5vQGdH15L9cP65QNV+2M67CSPqOYJ3TT0ca3/Y6DH47oVWGhOB15euf8DXnNrYa9
	Spf7TMRy1+X9+A4r4S7ldwXOsC98iTNMD3dvEofK2GakVcpvPZXRjK8cCbAVCnXFcBgX
	/NXsoC/sUuMdcs/7jMh541ke/Aw5VL4gmNhYoKGggvRkzSZFDhJhrX8xJBMGhxHPJ+/o
	R+XL7JWoEqYSiPQ3RWpMNrBPULXRszahGBCs3viRxxLwaMJwPOFPFEC8iu5KJ/Gxdclf
	IMuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=00uV0EHVJeoY/RTjvD3RjkR6Q9ZxfjpAFMfW5JQCykY=;
	b=CDhoFZSZonxypNJzOjE/xETixFsfq0qHcFUgR1RC64x7OO6P8Kg+yzfHMw5o3+VnUD
	xcO6MYPjz+osZEJhLM/U3sUbicZ/XawheySvyew4RilXtY00CymYMUiiHKgxw4/2KVSP
	0R1+ZoZvFzQmatsLMhm57CrG7v/qNaClTcy5lsYSEor7ZqTovfFeBHlfq4bs1N84j4X9
	d240AE4Jt/ieJ06hGAhHb8rOsE86uU3mukW/QMUmR2ilRpX6k9zEGy/qaGV5CL4Qydi5
	HEcPNUEf6+brjdw5en0lPJDyDESOftzcvfXaW3oyx9xt30Fp/+u3swKUoCoK4JUx75Cf
	68Dg==
X-Gm-Message-State: APjAAAXrr3F24gyz6QMXIJX9n7Iad3CGfvIDtdQeOjaK+LJyxRSyxzrQ
	kfHOt4ZYLXhG+XDc2H7dBT9Uzfcq7Yd+9sztEJ0=
X-Google-Smtp-Source: APXvYqxEJJNzB7T96uegnGxPdkD8SOEGut6ZAlyJh1I0OG5f/zzWquUkUvgS1q1GhIlW5i6k2xvFEYSziD3BhscvhME=
X-Received: by 2002:a81:1d02:: with SMTP id d2mr21121367ywd.361.1558949788185; 
	Mon, 27 May 2019 02:36:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKpuFdc42Q4e=nu7EbQGOFuOtEwN0EVaKwdSkB-o8dE+tZ+VoQ@mail.gmail.com>
	<8b5bbc55-0d92-37f5-924f-084aa2b6a8f8@gmail.com>
In-Reply-To: <8b5bbc55-0d92-37f5-924f-084aa2b6a8f8@gmail.com>
From: Jonas Andersson <jonaskgandersson@gmail.com>
Date: Mon, 27 May 2019 11:36:17 +0200
Message-ID: <CAKpuFdePFRnbETyu0BHyXxHCv4vjjM2fg+-YnvdhCBHa3C+0Wg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: RPI WiFi not loading module
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
X-List-Received-Date: Mon, 27 May 2019 09:36:30 -0000
Content-Type: multipart/alternative; boundary="00000000000058f78e0589db487b"

--00000000000058f78e0589db487b
Content-Type: text/plain; charset="UTF-8"

Hi,

Thanks for the reply.

I have looked in to some of the issues on meta-raspberrypi and found some
good information but nothing to fix my issue, i will post an
issue there as well for the rpi specific problem.

The question i have regarding Yocto is about KERNEL_MODULE_AUTOLOAD, i get
the module added to /etc/modules-load.d/ but cant
understand what service/script that is responsible for loading it.

/ Jonas

Den fre 24 maj 2019 kl 02:03 skrev Khem Raj <raj.khem@gmail.com>:

>
>
> On 5/23/19 2:14 AM, Jonas Andersson wrote:
> > Hi
> >
> > I have problem to get my WiFi working on boot on Raspberry Pi 3.
> >
> > The problem is that wlan0 interface not showing up, if I manually
> > run modprobe brcmfmac it works.
> >
> > To try to "force" the load of brcmfmac i added it to
> > KERNEL_MODULE_AUTOLOAD and that generated an file
> > in /etc/modules-load.d/ -> brcmfmac.conf but it is still not loaded.
> >
> > I use systemd an to my understanding systemd-modules-load.service is
> > handling module auto load, but that file is missing and I cant see how
> > to include it in my build.
> >
> > Building thud version and I have added the following to my image recipe:
> >
> > DISTRO_FEATURES_append = " wifi"
> >
> > IMAGE_INSTALL_append = " iw wpa-supplicant packagegroup-base
> > module-init-tools"
> >
> > IMAGE_INSTALL_append = "\
> >      linux-firmware-rpidistro-bcm43430 \
> >      linux-firmware-rpidistro-bcm43455 \
> >      bluez-firmware-rpidistro-bcm43430a1-hcd \
> >      bluez-firmware-rpidistro-bcm4345c0-hcd \
> >   "
> > Then i have symlinked wpa-supplicant service to load wpa-supplicant.conf
> > file and that work when I manually loads the module.
> >
>
> I wonder if something like this will help you
> https://github.com/YoeDistro/meta-yoe/tree/master/recipes-core/systemd
>
> > Best regards
> > Jonas
> >
>

--00000000000058f78e0589db487b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thanks for the reply.</div><div><br=
></div><div>I have looked in to some of the issues on meta-raspberrypi and =
found some good information but nothing to fix my issue, i will post an</di=
v><div>issue there as well for the rpi specific problem.</div><div><br></di=
v><div>The question i have regarding Yocto is about=C2=A0KERNEL_MODULE_AUTO=
LOAD, i get the module added to /etc/modules-load.d/ but cant</div><div>und=
erstand what service/script that is responsible for loading it.</div><div><=
br></div><div>/ Jonas</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">Den fre 24 maj 2019 kl 02:03 skrev Khem Raj &lt;=
<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt;:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 5/23/19 2:14 AM, Jonas Andersson wrote:<br>
&gt; Hi<br>
&gt; <br>
&gt; I have problem to get my WiFi working on boot on Raspberry Pi 3.<br>
&gt; <br>
&gt; The problem is that wlan0 interface not showing up, if I manually <br>
&gt; run=C2=A0modprobe brcmfmac it works.<br>
&gt; <br>
&gt; To try to &quot;force&quot; the load of brcmfmac i added it to <br>
&gt; KERNEL_MODULE_AUTOLOAD=C2=A0and that generated an file <br>
&gt; in=C2=A0/etc/modules-load.d/ -&gt;=C2=A0brcmfmac.conf but it is still =
not loaded.<br>
&gt; <br>
&gt; I use systemd an to my understanding=C2=A0systemd-modules-load.service=
 is <br>
&gt; handling module auto load, but that file is missing and I cant see how=
 <br>
&gt; to include it in my build.<br>
&gt; <br>
&gt; Building thud version and I have added the following to my image recip=
e:<br>
&gt; <br>
&gt; DISTRO_FEATURES_append =3D &quot; wifi&quot;<br>
&gt; <br>
&gt; IMAGE_INSTALL_append =3D &quot; iw wpa-supplicant packagegroup-base <b=
r>
&gt; module-init-tools&quot;<br>
&gt; <br>
&gt; IMAGE_INSTALL_append =3D &quot;\<br>
&gt;=C2=A0 =C2=A0 =C2=A0 linux-firmware-rpidistro-bcm43430 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 linux-firmware-rpidistro-bcm43455 \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 bluez-firmware-rpidistro-bcm43430a1-hcd \<br>
&gt;=C2=A0 =C2=A0 =C2=A0 bluez-firmware-rpidistro-bcm4345c0-hcd \<br>
&gt;=C2=A0 =C2=A0&quot;<br>
&gt; Then i have symlinked wpa-supplicant service to load wpa-supplicant.co=
nf <br>
&gt; file and that work when I manually loads the module.<br>
&gt; <br>
<br>
I wonder if something like this will help you<br>
<a href=3D"https://github.com/YoeDistro/meta-yoe/tree/master/recipes-core/s=
ystemd" rel=3D"noreferrer" target=3D"_blank">https://github.com/YoeDistro/m=
eta-yoe/tree/master/recipes-core/systemd</a><br>
<br>
&gt; Best regards<br>
&gt; Jonas<br>
&gt; <br>
</blockquote></div>

--00000000000058f78e0589db487b--
