Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com [209.85.221.170])
 by mx.groups.io with SMTP id smtpd.web10.9833.1603276722207281019
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2020 03:38:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oCliQu15;
 spf=pass (domain: gmail.com, ip: 209.85.221.170, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vk1-f170.google.com with SMTP id y10so382094vkl.5
        for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2020 03:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zlKxnRU5G/2Pw3ipUSlDbWXYtHlTn2i/4hBMo5HLUo4=;
        b=oCliQu153lQPsemCQ/VwO5fl0eQi8EgKhj5L+gLlqgw2uJ5y6uR/vrCxeotRgIX09G
         LYHXY2mQ9OPbp8g47WUpV6hwYjmVqefCOpZd+8UUeWpqBsjxp0QbMANN+/C+PFDO3bdw
         fwoFGMqkWvpL1uXrbyZESiEuMvYpdZVwhtJ+P6embBzPVnboMi5yYeEZDF9J/2zxil6g
         W/+JyE7ods8NWOCySqwZNYf+E5baysAiK/ytUAbhR6Mb8GWY4EIuWu1ACvljyYQDAcbY
         elgm6+9h/WnqxbyzWcBiFg5hyovzBFPlZ0frZvuhinHNN1Z19yuprcg0tElMLOvCxM77
         4qCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zlKxnRU5G/2Pw3ipUSlDbWXYtHlTn2i/4hBMo5HLUo4=;
        b=s0HGgSWSzH0DV4RoQto6pWC8Xv1v3R8BxVhHjah1tsjDWu+eoRbytFOKUX6Gn8OoR3
         8bxVrw2CrgtAgFKC2DWXbvRIq//37ZfAQ1JLNCWIGymAWKKi9i4IIyMVKJN/FcP2Tmxq
         s1MOV1ls8FX9cPPwZcbxa0O4DUubtXMkmW52t7Chs+whB1kLEWogKBO8mF7h8wC8uELe
         KTV5NTMWZ47XhsM/mfxAd61voAdth71ju+uzfOzlub8O4B6LK1isjfu9loZpTQP6VO1b
         2mMPdL2ethNtn+u0qyviJQM0iBka7tp4MvdTnlc2Z54uyXvz6bg3I2/lSVJKgM05VPEv
         wyiQ==
X-Gm-Message-State: AOAM531yb4ApDOV4X6LnDDrw+5zX2py1fW4+sHDR7QYKAzCnXCyTF4BU
	8IG+Bnf3FtB8p/N9v/RYaVYRPw776MJQg3plH907IbNx3rb46w==
X-Google-Smtp-Source: ABdhPJwyD+TmE0ojSi4ipvUcvXsfgLYTTD7elxkhqrIzrItnRG0RxmXFX3YDR+OQrHfn2pipK3jQIdmVVXhzxFdVDQI=
X-Received: by 2002:a1f:fc82:: with SMTP id a124mr1154265vki.25.1603276721170;
 Wed, 21 Oct 2020 03:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
 <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com> <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
 <2946109b-fe92-243c-87fb-296c406c1569@optimcloud.com>
In-Reply-To: <2946109b-fe92-243c-87fb-296c406c1569@optimcloud.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Wed, 21 Oct 2020 16:08:29 +0530
Message-ID: <CAJw=dJ-AmoJNsG2xwHdbfu3=tQV7TM8thUUeDAa61SEB3XHnKg@mail.gmail.com>
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: Yocto <yocto@optimcloud.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000712fc205b22bf3d7"

--000000000000712fc205b22bf3d7
Content-Type: text/plain; charset="UTF-8"

Hi team ,
    I am assuming in local.conf we used  DISTRO ?=  "poky"  and DISTRO =
"poky-sota-systemd"   both   thats why we are getting these error or what ?

On Wed, Oct 21, 2020 at 10:30 AM Yocto <yocto@optimcloud.com> wrote:

>
> On 10/20/20 8:06 PM, NIKHIL PATIL wrote:
>
> I changed in local.conf (ostree related stuffs ), and put it for
> compilation , that time i got these error
>
> On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod <randy.macleod@windriver.com>
> wrote:
>
>> On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
>> > Hi team ,
>> >        I am getting continuously dnf error, How we can resolve these .
>>
>> Hi Nikhil,
>>
>> What exact steps did you take before getting this error and
>> what build host are you using?
>>
>> Are you able to build core-image-minimal using oe-core/master
>> and the default local.conf for qemux86-64?
>>
>> ../Randy
>>
>> I can confirm that Ive also seen this trying to build in the Yocto build
> appliance I downloaded yesterday....
>
>
>
> >
>> > core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command
>> >
>> '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
>>
>> > -y -c
>> >
>> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
>>
>> >
>> --setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
>>
>> >
>> --repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>>
>> >
>> --installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
>>
>> >
>> --setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
>>
>> > -x packagegroup-core-apl-extra --nogpgcheck install autoconf-archive
>> dnf
>> > gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
>> > libtcti-device-dev libtcti-device-staticdev libtcti-socket0
>> > libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev
>> > libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
>> > packagegroup-base-extended packagegroup-core-audio-essential
>> > packagegroup-core-boot packagegroup-core-buildessential-extended
>> > packagegroup-core-graphics-essential packagegroup-core-ssh-dropbear
>> > packagegroup-core-tools-testapps packagegroup-core-x11-base
>> > packagegroup-core-x11-sato psplash rpm run-postinsts swig tpm2-abrmd
>> > usb-modeswitch usb-modeswitch-data va-intel wayland weston
>> > weston-examples xinit-env xserver-xorg locale-base-en-us
>> > locale-base-en-gb' returned 1:
>> > Added oe-repo repo from
>> >
>> /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
>> >
>> >
>> >
>> >
>> >
>>
>>
>> --
>> # Randy MacLeod
>> # Wind River Linux
>>
>
>
> 
>
>

--000000000000712fc205b22bf3d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team ,<div>=C2=A0 =C2=A0 I am assuming in local.conf we=
 used=C2=A0 DISTRO ?=3D=C2=A0 &quot;poky&quot;=C2=A0 and DISTRO =3D &quot;p=
oky-sota-systemd&quot;=C2=A0 =C2=A0both=C2=A0 =C2=A0thats why we are gettin=
g these error or what ?</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Wed, Oct 21, 2020 at 10:30 AM Yocto &lt;<=
a href=3D"mailto:yocto@optimcloud.com">yocto@optimcloud.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <p><br>
    </p>
    <div>On 10/20/20 8:06 PM, NIKHIL PATIL
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">I changed in local.conf (ostree related stuffs ),
        and put it for compilation , that time i got these error=C2=A0</di=
v>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 20, 2020 at 6:49
          AM Randy MacLeod &lt;<a href=3D"mailto:randy.macleod@windriver.c=
om" target=3D"_blank">randy.macleod@windriver.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          2020-10-18 6:41 a.m., NIKHIL PATIL wrote:<br>
          &gt; Hi team ,<br>
          &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am getting continuously=C2=A0d=
nf error, How we can
          resolve=C2=A0these .<br>
          <br>
          Hi Nikhil,<br>
          <br>
          What exact steps did you take before getting this error and<br>
          what build host are you using?<br>
          <br>
          Are you able to build core-image-minimal using oe-core/master<br=
>
          and the default local.conf for qemux86-64?<br>
          <br>
          ../Randy<br>
          <br>
        </blockquote>
      </div>
    </blockquote>
    <p>I can confirm that Ive also seen this trying to build in the
      Yocto build appliance I downloaded yesterday....<br>
    </p>
    <p><br>
    </p>
    <p><br>
    </p>
    <blockquote type=3D"cite">
      <div class=3D"gmail_quote">
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
          &gt; <br>
          &gt; core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf.
          Command <br>
          &gt;
&#39;/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-po=
ky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
          <br>
          &gt; -y -c <br>
          &gt;
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-li=
nux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
          <br>
          &gt;
--setopt=3Dreposdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/i=
ntel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
          <br>
          &gt;
--repofrompath=3Doe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/wor=
k/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
          <br>
          &gt;
--installroot=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_c=
orei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
          <br>
          &gt;
--setopt=3Dlogdir=3D/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/int=
el_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
          <br>
          &gt; -x packagegroup-core-apl-extra --nogpgcheck install
          autoconf-archive dnf <br>
          &gt; gstreamer1.0-vaapi iqvlinux jhi kernel-modules
          libtcti-device0 <br>
          &gt; libtcti-device-dev libtcti-device-staticdev
          libtcti-socket0 <br>
          &gt; libtcti-socket-dev libtcti-socket-staticdev libsapi0
          libsapi-dev <br>
          &gt; libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs <br>
          &gt; packagegroup-base-extended
          packagegroup-core-audio-essential <br>
          &gt; packagegroup-core-boot
          packagegroup-core-buildessential-extended <br>
          &gt; packagegroup-core-graphics-essential
          packagegroup-core-ssh-dropbear <br>
          &gt; packagegroup-core-tools-testapps
          packagegroup-core-x11-base <br>
          &gt; packagegroup-core-x11-sato psplash rpm run-postinsts swig
          tpm2-abrmd <br>
          &gt; usb-modeswitch usb-modeswitch-data va-intel wayland
          weston <br>
          &gt; weston-examples xinit-env xserver-xorg locale-base-en-us
          <br>
          &gt; locale-base-en-gb&#39; returned 1:<br>
          &gt; Added oe-repo repo from <br>
          &gt;
/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-li=
nux/core-image-sato/1.0-r0/oe-rootfs-repo<br>
          &gt; <br>
          &gt; <br>
          &gt; <br>
          &gt; <br>
          &gt; <br>
          <br>
          <br>
          -- <br>
          # Randy MacLeod<br>
          # Wind River Linux<br>
        </blockquote>
      </div>
      <br>
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
  </div>

<br>
<br>
<br>
</blockquote></div>

--000000000000712fc205b22bf3d7--
