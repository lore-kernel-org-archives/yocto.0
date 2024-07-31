Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCBAFC3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 10:57:47 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.40338.1722423463195332107
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 03:57:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=dPgS1x30;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.53, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a7aabb71bb2so767526466b.2
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 03:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1722423461; x=1723028261; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Wirti/zgHvWSlElGwJg5y0aFFk7cbyhpdXeJM3qA41E=;
        b=dPgS1x30GZ6944oTNZU9cFhItZdq7UuX5+LoEHxLeuNJRVA+ZubOxglQcDTT6nOa9g
         a+u5NFTUMtyEMit7wxbcctgfre24LTfZ1pBKN7FiJM5N3xhcU0M2C1fudzP06VgjuFRm
         +dKM8z4m2skaVXZBT/ILa7wUIuEEudcWOkCdMIwZGTpMlNyrKM45M8044k6w5oR8JXHa
         OLIiTE5JsO9cdrzn/Xv6on21udLTjoR+YsUAvgxFJkakxlPS7AtDDFf9YHSxxdFxVyeS
         V7iIkdbK70wvm/Nb23UsVaGIMO86ZUC+DsRtMXmQhscecfUopFp9sM+n7X5jBThhp84M
         QoeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722423461; x=1723028261;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Wirti/zgHvWSlElGwJg5y0aFFk7cbyhpdXeJM3qA41E=;
        b=Pm45Eg+gQHkd9xqKL1XlGe2aXlX+S7JFPpBiGfRaqaJI8CAhYf6tNcVuAc8ABn3JsE
         urpSeWldmWPqQGhSNSh5t2xZZOWjRCocUua1YNBdnsIF8pP7rwxjs9tx5R31wC5n3sSh
         16abdzI/ci6pNL75/UkXt9fL3cSnX0kZAqtNqjdE19RYUzLjGOTsTLQUf7u0F7ujcunz
         EhJ6eSXIK1oc1VaedwSBipCMOMoC9oyT5ALzjZ3KkrSS1WFc67U37WC8TnxzoZQhF6SX
         Q2pQPj7ZVB8HhEUQ9PdC5RCCJUvCWxV8RqlkrJgOzZ1Mz2Lch4DJHzV3w4KZy0uMHnho
         5GHA==
X-Gm-Message-State: AOJu0Yz+EpwPearp92HKnDTAEmOgbyejvUS3NLQDU/ZkCuCmMTgI5pdq
	01p7zQmKpyWwCIA98k955XAOy3gmwhPHZ8aqYgkabDThtu1i+JlE0XNcnRQQizAGavEMguJxiQR
	FCMOSvY+anIxFMZMaVw0ZDr6txPgvreHFAb+lbRU91HkQH6s+xzo=
X-Google-Smtp-Source: AGHT+IHq4ytRntn/8RgaHJdS18cYW4rrMVNZAtoAloldKeSUEvpkBhO5e6PhtgHipDRFzw0jDHLPf6AiGf3+KlYGIYA=
X-Received: by 2002:a17:907:6d18:b0:a7a:b0a0:ebdb with SMTP id
 a640c23a62f3a-a7d4006c8f2mr947308866b.22.1722423461307; Wed, 31 Jul 2024
 03:57:41 -0700 (PDT)
MIME-Version: 1.0
References: <6g1V.1722367303704451398.Bigm@lists.yoctoproject.org> <CANn=KGhhWLRLh1PSuq4mLGRimKya_fBHB_8-=-1p2Jw7R-WJKg@mail.gmail.com>
In-Reply-To: <CANn=KGhhWLRLh1PSuq4mLGRimKya_fBHB_8-=-1p2Jw7R-WJKg@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Wed, 31 Jul 2024 12:57:15 +0200
Message-ID: <CAEt6NwpdS_c-Bp7f6Z573pJb28nQCq5y=s+OpPK_-Jd15hmfZg@mail.gmail.com>
Subject: Re: [yocto] Diff / Delta file between two rootfs images #toolchain #yocto
To: yocto@lists.yoctoproject.org, logan.grosz@gmail.com
Cc: patryk.seregiet@gmail.com
Content-Type: multipart/alternative; boundary="000000000000908a9d061e88f6fa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 10:57:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63627

--000000000000908a9d061e88f6fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Patryk,

The Mender dude here :-)

As already pointed out by Logan, yeah, the most straightforward thing is to
use the delta updates feature which we offer, as it already packages the
workflow in a known good way. And for larger fleets, the delta generation
can also be moved to the hosted backend.

Having said that, there are definitely a couple of things you can explore
respectively think about.

By default Mender uses ext4, that's right. The key here is, looking such an
.ext4 image means that it is being treated as a purely binary blob, no
considerations on payload structure (like files) or metadata (like
permissions) are needed. It should be quite straightforward to change this
to a different filesystem, as UBIFS is already supported, for example - but
in the end, Mender treats things (by default) just as binary blobs to get
out of the was. Side note: when you change things, remember the boot loader
has to be able to access it and load files from it.

You can of course adjust that to your needs. Starting with Client 4.0, the
logic for root filesystem upgrades has been factored out:
https://github.com/mendersoftware/mender/blob/master/support/modules/rootfs=
-image.
So you can take that, extend it with handling for filesystem aware
tarballs, or an alternative delta-mechanism, it's definitely all possible.
Over on hub.mender.io we can also discuss this in more detail :-)

My personal (somewhat educated guess) would be that if you want to do
filesystem, and therefore ownership/permission aware magic here, then a
custom image type in Yocto is probably the way to go. This allows you for
pseudo to take care of all these peculiarities, and you can just "do as
root would do".

Greets,
Josef

On Wed, Jul 31, 2024 at 4:32=E2=80=AFAM Logan Grosz via lists.yoctoproject.=
org
<logan.grosz=3Dgmail.com@lists.yoctoproject.org> wrote:

> If you are using Mender's hosting option, delta updates are already a
> feature, see this blog post:
> https://hub.mender.io/t/robust-delta-update-rootfs/1144
>
> Not sure what the options are if you aren't using their hosted solution,
> but maybe their docs provide further information.
>
> On Tue, Jul 30, 2024, 1:24=E2=80=AFPM patryk seregiet via lists.yoctoproj=
ect.org
> <patryk.seregiet=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> Hello,
>> I'd like to create a diff/delta file between two rootfs images. I
>> thought it would be as easy as using diff / rsync with some options,
>> but it doesn't seem to be possible with just that, at least I couldn't
>> manage it. So I wrote my own tool and it works, but it requires root
>> to manipulate the files owned by other UIDs and GIDs (especially
>> root).
>>
>> I know there's fakeroot, but my images have files owned by root and
>> another ordinary users, so I cannot just make everything be owned by
>> root. Here's the breakdown of my program and what I tried. I'd like
>> any suggestion on how to achieve this easier and without sudo / root
>> account.
>>
>> Oh and btw I am using ext4 images because I am using Mender (the over
>> the air update software - https://mender.io/) and their final "mender
>> artifact" is just the ext4 rootfs image with some extra metadata. I'd
>> like to make a system that can produce a delta between these images.
>> But if that's not possible I can just use the tarball created by Yocto
>> (I'd just need to keep both or maybe Mender can be configured to use
>> tarballs... not sure).
>>
>> Mount ext4 images at dir1 and dir2 (can be done without root
>> using fuse2fs, but in that case no files can be listed when using
>> sudo... strange)
>>
>> For all files in dir1 check if it exists in dir2, if not, write its name
>> to ".deleted" file
>>
>> For all files in dir2 check if file exists in dir1. If not, copy it to
>> output-dir
>>
>> If both files exist compare them (size, uid, guid, st_mode, finally
>> calculate and compare a hash)
>>
>> if any of the above is different, copy it (using cp -a, which preserves
>> all attributes). Also make all the directories for that file (mkdir -p).
>>
>> For all directories in output-dir check if it exists in dir2, if yes
>> then copy all its attributes (stat -> chmod + chown).
>> This is needed for all the directories we created using mkdir -p
>>
>> This leaves us with all the files that were different in output-dir
>> and a list of files to be removed.
>>
>> Here's what I thought of doing:
>> Do this in a docker image as a root (without the docker itself having
>> any privileges). Can't make it work with ext4 being mounted, docker
>> container can't access it (mountpoint is owned by root).
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63618):
> https://lists.yoctoproject.org/g/yocto/message/63618
> Mute This Topic: https://lists.yoctoproject.org/mt/107633647/4689568
> Mute #toolchain:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/toolchain
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000908a9d061e88f6fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Patryk,<div><br></div><div>The Mender dude here :-)</di=
v><div><br></div><div>As already pointed out by Logan, yeah, the most strai=
ghtforward thing is to use the delta updates feature which we offer, as it =
already packages the workflow in a known good way. And for larger fleets, t=
he delta generation can also be moved to the hosted backend.</div><div><br>=
</div><div>Having said that, there are definitely a couple of things you ca=
n explore respectively think about.</div><div><br></div><div>By default Men=
der uses ext4, that&#39;s right. The key here is, looking such an .ext4 ima=
ge means that it is being treated as a purely binary blob, no consideration=
s on payload structure (like files) or metadata (like permissions) are need=
ed. It should be quite straightforward to change this to a different filesy=
stem, as UBIFS is already supported, for example - but in the end, Mender t=
reats things (by default) just as binary blobs to get out of the was. Side =
note: when you change things, remember the boot loader has to be able to ac=
cess it and load files from it.</div><div><br></div><div>You can of course =
adjust that to your needs. Starting with Client 4.0, the logic for root fil=
esystem upgrades has been factored out:=C2=A0<a href=3D"https://github.com/=
mendersoftware/mender/blob/master/support/modules/rootfs-image">https://git=
hub.com/mendersoftware/mender/blob/master/support/modules/rootfs-image</a>.=
 So you can take that, extend it with handling for filesystem aware tarball=
s, or an alternative delta-mechanism, it&#39;s definitely all possible. Ove=
r on <a href=3D"http://hub.mender.io">hub.mender.io</a> we can also discuss=
 this in more detail :-)</div><div><br></div><div>My personal (somewhat edu=
cated guess) would be that if you want to do filesystem, and therefore owne=
rship/permission aware magic here, then a custom image type in Yocto is pro=
bably the way to go. This allows you for pseudo to take care of all these p=
eculiarities, and you can just &quot;do as root would do&quot;.</div><div><=
br></div><div>Greets,</div><div>Josef</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 31, 2024 at 4:32=E2=
=80=AFAM Logan Grosz via <a href=3D"http://lists.yoctoproject.org">lists.yo=
ctoproject.org</a> &lt;logan.grosz=3D<a href=3D"mailto:gmail.com@lists.yoct=
oproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204);paddi=
ng-left:1ex"><p dir=3D"ltr">If you are using Mender&#39;s hosting option, d=
elta updates are already a feature, see this blog post: <a href=3D"https://=
hub.mender.io/t/robust-delta-update-rootfs/1144" target=3D"_blank">https://=
hub.mender.io/t/robust-delta-update-rootfs/1144</a></p>
<p dir=3D"ltr">Not sure what the options are if you aren&#39;t using their =
hosted solution, but maybe their docs provide further information.</p>
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Jul 30, 2024, 1:24=E2=80=AFPM patryk seregiet via <a href=3D"http://lists=
.yoctoproject.org" target=3D"_blank">lists.yoctoproject.org</a> &lt;patryk.=
seregiet=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" target=3D"_b=
lank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1=
px;border-left-style:solid;border-left-color:rgb(204,204,204);padding-left:=
1ex"><div><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">Hello,</span><br style=3D"col=
or:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial"><span st=
yle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;word-spacing:0px;white-space:normal;background-color:r=
gb(255,255,255);text-decoration-style:initial;text-decoration-color:initial=
;float:none;display:inline">I&#39;d like to create a diff/delta file betwee=
n two rootfs images. I</span><br style=3D"color:rgb(34,34,34);font-family:A=
rial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;wh=
ite-space:normal;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);fon=
t-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;word-spac=
ing:0px;white-space:normal;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">th=
ought it would be as easy as using diff / rsync with some options,</span><b=
r style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;word-spacing:0px;white-space:normal;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-s=
erif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-v=
ariant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;t=
ext-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;back=
ground-color:rgb(255,255,255);text-decoration-style:initial;text-decoration=
-color:initial;float:none;display:inline">but it doesn&#39;t seem to be pos=
sible with just that, at least I couldn&#39;t</span><br style=3D"color:rgb(=
34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial"><span style=3D"=
color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;=
font-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fo=
nt-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-t=
ransform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline">manage it. So I wrote my own tool and it works, but it=
 requires root</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Hel=
vetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spac=
e:normal;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-family=
:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;=
white-space:normal;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial;float:none;display:inline">to manipul=
ate the files owned by other UIDs and GIDs (especially</span><br style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial"><span =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;word-spacing:0px;white-space:normal;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">root).</span><br style=3D"color:rgb(34,34,34)=
;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-=
spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><br style=3D"color:rgb(3=
4,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial"><span style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">I know there&#39;s fakeroot, but my images have files o=
wned by root and</span><br style=3D"color:rgb(34,34,34);font-family:Arial,H=
elvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligature=
s:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;tex=
t-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-sp=
ace:normal;background-color:rgb(255,255,255);text-decoration-style:initial;=
text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0p=
x;white-space:normal;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;float:none;display:inline">another =
ordinary users, so I cannot just make everything be owned by</span><br styl=
e=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;word-spacing:0px;white-space:normal;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial">=
<span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline">root. Here&#39;s the breakdown of my pr=
ogram and what I tried. I&#39;d like</span><br style=3D"color:rgb(34,34,34)=
;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-=
spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><span style=3D"color:rgb=
(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">any suggestion on how to achieve this easier and without sudo /=
 root</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial"><span style=3D"color:rgb(34,34,34);font-family:Arial,He=
lvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures=
:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text=
-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spa=
ce:normal;background-color:rgb(255,255,255);text-decoration-style:initial;t=
ext-decoration-color:initial;float:none;display:inline">account.</span><br =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;word-spacing:0px;white-space:normal;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al"><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif=
;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norma=
l;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">Oh and btw I am using ext4 =
images because I am using Mender (the over</span><br style=3D"color:rgb(34,=
34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:no=
rmal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400=
;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none=
;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);text=
-decoration-style:initial;text-decoration-color:initial"><span style=3D"col=
or:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;fon=
t-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-=
weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tran=
sform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255=
,255);text-decoration-style:initial;text-decoration-color:initial;float:non=
e;display:inline">the air update software -<span>=C2=A0</span></span><a sty=
le=3D"color:rgb(17,85,204);font-family:Arial,Helvetica,sans-serif;font-size=
:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:no=
rmal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px=
;text-transform:none;word-spacing:0px;white-space:normal;background-color:r=
gb(255,255,255)" href=3D"https://mender.io/" rel=3D"noopener noreferrer nor=
eferrer" target=3D"_blank">https://mender.io/</a><span style=3D"color:rgb(3=
4,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial;float:none;displa=
y:inline">) and their final &quot;mender</span><br style=3D"color:rgb(34,34=
,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:norm=
al;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;l=
etter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;w=
ord-spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-d=
ecoration-style:initial;text-decoration-color:initial"><span style=3D"color=
:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial;float:none;=
display:inline">artifact&quot; is just the ext4 rootfs image with some extr=
a metadata. I&#39;d</span><br style=3D"color:rgb(34,34,34);font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-f=
amily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing=
:0px;white-space:normal;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">like =
to make a system that can produce a delta between these images.</span><br s=
tyle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;word-spacing:0px;white-space:normal;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-seri=
f;font-size:small;font-style:normal;font-variant-ligatures:normal;font-vari=
ant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text=
-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgro=
und-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-co=
lor:initial;float:none;display:inline">But if that&#39;s not possible I can=
 just use the tarball created by Yocto</span><br style=3D"color:rgb(34,34,3=
4);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal=
;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;let=
ter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;wor=
d-spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-dec=
oration-style:initial;text-decoration-color:initial"><span style=3D"color:r=
gb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-st=
yle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weig=
ht:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfor=
m:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255=
);text-decoration-style:initial;text-decoration-color:initial;float:none;di=
splay:inline">(I&#39;d just need to keep both or maybe Mender can be config=
ured to use</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:n=
ormal;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-family:Ar=
ial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-lig=
atures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norma=
l;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;whi=
te-space:normal;background-color:rgb(255,255,255);text-decoration-style:ini=
tial;text-decoration-color:initial;float:none;display:inline">tarballs... n=
ot sure).</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetic=
a,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:norma=
l;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align=
:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:nor=
mal;background-color:rgb(255,255,255);text-decoration-style:initial;text-de=
coration-color:initial"><br style=3D"color:rgb(34,34,34);font-family:Arial,=
Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-s=
pace:normal;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0=
px;white-space:normal;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial;float:none;display:inline">Mount e=
xt4 images at dir1 and dir2 (can be done without root</span><br style=3D"co=
lor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial"><span s=
tyle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;word-spacing:0px;white-space:normal;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline">using fuse2fs, but in that case no files can b=
e listed when using</span><br style=3D"color:rgb(34,34,34);font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-f=
amily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing=
:0px;white-space:normal;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">sudo.=
.. strange)</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvet=
ica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:nor=
mal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-ali=
gn:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:n=
ormal;background-color:rgb(255,255,255);text-decoration-style:initial;text-=
decoration-color:initial"><br style=3D"color:rgb(34,34,34);font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-f=
amily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-var=
iant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spaci=
ng:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing=
:0px;white-space:normal;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">For a=
ll files in dir1 check if it exists in dir2, if not, write its name</span><=
br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font=
-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-ca=
ps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;word-spacing:0px;white-space:normal;background-co=
lor:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:in=
itial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-=
serif;font-size:small;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;float:none;display:inline">to &quot;.deleted&quot; file</sp=
an><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;=
font-size:small;font-style:normal;font-variant-ligatures:normal;font-varian=
t-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-i=
ndent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgroun=
d-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-colo=
r:initial"><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Hel=
vetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:=
normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-=
align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-spac=
e:normal;background-color:rgb(255,255,255);text-decoration-style:initial;te=
xt-decoration-color:initial;float:none;display:inline">For all files in dir=
2 check if file exists in dir1. If not, copy it to</span><br style=3D"color=
:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-=
style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-we=
ight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transf=
orm:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255,2=
55);text-decoration-style:initial;text-decoration-color:initial"><span styl=
e=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:s=
mall;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norm=
al;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;t=
ext-transform:none;word-spacing:0px;white-space:normal;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">output-dir</span><br style=3D"color:rgb(34,34,34)=
;font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;f=
ont-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lette=
r-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-=
spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial"><br style=3D"color:rgb(3=
4,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:=
normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:4=
00;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:no=
ne;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);te=
xt-decoration-style:initial;text-decoration-color:initial"><span style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial;float:n=
one;display:inline">If both files exist compare them (size, uid, guid, st_m=
ode, finally</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helve=
tica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:no=
rmal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-al=
ign:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space:=
normal;background-color:rgb(255,255,255);text-decoration-style:initial;text=
-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-family:A=
rial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;wh=
ite-space:normal;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial;float:none;display:inline">calculate an=
d compare a hash)</span><br style=3D"color:rgb(34,34,34);font-family:Arial,=
Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white-s=
pace:normal;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial"><br style=3D"color:rgb(34,34,34);font-famil=
y:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px=
;white-space:normal;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);=
font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;fo=
nt-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter=
-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-s=
pacing:0px;white-space:normal;background-color:rgb(255,255,255);text-decora=
tion-style:initial;text-decoration-color:initial;float:none;display:inline"=
>if any of the above is different, copy it (using cp -a, which preserves</s=
pan><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif=
;font-size:small;font-style:normal;font-variant-ligatures:normal;font-varia=
nt-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-=
indent:0px;text-transform:none;word-spacing:0px;white-space:normal;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,=
sans-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;=
font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:s=
tart;text-indent:0px;text-transform:none;word-spacing:0px;white-space:norma=
l;background-color:rgb(255,255,255);text-decoration-style:initial;text-deco=
ration-color:initial;float:none;display:inline">all attributes). Also make =
all the directories for that file (mkdir -p).</span><br style=3D"color:rgb(=
34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style=
:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:=
400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:n=
one;word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);t=
ext-decoration-style:initial;text-decoration-color:initial"><br style=3D"co=
lor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;fo=
nt-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font=
-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tra=
nsform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,25=
5,255);text-decoration-style:initial;text-decoration-color:initial"><span s=
tyle=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-siz=
e:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:n=
ormal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0p=
x;text-transform:none;word-spacing:0px;white-space:normal;background-color:=
rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initia=
l;float:none;display:inline">For all directories in output-dir check if it =
exists in dir2, if yes</span><br style=3D"color:rgb(34,34,34);font-family:A=
rial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-li=
gatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:norm=
al;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;wh=
ite-space:normal;background-color:rgb(255,255,255);text-decoration-style:in=
itial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);fon=
t-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-=
variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-sp=
acing:normal;text-align:start;text-indent:0px;text-transform:none;word-spac=
ing:0px;white-space:normal;background-color:rgb(255,255,255);text-decoratio=
n-style:initial;text-decoration-color:initial;float:none;display:inline">th=
en copy all its attributes (stat -&gt; chmod + chown).</span><br style=3D"c=
olor:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;f=
ont-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;fon=
t-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-tr=
ansform:none;word-spacing:0px;white-space:normal;background-color:rgb(255,2=
55,255);text-decoration-style:initial;text-decoration-color:initial"><span =
style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-si=
ze:small;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;word-spacing:0px;white-space:normal;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">This is needed for all the directories we cre=
ated using mkdir -p</span><br style=3D"color:rgb(34,34,34);font-family:Aria=
l,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-ligat=
ures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;=
text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;white=
-space:normal;background-color:rgb(255,255,255);text-decoration-style:initi=
al;text-decoration-color:initial"><br style=3D"color:rgb(34,34,34);font-fam=
ily:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-varia=
nt-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing=
:normal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0=
px;white-space:normal;background-color:rgb(255,255,255);text-decoration-sty=
le:initial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34=
);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;=
font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-align:start;text-indent:0px;text-transform:none;word=
-spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-deco=
ration-style:initial;text-decoration-color:initial;float:none;display:inlin=
e">This leaves us with all the files that were different in output-dir</spa=
n><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;f=
ont-size:small;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;word-spacing:0px;white-space:normal;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial;float:none;display:inline">and a list of files to be rem=
oved.</span><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sa=
ns-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fo=
nt-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:sta=
rt;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;=
background-color:rgb(255,255,255);text-decoration-style:initial;text-decora=
tion-color:initial"><br style=3D"color:rgb(34,34,34);font-family:Arial,Helv=
etica,sans-serif;font-size:small;font-style:normal;font-variant-ligatures:n=
ormal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;text-a=
lign:start;text-indent:0px;text-transform:none;word-spacing:0px;white-space=
:normal;background-color:rgb(255,255,255);text-decoration-style:initial;tex=
t-decoration-color:initial"><span style=3D"color:rgb(34,34,34);font-family:=
Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-l=
igatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:nor=
mal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;w=
hite-space:normal;background-color:rgb(255,255,255);text-decoration-style:i=
nitial;text-decoration-color:initial;float:none;display:inline">Here&#39;s =
what I thought of doing:</span><br style=3D"color:rgb(34,34,34);font-family=
:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;font-variant-=
ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:no=
rmal;text-align:start;text-indent:0px;text-transform:none;word-spacing:0px;=
white-space:normal;background-color:rgb(255,255,255);text-decoration-style:=
initial;text-decoration-color:initial"><span style=3D"color:rgb(34,34,34);f=
ont-family:Arial,Helvetica,sans-serif;font-size:small;font-style:normal;fon=
t-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-=
spacing:normal;text-align:start;text-indent:0px;text-transform:none;word-sp=
acing:0px;white-space:normal;background-color:rgb(255,255,255);text-decorat=
ion-style:initial;text-decoration-color:initial;float:none;display:inline">=
Do this in a docker image as a root (without the docker itself having</span=
><br style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;fo=
nt-size:small;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;word-spacing:0px;white-space:normal;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial"><span style=3D"color:rgb(34,34,34);font-family:Arial,Helvetica,san=
s-serif;font-size:small;font-style:normal;font-variant-ligatures:normal;fon=
t-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:star=
t;text-indent:0px;text-transform:none;word-spacing:0px;white-space:normal;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline">any privileges). Can&#39;t mak=
e it work with ext4 being mounted, docker</span><br style=3D"color:rgb(34,3=
4,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font-style:nor=
mal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
word-spacing:0px;white-space:normal;background-color:rgb(255,255,255);text-=
decoration-style:initial;text-decoration-color:initial"><span style=3D"colo=
r:rgb(34,34,34);font-family:Arial,Helvetica,sans-serif;font-size:small;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;word-spacing:0px;white-space:normal;background-color:rgb(255,255,=
255);text-decoration-style:initial;text-decoration-color:initial;float:none=
;display:inline">container can&#39;t access it (mountpoint is owned by root=
).</span></div>
<br>
<br>
<br>
</blockquote></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63618): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63618" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63618</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107633647/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107633647/4689568</a><br>
Mute #toolchain:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/toolchain" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/toolchain</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000908a9d061e88f6fa--

