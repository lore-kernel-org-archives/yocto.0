Return-Path: <logan.grosz@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14802C3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 02:32:25 +0000 (UTC)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
 by mx.groups.io with SMTP id smtpd.web10.33924.1722393137434859820
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 19:32:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=anNISp0s;
 spf=pass (domain: gmail.com, ip: 209.85.167.52, mailfrom: logan.grosz@gmail.com)
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52efa9500e0so6429833e87.3
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 19:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722393135; x=1722997935; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XtjakcPZfp/Oww8A71ViTMOrIbWS6Sn+Fz0xXXl4NNA=;
        b=anNISp0sfwcRlpFIFC3Ak6n0u6uWe+Rsu1clyJbZK1IAbsENpZxK+yAiHIQRgv6qYk
         MnNDry9LmWjBXTW7l8mWAioe++h4sneh0psASjerXf5hYOC4ny0L/UDOHoEwNspR3R9m
         vbiBb9ZEktPFv+u/D/ut2LuTUvBR9TKqh2N9UB1DoszLpu/FZ65GVnlFu+3fg0ULpxFd
         wCgrAKXiAwx3Kr2TTrW9GUDE4qb5ZuYvd7mUv/XyS8hIkFWdU/8ESCle6rfhL0YBxTc3
         1yvJBdJa/NeKPg1e+kf8eL+DSXghvNH/GEbC7ZRF6zzwtbUp/J7CR9WdSlIuaIxgQkWe
         7cqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722393135; x=1722997935;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XtjakcPZfp/Oww8A71ViTMOrIbWS6Sn+Fz0xXXl4NNA=;
        b=CwOh52avIxkMnyouoxsXpL1i09AWJlKw/JOQbvQhAkCyp2XHSut4N7MPn4bMe1hypy
         8xuKRIMuxJEB7LhkB7Gcz0LM6kPPhkELOvVmuwGs4tovz7gPveKYS+vR1bCtfyj0X09N
         +A80oYgEqUzpkWvyGoJzB85UUwOt2geT1YychyCZW8WbuGj83iFIi9AU7UWvibFyosuZ
         sHBSO6MvZb3iYQeFikNEeeeRmknW69QOUEy5dqsydH1Worn99tjiTfd0ThSfw9ZSVSL4
         OTcRpN9Fz5pvgK/8gOPB1QlXSIh2PfD3UW032/cnq+CHKcLYSCes1MgHUPatGVvs3wzR
         C8bw==
X-Gm-Message-State: AOJu0YzXfs7a/BP6LjXj0BkocuXTHgKE9CIysimRnzLR/GslDNDQh6zC
	0nNSr7L4TWxBh3AOEOz33PGU7nOhEfrVvi01PR79BQHEsVJZN5h3Q1407aj2w91eQh6Xv/kBJG3
	WAL3HvO+xjH9jhhz23CFCB3no+sLIUg==
X-Google-Smtp-Source: AGHT+IGesWNg0GRTd9Cl+QbUgsEUHUaX4LKhOtEbf8KI11CkzfdEV2I7wDtVXCpDr+2wOrvoI57YSYSRQA3a45CURhs=
X-Received: by 2002:a05:6512:1c8:b0:52c:dbee:bdb0 with SMTP id
 2adb3069b0e04-5309b2c6e40mr8083087e87.59.1722393134566; Tue, 30 Jul 2024
 19:32:14 -0700 (PDT)
MIME-Version: 1.0
References: <6g1V.1722367303704451398.Bigm@lists.yoctoproject.org>
In-Reply-To: <6g1V.1722367303704451398.Bigm@lists.yoctoproject.org>
From: Logan Grosz <logan.grosz@gmail.com>
Date: Tue, 30 Jul 2024 20:32:01 -0600
Message-ID: <CANn=KGhhWLRLh1PSuq4mLGRimKya_fBHB_8-=-1p2Jw7R-WJKg@mail.gmail.com>
Subject: Re: [yocto] Diff / Delta file between two rootfs images #toolchain #yocto
To: yocto@lists.yoctoproject.org, patryk.seregiet@gmail.com
Content-Type: multipart/alternative; boundary="000000000000f315b5061e81e66e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 02:32:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63618

--000000000000f315b5061e81e66e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

If you are using Mender's hosting option, delta updates are already a
feature, see this blog post:
https://hub.mender.io/t/robust-delta-update-rootfs/1144

Not sure what the options are if you aren't using their hosted solution,
but maybe their docs provide further information.

On Tue, Jul 30, 2024, 1:24=E2=80=AFPM patryk seregiet via lists.yoctoprojec=
t.org
<patryk.seregiet=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello,
> I'd like to create a diff/delta file between two rootfs images. I
> thought it would be as easy as using diff / rsync with some options,
> but it doesn't seem to be possible with just that, at least I couldn't
> manage it. So I wrote my own tool and it works, but it requires root
> to manipulate the files owned by other UIDs and GIDs (especially
> root).
>
> I know there's fakeroot, but my images have files owned by root and
> another ordinary users, so I cannot just make everything be owned by
> root. Here's the breakdown of my program and what I tried. I'd like
> any suggestion on how to achieve this easier and without sudo / root
> account.
>
> Oh and btw I am using ext4 images because I am using Mender (the over
> the air update software - https://mender.io/) and their final "mender
> artifact" is just the ext4 rootfs image with some extra metadata. I'd
> like to make a system that can produce a delta between these images.
> But if that's not possible I can just use the tarball created by Yocto
> (I'd just need to keep both or maybe Mender can be configured to use
> tarballs... not sure).
>
> Mount ext4 images at dir1 and dir2 (can be done without root
> using fuse2fs, but in that case no files can be listed when using
> sudo... strange)
>
> For all files in dir1 check if it exists in dir2, if not, write its name
> to ".deleted" file
>
> For all files in dir2 check if file exists in dir1. If not, copy it to
> output-dir
>
> If both files exist compare them (size, uid, guid, st_mode, finally
> calculate and compare a hash)
>
> if any of the above is different, copy it (using cp -a, which preserves
> all attributes). Also make all the directories for that file (mkdir -p).
>
> For all directories in output-dir check if it exists in dir2, if yes
> then copy all its attributes (stat -> chmod + chown).
> This is needed for all the directories we created using mkdir -p
>
> This leaves us with all the files that were different in output-dir
> and a list of files to be removed.
>
> Here's what I thought of doing:
> Do this in a docker image as a root (without the docker itself having
> any privileges). Can't make it work with ext4 being mounted, docker
> container can't access it (mountpoint is owned by root).
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63611):
> https://lists.yoctoproject.org/g/yocto/message/63611
> Mute This Topic: https://lists.yoctoproject.org/mt/107633647/7581472
> Mute #toolchain:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> logan.grosz@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000f315b5061e81e66e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">If you are using Mender&#39;s hosting option, delta updates =
are already a feature, see this blog post: <a href=3D"https://hub.mender.io=
/t/robust-delta-update-rootfs/1144">https://hub.mender.io/t/robust-delta-up=
date-rootfs/1144</a></p>
<p dir=3D"ltr">Not sure what the options are if you aren&#39;t using their =
hosted solution, but maybe their docs provide further information.</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Jul 30, 2024, 1:24=E2=80=AFPM patryk seregiet via <a href=3D"http://lists=
.yoctoproject.org">lists.yoctoproject.org</a> &lt;patryk.seregiet=3D<a href=
=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject.o=
rg</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><span style=
=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;word-spacing:0px;white-space:normal;background-color:#ffffff;te=
xt-decoration-style:initial;text-decoration-color:initial;display:inline!im=
portant;float:none">Hello,</span><br style=3D"color:#222222;font-family:Ari=
al,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-liga=
tures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal=
;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;whit=
e-space:normal;background-color:#ffffff;text-decoration-style:initial;text-=
decoration-color:initial"><span style=3D"color:#222222;font-family:Arial,He=
lvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spa=
ce:normal;background-color:#ffffff;text-decoration-style:initial;text-decor=
ation-color:initial;display:inline!important;float:none">I&#39;d like to cr=
eate a diff/delta file between two rootfs images. I</span><br style=3D"colo=
r:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;word-spacing:0px;white-space:normal;background-color:#ffffff;text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"color:#22=
2222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;background-color:#ffffff;text-decoration=
-style:initial;text-decoration-color:initial;display:inline!important;float=
:none">thought it would be as easy as using diff / rsync with some options,=
</span><br style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;fo=
nt-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;word-spacing:0px;white-space:normal;background-=
color:#ffffff;text-decoration-style:initial;text-decoration-color:initial">=
<span style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;word-spacing:0px;white-space:normal;background-color=
:#ffffff;text-decoration-style:initial;text-decoration-color:initial;displa=
y:inline!important;float:none">but it doesn&#39;t seem to be possible with =
just that, at least I couldn&#39;t</span><br style=3D"color:#222222;font-fa=
mily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:=
0px;white-space:normal;background-color:#ffffff;text-decoration-style:initi=
al;text-decoration-color:initial"><span style=3D"color:#222222;font-family:=
Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;w=
hite-space:normal;background-color:#ffffff;text-decoration-style:initial;te=
xt-decoration-color:initial;display:inline!important;float:none">manage it.=
 So I wrote my own tool and it works, but it requires root</span><br style=
=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;word-spacing:0px;white-space:normal;background-color:#ffffff;te=
xt-decoration-style:initial;text-decoration-color:initial"><span style=3D"c=
olor:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfor=
m:none;word-spacing:0px;white-space:normal;background-color:#ffffff;text-de=
coration-style:initial;text-decoration-color:initial;display:inline!importa=
nt;float:none">to manipulate the files owned by other UIDs and GIDs (especi=
ally</span><br style=3D"color:#222222;font-family:Arial,Helvetica,sans-seri=
f;font-size:small;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgro=
und-color:#ffffff;text-decoration-style:initial;text-decoration-color:initi=
al"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;fon=
t-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;word-spacing:0px;white-space:normal;background-c=
olor:#ffffff;text-decoration-style:initial;text-decoration-color:initial;di=
splay:inline!important;float:none">root).</span><br style=3D"color:#222222;=
font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-s=
pacing:0px;white-space:normal;background-color:#ffffff;text-decoration-styl=
e:initial;text-decoration-color:initial"><br style=3D"color:#222222;font-fa=
mily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:=
0px;white-space:normal;background-color:#ffffff;text-decoration-style:initi=
al;text-decoration-color:initial"><span style=3D"color:#222222;font-family:=
Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;w=
hite-space:normal;background-color:#ffffff;text-decoration-style:initial;te=
xt-decoration-color:initial;display:inline!important;float:none">I know the=
re&#39;s fakeroot, but my images have files owned by root and</span><br sty=
le=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;word-spacing:0px;white-space:normal;background-color:#ffffff;=
text-decoration-style:initial;text-decoration-color:initial"><span style=3D=
"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;word-spacing:0px;white-space:normal;background-color:#ffffff;text-=
decoration-style:initial;text-decoration-color:initial;display:inline!impor=
tant;float:none">another ordinary users, so I cannot just make everything b=
e owned by</span><br style=3D"color:#222222;font-family:Arial,Helvetica,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;b=
ackground-color:#ffffff;text-decoration-style:initial;text-decoration-color=
:initial"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgr=
ound-color:#ffffff;text-decoration-style:initial;text-decoration-color:init=
ial;display:inline!important;float:none">root. Here&#39;s the breakdown of =
my program and what I tried. I&#39;d like</span><br style=3D"color:#222222;=
font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-s=
pacing:0px;white-space:normal;background-color:#ffffff;text-decoration-styl=
e:initial;text-decoration-color:initial"><span style=3D"color:#222222;font-=
family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-va=
riant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-align:start;text-indent:0px;text-transform:none;word-spacin=
g:0px;white-space:normal;background-color:#ffffff;text-decoration-style:ini=
tial;text-decoration-color:initial;display:inline!important;float:none">any=
 suggestion on how to achieve this easier and without sudo / root</span><br=
 style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;word-spacing:0px;white-space:normal;background-color:#fff=
fff;text-decoration-style:initial;text-decoration-color:initial"><span styl=
e=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;word-spacing:0px;white-space:normal;background-color:#ffffff;t=
ext-decoration-style:initial;text-decoration-color:initial;display:inline!i=
mportant;float:none">account.</span><br style=3D"color:#222222;font-family:=
Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;w=
hite-space:normal;background-color:#ffffff;text-decoration-style:initial;te=
xt-decoration-color:initial"><br style=3D"color:#222222;font-family:Arial,H=
elvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:#ffffff;text-decoration-style:initial;text-deco=
ration-color:initial"><span style=3D"color:#222222;font-family:Arial,Helvet=
ica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:n=
ormal;background-color:#ffffff;text-decoration-style:initial;text-decoratio=
n-color:initial;display:inline!important;float:none">Oh and btw I am using =
ext4 images because I am using Mender (the over</span><br style=3D"color:#2=
22222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
word-spacing:0px;white-space:normal;background-color:#ffffff;text-decoratio=
n-style:initial;text-decoration-color:initial"><span style=3D"color:#222222=
;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-=
spacing:0px;white-space:normal;background-color:#ffffff;text-decoration-sty=
le:initial;text-decoration-color:initial;display:inline!important;float:non=
e">the air update software -<span>=C2=A0</span></span><a style=3D"color:#11=
55cc;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;background-color:#ffffff" href=3D"https:=
//mender.io/" rel=3D"noopener noreferrer noreferrer" target=3D"_blank">http=
s://mender.io/</a><span style=3D"color:#222222;font-family:Arial,Helvetica,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norma=
l;background-color:#ffffff;text-decoration-style:initial;text-decoration-co=
lor:initial;display:inline!important;float:none">) and their final &quot;me=
nder</span><br style=3D"color:#222222;font-family:Arial,Helvetica,sans-seri=
f;font-size:small;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgro=
und-color:#ffffff;text-decoration-style:initial;text-decoration-color:initi=
al"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;fon=
t-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-c=
aps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inde=
nt:0px;text-transform:none;word-spacing:0px;white-space:normal;background-c=
olor:#ffffff;text-decoration-style:initial;text-decoration-color:initial;di=
splay:inline!important;float:none">artifact&quot; is just the ext4 rootfs i=
mage with some extra metadata. I&#39;d</span><br style=3D"color:#222222;fon=
t-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;word-spac=
ing:0px;white-space:normal;background-color:#ffffff;text-decoration-style:i=
nitial;text-decoration-color:initial"><span style=3D"color:#222222;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0=
px;white-space:normal;background-color:#ffffff;text-decoration-style:initia=
l;text-decoration-color:initial;display:inline!important;float:none">like t=
o make a system that can produce a delta between these images.</span><br st=
yle=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small=
;font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;f=
ont-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-=
transform:none;word-spacing:0px;white-space:normal;background-color:#ffffff=
;text-decoration-style:initial;text-decoration-color:initial"><span style=
=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;word-spacing:0px;white-space:normal;background-color:#ffffff;te=
xt-decoration-style:initial;text-decoration-color:initial;display:inline!im=
portant;float:none">But if that&#39;s not possible I can just use the tarba=
ll created by Yocto</span><br style=3D"color:#222222;font-family:Arial,Helv=
etica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space=
:normal;background-color:#ffffff;text-decoration-style:initial;text-decorat=
ion-color:initial"><span style=3D"color:#222222;font-family:Arial,Helvetica=
,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal=
;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:=
start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norm=
al;background-color:#ffffff;text-decoration-style:initial;text-decoration-c=
olor:initial;display:inline!important;float:none">(I&#39;d just need to kee=
p both or maybe Mender can be configured to use</span><br style=3D"color:#2=
22222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
word-spacing:0px;white-space:normal;background-color:#ffffff;text-decoratio=
n-style:initial;text-decoration-color:initial"><span style=3D"color:#222222=
;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-=
spacing:0px;white-space:normal;background-color:#ffffff;text-decoration-sty=
le:initial;text-decoration-color:initial;display:inline!important;float:non=
e">tarballs... not sure).</span><br style=3D"color:#222222;font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:#ffffff;text-decoration-style:initial;text-d=
ecoration-color:initial"><br style=3D"color:#222222;font-family:Arial,Helve=
tica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial"><span style=3D"color:#222222;font-family:Arial,Helvetica,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norma=
l;background-color:#ffffff;text-decoration-style:initial;text-decoration-co=
lor:initial;display:inline!important;float:none">Mount ext4 images at dir1 =
and dir2 (can be done without root</span><br style=3D"color:#222222;font-fa=
mily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:=
0px;white-space:normal;background-color:#ffffff;text-decoration-style:initi=
al;text-decoration-color:initial"><span style=3D"color:#222222;font-family:=
Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;w=
hite-space:normal;background-color:#ffffff;text-decoration-style:initial;te=
xt-decoration-color:initial;display:inline!important;float:none">using fuse=
2fs, but in that case no files can be listed when using</span><br style=3D"=
color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;word-spacing:0px;white-space:normal;background-color:#ffffff;text-d=
ecoration-style:initial;text-decoration-color:initial"><span style=3D"color=
:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;word-spacing:0px;white-space:normal;background-color:#ffffff;text-decora=
tion-style:initial;text-decoration-color:initial;display:inline!important;f=
loat:none">sudo... strange)</span><br style=3D"color:#222222;font-family:Ar=
ial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;whi=
te-space:normal;background-color:#ffffff;text-decoration-style:initial;text=
-decoration-color:initial"><br style=3D"color:#222222;font-family:Arial,Hel=
vetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spac=
e:normal;background-color:#ffffff;text-decoration-style:initial;text-decora=
tion-color:initial"><span style=3D"color:#222222;font-family:Arial,Helvetic=
a,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:nor=
mal;background-color:#ffffff;text-decoration-style:initial;text-decoration-=
color:initial;display:inline!important;float:none">For all files in dir1 ch=
eck if it exists in dir2, if not, write its name</span><br style=3D"color:#=
222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;word-spacing:0px;white-space:normal;background-color:#ffffff;text-decorati=
on-style:initial;text-decoration-color:initial"><span style=3D"color:#22222=
2;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word=
-spacing:0px;white-space:normal;background-color:#ffffff;text-decoration-st=
yle:initial;text-decoration-color:initial;display:inline!important;float:no=
ne">to &quot;.deleted&quot; file</span><br style=3D"color:#222222;font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0p=
x;white-space:normal;background-color:#ffffff;text-decoration-style:initial=
;text-decoration-color:initial"><br style=3D"color:#222222;font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:#ffffff;text-decoration-style:initial;text-d=
ecoration-color:initial"><span style=3D"color:#222222;font-family:Arial,Hel=
vetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spac=
e:normal;background-color:#ffffff;text-decoration-style:initial;text-decora=
tion-color:initial;display:inline!important;float:none">For all files in di=
r2 check if file exists in dir1. If not, copy it to</span><br style=3D"colo=
r:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;word-spacing:0px;white-space:normal;background-color:#ffffff;text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"color:#22=
2222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;background-color:#ffffff;text-decoration=
-style:initial;text-decoration-color:initial;display:inline!important;float=
:none">output-dir</span><br style=3D"color:#222222;font-family:Arial,Helvet=
ica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:n=
ormal;background-color:#ffffff;text-decoration-style:initial;text-decoratio=
n-color:initial"><br style=3D"color:#222222;font-family:Arial,Helvetica,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;b=
ackground-color:#ffffff;text-decoration-style:initial;text-decoration-color=
:initial"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgr=
ound-color:#ffffff;text-decoration-style:initial;text-decoration-color:init=
ial;display:inline!important;float:none">If both files exist compare them (=
size, uid, guid, st_mode, finally</span><br style=3D"color:#222222;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0=
px;white-space:normal;background-color:#ffffff;text-decoration-style:initia=
l;text-decoration-color:initial"><span style=3D"color:#222222;font-family:A=
rial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;wh=
ite-space:normal;background-color:#ffffff;text-decoration-style:initial;tex=
t-decoration-color:initial;display:inline!important;float:none">calculate a=
nd compare a hash)</span><br style=3D"color:#222222;font-family:Arial,Helve=
tica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:#ffffff;text-decoration-style:initial;text-decorati=
on-color:initial"><br style=3D"color:#222222;font-family:Arial,Helvetica,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;=
background-color:#ffffff;text-decoration-style:initial;text-decoration-colo=
r:initial"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-se=
rif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-va=
riant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;te=
xt-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backg=
round-color:#ffffff;text-decoration-style:initial;text-decoration-color:ini=
tial;display:inline!important;float:none">if any of the above is different,=
 copy it (using cp -a, which preserves</span><br style=3D"color:#222222;fon=
t-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;word-spac=
ing:0px;white-space:normal;background-color:#ffffff;text-decoration-style:i=
nitial;text-decoration-color:initial"><span style=3D"color:#222222;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0=
px;white-space:normal;background-color:#ffffff;text-decoration-style:initia=
l;text-decoration-color:initial;display:inline!important;float:none">all at=
tributes). Also make all the directories for that file (mkdir -p).</span><b=
r style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;word-spacing:0px;white-space:normal;background-color:#ff=
ffff;text-decoration-style:initial;text-decoration-color:initial"><br style=
=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;word-spacing:0px;white-space:normal;background-color:#ffffff;te=
xt-decoration-style:initial;text-decoration-color:initial"><span style=3D"c=
olor:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfor=
m:none;word-spacing:0px;white-space:normal;background-color:#ffffff;text-de=
coration-style:initial;text-decoration-color:initial;display:inline!importa=
nt;float:none">For all directories in output-dir check if it exists in dir2=
, if yes</span><br style=3D"color:#222222;font-family:Arial,Helvetica,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;bac=
kground-color:#ffffff;text-decoration-style:initial;text-decoration-color:i=
nitial"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif=
;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgrou=
nd-color:#ffffff;text-decoration-style:initial;text-decoration-color:initia=
l;display:inline!important;float:none">then copy all its attributes (stat -=
&gt; chmod + chown).</span><br style=3D"color:#222222;font-family:Arial,Hel=
vetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spac=
e:normal;background-color:#ffffff;text-decoration-style:initial;text-decora=
tion-color:initial"><span style=3D"color:#222222;font-family:Arial,Helvetic=
a,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:nor=
mal;background-color:#ffffff;text-decoration-style:initial;text-decoration-=
color:initial;display:inline!important;float:none">This is needed for all t=
he directories we created using mkdir -p</span><br style=3D"color:#222222;f=
ont-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-sp=
acing:0px;white-space:normal;background-color:#ffffff;text-decoration-style=
:initial;text-decoration-color:initial"><br style=3D"color:#222222;font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0=
px;white-space:normal;background-color:#ffffff;text-decoration-style:initia=
l;text-decoration-color:initial"><span style=3D"color:#222222;font-family:A=
rial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;wh=
ite-space:normal;background-color:#ffffff;text-decoration-style:initial;tex=
t-decoration-color:initial;display:inline!important;float:none">This leaves=
 us with all the files that were different in output-dir</span><br style=3D=
"color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;word-spacing:0px;white-space:normal;background-color:#ffffff;text-=
decoration-style:initial;text-decoration-color:initial"><span style=3D"colo=
r:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;word-spacing:0px;white-space:normal;background-color:#ffffff;text-decor=
ation-style:initial;text-decoration-color:initial;display:inline!important;=
float:none">and a list of files to be removed.</span><br style=3D"color:#22=
2222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;background-color:#ffffff;text-decoration=
-style:initial;text-decoration-color:initial"><br style=3D"color:#222222;fo=
nt-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font=
-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-s=
pacing:normal;text-align:start;text-indent:0px;text-transform:none;word-spa=
cing:0px;white-space:normal;background-color:#ffffff;text-decoration-style:=
initial;text-decoration-color:initial"><span style=3D"color:#222222;font-fa=
mily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-vari=
ant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacin=
g:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:=
0px;white-space:normal;background-color:#ffffff;text-decoration-style:initi=
al;text-decoration-color:initial;display:inline!important;float:none">Here&=
#39;s what I thought of doing:</span><br style=3D"color:#222222;font-family=
:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;=
white-space:normal;background-color:#ffffff;text-decoration-style:initial;t=
ext-decoration-color:initial"><span style=3D"color:#222222;font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:#ffffff;text-decoration-style:initial;text-d=
ecoration-color:initial;display:inline!important;float:none">Do this in a d=
ocker image as a root (without the docker itself having</span><br style=3D"=
color:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;word-spacing:0px;white-space:normal;background-color:#ffffff;text-d=
ecoration-style:initial;text-decoration-color:initial"><span style=3D"color=
:#222222;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;word-spacing:0px;white-space:normal;background-color:#ffffff;text-decora=
tion-style:initial;text-decoration-color:initial;display:inline!important;f=
loat:none">any privileges). Can&#39;t make it work with ext4 being mounted,=
 docker</span><br style=3D"color:#222222;font-family:Arial,Helvetica,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;back=
ground-color:#ffffff;text-decoration-style:initial;text-decoration-color:in=
itial"><span style=3D"color:#222222;font-family:Arial,Helvetica,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgroun=
d-color:#ffffff;text-decoration-style:initial;text-decoration-color:initial=
;display:inline!important;float:none">container can&#39;t access it (mountp=
oint is owned by root).</span></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63611): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63611" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/63611</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107633647/758=
1472" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/107633647/7581472</a><br>
Mute #toolchain:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/toolchain" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists=
.yoctoproject.org/g/yocto/mutehashtag/toolchain</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:logan.grosz@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">logan.grosz@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000f315b5061e81e66e--

