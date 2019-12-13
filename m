Received: from mail-il1-f196.google.com (mail-il1-f196.google.com [209.85.166.196])
 by mx.groups.io with SMTP id smtpd.web12.274.1576262432543528529
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 10:40:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Whc+hxc7;
 spf=pass (domain: gmail.com, ip: 209.85.166.196, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f196.google.com with SMTP id z12so216386iln.11
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 10:40:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jeLqWoHWwmEdz3X3VULhRcg3n076qNonmIVgs9yvz2s=;
        b=Whc+hxc7tywLpZpv+f8MegxnF84ESHCA2C7uqTHLO41GThqFu5KlwIQi3U+4b4mGFb
         KyFlaap7CMiYxR1bbUuL7PeqIBpjpDss2vmwQmhm518dtGEiCq4NNp+V28SkDv+3ZBBm
         QfoPguN26zWAfOk3D9Pn6CN7IByH3LrDtF/MQsw/0wA815QyU93kDhIDHZ7Spu1Kz+GV
         8OO199w4NjcgVa64mkv5EUF8L9v7wYeJi4vi4b0O+UvVLhIvFmojYP8rnzdhBmwU8FZM
         Tp0UcJ9XQYdzqN785MR4bTd6eVExOXmp0OxWFaqf7BOevHKu9C/KO4PzZ4l3M3kNSSHd
         Cgdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jeLqWoHWwmEdz3X3VULhRcg3n076qNonmIVgs9yvz2s=;
        b=i0XoOrMavp4LYRu4zaE3Gw5Cgp4YOyZs8W1VQZ+YmX8yBq/p5uZuetGga7qIhFaTTU
         WC700Sjmkk3TbblxtY3pkc5eX8wXCMEt9azM/4m9qD2HV9hLWnlTPwqg/o+gKswnvqaw
         7TZRCkOTaCO/O1wb5QeeCH/Cwq1OEx+jRQypgbZBV5svAezkqICw5x+vjtF5wTSvb8Fb
         tO2M1BYNCpTAsUpjsq3kqW9XVYXpfuRvjekWpvl79HAD22Efwt9B0m3O1LKRSEITzSia
         FyQgXUDu7jrAVc2Y/oJhqivg6voyfXmZwlTsp3VOZnGJVwpOSsKcmveXnaLcWQvm2lCc
         NCMQ==
X-Gm-Message-State: APjAAAVkiMScJVbvyFUMfpekYuABfZ8WIDPrCUwHkXXOSm+mEQQTt8MP
	sukJq03AQbjFL0Mf7x3WoTBgCNUWvwUqJp9Wcfw=
X-Google-Smtp-Source: APXvYqzrS5/2zRYnhQZOFRiZepyoMb5WhAb7lU6ilmWCPCvIfzy+wVc/hCWH2wnid0JxFclNXvHE7TxlV1Xk3Tfeq9A=
X-Received: by 2002:a92:8b82:: with SMTP id i124mr702270ild.267.1576262431840;
 Fri, 13 Dec 2019 10:40:31 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
 <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com> <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <YTBPR01MB2350E5110CE2B02D255FB5E98A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 13:40:21 -0500
Message-ID: <CAGhBkzxv8LHjaAbMLbYBWMxmKAWTqqvHdoA=voo6UDDCswW+NQ@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000529e0605999a32f6"

--000000000000529e0605999a32f6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I tried to follow the changes and I still get the following error:
*NOTE: Fetching uninative binary shim
from http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-native=
sdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5=
c9d1642dccf95accd0
<http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-=
libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1=
642dccf95accd0>*
*WARNING: Failed to fetch
URL http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-natives=
dk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c=
9d1642dccf95accd0
<http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-=
libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1=
642dccf95accd0>,
attempting MIRRORS if available*
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
DBUS_SESSION_BUS_ADDRESS=3D"unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=3D6b9=
c2f1d40cf3c9a1ff878cc5dee8547";
export SSH_AGENT_PID=3D"16924"; export
SSH_AUTH_SOCK=3D"/run/user/18771/keyring/ssh"; export
PATH=3D"/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/scr=
ipts:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/armv=
7at2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-nativ=
e/usr/bin/arm-picoos-linux-musleabi:/localdata/deborah_flatten_userpkg/broa=
dband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgn=
ame/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/localdata/deborah_flatten_u=
serpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/=
defaultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/localdata/deborah_fla=
tten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-mus=
leabi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/localdata/debora=
h_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linu=
x-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/localdata/debo=
rah_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-li=
nux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/localdata/deb=
orah_flatten_userpkg/broadband-build/sources/poky/bitbake/bin:/localdata/de=
borah_flatten_userpkg/broadband-build/build/tmp/hosttools";
export HOME=3D"/home/rflora"; /usr/bin/env wget -t 2 -T 30 --passive-ftp
--no-check-certificate -P
/localdata/deborah_flatten_userpkg/broadband-build/downloads/uninative/06f9=
1685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0
'
http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-l=
ibc.tar.bz2'
--progress=3Ddot -v failed with exit code 4, output:
--2019-12-13 13:33:47--
http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-l=
ibc.tar.bz2
Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
198.145.29.63
Connecting to downloads.yoctoproject.org
(downloads.yoctoproject.org)|198.145.29.63|:80...
failed: Connection timed out.
Retrying.

--2019-12-13 13:34:18--  (try: 2)
http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-l=
ibc.tar.bz2
Connecting to downloads.yoctoproject.org
(downloads.yoctoproject.org)|198.145.29.63|:80...
failed: Connection timed out.
Giving up.

Here are the changes in my local.conf file:
SSTATE_MIRRORS ?=3D "file:///nfs/projects/blah/yocto_sstate/"
INHERIT +=3D "own-mirrors"
BB_GENERATE_MIRROR_TARBALLS =3D "1"

Where /nfs/projects/blah/yocto_sstate/
contains all the files
eoc_wl5e.tar.gz
 eoc_wl5e.tar.gz.done                                           uninative/
eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087  git2/

Did I do something wrong?

Sorry for lot of questions, I am new to Yocto.

Regards,

Ripu

On Fri, Dec 13, 2019 at 1:26 PM Kevyn-Alexandre Pare <
Kevyn-Alexandre.Pare@opal-rt.com> wrote:

> I'm setting
>
> TMPDIR=3D<PATH>/build/tmp
> DL_DIR=3D<PATH>/build/downloads
> SSTATE_DIR=3D<PATH>/build/sstate-cache
>
> Also ref:
>
>
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#rep=
licating-a-build-offline
>
> -KA
>
>
> From: FLoraVLogs <eripflo@gmail.com>
>
> Sent: Friday, December 13, 2019 13:20
>
> To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>
> Subject: Re: [yocto] Yocto server is down
>
>
>
>
>
>
> I did those changes:
>  SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
>  INHERIT +=3D "own-mirrors"
>  BB_GENERATE_MIRROR_TARBALLS =3D "1"
>
>
>
>
> But still I am running into bake issues.
> where source_mirror_url path is my custom path
> rest I left as same.
>
>
>
> Am I missing something?
>
>
>
> I see {source_mirror_url} is invalid and cannot be interpreted.
>
>
>
>
>
>
> Regards,
>
>
>
> Ripu
>
>
>
>

--000000000000529e0605999a32f6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I tried to follow the changes and I=
 still get the following error:</div><div><b><font color=3D"#ff0000">NOTE: =
Fetching uninative binary shim from=C2=A0<a href=3D"http://downloads.yoctop=
roject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=
=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" target=
=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.4/x86_64=
-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0=
766dad5c9d1642dccf95accd0</a></font></b><br><b><font color=3D"#ff0000">WARN=
ING: Failed to fetch URL=C2=A0<a href=3D"http://downloads.yoctoproject.org/=
releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2;sha256sum=3D06f91685b7=
82f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dccf95accd0" target=3D"_blank">h=
ttp://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-li=
bc.tar.bz2;sha256sum=3D06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d164=
2dccf95accd0</a>, attempting MIRRORS if available</font></b><br>ERROR: Fetc=
her failure: Fetch command export PSEUDO_DISABLED=3D1; export DBUS_SESSION_=
BUS_ADDRESS=3D&quot;unix:abstract=3D/tmp/dbus-cbPmLiVEFn,guid=3D6b9c2f1d40c=
f3c9a1ff878cc5dee8547&quot;; export SSH_AGENT_PID=3D&quot;16924&quot;; expo=
rt SSH_AUTH_SOCK=3D&quot;/run/user/18771/keyring/ssh&quot;; export PATH=3D&=
quot;/localdata/deborah_flatten_userpkg/broadband-build/sources/poky/script=
s:/localdata/deborah_flatten_userpkg/broadband-build/build/tmp/work/armv7at=
2hf-vfp-picoos-linux-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/u=
sr/bin/arm-picoos-linux-musleabi:/localdata/deborah_flatten_userpkg/broadba=
nd-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/defaultpkgname=
/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/localdata/deborah_flatten_user=
pkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-musleabi/def=
aultpkgname/1.0-r0/recipe-sysroot-native/usr/sbin:/localdata/deborah_flatte=
n_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-muslea=
bi/defaultpkgname/1.0-r0/recipe-sysroot-native/usr/bin:/localdata/deborah_f=
latten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux-m=
usleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/localdata/deborah=
_flatten_userpkg/broadband-build/build/tmp/work/armv7at2hf-vfp-picoos-linux=
-musleabi/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/localdata/debora=
h_flatten_userpkg/broadband-build/sources/poky/bitbake/bin:/localdata/debor=
ah_flatten_userpkg/broadband-build/build/tmp/hosttools&quot;; export HOME=
=3D&quot;/home/rflora&quot;; /usr/bin/env wget -t 2 -T 30 --passive-ftp --n=
o-check-certificate -P /localdata/deborah_flatten_userpkg/broadband-build/d=
ownloads/uninative/06f91685b782f2ccfedf3070b3ba0fe4a5ba2f0766dad5c9d1642dcc=
f95accd0 &#39;<a href=3D"http://downloads.yoctoproject.org/releases/uninati=
ve/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">http://downloads.yo=
ctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a>&#39=
; --progress=3Ddot -v failed with exit code 4, output:<br>--2019-12-13 13:3=
3:47-- =C2=A0<a href=3D"http://downloads.yoctoproject.org/releases/uninativ=
e/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">http://downloads.yoc=
toproject.org/releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2</a><span=
 class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><br>Resolving=C2=A0<a href=
=3D"http://downloads.yoctoproject.org/" target=3D"_blank">downloads.yoctopr=
oject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproject.org/" target=
=3D"_blank">downloads.yoctoproject.org</a>)... 198.145.29.63<br>Connecting =
to=C2=A0<a href=3D"http://downloads.yoctoproject.org/" target=3D"_blank">do=
wnloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctoproject=
.org/" target=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.63|:80.=
.. failed: Connection timed out.<br>Retrying.<br><br></span>--2019-12-13 13=
:34:18-- =C2=A0(try: 2) =C2=A0<a href=3D"http://downloads.yoctoproject.org/=
releases/uninative/2.4/x86_64-nativesdk-libc.tar.bz2" target=3D"_blank">htt=
p://downloads.yoctoproject.org/releases/uninative/2.4/x86_64-nativesdk-libc=
.tar.bz2</a><span class=3D"gmail-im" style=3D"color:rgb(80,0,80)"><br>Conne=
cting to=C2=A0<a href=3D"http://downloads.yoctoproject.org/" target=3D"_bla=
nk">downloads.yoctoproject.org</a>=C2=A0(<a href=3D"http://downloads.yoctop=
roject.org/" target=3D"_blank">downloads.yoctoproject.org</a>)|198.145.29.6=
3|:80... failed: Connection timed out.<br>Giving up.<br><br></span></div><d=
iv>Here are the changes in my local.conf file:</div><div>SSTATE_MIRRORS ?=
=3D &quot;file:///nfs/projects/blah/yocto_sstate/&quot;<span class=3D"gmail=
-im" style=3D"color:rgb(80,0,80)"><br>INHERIT +=3D &quot;own-mirrors&quot;<=
br>BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<br></span></div><div><br><=
/div><div>Where=C2=A0/nfs/projects/blah/yocto_sstate/<br>contains all the f=
iles</div><div>eoc_wl5e.tar.gz =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0eoc_wl5e.tar.gz.done =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 u=
ninative/<br>eoc_wl5e.tar.gz_bad-checksum_6dfc6c3d2cac970e9fc123514d809087 =
=C2=A0git2/=C2=A0=C2=A0<br></div><div><br></div><div>Did I do something wro=
ng?<br><br>Sorry for lot of questions, I am new to Yocto.</div><div><br></d=
iv><div>Regards,</div><div><br></div><div>Ripu</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at=
 1:26 PM Kevyn-Alexandre Pare &lt;<a href=3D"mailto:Kevyn-Alexandre.Pare@op=
al-rt.com">Kevyn-Alexandre.Pare@opal-rt.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">I&#39;m setting<br>
<br>
TMPDIR=3D&lt;PATH&gt;/build/tmp<br>
DL_DIR=3D&lt;PATH&gt;/build/downloads<br>
SSTATE_DIR=3D&lt;PATH&gt;/build/sstate-cache<br>
<br>
Also ref:<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual=
.html#replicating-a-build-offline" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#replicat=
ing-a-build-offline</a><br>
<br>
-KA<br>
<br>
<br>
From: FLoraVLogs &lt;<a href=3D"mailto:eripflo@gmail.com" target=3D"_blank"=
>eripflo@gmail.com</a>&gt;<br>
<br>
Sent: Friday, December 13, 2019 13:20<br>
<br>
To: Kevyn-Alexandre Pare &lt;<a href=3D"mailto:Kevyn-Alexandre.Pare@opal-rt=
.com" target=3D"_blank">Kevyn-Alexandre.Pare@opal-rt.com</a>&gt;<br>
<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto=
@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.=
org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<br>
Subject: Re: [yocto] Yocto server is down<br>
<br>
=C2=A0<br>
<br>
<br>
<br>
<br>
I did those changes:<br>
=C2=A0SOURCE_MIRROR_URL=C2=A0?=3D &quot;file:///source_mirror/sources/&quot=
;<br>
=C2=A0INHERIT +=3D &quot;own-mirrors&quot; <br>
=C2=A0BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;<br>
<br>
<br>
<br>
<br>
But still I am running into bake issues.=C2=A0<br>
where source_mirror_url path is my custom path<br>
rest I left as same.<br>
<br>
<br>
<br>
Am I missing something?<br>
<br>
<br>
<br>
I see {source_mirror_url} is invalid and cannot be interpreted.<br>
<br>
<br>
<br>
<br>
<br>
<br>
Regards,<br>
<br>
<br>
<br>
Ripu<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000529e0605999a32f6--
