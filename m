Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com [209.85.217.54])
 by mx.groups.io with SMTP id smtpd.web10.7010.1603256001912821087
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 21:53:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kI5zhR7j;
 spf=pass (domain: gmail.com, ip: 209.85.217.54, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f54.google.com with SMTP id n18so145541vsl.2;
        Tue, 20 Oct 2020 21:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=arKtjywXJ7BU/LLPs5CFEdRoZvRWyhBk+wUjiRA1+LU=;
        b=kI5zhR7jFE59vURz8+EUIFQNW89VeOe6sKl36j+6Rgu0aSF52TRewKrNEqe++i9TPw
         sJvymf2xzs5+gle5MFaIOL8C11SxktTHrungyTJ7U6wbJ1D6FBbkhtGH+ByQVHQy/fKw
         Aoitk4iHoqkG6mTb1IKyrRKA8iJyJ2UilZr/zYKAeyp6bINzrbZeGjVAjm3DHkDQeU7O
         BodZ2WddaYpP6Hm8u6v98RCv9rNJzPxRgbsgfCjE8Js1RJ4gJDglTzEEQGHckqJpsREe
         c6Ms6vcHwVYZLrXbT14Dk4xBPGWB679tLuu/cUsVyItcCoUGyBDi2ROsGXTQSJo4NfHj
         xZjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=arKtjywXJ7BU/LLPs5CFEdRoZvRWyhBk+wUjiRA1+LU=;
        b=ZYO2fYAaMUvJC2k9LGvyCpLgGJiLJt9H4rNjJTvGJDwIVjYUf0tXNEk8YT+hSH0Hcw
         ZAnB64d//dstIF0ZQvpdJLBYOfUC5pYJ0hIAnDon6iQlZN3HFqHt+ovlBxAfOuG+/NH0
         oQG7P5Sg50XKcwVurbSXsKKNlybRBfeCI8MG68VQUrPdcfmwrc1RdCklvSDJt0b2YMa7
         W9W1jjEJ3hu6BABBlFdrtNas7ORqHC39OzPWe4mxy0iPjQrACdcOA2ogy20HOqMS4HgP
         c4vGKa3JX2Snp8+iOR2/d0E8Ys76yfqkdZVQdRSU49p+e2j2Sq3QREyggmS57tnA9YwT
         n0sg==
X-Gm-Message-State: AOAM530k1Qv1f3C581Z0wlFrqomtjMcUAJlgcqp9EUAsqSV+Fctubpdv
	uRLbxVTGXbzxEn/cDDuuNJwoOPDeIDmAcRUZ7HQ=
X-Google-Smtp-Source: ABdhPJzQJKEdDjt/qI9XgZVPiyIJ0cYPHSxN47OI0Nx6BSjHLfDfISURHOrgiGETzysZbFhU88eHUkzshQAZAivYjCs=
X-Received: by 2002:a67:b405:: with SMTP id x5mr569812vsl.4.1603256000896;
 Tue, 20 Oct 2020 21:53:20 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ8rCUx1SOe4ai-cVs3BPaS8MePVw+Uh967ZOeaDoWXm5g@mail.gmail.com>
 <b1644126-1fe8-764b-6ff9-51e25bde59ec@windriver.com> <CAJw=dJ_QWnF3bnKCWEuW8PrX32c2nXOdbnA1rBD=Ah55QvpjEg@mail.gmail.com>
 <85b4cc10-5a6f-ead8-1052-88bb70dfb999@windriver.com>
In-Reply-To: <85b4cc10-5a6f-ead8-1052-88bb70dfb999@windriver.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Wed, 21 Oct 2020 10:23:09 +0530
Message-ID: <CAJw=dJ9Zheki28nCzTkrUiEMkshA2MMJy+3U4L9uTBS66-j3FQ@mail.gmail.com>
Subject: Re: [yocto] dnf error coming while compiling core-image-sato image.
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
X-Groupsio-MsgNum: 51142
Content-Type: multipart/mixed; boundary="0000000000006b7f3a05b227200d"

--0000000000006b7f3a05b227200d
Content-Type: multipart/alternative; boundary="0000000000006b7f3705b227200b"

--0000000000006b7f3705b227200b
Content-Type: text/plain; charset="UTF-8"

Hi team,
    I am not able compile a core-image-minimal also. same issue facing here.
   PFA (local.conf) .

On Tue, Oct 20, 2020 at 7:50 PM Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2020-10-20 9:06 a.m., NIKHIL PATIL wrote:
> > I changed in local.conf (ostree related stuffs ), and put it for
> > compilation , that time i got these error
>
> Hi Nikhil,
>
> We encourage people to avoid top-posting so that discussions are
> easier to read:
>
>
> https://wiki.yoctoproject.org/wiki/Community_Guidelines#Mailing_List_Guidelines
>
> Your description doesn't enable anyone else to reproduce what you are
> doing. What git repos (oe-core/poky/bitbake/...) are you using and
> what commit is at the HEAD of each?
>
> You have no doubt sourced the oe-init-build-env file, otherwise bitbake
> wouldn't work. Can you do that again and send either your full
> conf/local.conf file or the lines that you added.
>
>
> You might read:
>   https://wiki.yoctoproject.org/wiki/Bug_reporting_and_Information_levels
> It's aimed at people opening bugs in the YP Bugzilla but the same rules
> apply to email asking for help.
>
> >
> > On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod
> > <randy.macleod@windriver.com <mailto:randy.macleod@windriver.com>>
> wrote:
> >
> >     On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:
> >      > Hi team ,
> >      >        I am getting continuously dnf error, How we can
> >     resolve these .
> >
> >     Hi Nikhil,
> >
> >     What exact steps did you take before getting this error and
> >     what build host are you using?
> >
> >     Are you able to build core-image-minimal using oe-core/master
> >     and the default local.conf for qemux86-64?
>
> Please confirm that you are able to build core-image-minimal so
> that people understand your level of experience when trying to help you.
>
> ../Randy
>
> >
> >     ../Randy
> >
> >      >
> >      > core-image-sato-1.0-r0 do_rootfs: Could not invoke dnf. Command
> >      >
> >
>  '/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-native/usr/bin/dnf
> >
> >      > -y -c
> >      >
> >
>  /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf
> >
> >      >
> >
>  --setopt=reposdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/yum.repos.d
> >
> >      >
> >
>  --repofrompath=oe-repo,/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
> >
> >      >
> >
>  --installroot=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs
> >
> >      >
> >
>  --setopt=logdir=/data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp
> >
> >      > -x packagegroup-core-apl-extra --nogpgcheck install
> >     autoconf-archive dnf
> >      > gstreamer1.0-vaapi iqvlinux jhi kernel-modules libtcti-device0
> >      > libtcti-device-dev libtcti-device-staticdev libtcti-socket0
> >      > libtcti-socket-dev libtcti-socket-staticdev libsapi0 libsapi-dev
> >      > libsapi-staticdev libva mesa-glxinfo libmraa1 nodejs
> >      > packagegroup-base-extended packagegroup-core-audio-essential
> >      > packagegroup-core-boot packagegroup-core-buildessential-extended
> >      > packagegroup-core-graphics-essential
> packagegroup-core-ssh-dropbear
> >      > packagegroup-core-tools-testapps packagegroup-core-x11-base
> >      > packagegroup-core-x11-sato psplash rpm run-postinsts swig
> tpm2-abrmd
> >      > usb-modeswitch usb-modeswitch-data va-intel wayland weston
> >      > weston-examples xinit-env xserver-xorg locale-base-en-us
> >      > locale-base-en-gb' returned 1:
> >      > Added oe-repo repo from
> >      >
> >
>  /data/pradeep/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo
> >      >
> >      >
> >      >
> >      > 
> >      >
> >
> >
> >     --
> >     # Randy MacLeod
> >     # Wind River Linux
> >
>
>
> --
> # Randy MacLeod
> # Wind River Linux
>

--0000000000006b7f3705b227200b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi team,<div>=C2=A0 =C2=A0 I am not able compile a core-im=
age-minimal also. same issue facing here.</div><div>=C2=A0 =C2=A0PFA (local=
.conf) .=C2=A0 =C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Tue, Oct 20, 2020 at 7:50 PM Randy MacLeod &l=
t;<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
>On 2020-10-20 9:06 a.m., NIKHIL PATIL wrote:<br>
&gt; I changed in local.conf (ostree related stuffs ), and put it for <br>
&gt; compilation , that time i got these error<br>
<br>
Hi Nikhil,<br>
<br>
We encourage people to avoid top-posting so that discussions are<br>
easier to read:<br>
<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Community_Guidelines#Mailing=
_List_Guidelines" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctopr=
oject.org/wiki/Community_Guidelines#Mailing_List_Guidelines</a><br>
<br>
Your description doesn&#39;t enable anyone else to reproduce what you are<=
br>
doing. What git repos (oe-core/poky/bitbake/...) are you using and<br>
what commit is at the HEAD of each?<br>
<br>
You have no doubt sourced the oe-init-build-env file, otherwise bitbake<br=
>
wouldn&#39;t work. Can you do that again and send either your full<br>
conf/local.conf file or the lines that you added.<br>
<br>
<br>
You might read:<br>
=C2=A0 <a href=3D"https://wiki.yoctoproject.org/wiki/Bug_reporting_and_Inf=
ormation_levels" rel=3D"noreferrer" target=3D"_blank">https://wiki.yoctopro=
ject.org/wiki/Bug_reporting_and_Information_levels</a><br>
It&#39;s aimed at people opening bugs in the YP Bugzilla but the same rule=
s<br>
apply to email asking for help.<br>
<br>
&gt; <br>
&gt; On Tue, Oct 20, 2020 at 6:49 AM Randy MacLeod <br>
&gt; &lt;<a href=3D"mailto:randy.macleod@windriver.com" target=3D"_blank">=
randy.macleod@windriver.com</a> &lt;mailto:<a href=3D"mailto:randy.macleod@=
windriver.com" target=3D"_blank">randy.macleod@windriver.com</a>&gt;&gt; wr=
ote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0On 2020-10-18 6:41 a.m., NIKHIL PATIL wrote:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Hi team ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 I am getting cont=
inuously=C2=A0dnf error, How we can<br>
&gt;=C2=A0 =C2=A0 =C2=A0resolve=C2=A0these .<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi Nikhil,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0What exact steps did you take before getting this =
error and<br>
&gt;=C2=A0 =C2=A0 =C2=A0what build host are you using?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Are you able to build core-image-minimal using oe-=
core/master<br>
&gt;=C2=A0 =C2=A0 =C2=A0and the default local.conf for qemux86-64?<br>
<br>
Please confirm that you are able to build core-image-minimal so<br>
that people understand your level of experience when trying to help you.<b=
r>
<br>
../Randy<br>
<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0../Randy<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; core-image-sato-1.0-r0 do_rootfs: Could not =
invoke dnf. Command<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0&#39;/data/pradeep/inti_dmsv/yocto_build/build/tmp=
/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/recipe-sysroot-nati=
ve/usr/bin/dnf<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -y -c<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0/data/pradeep/inti_dmsv/yocto_build/build/tmp/work=
/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs/etc/dnf/dnf.conf<=
br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--setopt=3Dreposdir=3D/data/pradeep/inti_dmsv/yoct=
o_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/ro=
otfs/etc/yum.repos.d<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--repofrompath=3Doe-repo,/data/pradeep/inti_dmsv/y=
octo_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0=
/oe-rootfs-repo<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--installroot=3D/data/pradeep/inti_dmsv/yocto_buil=
d/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/rootfs<b=
r>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0--setopt=3Dlogdir=3D/data/pradeep/inti_dmsv/yocto_=
build/build/tmp/work/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/temp=
<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; -x packagegroup-core-apl-extra --nogpgcheck =
install<br>
&gt;=C2=A0 =C2=A0 =C2=A0autoconf-archive dnf<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; gstreamer1.0-vaapi iqvlinux jhi kernel-modul=
es libtcti-device0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; libtcti-device-dev libtcti-device-staticdev =
libtcti-socket0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; libtcti-socket-dev libtcti-socket-staticdev =
libsapi0 libsapi-dev<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; libsapi-staticdev libva mesa-glxinfo libmraa=
1 nodejs<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-base-extended packagegroup-core=
-audio-essential<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-core-boot packagegroup-core-bui=
ldessential-extended<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-core-graphics-essential package=
group-core-ssh-dropbear<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-core-tools-testapps packagegrou=
p-core-x11-base<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; packagegroup-core-x11-sato psplash rpm run-p=
ostinsts swig tpm2-abrmd<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; usb-modeswitch usb-modeswitch-data va-intel =
wayland weston<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; weston-examples xinit-env xserver-xorg local=
e-base-en-us<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; locale-base-en-gb&#39; returned 1:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; Added oe-repo repo from<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0/data/pradeep/inti_dmsv/yocto_build/build/tmp/work=
/intel_corei7_64-poky-linux/core-image-sato/1.0-r0/oe-rootfs-repo<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 &gt;<br>
&gt; <br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0-- <br>
&gt;=C2=A0 =C2=A0 =C2=A0# Randy MacLeod<br>
&gt;=C2=A0 =C2=A0 =C2=A0# Wind River Linux<br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</blockquote></div>

--0000000000006b7f3705b227200b--

--0000000000006b7f3a05b227200d
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_kgix675p0>
X-Attachment-Id: f_kgix675p0

CiMgVGhpcyBmaWxlIGlzIHlvdXIgbG9jYWwgY29uZmlndXJhdGlvbiBmaWxlIGFuZCBpcyB3aGVy
ZSBhbGwgbG9jYWwgdXNlciBzZXR0aW5ncwojIGFyZSBwbGFjZWQuIFRoZSBjb21tZW50cyBpbiB0
aGlzIGZpbGUgZ2l2ZSBzb21lIGd1aWRlIHRvIHRoZSBvcHRpb25zIGEgbmV3IHVzZXIKIyB0byB0
aGUgc3lzdGVtIG1pZ2h0IHdhbnQgdG8gY2hhbmdlIGJ1dCBwcmV0dHkgbXVjaCBhbnkgY29uZmln
dXJhdGlvbiBvcHRpb24gY2FuCiMgYmUgc2V0IGluIHRoaXMgZmlsZS4gTW9yZSBhZHZlbnR1cm91
cyB1c2VycyBjYW4gbG9vayBhdCBsb2NhbC5jb25mLmV4dGVuZGVkCiMgd2hpY2ggY29udGFpbnMg
b3RoZXIgZXhhbXBsZXMgb2YgY29uZmlndXJhdGlvbiB3aGljaCBjYW4gYmUgcGxhY2VkIGluIHRo
aXMgZmlsZQojIGJ1dCBuZXcgdXNlcnMgbGlrZWx5IHdvbid0IG5lZWQgYW55IG9mIHRoZW0gaW5p
dGlhbGx5LgojCiMgTGluZXMgc3RhcnRpbmcgd2l0aCB0aGUgJyMnIGNoYXJhY3RlciBhcmUgY29t
bWVudGVkIG91dCBhbmQgaW4gc29tZSBjYXNlcyB0aGUKIyBkZWZhdWx0IHZhbHVlcyBhcmUgcHJv
dmlkZWQgYXMgY29tbWVudHMgdG8gc2hvdyBwZW9wbGUgZXhhbXBsZSBzeW50YXguIEVuYWJsaW5n
CiMgdGhlIG9wdGlvbiBpcyBhIHF1ZXN0aW9uIG9mIHJlbW92aW5nIHRoZSAjIGNoYXJhY3RlciBh
bmQgbWFraW5nIGFueSBjaGFuZ2UgdG8gdGhlCiMgdmFyaWFibGUgYXMgcmVxdWlyZWQuCgojCiMg
TWFjaGluZSBTZWxlY3Rpb24KIwojIFRoaXMgc2V0cyB0aGUgZGVmYXVsdCBtYWNoaW5lIHRvIGJl
IGludGVsLWNvcmVpNy02NCBpZiBubyBvdGhlciBtYWNoaW5lIGlzIHNlbGVjdGVkOgpNQUNISU5F
ID0gImludGVsLWNvcmVpNy02NCIKCiMgVGhpcyBzZXQgdGhlIGRlZmF1bHQga2VybmVsIHRvIGxp
bnV4LWludGVsIHZlcnNpb24gNC4xNCBMVFMKUFJFRkVSUkVEX1BST1ZJREVSX3ZpcnR1YWwva2Vy
bmVsID0gImxpbnV4LWludGVsIgpQUkVGRVJSRURfVkVSU0lPTl9saW51eC1pbnRlbCA9ICI0LjE0
JSIKCiMKIyBMZWFmIEhpbGwgQlNQIHNwZWNpZmljIHNldHRpbmdzCiMKIyBUaGlzIHNldHMgQlNQ
X1NVQlRZUEUgdG8gbGVhZmhpbGwuCiMgVGhpcyBzZXR0aW5nIGlzIG1lYW50IGZvciBCaXRiYWtl
IHRvIHB1bGwgdGhlIGNvcnJlY3Qgc2V0IG9mCiMga2VybmVsIGNvbmZpZyBmcmFnbWVudHMgaW4g
eW9jdG8ta2VybmVsLWNhY2hlLgojCiMgSXQgaXMgbm90IHJlY29tbWVuZCB0byByZW1vdmUgaWYg
eW91ciB0YXJnZXQgcGxhdGZvcm0gaXMKIyBiYXNlZCBvbiBJbnRlbCBBdG9tIEUzOTAwIFNvQyBG
YW1pbHkuCkJTUF9TVUJUWVBFID0gImxlYWZoaWxsIgoKI0V4Y2x1ZGUgcGlnbGl0LCBsdHAgYW5k
IG1lc2EtZGVtb3MgcGFja2FnZXMKUEFDS0FHRV9FWENMVURFID0gInBhY2thZ2Vncm91cC1jb3Jl
LWFwbC1leHRyYSIKCiMKIyBBcG9sbG8gTGFrZSBZb2N0byBCU1Agc3VwcG9ydHMgZGlmZmVyZW50
IEF1ZGlvIGZlYXR1cmVzLAojIGkuZS4gbGVnYWN5IEhELUF1ZGlvLCBDQVZTIEhELUF1ZGlvLCBh
bmQgQ0FWUyBTU1AgQXVkaW8gY29kZWMgc3VwcG9ydC4KIwojIEJ5IGRlZmF1bHQsIHRoaXMgY29u
ZmlndXJhdGlvbiB3aWxsIGJ1aWxkIENBVlMgSEQtQXVkaW8gZmVhdHVyZS4KIyBUbyBidWlsZCBD
QVZTIFNTUCBBdWRpbyBmZWF0dXJlLCB1bmNvbW1lbnQgdGhlIGxpbmUgYmVsb3cuCiNBVURJT19G
RUFUVVJFUyA9ICJzc3AiCgojCiMgTWFjaGluZSBDb25maWd1cmF0aW9uIE92ZXJyaWRlIGZvciBB
cG9sbG8gTGFrZSBwbGF0Zm9ybQojCiMgVGhpcyBpcyBhIHN0b3BnYXAgbWVhc3VyZSBmb3IgY29u
ZmlndXJpbmcgbWFjaGluZSBzZXR0aW5ncyBmb3IgQXBvbGxvIExha2UgcGxhdGZvcm0KIyBwcmlt
YXJpbHkgZm9yIFByZS1Qcm9kdWN0aW9uIFNXIHJlbGVhc2UgdW50aWwgdGhlIGNoYW5nZXMgYXJl
IHVwc3RyZWFtIHRvIFlvY3RvIFByb2plY3QuCiMgVGhlc2Ugc2V0dGluZ3MgYXJlIGFwcGxpY2Fi
bGUgZm9yIEludGVsIEFwb2xsbyBMYWtlIHByb2plY3Qgb25seS4KIyBQbGVhc2UgY29tbWVudCBv
dXQgd2hlbiB5b3UgYXJlIGNvbXBpbGluZyBmb3Igb3RoZXIgcHJvamVjdHMuCgojIFVuY29tbWVu
dCB3aGVuIHlvdSBhcmUgaW50ZWdyYXRpbmcgY2xvc2VkIHNvdXJjZSBtZWRpYSBzdGFjawojTUFD
SElORV9IV0NPREVDUyA9ICIiCgpPTERfWFNFUlZFUl9YODZfRVhUID0gIiIKWFNFUlZFUl9YODZf
TUFUUk9YX01HQSA9ICIiClhTRVJWRVJfWDg2X0FTUEVFRF9BU1QgPSAiIgpNQUNISU5FX0VTU0VO
VElBTF9FWFRSQV9SREVQRU5EU19yZW1vdmUgPSAiaW50ZWwtbWljcm9jb2RlIgpJTklUUkRfTElW
RV9yZW1vdmUgPSAiJHtERVBMT1lfRElSX0lNQUdFfS9taWNyb2NvZGUuY3BpbyIKCiMgTWFrZSBp
bWFnZSBib290IHRvIHJ1bmxldmVsIDMgYnkgZGVmYXVsdApBUFBFTkQgPSAiMyBzbmRfaGRhX2lu
dGVsLnBvd2VyX3NhdmU9MSBzbmRfaGRhX2ludGVsLnBvd2VyX3NhdmVfY29udHJvbGxlcj15IHNj
c2lfbW9kLnNjYW49YXN5bmMgaTkxNS5lbmFibGVfZ3VjX2xvYWRpbmc9MSByZWJvb3Q9ZWZpIGNv
bnNvbGU9dHR5UzIsMTE1MjAwbjgiCgpXS1NfRklMRSA9ICJzeXN0ZW1kLWJvb3RkaXNrLW1pY3Jv
Y29kZS1jdXN0b20ud2tzIgojCiMgVXNlciBTcGFjZSBDb25maWd1cmF0aW9uIE92ZXJyaWRlIGZv
ciBBcG9sbG8gTGFrZSBQbGF0Zm9ybQojCiMgU2VsZWN0aW9uIG9mIGpwZWcgcGFja2FnZSBwcm92
aWRlcgpQUkVGRVJSRURfUFJPVklERVJfanBlZyA9ICJqcGVnIgpQUkVGRVJSRURfUFJPVklERVJf
anBlZy1uYXRpdmUgPSAianBlZy1uYXRpdmUiCgojIEVuYWJsZSB4c2VydmVyLXhvcmcKSU1BR0Vf
SU5TVEFMTF9hcHBlbmQgPSAiIHhzZXJ2ZXIteG9yZyIKCiMgRW5hYmxlIHZwOGRlYyBmb3IgZ3N0
cmVhbWVyMS4wLXBsdWdpbnMtZ29vZApQQUNLQUdFQ09ORklHX2FwcGVuZF9wbi1nc3RyZWFtZXIx
LjAtcGx1Z2lucy1nb29kID0gInZweCIKCiMgTXVsdGktbGlicmFyaWVzIHN1cHBvcnQgaXMgYnkg
ZGVmYXVsdCAiT0ZGIgojIFBsZWFzZSB1bmNvbW1lbnQgdGhlIDQgbGluZXMgYmVsb3cgdG8gZW5h
YmxlIG11bHRpbGliIHN1cHBvcnQuCiNyZXF1aXJlIGNvbmYvbXVsdGlsaWIuY29uZgojREVGQVVM
VFRVTkUgPSAiY29yZWk3LTY0IgojTVVMVElMSUJTID0gIm11bHRpbGliOmxpYjMyIgojREVGQVVM
VFRVTkVfdmlydGNsYXNzLW11bHRpbGliLWxpYjMyID0gImNvcmVpNy0zMiIKCiMgSW5zdGFsbCBh
dXRvY29uZi1hcmNoaXZlCklNQUdFX0lOU1RBTExfYXBwZW5kID0gIiBhdXRvY29uZi1hcmNoaXZl
IgoKIyBJbnN0YWxsIGxpYnZhCklNQUdFX0lOU1RBTExfYXBwZW5kID0gIiBsaWJ2YSIKCiMgSW5z
dGFsbCBXYXlsYW5kIGluIGltYWdlCkRJU1RST19GRUFUVVJFU19hcHBlbmQgPSAiIHdheWxhbmQg
cGFtIgpDT1JFX0lNQUdFX0VYVFJBX0lOU1RBTEwgKz0gIndheWxhbmQgd2VzdG9uIHdlc3Rvbi1l
eGFtcGxlcyIKCiMgSW5zdGFsbCBtZXNhIGdseGluZm8KSU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAi
IG1lc2EtZ2x4aW5mbyIKCiMgSW5zdGFsbCBUUE0yLjAtVFNTIGluIGltYWdlCklNQUdFX0lOU1RB
TExfYXBwZW5kID0gIiBsaWJ0c3MyIGxpYnRzczItZGV2IGxpYnRjdGlkZXZpY2UgbGlidGN0aWRl
dmljZS1kZXYgbGlidGN0aXNvY2tldCBsaWJ0Y3Rpc29ja2V0LWRldiIKSU1BR0VfSU5TVEFMTF9h
cHBlbmQgPSAiIGxpYnRzczItc3RhdGljZGV2IGxpYnRjdGlzb2NrZXQtc3RhdGljZGV2IGxpYnRj
dGlkZXZpY2Utc3RhdGljZGV2IgoKIyBJbnN0YWxsIHRwbTItYWJybWQgaW4gaW1hZ2UKSU1BR0Vf
SU5TVEFMTF9hcHBlbmQgPSAiIHRwbTItYWJybWQiCgojIEluc3RhbGwgTVJBQSBhbmQgaXRzIGRl
cGVuZGVuY2llcyBpbiBpbWFnZQpJTUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIgbm9kZWpzIHN3aWcg
bXJhYSIKCiMgSW5zdGFsbCBVU0ItbW9kZXN3aXRjaCBhbmQgVVNCLW1vZGVzd2l0Y2gtZGF0YSBp
biBpbWFnZQpJTUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIgdXNiLW1vZGVzd2l0Y2ggdXNiLW1vZGVz
d2l0Y2gtZGF0YSIKCiMgSW5zdGFsbCBKSEkKSU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAiIGpoaSIK
CiMgSW5zdGFsbCBJUVYgZHJpdmVyCklNQUdFX0lOU1RBTExfYXBwZW5kID0gIiBpcXZsaW51eCIK
CiMgRGlzYWJsZSBsdHRuZyBtb2R1bGVzCkxUVE5HTU9EVUxFU19jb3JlaTctNjQtaW50ZWwtY29t
bW9uID0gIiIKCiMgSW5zdGFsbCB4aW5pdHJjIGVudmlyb25tZW50IGZpbGUKSU1BR0VfSU5TVEFM
TF9hcHBlbmQgPSAiIHhpbml0LWVudiIKCiMgQnkgZGVmYXVsdCwgd2Ugd2FudCBvdXIgT1MgdG8g
aW5jbHVkZXMgYWxsIGtlcm5lbCBtb2R1bGVzLgpJTUFHRV9JTlNUQUxMX2FwcGVuZCA9ICIga2Vy
bmVsLW1vZHVsZXMiCgojIFRha2Ugbm90ZSB0aGF0IGFzIHdlIGFyZSBidWlsZGluZyAzcmQgcGFy
dHkgaW5ncmVkaWVudC4KIyBXZSBuZWVkIHRoZSBMSUNFTlNFX0ZMQUdTIGJlbG93LgpMSUNFTlNF
X0ZMQUdTX1dISVRFTElTVCArPSAiY29tbWVyY2lhbCIKCiMgVXNlIHN5c3RlbWQgaW5pdCBpbnN0
ZWFkIG9mIHN5c1YgaW5pdApESVNUUk9fRkVBVFVSRVNfYXBwZW5kID0gIiBzeXN0ZW1kIgpWSVJU
VUFMLVJVTlRJTUVfaW5pdF9tYW5hZ2VyID0gInN5c3RlbWQiCkRJU1RST19GRUFUVVJFU19CQUNL
RklMTF9DT05TSURFUkVEID0gInN5c3Zpbml0IgoKIwojIFdoZXJlIHRvIHBsYWNlIGRvd25sb2Fk
cwojCiMgRHVyaW5nIGEgZmlyc3QgYnVpbGQgdGhlIHN5c3RlbSB3aWxsIGRvd25sb2FkIG1hbnkg
ZGlmZmVyZW50IHNvdXJjZSBjb2RlIHRhcmJhbGxzCiMgZnJvbSB2YXJpb3VzIHVwc3RyZWFtIHBy
b2plY3RzLiBUaGlzIGNhbiB0YWtlIGEgd2hpbGUsIHBhcnRpY3VsYXJseSBpZiB5b3VyIG5ldHdv
cmsKIyBjb25uZWN0aW9uIGlzIHNsb3cuIFRoZXNlIGFyZSBhbGwgc3RvcmVkIGluIERMX0RJUi4g
V2hlbiB3aXBpbmcgYW5kIHJlYnVpbGRpbmcgeW91CiMgY2FuIHByZXNlcnZlIHRoaXMgZGlyZWN0
b3J5IHRvIHNwZWVkIHVwIHRoaXMgcGFydCBvZiBzdWJzZXF1ZW50IGJ1aWxkcy4gVGhpcyBkaXJl
Y3RvcnkKIyBpcyBzYWZlIHRvIHNoYXJlIGJldHdlZW4gbXVsdGlwbGUgYnVpbGRzIG9uIHRoZSBz
YW1lIG1hY2hpbmUgdG9vLgojCiMgVGhlIGRlZmF1bHQgaXMgYSBkb3dubG9hZHMgZGlyZWN0b3J5
IHVuZGVyIFRPUERJUiB3aGljaCBpcyB0aGUgYnVpbGQgZGlyZWN0b3J5LgojCiNETF9ESVIgPz0g
IiR7VE9QRElSfS9kb3dubG9hZHMiCgojCiMgV2hlcmUgdG8gcGxhY2Ugc2hhcmVkLXN0YXRlIGZp
bGVzCiMKIyBCaXRCYWtlIGhhcyB0aGUgY2FwYWJpbGl0eSB0byBhY2NlbGVyYXRlIGJ1aWxkcyBi
YXNlZCBvbiBwcmV2aW91c2x5IGJ1aWx0IG91dHB1dC4KIyBUaGlzIGlzIGRvbmUgdXNpbmcgInNo
YXJlZCBzdGF0ZSIgZmlsZXMgd2hpY2ggY2FuIGJlIHRob3VnaHQgb2YgYXMgY2FjaGUgb2JqZWN0
cwojIGFuZCB0aGlzIG9wdGlvbiBkZXRlcm1pbmVzIHdoZXJlIHRob3NlIGZpbGVzIGFyZSBwbGFj
ZWQuCiMKIyBZb3UgY2FuIHdpcGUgb3V0IFRNUERJUiBsZWF2aW5nIHRoaXMgZGlyZWN0b3J5IGlu
dGFjdCBhbmQgdGhlIGJ1aWxkIHdvdWxkIHJlZ2VuZXJhdGUKIyBmcm9tIHRoZXNlIGZpbGVzIGlm
IG5vIGNoYW5nZXMgd2VyZSBtYWRlIHRvIHRoZSBjb25maWd1cmF0aW9uLiBJZiBjaGFuZ2VzIHdl
cmUgbWFkZQojIHRvIHRoZSBjb25maWd1cmF0aW9uLCBvbmx5IHNoYXJlZCBzdGF0ZSBmaWxlcyB3
aGVyZSB0aGUgc3RhdGUgd2FzIHN0aWxsIHZhbGlkIHdvdWxkCiMgYmUgdXNlZCAoZG9uZSB1c2lu
ZyBjaGVja3N1bXMpLgojCiMgVGhlIGRlZmF1bHQgaXMgYSBzc3RhdGUtY2FjaGUgZGlyZWN0b3J5
IHVuZGVyIFRPUERJUi4KIwojU1NUQVRFX0RJUiA/PSAiJHtUT1BESVJ9L3NzdGF0ZS1jYWNoZSIK
CiMKIyBXaGVyZSB0byBwbGFjZSB0aGUgYnVpbGQgb3V0cHV0CiMKIyBUaGlzIG9wdGlvbiBzcGVj
aWZpZXMgd2hlcmUgdGhlIGJ1bGsgb2YgdGhlIGJ1aWxkaW5nIHdvcmsgc2hvdWxkIGJlIGRvbmUg
YW5kCiMgd2hlcmUgQml0QmFrZSBzaG91bGQgcGxhY2UgaXRzIHRlbXBvcmFyeSBmaWxlcyBhbmQg
b3V0cHV0LiBLZWVwIGluIG1pbmQgdGhhdAojIHRoaXMgaW5jbHVkZXMgdGhlIGV4dHJhY3Rpb24g
YW5kIGNvbXBpbGF0aW9uIG9mIG1hbnkgYXBwbGljYXRpb25zIGFuZCB0aGUgdG9vbGNoYWluCiMg
d2hpY2ggY2FuIHVzZSBHaWdhYnl0ZXMgb2YgaGFyZCBkaXNrIHNwYWNlLgojCiMgVGhlIGRlZmF1
bHQgaXMgYSB0bXAgZGlyZWN0b3J5IHVuZGVyIFRPUERJUi4KIwojVE1QRElSID0gIiR7VE9QRElS
fS90bXAiCgojCiMgRGVmYXVsdCBwb2xpY3kgY29uZmlnCiMKIyBUaGUgZGlzdHJpYnV0aW9uIHNl
dHRpbmcgY29udHJvbHMgd2hpY2ggcG9saWN5IHNldHRpbmdzIGFyZSB1c2VkIGFzIGRlZmF1bHRz
LgojIFRoZSBkZWZhdWx0IHZhbHVlIGlzIGZpbmUgZm9yIGdlbmVyYWwgWW9jdG8gcHJvamVjdCB1
c2UsIGF0IGxlYXN0IGluaXRpYWxseS4KIyBVbHRpbWF0ZWx5IHdoZW4gY3JlYXRpbmcgY3VzdG9t
IHBvbGljeSwgcGVvcGxlIHdpbGwgbGlrZWx5IGVuZCB1cCBzdWJjbGFzc2luZwojIHRoZXNlIGRl
ZmF1bHRzLgojCkRJU1RSTyA/PSAicG9reSIKIyBBcyBhbiBleGFtcGxlIG9mIGEgc3ViY2xhc3Mg
dGhlcmUgaXMgYSAiYmxlZWRpbmciIGVkZ2UgcG9saWN5IGNvbmZpZ3VyYXRpb24KIyB3aGVyZSBt
YW55IHZlcnNpb25zIGFyZSBzZXQgdG8gdGhlIGFic29sdXRlIGxhdGVzdCBjb2RlIGZyb20gdGhl
IHVwc3RyZWFtCiMgc291cmNlIGNvbnRyb2wgc3lzdGVtcy4gVGhpcyBpcyBqdXN0IG1lbnRpb25l
ZCBoZXJlIGFzIGFuIGV4YW1wbGUsIGl0cyBub3QKIyB1c2VmdWwgdG8gbW9zdCBuZXcgdXNlcnMu
CiMgRElTVFJPID89ICJwb2t5LWJsZWVkaW5nIgoKIwojIFBhY2thZ2UgTWFuYWdlbWVudCBjb25m
aWd1cmF0aW9uCiMKIyBUaGlzIHZhcmlhYmxlIGxpc3RzIHdoaWNoIHBhY2thZ2luZyBmb3JtYXRz
IHRvIGVuYWJsZS4gTXVsdGlwbGUgcGFja2FnZSBiYWNrZW5kcwojIGNhbiBiZSBlbmFibGVkIGF0
IG9uY2UgYW5kIHRoZSBmaXJzdCBpdGVtIGxpc3RlZCBpbiB0aGUgdmFyaWFibGUgd2lsbCBiZSB1
c2VkCiMgdG8gZ2VuZXJhdGUgdGhlIHJvb3QgZmlsZXN5c3RlbXMuCiMgT3B0aW9ucyBhcmU6CiMg
IC0gJ3BhY2thZ2VfZGViJyBmb3IgZGViaWFuIHN0eWxlIGRlYiBmaWxlcwojICAtICdwYWNrYWdl
X2lwaycgZm9yIGlwayBmaWxlcyBhcmUgdXNlZCBieSBvcGtnIChhIGRlYmlhbiBzdHlsZSBlbWJl
ZGRlZCBwYWNrYWdlIG1hbmFnZXIpCiMgIC0gJ3BhY2thZ2VfcnBtJyBmb3IgcnBtIHN0eWxlIHBh
Y2thZ2VzCiMgRS5nLjogUEFDS0FHRV9DTEFTU0VTID89ICJwYWNrYWdlX3JwbSBwYWNrYWdlX2Rl
YiBwYWNrYWdlX2lwayIKIyBXZSBkZWZhdWx0IHRvIHJwbToKUEFDS0FHRV9DTEFTU0VTID89ICJw
YWNrYWdlX3JwbSIKCiMKIyBTREsvQURUIHRhcmdldCBhcmNoaXRlY3R1cmUKIwojIFRoaXMgdmFy
aWFibGUgc3BlY2lmaWVzIHRoZSBhcmNoaXRlY3R1cmUgdG8gYnVpbGQgU0RLL0FEVCBpdGVtcyBm
b3IgYW5kIG1lYW5zCiMgeW91IGNhbiBidWlsZCB0aGUgU0RLIHBhY2thZ2VzIGZvciBhcmNoaXRl
Y3R1cmVzIG90aGVyIHRoYW4gdGhlIG1hY2hpbmUgeW91IGFyZQojIHJ1bm5pbmcgdGhlIGJ1aWxk
IG9uIChpLmUuIGJ1aWxkaW5nIGk2ODYgcGFja2FnZXMgb24gYW4geDg2XzY0IGhvc3QpLgojIFN1
cHBvcnRlZCB2YWx1ZXMgYXJlIGk2ODYgYW5kIHg4Nl82NAojU0RLTUFDSElORSA/PSAiaTY4NiIK
CiMKIyBFeHRyYSBpbWFnZSBjb25maWd1cmF0aW9uIGRlZmF1bHRzCiMKIyBUaGUgRVhUUkFfSU1B
R0VfRkVBVFVSRVMgdmFyaWFibGUgYWxsb3dzIGV4dHJhIHBhY2thZ2VzIHRvIGJlIGFkZGVkIHRv
IHRoZSBnZW5lcmF0ZWQKIyBpbWFnZXMuIFNvbWUgb2YgdGhlc2Ugb3B0aW9ucyBhcmUgYWRkZWQg
dG8gY2VydGFpbiBpbWFnZSB0eXBlcyBhdXRvbWF0aWNhbGx5LiBUaGUKIyB2YXJpYWJsZSBjYW4g
Y29udGFpbiB0aGUgZm9sbG93aW5nIG9wdGlvbnM6CiMgICJkYmctcGtncyIgICAgICAgLSBhZGQg
LWRiZyBwYWNrYWdlcyBmb3IgYWxsIGluc3RhbGxlZCBwYWNrYWdlcwojICAgICAgICAgICAgICAg
ICAgICAgKGFkZHMgc3ltYm9sIGluZm9ybWF0aW9uIGZvciBkZWJ1Z2dpbmcvcHJvZmlsaW5nKQoj
ICAiZGV2LXBrZ3MiICAgICAgIC0gYWRkIC1kZXYgcGFja2FnZXMgZm9yIGFsbCBpbnN0YWxsZWQg
cGFja2FnZXMKIyAgICAgICAgICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gZGV2
ZWxvcCBhZ2FpbnN0IGxpYnMgaW4gdGhlIGltYWdlKQojICAicHRlc3QtcGtncyIgICAgIC0gYWRk
IC1wdGVzdCBwYWNrYWdlcyBmb3IgYWxsIHB0ZXN0LWVuYWJsZWQgcGFja2FnZXMKIyAgICAgICAg
ICAgICAgICAgICAgICh1c2VmdWwgaWYgeW91IHdhbnQgdG8gcnVuIHRoZSBwYWNrYWdlIHRlc3Qg
c3VpdGVzKQojICAidG9vbHMtc2RrIiAgICAgIC0gYWRkIGRldmVsb3BtZW50IHRvb2xzIChnY2Ms
IG1ha2UsIHBrZ2NvbmZpZyBldGMuKQojICAidG9vbHMtZGVidWciICAgIC0gYWRkIGRlYnVnZ2lu
ZyB0b29scyAoZ2RiLCBzdHJhY2UpCiMgICJlY2xpcHNlLWRlYnVnIiAgLSBhZGQgRWNsaXBzZSBy
ZW1vdGUgZGVidWdnaW5nIHN1cHBvcnQKIyAgInRvb2xzLXByb2ZpbGUiICAtIGFkZCBwcm9maWxp
bmcgdG9vbHMgKG9wcm9maWxlLCBleG1hcCwgbHR0bmcsIHZhbGdyaW5kKQojICAidG9vbHMtdGVz
dGFwcHMiIC0gYWRkIHVzZWZ1bCB0ZXN0aW5nIHRvb2xzICh0c19wcmludCwgYXBsYXksIGFyZWNv
cmQgZXRjLikKIyAgImRlYnVnLXR3ZWFrcyIgICAtIG1ha2UgYW4gaW1hZ2Ugc3VpdGFibGUgZm9y
IGRldmVsb3BtZW50CiMgICAgICAgICAgICAgICAgICAgICBlLmcuIHNzaCByb290IGFjY2VzcyBo
YXMgYSBibGFuayBwYXNzd29yZAojIFRoZXJlIGFyZSBvdGhlciBhcHBsaWNhdGlvbiB0YXJnZXRz
IHRoYXQgY2FuIGJlIHVzZWQgaGVyZSB0b28sIHNlZQojIG1ldGEvY2xhc3Nlcy9pbWFnZS5iYmNs
YXNzIGFuZCBtZXRhL2NsYXNzZXMvY29yZS1pbWFnZS5iYmNsYXNzIGZvciBtb3JlIGRldGFpbHMu
CiMgV2UgZGVmYXVsdCB0byBlbmFibGluZyB0aGUgZGVidWdnaW5nIHR3ZWFrcy4KRVhUUkFfSU1B
R0VfRkVBVFVSRVMgPSAiZGVidWctdHdlYWtzIHRvb2xzLXRlc3RhcHBzIgoKIwojIEFkZGl0aW9u
YWwgaW1hZ2UgZmVhdHVyZXMKIwojIFRoZSBmb2xsb3dpbmcgaXMgYSBsaXN0IG9mIGFkZGl0aW9u
YWwgY2xhc3NlcyB0byB1c2Ugd2hlbiBidWlsZGluZyBpbWFnZXMgd2hpY2gKIyBlbmFibGUgZXh0
cmEgZmVhdHVyZXMuIFNvbWUgYXZhaWxhYmxlIG9wdGlvbnMgd2hpY2ggY2FuIGJlIGluY2x1ZGVk
IGluIHRoaXMgdmFyaWFibGUKIyBhcmU6CiMgICAtICdidWlsZHN0YXRzJyBjb2xsZWN0IGJ1aWxk
IHN0YXRpc3RpY3MKIyAgIC0gJ2ltYWdlLW1rbGlicycgdG8gcmVkdWNlIHNoYXJlZCBsaWJyYXJ5
IGZpbGVzIHNpemUgZm9yIGFuIGltYWdlCiMgICAtICdpbWFnZS1wcmVsaW5rJyBpbiBvcmRlciB0
byBwcmVsaW5rIHRoZSBmaWxlc3lzdGVtIGltYWdlCiMgICAtICdpbWFnZS1zd2FiJyB0byBwZXJm
b3JtIGhvc3Qgc3lzdGVtIGludHJ1c2lvbiBkZXRlY3Rpb24KIyBOT1RFOiBpZiBsaXN0aW5nIG1r
bGlicyAmIHByZWxpbmsgYm90aCwgdGhlbiBtYWtlIHN1cmUgbWtsaWJzIGlzIGJlZm9yZSBwcmVs
aW5rCiMgTk9URTogbWtsaWJzIGFsc28gbmVlZHMgdG8gYmUgZXhwbGljaXRseSBlbmFibGVkIGZv
ciBhIGdpdmVuIGltYWdlLCBzZWUgbG9jYWwuY29uZi5leHRlbmRlZApVU0VSX0NMQVNTRVMgPz0g
ImJ1aWxkc3RhdHMgaW1hZ2UtbWtsaWJzIGltYWdlLXByZWxpbmsiCgojCiMgUnVudGltZSB0ZXN0
aW5nIG9mIGltYWdlcwojCiMgVGhlIGJ1aWxkIHN5c3RlbSBjYW4gdGVzdCBib290aW5nIHZpcnR1
YWwgbWFjaGluZSBpbWFnZXMgdW5kZXIgcWVtdSAoYW4gZW11bGF0b3IpCiMgYWZ0ZXIgYW55IHJv
b3QgZmlsZXN5c3RlbXMgYXJlIGNyZWF0ZWQgYW5kIHJ1biB0ZXN0cyBhZ2FpbnN0IHRob3NlIGlt
YWdlcy4gVG8KIyBlbmFibGUgdGhpcyB1bmNvbW1lbnQgdGhpcyBsaW5lLiBTZWUgY2xhc3Nlcy90
ZXN0aW1hZ2UoLWF1dG8pLmJiY2xhc3MgZm9yCiMgZnVydGhlciBkZXRhaWxzLgojVEVTVF9JTUFH
RSA9ICIxIgojCiMgSW50ZXJhY3RpdmUgc2hlbGwgY29uZmlndXJhdGlvbgojCiMgVW5kZXIgY2Vy
dGFpbiBjaXJjdW1zdGFuY2VzIHRoZSBzeXN0ZW0gbWF5IG5lZWQgaW5wdXQgZnJvbSB5b3UgYW5k
IHRvIGRvIHRoaXMgaXQKIyBjYW4gbGF1bmNoIGFuIGludGVyYWN0aXZlIHNoZWxsLiBJdCBuZWVk
cyB0byBkbyB0aGlzIHNpbmNlIHRoZSBidWlsZCBpcwojIG11bHRpdGhyZWFkZWQgYW5kIG5lZWRz
IHRvIGJlIGFibGUgdG8gaGFuZGxlIHRoZSBjYXNlIHdoZXJlIG1vcmUgdGhhbiBvbmUgcGFyYWxs
ZWwKIyBwcm9jZXNzIG1heSByZXF1aXJlIHRoZSB1c2VyJ3MgYXR0ZW50aW9uLiBUaGUgZGVmYXVs
dCBpcyBpdGVyYXRlIG92ZXIgdGhlIGF2YWlsYWJsZQojIHRlcm1pbmFsIHR5cGVzIHRvIGZpbmQg
b25lIHRoYXQgd29ya3MuCiMKIyBFeGFtcGxlcyBvZiB0aGUgb2NjYXNpb25zIHRoaXMgbWF5IGhh
cHBlbiBhcmUgd2hlbiByZXNvbHZpbmcgcGF0Y2hlcyB3aGljaCBjYW5ub3QKIyBiZSBhcHBsaWVk
LCB0byB1c2UgdGhlIGRldnNoZWxsIG9yIHRoZSBrZXJuZWwgbWVudWNvbmZpZwojCiMgU3VwcG9y
dGVkIHZhbHVlcyBhcmUgYXV0bywgZ25vbWUsIHhmY2UsIHJ4dnQsIHNjcmVlbiwga29uc29sZSAo
S0RFIDMueCBvbmx5KSwgbm9uZQojIE5vdGU6IGN1cnJlbnRseSwgS29uc29sZSBzdXBwb3J0IG9u
bHkgd29ya3MgZm9yIEtERSAzLnggZHVlIHRvIHRoZSB3YXkKIyBuZXdlciBLb25zb2xlIHZlcnNp
b25zIGJlaGF2ZQojT0VfVEVSTUlOQUwgPSAiYXV0byIKIyBCeSBkZWZhdWx0IGRpc2FibGUgaW50
ZXJhY3RpdmUgcGF0Y2ggcmVzb2x1dGlvbiAodGFza3Mgd2lsbCBqdXN0IGZhaWwgaW5zdGVhZCk6
ClBBVENIUkVTT0xWRSA9ICJub29wIgoKIwojIERpc2sgU3BhY2UgTW9uaXRvcmluZyBkdXJpbmcg
dGhlIGJ1aWxkCiMKIyBNb25pdG9yIHRoZSBkaXNrIHNwYWNlIGR1cmluZyB0aGUgYnVpbGQuIElm
IHRoZXJlIGlzIGxlc3MgdGhhdCAxR0Igb2Ygc3BhY2Ugb3IgbGVzcwojIHRoYW4gMTAwSyBpbm9k
ZXMgaW4gYW55IGtleSBidWlsZCBsb2NhdGlvbiAoVE1QRElSLCBETF9ESVIsIFNTVEFURV9ESVIp
LCBncmFjZWZ1bGx5CiMgc2h1dGRvd24gdGhlIGJ1aWxkLiBJZiB0aGVyZSBpcyBsZXNzIHRoYXQg
MTAwTUIgb3IgMUsgaW5vZGVzLCBwZXJmb3JtIGEgaGFyZCBhYm9ydAojIG9mIHRoZSBidWlsZC4g
VGhlIHJlYXNvbiBmb3IgdGhpcyBpcyB0aGF0IHJ1bm5pbmcgY29tcGxldGVseSBvdXQgb2Ygc3Bh
Y2UgY2FuIGNvcnJ1cHQKIyBmaWxlcyBhbmQgZGFtYWdlcyB0aGUgYnVpbGQgaW4gd2F5cyB3aGlj
aCBtYXkgbm90IGJlIGVhc2lseSByZWNvdmVyYWJsZS4KQkJfRElTS01PTl9ESVJTID0gIlwKICAg
IFNUT1BUQVNLUywke1RNUERJUn0sMUcsMTAwSyBcCiAgICBTVE9QVEFTS1MsJHtETF9ESVJ9LDFH
LDEwMEsgXAogICAgU1RPUFRBU0tTLCR7U1NUQVRFX0RJUn0sMUcsMTAwSyBcCiAgICBBQk9SVCwk
e1RNUERJUn0sMTAwTSwxSyBcCiAgICBBQk9SVCwke0RMX0RJUn0sMTAwTSwxSyBcCiAgICBBQk9S
VCwke1NTVEFURV9ESVJ9LDEwME0sMUsiCgojCiMgU2hhcmVkLXN0YXRlIGZpbGVzIGZyb20gb3Ro
ZXIgbG9jYXRpb25zCiMKIyBBcyBtZW50aW9uZWQgYWJvdmUsIHNoYXJlZCBzdGF0ZSBmaWxlcyBh
cmUgcHJlYnVpbHQgY2FjaGUgZGF0YSBvYmplY3RzIHdoaWNoIGNhbgojIHVzZWQgdG8gYWNjZWxl
cmF0ZSBidWlsZCB0aW1lLiBUaGlzIHZhcmlhYmxlIGNhbiBiZSB1c2VkIHRvIGNvbmZpZ3VyZSB0
aGUgc3lzdGVtCiMgdG8gc2VhcmNoIG90aGVyIG1pcnJvciBsb2NhdGlvbnMgZm9yIHRoZXNlIG9i
amVjdHMgYmVmb3JlIGl0IGJ1aWxkcyB0aGUgZGF0YSBpdHNlbGYuCiMKIyBUaGlzIGNhbiBiZSBh
IGZpbGVzeXN0ZW0gZGlyZWN0b3J5LCBvciBhIHJlbW90ZSB1cmwgc3VjaCBhcyBodHRwIG9yIGZ0
cC4gVGhlc2UKIyB3b3VsZCBjb250YWluIHRoZSBzc3RhdGUtY2FjaGUgcmVzdWx0cyBmcm9tIHBy
ZXZpb3VzIGJ1aWxkcyAocG9zc2libHkgZnJvbSBvdGhlcgojIG1hY2hpbmVzKS4gVGhpcyB2YXJp
YWJsZSB3b3JrcyBsaWtlIGZldGNoZXIgTUlSUk9SUy9QUkVNSVJST1JTIGFuZCBwb2ludHMgdG8g
dGhlCiMgY2FjaGUgbG9jYXRpb25zIHRvIGNoZWNrIGZvciB0aGUgc2hhcmVkIG9iamVjdHMuCiMg
Tk9URTogaWYgdGhlIG1pcnJvciB1c2VzIHRoZSBzYW1lIHN0cnVjdHVyZSBhcyBTU1RBVEVfRElS
LCB5b3UgbmVlZCB0byBhZGQgUEFUSAojIGF0IHRoZSBlbmQgYXMgc2hvd24gaW4gdGhlIGV4YW1w
bGVzIGJlbG93LiBUaGlzIHdpbGwgYmUgc3Vic3RpdHV0ZWQgd2l0aCB0aGUKIyBjb3JyZWN0IHBh
dGggd2l0aGluIHRoZSBkaXJlY3Rvcnkgc3RydWN0dXJlLgojU1NUQVRFX01JUlJPUlMgPz0gIlwK
I2ZpbGU6Ly8uKiBodHRwOi8vc29tZXNlcnZlci50bGQvc2hhcmUvc3N0YXRlL1BBVEg7ZG93bmxv
YWRmaWxlbmFtZT1QQVRIIFxuIFwKI2ZpbGU6Ly8uKiBmaWxlOi8vL3NvbWUvbG9jYWwvZGlyL3Nz
dGF0ZS9QQVRIIgoKIwojIFFlbXUgY29uZmlndXJhdGlvbgojCiMgQnkgZGVmYXVsdCBxZW11IHdp
bGwgYnVpbGQgd2l0aCBhIGJ1aWx0aW4gVk5DIHNlcnZlciB3aGVyZSBncmFwaGljYWwgb3V0cHV0
IGNhbiBiZQojIHNlZW4uIFRoZSB0d28gbGluZXMgYmVsb3cgZW5hYmxlIHRoZSBTREwgYmFja2Vu
ZCB0b28uIFRoaXMgYXNzdW1lcyB0aGVyZSBpcyBhCiMgbGlic2RsIGxpYnJhcnkgYXZhaWxhYmxl
IG9uIHlvdXIgYnVpbGQgc3lzdGVtLgojUEFDS0FHRUNPTkZJR19hcHBlbmRfcG4tcWVtdS1uYXRp
dmUgPSAiIHNkbCIKI1BBQ0tBR0VDT05GSUdfYXBwZW5kX3BuLW5hdGl2ZXNkay1xZW11ID0gIiBz
ZGwiCiNBU1NVTUVfUFJPVklERUQgKz0gImxpYnNkbC1uYXRpdmUiCgoKIyBDT05GX1ZFUlNJT04g
aXMgaW5jcmVhc2VkIGVhY2ggdGltZSBidWlsZC9jb25mLyBjaGFuZ2VzIGluY29tcGF0aWJseSBh
bmQgaXMgdXNlZCB0bwojIHRyYWNrIHRoZSB2ZXJzaW9uIG9mIHRoaXMgZmlsZSB3aGVuIGl0IHdh
cyBnZW5lcmF0ZWQuIFRoaXMgY2FuIHNhZmVseSBiZSBpZ25vcmVkIGlmCiMgdGhpcyBkb2Vzbid0
IG1lYW4gYW55dGhpbmcgdG8geW91LgpDT05GX1ZFUlNJT04gPSAiMSIKCiMgRW5hYmxlIHRoZSBz
ZWN1cml0eSBmbGFncyBhcyBwZXIgU0RMIDQuMCByZXF1aXJlbWVudApyZXF1aXJlIGNvbmYvZGlz
dHJvL2luY2x1ZGUvc2VjdXJpdHlfZmxhZ3MuaW5jClNFQ1VSSVRZX0NGTEFHUyA9ICItZnN0YWNr
LXByb3RlY3Rvci1zdHJvbmcgLXBpZSAtZnBpZSAtRF9GT1JUSUZZX1NPVVJDRT0yIC1PMiAtV2Zv
cm1hdCAtV2Zvcm1hdC1zZWN1cml0eSIKU0VDVVJJVFlfTk9fUElFX0NGTEFHUyA9ICItZnN0YWNr
LXByb3RlY3Rvci1zdHJvbmcgLURfRk9SVElGWV9TT1VSQ0U9MiAtTzIgLVdmb3JtYXQgLVdmb3Jt
YXQtc2VjdXJpdHkiClNFQ1VSSVRZX0xERkxBR1MgPSAiLVdsLC16LHJlbHJvLC16LG5vdywteixu
b2V4ZWNzdGFjayIKCiNBbWl0SyBPVEEgc3VwcG9ydApESVNUUk8gPSAicG9reS1zb3RhLXN5c3Rl
bWQiCgpTUkNSRVZfRk9STUFUID0gIjEiCgojTFRFIFN1cHBvcnQgQWRkZWQKI0lNQUdFX0lOU1RB
TExfYXBwZW5kID0gIiBsODlpcm5zcyIKCiMgR2VuZXJhbCBTT1RBIHNldHVwClNPVEFfQ0xJRU5U
X1BST1YgPSAiYWt0dWFsaXpyLXNoYXJlZC1wcm92IgpTT1RBX1BBQ0tFRF9DUkVERU5USUFMUyA9
ICIvcHJhdmVlbi9pbnRpX2Rtc3YveW9jdG9fYnVpbGQvY3JlZGVudGlhbHMuemlwIgoKIyBVbmNv
bW1lbnQgdGhpcyBsaW5lIHRvIHN0YXJ0IGFuIHNzaCBzZXJ2ZXIgYXQgYm9vdCBhdXRvbWF0aWNh
bGx5CiNJTUFHRV9GRUFUVVJFUyArPSAic3NoLXNlcnZlci1kcm9wYmVhciIKCiMgVW5jb21tZW50
IHRoaXMgbGluZSB0byBzZXQgdGhlIGxvZyBsZXZlbCBvZiBha3R1YWxpenIgdG8gJ2RlYnVnJyAo
ZnJvbSAnaW5mbycKIyBieSBkZWZhdWx0KQojSU1BR0VfSU5TVEFMTF9hcHBlbmQgKz0gIiBha3R1
YWxpenItbG9nLWRlYnVnIgoKIyBTdG9yZSBzeXN0ZW1kIGxvZ3MgaW4gcGVyc2lzdGVudCBzdG9y
YWdlCiMKIyBJdCBncmVhdGx5IGhlbHBzIGRpYWdub3NpbmcgaXNzdWVzIG9uIHRlc3RpbmcgZGV2
aWNlcyBidXQgc2hvdWxkIGJlCiMgY2FyZWZ1bGx5IHdlaWdodGVkIGFnYWluc3QgZmlsZSBzeXN0
ZW0gdXNhZ2UgYW5kIGZsYXNoIGRldmljZSB3ZWFyIGZvcgojIHByb2R1Y3Rpb24gc3lzdGVtcy4g
UGxlYXNlIHJlZmVyIHRvIHN5c3RlbWQncyBkb2NzIGZvciBtb3JlIGRldGFpbHMKSU1BR0VfSU5T
VEFMTF9hcHBlbmQgKz0gIiBzeXN0ZW1kLWpvdXJuYWxkLXBlcnNpc3RlbnQiCgpPU1RSRUVfQlJB
TkNITkFNRSA9ICJjcmItc290YV90ZXN0X25ldyIKT1NUUkVFX1JFUE8gPSAiJHtIT01FfS9wcmF2
ZWVuL3B1YmxpY19odG1sL29zdHJlZS9yZXBvIgpPU1RSRUVfUkVNT1RFX1VSTCA9ICJodHRwOi8v
MTkyLjE2OC4xNTAuMTE6ODAwMCIKT1NUUkVFX09TTkFNRSA9ICJpbnRpX2Rtc3YiCiNPU1RSRUVf
SU5JVFJBTUZTX0lNQUdFID89ICJpbml0cmFtZnMtb3N0cmVlLWltYWdlIgoKIyBTZXQgcmVzb3Vy
Y2UgbGltaXRzIGZvciBha3R1YWxpenIgc2VydmljZQojCiMgVW5jb21tZW50IHRoZXNlIGxpbmVz
IHRvIGNoYW5nZSB0aGUgZGVmYXVsdCBwYXJhbWV0ZXJzLgojCiNSRVNPVVJDRV9DUFVfV0VJR0hU
X3BuLWFrdHVhbGl6ciA9ICIxMDAiCiNSRVNPVVJDRV9NRU1PUllfSElHSF9wbi1ha3R1YWxpenIg
PSAiMTAwTSIKI1JFU09VUkNFX01FTU9SWV9NQVhfcG4tYWt0dWFsaXpyID0gIjgwJSIKSU1BR0Vf
SU5TVEFMTF9hcHBlbmQgKz0gIiBha3R1YWxpenItcmVzb3VyY2UtY29udHJvbCIKCiNJTUFHRV9J
TlNUQUxMX2FwcGVuZCArPSAiIG9wZW5zc2giCiNJTUFHRV9JTlNUQUxMX2FwcGVuZCArPSAiIG9w
ZW5zc2ggb3BlbnNzaC1zZnRwIgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwojT1NUUkVFX1VTRV9B
QiA/PSAiMSIKI0FkZCB0aGUgZXh0cmEgc3BhY2UgdG8ga2VlcCBhYnNvcnZlIHRoZSBjaGFuZ2Vz
CiNJTUFHRV9ST09URlNfRVhUUkFfU1BBQ0U9ICIyMTk0MzA0IgojSU1BR0VfUk9PVEZTX0VYVFJB
X1NQQUNFPSAiMjUxNTk2OCIKCklOSEVSSVQgKz0gImltYWdlLWJ1aWxkaW5mbyIKSU1BR0VfVFlQ
RT0ic2F0byIKTVlfQlVJTERfVkVSU0lPTj0iMS4wIgpERVZJQ0VfTU9ERUw9IkNSQiIKREVWSUNF
X1RZUEU9IiR7TUFDSElORX0tJHtERVZJQ0VfTU9ERUx9IgoKSU1BR0VfQlVJTERJTkZPX1ZBUlMg
PSAiRElTVFJPIERJU1RST19WRVJTSU9OIE1BQ0hJTkUgREVWSUNFX01PREVMIERFVklDRV9UWVBF
IE1ZX0JVSUxEX1ZFUlNJT04gSU1BR0VfVFlQRSIKCiNBdXRvIHJlYm9vdCBzdXBwb3J0IGFkZGVk
CklNQUdFX0lOU1RBTExfYXBwZW5kICs9ICIgYWt0dWFsaXpyLWF1dG8tcmVib290IgpJTUFHRV9J
TlNUQUxMX2FwcGVuZCArPSAiIG1pbmljb20iCklNQUdFX0lOU1RBTExfYXBwZW5kICs9ICIgaGVs
bG8iCgojIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIwoKQ09SRV9JTUFHRV9FWFRSQV9JTlNUQUxMICs9
ICIgb3Blbm9iZXggb2JleC1kYXRhLXNlcnZlciBvYmV4ZnRwIGJsdWV6NSIKQ09SRV9JTUFHRV9F
WFRSQV9JTlNUQUxMICs9ICIgYmx1ZXotdG9vbHMiCkNPUkVfSU1BR0VfRVhUUkFfSU5TVEFMTCAr
PSAiIHN5c3RlbWQgc3lzdGVtdGFwIgpDT1JFX0lNQUdFX0VYVFJBX0lOU1RBTEwgKz0gIiBnY2Mg
Z2NjLXNhbml0aXplcnMgaG9zdGFwZCB3cGEtc3VwcGxpY2FudCIKQ09SRV9JTUFHRV9FWFRSQV9J
TlNUQUxMICs9ICIgZGhjcGNkICBkaGNwLWRiZyBkaGNwLWRldiBkaGNwLWRvYyBkaGNwLWxpYnMg
ZGhjcC1zZXJ2ZXIgZGhjcC1zZXJ2ZXItY29uZmlnIGRoY3AtY2xpZW50IGRoY3AtcmVsYXkgZGhj
cC1vbXNoZWxsIgo=

--0000000000006b7f3a05b227200d--
